void storeEnumTagSinglePayload for DynamicViewContainer.Value(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  v11 = *(v8 + 80);
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = ((v13 + ((v11 + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 < a3)
  {
    if (((v13 + ((v11 + 8) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v12 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 > v12)
  {
    if (((v13 + ((v11 + 8) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v12;
    }

    else
    {
      v17 = 1;
    }

    if (((v13 + ((v11 + 8) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v12 + a2;
      bzero(a1, ((v13 + ((v11 + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v18;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + v14) = v17;
      }

      else
      {
        *(a1 + v14) = v17;
      }
    }

    else if (v7)
    {
      *(a1 + v14) = v17;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v14) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v7)
  {
    goto LABEL_38;
  }

  *(a1 + v14) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v10 & 0x80000000) != 0)
  {
    v20 = ((a1 + v11 + 8) & ~v11);
    if (v10 >= a2)
    {
      v24 = *(v8 + 56);

      v24(v20, a2 + 1);
    }

    else
    {
      if (v13 <= 3)
      {
        v21 = ~(-1 << (8 * v13));
      }

      else
      {
        v21 = -1;
      }

      if (v13)
      {
        v22 = v21 & (~v10 + a2);
        if (v13 <= 3)
        {
          v23 = v13;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v13);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for DynamicViewContainer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((((((((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = ((a1 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((a2 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v11 = *v12;
    v13 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v12 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v13 = *v14;
    *(v13 + 8) = *(v14 + 8);
    *(v13 + 16) = *(v14 + 16);
    *(v13 + 24) = *(v14 + 24);
    *(v13 + 28) = *(v14 + 28);
    *(v13 + 32) = *(v14 + 32);
    *(v13 + 36) = *(v14 + 36);
    *(v13 + 40) = *(v14 + 40);
    *(v13 + 48) = *(v14 + 48);
    *(v13 + 56) = *(v14 + 56);
    *(v13 + 60) = *(v14 + 60);
    *(v13 + 64) = *(v14 + 64);
    *(v13 + 68) = *(v14 + 68);
    *(v13 + 72) = *(v14 + 72);
    *(v13 + 76) = *(v14 + 76);
    *(v13 + 80) = *(v14 + 80);
    v15 = (v13 + 91) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 91) & 0xFFFFFFFFFFFFFFF8;
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    *(v15 + 12) = *(v16 + 12);
    v17 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *v17;

    v19 = v18;
  }

  return a1;
}

uint64_t assignWithCopy for DynamicViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);

  *(v10 + 24) = *(v11 + 24);
  *(v10 + 28) = *(v11 + 28);
  *(v10 + 32) = *(v11 + 32);
  *(v10 + 36) = *(v11 + 36);
  *(v10 + 40) = *(v11 + 40);

  *(v10 + 48) = *(v11 + 48);

  *(v10 + 56) = *(v11 + 56);
  *(v10 + 60) = *(v11 + 60);
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 68) = *(v11 + 68);
  *(v10 + 72) = *(v11 + 72);
  *(v10 + 76) = *(v11 + 76);
  *(v10 + 80) = *(v11 + 80);
  v12 = (v10 + 91) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v14;
  *v14 = v15;
  v17 = v15;

  return a1;
}

uint64_t initializeWithTake for DynamicViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 3;
  v8 = v7 + a1;
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  v8 &= 0xFFFFFFFFFFFFFFFCLL;
  *v8 = *v9;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  v13 = *(v11 + 80);
  v15 = *(v11 + 48);
  v14 = *(v11 + 64);
  *(v10 + 32) = *(v11 + 32);
  *(v10 + 48) = v15;
  *(v10 + 64) = v14;
  *(v10 + 80) = v13;
  v16 = ((v10 + 91) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v11 + 91) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);

  *(v10 + 24) = *(v11 + 24);
  *(v10 + 28) = *(v11 + 28);
  *(v10 + 32) = *(v11 + 32);
  *(v10 + 36) = *(v11 + 36);
  *(v10 + 40) = *(v11 + 40);

  *(v10 + 48) = *(v11 + 48);

  *(v10 + 56) = *(v11 + 56);
  *(v10 + 60) = *(v11 + 60);
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 68) = *(v11 + 68);
  *(v10 + 72) = *(v11 + 72);
  *(v10 + 76) = *(v11 + 76);
  *(v10 + 80) = *(v11 + 80);
  v12 = (v10 + 91) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  *v14 = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewContainer(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *(((((a1 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

double storeEnumTagSinglePayload for DynamicViewContainer(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = ((((((((v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 91) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v15 = 0;
    v16 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((v10 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 91) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a3 - v11 + 1;
    }

    else
    {
      v13 = 2;
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

    v16 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v12) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v12) = 0;
      }

      else if (v15)
      {
        *(a1 + v12) = 0;
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
      if (v9 < 0x7FFFFFFF)
      {
        v20 = (((a1 + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v20 + 72) = 0;
          result = 0.0;
          *(v20 + 56) = 0u;
          *(v20 + 40) = 0u;
          *(v20 + 24) = 0u;
          *(v20 + 8) = 0u;
          *(v20 + 80) = 0;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 16) = (a2 - 1);
        }
      }

      else
      {
        v19 = *(v7 + 56);

        v19(a1, a2);
      }

      return result;
    }
  }

  if (((((((((v10 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 91) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((((((v10 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 91) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v11 + a2;
    bzero(a1, v12);
    *a1 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v12) = v17;
    }

    else
    {
      *(a1 + v12) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v12) = v17;
  }

  return result;
}

uint64_t partial apply for closure #1 in DynamicViewContainer.updateValue()@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = v2[4];
  type metadata accessor for DynamicViewContainer.Value(0, v2[2], v2[3], a1);
  result = DynamicViewContainer.Value.matches(type:id:)(v4);
  *a2 = result & 1;
  return result;
}

uint64_t initializeWithCopy for DynamicViewList.WrappedList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  (**(v5 - 8))();
  v6 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 8) & ~v10);
  v12 = ((v7 + v10 + 8) & ~v10);
  v13 = *(v9 + 48);

  if (v13(v12, 1, AssociatedTypeWitness))
  {
    v14 = *(v9 + 84);
    v15 = *(v9 + 64);
    if (v14)
    {
      v16 = *(v9 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v11, v12, v16);
  }

  else
  {
    (*(v9 + 16))(v11, v12, AssociatedTypeWitness);
    v18 = *(v9 + 56);
    v17 = v9 + 56;
    v18(v11, 0, 1, AssociatedTypeWitness);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  *((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithCopy for DynamicViewList.WrappedList(uint64_t *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a4);
  v6 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 8) & ~v10);
  v12 = ((v7 + v10 + 8) & ~v10);
  v13 = *(v9 + 48);
  LODWORD(v7) = v13(v11, 1, AssociatedTypeWitness);
  v14 = v13(v12, 1, AssociatedTypeWitness);
  if (v7)
  {
    if (!v14)
    {
      (*(v9 + 16))(v11, v12, AssociatedTypeWitness);
      (*(v9 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v9 + 24))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v11, v12, v17);
LABEL_12:
  if (*(v9 + 84))
  {
    v18 = *(v9 + 64);
  }

  else
  {
    v18 = *(v9 + 64) + 1;
  }

  *((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for DynamicViewList.WrappedList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  if ((*(v8 + 48))(v11, 1, AssociatedTypeWitness))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v10, v11, v14);
  }

  else
  {
    (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10, 0, 1, AssociatedTypeWitness);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicViewList.WrappedList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 8) & ~v10);
  v12 = ((v7 + v10 + 8) & ~v10);
  v13 = *(v9 + 48);
  LODWORD(v7) = v13(v11, 1, AssociatedTypeWitness);
  v14 = v13(v12, 1, AssociatedTypeWitness);
  if (v7)
  {
    if (!v14)
    {
      (*(v9 + 32))(v11, v12, AssociatedTypeWitness);
      (*(v9 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v9 + 40))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v11, v12, v17);
LABEL_12:
  if (*(v9 + 84))
  {
    v18 = *(v9 + 64);
  }

  else
  {
    v18 = *(v9 + 64) + 1;
  }

  *((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewList.WrappedList(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  v12 = 7;
  if (!v7)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_33;
  }

  v13 = ((v12 + v11 + ((v10 + 48) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v9 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_33:
    if ((v8 & 0x80000000) != 0)
    {
      v22 = (*(v6 + 48))((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *(a1 + 24);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v9 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for DynamicViewList.WrappedList(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  v11 = *(v8 + 80);
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = ((v13 + ((v11 + 48) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 < a3)
  {
    if (((v13 + ((v11 + 48) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v12 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 > v12)
  {
    if (((v13 + ((v11 + 48) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v12;
    }

    else
    {
      v17 = 1;
    }

    if (((v13 + ((v11 + 48) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v12 + a2;
      bzero(a1, ((v13 + ((v11 + 48) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v18;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + v14) = v17;
      }

      else
      {
        *(a1 + v14) = v17;
      }
    }

    else if (v7)
    {
      *(a1 + v14) = v17;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v14) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v7)
  {
    goto LABEL_38;
  }

  *(a1 + v14) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v10 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
    if (v10 >= a2)
    {
      v23 = *(v8 + 56);

      v23(v19, a2 + 1);
    }

    else
    {
      if (v13 <= 3)
      {
        v20 = ~(-1 << (8 * v13));
      }

      else
      {
        v20 = -1;
      }

      if (v13)
      {
        v21 = v20 & (~v10 + a2);
        if (v13 <= 3)
        {
          v22 = v13;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v13);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0u;
    *(a1 + 6) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in DynamicViewList<A>.WrappedIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in DynamicViewList<A>.WrappedIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

uint64_t EventBindingManager.send(_:)(uint64_t a1)
{
  swift_weakInit();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = EventBindingManager.sendDownstream(_:)(a1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  static Update.end()();
  _MovableLockUnlock(v2);
  swift_weakDestroy();
  return v3;
}

Swift::Void __swiftcall EventBindingManager.reset(resetForwardedEventDispatchers:)(Swift::Bool resetForwardedEventDispatchers)
{
  v2 = v1;
  LOBYTE(v42[0]) = 17;
  v4 = swift_allocObject();
  swift_weakInit();

  static Update.enqueueAction(reason:_:)(v42, partial apply for closure #1 in EventBindingManager.reset(resetForwardedEventDispatchers:), v4);

  if (!resetForwardedEventDispatchers)
  {
LABEL_31:
    v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    *(v2 + 56) = v35;

    v36 = *(v2 + 72);
    if (v36)
    {
      [v36 invalidate];
      v37 = *(v2 + 72);
    }

    else
    {
      v37 = 0;
    }

    *(v2 + 72) = 0;

    swift_beginAccess();
    *(v2 + 64) = 0;
    return;
  }

  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v12 = v10;
LABEL_17:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(v5 + 48) + 8 * v16);
    outlined init with copy of AnyTrackedValue(*(v5 + 56) + 40 * v16, v38);
    *&v39 = v17;
    outlined init with take of AnyTrackedValue(v38, &v39 + 8);
LABEL_18:
    v42[0] = v39;
    v42[1] = v40;
    v42[2] = v41;
    if (!v41)
    {

      goto LABEL_31;
    }

    v18 = *&v42[0];
    outlined init with take of AnyTrackedValue((v42 + 8), &v39);
    v19 = *(&v40 + 1);
    v20 = v41;
    __swift_mutable_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    (*(v20 + 40))(v19, v20);
    swift_beginAccess();
    outlined init with copy of AnyTrackedValue(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_36;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_38;
      }

LABEL_24:
      v31 = v22;
      if (v29)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v34 = v23;
    specialized _NativeDictionary.copy()();
    v23 = v34;
    v31 = v22;
    if (v29)
    {
LABEL_5:
      v11 = (v31[7] + 40 * v23);
      __swift_destroy_boxed_opaque_existential_1(v11);
      outlined init with take of AnyTrackedValue(v38, v11);
      goto LABEL_6;
    }

LABEL_25:
    v31[(v23 >> 6) + 8] |= 1 << v23;
    *(v31[6] + 8 * v23) = v18;
    outlined init with take of AnyTrackedValue(v38, v31[7] + 40 * v23);
    v32 = v31[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_37;
    }

    v31[2] = v33;
LABEL_6:
    *(v2 + 48) = v31;

    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  if (v9 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v40 = 0u;
      v41 = 0u;
      v10 = v14;
      v39 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void EventBindingManager.willRemoveResponder(_:)(uint64_t a1)
{
  v3 = (*(*a1 + 88))();
  swift_beginAccess();
  v4 = *(v1 + 56);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + 56) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v30 = *(v1 + 56);

  v12 = 0;
  while (v10)
  {
LABEL_11:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v12 << 6);
      v16 = (*(v30 + 48) + 16 * v15);
      v27 = *v16;
      v28 = v16[1];
      v17 = *(*(v30 + 56) + 8 * v15);
      swift_retain_n();
      if (v17)
      {
        break;
      }

LABEL_6:

      if (!v10)
      {
        goto LABEL_7;
      }
    }

    if (v17 != a1)
    {

      if (v3 == v17)
      {
LABEL_5:
      }

      else
      {
        v18 = v17;
        while (1)
        {
          v19 = *(*v18 + 88);

          v18 = v19(v20);

          if (!v18)
          {
            break;
          }

          if (v18 == a1)
          {
            goto LABEL_20;
          }

          if (v3 && v18 == v3)
          {
            goto LABEL_5;
          }
        }
      }

      goto LABEL_6;
    }

LABEL_20:
    if (v3)
    {

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v26 + 56);
      *(v26 + 56) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v27, v28, isUniquelyReferenced_nonNull_native);
      *(v26 + 56) = v31;
    }

    else
    {
      swift_beginAccess();
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
      if (v23)
      {
        v29 = v22;
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v26 + 56);
        *(v26 + 56) = 0x8000000000000000;
        if (!v24)
        {
          specialized _NativeDictionary.copy()();
        }

        specialized _NativeDictionary._delete(at:)(v29, v25);
        *(v26 + 56) = v25;
      }
    }

    swift_endAccess();
  }

LABEL_7:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t EventBindingManager.host.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*EventBindingManager.host.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.updateDelegate.modify;
}

uint64_t EventBindingManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*EventBindingManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.renderDelegate.modify;
}

uint64_t EventBindingManager.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  *(v0 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t EventBindingManager.deinit()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  outlined destroy of weak GestureGraphDelegate?(v0 + 16);
  outlined destroy of weak GestureGraphDelegate?(v0 + 32);

  return v0;
}

void EventBindingManager.rebindEvent(_:to:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *a1;
  v7 = a1[1];
  swift_beginAccess();
  v9 = *(v3 + 56);
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7), (v11 & 1) == 0))
  {
    swift_endAccess();
LABEL_8:
    a2 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  if (a2 && v12 == a2)
  {
    goto LABEL_8;
  }

  if (a2)
  {

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 56);
    *(v4 + 56) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v8, v7, isUniquelyReferenced_nonNull_native);
    *(v4 + 56) = v14;
  }

  else
  {
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v8, v7, &v14);
  }

  swift_endAccess();
LABEL_9:
  *a3 = v12;
  a3[1] = a2;
}

uint64_t EventBindingManager.sendDownstream(_:)(int64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = *(v1 + 24);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  if (one-time initialization token for _eventDebugTriggers != -1)
  {
LABEL_114:
    swift_once();
  }

  swift_beginAccess();
  v117 = v2;
  v118 = v7;
  if ((_eventDebugTriggers.rawValue & 2) != 0)
  {
    if (one-time initialization token for events != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.events);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v132 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x45444E4F50534552, 0xEA00000000005352, &v132);
      _os_log_impl(&dword_18D018000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v14 = v13;
      v7 = v118;
      MEMORY[0x193AC4820](v14, -1, -1);
      MEMORY[0x193AC4820](v12, -1, -1);
    }

    if (v7)
    {
      type metadata accessor for ViewResponder();
      if (swift_dynamicCastClass())
      {
        v15 = default argument 0 of ViewResponder.printTree(depth:)();

        ViewResponder.printTree(depth:)(v15);
      }
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v132 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v132);
      _os_log_impl(&dword_18D018000, v16, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v19;
      v7 = v118;
      MEMORY[0x193AC4820](v20, -1, -1);
      MEMORY[0x193AC4820](v18, -1, -1);
    }
  }

  printEvents(_:)(a1);
  EventBindingManager.dispatchNonGestureEvents(_:)(a1);
  v8 = v21;
  v136 = v21;

  v22 = specialized Dictionary.optimisticFilter(_:)(a1, v2);

  v135 = v22;
  swift_beginAccess();
  if ((*(v2 + 64) & 1) != 0 || v22[2])
  {
    v116 = v4;
    v23 = v22 + 8;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v4 = v25 & v22[8];
    v119 = v22;

    swift_beginAccess();
    v26 = 0;
    a1 = (v24 + 63) >> 6;
    v120 = v23;
    v121 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!v4)
      {
        if (a1 <= v26 + 1)
        {
          v28 = v26 + 1;
        }

        else
        {
          v28 = a1;
        }

        v29 = v28 - 1;
        while (1)
        {
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v27 >= a1)
          {
            v4 = 0;
            v131 = 0;
            v129 = 0u;
            v130 = 0u;
            v26 = v29;
            v128 = 0u;
            goto LABEL_36;
          }

          v4 = v23[v27];
          ++v26;
          if (v4)
          {
            v26 = v27;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v27 = v26;
LABEL_35:
      v30 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v31 = v30 | (v27 << 6);
      v32 = (v119[6] + 16 * v31);
      v33 = *v32;
      v34 = v32[1];
      outlined init with copy of AnyTrackedValue(v119[7] + 40 * v31, &v125);
      *&v128 = v33;
      *(&v128 + 1) = v34;
      outlined init with take of AnyTrackedValue(&v125, &v129);
LABEL_36:
      v132 = v128;
      v133[0] = v129;
      v133[1] = v130;
      v134 = v131;
      v35 = v128;
      if (!v128)
      {

        swift_beginAccess();

        printEventBindings(_:)(v92);

        v93 = 0;
        LOBYTE(v94) = 0;
        LOBYTE(v95) = 3;
        v96 = INFINITY;
        if (*(v2 + 64) == 1 && v118)
        {
          v97 = swift_getObjectType();
          v98 = v135;

          *&v132 = CACurrentMediaTime();
          v99 = v116;
          (*(v116 + 40))(&v125, v98, v118, &v132, v97, v116);
          v94 = v125;
          v95 = BYTE1(v125);
          (*(v99 + 32))(&v132, v97, v99);
          v96 = *&v132;
          (*(v99 + 56))(&v132, v97, v99);
          if (BYTE8(v132))
          {
            v93 = 0;
          }

          else
          {
            v93 = v132;
          }

          if (v95 != 3 || v94)
          {

            specialized Set.formUnion<A>(_:)(v100);
          }

          else
          {
            LOBYTE(v95) = 3;
          }

          v2 = v117;
        }

        if ((_eventDebugTriggers.rawValue & 0x10) != 0 && v118)
        {
          _s7SwiftUI12GesturePhaseOyytGMaTm_2(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
          *(&v133[0] + 1) = v101;
          LOBYTE(v132) = v94;
          BYTE1(v132) = v95;

          ResponderNode.log(action:data:)(0x6168702D746F6F72, 0xEA00000000006573, &v132);

          outlined destroy of Any?(&v132);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v102 = *(v2 + 40);
          v103 = swift_getObjectType();
          LOBYTE(v132) = v94;
          BYTE1(v132) = v95;
          (*(v102 + 16))(&v132, v2, v103, v102);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v104 = *(v2 + 40);
          v105 = swift_getObjectType();
          *&v132 = v93;
          (*(v104 + 24))(&v132, v2, v105, v104);
          swift_unknownObjectRelease();
        }

        if (*(v2 + 64) == 1 && v96 != INFINITY)
        {
          *&v132 = v96;
          EventBindingManager.scheduleNextEventUpdate(time:)(&v132);
        }

        v106 = *(v121 + 2);
        if (v106)
        {
          v107 = (v121 + 40);
          do
          {
            v109 = *(v107 - 1);
            v108 = *v107;
            swift_beginAccess();
            v110 = specialized __RawDictionaryStorage.find<A>(_:)(v109, v108);
            if (v111)
            {
              v112 = v110;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v114 = *(v2 + 56);
              *&v125 = v114;
              *(v2 + 56) = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                specialized _NativeDictionary.copy()();
                v114 = v125;
              }

              specialized _NativeDictionary._delete(at:)(v112, v114);
              *(v2 + 56) = v114;
            }

            v107 += 2;
            swift_endAccess();
            --v106;
          }

          while (v106);
        }

        swift_unknownObjectRelease();

        v8 = v136;

        return v8;
      }

      v36 = *(&v132 + 1);
      outlined init with take of AnyTrackedValue(v133, &v128);
      swift_beginAccess();
      v37 = *(v2 + 56);
      v122 = v36;
      if (*(v37 + 16))
      {
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
        if (v39)
        {
          v40 = *(*(v37 + 56) + 8 * v38);
          swift_endAccess();
          outlined init with copy of AnyTrackedValue(&v128, &v125);
          v41 = v126;
          v42 = v127;
          __swift_mutable_project_boxed_opaque_existential_1(&v125, v126);
          v123[0] = v40;
          v43 = *(v42 + 32);
          swift_retain_n();
          v43(v123, v41, v42);
          v2 = v117;
          swift_beginAccess();
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v124 = *(v117 + 56);
          v45 = v124;
          *(v117 + 56) = 0x8000000000000000;
          v7 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v122);
          v47 = v45[2];
          v48 = (v46 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_111;
          }

          v50 = v46;
          if (v45[3] >= v49)
          {
            if ((v44 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }

            v51 = v122;
            v54 = v124;
            if ((v50 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v44);
            v51 = v122;
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v122);
            if ((v50 & 1) != (v53 & 1))
            {
              goto LABEL_115;
            }

            v7 = v52;
            v54 = v124;
            if ((v50 & 1) == 0)
            {
LABEL_43:
              v54[(v7 >> 6) + 8] |= 1 << v7;
              v55 = (v54[6] + 16 * v7);
              *v55 = v35;
              v55[1] = v51;
              *(v54[7] + 8 * v7) = v40;
              v56 = v54[2];
              v57 = __OFADD__(v56, 1);
              v58 = v56 + 1;
              if (v57)
              {
                goto LABEL_113;
              }

              v54[2] = v58;
              goto LABEL_55;
            }
          }

          *(v54[7] + 8 * v7) = v40;

LABEL_55:
          *(v117 + 56) = v54;
          swift_endAccess();
          outlined init with copy of AnyTrackedValue(&v125, v123);
          specialized Dictionary.subscript.setter(v123, v35, v51);

          __swift_destroy_boxed_opaque_existential_1(&v125);
          v7 = v118;
          goto LABEL_72;
        }
      }

      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v59 = *(v2 + 24);
        v60 = swift_getObjectType();
        v61 = (*(v59 + 24))(v60, v59);
        swift_unknownObjectRelease();
        if (v61)
        {
          v62 = *(&v129 + 1);
          v63 = v130;
          __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
          if (EventType.isFocusEvent.getter(v62, v63))
          {
            v64 = (*(*v61 + 96))(&v128);
            if (v64)
            {
              v65 = v64;

              v61 = v65;
            }

            goto LABEL_59;
          }
        }
      }

      if (!v7)
      {
        goto LABEL_72;
      }

      v66 = *(*v7 + 96);

      v61 = v66(&v128);

      if (!v61)
      {
        goto LABEL_72;
      }

LABEL_59:

      outlined init with copy of AnyTrackedValue(&v128, &v125);
      v67 = v126;
      v68 = v127;
      __swift_mutable_project_boxed_opaque_existential_1(&v125, v126);
      v123[0] = v61;
      v7 = v68 + 32;
      v69 = *(v68 + 32);
      swift_retain_n();
      v69(v123, v67, v68);
      v2 = v117;
      swift_beginAccess();
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v124 = *(v117 + 56);
      v71 = v124;
      *(v117 + 56) = 0x8000000000000000;
      v72 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v122);
      v74 = v71[2];
      v75 = (v73 & 1) == 0;
      v57 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v57)
      {
        goto LABEL_110;
      }

      v77 = v73;
      if (v71[3] >= v76)
      {
        v7 = v118;
        if ((v70 & 1) == 0)
        {
          v91 = v72;
          specialized _NativeDictionary.copy()();
          v72 = v91;
        }

        v78 = v122;
        v80 = v124;
        if ((v77 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v70);
        v78 = v122;
        v72 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v122);
        v7 = v118;
        if ((v77 & 1) != (v79 & 1))
        {
LABEL_115:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v80 = v124;
        if ((v77 & 1) == 0)
        {
LABEL_67:
          v80[(v72 >> 6) + 8] |= 1 << v72;
          v81 = (v80[6] + 16 * v72);
          *v81 = v35;
          v81[1] = v78;
          *(v80[7] + 8 * v72) = v61;
          v82 = v80[2];
          v57 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v57)
          {
            goto LABEL_112;
          }

          v80[2] = v83;
          goto LABEL_69;
        }
      }

      *(v80[7] + 8 * v72) = v61;

LABEL_69:
      *(v117 + 56) = v80;
      swift_endAccess();
      outlined init with copy of AnyTrackedValue(&v125, v123);
      specialized Dictionary.subscript.setter(v123, v35, v78);
      *(v117 + 64) = 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v84 = *(v117 + 40);
        v85 = swift_getObjectType();
        v124 = v61;
        v123[0] = v35;
        v123[1] = v78;
        (*(v84 + 8))(&v124, v123, v85, v84);
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(&v125);
LABEL_72:
      v86 = *(&v129 + 1);
      v87 = v130;
      __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
      (*(v87 + 8))(&v125, v86, v87);
      if (v125 - 2 >= 2)
      {
        v23 = v120;
      }

      else
      {
        v23 = v120;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 2) + 1, 1, v121);
        }

        v89 = *(v121 + 2);
        v88 = *(v121 + 3);
        if (v89 >= v88 >> 1)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v121);
        }

        *(v121 + 2) = v89 + 1;
        v90 = &v121[16 * v89];
        *(v90 + 4) = v35;
        *(v90 + 5) = v122;
      }

      __swift_destroy_boxed_opaque_existential_1(&v128);
    }
  }

  swift_unknownObjectRelease();

  return v8;
}

double EventBindingManager.send<A>(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<(EventID, EventType)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  *(inited + 32) = a3;
  *(inited + 40) = a2;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (EventID, EventType)(inited + 32, type metadata accessor for (EventID, EventType));
  swift_weakInit();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v11 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    EventBindingManager.sendDownstream(_:)(v10);
  }

  static Update.end()();
  _MovableLockUnlock(v11);
  swift_weakDestroy();

  return result;
}

uint64_t EventBindingManager.rootResponder.getter()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t EventBindingManager.focusedResponder.getter()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 24))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

void EventBindingManager.dispatchNonGestureEvents(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v5 = *(v1 + 48);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v25 = v5;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      swift_beginAccess();
      v14 = *(v2 + 48);
      if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v16 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v14 + 56) + 40 * v15, &v27);
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
      }

      swift_endAccess();
      if (!*(&v28 + 1))
      {
        break;
      }

      outlined init with take of AnyTrackedValue(&v27, v30);
      v17 = specialized Dictionary.optimisticFilter(_:)(a1, v30);
      if (v17[2])
      {
        v18 = a1;
        v19 = v31;
        v20 = v32;
        v26 = v13;
        v21 = v17;
        __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
        v22 = *(v20 + 32);
        v23 = v20;
        a1 = v18;
        v5 = v25;
        v24 = v22(v21, v2, v19, v23);

        outlined init with copy of AnyTrackedValue(v30, &v27);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(&v27, v26);
        swift_endAccess();
        specialized Set.formUnion<A>(_:)(v24);
        v4 = v33;
      }

      else
      {
      }

      if (*(v4 + 16) == *(a1 + 16))
      {

        __swift_destroy_boxed_opaque_existential_1(v30);
        return;
      }

      v9 &= v9 - 1;
      __swift_destroy_boxed_opaque_existential_1(v30);
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void EventBindingManager.scheduleNextEventUpdate(time:)(double *a1)
{
  v2 = *a1;
  v3 = *(v1 + 72);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + 72);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + 72) = 0;

  v5 = v2 - CACurrentMediaTime();
  if (v5 >= 0.0 && ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v5 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in EventBindingManager.scheduleNextEventUpdate(time:);
    *(v9 + 24) = v8;
    v15[4] = partial apply for closure #1 in withDelay(_:do:);
    v15[5] = v9;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    v15[3] = &block_descriptor_24;
    v10 = _Block_copy(v15);
    v11 = objc_opt_self();
    swift_retain_n();
    v12 = [v11 timerWithTimeInterval:0 repeats:v10 block:v5];
    _Block_release(v10);

    v13 = [objc_opt_self() mainRunLoop];
    [v13 addTimer:v12 forMode:*MEMORY[0x1E695DA28]];

    v14 = *(v1 + 72);
    *(v1 + 72) = v12;
  }
}

double closure #1 in EventBindingManager.scheduleNextEventUpdate(time:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 72);
    *(Strong + 72) = 0;

    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    swift_weakInit();
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v5 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      EventBindingManager.sendDownstream(_:)(v4);
    }

    static Update.end()();
    _MovableLockUnlock(v5);
    swift_weakDestroy();
  }

  return result;
}

void closure #1 in EventBindingManager.reset(resetForwardedEventDispatchers:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 24);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 48))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

void EventBindingManager.isActive<A>(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * (__clz(__rbit64(v6)) | (v9 << 6)), v15);
      outlined init with take of AnyTrackedValue(v15, v12);
      __swift_project_boxed_opaque_existential_1(v12, v13);
      swift_getDynamicType();
      if ((*(v14 + 8))() == a1)
      {
        break;
      }

      v6 &= v6 - 1;
      __swift_destroy_boxed_opaque_existential_1(v12);
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v11 + 16))(v10, v11);

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        swift_beginAccess();
        return;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void EventBindingManager.binds<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(v3 + 48);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * (__clz(__rbit64(v9)) | (v12 << 6)), v22);
      outlined init with take of AnyTrackedValue(v22, v19);
      DynamicType = swift_getDynamicType();
      __swift_project_boxed_opaque_existential_1(v19, v20);
      swift_getDynamicType();
      if (DynamicType == (*(v21 + 8))())
      {
        break;
      }

      v9 &= v9 - 1;
      __swift_destroy_boxed_opaque_existential_1(v19);
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14 = v20;
    v15 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v18[3] = a2;
    v18[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
    (*(v15 + 24))(v18, v3, v14, v15);

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t specialized static EventBindingManager.current.getter()
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for EventGraphHost, &protocol descriptor for EventGraphHost, 0);
      (*(*(*(v3 + 16) + 8) + 16))(v9, v4, v4, ObjectType);
      swift_unknownObjectRelease();
      if (v9[0])
      {
        v5 = v9[1];
        v6 = swift_getObjectType();
        v7 = (*(v5 + 8))(v6, v5);
        swift_unknownObjectRelease();
        return v7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void type metadata accessor for _ContiguousArrayStorage<(EventID, EventType)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>)
  {
    type metadata accessor for (EventID, EventType)(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>);
    }
  }
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SizeGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double key path getter for SizeGesture.content : <A>SizeGesture<A>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(double *a1)@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize) -> (@out A);
  a4[1] = v8;

  return result;
}

void key path setter for SizeGesture.content : <A>SizeGesture<A>(uint64_t *a1, uint64_t (**a2)(double a1, double a2), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGSize) -> (@out A);
  a2[1] = v8;
}

uint64_t SizeGesture.content.getter()
{
  v1 = *v0;

  return v1;
}

void SizeGesture.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static SizeGesture._makeGesture(gesture:inputs:)(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v31 = a2[2];
  v32 = v7;
  v33 = *(a2 + 8);
  v8 = a2[1];
  v29 = *a2;
  v30 = v8;
  v9 = *(a2 + 18);
  v27 = *(a2 + 76);
  v28 = *(a2 + 21);
  v10 = *(a2 + 11);
  v11 = a2[6];
  *(v26 + 12) = *(a2 + 108);
  v26[0] = v11;
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v15 = type metadata accessor for SizeGestureChild(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for SizeGestureChild<A>, v15, __PAIR64__(IndirectAttribute2, v6));
  _GraphValue.init<A>(_:)(v18, a3, v15, v16, &v25);
  v18[2] = v31;
  v18[3] = v32;
  v19 = v33;
  v18[0] = v29;
  v18[1] = v30;
  v20 = v9;
  v21 = v27;
  v22 = v28;
  v23 = v10;
  *&v24[12] = *(v26 + 12);
  *v24 = v26[0];
  return (*(a4 + 32))(&v25, v18, a3, a4);
}

double SizeGestureChild.gesture.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for SizeGesture(0, a2, a3, x3_0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v7 = Value[1];
  *a4 = v8;
  a4[1] = v7;

  return result;
}

double SizeGestureChild.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SizeGestureChild.gesture.getter(a2, a3, &v7, a4);
  v4 = v7;
  Value = AGGraphGetValue();
  v4(*Value, Value[1]);

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGSize) -> (@out A)(double a1, double a2)
{
  v3 = *(v2 + 32);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

void combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7, double a8)
{
  v72 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CombinedAnimationState.Entry(0, v19, v20, v18);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  if (a6 == MEMORY[0x1E69E63B0])
  {
    v42 = *a3;
    v43 = *a5;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v42, a8, v43);
  }

  else
  {
    v71 = a2;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v24 == a6)
    {
      specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, v71, a4, *a3, a3[1], a3[2], a3[3], a8, *a5, a5[1], a5[2], a5[3]);
    }

    else
    {
      v70 = a4;
      v25 = *a1;
      type metadata accessor for AnimationBox<DefaultCombiningAnimation>(0);
      v27 = v26;
      v28 = swift_dynamicCastClass();
      v68 = v27;
      v69 = a1;
      if (v28)
      {
        v29 = *(v28 + 16);

        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        AnimationState.init()(&v74);
        v30 = v74;
        (*(v72 + 32))(v23, v17, a6);
        *&v23[*(v21 + 36)] = v30;
        v74 = *v71;
        v32 = type metadata accessor for AnimationState(0, a6, a7, v31);
        v74 = AnimationState.combinedState.getter(v32, v33, v34, v35);
        type metadata accessor for Array();
        Array.append(_:)();
        specialized AnimationState.combinedState.setter(v74, v32, v36, v37);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v39 = *(v29 + 2);
        v38 = *(v29 + 3);
        if (v39 >= v38 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v29);
        }

        *(v29 + 2) = v39 + 1;
        v40 = &v29[16 * v39];
        *(v40 + 4) = v70;
        *(v40 + 5) = a8;
        v41 = swift_allocObject();
        *(v41 + 16) = v29;
        *v69 = v41;
      }

      else
      {
        AnimationState.init()(&v74);
        v67 = v25;
        v44 = v72;
        (*(v72 + 16))(v17, a3, a6);
        v45 = *v71;
        v46 = *(v44 + 32);
        v72 = v44 + 32;
        v66 = v46;
        v46(v23, v17, a6);
        *&v23[*(v21 + 36)] = v45;
        v73 = v74;
        v48 = type metadata accessor for AnimationState(0, a6, a7, v47);

        v73 = AnimationState.combinedState.getter(v48, v49, v50, v51);
        v65 = type metadata accessor for Array();
        Array.append(_:)();
        specialized AnimationState.combinedState.setter(v73, v48, v52, v53);

        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        AnimationState.init()(&v73);
        v54 = v73;
        v66(v23, v17, a6);
        *&v23[*(v21 + 36)] = v54;
        v73 = v74;
        v73 = AnimationState.combinedState.getter(v48, v55, v56, v57);
        Array.append(_:)();
        specialized AnimationState.combinedState.setter(v73, v48, v58, v59);

        v60 = v74;
        v61 = v71;

        *v61 = v60;
        v62 = v70;

        v63 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v67, v62, a8);
        v64 = swift_allocObject();
        *(v64 + 16) = v63;
        *v69 = v64;
      }
    }
  }
}

uint64_t AnimationState.combinedState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CombinedAnimationState(0, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable(protocol conformance descriptor for CombinedAnimationState<A>, v5);
  AnimationState.subscript.getter(v5, a1, v5, v6);
  return v8;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultCombiningAnimation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultCombiningAnimation(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultCombiningAnimation.Entry()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(**&v1 + 112))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DefaultCombiningAnimation.Entry()
{
  v1 = v0[1];
  (*(**v0 + 112))();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultCombiningAnimation.Entry(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  (*(**&v2 + 112))(v6);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DefaultCombiningAnimation.Entry(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  return (*(**a1 + 104))(*a2) & (v2 == v3);
}

uint64_t static CombinedAnimationState.defaultValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CombinedAnimationState.Entry(0, a1, a2, a4);

  return static Array._allocateUninitialized(_:)();
}

uint64_t protocol witness for static AnimationStateKey.defaultValue.getter in conformance CombinedAnimationState<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = static CombinedAnimationState.defaultValue.getter(*(a1 + 16), *(a1 + 24), a2, a3);
  *a4 = result;
  return result;
}

uint64_t specialized AnimationState.combinedState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v5 = type metadata accessor for CombinedAnimationState(0, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable(protocol conformance descriptor for CombinedAnimationState<A>, v5);
  return specialized AnimationState.subscript.setter(&v8, v5, a2, v5, v6);
}

void specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(_s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(*a1) + 16);

  v45 = a2;
  v10 = *(a2 + 16);
  if (v6 == v10 && v10 != 0)
  {
    type metadata accessor for CombinedAnimationState<Double>(0, v7, v8, v9);
    v13 = v12;
    v14 = 0;
    v15 = 0.0;
    v16 = 5;
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v18 = *a1;
      if (*(*a1 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v20 & 1) != 0))
      {
        outlined init with copy of Any(*(v18 + 56) + 32 * v19, v50);
        outlined init with take of Any(v50, &v51);
        outlined init with take of Any(&v51, v50);
        swift_dynamicCast();
        v21 = v47[0];
      }

      else
      {
        v21 = v17;
      }

      if (v14 >= v21[2])
      {
        break;
      }

      v22 = v21[v16];

      if (v22)
      {
        v24 = *a1;
        v23 = *(a1 + 8);
        v25 = *(a1 + 17);
        v48 = *(a1 + 16);
        v49 = v25;
        v47[0] = v22;
        v47[1] = v23;
        if (*(v24 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v27 & 1) != 0))
        {
          outlined init with copy of Any(*(v24 + 56) + 32 * v26, v50);
          outlined init with take of Any(v50, &v51);
          outlined init with take of Any(&v51, v50);
          swift_dynamicCast();
          v28 = v46;
        }

        else
        {
          v28 = v17;
        }

        if (v14 >= v28[2])
        {
          goto LABEL_46;
        }

        v29 = *&v28[v16 - 1];

        v30 = v29 - v15;
        v31 = *(v45 + v16 * 8 - 8);
        v32 = a3 - *(v45 + v16 * 8);
        *v50 = v30;
        v33 = *(*v31 + 120);

        v33(&v51, v50, v47, MEMORY[0x1E69E63B0], &protocol witness table for Double, v32);

        v34 = *&v51;
        if (BYTE8(v51))
        {
          if (*(v24 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v36 & 1) != 0))
          {
            outlined init with copy of Any(*(v24 + 56) + 32 * v35, v50);
            outlined init with take of Any(v50, &v51);
            outlined init with take of Any(&v51, v50);
            swift_dynamicCast();
            v37 = v46;
          }

          else
          {
            v37 = v17;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
          }

          if (v14 >= v37[2])
          {
            goto LABEL_49;
          }

          v37[v16] = 0;

          v52 = v13;
          *&v51 = v37;
          specialized Dictionary.subscript.setter(&v51, v13);
          if (v6 == 1)
          {
            goto LABEL_38;
          }

          v15 = v15 + v30;
        }

        else
        {
          v41 = v47[0];
          if (*(v24 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v43 & 1) != 0))
          {
            outlined init with copy of Any(*(v24 + 56) + 32 * v42, v50);
            outlined init with take of Any(v50, &v51);
            outlined init with take of Any(&v51, v50);

            swift_dynamicCast();
            v44 = v46;
          }

          else
          {

            v44 = v17;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
          }

          if (v14 >= v44[2])
          {
            goto LABEL_48;
          }

          v44[v16] = v41;

          v52 = v13;
          *&v51 = v44;
          specialized Dictionary.subscript.setter(&v51, v13);
          v15 = v15 + v34;
          if (v6 == 1)
          {
LABEL_38:
            *(a1 + 17) = v49;

            return;
          }
        }
      }

      else
      {
        if (*(v18 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v39 & 1) != 0))
        {
          outlined init with copy of Any(*(v18 + 56) + 32 * v38, v50);
          outlined init with take of Any(v50, &v51);
          outlined init with take of Any(&v51, v50);
          swift_dynamicCast();
          v40 = v47[0];
        }

        else
        {
          v40 = v17;
        }

        if (v14 >= v40[2])
        {
          goto LABEL_47;
        }

        v15 = *&v40[v16 - 1];
      }

      v16 += 2;
      ++v14;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

void lazy protocol witness table accessor for type DefaultCombiningAnimation.Entry and conformance DefaultCombiningAnimation.Entry()
{
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation.Entry and conformance DefaultCombiningAnimation.Entry)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultCombiningAnimation.Entry, &type metadata for DefaultCombiningAnimation.Entry, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultCombiningAnimation.Entry and conformance DefaultCombiningAnimation.Entry);
  }
}

void type metadata accessor for CombinedAnimationState<Double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<Double>)
  {
    v4 = type metadata accessor for CombinedAnimationState(0, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for CombinedAnimationState<Double>);
    }
  }
}

double *CGSize.clamped(to:)(double *result)
{
  v1 = result[2];
  if (*result > v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = result[3];
  if (v2 > result[5])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void _LayoutTraits.Dimension.min.setter(double a1)
{
  *v1 = a1;
  v3 = v1[1];
  v2 = v1[2];
  v6 = *&a1 > -1 && ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a1 - 1) < 0xFFFFFFFFFFFFFLL || (*&a1 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v6 || v3 == INFINITY)
  {
LABEL_20:
    v8 = v2;
    _StringGuts.grow(_:)(22);

    if (v8 == a1)
    {
      v10 = Double.description.getter();
      v12 = v11;
    }

    else
    {
      v16 = Double.description.getter();
      v17 = v13;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v14 = Double.description.getter();
      MEMORY[0x193ABEDD0](v14);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      v10 = v16;
      v12 = v17;
    }

    MEMORY[0x193ABEDD0](v10, v12);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v2 < a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < a1 || v3 > v2)
  {
    goto LABEL_20;
  }
}

double **_LayoutTraits.Dimension.min.modify(double **result, char a2)
{
  if (a2)
  {
    return result;
  }

  v2 = **result;
  v3 = (*result)[1];
  v4 = (*result)[2];
  v7 = *&v2 > -1 && ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v2 - 1) < 0xFFFFFFFFFFFFFLL || (*&v2 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v7 || v3 == INFINITY)
  {
    goto LABEL_21;
  }

  if (v2 > v4)
  {
    __break(1u);
LABEL_21:
    v9 = v4;
    v10 = v2;
    _StringGuts.grow(_:)(22);

    if (v10 == v9)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v2 > v3 || v3 > v4)
  {
    goto LABEL_21;
  }

  return result;
}

void _LayoutTraits.Dimension.ideal.setter(double a1)
{
  v1[1] = a1;
  v2 = *v1;
  v3 = v1[2];
  v4 = *v1 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *v1 > -1 && (v4 - 0x10000000000000) >> 53 < 0x3FF || (*v1 - 1) < 0xFFFFFFFFFFFFFLL || v4 == 0;
  if (!v7 || a1 == INFINITY)
  {
LABEL_20:
    v9 = v3;
    v10 = v2;
    _StringGuts.grow(_:)(22);

    if (v10 == v9)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v2 > v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v2 > a1 || v3 < a1)
  {
    goto LABEL_20;
  }
}

void _LayoutTraits.Dimension.max.setter(double a1)
{
  v1[2] = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *v1 > -1 && (v4 - 0x10000000000000) >> 53 < 0x3FF || (*v1 - 1) < 0xFFFFFFFFFFFFFLL || v4 == 0;
  if (!v7 || v3 == INFINITY)
  {
LABEL_20:
    v10 = v2;
    _StringGuts.grow(_:)(22);

    if (v10 == a1)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v2 > a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v2 > v3 || v3 > a1)
  {
    goto LABEL_20;
  }
}

void static _LayoutTraits.Dimension.fixed(_:)(double *a1@<X8>, double a2@<D0>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
}

double _LayoutTraits.width.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double _LayoutTraits.width.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

double _LayoutTraits.height.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

double _LayoutTraits.height.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = result;
  return result;
}

void _LayoutTraits.init()(void *a1@<X8>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0x7FF0000000000000;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0x7FF0000000000000;
}

double _LayoutTraits.subscript.getter@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = (v2 + 16);
  if (a1)
  {
    v3 = (v2 + 40);
  }

  result = *v3;
  v5 = vdup_n_s32((a1 & 1) == 0);
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  *a2 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v6, 0x3FuLL)), *v2, *(v2 + 24));
  *(a2 + 16) = result;
  return result;
}

void *_LayoutTraits.subscript.setter(void *result, char a2)
{
  v3 = result[1];
  v4 = result[2];
  v5 = 24;
  if ((a2 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 32;
  if ((a2 & 1) == 0)
  {
    v6 = 8;
  }

  *(v2 + v5) = *result;
  v7 = 16;
  if (a2)
  {
    v7 = 40;
  }

  *(v2 + v6) = v3;
  *(v2 + v7) = v4;
  return result;
}

void (*_LayoutTraits.subscript.modify(int8x16_t **a1, __int8 a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v5[1].i64[1] = v2;
  v5[2].i8[0] = a2;
  v6 = (v2 + 16);
  if (a2)
  {
    v6 = (v2 + 40);
  }

  v7 = *v6;
  v8 = vdup_n_s32((a2 & 1) == 0);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  *v5 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), *v2, *(v2 + 24));
  v5[1].i64[0] = v7;
  return _LayoutTraits.subscript.modify;
}

void _LayoutTraits.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = v1[1];
  v4 = v1[2];
  v5 = (v1[4] & 1) == 0;
  v6 = 24;
  if ((v1[4] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 32;
  if ((v1[4] & 1) == 0)
  {
    v7 = 8;
  }

  *(v2 + v6) = *v1;
  if (v5)
  {
    v8 = 16;
  }

  else
  {
    v8 = 40;
  }

  *(v2 + v7) = v3;
  *(v2 + v8) = v4;
  free(v1);
}

void _LayoutTraits.init(width:height:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a3;
  a1[5] = a3;
}

uint64_t _LayoutTraits.description.getter(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (*v1 == v1[2])
  {
    v4 = Double.description.getter();
    v6 = v5;
  }

  else
  {
    v17 = Double.description.getter();
    v19 = v7;
    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v8 = Double.description.getter();
    MEMORY[0x193ABEDD0](v8);

    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v9 = Double.description.getter();
    MEMORY[0x193ABEDD0](v9);

    v4 = v17;
    v6 = v19;
  }

  MEMORY[0x193ABEDD0](v4, v6);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  if (v2 == v3)
  {
    v10 = Double.description.getter();
    v12 = v11;
  }

  else
  {
    v18 = Double.description.getter();
    v20 = v13;
    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v14 = Double.description.getter();
    MEMORY[0x193ABEDD0](v14);

    MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
    v15 = Double.description.getter();
    MEMORY[0x193ABEDD0](v15);

    v10 = v18;
    v12 = v20;
  }

  MEMORY[0x193ABEDD0](v10, v12);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 40;
}

uint64_t _LayoutTraits.Dimension.description.getter(uint64_t a1)
{
  if (*v1 == v1[2])
  {
    return Double.description.getter();
  }

  v5 = Double.description.getter();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  v4 = Double.description.getter();
  MEMORY[0x193ABEDD0](v4);

  return v5;
}

void (*_LayoutTraits.idealSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  return _LayoutTraits.idealSize.modify;
}

void _LayoutTraits.minSize.setter(double a1, double a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  _LayoutTraits.Dimension._checkInvariant()();
  *v2 = a1;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  _LayoutTraits.Dimension._checkInvariant()();
  *(v2 + 24) = a2;
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
}

void (*_LayoutTraits.minSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  v2 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  return _LayoutTraits.minSize.modify;
}

void _LayoutTraits.maxSize.setter(double a1, double a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  _LayoutTraits.Dimension._checkInvariant()();
  *v2 = v5;
  *(v2 + 1) = v6;
  v2[2] = a1;
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  _LayoutTraits.Dimension._checkInvariant()();
  *(v2 + 3) = v7;
  *(v2 + 4) = v8;
  v2[5] = a2;
}

void (*_LayoutTraits.maxSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return _LayoutTraits.maxSize.modify;
}

BOOL specialized static _LayoutTraits.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[3] == a2[3];
  if (a1[4] != a2[4])
  {
    v5 = 0;
  }

  return a1[5] == a2[5] && v5;
}

BOOL specialized static _LayoutTraits.FlexibilityEstimate.< infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1] - *a1;
  v3 = a2[1] - *a2;
  if (v2 == INFINITY)
  {
    v4 = a2[1] - *a2;
    if (v3 == INFINITY)
    {
      v5 = -*a1;
      v6 = -*a2;
      return v5 < v6;
    }
  }

  else
  {
    v4 = INFINITY;
    if (v3 != INFINITY)
    {
      v6 = 0.0;
      v5 = 0.0;
      v4 = a2[1] - *a2;
      if (v2 == v3)
      {
        return v5 < v6;
      }
    }
  }

  return v2 < v4;
}

void lazy protocol witness table accessor for type _LayoutTraits.FlexibilityEstimate and conformance _LayoutTraits.FlexibilityEstimate()
{
  if (!lazy protocol witness table cache variable for type _LayoutTraits.FlexibilityEstimate and conformance _LayoutTraits.FlexibilityEstimate)
  {
    swift_getWitnessTable(protocol conformance descriptor for _LayoutTraits.FlexibilityEstimate, &type metadata for _LayoutTraits.FlexibilityEstimate, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _LayoutTraits.FlexibilityEstimate and conformance _LayoutTraits.FlexibilityEstimate);
  }
}

void static GestureUtilities.requestUpdate(by:useGestureGraph:)(double *a1, char a2)
{
  v3 = *a1;
  specialized static GraphHost.currentHost.getter();
  if (a2)
  {
    type metadata accessor for GestureGraph();
    v4 = swift_dynamicCastClassUnconditional();
    v5 = *(v4 + 272);
    if (v3 < v5)
    {
      v5 = v3;
    }

    *(v4 + 272) = v5;
  }

  else
  {
    type metadata accessor for ViewGraph();
    v6 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v7 = *(v6 + 408);
    if (v3 < v7)
    {
      v7 = v3;
    }

    *(v6 + 408) = v7;
  }
}

uint64_t protocol witness for FontProvider.resolveTraits(in:) in conformance Font.DefaultProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  return (*(**(a1 + 32) + 104))(v3, *(a1 + 32));
}

uint64_t specialized static ViewModifier<>._makeViewList(modifier:inputs:body:)@<X0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v26[2] = a2[2];
  LODWORD(v23) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(&v23, v26);
  v10 = v23;
  static DynamicPropertyCache.fields(of:)(v5, &v23);
  v11 = v23;
  v12 = v24;
  v13 = v25;
  outlined init with copy of _ViewListInputs(a2, &v23);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v19) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v23, v11, *(&v11 + 1), v12 | (v13 << 32), v10, &v19);
    v16 = v21;
    v17 = v20;
    v14 = v22;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeW033_62A32D59B8A902A88963544196023CF7LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v23, a5);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v19) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v10, v11, *(&v11 + 1), (v13 << 32) | v12, v17, v16);
        outlined consume of DynamicPropertyCache.Fields.Layout(v11, *(&v11 + 1), v12);
        return outlined destroy of _ViewListInputs(&v23);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v23, a5);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v23);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v11, *(&v11 + 1), v12);
  }

  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v27[0] = *a2;
  v27[1] = v7;
  v27[2] = a2[2];
  LODWORD(v24) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(&v24, v27);
  v8 = v24;
  static DynamicPropertyCache.fields(of:)(v5, &v24);
  v9 = v24;
  v10 = v25;
  v11 = v26;
  outlined init with copy of _ViewListInputs(a2, &v24);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>(0);
    LOBYTE(v20) = v10;
    v16 = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v24, v9, *(&v9 + 1), v10 | (v11 << 32), v8, &v20);
    v12 = v21;
    v13 = v22;
    v14 = v23;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickW033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v24, a5);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v20) = v10;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v16, v9, *(&v9 + 1), (v11 << 32) | v10, v12, v13);
        outlined consume of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);
        return outlined destroy of _ViewListInputs(&v24);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v24, a5);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v24);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);
  }

  return result;
}

uint64_t static ViewModifier<>._makeViewList(modifier:inputs:body:)(unsigned int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v22[0] = *a2;
  v22[1] = v13;
  v15 = *a2;
  v14 = a2[1];
  v22[2] = a2[2];
  v21 = *a1;
  v18 = v15;
  v19 = v14;
  v20 = a2[2];
  outlined init with copy of _GraphInputs(v22, v23);
  v16 = static Animatable.makeAnimatable(value:inputs:)(&v21, &v18, a5, a6);
  v23[0] = v18;
  v23[1] = v19;
  v23[2] = v20;
  outlined destroy of _GraphInputs(v23);
  _GraphValue.init(_:)(v16, &v18);
  return static ViewModifier.makeViewList(modifier:inputs:body:)(&v18, a2, a3, a4, a5, a7);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance KickModifier(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(unsigned int *, _OWORD *), uint64_t (*a8)(void, _OWORD *, uint64_t, uint64_t))
{
  v11 = *a1;
  v12 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v12;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v21[0] = v16[0];
  v21[1] = v13;
  v21[2] = v17;
  v15 = v11;
  (a7)(&v15, v21, a3, a4, a5, a6);
  return a8(v15, v16, a3, a4);
}

void static EmptyView._makeView(view:inputs:)(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA09GlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for GlassItemView)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for GlassItemView;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v24, protocol witness for static View._viewListCount(inputs:) in conformance Text, 0);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for GlassItemView;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v24, protocol witness for static View._viewListCount(inputs:) in conformance Text, 0);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 3);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for SummarySymbol)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for GlassEntryView)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for GlassEntryView;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v24, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for GlassEntryView;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v24, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 3);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for GlassEffectView)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_M0VyAA0ij5LocalN008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAA0ijkN0APLLVGG_Tt0B5(__int128 *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
  v3 = v2;
  v4 = a1;
  v26 = *a1;
  v5 = *(a1 + 3);
  v27 = *(a1 + 2);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 56);
  v25[0] = *(a1 + 57);
  *(v25 + 15) = *(a1 + 9);
  if (v5)
  {
    v10 = v5;
    do
    {
      if (*v10 == v3)
      {
        outlined init with copy of _ViewListCountInputs(a1, &v28);
        v11 = 0;
        goto LABEL_14;
      }

      v10 = v10[3];
    }

    while (v10);
    v21 = v3;
    v22 = 0;
    v23 = 256;
    v24 = v5;
    v9 &= 1u;
    v28 = *a1;
    v29 = *(a1 + 2);
    v30 = &v21;
    v31 = v6;
    v32 = v7;
    v33 = v8;
    v34 = v9;
    *v35 = *(a1 + 57);
    *&v35[15] = *(a1 + 9);
    outlined init with copy of _ViewListCountInputs(a1, &v13);
    if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5())
    {
      v11 = 1;
    }

    else
    {
      v11 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectLocalI008_3DF70D9O23D7473F4D189A049B764CFEFLLVG_TtB5();
    }

    v5 = &v21;
  }

  else
  {
    v21 = v3;
    v22 = 0;
    v23 = 256;
    v24 = 0;
    v28 = *a1;
    v29 = *(a1 + 2);
    v30 = &v21;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v11 = 1;
    v34 = 1;
    *&v35[15] = *(v4 + 72);
    *v35 = *(v4 + 57);
    outlined init with copy of _ViewListCountInputs(v4, &v13);
    outlined init with copy of _ViewListCountInputs(&v28, &v13);
    if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5() & 1) == 0)
    {
      v11 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectLocalI008_3DF70D9O23D7473F4D189A049B764CFEFLLVG_TtB5();
    }

    v5 = &v21;
    outlined destroy of _ViewListCountInputs(&v28);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

LABEL_14:
  v13 = v26;
  v14 = v27;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  *v20 = v25[0];
  *&v20[15] = *(v25 + 15);
  outlined destroy of _ViewListCountInputs(&v13);
  return v11;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5(__int128 *a1)
{

  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(a1, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA20CombinedContentShape33_6E67AD6866B38627EB183D41FF0BA80ALLV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 3);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for CombinedContentShape)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA019GlassEntryContainerC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 3);
    v5 = *(a1 + 56);
    while (*v4 != &type metadata for GlassEntryContainerView)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        v1 = &v9;
        v5 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v5 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v5;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAQG_Tt0B5(__int128 *a1)
{

  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(a1, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(__int128 *a1, uint64_t (*a2)(void))
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2(0);
  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = a1[2];
    v6 = *(a1 + 6);
    v7 = *(a1 + 3);
    v8 = *(a1 + 56);
    while (*v7 != v3)
    {
      v7 = v7[3];
      if (!v7)
      {
        v4 = &v11;
        v8 &= 1u;
        break;
      }
    }
  }

  else
  {
    v6 = 0;
    v4 = &v11;
    v5 = 0uLL;
    v8 = 1;
  }

  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  *v17 = *(a1 + 57);
  *&v17[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v10);
  outlined destroy of _ViewListCountInputs(&v11);
  return 0;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA022_GlassContainerStorageC0V_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for _GlassContainerStorageView)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA9RectangleVAAE17AsymmetricalInsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Rectangle.AsymmetricalInset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA14LinearGradientV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for LinearGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA14RadialGradientV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for RadialGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA15AngularGradientV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for AngularGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA16RoundedRectangleV6_InsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for RoundedRectangle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA16RoundedRectangleV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for RoundedRectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA18EllipticalGradientV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for EllipticalGradient)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA19ConcentricRectangleV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for ConcentricRectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA20_IntelligenceSupportO13AnimatingTextV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for _IntelligenceSupport.AnimatingText)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA20_IntelligenceSupportO22AnimatingSummarySymbolV_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for _IntelligenceSupport.AnimatingSummarySymbol)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for _IntelligenceSupport.AnimatingSummarySymbol;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        outlined init with copy of _ViewListCountInputs(&v24, &v9);
        v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(&v24);
        outlined destroy of _ViewListCountInputs(&v24);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for _IntelligenceSupport.AnimatingSummarySymbol;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(&v24);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22ContainerRelativeShapeV6_InsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for ContainerRelativeShape._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22ContainerRelativeShapeV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for ContainerRelativeShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22ImplicitContainerShapeV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for ImplicitContainerShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22UnevenRoundedRectangleV6_InsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for UnevenRoundedRectangle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA22UnevenRoundedRectangleV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for UnevenRoundedRectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA23DefaultGlassEffectShapeV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for DefaultGlassEffectShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA29PartialContainerRelativeShapeV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for PartialContainerRelativeShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA4PathV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Path)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA6CircleV6_InsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Circle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA6CircleV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Circle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA03AnyC0V_Tt0B5(__int128 *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for AnyView)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v8;
        v4 &= 1u;
        break;
      }
    }
  }

  else
  {
    v3 = 0;
    v1 = &v8;
    v2 = 0uLL;
    v4 = 1;
  }

  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  *v14 = *(a1 + 57);
  *&v14[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v7);
  outlined destroy of _ViewListCountInputs(&v8);
  return 0;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7CapsuleV6_InsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Capsule._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7CapsuleV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Capsule)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7EllipseV6_InsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Ellipse._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7EllipseV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Ellipse)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA8AnyShapeV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for AnyShape)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA8_TestAppV04RootC0V_Tt0B5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = *a1;
  v1 = *(a1 + 24);
  v23 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21[0] = *(a1 + 57);
  *(v21 + 15) = *(a1 + 72);
  if (v1)
  {
    v6 = v1;
    while (*v6 != &type metadata for _TestApp.RootView)
    {
      v6 = v6[3];
      if (!v6)
      {
        v17 = &type metadata for _TestApp.RootView;
        v18 = 0;
        v19 = 256;
        v20 = v1;
        v1 = &v17;
        v5 &= 1u;
        v24 = *a1;
        v25 = *(a1 + 16);
        v26 = &v17;
        v27 = v2;
        v28 = v3;
        v29 = v4;
        v30 = v5;
        *v31 = *(a1 + 57);
        *&v31[15] = *(a1 + 72);
        outlined init with copy of _ViewListCountInputs(a1, &v9);
        outlined init with copy of _ViewListCountInputs(&v24, &v9);
        v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA03AnyC0V_Tt0B5(&v24);
        outlined destroy of _ViewListCountInputs(&v24);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(a1, &v24);
    v7 = 0;
  }

  else
  {
    v17 = &type metadata for _TestApp.RootView;
    v18 = 0;
    v19 = 256;
    v20 = 0;
    v1 = &v17;
    v24 = *a1;
    v25 = *(a1 + 16);
    v26 = &v17;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v5 = 1;
    v30 = 1;
    *&v31[15] = *(a1 + 72);
    *v31 = *(a1 + 57);
    outlined init with copy of _ViewListCountInputs(a1, &v9);
    outlined init with copy of _ViewListCountInputs(&v24, &v9);
    v7 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA03AnyC0V_Tt0B5(&v24);
    outlined destroy of _ViewListCountInputs(&v24);
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

LABEL_8:
  v9 = v22;
  v10 = v23;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  *v16 = v21[0];
  *&v16[15] = *(v21 + 15);
  outlined destroy of _ViewListCountInputs(&v9);
  return v7;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA9RectangleV6_InsetV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Rectangle._Inset)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

uint64_t _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA9RectangleV_Tt0B5(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = a1[2];
    v3 = *(a1 + 6);
    v4 = *(a1 + 56);
    v5 = *(a1 + 3);
    while (*v5 != &type metadata for Rectangle)
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        v1 = &v9;
        v4 &= 1u;
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

  else
  {
    v3 = 0;
    v1 = &v9;
    v2 = 0uLL;
    v4 = 1;
LABEL_7:
    v6 = 1;
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  *v15 = *(a1 + 57);
  *&v15[15] = *(a1 + 9);
  outlined init with copy of _ViewListCountInputs(a1, &v8);
  outlined destroy of _ViewListCountInputs(&v9);
  return v6;
}

__n128 _ViewList_Backing.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void static _VariadicView_Children._makeViewList(view:inputs:)(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0);
  lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v5, a2, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v5, a2, a3);
  }
}

uint64_t static _VariadicView_Children._viewListCount(inputs:)(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(v4, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
}

double protocol witness for static Rule.initialValue.getter in conformance _VariadicView_Children.Child@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance _VariadicView_Children.Child@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of _VariadicView_Children(Value, v4);
  return _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCAA09_VariadicG9_ChildrenV_s11AnyHashableVAmDVTt2g5(v4, closure #1 in _VariadicView_Children.Child.value.getter, 0, a1);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance _VariadicView_Children(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA7ForEachVyAA09_VariadicC9_ChildrenVs11AnyHashableVAL7ElementVG_Tt0B5Tm(v4, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
}

double _VariadicView_Children.Element.traits.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

void _VariadicView_Children.Element.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 96) = v2;
}

double _VariadicView_Children.Element.id<A>(as:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(*(v3 + 64) + 16))
  {
  }

  else
  {
    v7 = 0;
  }

  v10[5] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = a1;
  v10[3] = a2;
  type metadata accessor for AnyHashable2?(0, &lazy cache variable for type metadata for AnyHashable2?, &type metadata for AnyHashable2, MEMORY[0x1E69E6720]);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _VariadicView_Children.Element.id<A>(as:), v10, MEMORY[0x1E69E73E0], a1, v8, a3);

  return result;
}

uint64_t _VariadicView_Children.Element.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _VariadicView_Children.Element.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*_VariadicView_Children.Element.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ViewTraitCollection.subscript.getter(a3, a4, v15);
  return _VariadicView_Children.Element.subscript.modify;
}

void _VariadicView_Children.Element.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized _VariadicView_Children.Element.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized _VariadicView_Children.Element.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double _ViewList_View.init(elements:id:index:count:contentSubgraph:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a2 + 8);
  outlined init with copy of _ViewList_SubgraphElements(a1, a6);

  v13 = _ViewList_SublistSubgraphStorage.retain()();
  outlined destroy of _ViewList_SubgraphElements(a1);

  a6[6] = v13;
  result = *a2;
  a6[7] = *a2;
  a6[8] = v12;
  a6[9] = a3;
  a6[10] = a4;
  a6[11] = a5;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _VariadicView_Children@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v5 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v5);
  if (v4 < 0 || v4 >= v8)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _VariadicView_Children(uint64_t *a1)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = a1;
  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v4 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = ViewList.count.getter(v5, v6);
  static Update.end()();
  result = _MovableLockUnlock(v4);
  if (v3 < 0 || v3 >= v7)
  {
    __break(1u);
  }

  else
  {
    *v1 = v3;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance _VariadicView_Children@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v3 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = ViewList.count.getter(v4, v5);
  static Update.end()();
  result = _MovableLockUnlock(v3);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v6;
  }

  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _VariadicView_Children@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = ViewList.count.getter(v7, v8);
  static Update.end()();
  result = _MovableLockUnlock(v6);
  if (v5 < 0 || v9 < v5)
  {
    __break(1u);
  }

  else
  {
    *a3 = v5;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance _VariadicView_Children@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v5 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v5);
  if (v4 < 0 || v4 >= v8)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance _VariadicView_Children@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance _VariadicView_Children()
{
  v1 = v0;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v3 = v0[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = ViewList.count.getter(v3, v4);
  static Update.end()();
  _MovableLockUnlock(v2);
  _MovableLockLock(v2);
  specialized static Update.begin()();
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v2);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v2);
    specialized static Update.begin()();
    v10 = v1[3];
    v11 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v10);
    v12 = ViewList.count.getter(v10, v11);
    static Update.end()();
    result = _MovableLockUnlock(v2);
    if ((v5 & 0x8000000000000000) == 0 && v12 >= v5)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance _VariadicView_Children()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of _VariadicView_Children(v0);
  return v1;
}

uint64_t _ViewList_Backing.viewCount.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return ViewList.count.getter(v2, v3);
}

void specialized closure #1 in closure #1 in _ViewList_Backing.visitViews<A>(applying:from:)(uint64_t *a1, uint64_t a2, char **a3)
{
  v54 = a3;
  v4 = *a1;
  v3 = a1[1];
  v55 = a1;
  if (v4 >= v3)
  {
    return;
  }

  v5 = *(v55 + 5);
  v53 = *(v55 + 4);
  v6 = v55[3];
  v7 = *(a2 + 40);
  v9 = v3 == 1 && v5 < 0;
  HIDWORD(v48) = v9;
  v51 = v3;
  v52 = v5;
  v50 = v6;
  v49 = v7;
  while (1)
  {
    if (v4 >= v3)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    outlined init with copy of _ViewList_SubgraphElements((v55 + 4), v58);
    outlined init with copy of _ViewList_SubgraphElements(v58, v61);
    v10 = v60;
    if (v60 >> 62)
    {
      break;
    }

    v11 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_46:

    v30 = v7;
LABEL_47:
    outlined destroy of _ViewList_SubgraphElements(v58);
    v29 = 0;
LABEL_48:
    v61[6] = v29;
    v62 = v53;
    v63 = v5;
    v64 = v6;
    v65 = v4;
    v66 = v3;
    v67 = v7;
    v31 = *(v6 + 16);

    if (v31)
    {
      v32 = *(v6 + 32);
      v33 = *(v6 + 52);

      if (v33)
      {
        v35 = -1;
      }

      else
      {
        v35 = v5;
      }

      if (v3 == 1 && v35 < 0)
      {
        if (!v32)
        {
          goto LABEL_76;
        }

        (*(*v32 + 104))(v57, v34);
        v36 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
        v37 = MEMORY[0x1EEE9AC00](v36);
        (*(v39 + 16))(&v48 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v37);

        AnyHashable.init<A>(_:)();
        __swift_destroy_boxed_opaque_existential_1(v57);

        goto LABEL_61;
      }
    }

    else
    {

      if ((v48 & 0x100000000) != 0)
      {
        goto LABEL_76;
      }

      v32 = 0;
      v35 = v5;
    }

    if (v4 < 0xFFFFFFFF80000000)
    {
      goto LABEL_71;
    }

    if (v4 > 0x7FFFFFFF)
    {
      goto LABEL_72;
    }

    v57[0] = __PAIR64__(v35, v4);
    v57[1] = v32;
    lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();

    AnyHashable.init<A>(_:)();

LABEL_61:
    v40 = v54;
    v41 = *v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v40 = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
      *v54 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
      *v54 = v41;
    }

    ++v4;
    *(v41 + 2) = v44 + 1;
    v45 = &v41[40 * v44];
    v46 = v58[0];
    v47 = v58[1];
    *(v45 + 8) = v59;
    *(v45 + 2) = v46;
    *(v45 + 3) = v47;
    outlined destroy of _ViewList_View(v61);
    if (v4 == v3)
    {
      return;
    }
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_46;
  }

  v11 = __CocoaSet.count.getter();
LABEL_12:

  v12 = v7;
  if (!v11)
  {
    goto LABEL_47;
  }

  v56 = v10 >> 62;
  v13 = v11;
  while (1)
  {
    v14 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if ((v10 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v15 = *(v10 + 32 + 8 * v14);

      v16 = *(v15 + 24);
      if (!v16)
      {
        break;
      }

      goto LABEL_19;
    }

    v15 = MEMORY[0x193AC03C0](v13 - 1, v10);
    v16 = *(v15 + 24);
    if (!v16)
    {
      break;
    }

LABEL_19:
    if (!AGSubgraphIsValid())
    {
      break;
    }

    *(v15 + 24) = v16 + 1;

    --v13;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v3 = v51;
  v5 = v52;
  v6 = v50;
  v7 = v49;
  v17 = v56;
  if (v13 >= v11)
  {
    goto LABEL_47;
  }

  if (v56)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 < v13)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v13 < 0)
  {
    goto LABEL_74;
  }

  if (v17)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 >= v11)
  {
    v20 = v17;
    if ((v10 & 0xC000000000000001) == 0 || v13 == v11)
    {

      if (!v17)
      {
        goto LABEL_39;
      }
    }

    else
    {
      type metadata accessor for _ViewList_Subgraph();

      v21 = v13;
      do
      {
        v22 = v21 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v21);
        v21 = v22;
      }

      while (v11 != v22);
      if (!v20)
      {
LABEL_39:
        v23 = v10 & 0xFFFFFFFFFFFFFF8;
        v24 = v23 + 32;
        v25 = (2 * v11) | 1;
LABEL_42:
        outlined destroy of _ViewList_SubgraphElements(v58);
        type metadata accessor for _ViewList_SubgraphRelease();
        v29 = swift_allocObject();
        v29[2] = v23;
        v29[3] = v24;
        v29[4] = v13;
        v29[5] = v25;
        v5 = v52;
        goto LABEL_48;
      }
    }

    v23 = _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v13 = v27;
    v25 = v28;
    goto LABEL_42;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t _ViewList_Backing.ids.getter()
{
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_boxed_opaque_existential_1(v0, v2);
  MEMORY[0x1EEE9AC00](v4);
  v6[2] = v0;
  v6[3] = &v9;
  v7 = 1;
  ViewList.applySublists(from:list:to:)(&v8, 0x100000000uLL, partial apply for specialized closure #1 in closure #1 in _ViewList_Backing.visitViews<A>(applying:from:), v6, v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v9;
}

double _ViewList_View.id.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;

  return result;
}

double _ViewList_View.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 64) = v3;
  return result;
}

void _ViewList_View.elementID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *(a1 + 4) = *(v1 + 60);
  *(a1 + 8) = v2;
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    *a1 = v3;

    return;
  }

  __break(1u);
}

Swift::Int _ViewList_View.reuseIdentifier.getter()
{
  v1 = *(v0 + 72);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    return _ViewList_ID.reuseIdentifier.getter();
  }

  __break(1u);
  return result;
}

void _ViewList_View.subviewID.getter(uint64_t a1@<X8>)
{
  *(a1 + 4) = *(v1 + 60);
  v2 = *(v1 + 72);
  *(a1 + 8) = *(v1 + 64);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a1 = v2;

    return;
  }

  __break(1u);
}

uint64_t PlaceholderInfo.reuseItem(info:placeholder:)(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 184);
  if (v3)
  {
    v4 = v2;
    if (*(v2 + 168))
    {
      outlined init with copy of AnyTrackedValue(v2 + 144, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = a1[3];
      v16[3] = &type metadata for _ViewList_SubgraphElements;
      v16[4] = &protocol witness table for _ViewList_SubgraphElements;
      v16[0] = swift_allocObject();
      outlined init with copy of _ViewList_SubgraphElements(a2, v16[0] + 16);
      v10 = a2[9];
      v11 = *(v8 + 24);

      LOBYTE(v9) = v11(v9, v16, v10, v3, 0, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      if (v9)
      {
        if (*(v4 + 212))
        {
          __break(1u);
        }

        else
        {
          AGGraphMutateAttribute();
          v17[0] = a2[5];

          v13 = _ViewList_SublistSubgraphStorage.retain()();

          *(v4 + 136) = v13;
          v14 = a2[8];

          v15 = a2[7];

          result = 1;
          *a1 = v15;
          a1[1] = v14;
          a1[3] = v10;
        }

        return result;
      }
    }
  }

  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    v16[0] = &type metadata for _ViewList_View;
    AGGraphAddTraceEvent();
  }

  return 0;
}

void PlaceholderInfo.eraseItem()()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v1 + 108);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *MEMORY[0x1E698D3F8];
    v6 = v2 + 48;

    do
    {
      v6 += 24;
      AGGraphSetIndirectAttribute();
      --v4;
    }

    while (v4);
    if (v3 != v5)
    {
      goto LABEL_5;
    }
  }

  else
  {

    if (v3 != *MEMORY[0x1E698D3F8])
    {
LABEL_5:
      AGGraphSetIndirectAttribute();
    }
  }

  v7 = *(v1 + 120);
  if (v7)
  {
    v8 = v7;
    AGSubgraphRef.willInvalidate(isInserted:)(1);
    AGSubgraphInvalidate();

    *(v1 + 120) = 0;
  }

  v9 = *(v1 + 192);
  if (v9)
  {
    AGSubgraphRemoveObserver();

    *(v1 + 192) = 0;
    *(v1 + 200) = 0;
  }

  *(v1 + 128) = 0;

  *(v1 + 136) = 0;
  outlined destroy of _ViewList_Elements?(v1 + 144);
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;

  *(v1 + 184) = 0;
  *(v1 + 208) = 0;
  *(v1 + 212) = 1;
}

void closure #2 in PlaceholderInfo.makeItem(placeholder:seed:)(uint64_t a1)
{
  if (AGSubgraphIsValid())
  {
    AGGraphGetAttributeInfo();
    v2 = *(v1 + 192);
    *(v1 + 192) = 0;
    *(v1 + 200) = 0;

    PlaceholderInfo.eraseItem()();
  }
}

void protocol witness for ObservedAttribute.destroy() in conformance PlaceholderInfo()
{
  v1 = v0[24];
  if (v1)
  {
    AGSubgraphRemoveObserver();

    v0[24] = 0;
    v0[25] = 0;
  }

  v0[16] = 0;

  v0[17] = 0;
}

_DWORD *PlaceholderViewPhase.value.getter@<X0>(int a2@<W1>, unsigned int *a3@<X8>)
{
  v5 = *AGGraphGetValue();
  result = AGGraphGetValue();
  *a3 = ((v5 & 0xFFFFFFFE) + 2 * a2 + *result) & 0xFFFFFFFE | (*result | v5) & 1;
  return result;
}

void _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO5EntryVG_AS8StableIDVAA15ModifiedContentVyAXyAA6ZStackVyAA0npoE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0N12EffectLayoutA0_LLV3KeyVGGGA4_yAA18TransitionTraitKeyVGGTt2B5(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v9);
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v9, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
  v9 = a1;
  v10 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init();

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v6[40] = v7;
  *(v6 + 164) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*a2);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_5:
    specialized static GraphHost.currentHost.getter();
    swift_beginAccess();

    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor();

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v8;
  *(v6 + 172) = 0;

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
}

void _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO4ItemVG_AS2IDVAA0npE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVTt2B5(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v9);
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v9, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.LazyEdits, type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
  v9 = a1;
  v10 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info.Init, type metadata accessor for ForEachState.Info.Init, protocol conformance descriptor for ForEachState<A, B, C>.Info.Init);

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v6[40] = v7;
  *(v6 + 164) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*a2);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_5:
    specialized static GraphHost.currentHost.getter();
    swift_beginAccess();

    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Evictor and conformance ForEachState<A, B, C>.Evictor, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Evictor, type metadata accessor for ForEachState.Evictor, protocol conformance descriptor for ForEachState<A, B, C>.Evictor);

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(0, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init, type metadata accessor for ForEachList.Init, protocol conformance descriptor for ForEachList<A, B, C>.Init);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v8;
  *(v6 + 172) = 0;

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
}

void _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSnySiG_SiAA15ModifiedContentVyARyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_L19TransactionModifierVySdGGAA13_OffsetEffectVGTt2B5(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v8);
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v8);
  v8 = a1;
  v9 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info.Init(0);
  lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info.Init, protocol conformance descriptor for ForEachState<A, B, C>.Info.Init);
  v6[40] = Attribute.init<A>(body:value:flags:update:)();
  *(v6 + 164) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*a2);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_5:
    specialized static GraphHost.currentHost.getter();
    swift_beginAccess();

    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Evictor(0);
    lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Evictor and conformance ForEachState<A, B, C>.Evictor, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Evictor, protocol conformance descriptor for ForEachState<A, B, C>.Evictor);
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  type metadata accessor for ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init(0);
  lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init, type metadata accessor for ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init, protocol conformance descriptor for ForEachList<A, B, C>.Init);
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v7;
  *(v6 + 172) = 0;

  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
}

id specialized ForEachState.init(inputs:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2)))
{
  *(v3 + 160) = 0;
  *(v3 + 164) = 1;
  *(v3 + 168) = 0;
  *(v3 + 172) = 1;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 256;
  *(v3 + 248) = MEMORY[0x1E69E7CC0];
  *(v3 + 256) = 2;
  v5 = MEMORY[0x1E69E7CC8];
  *(v3 + 264) = MEMORY[0x1E69E7CC8];
  v6 = (v3 + *(*v3 + 208));
  v7 = MEMORY[0x1E69E7CD0];
  *v6 = MEMORY[0x1E69E7CD0];
  v6[1] = v7;
  a3(0, a2, type metadata accessor for ForEachState.LazyEdits);
  swift_storeEnumTagMultiPayload();
  *(v3 + *(*v3 + 216)) = 0;
  *(v3 + *(*v3 + 224)) = -1;
  *(v3 + *(*v3 + 232)) = 0;
  *(v3 + *(*v3 + 240)) = 0;
  *(v3 + *(*v3 + 248)) = 0;
  *(v3 + *(*v3 + 256)) = 0;
  *(v3 + *(*v3 + 264)) = 0;
  *(v3 + *(*v3 + 272)) = v7;
  *(v3 + *(*v3 + 280)) = v5;
  outlined init with copy of _ViewListInputs(a1, v3 + 16);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v9 = result;
    outlined destroy of _ViewListInputs(a1);
    *(v3 + 152) = v9;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(v4, protocol witness for static View._viewListCount(inputs:) in conformance Text, 0);
}

uint64_t specialized _VariadicView_Children.Element.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return ViewTraitCollection.subscript.setter(v11, a2, a3, a4);
}

void lazy protocol witness table accessor for type Slice<_VariadicView_Children> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for Slice<_VariadicView_Children>(255, &lazy cache variable for type metadata for Slice<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, &type metadata for _VariadicView_Children, MEMORY[0x1E69E74D0]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Slice<_VariadicView_Children> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for Slice<_VariadicView_Children>(255, a2, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, &type metadata for _VariadicView_Children, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t assignWithTake for _VariadicView_Children.Element(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for PlaceholderInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  v7 = *(a1 + 120);
  v8 = *(a2 + 120);
  *(a1 + 120) = v8;
  v9 = v8;

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  v11 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    if (v11)
    {
      *(a1 + 168) = v11;
      *(a1 + 176) = *(a2 + 176);
      (**(v11 - 8))(a1 + 144, a2 + 144);
      goto LABEL_8;
    }

LABEL_7:
    v13 = *(a2 + 144);
    v14 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 144) = v13;
    *(a1 + 160) = v14;
    goto LABEL_8;
  }

  v12 = (a1 + 144);
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v12, (a2 + 144), v10);
LABEL_8:
  *(a1 + 184) = *(a2 + 184);

  v15 = *(a2 + 192);
  v16 = *(a1 + 192);
  *(a1 + 192) = v15;
  v17 = v15;

  *(a1 + 200) = *(a2 + 200);
  v18 = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 208) = v18;
  return a1;
}

__n128 __swift_memcpy213_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 205) = *(a2 + 205);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for PlaceholderInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v4 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  v5 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  if (*(a1 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 144));
  }

  v6 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v6;
  v7 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v7;

  v8 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlaceholderInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 213))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceholderInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 212) = 0;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 213) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 213) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlaceholderInfo.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for PlaceholderInfo.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t outlined assign with take of _ViewList_Elements?(uint64_t a1, uint64_t a2)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ViewList_Elements?, &lazy cache variable for type metadata for _ViewList_Elements, &protocol descriptor for _ViewList_Elements, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI15ModifiedContentVyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVGACyxq_GAA4ViewA2aORzAA0sP0R_rlWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Init and conformance ForEachList<A, B, C>.Init(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E6530];
    _sSnySiGMaTm_4(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v8 = v7;
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>(255);
    v10 = v9;
    _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_6(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E66E8]);
    v12 = v11;
    _s7SwiftUI15ModifiedContentVyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVGACyxq_GAA4ViewA2aORzAA0sP0R_rlWlTm_1(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>, lazy protocol witness table accessor for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>> and conformance <> ModifiedContent<A, B>, &protocol witness table for _OffsetEffect);
    v16[0] = v8;
    v16[1] = v6;
    v16[2] = v10;
    v16[3] = v12;
    v16[4] = MEMORY[0x1E69E6540];
    v16[5] = v13;
    v14 = a3(a1, v16);
    if (!v15)
    {
      atomic_store(v14, a2);
    }
  }
}

void lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void _sSay7SwiftUI14GlassContainerO4ItemVGSayxGSksWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!*a1)
  {
    type metadata accessor for AnyHashable2?(255, a2, a3, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6338], v4);
    atomic_store(v5, a1);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, &protocol witness table for ZStack<A>, &protocol witness table for _TraitWritingModifier<A>);
    v6[0] = v4;
    v6[1] = &protocol witness table for _TraitWritingModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9[0] = a3;
    v9[1] = a4;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init()
{
  if (!lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(255, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init, type metadata accessor for ForEachState.Info.Init);
    swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.Info.Init, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info.Init and conformance ForEachState<A, B, C>.Info.Init);
  }
}

void lazy protocol witness table accessor for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor()
{
  if (!lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(255, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor, type metadata accessor for ForEachState.Evictor);
    swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.Evictor, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Evictor and conformance ForEachState<A, B, C>.Evictor);
  }
}

void lazy protocol witness table accessor for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init()
{
  if (!lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(255, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init, type metadata accessor for ForEachList.Init);
    swift_getWitnessTable(protocol conformance descriptor for ForEachList<A, B, C>.Init, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Init and conformance ForEachList<A, B, C>.Init);
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for AnyHashable2?(255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    v7 = v6;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v9 = v8;
    _sSay7SwiftUI14GlassContainerO4ItemVGSayxGSksWlTm_0(&lazy protocol witness table cache variable for type [GlassContainer.Entry] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry);
    v11 = v10;
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v13 = v12;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v17[0] = v7;
    v17[1] = &type metadata for GlassContainer.Entry.StableID;
    v17[2] = v9;
    v17[3] = v11;
    v17[4] = v13;
    v17[5] = v14;
    v15 = a3(a1, v17);
    if (!v16)
    {
      atomic_store(v15, a2);
    }
  }
}

void lazy protocol witness table accessor for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Init and conformance ForEachList<A, B, C>.Init(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for AnyHashable2?(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    v7 = v6;
    _sSay7SwiftUI14GlassContainerO4ItemVGSayxGSksWlTm_0(&lazy protocol witness table cache variable for type [GlassContainer.Item] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item);
    v9 = v8;
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v11 = v10;
    lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView();
    v15[0] = v7;
    v15[1] = &type metadata for GlassContainer.Item.ID;
    v15[2] = &type metadata for GlassItemView;
    v15[3] = v9;
    v15[4] = v11;
    v15[5] = v12;
    v13 = a3(a1, v15);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

unint64_t specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(void *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v24 = a1;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v25 = v4;
    v26 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v24 = v4;
        return v8;
      }

      v14 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v14 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = v4[2];
          if (v8 >= v15)
          {
            goto LABEL_27;
          }

          if (v10 >= v15)
          {
            goto LABEL_28;
          }

          v16 = &v26[7 * v8];
          v17 = v4;
          v4 = v16[2];
          v18 = *(v16 + 24);
          v28 = *(v16 + 2);
          v29 = *v16;
          v27 = v16[6];
          v5 = &v26[7 * v10];
          v19 = v5[1];
          v20 = v5[2];
          v21 = *(v5 + 24);
          v22 = v5[6];
          *v16 = *v5;
          v16[1] = v19;
          v16[2] = v20;
          *(v16 + 24) = v21;
          *(v16 + 2) = *(v5 + 2);
          v16[6] = v22;
          v30 = v17[2];

          if (v10 >= v30)
          {
            goto LABEL_29;
          }

          *v5 = v29;
          v5[2] = v4;
          *(v5 + 24) = v18;
          *(v5 + 2) = v28;
          v5[6] = v27;
          v5 = 0;

          v4 = v25;
        }

        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v24 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v23 = a1;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v27 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v23 = v4;
        return v8;
      }

      v14 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v14 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = v4[2];
          if (v8 >= v15)
          {
            goto LABEL_27;
          }

          if (v10 >= v15)
          {
            goto LABEL_28;
          }

          v16 = &v27[7 * v8];
          v25 = *(v16 + 1);
          v26 = *v16;
          v24 = *(v16 + 2);
          v17 = v16[6];
          v5 = &v27[7 * v10];
          v18 = v5[1];
          v19 = v5[6];
          *v16 = *v5;
          v16[1] = v18;
          v20 = *(v5 + 2);
          *(v16 + 1) = *(v5 + 1);
          *(v16 + 2) = v20;
          v16[6] = v19;
          v21 = v4[2];

          if (v10 >= v21)
          {
            goto LABEL_29;
          }

          *v5 = v26;
          *(v5 + 1) = v25;
          *(v5 + 2) = v24;
          v5[6] = v17;
          v5 = 0;
        }

        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v23 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v24 = a1;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v25 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v24 = v4;
        return v8;
      }

      v14 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v14 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = v4[2];
          if (v8 >= v15)
          {
            goto LABEL_27;
          }

          if (v10 >= v15)
          {
            goto LABEL_28;
          }

          v16 = &v25[6 * v8];
          v17 = v16[2];
          v26 = *(v16 + 3);
          v27 = *v16;
          v18 = v16[5];
          v5 = &v25[6 * v10];
          v19 = v5[1];
          v20 = v5[2];
          v21 = v5[5];
          *v16 = *v5;
          v16[1] = v19;
          v16[2] = v20;
          *(v16 + 3) = *(v5 + 3);
          v16[5] = v21;
          v22 = v4[2];

          if (v10 >= v22)
          {
            goto LABEL_29;
          }

          *v5 = v27;
          v5[2] = v17;
          *(v5 + 3) = v26;
          v5[5] = v18;
          v5 = 0;
        }

        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v24 = v4;
    return v8;
  }

  return v4[2];
}

{
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (v6)
  {
    v9 = 0;
    while (1)
    {
      v10 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2, a3);
      if (v3)
      {
        return v9;
      }

      if (v10)
      {
        break;
      }

      if (v6 == ++v9)
      {
        return v5[2];
      }
    }

    v19 = a1;
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v4 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
LABEL_9:
    v13 = v4;
    v4 = v5 + 4;
    while (1)
    {
      if (v11 == v5[2])
      {
        *v19 = v5;
        return v9;
      }

      v15 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v11, a2, v12);
      if (v13)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (v9 != v11)
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v16 = v5[2];
          if (v9 >= v16)
          {
            goto LABEL_27;
          }

          outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v4[10 * v9], v18, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
          if (v11 >= v16)
          {
            goto LABEL_28;
          }

          outlined assign with copy of AnimatorState<_AnyAnimatableData>.Fork(&v4[10 * v11], &v4[10 * v9]);
          if (v11 >= v5[2])
          {
            goto LABEL_29;
          }

          outlined assign with take of AnimatorState<_AnyAnimatableData>.Fork(v18, &v4[10 * v11]);
        }

        v14 = __OFADD__(v9++, 1);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v19 = v5;
    return v9;
  }

  return v5[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      v51 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v13 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v51 = v4;
        return v8;
      }

      v15 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v16 = v4[2];
          if (v8 >= v16)
          {
            goto LABEL_27;
          }

          v5 = &v13[9 * v8];
          v37 = *v5;
          v17 = *(v5 + 1);
          v18 = *(v5 + 2);
          v19 = *(v5 + 3);
          v41 = v5[8];
          v39 = v18;
          v40 = v19;
          v38 = v17;
          if (v10 >= v16)
          {
            goto LABEL_28;
          }

          v20 = &v13[9 * v10];
          v42 = *v20;
          v21 = *(v20 + 1);
          v22 = *(v20 + 2);
          v23 = *(v20 + 3);
          v46 = v20[8];
          v44 = v22;
          v45 = v23;
          v43 = v21;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v49, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v49, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          v47[0] = *v5;
          v24 = *(v5 + 1);
          v25 = *(v5 + 2);
          v26 = *(v5 + 3);
          v48 = v5[8];
          v47[2] = v25;
          v47[3] = v26;
          v47[1] = v24;
          v28 = v44;
          v27 = v45;
          v29 = v43;
          v5[8] = v46;
          *(v5 + 2) = v28;
          *(v5 + 3) = v27;
          *(v5 + 1) = v29;
          *v5 = v42;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v47, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          if (v10 >= v4[2])
          {
            goto LABEL_29;
          }

          v49[0] = *v20;
          v30 = *(v20 + 1);
          v31 = *(v20 + 2);
          v32 = *(v20 + 3);
          v50 = v20[8];
          v49[2] = v31;
          v49[3] = v32;
          v49[1] = v30;
          v34 = v39;
          v33 = v40;
          v35 = v38;
          v20[8] = v41;
          *(v20 + 2) = v34;
          *(v20 + 3) = v33;
          *(v20 + 1) = v35;
          *v20 = v37;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v49, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
        }

        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v51 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      v47 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v13 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v47 = v4;
        return v8;
      }

      v15 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v16 = v4[2];
          if (v8 >= v16)
          {
            goto LABEL_27;
          }

          v5 = &v13[8 * v8];
          v17 = *v5;
          v18 = v5[1];
          v19 = v5[3];
          v39 = v5[2];
          v40 = v19;
          v37 = v17;
          v38 = v18;
          if (v10 >= v16)
          {
            goto LABEL_28;
          }

          v20 = &v13[8 * v10];
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[3];
          v43 = v20[2];
          v44 = v23;
          v41 = v21;
          v42 = v22;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v46, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v46, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
          v24 = *v5;
          v25 = v5[1];
          v26 = v5[3];
          v45[2] = v5[2];
          v45[3] = v26;
          v45[0] = v24;
          v45[1] = v25;
          v27 = v41;
          v28 = v42;
          v29 = v44;
          v5[2] = v43;
          v5[3] = v29;
          *v5 = v27;
          v5[1] = v28;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v45, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
          if (v10 >= v4[2])
          {
            goto LABEL_29;
          }

          v30 = *v20;
          v31 = v20[1];
          v32 = v20[3];
          v46[2] = v20[2];
          v46[3] = v32;
          v46[0] = v30;
          v46[1] = v31;
          v33 = v37;
          v34 = v38;
          v35 = v40;
          v20[2] = v39;
          v20[3] = v35;
          *v20 = v33;
          v20[1] = v34;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v46, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
        }

        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v47 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      v47 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v13 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v47 = v4;
        return v8;
      }

      v15 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v16 = v4[2];
          if (v8 >= v16)
          {
            goto LABEL_27;
          }

          v5 = &v13[8 * v8];
          v17 = *v5;
          v18 = v5[1];
          v19 = v5[3];
          v39 = v5[2];
          v40 = v19;
          v37 = v17;
          v38 = v18;
          if (v10 >= v16)
          {
            goto LABEL_28;
          }

          v20 = &v13[8 * v10];
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[3];
          v43 = v20[2];
          v44 = v23;
          v41 = v21;
          v42 = v22;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v46, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v46, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
          v24 = *v5;
          v25 = v5[1];
          v26 = v5[3];
          v45[2] = v5[2];
          v45[3] = v26;
          v45[0] = v24;
          v45[1] = v25;
          v27 = v41;
          v28 = v42;
          v29 = v44;
          v5[2] = v43;
          v5[3] = v29;
          *v5 = v27;
          v5[1] = v28;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v45, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
          if (v10 >= v4[2])
          {
            goto LABEL_29;
          }

          v30 = *v20;
          v31 = v20[1];
          v32 = v20[3];
          v46[2] = v20[2];
          v46[3] = v32;
          v46[0] = v30;
          v46[1] = v31;
          v33 = v37;
          v34 = v38;
          v35 = v40;
          v20[2] = v39;
          v20[3] = v35;
          *v20 = v33;
          v20[1] = v34;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v46, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
        }

        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v47 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      v67 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v13 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v67 = v4;
        return v8;
      }

      v15 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v16 = v4[2];
          if (v8 >= v16)
          {
            goto LABEL_27;
          }

          v5 = &v13[13 * v8];
          v17 = *v5;
          v18 = *(v5 + 2);
          v50 = *(v5 + 1);
          v51 = v18;
          v49 = v17;
          v19 = *(v5 + 3);
          v20 = *(v5 + 4);
          v21 = *(v5 + 5);
          v55 = v5[12];
          v53 = v20;
          v54 = v21;
          v52 = v19;
          if (v10 >= v16)
          {
            goto LABEL_28;
          }

          v22 = &v13[13 * v10];
          v23 = *v22;
          v24 = *(v22 + 2);
          v57 = *(v22 + 1);
          v58 = v24;
          v56 = v23;
          v25 = *(v22 + 3);
          v26 = *(v22 + 4);
          v27 = *(v22 + 5);
          v62 = v22[12];
          v60 = v26;
          v61 = v27;
          v59 = v25;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v49, v65, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v56, v65, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
          v28 = *v5;
          v29 = *(v5 + 2);
          v63[1] = *(v5 + 1);
          v63[2] = v29;
          v63[0] = v28;
          v30 = *(v5 + 3);
          v31 = *(v5 + 4);
          v32 = *(v5 + 5);
          v64 = v5[12];
          v63[4] = v31;
          v63[5] = v32;
          v63[3] = v30;
          v34 = v60;
          v33 = v61;
          v35 = v59;
          v5[12] = v62;
          *(v5 + 4) = v34;
          *(v5 + 5) = v33;
          *(v5 + 3) = v35;
          v36 = v56;
          v37 = v58;
          *(v5 + 1) = v57;
          *(v5 + 2) = v37;
          *v5 = v36;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v63, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
          if (v10 >= v4[2])
          {
            goto LABEL_29;
          }

          v38 = *v22;
          v39 = *(v22 + 2);
          v65[1] = *(v22 + 1);
          v65[2] = v39;
          v65[0] = v38;
          v40 = *(v22 + 3);
          v41 = *(v22 + 4);
          v42 = *(v22 + 5);
          v66 = v22[12];
          v65[4] = v41;
          v65[5] = v42;
          v65[3] = v40;
          v44 = v53;
          v43 = v54;
          v45 = v52;
          v22[12] = v55;
          *(v22 + 4) = v44;
          *(v22 + 5) = v43;
          *(v22 + 3) = v45;
          v46 = v49;
          v47 = v51;
          *(v22 + 1) = v50;
          *(v22 + 2) = v47;
          *v22 = v46;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v65, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
        }

        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v67 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      v47 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v13 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v47 = v4;
        return v8;
      }

      v15 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v16 = v4[2];
          if (v8 >= v16)
          {
            goto LABEL_27;
          }

          v5 = &v13[8 * v8];
          v17 = *v5;
          v18 = v5[1];
          v19 = v5[3];
          v39 = v5[2];
          v40 = v19;
          v37 = v17;
          v38 = v18;
          if (v10 >= v16)
          {
            goto LABEL_28;
          }

          v20 = &v13[8 * v10];
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[3];
          v43 = v20[2];
          v44 = v23;
          v41 = v21;
          v42 = v22;
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v37, v46, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v46, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          v24 = *v5;
          v25 = v5[1];
          v26 = v5[3];
          v45[2] = v5[2];
          v45[3] = v26;
          v45[0] = v24;
          v45[1] = v25;
          v27 = v41;
          v28 = v42;
          v29 = v44;
          v5[2] = v43;
          v5[3] = v29;
          *v5 = v27;
          v5[1] = v28;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v45, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
          if (v10 >= v4[2])
          {
            goto LABEL_29;
          }

          v30 = *v20;
          v31 = v20[1];
          v32 = v20[3];
          v46[2] = v20[2];
          v46[3] = v32;
          v46[0] = v30;
          v46[1] = v31;
          v33 = v37;
          v34 = v38;
          v35 = v40;
          v20[2] = v39;
          v20[3] = v35;
          *v20 = v33;
          v20[1] = v34;
          _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v46, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
        }

        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v47 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      v38 = a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v13 = v4 + 4;
    v5 = &type metadata for Color.ResolvedHDR._Animatable;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v38 = v4;
        return v8;
      }

      v15 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v16 = v4[2];
          if (v8 >= v16)
          {
            goto LABEL_27;
          }

          v17 = &v13[8 * v8];
          v18 = *v17;
          v19 = v17[1];
          v20 = v17[3];
          v41 = v17[2];
          v42 = v20;
          v39 = v18;
          v40 = v19;
          if (v10 >= v16)
          {
            goto LABEL_28;
          }

          v49 = 0;
          v21 = &v13[8 * v10];
          v22 = *v21;
          v23 = v21[1];
          v24 = v21[3];
          v45 = v21[2];
          v46 = v24;
          v43 = v22;
          v44 = v23;
          outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v39, v48, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
          outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v43, v48, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
          v25 = *v17;
          v26 = v17[1];
          v27 = v17[3];
          v47[2] = v17[2];
          v47[3] = v27;
          v47[0] = v25;
          v47[1] = v26;
          v28 = v43;
          v29 = v44;
          v30 = v46;
          v17[2] = v45;
          v17[3] = v30;
          *v17 = v28;
          v17[1] = v29;
          outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v47, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
          if (v10 >= v4[2])
          {
            goto LABEL_29;
          }

          v31 = *v21;
          v32 = v21[1];
          v33 = v21[3];
          v48[2] = v21[2];
          v48[3] = v33;
          v48[0] = v31;
          v48[1] = v32;
          v34 = v39;
          v35 = v40;
          v36 = v42;
          v21[2] = v41;
          v21[3] = v36;
          *v21 = v34;
          v21[1] = v35;
          outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v48, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
          v12 = v49;
          v13 = v4 + 4;
        }

        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v38 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v24 = a1;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v25 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v24 = v4;
        return v8;
      }

      v14 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v14 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = v4[2];
          if (v8 >= v15)
          {
            goto LABEL_27;
          }

          if (v10 >= v15)
          {
            goto LABEL_28;
          }

          v16 = &v25[6 * v8];
          v17 = v16[2];
          v26 = *(v16 + 3);
          v27 = *v16;
          v18 = v16[5];
          v5 = &v25[6 * v10];
          v19 = v5[1];
          v20 = v5[2];
          v21 = v5[5];
          *v16 = *v5;
          v16[1] = v19;
          v16[2] = v20;
          *(v16 + 3) = *(v5 + 3);
          v16[5] = v21;
          v22 = v4[2];

          if (v10 >= v22)
          {
            goto LABEL_29;
          }

          *v5 = v27;
          v5[2] = v17;
          *(v5 + 3) = v26;
          v5[5] = v18;
          v5 = 0;
        }

        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v24 = v4;
    return v8;
  }

  return v4[2];
}

{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v8, a2, a3);
      if (v3)
      {
        return v8;
      }

      if (v9)
      {
        break;
      }

      if (v5 == ++v8)
      {
        return v4[2];
      }
    }

    v23 = a1;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v5 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_9:
    v12 = v5;
    v24 = v4;
    v25 = v4 + 4;
    while (1)
    {
      if (v10 == v4[2])
      {
        *v23 = v4;
        return v8;
      }

      v14 = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v10, a2, v11);
      if (v12)
      {
        break;
      }

      if ((v14 & 1) == 0)
      {
        if (v8 != v10)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = v4[2];
          if (v8 >= v15)
          {
            goto LABEL_27;
          }

          if (v10 >= v15)
          {
            goto LABEL_28;
          }

          v16 = &v25[6 * v8];
          v17 = v4;
          v4 = v16[2];
          v26 = *(v16 + 3);
          v27 = *v16;
          v18 = v16[5];
          v5 = &v25[6 * v10];
          v19 = v5[1];
          v20 = v5[2];
          v21 = v5[5];
          *v16 = *v5;
          v16[1] = v19;
          v16[2] = v20;
          *(v16 + 3) = *(v5 + 3);
          v16[5] = v21;
          v28 = v17[2];

          if (v10 >= v28)
          {
            goto LABEL_29;
          }

          *v5 = v27;
          v5[2] = v4;
          *(v5 + 3) = v26;
          v5[5] = v18;
          v5 = 0;

          v4 = v24;
        }

        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    *v23 = v4;
    return v8;
  }

  return v4[2];
}