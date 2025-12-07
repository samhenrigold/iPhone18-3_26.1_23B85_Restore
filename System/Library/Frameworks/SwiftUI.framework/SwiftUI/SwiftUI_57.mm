unint64_t lazy protocol witness table accessor for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollableItemLayoutComputer, &unk_1EFF97E20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollableItemLayoutComputer, &unk_1EFF97E20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer);
  }

  return result;
}

uint64_t type metadata completion function for _ScrollableLayoutView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      v4[5] = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ScrollableLayoutView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v9 | *(v4 + 80) & 0xF8;
  if (v10 > 7 || ((*(v4 + 80) | *(v8 + 80)) & 0x100000) != 0 || ((v6 + v9) & ~v9) + *(v8 + 64) > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    (*(v8 + 16))((v3 + (v6 | v9)) & ~v9, (a2 + (v6 | v9)) & ~v9, v7);
  }

  return v3;
}

uint64_t destroy for _ScrollableLayoutView(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + ((*(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for _ScrollableLayoutView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  *((v7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 16))(((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a1) & ~*(v8 + 80), ((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithCopy for _ScrollableLayoutView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  *((v7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 24))(((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a1) & ~*(v8 + 80), ((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t initializeWithTake for _ScrollableLayoutView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  *((v7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 32))(((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a1) & ~*(v8 + 80), ((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithTake for _ScrollableLayoutView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  *((v7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 40))(((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a1) & ~*(v8 + 80), ((v7 & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8 + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _ScrollableLayoutView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 8;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void storeEnumTagSinglePayload for _ScrollableLayoutView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((v13 + v11) & ~v11) + *(*(v8 - 8) + 64);
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v20 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v19 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v22 = v18 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_49:
              if (v17 == 2)
              {
                *&a1[v14] = v19;
              }

              else
              {
                *&a1[v14] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v17)
    {
      a1[v14] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
  }

  else if (v17)
  {
    a1[v14] = 0;
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
  if (v7 >= v10)
  {
    if (v7 >= a2)
    {
      v26 = *(v6 + 56);

      v26();
    }

    else if (v13)
    {
      v25 = ~v7 + a2;
      bzero(a1, v13);
      *a1 = v25;
    }
  }

  else
  {
    v23 = *(v9 + 56);
    v24 = &a1[v13 + v11] & ~v11;

    v23(v24);
  }
}

uint64_t initializeWithCopy for ScrollableLayoutViewAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ScrollableLayoutViewAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ScrollableLayoutViewAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollableLayoutViewAdaptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ScrollableLayoutViewAdaptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ScrollableLayoutState.Value(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollableLayoutState.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((((((((((((((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v26 = *a2;
    *a1 = *a2;
    a1 = (v26 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v9 = ((a1 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v10 = ((a2 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v9 = *v10;
    v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v11 = *v12;
    v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14[2];
    v16 = v14[3];
    v17 = v14[5];
    v13[4] = v14[4];
    v13[5] = v17;
    v13[2] = v15;
    v13[3] = v16;
    v18 = v14[1];
    *v13 = *v14;
    v13[1] = v18;
    v19 = ((v13 + 103) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v14 + 103) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    *((v23 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 39) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for ScrollableLayoutState.Value(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for ScrollableLayoutState.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v16 = v13[4];
  v15 = v13[5];
  v17 = v13[3];
  v12[2] = v13[2];
  v12[3] = v17;
  v12[4] = v16;
  v12[5] = v15;
  v18 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v13 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  *((v22 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 39) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for ScrollableLayoutState.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 24) = *(v13 + 24);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 40) = *(v13 + 40);
  *(v12 + 48) = *(v13 + 48);
  *(v12 + 56) = *(v13 + 56);
  *(v12 + 64) = *(v13 + 64);
  *(v12 + 72) = *(v13 + 72);
  *(v12 + 80) = *(v13 + 80);
  *(v12 + 88) = *(v13 + 88);
  v12 += 103;
  v13 += 103;
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v12 & 0xFFFFFFFFFFFFFFF8) = *(v13 & 0xFFFFFFFFFFFFFFF8);
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + 15;

  v15 &= 0xFFFFFFFFFFFFFFF8;
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v16 = *v14;
  v14 += 15;
  *v15 = v16;

  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *(v14 & 0xFFFFFFFFFFFFFFF8);
  v17[1] = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
  v17[2] = *((v14 & 0xFFFFFFFFFFFFFFF8) + 16);
  v17[3] = *((v14 & 0xFFFFFFFFFFFFFFF8) + 24);
  v18 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v14 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v18[1] = v19[1];
  return a1;
}

uint64_t initializeWithTake for ScrollableLayoutState.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v16 = v13[4];
  v15 = v13[5];
  v17 = v13[3];
  v12[2] = v13[2];
  v12[3] = v17;
  v12[4] = v16;
  v12[5] = v15;
  v18 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v13 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  *((v22 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 39) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ScrollableLayoutState.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *(v12 + 8) = v13[1];
  *(v12 + 16) = v13[2];
  *(v12 + 24) = v13[3];
  *(v12 + 32) = v13[4];
  *(v12 + 40) = v13[5];
  *(v12 + 48) = v13[6];
  *(v12 + 56) = v13[7];
  *(v12 + 64) = v13[8];
  *(v12 + 72) = v13[9];
  *(v12 + 80) = v13[10];
  *(v12 + 88) = v13[11];
  v12 += 103;
  v14 = ((v13 + 103) & 0xFFFFFFFFFFFFFFF8);
  *(v12 & 0xFFFFFFFFFFFFFFF8) = *v14;
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + 15;

  v15 &= 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v16 += 15;
  *v15 = v17;

  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *(v16 & 0xFFFFFFFFFFFFFFF8);
  v18[1] = *((v16 & 0xFFFFFFFFFFFFFFF8) + 8);
  v18[2] = *((v16 & 0xFFFFFFFFFFFFFFF8) + 16);
  v18[3] = *((v16 & 0xFFFFFFFFFFFFFFF8) + 24);
  v19 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
  v20 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v19[1] = v20[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollableLayoutState.Value(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v10 = ((((((((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      v19 = *((((((((a1 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8);
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

void storeEnumTagSinglePayload for ScrollableLayoutState.Value(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((((((((v9 + 3) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 103) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((((((((a1 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = (a2 - 1);
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((((((((((((v9 + 3) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 103) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((((((((v9 + 3) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 103) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t type metadata completion function for ScrollableLayoutState(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for ScrollableLayoutState(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v7 <= 7 && (*(v6 + 80) & 0x100000) == 0;
  if (v9 && ((((((((((((((v8 + ((v7 + 48) & ~v7) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    v10 = AssociatedTypeWitness;
    *a1 = *a2;
    v11 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v11 = *v12;
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v13 = *v14;
    v15 = (v13 + 11) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v15 = *v16;
    *(v15 + 4) = *(v16 + 4);
    v17 = *(v16 + 8);
    *(v15 + 8) = v17;
    *(v15 + 16) = *(v16 + 16);
    *(v15 + 24) = *(v16 + 24);
    *(v15 + 28) = *(v16 + 28);
    v18 = *(v6 + 16);
    v19 = v17;

    v18(v15 + 32, v16 + 32, v10);
    v20 = ((v15 + v8 + 35) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v16 + v8 + 35) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = (v20 + 11) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v25;
    v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v26 = *v27;
    v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v29;
    v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
    v32 = v31[1];
    *v30 = *v31;
    v30[1] = v32;
    *((v30 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 39) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v33 = *a2;
    *a1 = *a2;
    a1 = (v33 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return a1;
}

uint64_t destroy for ScrollableLayoutState(uint64_t a1, uint64_t a2)
{
  v2 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))((v2 + *(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80), AssociatedTypeWitness);
}

_DWORD *initializeWithCopy for ScrollableLayoutState(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = (v6 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 4) = *(v9 + 4);
  v10 = *(v9 + 8);
  *(v8 + 8) = v10;
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 24) = *(v9 + 24);
  *(v8 + 28) = *(v9 + 28);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 16);
  v14 = v12 + 16;
  v15 = *(v12 + 80);
  v16 = (v15 + 32 + v8) & ~v15;
  v17 = (v15 + 32 + v9) & ~v15;
  v18 = v10;

  v13(v16, v17, AssociatedTypeWitness);
  v19 = *(v14 + 48) + 3;
  v20 = ((v19 + v16) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v19 + v17) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = (v20 + 11) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v32 = v31[1];
  *v30 = *v31;
  v30[1] = v32;
  *((v30 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 39) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *assignWithCopy for ScrollableLayoutState(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v4;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v6;
  v8 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 4) = *(v9 + 4);
  v10 = *(v9 + 8);
  v11 = *(v8 + 8);
  *(v8 + 8) = v10;
  v12 = v10;

  *(v8 + 16) = *(v9 + 16);

  *(v8 + 24) = *(v9 + 24);
  *(v8 + 28) = *(v9 + 28);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = (v16 + 32 + v8) & ~v16;
  v18 = (v16 + 32 + v9) & ~v16;
  (*(v14 + 24))(v17, v18, AssociatedTypeWitness);
  v19 = *(v15 + 40) + 3;
  v20 = ((v19 + v17) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v19 + v18) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = (v20 + 11) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);

  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;

  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = *v27;
  v27 += 15;
  *v26 = v28;

  v29 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *(v27 & 0xFFFFFFFFFFFFFFF8);
  v29[1] = *((v27 & 0xFFFFFFFFFFFFFFF8) + 8);
  v30 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v31 = (((v27 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v30[1] = v31[1];
  v30[2] = v31[2];
  v30[3] = v31[3];
  v32 = ((v30 + 39) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v32[1] = v33[1];
  return a1;
}

_DWORD *initializeWithTake for ScrollableLayoutState(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 11) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 11) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v8 + v14 + 32) & ~v14;
  v16 = (v9 + v14 + 32) & ~v14;
  (*(v12 + 32))(v15, v16, AssociatedTypeWitness);
  v17 = *(v13 + 32) + 3;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;
  *((v28 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v29 + 39) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for ScrollableLayoutState(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v4;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v6;
  v8 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 4) = *(v9 + 4);
  v10 = *(v8 + 8);
  *(v8 + 8) = *(v9 + 8);

  *(v8 + 16) = *(v9 + 16);

  *(v8 + 24) = *(v9 + 24);
  *(v8 + 28) = *(v9 + 28);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v14 + 32 + v8) & ~v14;
  v16 = (v14 + 32 + v9) & ~v14;
  (*(v12 + 40))(v15, v16, AssociatedTypeWitness);
  v17 = *(v13 + 24) + 3;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = (v18 + 11) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);

  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;

  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v25 += 15;
  *v24 = v26;

  v27 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *(v25 & 0xFFFFFFFFFFFFFFF8);
  v27[1] = *((v25 & 0xFFFFFFFFFFFFFFF8) + 8);
  v28 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v28[1] = v29[1];
  v28[2] = v29[2];
  v28[3] = v29[3];
  v30 = ((v28 + 39) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v30[1] = v31[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollableLayoutState(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((((((((((((v10 + ((v9 + 48) & ~v9) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
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
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    v19 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
    if ((v7 & 0x80000000) != 0)
    {
      v21 = *(v6 + 48);

      return v21((v19 + v9 + 32) & ~v9);
    }

    else
    {
      v20 = *(v19 + 8);
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

  return v8 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for ScrollableLayoutState(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((((((((((*(v7 + 64) + ((v9 + 48) & ~v9) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((((((((*(v7 + 64) + ((v9 + 48) & ~v9) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) != 0)
      {
        v19 = *(v7 + 56);

        v19((v18 + v9 + 32) & ~v9, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        v18[2] = 0;
        v18[3] = 0;
        *v18 = a2 & 0x7FFFFFFF;
        v18[1] = 0;
      }

      else
      {
        v18[1] = (a2 - 1);
      }

      return;
    }
  }

  if (((((((((((((((*(v7 + 64) + ((v9 + 48) & ~v9) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((((((((*(v7 + 64) + ((v9 + 48) & ~v9) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

unint64_t lazy protocol witness table accessor for type AnyDynamicItem and conformance AnyDynamicItem()
{
  result = lazy protocol witness table cache variable for type AnyDynamicItem and conformance AnyDynamicItem;
  if (!lazy protocol witness table cache variable for type AnyDynamicItem and conformance AnyDynamicItem)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyDynamicItem, &type metadata for AnyDynamicItem, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDynamicItem and conformance AnyDynamicItem);
  }

  return result;
}

uint64_t specialized ScrollableLayoutState.TemplateView.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v4;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph0A0V8setValueySbxFSbSPyxGXEfU_TA_0, &v7, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v5);
}

unint64_t lazy protocol witness table accessor for type [AnyDynamicItem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AnyDynamicItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AnyDynamicItem] and conformance [A])
  {
    type metadata accessor for Attribute<ViewGeometry>(255, &lazy cache variable for type metadata for [AnyDynamicItem], &type metadata for AnyDynamicItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyDynamicItem] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(double a1)
{
  result = lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment;
  if (!lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment)
  {
    type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(255, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchTextTransformModifier.Transform, &protocol witness table for SearchTextTransformModifier.Transform);
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEnvironmentTransformModifier<A>.UpdateEnvironment, v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment);
  }

  return result;
}

void type metadata accessor for SearchBoundProperty<SearchFieldState>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>)
  {
    v2 = type metadata accessor for SearchFieldState(255);
    v3 = _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SearchFieldState and conformance SearchFieldState, type metadata accessor for SearchFieldState, protocol conformance descriptor for SearchFieldState);
    v5 = type metadata accessor for SearchBoundProperty(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>);
    }
  }
}

void type metadata accessor for SearchBoundProperty<AttributedString>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchBoundProperty<AttributedString>)
  {
    v2 = type metadata accessor for AttributedString();
    v3 = _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    v5 = type metadata accessor for SearchBoundProperty(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>);
    }
  }
}

void type metadata accessor for SearchBoundProperty<TextSelection?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>)
  {
    type metadata accessor for TextSelection?(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type TextSelection? and conformance <A> A?();
    v6 = type metadata accessor for SearchBoundProperty(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>);
    }
  }
}

void type metadata accessor for SearchEnvironmentStorage.AllProperties?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double partial apply for specialized closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  return specialized closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()();
}

{
  return specialized closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()();
}

{
  return specialized closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()();
}

{
  return specialized closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()();
}

uint64_t outlined init with take of SearchEnvironmentStorage.AllProperties(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  return specialized closure #1 in closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()(*(v0 + 16), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()(*(v0 + 16), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()(*(v0 + 16), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()(*(v0 + 16), *(v0 + 24));
}

unint64_t lazy protocol witness table accessor for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer()
{
  result = lazy protocol witness table cache variable for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer;
  if (!lazy protocol witness table cache variable for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CLKLiveText.TextLayoutComputer, &type metadata for CLKLiveText.TextLayoutComputer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer;
  if (!lazy protocol witness table cache variable for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CLKLiveText.TextLayoutComputer, &type metadata for CLKLiveText.TextLayoutComputer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(double a1)
{
  result = lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment;
  if (!lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment)
  {
    type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(255, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchSelectionModifier.Transform, &protocol witness table for SearchSelectionModifier.Transform);
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEnvironmentTransformModifier<A>.UpdateEnvironment, v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider()
{
  result = lazy protocol witness table cache variable for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider;
  if (!lazy protocol witness table cache variable for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnScrollPhaseChangeModifier.PhaseActionProvider, &type metadata for OnScrollPhaseChangeModifier.PhaseActionProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider;
  if (!lazy protocol witness table cache variable for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnScrollPhaseChangeModifier.PhaseActionProvider, &type metadata for OnScrollPhaseChangeModifier.PhaseActionProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(double a1)
{
  result = lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>;
  if (!lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>)
  {
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(255, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider, &type metadata for OnScrollPhaseChangeModifier.PhaseActionProvider);
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollActionDispatcher<A>, v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

__n128 partial apply for specialized closure #1 in closure #1 in ScrollActionDispatcher.updateValue()@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v2;
  result = *(v2 + 8);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ScrollActionDispatcher(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider()
{
  result = lazy protocol witness table cache variable for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider;
  if (!lazy protocol witness table cache variable for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, &type metadata for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider;
  if (!lazy protocol witness table cache variable for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, &type metadata for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>()
{
  result = lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>;
  if (!lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>)
  {
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(255, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, &type metadata for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollActionDispatcher<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyTuplePhase and conformance EmptyTuplePhase()
{
  result = lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase;
  if (!lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmptyTuplePhase, &type metadata for EmptyTuplePhase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase;
  if (!lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmptyTuplePhase, &type metadata for EmptyTuplePhase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase;
  if (!lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmptyTuplePhase, &type metadata for EmptyTuplePhase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyTuplePhase and conformance EmptyTuplePhase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventID and conformance EventID()
{
  result = lazy protocol witness table cache variable for type EventID and conformance EventID;
  if (!lazy protocol witness table cache variable for type EventID and conformance EventID)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69819B8], MEMORY[0x1E69819B0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventID and conformance EventID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollableItemLayoutComputer._LayoutEngine and conformance ScrollableItemLayoutComputer._LayoutEngine()
{
  result = lazy protocol witness table cache variable for type ScrollableItemLayoutComputer._LayoutEngine and conformance ScrollableItemLayoutComputer._LayoutEngine;
  if (!lazy protocol witness table cache variable for type ScrollableItemLayoutComputer._LayoutEngine and conformance ScrollableItemLayoutComputer._LayoutEngine)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollableItemLayoutComputer._LayoutEngine, &unk_1EFF98168, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollableItemLayoutComputer._LayoutEngine and conformance ScrollableItemLayoutComputer._LayoutEngine);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
    type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider(255);
    _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider and conformance _ConditionalContent<A, B><>.CommandsProvider, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider, protocol conformance descriptor for _ConditionalContent<A, B><>.CommandsProvider);
    v1 = type metadata accessor for _ConditionalContent.Container();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
    }
  }
}

void type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
    v5[0] = v2;
    v5[1] = v2;
    v5[2] = &protocol witness table for WithCommandFlag<A>;
    v5[3] = &protocol witness table for WithCommandFlag<A>;
    v3 = type metadata accessor for _ConditionalContent<>.CommandsProvider(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TemplateViewPhase and conformance TemplateViewPhase()
{
  result = lazy protocol witness table cache variable for type TemplateViewPhase and conformance TemplateViewPhase;
  if (!lazy protocol witness table cache variable for type TemplateViewPhase and conformance TemplateViewPhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemplateViewPhase, &unk_1EFF980E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TemplateViewPhase and conformance TemplateViewPhase);
  }

  return result;
}

uint64_t type metadata completion function for AnyViewVisitor(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyViewVisitor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 32;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    v21 = *(v20 + 8);
    *(v19 + 16) = *(v20 + 16);
    *(v19 + 8) = v21;
    *(v19 + 24) = *(v20 + 24);
  }

  return v3;
}

double destroy for AnyViewVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 24) - 8) + 8))((*(v4 + 56) + a1 + *(*(*(a2 + 24) - 8) + 80)) & ~*(*(*(a2 + 24) - 8) + 80));

  return result;
}

uint64_t initializeWithCopy for AnyViewVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  v17 = *(v16 + 16);
  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = v17;
  *(v15 + 24) = *(v16 + 24);

  return a1;
}

uint64_t assignWithCopy for AnyViewVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  v17 = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);
  *(v15 + 8) = v17;
  *(v15 + 24) = *(v16 + 24);
  return a1;
}

uint64_t initializeWithTake for AnyViewVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  return a1;
}

uint64_t assignWithTake for AnyViewVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  v17 = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);
  *(v15 + 8) = v17;
  *(v15 + 24) = *(v16 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyViewVisitor(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 32;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))(a1);
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for AnyViewVisitor(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = a1;
      bzero(a1, v16);
      a1 = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(a1 + v16) = v21;
      }

      else
      {
        *(a1 + v16) = v21;
      }
    }

    else if (v20)
    {
      *(a1 + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(a1 + v16) = 0;
  }

  else if (v20)
  {
    *(a1 + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    v25();
  }

  else
  {
    v26 = (a1 + v13) & ~v10;
    if (v8 == v12)
    {
      v27 = *(v7 + 56);

      v27(v26);
    }

    else
    {
      v28 = ((v15 + v26) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        result = 0.0;
        *v28 = 0u;
        v28[1] = 0u;
        *v28 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v28 = a2;
      }
    }
  }

  return result;
}

uint64_t destroy for ScrollableLayoutState.TemplateView(uint64_t a1)
{
}

void *initializeWithCopy for ScrollableLayoutState.TemplateView(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = a2[3];
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for ScrollableLayoutState.TemplateView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for ScrollableLayoutState.TemplateView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollableLayoutState.TemplateView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ScrollableLayoutState.TemplateView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    updated = type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(updated, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment()
{
  result = lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment;
  if (!lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment)
  {
    type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(255, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchStateEnvironmentTransformModifier.Transform, &protocol witness table for SearchStateEnvironmentTransformModifier.Transform);
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEnvironmentTransformModifier<A>.UpdateEnvironment, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment);
  }

  return result;
}

uint64_t outlined init with copy of NavigationState?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Attribute<ViewGeometry>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, a3, a4, &type metadata for InjectKeyModifier, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>(255);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyTransformModifier<Binding<PresentationMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Binding<PresentationMode>>)
  {
    type metadata accessor for Attribute<ViewGeometry>(255, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
    v1 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Binding<PresentationMode>>);
    }
  }
}

void type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>)
  {
    type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation(255);
    _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type _NavigationSplitReader.SplitPresentationModeLocation and conformance _NavigationSplitReader.SplitPresentationModeLocation, type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation, protocol conformance descriptor for _NavigationSplitReader.SplitPresentationModeLocation);
    v1 = type metadata accessor for LocationBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>(255, a3, a4, a5);
    type metadata accessor for Attribute<ViewGeometry>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment()
{
  result = lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment;
  if (!lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment, &type metadata for SearchPopoverAnchorModifier.Transform, &protocol witness table for SearchPopoverAnchorModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment);
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEnvironmentTransformModifier<A>.UpdateEnvironment, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment;
  if (!lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment)
  {
    type metadata accessor for SearchField<SearchFieldConfiguration.Control>(255, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment, &type metadata for SearchPopoverAnchorModifier.Transform, &protocol witness table for SearchPopoverAnchorModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment);
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEnvironmentTransformModifier<A>.UpdateEnvironment, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = (type metadata accessor for SearchEnvironmentStorage.AllProperties(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[7] + v2;
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v6 = *(v5 + 32);
    v7 = v6 + *(type metadata accessor for SearchFieldState(0) + 36);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  v9 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v10 = v3 + v9[5];
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v13 = *(v12 + 32);
    v14 = type metadata accessor for AttributedString();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  v15 = v3 + v9[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {

    type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v18 = *(v17 + 32);
    v19 = type metadata accessor for TextSelection(0);
    if (!(*(*(v19 - 8) + 48))(v15 + v18, 1, v19))
    {
      type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v20 - 8) + 8))(v15 + v18, v20);
      }
    }
  }

  v21 = v3 + v9[7];
  if (*(v21 + 8))
  {

    if ((*(v21 + 24) & 1) == 0)
    {
      MEMORY[0x18D011290](v21 + 16);
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  v1 = *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return closure #3 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()(v3, v0 + v2, v4);
}

uint64_t outlined destroy of SearchEnvironmentStorage.AllProperties?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchBoundProperty<PlatformSearchPopoverAnchor?>)
  {
    type metadata accessor for Attribute<ViewGeometry>(255, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor, MEMORY[0x1E69E6720]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type PlatformSearchPopoverAnchor? and conformance <A> A?();
    v6 = type metadata accessor for SearchBoundProperty(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
    }
  }
}

void type metadata accessor for Attribute<ViewGeometry>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlatformSearchPopoverAnchor? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PlatformSearchPopoverAnchor? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PlatformSearchPopoverAnchor? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for Attribute<ViewGeometry>(255, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type PlatformSearchPopoverAnchor and conformance PlatformSearchPopoverAnchor();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C80], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformSearchPopoverAnchor? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformSearchPopoverAnchor and conformance PlatformSearchPopoverAnchor()
{
  result = lazy protocol witness table cache variable for type PlatformSearchPopoverAnchor and conformance PlatformSearchPopoverAnchor;
  if (!lazy protocol witness table cache variable for type PlatformSearchPopoverAnchor and conformance PlatformSearchPopoverAnchor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformSearchPopoverAnchor, &type metadata for PlatformSearchPopoverAnchor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformSearchPopoverAnchor and conformance PlatformSearchPopoverAnchor);
  }

  return result;
}

uint64_t outlined init with copy of SearchEnvironmentStorage.AllProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SearchEnvironmentStorage.AllProperties(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ScrapedContentTree.Node.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t ScrapedContentTree.Node.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t ScrapedContentTree.Node.init(item:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ScrapedContentTree.Node(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t ScrapedContentTree.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int ScrapedContentTree.Node.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t ScrapedContentTree.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

uint64_t ScrapedContentTree<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v27 = a3;
  v28 = a5;
  v29 = a2;
  v8 = type metadata accessor for ScrapedContentTree.CodingKeys(255, a4, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.CodingKeys, v8);
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = a4;
  v14 = v28;
  v15 = v9;
  v16 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37 = v29;
  v36 = 0;
  v19 = type metadata accessor for ScrapedContentTree.Node(255, v13, v17, v18);
  v20 = type metadata accessor for Array();
  v35[0] = v14;
  v35[1] = v16;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v19, v35);
  swift_getWitnessTable(MEMORY[0x1E69E6300], v20, &WitnessTable);
  v21 = v31;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v21)
  {
    v37 = v27;
    v36 = 1;
    v24 = type metadata accessor for ScrapedContentTree(255, v13, v22, v23);
    v25 = type metadata accessor for Array();
    v33[0] = v14;
    v33[1] = v16;
    v32 = swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>, v24, v33);
    swift_getWitnessTable(MEMORY[0x1E69E6300], v25, &v32);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v15);
}

uint64_t ScrapedContentTree<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = type metadata accessor for ScrapedContentTree.CodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.CodingKeys, v7);
  v23 = type metadata accessor for KeyedDecodingContainer();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v14 = v9;
    v15 = type metadata accessor for ScrapedContentTree.Node(255, a2, v12, v13);
    v16 = type metadata accessor for Array();
    v30 = 0;
    v29[0] = v24;
    v29[1] = v25;
    v28 = swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v15, v29);
    swift_getWitnessTable(MEMORY[0x1E69E6330], v16, &v28);
    v17 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    WitnessTable = v31;
    v21 = type metadata accessor for ScrapedContentTree(255, a2, v19, v20);
    v22 = type metadata accessor for Array();
    v30 = 1;
    v27[0] = v24;
    v27[1] = v25;
    v26 = swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>, v21, v27);
    swift_getWitnessTable(MEMORY[0x1E69E6330], v22, &v26);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v11, v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return WitnessTable;
}

uint64_t ScrapedContentTree.Node<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v19 = a4;
  v17 = a3;
  v5 = type metadata accessor for ScrapedContentTree.Node.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.Node.CodingKeys, v5);
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v19;
  v11 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = 0;
  v12 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v13 = v18;
    v25 = *(v11 + *(v18 + 28));
    v24 = 1;
    v14 = type metadata accessor for Array();
    v23[0] = v17;
    v23[1] = v10;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v13, v23);
    swift_getWitnessTable(MEMORY[0x1E69E6300], v14, &WitnessTable);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ScrapedContentTree.Node<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v30 = a5;
  v31 = a4;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrapedContentTree.Node.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.Node.CodingKeys, v11);
  v12 = type metadata accessor for KeyedDecodingContainer();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v34 = a2;
  v17 = type metadata accessor for ScrapedContentTree.Node(0, a2, v15, v16);
  v29 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = a1;
  v21 = v19;
  v23 = v32;
  v22 = v33;
  LOBYTE(v42) = 0;
  v24 = v34;
  v25 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 32))(v21, v22, v24);
  v26 = type metadata accessor for Array();
  v41 = 1;
  v40[0] = v37;
  v40[1] = v31;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v17, v40);
  swift_getWitnessTable(MEMORY[0x1E69E6330], v26, &WitnessTable);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v35 + 8))(v14, v25);
  *&v21[*(v17 + 28)] = v42;
  v27 = v29;
  (*(v29 + 16))(v30, v21, v17);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return (*(v27 + 8))(v21, v17);
}

{
  v69 = a4;
  v71 = a3;
  v5 = a2;
  v56 = a5;
  v7 = type metadata accessor for ScrapedContentTree.Node(255, a2, a3, a4);
  v63 = type metadata accessor for Optional();
  v8 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v72 = &v49 - v9;
  v10 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v49 - v14;
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v49 - v19;
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v49 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v49 - v27;
  v62 = v15;
  v66 = *(v15 + 56);
  v67 = v15 + 56;
  v66(&v49 - v27, 1, 1, v5, v26);
  v75 = static Array._allocateUninitialized(_:)();
  v29 = a1[1];
  v30 = a1[2];
  v61 = v21;
  if (v29 >= v30)
  {
LABEL_19:
    a1[3] = 0;
    v42 = v60;
    v41 = v61;
    (*(v61 + 16))(v60, v28, v20);
    v43 = v62;
    if ((*(v62 + 48))(v42, 1, v5) == 1)
    {

      v44 = *(v41 + 8);
      v44(v42, v20);
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return (v44)(v28, v20);
    }

    else
    {
      (*(v41 + 8))(v28, v20);
      v46 = *(v43 + 32);
      v47 = v54;
      v46(v54, v42, v5);
      v48 = v55;
      v46(v55, v47, v5);
      return ScrapedContentTree.Node.init(item:children:)(v48, v75, v5, v56);
    }
  }

  v65 = (v10 + 56);
  v57 = (v8 + 8);
  v52 = (v10 + 32);
  v51 = (v10 + 16);
  v50 = (v10 + 8);
  v31 = (v21 + 8);
  v64 = (v21 + 32);
  v32 = v70;
  v33 = v72;
  v53 = (v21 + 8);
  while (1)
  {
    v34 = a1[3];
    if (v34)
    {
      v35 = a1[4];
      if (v29 < v35)
      {
        goto LABEL_12;
      }

      if (v35 < v29)
      {
        break;
      }

      a1[3] = 0;
    }

    v34 = ProtobufDecoder.decodeVarint()();
    if (v32)
    {
      goto LABEL_22;
    }

    v33 = v72;
    if (v34 < 8)
    {
      break;
    }

LABEL_12:
    if (v34 >> 3 == 2)
    {
      v73[0] = v71;
      v73[1] = v69;
      v74 = v34;
      swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v7, v73);
      ProtobufDecoder.messageField<A>(_:)();
      if (v32)
      {

        (*v65)(v33, 1, 1, v7);
        (*v57)(v33, v63);
        v32 = 0;
      }

      else
      {
        v37 = *v65;
        v70 = 0;
        v37(v33, 0, 1, v7);
        v38 = v5;
        v39 = v58;
        (*v52)(v58, v33, v7);
        (*v51)(v59, v39, v7);
        type metadata accessor for Array();
        Array.append(_:)();
        v40 = v39;
        v5 = v38;
        v31 = v53;
        (*v50)(v40, v7);
        v32 = v70;
      }
    }

    else
    {
      if (v34 >> 3 == 1)
      {
        v74 = v34;
        v36 = v68;
        ProtobufDecoder.messageField<A>(_:)();
        if (v32)
        {
LABEL_22:

          return (*v31)(v28, v20);
        }

        (*v31)(v28, v20);
        (v66)(v36, 0, 1, v5);
        (*v64)(v28, v36, v20);
      }

      else
      {
        v74 = v34;
        ProtobufDecoder.skipField(_:)();
        if (v32)
        {
          goto LABEL_22;
        }
      }

      v33 = v72;
    }

    v29 = a1[1];
    if (v29 >= a1[2])
    {
      goto LABEL_19;
    }
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return (*v31)(v28, v20);
}

uint64_t static ScrapedContentTree<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for ScrapedContentTree.Node(0, a5, a3, a4);
  v15 = a6;
  swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v8, &v15);
  if (static Array<A>.== infix(_:_:)())
  {
    v11 = type metadata accessor for ScrapedContentTree(0, a5, v9, v10);
    v14 = a6;
    swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>, v11, &v14);
    v12 = static Array<A>.== infix(_:_:)();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t static ScrapedContentTree.Node<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v8 = type metadata accessor for ScrapedContentTree.Node(0, a3, v6, v7);
    v11 = a4;
    swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v8, &v11);
    v9 = static Array<A>.== infix(_:_:)();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t IntelligenceContext.init(visibleRect:host:fragmentCollector:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = result;
  *(a3 + 40) = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScrapedContentTree<A>.Node.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ScrapedContentTree.Node.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ScrapedContentTree<A>.Node.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance AccessibilityLargeContentViewHitTestingTransform();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapedContentTree<A>.Node.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.Node.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapedContentTree<A>.Node.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.Node.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScrapedContentTree<A>.Node.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScrapedContentTree<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ScrapedContentTree.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrapedContentTree<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScrapedContentTree<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrapedContentTree<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for Decodable.init(from:) in conformance <A> ScrapedContentTree<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = ScrapedContentTree<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a3 - 16));
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t IntelligenceContext.request.getter()
{
  IntelligenceFragmentCollector.context.getter();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of IntelligenceCollectionContext.request.getter();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

double IntelligenceHost.collectContent(in:remoteContextWrapper:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  type metadata accessor for IntelligenceCollectionCoordinator();
  static IntelligenceCollectionCoordinator.shared.getter();
  v14 = IntelligenceCollectionCoordinator.createCollector(remoteContextWrapper:)();

  collect #1 <A>(into:) in IntelligenceHost.collectContent(in:remoteContextWrapper:)(v14, v7, a2, a3, a4, a5, a6, a7);

  return result;
}

double collect #1 <A>(into:) in IntelligenceHost.collectContent(in:remoteContextWrapper:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (!CGRectIsEmpty(*&a5))
  {
    IntelligenceHost.collectContent<A>(in:root:fragmentCollector:)(a2, a1, a3, a3, a4, a4, a5, a6, a7, a8);
  }

  type metadata accessor for IntelligenceCollectionCoordinator();
  static IntelligenceCollectionCoordinator.shared.getter();
  IntelligenceCollectionCoordinator.finishCollection(_:)();

  return result;
}

uint64_t IntelligenceHost.collectContent<A>(in:root:fragmentCollector:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v31 = a6;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v30 - v18;
  v20 = type metadata accessor for IntelligenceElement();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewRendererHost.scrapeContent()();
  v32 = v33;
  v24 = ScrapedContentTree<A>.init(_:)(&v32);
  v26 = v25;
  *&v33 = a7;
  *(&v33 + 1) = a8;
  v34 = a9;
  v35 = a10;
  v36 = a1;
  v37 = a2;
  v27 = a1;
  swift_retain_n();
  v28 = v27;
  IntelligenceElement.init<A, B>(content:context:)(v24, v26, &v33, MEMORY[0x1E697F290], a4, &protocol witness table for ScrapeableContent.Item, v31, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {

    return outlined destroy of IntelligenceElement?(v19, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    IntelligenceFragmentCollector.collect(_:)();

    return (*(v21 + 8))(v23, v20);
  }
}

unint64_t ScrapedContentTree<A>.init(_:)(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v198 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_143;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_132;
    }

    v174 = v2;
    v281 = MEMORY[0x1E69E7CC0];
    v5 = v1;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v187 = v3;
    result = 0;
    v7 = v5 & 0xC000000000000001;
    v8 = v281;
    v181 = v5 & 0xC000000000000001;
    v182 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = 1;
    v10 = v5;
LABEL_6:
    v11 = v9;
    v197 = v8;
    if (v7)
    {
      v12 = MEMORY[0x18D00E9C0](result, v10);
    }

    else
    {
      if (result >= *(v182 + 16))
      {
        goto LABEL_156;
      }
    }

    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[5];
    v280[3] = v12[4];
    v280[4] = v15;
    v280[1] = v13;
    v280[2] = v14;
    v16 = v12[1];
    v279 = v15;
    v280[0] = v16;
    v17 = v12[4];
    v277 = v12[3];
    v278 = v17;
    v18 = v12[2];
    v275 = v12[1];
    v276 = v18;
    v19 = v12;
    swift_beginAccess();
    v20 = *(v19 + 12);
    if (v20 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v196 = v11;
    if (!v21)
    {
      outlined init with copy of ScrapeableContent.Item(v280, &v222);

      v154 = v4;
      goto LABEL_123;
    }

    v206 = v21;
    outlined init with copy of ScrapeableContent.Item(v280, &v222);
    v274 = v4;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v206 & ~(v206 >> 63), 0);
    if (v206 < 0)
    {
      goto LABEL_148;
    }

    result = 0;
    v22 = v274;
    v23 = v20 & 0xC000000000000001;
    v179 = v20 & 0xC000000000000001;
    v180 = v20 & 0xFFFFFFFFFFFFFF8;
    v178 = v20 + 32;
    v24 = 1;
    v25 = v20;
    v186 = v20;
    while (1)
    {
      v192 = v24;
      v193 = v22;
      if (v23)
      {
        v26 = MEMORY[0x18D00E9C0](result, v25);
      }

      else
      {
        if (result >= *(v180 + 16))
        {
          goto LABEL_158;
        }

        v26 = *(v178 + 8 * result);
      }

      v27 = *(v26 + 32);
      v28 = *(v26 + 48);
      v29 = *(v26 + 64);
      v273 = *(v26 + 80);
      v272[3] = v29;
      v272[2] = v28;
      v272[1] = v27;
      v272[0] = *(v26 + 16);
      v271 = v273;
      v30 = *(v26 + 64);
      v269 = *(v26 + 48);
      v270 = v30;
      v31 = *(v26 + 16);
      v268 = *(v26 + 32);
      v267 = v31;
      swift_beginAccess();
      v32 = *(v26 + 96);
      if (v32 >> 62)
      {
        break;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_21;
      }

LABEL_115:
      outlined init with copy of ScrapeableContent.Item(v272, &v222);

      v146 = v4;
LABEL_116:
      v225 = v270;
      v226 = v271;
      v223 = v268;
      v224 = v269;
      v222 = v267;
      v22 = v193;
      v274 = v193;
      v148 = *(v193 + 16);
      v147 = *(v193 + 24);
      v25 = v186;
      if (v148 >= v147 >> 1)
      {
        v153 = v146;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v148 + 1, 1);
        v146 = v153;
        v25 = v186;
        v22 = v274;
      }

      *(v22 + 16) = v148 + 1;
      v149 = v22 + 88 * v148;
      *(v149 + 32) = v222;
      v150 = v223;
      v151 = v224;
      v152 = v226;
      *(v149 + 80) = v225;
      *(v149 + 96) = v152;
      *(v149 + 48) = v150;
      *(v149 + 64) = v151;
      *(v149 + 112) = v146;
      if (v192 == v206)
      {
        v161 = v22;

        v154 = v161;
LABEL_123:
        v225 = v278;
        v226 = v279;
        v223 = v276;
        v224 = v277;
        v222 = v275;
        v8 = v197;
        v10 = v198;
        v281 = v197;
        v156 = *(v197 + 16);
        v155 = *(v197 + 24);
        if (v156 >= v155 >> 1)
        {
          v162 = v154;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), v156 + 1, 1);
          v154 = v162;
          v10 = v198;
          v8 = v281;
        }

        *(v8 + 16) = v156 + 1;
        v157 = v8 + 88 * v156;
        *(v157 + 32) = v222;
        v158 = v223;
        v159 = v224;
        v160 = v226;
        *(v157 + 80) = v225;
        *(v157 + 96) = v160;
        *(v157 + 48) = v158;
        *(v157 + 64) = v159;
        *(v157 + 112) = v154;
        if (v196 == v187)
        {
LABEL_140:

          v2 = v174;
          goto LABEL_133;
        }

        result = v196;
        v9 = v196 + 1;
        v7 = v181;
        if (__OFADD__(v196, 1))
        {
          goto LABEL_155;
        }

        goto LABEL_6;
      }

      result = v192;
      v24 = v192 + 1;
      v23 = v179;
      if (__OFADD__(v192, 1))
      {
        goto LABEL_157;
      }
    }

    v33 = __CocoaSet.count.getter();
    if (!v33)
    {
      goto LABEL_115;
    }

LABEL_21:
    v205 = v33;
    outlined init with copy of ScrapeableContent.Item(v272, &v222);
    v266 = v4;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v205 & ~(v205 >> 63), 0);
    if (v205 < 0)
    {
      goto LABEL_149;
    }

    result = 0;
    v34 = v266;
    v35 = v32 & 0xC000000000000001;
    v175 = v32 + 32;
    v176 = v32 & 0xFFFFFFFFFFFFFF8;
    v36 = 1;
    v37 = v32;
    v177 = v32 & 0xC000000000000001;
    v185 = v32;
    while (1)
    {
      v38 = v36;
      v195 = v34;
      if (v35)
      {
        v39 = MEMORY[0x18D00E9C0](result, v37);
      }

      else
      {
        if (result >= *(v176 + 16))
        {
          goto LABEL_159;
        }

        v39 = *(v175 + 8 * result);
      }

      v40 = *(v39 + 32);
      v41 = *(v39 + 48);
      v42 = *(v39 + 64);
      v265 = *(v39 + 80);
      v264[3] = v42;
      v264[2] = v41;
      v264[1] = v40;
      v264[0] = *(v39 + 16);
      v263 = v265;
      v43 = *(v39 + 64);
      v261 = *(v39 + 48);
      v262 = v43;
      v44 = *(v39 + 16);
      v260 = *(v39 + 32);
      v259 = v44;
      swift_beginAccess();
      v45 = *(v39 + 96);
      v199 = v45;
      if (v45 >> 62)
      {
        break;
      }

      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v194 = v38;
      if (v46)
      {
        goto LABEL_29;
      }

LABEL_106:
      outlined init with copy of ScrapeableContent.Item(v264, &v222);

      v137 = v4;
LABEL_107:
      v225 = v262;
      v226 = v263;
      v223 = v260;
      v224 = v261;
      v222 = v259;
      v34 = v195;
      v266 = v195;
      v139 = *(v195 + 16);
      v138 = *(v195 + 24);
      v37 = v185;
      if (v139 >= v138 >> 1)
      {
        v144 = v137;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1);
        v137 = v144;
        v37 = v185;
        v34 = v266;
      }

      *(v34 + 16) = v139 + 1;
      v140 = v34 + 88 * v139;
      *(v140 + 32) = v222;
      v141 = v223;
      v142 = v224;
      v143 = v226;
      *(v140 + 80) = v225;
      *(v140 + 96) = v143;
      *(v140 + 48) = v141;
      *(v140 + 64) = v142;
      *(v140 + 112) = v137;
      if (v194 == v205)
      {
        v145 = v34;

        v146 = v145;
        goto LABEL_116;
      }

      result = v194;
      v36 = v194 + 1;
      v35 = v177;
      if (__OFADD__(v194, 1))
      {
        goto LABEL_154;
      }
    }

    v45 = *(v39 + 96);
    v46 = __CocoaSet.count.getter();
    v194 = v38;
    if (!v46)
    {
      goto LABEL_106;
    }

LABEL_29:
    v207 = v46;
    outlined init with copy of ScrapeableContent.Item(v264, &v222);
    v258 = v4;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v207 & ~(v207 >> 63), 0);
    if (v207 < 0)
    {
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      return result;
    }

    result = 0;
    v47 = v258;
    v48 = v45 & 0xC000000000000001;
    v183 = v45 + 32;
    v184 = v45 & 0xFFFFFFFFFFFFFF8;
    v49 = 1;
    v50 = v45;
    v188 = v45 & 0xC000000000000001;
    while (1)
    {
      v51 = v49;
      v201 = v47;
      if (v48)
      {
        v52 = MEMORY[0x18D00E9C0](result, v50);
      }

      else
      {
        if (result >= *(v184 + 16))
        {
          goto LABEL_153;
        }

        v52 = *(v183 + 8 * result);
      }

      v53 = *(v52 + 32);
      v54 = *(v52 + 48);
      v55 = *(v52 + 64);
      v257 = *(v52 + 80);
      v256[3] = v55;
      v256[2] = v54;
      v256[1] = v53;
      v256[0] = *(v52 + 16);
      v255 = v257;
      v56 = *(v52 + 64);
      v253 = *(v52 + 48);
      v254 = v56;
      v57 = *(v52 + 16);
      v252 = *(v52 + 32);
      v251 = v57;
      swift_beginAccess();
      v58 = *(v52 + 96);
      v202 = v58;
      if (v58 >> 62)
      {
        break;
      }

      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v200 = v51;
      if (v59)
      {
        goto LABEL_37;
      }

LABEL_97:
      outlined init with copy of ScrapeableContent.Item(v256, &v222);

      v128 = v4;
LABEL_98:
      v225 = v254;
      v226 = v255;
      v223 = v252;
      v224 = v253;
      v222 = v251;
      v47 = v201;
      v258 = v201;
      v130 = *(v201 + 16);
      v129 = *(v201 + 24);
      v50 = v199;
      if (v130 >= v129 >> 1)
      {
        v135 = v128;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1);
        v128 = v135;
        v50 = v199;
        v47 = v258;
      }

      *(v47 + 16) = v130 + 1;
      v131 = v47 + 88 * v130;
      *(v131 + 32) = v222;
      v132 = v223;
      v133 = v224;
      v134 = v226;
      *(v131 + 80) = v225;
      *(v131 + 96) = v134;
      *(v131 + 48) = v132;
      *(v131 + 64) = v133;
      *(v131 + 112) = v128;
      if (v200 == v207)
      {
        v136 = v47;

        v137 = v136;
        goto LABEL_107;
      }

      result = v200;
      v49 = v200 + 1;
      v48 = v188;
      if (__OFADD__(v200, 1))
      {
        goto LABEL_152;
      }
    }

    v58 = *(v52 + 96);
    v59 = __CocoaSet.count.getter();
    v200 = v51;
    if (!v59)
    {
      goto LABEL_97;
    }

LABEL_37:
    v208 = v59;
    outlined init with copy of ScrapeableContent.Item(v256, &v222);
    v250 = v4;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v208 & ~(v208 >> 63), 0);
    if (v208 < 0)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    result = 0;
    v60 = v250;
    v61 = v58 & 0xC000000000000001;
    v189 = v58 + 32;
    v190 = v58 & 0xFFFFFFFFFFFFFF8;
    v62 = 1;
    v63 = v58;
    v191 = v58 & 0xC000000000000001;
    while (1)
    {
      v64 = v62;
      v204 = v60;
      if (v61)
      {
        v65 = MEMORY[0x18D00E9C0](result, v63);
      }

      else
      {
        if (result >= *(v190 + 16))
        {
          goto LABEL_151;
        }

        v65 = *(v189 + 8 * result);
      }

      v66 = *(v65 + 32);
      v67 = *(v65 + 48);
      v68 = *(v65 + 64);
      v249 = *(v65 + 80);
      v248[3] = v68;
      v248[2] = v67;
      v248[1] = v66;
      v248[0] = *(v65 + 16);
      v69 = *(v65 + 48);
      v246 = *(v65 + 64);
      v247 = v249;
      v70 = *(v65 + 16);
      v244 = *(v65 + 32);
      v245 = v69;
      v243 = v70;
      swift_beginAccess();
      v71 = *(v65 + 96);
      if (v71 >> 62)
      {
        break;
      }

      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v203 = v64;
      if (v72)
      {
        goto LABEL_45;
      }

LABEL_88:
      outlined init with copy of ScrapeableContent.Item(v248, &v222);

      v119 = v4;
LABEL_89:
      v225 = v246;
      v226 = v247;
      v223 = v244;
      v224 = v245;
      v222 = v243;
      v60 = v204;
      v250 = v204;
      v121 = *(v204 + 16);
      v120 = *(v204 + 24);
      v63 = v202;
      if (v121 >= v120 >> 1)
      {
        v126 = v119;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
        v119 = v126;
        v63 = v202;
        v60 = v250;
      }

      *(v60 + 16) = v121 + 1;
      v122 = v60 + 88 * v121;
      *(v122 + 32) = v222;
      v123 = v223;
      v124 = v224;
      v125 = v226;
      *(v122 + 80) = v225;
      *(v122 + 96) = v125;
      *(v122 + 48) = v123;
      *(v122 + 64) = v124;
      *(v122 + 112) = v119;
      if (v203 == v208)
      {
        v127 = v60;

        v128 = v127;
        goto LABEL_98;
      }

      result = v203;
      v62 = v203 + 1;
      v61 = v191;
      if (__OFADD__(v203, 1))
      {
        goto LABEL_145;
      }
    }

    v72 = __CocoaSet.count.getter();
    v203 = v64;
    if (!v72)
    {
      goto LABEL_88;
    }

LABEL_45:
    v213 = v72;
    outlined init with copy of ScrapeableContent.Item(v248, &v222);
    v242 = v4;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v213 & ~(v213 >> 63), 0);
    if (v213 < 0)
    {
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v73 = 0;
    v74 = v242;
    v211 = v71;
    v212 = v71 & 0xC000000000000001;
    v209 = v71 + 32;
    v210 = v71 & 0xFFFFFFFFFFFFFF8;
    v75 = 1;
    while (1)
    {
      v76 = v75;
      v215 = v74;
      if (v212)
      {
        v77 = MEMORY[0x18D00E9C0](v73, v211);
      }

      else
      {
        if (v73 >= *(v210 + 16))
        {
          goto LABEL_142;
        }

        v77 = *(v209 + 8 * v73);
      }

      v78 = *(v77 + 32);
      v79 = *(v77 + 48);
      v80 = *(v77 + 80);
      v241[3] = *(v77 + 64);
      v241[4] = v80;
      v241[1] = v78;
      v241[2] = v79;
      v81 = *(v77 + 16);
      v240 = v80;
      v241[0] = v81;
      v82 = *(v77 + 64);
      v238 = *(v77 + 48);
      v239 = v82;
      v83 = *(v77 + 32);
      v236 = *(v77 + 16);
      v237 = v83;
      swift_beginAccess();
      v2 = *(v77 + 96);
      if (!(v2 >> 62))
      {
        v84 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v214 = v76;
        if (v84)
        {
          break;
        }

        goto LABEL_79;
      }

      v84 = __CocoaSet.count.getter();
      v214 = v76;
      if (v84)
      {
        break;
      }

LABEL_79:
      outlined init with copy of ScrapeableContent.Item(v241, &v222);

      v8 = v4;
LABEL_80:
      v225 = v239;
      v226 = v240;
      v223 = v237;
      v224 = v238;
      v222 = v236;
      v74 = v215;
      v242 = v215;
      v113 = *(v215 + 16);
      v112 = *(v215 + 24);
      if (v113 >= v112 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1);
        v74 = v242;
      }

      *(v74 + 16) = v113 + 1;
      v114 = v74 + 88 * v113;
      *(v114 + 32) = v222;
      v115 = v223;
      v116 = v224;
      v117 = v226;
      *(v114 + 80) = v225;
      *(v114 + 96) = v117;
      *(v114 + 48) = v115;
      *(v114 + 64) = v116;
      *(v114 + 112) = v8;
      if (v214 == v213)
      {
        v118 = v74;

        v119 = v118;
        goto LABEL_89;
      }

      v73 = v214;
      v75 = v214 + 1;
      if (__OFADD__(v214, 1))
      {
        __break(1u);
        goto LABEL_141;
      }
    }

    outlined init with copy of ScrapeableContent.Item(v241, &v222);
    v235 = v4;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84 & ~(v84 >> 63), 0);
    if (v84 < 0)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v173 = __CocoaSet.count.getter();
      v1 = v198;
      v3 = v173;
      continue;
    }

    break;
  }

  v85 = 0;
  v8 = v235;
  v218 = v2;
  v219 = v2 & 0xC000000000000001;
  v216 = v2 + 32;
  v217 = v84;
  while (1)
  {
    v221 = v85;
    if (v219)
    {
      v86 = MEMORY[0x18D00E9C0]();
    }

    else
    {
      v86 = *(v216 + 8 * v85);
    }

    v87 = *(v86 + 32);
    v88 = *(v86 + 48);
    v89 = *(v86 + 80);
    v234[3] = *(v86 + 64);
    v234[4] = v89;
    v234[1] = v87;
    v234[2] = v88;
    v90 = *(v86 + 16);
    v233 = v89;
    v234[0] = v90;
    v91 = *(v86 + 64);
    v231 = *(v86 + 48);
    v232 = v91;
    v92 = *(v86 + 32);
    v229 = *(v86 + 16);
    v230 = v92;
    swift_beginAccess();
    v93 = *(v86 + 96);
    v94 = v93 >> 62 ? __CocoaSet.count.getter() : *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v94)
    {
      break;
    }

    outlined init with copy of ScrapeableContent.Item(v234, &v222);

    v96 = v4;
LABEL_73:
    v225 = v232;
    v226 = v233;
    v223 = v230;
    v224 = v231;
    v222 = v229;
    v235 = v8;
    v106 = *(v8 + 16);
    v105 = *(v8 + 24);
    v107 = v221;
    if (v106 >= v105 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
      v107 = v221;
      v8 = v235;
    }

    v85 = v107 + 1;
    *(v8 + 16) = v106 + 1;
    v108 = v8 + 88 * v106;
    *(v108 + 32) = v222;
    v109 = v223;
    v110 = v224;
    v111 = v226;
    *(v108 + 80) = v225;
    *(v108 + 96) = v111;
    *(v108 + 48) = v109;
    *(v108 + 64) = v110;
    *(v108 + 112) = v96;
    if (v85 == v84)
    {

      goto LABEL_80;
    }
  }

  outlined init with copy of ScrapeableContent.Item(v234, &v222);
  v228 = v4;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 & ~(v94 >> 63), 0);
  if (v94 < 0)
  {
    __break(1u);
    goto LABEL_140;
  }

  v220 = v8;
  v95 = 0;
  v96 = v228;
  v4 = v93 & 0xC000000000000001;
  v2 = v94 - 1;
  if ((v93 & 0xC000000000000001) != 0)
  {
LABEL_63:
    v97 = MEMORY[0x18D00E9C0](v95, v93);
    goto LABEL_66;
  }

  while (v95 < *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_66:
    ScrapedContentTree.Node<A>.init(_:)(v97, &v222);
    v228 = v96;
    v99 = *(v96 + 16);
    v98 = *(v96 + 24);
    if (v99 >= v98 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
      v96 = v228;
    }

    *(v96 + 16) = v99 + 1;
    v100 = v96 + 88 * v99;
    v101 = v223;
    *(v100 + 32) = v222;
    *(v100 + 48) = v101;
    v102 = v224;
    v103 = v225;
    v104 = v226;
    *(v100 + 112) = v227;
    *(v100 + 80) = v103;
    *(v100 + 96) = v104;
    *(v100 + 64) = v102;
    if (v2 == v95)
    {

      v4 = MEMORY[0x1E69E7CC0];
      v84 = v217;
      v2 = v218;
      v8 = v220;
      goto LABEL_73;
    }

    ++v95;
    if (v4)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_132:
  v8 = v4;
LABEL_133:

  v163 = *(v2 + 16);
  if (v163)
  {
    *&v280[0] = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v163, 0);
    v164 = 32;
    v165 = *&v280[0];
    do
    {
      v222 = *(v2 + v164);

      v166 = ScrapedContentTree<A>.init(_:)(&v222);
      *&v280[0] = v165;
      v169 = *(v165 + 16);
      v168 = *(v165 + 24);
      if (v169 >= v168 >> 1)
      {
        v171 = v166;
        v172 = v167;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v169 + 1, 1);
        v167 = v172;
        v166 = v171;
        v165 = *&v280[0];
      }

      *(v165 + 16) = v169 + 1;
      v170 = v165 + 16 * v169;
      *(v170 + 32) = v166;
      *(v170 + 40) = v167;
      v164 += 16;
      --v163;
    }

    while (v163);
  }

  return v8;
}

uint64_t IntelligenceElement.init<A, B>(content:context:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a5;
  v44 = a2;
  v42 = a8;
  v39 = type metadata accessor for IntelligenceElement.Content();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IntelligenceElement();
  v41 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a3;
  type metadata accessor for ScrapedContentTree.Node(255, a4, v17, v18);
  v19 = type metadata accessor for Array();

  v20 = MEMORY[0x1E69E6328];
  swift_getWitnessTable(MEMORY[0x1E69E6328], v19);
  v21 = Sequence.compactMap<A>(_:)();

  v55 = v44;
  v45 = a4;
  v46 = v43;
  v47 = a6;
  v48 = a7;
  v49 = a3;
  type metadata accessor for ScrapedContentTree(255, a4, v22, v23);
  v24 = type metadata accessor for Array();

  swift_getWitnessTable(v20, v24);
  v25 = Sequence.compactMap<A>(_:)();
  swift_bridgeObjectRelease_n();

  v27 = *(v25 + 16);
  v28 = *(v21 + 16);
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (!v29)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30 & ~(v30 >> 63), 0, MEMORY[0x1E69E7CC0]);
    specialized Array.append<A>(contentsOf:)(v21, v31);
    specialized Array.append<A>(contentsOf:)(v25);
    v32 = v55[2];
    if (v32 == 1)
    {
      v33 = v41;
      v34 = v40;
      (*(v41 + 16))(v40, v55 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v15);
    }

    else
    {
      v33 = v41;
      v34 = v40;
      if (!v32)
      {

        v35 = 1;
        v36 = v42;
        return (*(v33 + 56))(v36, v35, 1, v15);
      }

      specialized Sequence<>.reduceBoundingBox(_:)(v55, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
      (*(v37 + 104))(v38, *MEMORY[0x1E69DBBC0], v39);
      IntelligenceElement.init(boundingBox:visibleRect:content:subelements:)();
    }

    v36 = v42;
    (*(v33 + 32))(v42, v34, v15);
    v35 = 0;
    return (*(v33 + 56))(v36, v35, 1, v15);
  }

  __break(1u);
  return result;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV7SwiftUIE4node7contextAcD18ScrapedContentTreeV4NodeVyx_G_AD0C7ContextVyq_GtAD0iJ5ErrorOYKcAD0cD11ConvertibleRzAD0C4HostR_r0_lufC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a7;
  v71 = a6;
  v73 = a3;
  v62 = a8;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v59 - v13;
  v14 = type metadata accessor for IntelligenceCollectionRequest();
  v15 = *(v14 - 8);
  v63 = v14;
  v64 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IntelligenceElement();
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  v27 = *(a5 + 16);
  v28 = a2;
  v29 = a2;
  v30 = v70;
  v72 = a1;
  v31 = a5;
  v27(v29, a4, v71, &v75, v73, a5, v24);
  if (v30)
  {
    v32 = v75;

LABEL_14:
    v56 = type metadata accessor for ScrapedContentTree.Node(0, v73, v33, v34);
    result = (*(*(v56 - 8) + 8))(v72, v56);
    *v69 = v32;
    return result;
  }

  v59 = 0;
  v35 = v66;
  v70 = a4;
  v60 = v22;
  v36 = v31;
  v61 = v19;
  IntelligenceElement.boundingBox.getter();
  v77 = CGRectIntersection(v76, *v28);
  v39 = v28;
  if (CGRectIsEmpty(v77))
  {
    IntelligenceContext.request.getter();
    v40 = IntelligenceCollectionRequest.includeVisibleElementsOnly.getter();
    (*(v64 + 8))(v35, v63);
    if (v40)
    {
      v74[0] = 0;
      lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
      swift_willThrowTypedImpl();

      (*(v67 + 8))(v26, v68);
LABEL_13:
      v32 = 0;
      goto LABEL_14;
    }
  }

  v41 = v73;
  v66 = type metadata accessor for ScrapedContentTree.Node(0, v73, v37, v38);
  v42 = v36;
  v43 = (*(v36 + 24))(*(v72 + *(v66 + 7)), v28, v41, v70, v36, v71, v41, v36);
  v44 = v43;
  v45 = *(v43 + 16);
  v46 = v67;
  v47 = v61;
  if (v45)
  {
    v48 = *(v67 + 16);
    v47 = v60;
    v48(v60, v43 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v68);
    if (v45 == 1 && ((*(v42 + 32))(v26, v47, v73, v42) & 1) != 0)
    {

      v49 = v68;
      v48(v62, v47, v68);
      v46 = v67;
      goto LABEL_16;
    }

    v46 = v67;
    (*(v67 + 8))(v47, v68);
    v47 = v61;
  }

  v50 = IntelligenceElement.subelements.modify();
  specialized Array.append<A>(contentsOf:)(v44);
  v50(v74, 0);
  IntelligenceElement.boundingBox.getter();
  specialized Sequence<>.reduceBoundingBox(_:)(v44, v51, v52, v53, v54);

  IntelligenceElement.boundingBox.setter();
  v55 = v65;
  IntelligenceElement.pruned()();
  v49 = v68;
  if ((*(v46 + 48))(v55, 1, v68) == 1)
  {
    outlined destroy of IntelligenceElement?(v55, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
    v74[0] = 0;
    lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
    swift_willThrowTypedImpl();

    (*(v46 + 8))(v26, v49);
    goto LABEL_13;
  }

  (*(v46 + 32))(v47, v55, v49);
  (*(v46 + 16))(v62, v47, v49);
LABEL_16:
  IntelligenceElement.finalize()();

  v58 = *(v46 + 8);
  v58(v47, v49);
  v58(v26, v49);
  return (*(*(v66 - 1) + 8))(v72);
}

uint64_t closure #2 in IntelligenceElement.init<A, B>(content:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a2 + 32);

  v16 = v15;

  return IntelligenceElement.init<A, B>(content:context:)(v13, v14, a2, a3, a4, a5, a6, a7);
}

uint64_t IntelligenceElement.finalize()()
{
  v1 = MEMORY[0x1E69E6720];
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v71 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v62[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v62[-v7];
  v96 = type metadata accessor for IntelligenceElement();
  v70 = *(v96 - 8);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v77 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for (offset: Int, element: IntelligenceElement)(0, v8);
  v11 = v10;
  v91 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for (offset: Int, element: IntelligenceElement)?, type metadata accessor for (offset: Int, element: IntelligenceElement), v1);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62[-v17];
  v19 = type metadata accessor for IndexSet();
  v69 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v62[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for IntelligenceElement.Button();
  v94 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for IntelligenceElement.Content();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v62[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v62[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v62[-v30];
  IntelligenceElement.content.getter();
  v81 = *(v25 + 88);
  v82 = v25 + 88;
  v32 = v81(v31, v24);
  if (v32 != *MEMORY[0x1E69DBBD8])
  {
    return (*(v25 + 8))(v31, v24);
  }

  v63 = v32;
  v67 = v19;
  v64 = v25;
  (*(v25 + 96))(v31, v24);
  v33 = *(v94 + 32);
  v95 = v23;
  v66 = v21;
  v33(v23, v31, v21);
  v34 = v78;
  IndexSet.init()();
  v65 = v0;
  result = IntelligenceElement.subelements.getter();
  v36 = 0;
  v83 = result;
  v37 = *(result + 16);
  v38 = v70;
  v85 = (v70 + 16);
  v39 = v91;
  v91 += 6;
  v92 = (v39 + 7);
  v88 = (v70 + 32);
  v89 = (v70 + 8);
  v80 = *MEMORY[0x1E69DBBC8];
  v74 = *MEMORY[0x1E69DBBD0];
  v76 = (v70 + 48);
  v72 = (v70 + 56);
  v79 = (v25 + 8);
  v40 = v77;
  v86 = v15;
  v87 = v24;
  for (i = v37; ; v37 = i)
  {
    if (v36 == v37)
    {
      v41 = 1;
      v36 = v37;
      v43 = v94;
      v42 = v95;
    }

    else
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v43 = v94;
      v42 = v95;
      if (v36 >= *(v83 + 16))
      {
        goto LABEL_31;
      }

      v44 = v83 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36;
      v45 = *(v11 + 48);
      v46 = v84;
      *v84 = v36;
      (*(v38 + 16))(&v46[v45], v44, v96);
      v47 = v46;
      v15 = v86;
      outlined init with take of (offset: Int, element: IntelligenceElement)(v47, v86, type metadata accessor for (offset: Int, element: IntelligenceElement));
      v41 = 0;
      ++v36;
    }

    (*v92)(v15, v41, 1, v11);
    outlined init with take of (offset: Int, element: IntelligenceElement)?(v15, v18);
    if ((*v91)(v18, 1, v11) == 1)
    {
      break;
    }

    v48 = *v18;
    v49 = v96;
    (*v88)(v40, v18 + *(v11 + 48), v96);
    if (IndexSet.count.getter() >= 2)
    {
      result = (*v89)(v40, v49);
      continue;
    }

    v50 = v93;
    IntelligenceElement.content.getter();
    v51 = v87;
    v52 = v81(v50, v87);
    if (v52 == v80)
    {
      v53 = v75;
      IntelligenceElement.Button.title.getter();
      v54 = v96;
      if ((*v76)(v53, 1, v96) == 1)
      {
        outlined destroy of IntelligenceElement?(v53, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
        v55 = v73;
        v56 = v77;
        (*v85)(v73, v77, v54);
        (*v72)(v55, 0, 1, v54);
        v40 = v56;
        IntelligenceElement.Button.title.setter();
        v34 = v78;
        IndexSet.insert(_:)(v48);
        (*v89)(v56, v54);
LABEL_23:
        v15 = v86;
        v51 = v87;
        goto LABEL_24;
      }

      v40 = v77;
      (*v89)(v77, v54);
LABEL_22:
      outlined destroy of IntelligenceElement?(v53, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
      v34 = v78;
      goto LABEL_23;
    }

    if (v52 == v74)
    {
      v53 = v71;
      IntelligenceElement.Button.image.getter();
      v57 = v96;
      if ((*v76)(v53, 1, v96) == 1)
      {
        outlined destroy of IntelligenceElement?(v53, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
        v58 = v73;
        (*v85)(v73, v77, v57);
        (*v72)(v58, 0, 1, v57);
        v40 = v77;
        IntelligenceElement.Button.image.setter();
        v34 = v78;
        IndexSet.insert(_:)(v48);
        (*v89)(v40, v57);
        goto LABEL_23;
      }

      (*v89)(v40, v57);
      goto LABEL_22;
    }

    (*v89)(v40, v96);
LABEL_24:
    result = (*v79)(v93, v51);
  }

  if (IndexSet.isEmpty.getter())
  {
    (*(v69 + 8))(v34, v67);
    return (*(v43 + 8))(v42, v66);
  }

  else
  {
    v59 = v68;
    v60 = v66;
    (*(v43 + 16))(v68, v42, v66);
    (*(v64 + 104))(v59, v63, v87);
    IntelligenceElement.content.setter();
    v61 = IntelligenceElement.subelements.modify();
    type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for [IntelligenceElement], MEMORY[0x1E69DBC20], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [IntelligenceElement] and conformance [A](&lazy protocol witness table cache variable for type [IntelligenceElement] and conformance [A], MEMORY[0x1E69E6318]);
    lazy protocol witness table accessor for type [IntelligenceElement] and conformance [A](&lazy protocol witness table cache variable for type [IntelligenceElement] and conformance [A], MEMORY[0x1E69E6348]);
    RangeReplaceableCollection<>.remove(atOffsets:)();
    v61(v97, 0);
    (*(v69 + 8))(v34, v67);
    return (*(v43 + 8))(v42, v60);
  }
}

uint64_t IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:)(uint64_t a1, __int128 *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v77 = a7;
  v76 = a6;
  v78 = a5;
  v79 = a4;
  v74 = type metadata accessor for IntelligenceAppIntentsRequest();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = v18;
  v71 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v73 = v65 - v20;
  type metadata accessor for IntelligenceAppIntentsPayload?(0);
  v67 = *(v21 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v69 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v80 = v65 - v24;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement.LoadableValue<IntelligenceAppIntentsPayload?>, type metadata accessor for IntelligenceAppIntentsPayload?, MEMORY[0x1E69DBAA8]);
  v68 = v25;
  v66 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v65 - v26;
  v28 = type metadata accessor for IntelligenceAppIntentsPayload();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2[3];
  v93 = a2[2];
  v94 = v32;
  v95 = a2[4];
  v33 = a2[1];
  v91 = *a2;
  v92 = v33;
  v81 = a1;
  outlined init with copy of Any(a1, v90);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for IntelligenceAppIntentsPayloadProviding, MEMORY[0x1E69DBD10]);
  if (swift_dynamicCast())
  {
    v75 = a3;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v87, &v82);
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    v34 = dispatch thunk of IntelligenceAppIntentsPayloadProviding.intelligenceAppIntentsPayload()();
    v36 = v79;
    if (v35 >> 60 != 15)
    {
      v37 = v34;
      v38 = v35;
      outlined copy of Data._Representation(v34, v35);
      IntelligenceAppIntentsPayload.init(data:debugDescription:)();
      if (IntelligenceAppIntentsRequest.includeDebugDescription.getter())
      {
        v65[1] = v84;
        __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
        v36 = v79;
        dispatch thunk of IntelligenceAppIntentsPayloadProviding.intelligenceAppIntentsPayloadDebugDescription()();
        IntelligenceAppIntentsPayload.debugDescription.setter();
      }

      v39 = v80;
      (*(v29 + 16))(v80, v31, v28);
      (*(v29 + 56))(v39, 0, 1, v28);
      IntelligenceElement.LoadableValue.init(_:)();
      IntelligenceElement.loadableAppIntentsPayload.setter();
      v40 = outlined consume of Data?(v37, v38);
      (*(v29 + 8))(v31, v28, v40);
    }

    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    if (dispatch thunk of IntelligenceAppIntentsPayloadProviding.intelligenceNeedsAppIntentsPayloadFetch(request:)())
    {
      IntelligenceElement.loadableAppIntentsPayload.getter();
      v41 = v80;
      v42 = v68;
      IntelligenceElement.LoadableValue.value.getter();
      (*(v66 + 8))(v27, v42);
      v79 = "implement or don't call me!";
      v43 = type metadata accessor for DispatchTime();
      v44 = v73;
      (*(*(v43 - 8) + 56))(v73, 1, 1, v43);
      v45 = v36;
      outlined init with copy of _Benchmark(&v82, &v87);
      v46 = v72;
      v47 = v71;
      v48 = v74;
      (*(v72 + 16))(v71, v45, v74);
      v49 = v69;
      outlined init with copy of IntelligenceAppIntentsPayload?(v41, v69);
      v50 = (*(v46 + 80) + 56) & ~*(v46 + 80);
      v51 = (v70 + *(v67 + 80) + v50) & ~*(v67 + 80);
      v52 = swift_allocObject();
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v87, v52 + 16);
      (*(v46 + 32))(v52 + v50, v47, v48);
      outlined init with take of (offset: Int, element: IntelligenceElement)(v49, v52 + v51, type metadata accessor for IntelligenceAppIntentsPayload?);
      v53 = IntelligenceElement.loadableAppIntentsPayload.modify();
      IntelligenceElement.LoadableValue.loadUsingDetachedTask(for:description:deadline:loadHandler:)();
      outlined destroy of IntelligenceElement?(v44, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8]);
      v53(&v87, 0);
      outlined destroy of IntelligenceAppIntentsPayload?(v80, type metadata accessor for IntelligenceAppIntentsPayload?);
    }

    __swift_destroy_boxed_opaque_existential_1(&v82);
  }

  else
  {
    v89 = 0;
    v88 = 0u;
    v87 = 0u;
    outlined destroy of Any?(&v87, &lazy cache variable for type metadata for IntelligenceAppIntentsPayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsPayloadProviding, MEMORY[0x1E69DBD10], type metadata accessor for IntelligenceSubelementProviding?);
  }

  outlined init with copy of Any(v81, v90);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for IntelligenceSubelementProviding, MEMORY[0x1E69DBD00]);
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v82, &v87);
    v84 = v93;
    v85 = v94;
    v86 = v95;
    v83 = v92;
    v82 = v91;
    ScrapeableContent.Item.size.getter();
    v55 = v54;
    v57 = v56;
    v84 = v93;
    v85 = v94;
    v86 = v95;
    v83 = v92;
    v82 = v91;
    v58 = v77;
    v59 = v76;
    v60 = v78;
    v96.origin.x = ViewRendererHost.convert(_:to:)(&v82, v76, *(v77 + 8), a8, a9, a10, a11);
    v97.origin.x = 0.0;
    v97.origin.y = 0.0;
    v97.size.width = v55;
    v97.size.height = v57;
    CGRectIntersection(v96, v97);
    __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
    dispatch thunk of IntelligenceSubelementProviding.intelligenceSubelements(for:in:bounds:)();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v65[-4] = v59;
    v65[-3] = v58;
    v65[-2] = v60;
    v65[-1] = &v91;
    v62 = Array<A>.recursiveMap<A>(_:transform:)();

    v63 = IntelligenceElement.subelements.modify();
    specialized Array.append<A>(contentsOf:)(v62);
    v63(&v82, 0);
    return __swift_destroy_boxed_opaque_existential_1(&v87);
  }

  else
  {
    *&v84 = 0;
    v83 = 0u;
    v82 = 0u;
    return outlined destroy of Any?(&v82, &lazy cache variable for type metadata for IntelligenceSubelementProviding?, &lazy cache variable for type metadata for IntelligenceSubelementProviding, MEMORY[0x1E69DBD00], type metadata accessor for IntelligenceSubelementProviding?);
  }
}

uint64_t closure #1 in IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:), 0, 0);
}

uint64_t closure #1 in IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:)()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = closure #1 in IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return MEMORY[0x1EEE4BDC0](v7, v5, v6, v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double ViewRendererHost.convert(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v21 = 2;
  (*(*(a3 + 8) + 8))(a2);
  ViewGraph.transform.getter();

  v14 = *(&v18 + 1);
  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v19);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  LOBYTE(v14) = 2;
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v10;

  CGRect.convert(from:transform:)();

  outlined destroy of CoordinateSpace(v12);
  return v22;
}

double ViewRendererHost.convert(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  *&v15 = 0;
  v13 = 0u;
  v14 = 0u;
  BYTE8(v15) = 2;
  *&v19 = v10;
  *(&v19 + 1) = v9;
  v11 = *(a1 + 64);
  v20 = *(a1 + 48);
  v21 = v11;

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(&v13);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v18 = 2;
  (*(*(a3 + 8) + 8))(a2);
  ViewGraph.transform.getter();

  v13 = v19;
  v14 = v20;
  v15 = v21;
  CGRect.convert(from:transform:)();

  outlined destroy of CoordinateSpace(v16);
  return v22;
}

void ScrapeableContent.Item.boundingBox<A>(in:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  if (v8 >> 60 == 2)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      [a1 convertPoint:v10 fromCoordinateSpace:?];
      [v10 bounds];
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  v18 = v7;
  v19 = v8;
  v11 = *(v3 + 2);
  v20 = *(v3 + 1);
  v21 = v11;
  v12 = *(v3 + 4);
  v22 = *(v3 + 3);
  v23 = v12;
  ScrapeableContent.Item.size.getter();
  v14 = v13;
  v18 = v7;
  v19 = v8;
  v15 = *(v3 + 2);
  v20 = *(v3 + 1);
  v21 = v15;
  v16 = *(v3 + 4);
  v22 = *(v3 + 3);
  v23 = v16;
  ViewRendererHost.convert(_:from:)(&v18, a2, *(a3 + 8), 0.0, 0.0, v17, v14);
}

void _s7SwiftUI17ScrapeableContentV4ItemVAAE11makeElement2in21UIIntelligenceSupport012IntelligenceG0VAA0K7ContextVyxG_tAA07ScrapedD5ErrorOYKAA0K4HostRzlF(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v7 = v6;
  v60 = a3;
  v11 = type metadata accessor for IntelligenceElement();
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntelligenceElement.Content();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - v19;
  v21 = *v7;
  v22 = v7[1];
  v23 = *(v7 + 2);
  v56 = *(v7 + 1);
  v57 = v23;
  v24 = *(v7 + 4);
  v58 = *(v7 + 3);
  v59 = v24;
  if (v22 >> 60 == 8)
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v26 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    outlined copy of Data._Representation(v25, v26);
    v27 = v48;
    _s7SwiftUI17ScrapeableContentV4ItemVAAE27archivedIntelligenceElement4from7context21UIIntelligenceSupport0gH0V10Foundation4DataV_AA0G7ContextVyxGtAA07ScrapedD5ErrorOYKAA0G4HostRzlF(v25, v26, a1, a2, v60, &v49, a5);
    if (!v27)
    {
      outlined consume of Data._Representation(v25, v26);
      return;
    }

    LOBYTE(v21) = v49;
    outlined consume of Data._Representation(v25, v26);
    goto LABEL_9;
  }

  v42 = v18;
  v44 = v17;
  v43 = v11;
  v41 = a5;
  v50 = v21;
  v51 = v22;
  v28 = *(v7 + 2);
  v52 = *(v7 + 1);
  v53 = v28;
  v29 = *(v7 + 4);
  v54 = *(v7 + 3);
  v55 = v29;
  v30 = a2;
  v31 = a2;
  v32 = v60;
  ScrapeableContent.Item.boundingBox<A>(in:)(*(a1 + 32), v31, v60);
  v50 = v21;
  v51 = v22;
  v33 = *(v7 + 2);
  v52 = *(v7 + 1);
  v53 = v33;
  v34 = *(v7 + 4);
  v54 = *(v7 + 3);
  v55 = v34;
  v35 = v48;
  _s7SwiftUI17ScrapeableContentV4ItemVAAE7content2in21UIIntelligenceSupport19IntelligenceElementV0D0OAA0J7ContextVyxG_tAA07ScrapedD5ErrorOYKAA0J4HostRzlF(a1, &v49, v20);
  if (v35)
  {
    LOBYTE(v21) = v49;
LABEL_9:
    *v47 = v21;
    return;
  }

  v36 = v42;
  v37 = *(v42 + 16);
  v48 = 0;
  v37(v15, v20, v44);
  v38 = v45;
  IntelligenceElement.init(boundingBox:visibleRect:content:subelements:)();
  v50 = v21;
  v51 = v22;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  v55 = v59;
  v39 = v48;
  _s7SwiftUI17ScrapeableContentV4ItemVAAE15populateElement_7contexty21UIIntelligenceSupport012IntelligenceG0Vz_AA0K7ContextVyxGtAA07ScrapedD5ErrorOYKAA0K4HostRzlF(v38, a1, v30, v32);
  if (v39)
  {
    (*(v46 + 8))(v38, v43);
    (*(v36 + 8))(v20, v44);
    goto LABEL_9;
  }

  (*(v36 + 8))(v20, v44);
  (*(v46 + 32))(v41, v38, v43);
}

void _s7SwiftUI17ScrapeableContentV4ItemVAAE27archivedIntelligenceElement4from7context21UIIntelligenceSupport0gH0V10Foundation4DataV_AA0G7ContextVyxGtAA07ScrapedD5ErrorOYKAA0G4HostRzlF(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a6;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v26 - v15;
  outlined copy of Data._Representation(a1, a2);
  ProtobufDecoder.init(_:)();
  ArchivedIntelligenceContent.init(from:)(&v28, v27);
  if (v7)
  {
  }

  else
  {
    v26[0] = a7;
    v26[1] = 0;
    v17 = v27[1];
    v18 = v27[2];
    v19 = *(a3 + 32);
    v20 = type metadata accessor for ArchivableScrapedItem(0);
    v21 = v19;

    IntelligenceElement.init<A, B>(content:context:)(v17, v18, a3, v20, a4, &protocol witness table for ArchivableScrapedItem, a5, v16);
    v22 = type metadata accessor for IntelligenceElement();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v16, 1, v22) != 1)
    {
      v25 = v28;

      (*(v23 + 32))(v26[0], v16, v22);
      return;
    }

    outlined destroy of IntelligenceElement?(v16, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
  }

  LOBYTE(v27[0]) = 0;
  lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
  swift_willThrowTypedImpl();
  v24 = v28;

  *v29 = 0;
}

void _s7SwiftUI17ScrapeableContentV4ItemVAAE7content2in21UIIntelligenceSupport19IntelligenceElementV0D0OAA0J7ContextVyxG_tAA07ScrapedD5ErrorOYKAA0J4HostRzlF(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v150 = a2;
  v151 = a3;
  v5 = type metadata accessor for IntelligenceElement.ControlEnablement();
  v148 = *(v5 - 1);
  v149 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v147 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for IntelligenceElement.Button.Role();
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v145 = &v124 - v9;
  v10 = MEMORY[0x1E69E6720];
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v141 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v124 - v14;
  v142 = type metadata accessor for IntelligenceElement.Button();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v138 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for IntelligenceFragment.RemoteContext();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v134 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v124 - v18;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceImage?, MEMORY[0x1E69DB9D8], v10);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v124 - v20;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceCollectionRequest.TextOptions?, MEMORY[0x1E69DBCF8], v10);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v131 = &v124 - v23;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement.Text.Editable?, MEMORY[0x1E69DBB50], v10);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v130 = &v124 - v25;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848], v10);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v124 - v27;
  v29 = type metadata accessor for ScrapedTextProperties(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v127 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for AttributedString();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v125 = &v124 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v126 = &v124 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v128 = &v124 - v37;
  v38 = type metadata accessor for IntelligenceCollectionRequest();
  v39 = *(v38 - 8);
  v153 = v38;
  v154 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v3 + 8);
  IntelligenceFragmentCollector.context.getter();
  __swift_project_boxed_opaque_existential_1(&aBlock, v158);
  v161 = v41;
  v43 = v42;
  dispatch thunk of IntelligenceCollectionContext.request.getter();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v44 = v42 >> 60;
  if ((v42 >> 60) > 4)
  {
    if (v44 <= 6)
    {
      v45 = v161;
      if (v44 == 5)
      {
        if (*((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10) < 0.001)
        {
          LOBYTE(aBlock) = 0;
          lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();

LABEL_21:
          swift_willThrowTypedImpl();
          (*(v154 + 8))(v45, v153);
          v55 = v43;
LABEL_22:
          outlined consume of ScrapeableContent.Content(v55);
LABEL_23:
          v50 = 0;
          goto LABEL_24;
        }

        v90 = *(v154 + 8);

        v90(v45, v153);
        v91 = *MEMORY[0x1E69DBBC0];
        v92 = type metadata accessor for IntelligenceElement.Content();
        (*(*(v92 - 8) + 104))(v151, v91, v92);
LABEL_39:
        v67 = v43;
        goto LABEL_40;
      }
    }

    else
    {
      if (v44 == 7)
      {
        v56 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v57 = type metadata accessor for IntelligenceElement();
        v58 = *(*(v57 - 8) + 56);
        v59 = v43;
        v58(v139, 1, 1, v57);
        v58(v141, 1, 1, v57);
        v60 = v144;
        v61 = v143;
        v62 = v146;
        (*(v144 + 104))(v143, **(&unk_1E72378F8 + v56), v146);
        (*(v60 + 32))(v145, v61, v62);
        (*(v148 + 104))(v147, *MEMORY[0x1E69DBAB8], v149);

        v63 = v138;
        IntelligenceElement.Button.init(title:image:role:enablement:)();
        (*(v154 + 8))(v161, v153);
        v64 = v151;
        (*(v140 + 32))(v151, v63, v142);
        v65 = *MEMORY[0x1E69DBBD8];
        v66 = type metadata accessor for IntelligenceElement.Content();
        (*(*(v66 - 8) + 104))(v64, v65, v66);
        v67 = v59;
        goto LABEL_40;
      }

      if (v44 == 8)
      {
        v50 = 2;
        LOBYTE(aBlock) = 2;
        lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();

        swift_willThrowTypedImpl();
        (*(v154 + 8))(v161, v153);
        goto LABEL_12;
      }

      v45 = v161;
      if (v42 == 0x9000000000000000)
      {
        LOBYTE(aBlock) = 0;
        lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
        swift_willThrowTypedImpl();
        (*(v154 + 8))(v45, v153);
        goto LABEL_23;
      }
    }

LABEL_30:
    (*(v154 + 8))(v45, v153);
    v88 = *MEMORY[0x1E69DBBC0];
    v89 = type metadata accessor for IntelligenceElement.Content();
    (*(*(v89 - 8) + 104))(v151, v88, v89);
    return;
  }

  v45 = v161;
  if (v44 > 2)
  {
    goto LABEL_30;
  }

  if (!v44)
  {
    v51 = *(v42 + 56);
    v52 = *(v43 + 64);

    if ((IntelligenceCollectionRequest.includeElements.getter() & 1) == 0)
    {
      goto LABEL_20;
    }

    v53 = ResolvedStyledText.storage.getter();
    if (!v53)
    {
      goto LABEL_20;
    }

    v54 = v53;
    aBlock = v51;
    v156 = v52;
    if (EnvironmentValues.shouldRedactContent.getter())
    {

      goto LABEL_20;
    }

    swift_getKeyPath();
    type metadata accessor for IntelligenceElement.Text.Attributes();
    lazy protocol witness table accessor for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes(&lazy protocol witness table cache variable for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes, MEMORY[0x1E69DBB48], MEMORY[0x1E69DBB20]);
    v97 = v54;
    v98 = v152;
    AttributedString.init<A>(_:including:)();
    if (v98)
    {

      v99 = v132;
      v100 = v133;
      (*(v132 + 56))(v28, 1, 1, v133);
      v101 = v28;
      v102 = v99;
      outlined destroy of IntelligenceElement?(v101, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848]);
      v103 = v126;
      AttributedString.init(_:)();
      v104 = 0;
      v152 = 0;
      v105 = *(v99 + 32);
      v149 = 0;
      v150 = v105;
    }

    else
    {
      v148 = v43;
      v152 = 0;
      v106 = v132;
      v107 = v133;
      (*(v132 + 56))(v28, 0, 1, v133);
      v108 = v125;
      v150 = *(v106 + 32);
      v150(v125, v28, v107);
      v109 = *MEMORY[0x1E69DB648];
      v110 = [v97 length];
      v111 = swift_allocObject();
      *(v111 + 16) = v108;
      v112 = swift_allocObject();
      *(v112 + 16) = _s7SwiftUI17ScrapeableContentV0D0OAAE11resolveText_014resolvedStyledF011environmentAA07ScrapedF10PropertiesVAA0F0V_AA08ResolvedhF0CAA17EnvironmentValuesVtAA0jD5ErrorOYKFZyypSg_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA;
      *(v112 + 24) = v111;
      v104 = v111;
      v159 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v160 = v112;
      aBlock = MEMORY[0x1E69E9820];
      v156 = 1107296256;
      v157 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v158 = &block_descriptor_1;
      v113 = _Block_copy(&aBlock);

      [v97 enumerateAttribute:v109 inRange:0 options:v110 usingBlock:{0, v113}];

      _Block_release(v113);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return;
      }

      v103 = v126;
      v115 = v108;
      v100 = v133;
      v150(v126, v115, v133);
      v149 = _s7SwiftUI17ScrapeableContentV0D0OAAE11resolveText_014resolvedStyledF011environmentAA07ScrapedF10PropertiesVAA0F0V_AA08ResolvedhF0CAA17EnvironmentValuesVtAA0jD5ErrorOYKFZyypSg_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA;
      v43 = v148;
      v45 = v161;
      v102 = v132;
    }

    v116 = v127;
    v117 = v150;
    v150(v127, v103, v100);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v149, v104);
    v118 = v128;
    v117(v128, v116, v100);
    (*(v102 + 16))(v129, v118, v100);
    v119 = type metadata accessor for IntelligenceElement.Text.Editable();
    (*(*(v119 - 8) + 56))(v130, 1, 1, v119);
    v120 = type metadata accessor for IntelligenceCollectionRequest.TextOptions();
    (*(*(v120 - 8) + 56))(v131, 1, 1, v120);
    v121 = v151;
    IntelligenceElement.Text.init(attributedText:editable:textOptions:)();
    (*(v102 + 8))(v118, v100);
    (*(v154 + 8))(v45, v153);
    v122 = *MEMORY[0x1E69DBBC8];
    v123 = type metadata accessor for IntelligenceElement.Content();
    (*(*(v123 - 8) + 104))(v121, v122, v123);
    goto LABEL_39;
  }

  if (v44 != 1)
  {
    outlined copy of ScrapeableContent.Content(v42);
    swift_unknownObjectRetain();
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    v69 = v42;
    if (!v68)
    {
      LOBYTE(aBlock) = 0;
      lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
      swift_willThrowTypedImpl();
      swift_unknownObjectRelease();
      (*(v154 + 8))(v45, v153);
      v55 = v42;
      goto LABEL_22;
    }

    v70 = v68;
    IntelligenceFragmentCollector.context.getter();
    v71 = v45;
    __swift_project_boxed_opaque_existential_1(&aBlock, v158);
    v72 = v135;
    dispatch thunk of IntelligenceCollectionContext.createRemoteContext(description:)();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    [v70 convertRect:*(a1 + 32) fromCoordinateSpace:{*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24)}];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = v136;
    v82 = v137;
    (*(v136 + 16))(v134, v72, v137);
    v83 = objc_allocWithZone(type metadata accessor for UIIntelligenceCollectionRemoteContextWrapper());
    v84 = UIIntelligenceCollectionRemoteContextWrapper.init(remoteContext:)();
    [v70 _intelligenceCollectRemoteContentIn_remoteContextWrapper_];
    swift_unknownObjectRelease();

    (*(v154 + 8))(v71, v153);
    v85 = v151;
    (*(v81 + 32))(v151, v72, v82);
    v86 = *MEMORY[0x1E69DBBE0];
    v87 = type metadata accessor for IntelligenceElement.Content();
    (*(*(v87 - 8) + 104))(v85, v86, v87);
    v67 = v69;
LABEL_40:
    outlined consume of ScrapeableContent.Content(v67);
    return;
  }

  v46 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v48 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

  if ((IntelligenceCollectionRequest.includeElements.getter() & 1) == 0)
  {
LABEL_20:
    LOBYTE(aBlock) = 0;
    lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
    goto LABEL_21;
  }

  aBlock = v47;
  v156 = v48;
  v49 = v152;
  v50 = _s7SwiftUI17ScrapeableContentV0D0OAAE12resolveImage_11environmentAA07ScrapedF10PropertiesVAA0F0V_AA17EnvironmentValuesVtAA0hD5ErrorOYKFZTf4nnd_n(v46, &aBlock);
  if (v49)
  {
    (*(v154 + 8))(v45, v153);
LABEL_12:
    outlined consume of ScrapeableContent.Content(v43);
LABEL_24:
    *v150 = v50;
    return;
  }

  v93 = type metadata accessor for IntelligenceImage();
  (*(*(v93 - 8) + 56))(v21, 1, 1, v93);
  v94 = v151;
  IntelligenceElement.Image.init(name:textDescription:image:)();
  (*(v154 + 8))(v45, v153);
  v95 = *MEMORY[0x1E69DBBD0];
  v96 = type metadata accessor for IntelligenceElement.Content();
  (*(*(v96 - 8) + 104))(v94, v95, v96);
  outlined consume of ScrapeableContent.Content(v43);
}

uint64_t _s7SwiftUI17ScrapeableContentV4ItemVAAE15populateElement_7contexty21UIIntelligenceSupport012IntelligenceG0Vz_AA0K7ContextVyxGtAA07ScrapedD5ErrorOYKAA0K4HostRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v56 = a1;
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceUserActivity?, MEMORY[0x1E69DBC30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v10;
  v11 = type metadata accessor for IntelligenceCollectionRequest.UserActivityCollectionOption();
  v54 = *(v11 - 8);
  *&v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsRequest?, MEMORY[0x1E69DBCA8], v6);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for IntelligenceAppIntentsRequest();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IntelligenceCollectionRequest();
  v20 = *(v19 - 8);
  v57 = v19;
  v58 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4[1];
  v46 = *v4;
  v47 = a2;
  v24 = *(v4 + 2);
  v66 = *(v4 + 1);
  v67 = v24;
  v25 = *(v4 + 4);
  v68 = *(v4 + 3);
  v69 = v25;
  IntelligenceFragmentCollector.context.getter();
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  v26 = v22;
  v27 = v23;
  dispatch thunk of IntelligenceCollectionContext.request.getter();
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v28 = v23 >> 60;
  if ((v23 >> 60) <= 4)
  {
    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x130);
        v30 = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x138);
        v55 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x140);
        outlined init with copy of AccessibilityProperties((v27 & 0xFFFFFFFFFFFFFFFLL) + 16, &v60);
        outlined copy of ScrapeableContent.Content(v27);

        if (IntelligenceCollectionRequest.includeAccessibilityProperties.getter())
        {
          *&v65[0] = v29;
          *(&v65[0] + 1) = v30;
          v59 = v55;
          specialized static ScrapeableContent.Content.resolveAccessibilityProperties(_:environment:idiom:)(&v60, v65, &v59);
          IntelligenceElement.accessibilityLabel.setter();
        }

        outlined destroy of AccessibilityProperties(&v60);
        goto LABEL_17;
      }

      outlined init with copy of Any((v23 & 0xFFFFFFFFFFFFFFFLL) + 16, v65);

      IntelligenceCollectionRequest.appIntentsRequest.getter();
      v33 = v51;
      v32 = v52;
      if ((*(v51 + 48))(v15, 1, v52) == 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v65);
        (*(v58 + 8))(v26, v57);
        v34 = &lazy cache variable for type metadata for IntelligenceAppIntentsRequest?;
        v35 = MEMORY[0x1E69DBCA8];
LABEL_20:
        outlined destroy of IntelligenceElement?(v15, v34, v35);
        return outlined consume of ScrapeableContent.Content(v27);
      }

      (*(v33 + 32))(v18, v15, v32);
      *&v60 = v46;
      *(&v60 + 1) = v27;
      v61 = v66;
      v62 = v67;
      v63 = v68;
      v64 = v69;
      IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:)(v65, &v60, v26, v18, *(v47 + 32), v49, v50, *v47, *(v47 + 8), *(v47 + 16), *(v47 + 24));
      (*(v33 + 8))(v18, v32);
      __swift_destroy_boxed_opaque_existential_1(v65);
      goto LABEL_17;
    }

    return (*(v58 + 8))(v22, v57);
  }

  if (v28 > 6 || v28 == 5)
  {
    return (*(v58 + 8))(v22, v57);
  }

  v36 = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  outlined copy of ScrapeableContent.Content(v23);
  v37 = v36;
  v38 = v53;
  IntelligenceCollectionRequest.userActivities.getter();
  v40 = v54;
  v39 = v55;
  if ((*(v54 + 88))(v38, v55) != *MEMORY[0x1E69DBCB8])
  {
    (*(v58 + 8))(v26, v57);

    (*(v40 + 8))(v38, v39);
    return outlined consume of ScrapeableContent.Content(v27);
  }

  (*(v40 + 8))(v38, v39);
  v15 = v48;
  IntelligenceElement.userActivity.getter();
  v41 = type metadata accessor for IntelligenceUserActivity();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v15, 1, v41) != 1)
  {
    (*(v58 + 8))(v26, v57);

    v34 = &lazy cache variable for type metadata for IntelligenceUserActivity?;
    v35 = MEMORY[0x1E69DBC30];
    goto LABEL_20;
  }

  outlined destroy of IntelligenceElement?(v15, &lazy cache variable for type metadata for IntelligenceUserActivity?, MEMORY[0x1E69DBC30]);
  v43 = v37;
  v44 = v45;
  IntelligenceUserActivity.init(userActivity:)();
  (*(v42 + 56))(v44, 0, 1, v41);
  IntelligenceElement.userActivity.setter();

LABEL_17:
  (*(v58 + 8))(v26, v57);
  return outlined consume of ScrapeableContent.Content(v27);
}

void ScrapeableContent.Item.children<A, B>(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v112 = type metadata accessor for IntelligenceCollectionRequest();
  v118 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IntelligenceElement();
  v105 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v110 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v109 = v92 - v18;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v108 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v113 = v92 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v122 = v92 - v24;
  v27 = type metadata accessor for ScrapedContentTree.Node(0, a3, v25, v26);
  v116 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v107 = v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v121 = v92 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v117 = v92 - v34;
  if (*(v7 + 8) == 0x9000000000000008)
  {
    v92[0] = v33;
    v114 = a3;
    v125 = *v7;
    v126 = 0x9000000000000008;
    v35 = *(v7 + 32);
    v127 = *(v7 + 16);
    v128 = v35;
    v36 = *(v7 + 64);
    v129 = *(v7 + 48);
    v130 = v36;
    v104 = *(a2 + 32);
    v115 = a4;
    ScrapeableContent.Item.boundingBox<A>(in:)(v104, a4, a6);
    v132 = CGRectIntersection(v131, *a2);
    x = v132.origin.x;
    y = v132.origin.y;
    width = v132.size.width;
    height = v132.size.height;
    v120 = *(a2 + 40);
    v123[0] = a1;
    v41 = type metadata accessor for Array();

    WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6310], v41);
    MEMORY[0x18D00C6D0](&v125, v41, WitnessTable);
    v43 = v125;

    v45 = MEMORY[0x18D00CDE0](v44, v27);

    if (v45)
    {
      v46 = v45 - 1;
      v47 = v117;
      if (!__OFSUB__(v45, 1))
      {
        v48 = a5;
        v101 = (v116 + 32);
        v100 = (v105 + 56);
        v119 = (v105 + 48);
        v99 = (v105 + 32);
        v93 = (v105 + 16);
        v98 = (v105 + 8);
        v92[1] = a5 + 8;
        v97 = (v118 + 1);
        v96 = (v116 + 8);
        v118 = MEMORY[0x1E69E7CC0];
        v102 = (v116 + 16);
        v95 = (v116 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v94 = v15;
        v103 = v43;
        do
        {
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          if (IsNativeType)
          {
            v50 = v43 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v46;
            v51 = *(v116 + 16);
            v51(v47, v50, v27);
            v52 = v113;
          }

          else
          {
            v88 = _ArrayBuffer._getElementSlowPath(_:)();
            v52 = v113;
            if (v92[0] != 8)
            {
              __break(1u);
              return;
            }

            v123[0] = v88;
            v51 = *v102;
            (*v102)(v47, v123, v27);
            swift_unknownObjectRelease();
          }

          v53 = v121;
          (*v101)(v121, v47, v27);
          v54 = v107;
          v51(v107, v53, v27);
          v125 = *&x;
          v126 = *&y;
          *&v127 = width;
          *(&v127 + 1) = height;
          *&v128 = v104;
          *(&v128 + 1) = v120;
          v106 = v104;

          v55 = v122;
          _s21UIIntelligenceSupport19IntelligenceElementV7SwiftUIE4node7contextAcD18ScrapedContentTreeV4NodeVyx_G_AD0C7ContextVyq_GtAD0iJ5ErrorOYKcAD0cD11ConvertibleRzAD0C4HostR_r0_lufC(v54, &v125, v114, v115, v48, a6, &v124, v122);
          (*v100)(v55, 0, 1, v15);
          outlined init with copy of Any?(v55, v52, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], type metadata accessor for IntelligenceElement?);
          v56 = *v119;
          if ((*v119)(v52, 1, v15) == 1)
          {
            outlined destroy of IntelligenceElement?(v52, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
            v57 = v108;
          }

          else
          {
            v58 = a6;
            v59 = *v99;
            v60 = v109;
            (*v99)(v109, v52, v15);
            (*v93)(v110, v60, v15);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v118[2] + 1, 1, v118);
            }

            v62 = v118[2];
            v61 = v118[3];
            if (v62 >= v61 >> 1)
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v118);
            }

            v63 = v105;
            v64 = v94;
            (*(v105 + 8))(v109, v94);
            v65 = v118;
            v118[2] = v62 + 1;
            v66 = v65 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
            v67 = *(v63 + 72);
            v15 = v64;
            v59(&v66[v67 * v62], v110, v64);
            a6 = v58;
            v57 = v108;
          }

          outlined init with copy of Any?(v122, v57, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], type metadata accessor for IntelligenceElement?);
          v68 = v56(v57, 1, v15);
          v47 = v117;
          if (v68 == 1)
          {
            outlined destroy of IntelligenceElement?(v57, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
            v69 = v48;
            v70 = (*(v48 + 8))(v106, v115, a6, v114, v48);
            v72 = v71;
            v74 = v73;
            v76 = v75;
          }

          else
          {
            v69 = v48;
            IntelligenceElement.boundingBox.getter();
            v70 = v77;
            v72 = v78;
            v74 = v79;
            v76 = v80;
            (*v98)(v57, v15);
          }

          x = specialized static IntelligenceElement._updatedUncoveredVisibleRect<A>(_:for:in:)(x, y, width, height, v70, v72, v74, v76);
          y = v81;
          width = v82;
          height = v83;
          IntelligenceFragmentCollector.context.getter();
          __swift_project_boxed_opaque_existential_1(v123, v123[3]);
          v84 = v111;
          dispatch thunk of IntelligenceCollectionContext.request.getter();
          v85 = IntelligenceCollectionRequest.includeVisibleElementsOnly.getter();
          (*v97)(v84, v112);
          if (v85)
          {
            v133.origin.x = x;
            v133.origin.y = y;
            v133.size.width = width;
            v133.size.height = height;
            IsEmpty = CGRectIsEmpty(v133);
            outlined destroy of IntelligenceElement?(v122, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
            (*v96)(v121, v27);
            __swift_destroy_boxed_opaque_existential_1(v123);
            v43 = v103;
            if (IsEmpty || !v46)
            {
              goto LABEL_31;
            }
          }

          else
          {
            outlined destroy of IntelligenceElement?(v122, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20]);
            (*v96)(v121, v27);
            __swift_destroy_boxed_opaque_existential_1(v123);
            v43 = v103;
            if (!v46)
            {
              goto LABEL_31;
            }
          }

          v87 = __OFSUB__(v46--, 1);
          v48 = v69;
        }

        while (!v87);
      }

      __break(1u);
    }

    v118 = MEMORY[0x1E69E7CC0];
LABEL_31:

    specialized Sequence.reversed()(v118, v91);
  }

  else
  {
    v125 = a1;
    MEMORY[0x1EEE9AC00](v32);
    v92[-6] = a3;
    v92[-5] = a4;
    v92[-4] = a5;
    v92[-3] = v89;
    v92[-2] = a2;
    v90 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6328], v90);
    Sequence.compactMap<A>(_:)();
  }
}

uint64_t closure #1 in IntelligenceElement.init<A, B>(content:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = type metadata accessor for ScrapedContentTree.Node(0, a3, a3, a4);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(v19 + 16))(&v23 - v17, a1, v16);
  v20 = *(a2 + 32);

  _s21UIIntelligenceSupport19IntelligenceElementV7SwiftUIE4node7contextAcD18ScrapedContentTreeV4NodeVyx_G_AD0C7ContextVyq_GtAD0iJ5ErrorOYKcAD0cD11ConvertibleRzAD0C4HostR_r0_lufC(v18, a2, a3, a4, a5, a6, &v24, a7);
  v21 = type metadata accessor for IntelligenceElement();
  return (*(*(v21 - 8) + 56))(a7, v7 != 0, 1, v21);
}

uint64_t ScrapeableContent.Item.coalesceElement(_:into:)(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v3 = type metadata accessor for IntelligenceElement.Content();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceUserActivity?, MEMORY[0x1E69DBC30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  type metadata accessor for IntelligenceAppIntentsPayload?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for IntelligenceElement.LoadableValue<IntelligenceAppIntentsPayload?>, type metadata accessor for IntelligenceAppIntentsPayload?, MEMORY[0x1E69DBAA8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  result = 0;
  v27 = *(v2 + 8) >> 60;
  if (v27 > 5)
  {
    if (v27 == 6)
    {
      v58 = *(v2 + 8);

      IntelligenceElement.userActivity.getter();
      v59 = type metadata accessor for IntelligenceUserActivity();
      v60 = *(v59 - 8);
      v61 = *(v60 + 48);
      if (v61(v11, 1, v59) == 1)
      {
        IntelligenceElement.userActivity.getter();
        if (v61(v11, 1, v59) != 1)
        {
          outlined destroy of IntelligenceElement?(v11, &lazy cache variable for type metadata for IntelligenceUserActivity?, MEMORY[0x1E69DBC30]);
        }
      }

      else
      {
        (*(v60 + 32))(v14, v11, v59);
        (*(v60 + 56))(v14, 0, 1, v59);
      }

      IntelligenceElement.userActivity.setter();
      v40 = v58;
      goto LABEL_22;
    }

    if (v27 != 7)
    {
      return result;
    }

    v41 = *(v2 + 8);

    v42 = v65;
    IntelligenceElement.content.getter();
    v44 = v62;
    v43 = v63;
    (*(v62 + 104))(v5, *MEMORY[0x1E69DBBC0], v63);
    v45 = MEMORY[0x18D001120](v8, v5);
    v46 = *(v44 + 8);
    v46(v5, v43);
    v46(v8, v43);
    if (v45)
    {
      IntelligenceElement.content.getter();
      IntelligenceElement.content.setter();
      type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IntelligenceElement>, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6F90]);
      v47 = type metadata accessor for IntelligenceElement();
      v48 = *(v47 - 8);
      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_18CD63400;
      (*(v48 + 16))(v50 + v49, v42, v47);
      IntelligenceElement.boundingBox.getter();
      specialized Sequence<>.reduceBoundingBox(_:)(v50, v51, v52, v53, v54);
      swift_setDeallocating();
      (*(v48 + 8))(v50 + v49, v47);
      swift_deallocClassInstance();
      IntelligenceElement.boundingBox.setter();
      v40 = v41;
      goto LABEL_22;
    }

    v57 = v41;
LABEL_18:
    outlined consume of ScrapeableContent.Content(v57);
    return 0;
  }

  if (v27 == 3)
  {
    v55 = *(v2 + 8);

    IntelligenceElement.accessibilityLabel.getter();
    if (!v56)
    {
      IntelligenceElement.accessibilityLabel.getter();
      IntelligenceElement.accessibilityLabel.setter();
      v40 = v55;
      goto LABEL_22;
    }

    v57 = v55;
    goto LABEL_18;
  }

  if (v27 != 4)
  {
    return result;
  }

  v28 = *(v2 + 8);

  IntelligenceElement.loadableAppIntentsPayload.getter();
  v29 = IntelligenceElement.LoadableValue.isFinishedLoading.getter();
  v30 = *(v20 + 8);
  v30(v25, v19);
  if ((v29 & 1) == 0 || (IntelligenceElement.loadableAppIntentsPayload.getter(), IntelligenceElement.LoadableValue.value.getter(), v30(v22, v19), v31 = type metadata accessor for IntelligenceAppIntentsPayload(), v32 = (*(*(v31 - 8) + 48))(v17, 1, v31), outlined destroy of IntelligenceAppIntentsPayload?(v17, type metadata accessor for IntelligenceAppIntentsPayload?), v32 != 1))
  {
    v57 = v28;
    goto LABEL_18;
  }

  v33 = IntelligenceElement.subelements.getter();
  v34 = IntelligenceElement.subelements.modify();
  specialized Array.append<A>(contentsOf:)(v33);
  v34(v66, 0);
  v35 = IntelligenceElement.subelements.getter();
  IntelligenceElement.boundingBox.getter();
  specialized Sequence<>.reduceBoundingBox(_:)(v35, v36, v37, v38, v39);

  IntelligenceElement.boundingBox.setter();
  IntelligenceElement.loadableAppIntentsPayload.getter();
  IntelligenceElement.loadableAppIntentsPayload.setter();
  v40 = v28;
LABEL_22:
  outlined consume of ScrapeableContent.Content(v40);
  return 1;
}

void _s7SwiftUI17ScrapeableContentV4ItemVAA30IntelligenceElementConvertibleA2aFP04makeG02in21UIIntelligenceSupport0fG0VAA0F7ContextVyqd__G_tAA07ScrapedD5ErrorOYKAA0F4HostRd__lFTW(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  _s7SwiftUI17ScrapeableContentV4ItemVAAE11makeElement2in21UIIntelligenceSupport012IntelligenceG0VAA0K7ContextVyxG_tAA07ScrapedD5ErrorOYKAA0K4HostRzlF(a1, a2, a3, &v8, a5);
  if (v6)
  {
    *a4 = v8;
  }
}

void *initializeBufferWithCopyOfBuffer for ScrapedContentTree(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for ScrapedContentTree(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for ScrapedContentTree(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t key path getter for AttributeScopes.intelligence : AttributeScopes@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.intelligence.getter();
  result = type metadata accessor for IntelligenceElement.Text.Attributes();
  *a1 = result;
  return result;
}

void _s7SwiftUI17ScrapeableContentV0D0OAAE11resolveText_014resolvedStyledF011environmentAA07ScrapedF10PropertiesVAA0F0V_AA08ResolvedhF0CAA17EnvironmentValuesVtAA0jD5ErrorOYKFZyypSg_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v25 = a3;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  type metadata accessor for Range<AttributedString.Index>(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E7CA0];
  outlined init with copy of Any?(a1, v28, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for [String]);
  if (v29)
  {
    type metadata accessor for UIFont();
    if (swift_dynamicCast())
    {
      v20 = v26;
      (*(v8 + 16))(v10, a5, v7);
      lazy protocol witness table accessor for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      Range<>.init<A>(_:in:)();
      if ((*(v16 + 48))(v13, 1, v15) == 1)
      {

        outlined destroy of IntelligenceElement?(v13, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
      }

      else
      {
        outlined init with take of (offset: Int, element: IntelligenceElement)(v13, v18, type metadata accessor for Range<AttributedString.Index>);
        [v20 pointSize];
        v22 = v21;
        lazy protocol witness table accessor for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v23 = AttributedString.subscript.modify();
        v26 = v22;
        v27 = 0;
        type metadata accessor for IntelligenceElement.Text.Attributes.FontSizeAttribute();
        lazy protocol witness table accessor for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes(&lazy protocol witness table cache variable for type IntelligenceElement.Text.Attributes.FontSizeAttribute and conformance IntelligenceElement.Text.Attributes.FontSizeAttribute, MEMORY[0x1E69DBB30], MEMORY[0x1E69DBB28]);
        AttributedSubstring.subscript.setter();
        v23(v28, 0);

        outlined destroy of IntelligenceAppIntentsPayload?(v18, type metadata accessor for Range<AttributedString.Index>);
      }
    }
  }

  else
  {
    outlined destroy of Any?(v28, &lazy cache variable for type metadata for Any?, v19 + 8, MEMORY[0x1E69E6720], type metadata accessor for [String]);
  }
}

void ScrapedContentTree.Node<A>.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v31 = *(a1 + 48);
  v32 = v4;
  v33 = *(a1 + 80);
  v5 = *(a1 + 32);
  v30[0] = *(a1 + 16);
  v30[1] = v5;
  v26 = v5;
  v27 = v31;
  v28 = v4;
  v29 = v33;
  v25 = v30[0];
  swift_beginAccess();
  v6 = *(a1 + 96);
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    outlined init with copy of ScrapeableContent.Item(v30, v22);

    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v18 = v26;
    v19 = v28;
    v20 = v29;
    *(a2 + 32) = v27;
    *(a2 + 48) = v19;
    *(a2 + 64) = v20;
    *a2 = v25;
    *(a2 + 16) = v18;
    *(a2 + 80) = v9;
    return;
  }

  outlined init with copy of ScrapeableContent.Item(v30, v22);
  v24 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v21 = a2;
    v8 = 0;
    v9 = v24;
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x18D00E9C0](v8, v6); ; i = )
    {
      ScrapedContentTree.Node<A>.init(_:)(i, v22);
      v24 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v12 + 1;
      v13 = v9 + 88 * v12;
      v14 = v22[1];
      *(v13 + 32) = v22[0];
      *(v13 + 48) = v14;
      v15 = v22[2];
      v16 = v22[3];
      v17 = v22[4];
      *(v13 + 112) = v23;
      *(v13 + 80) = v16;
      *(v13 + 96) = v17;
      *(v13 + 64) = v15;
      if (v7 - 1 == v8)
      {
        break;
      }

      ++v8;
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    a2 = v21;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError()
{
  result = lazy protocol witness table cache variable for type ScrapedContentError and conformance ScrapedContentError;
  if (!lazy protocol witness table cache variable for type ScrapedContentError and conformance ScrapedContentError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedContentError, &type metadata for ScrapedContentError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedContentError and conformance ScrapedContentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedContentError and conformance ScrapedContentError;
  if (!lazy protocol witness table cache variable for type ScrapedContentError and conformance ScrapedContentError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedContentError, &type metadata for ScrapedContentError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedContentError and conformance ScrapedContentError);
  }

  return result;
}

void type metadata accessor for (offset: Int, element: IntelligenceElement)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: IntelligenceElement))
  {
    type metadata accessor for IntelligenceElement();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: IntelligenceElement));
    }
  }
}

void type metadata accessor for IntelligenceElement?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with take of (offset: Int, element: IntelligenceElement)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for (offset: Int, element: IntelligenceElement)?, type metadata accessor for (offset: Int, element: IntelligenceElement), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [IntelligenceElement] and conformance [A](unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntelligenceElement?(255, &lazy cache variable for type metadata for [IntelligenceElement], MEMORY[0x1E69DBC20], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI17ScrapeableContentV0D0OAAE12resolveImage_11environmentAA07ScrapedF10PropertiesVAA0F0V_AA17EnvironmentValuesVtAA0hD5ErrorOYKFZTf4nnd_n(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for IntelligenceElement?(0, &lazy cache variable for type metadata for Text.Style?, MEMORY[0x1E6981008], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  *&v32[0] = *a2;
  *(&v32[0] + 1) = v10;
  if (EnvironmentValues.shouldRedactContent.getter())
  {
    LOBYTE(v32[0]) = 0;
    lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
    swift_willThrowTypedImpl();
    return 0;
  }

  else
  {
    *&v32[0] = v9;
    *(&v32[0] + 1) = v10;
    v12 = type metadata accessor for Text.Style();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);

    MEMORY[0x18D008220](v13);
    ImageResolutionContext.init(environment:textStyle:transaction:)();
    Image.resolve(in:)();
    outlined destroy of IntelligenceAppIntentsPayload?(v8, MEMORY[0x1E697FE88]);
    v34 = v29;
    v35 = v30;
    v36[0] = v31[0];
    *(v36 + 11) = *(v31 + 11);
    v32[4] = v25;
    v32[5] = v26;
    v32[6] = v27;
    v33 = v28;
    v32[0] = v21;
    v32[1] = v22;
    v32[2] = v23;
    v32[3] = v24;
    if (v29 >> 1 == 0xFFFFFFFF)
    {
      outlined destroy of Image.Resolved(v32);
      return 0;
    }

    else
    {
      v21 = v33;
      *&v22 = v29;
      *(&v22 + 1) = *(&v34 + 1);
      v14 = AccessibilityImageLabel.text.getter();
      v16 = v15;
      v18 = v17;
      v20[4] = v9;
      v20[5] = v10;
      v20[2] = 0;
      v20[3] = 0;
      MEMORY[0x18D009CB0](&v37);
      v19 = Text.resolveString(in:with:idiom:)();
      outlined consume of Text.Storage(v14, v16, v18 & 1);

      outlined destroy of Image.Resolved(v32);
      return v19;
    }
  }
}

uint64_t specialized static ScrapeableContent.Content.resolveAccessibilityProperties(_:environment:idiom:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v19 = *a3;
    v20 = *a2;
    v24 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v24;
    v6 = v3 + 56;
    do
    {
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      v9 = *(v6 - 8);
      v22 = v19;
      v23 = v20;
      outlined copy of Text.Storage(v7, v8, v9);

      MEMORY[0x18D009CB0](&v21, v10);
      v11 = Text.resolveString(in:with:idiom:)();
      v13 = v12;
      outlined consume of Text.Storage(v7, v8, v9);

      v24 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v5 = v24;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v6 += 32;
      --v4;
    }

    while (v4);
  }

  *&v23 = v5;
  type metadata accessor for [String](0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v17 = BidirectionalCollection<>.joined(separator:)();

  return v17;
}

double specialized static IntelligenceElement._updatedUncoveredVisibleRect<A>(_:for:in:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = a5;
  v15 = a1;
  if (CGRectIntersectsRect(*&a1, *&a5))
  {
    v74.origin.x = v11;
    v74.origin.y = a6;
    v74.size.width = a7;
    v74.size.height = a8;
    v70 = a7;
    v16 = v15;
    v17 = a2;
    v18 = a4;
    v19 = CGRectGetMaxY(v74) + 1.0;
    v75.origin.x = v16;
    v75.origin.y = v17;
    v75.size.width = a3;
    v75.size.height = v18;
    MaxY = CGRectGetMaxY(v75);
    v61 = v19;
    v20 = MaxY > v19;
    v21 = v18;
    v22 = v17;
    v15 = v16;
    v23 = v20;
    v24 = 0.0;
    v68 = a8;
    v69 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    if (!v20)
    {
      v76.origin.x = v11;
      v76.origin.y = a6;
      v76.size.width = v70;
      v76.size.height = a8;
      MinY = CGRectGetMinY(v76);
      v77.origin.x = v16;
      v77.origin.y = v22;
      v77.size.width = a3;
      v77.size.height = v21;
      v28 = MinY - CGRectGetMinY(v77);
      a8 = v68;
      v26 = 0.0;
      if (v28 >= 0.0)
      {
        v26 = v28;
      }

      v69 = v16;
      v25 = v22;
      v24 = a3;
    }

    v65 = v25;
    v66 = v24;
    v67 = v26;
    v78.origin.x = v11;
    v78.origin.y = a6;
    v78.size.width = v70;
    v78.size.height = a8;
    v72 = a6;
    v29 = a8;
    v30 = CGRectGetMinY(v78) + -1.0;
    v79.origin.x = v15;
    v79.origin.y = v22;
    v79.size.width = a3;
    v79.size.height = v21;
    v64 = v11;
    if (v30 <= CGRectGetMinY(v79))
    {
      v80.origin.x = v15;
      v80.origin.y = v22;
      v80.size.width = a3;
      v80.size.height = v21;
      v32 = CGRectGetMaxY(v80);
      v81.origin.x = v11;
      v81.origin.y = a6;
      v81.size.width = v70;
      v81.size.height = v29;
      v33 = v32 - CGRectGetMaxY(v81);
      if (v33 < 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v33;
      }

      v82.origin.x = v15;
      v82.origin.y = v22;
      v82.size.width = a3;
      v82.size.height = v21;
      v35 = CGRectGetMaxY(v82) - v34;
      if (MaxY <= v61 && (v83.origin.x = v15, v83.origin.y = v35, v83.size.width = a3, v83.size.height = v34, Width = CGRectGetWidth(v83), v84.origin.x = v15, v84.origin.y = v35, v84.size.width = a3, v84.size.height = v34, v62 = Width * CGRectGetHeight(v84), v85.origin.x = v69, v85.origin.y = v65, v85.size.width = v66, v85.size.height = v67, v59 = CGRectGetWidth(v85), v86.origin.x = v69, v86.origin.y = v65, v86.size.width = v66, v86.size.height = v67, v59 * CGRectGetHeight(v86) + 1.0 >= v62))
      {
        v23 = 0;
      }

      else
      {
        v65 = v35;
        v66 = a3;
        v67 = v34;
        v23 = 0;
        v69 = v15;
      }

      v29 = v68;
      v31 = v72;
      v11 = v64;
    }

    else
    {
      v31 = a6;
    }

    v37 = v11;
    v38 = v70;
    v39 = v29;
    v40 = CGRectGetMaxX(*(&v31 - 1)) + 1.0;
    v87.origin.x = v15;
    v87.origin.y = v22;
    v87.size.width = a3;
    v87.size.height = v21;
    if (CGRectGetMaxX(v87) <= v40)
    {
      v88.origin.x = v11;
      v88.origin.y = v72;
      v88.size.width = v70;
      v88.size.height = v29;
      MinX = CGRectGetMinX(v88);
      v89.origin.x = v15;
      v89.origin.y = v22;
      v89.size.width = a3;
      v89.size.height = v21;
      v43 = MinX - CGRectGetMinX(v89);
      if (v43 < 0.0)
      {
        v44 = 0.0;
      }

      else
      {
        v44 = v43;
      }

      v63 = v44;
      if ((v23 & 1) != 0 || (v90.origin.x = v15, v90.origin.y = v22, v90.size.width = v44, v90.size.height = v21, v45 = CGRectGetWidth(v90), v91.origin.x = v15, v91.origin.y = v22, v91.size.width = v44, v91.size.height = v21, v60 = v45 * CGRectGetHeight(v91), v92.origin.x = v69, v92.origin.y = v65, v92.size.width = v66, v92.size.height = v67, v57 = CGRectGetWidth(v92), v93.origin.x = v69, v93.origin.y = v65, v93.size.width = v66, v93.size.height = v67, v57 * CGRectGetHeight(v93) + 1.0 < v60))
      {
        v23 = 0;
        v69 = v15;
        v65 = v22;
        v67 = v21;
      }

      else
      {
        v23 = 0;
        v63 = v66;
      }

      v29 = v68;
      v41 = v72;
      v11 = v64;
    }

    else
    {
      v63 = v66;
      v41 = v72;
    }

    v46 = v11;
    v47 = v70;
    v48 = v29;
    v49 = CGRectGetMinX(*(&v41 - 1)) + -1.0;
    v94.origin.x = v15;
    v94.origin.y = v22;
    v94.size.width = a3;
    v94.size.height = v21;
    if (v49 <= CGRectGetMinX(v94))
    {
      v95.origin.x = v15;
      v95.origin.y = v22;
      v95.size.width = a3;
      v95.size.height = v21;
      MaxX = CGRectGetMaxX(v95);
      v96.origin.x = v11;
      v96.origin.y = v72;
      v96.size.width = v70;
      v96.size.height = v29;
      v51 = MaxX - CGRectGetMaxX(v96);
      if (v51 < 0.0)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v51;
      }

      v97.origin.x = v15;
      v97.origin.y = v22;
      v97.size.width = a3;
      v97.size.height = v21;
      v53 = CGRectGetMaxX(v97);
      v54 = v52;
      v15 = v53 - v52;
      if ((v23 & 1) == 0)
      {
        v98.origin.x = v53 - v52;
        v98.origin.y = v22;
        v98.size.width = v52;
        v98.size.height = v21;
        v55 = CGRectGetWidth(v98);
        v99.origin.x = v15;
        v99.origin.y = v22;
        v99.size.width = v54;
        v99.size.height = v21;
        v73 = v55 * CGRectGetHeight(v99);
        v100.origin.x = v69;
        v100.origin.y = v65;
        v100.size.width = v63;
        v100.size.height = v67;
        v71 = CGRectGetWidth(v100);
        v101.origin.x = v69;
        v101.origin.y = v65;
        v101.size.width = v63;
        v101.size.height = v67;
        if (v71 * CGRectGetHeight(v101) + 1.0 >= v73)
        {
          return v69;
        }
      }
    }

    else if ((v23 & 1) == 0)
    {
      return v69;
    }
  }

  return v15;
}

uint64_t partial apply for closure #1 in ScrapeableContent.Item.children<A, B>(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return closure #1 in IntelligenceElement.init<A, B>(content:context:)(a1, v2[6], v2[2], v2[3], v2[4], v2[5], a2);
}

{
  return partial apply for closure #1 in IntelligenceElement.init<A, B>(content:context:)(a1, a2);
}

double outlined copy of ScrapeableContent.Content(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v1 == 2 || v1 == 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }

LABEL_15:

      return result;
    }

    if (v1 == 4 || v1 == 5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

void partial apply for closure #2 in IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = ViewRendererHost.convert(_:from:)(v2[5], v2[2], *(v2[3] + 8), *a1, a1[1], a1[2], a1[3]);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t outlined init with copy of IntelligenceAppIntentsPayload?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceAppIntentsPayload?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntelligenceAppIntentsRequest() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  type metadata accessor for IntelligenceAppIntentsPayload?(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IntelligenceElement.collectFromAppIntentsProvider<A>(provider:scrapedContent:request:appIntentsRequest:visibleRect:root:)(a1, v1 + 16, v1 + v6, v1 + v9);
}

unint64_t type metadata accessor for UIFont()
{
  result = lazy cache variable for type metadata for UIFont;
  if (!lazy cache variable for type metadata for UIFont)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFont);
  }

  return result;
}

uint64_t outlined destroy of IntelligenceElement?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for IntelligenceElement?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of (offset: Int, element: IntelligenceElement)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined destroy of IntelligenceAppIntentsPayload?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double destroy for IntelligenceContext(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for IntelligenceContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = v4;

  return a1;
}

void *assignWithCopy for IntelligenceContext(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for IntelligenceContext(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;

  *(a1 + 32) = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for IntelligenceContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntelligenceContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ScrapedContentTree.Node(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrapedContentTree.Node(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for ScrapedContentTree.Node(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for ScrapedContentTree.Node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for ScrapedContentTree.Node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithTake for ScrapedContentTree.Node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void MenuBarExtra.init(isInserted:content:label:)(uint64_t a1, uint64_t a2)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void MenuBarExtra<>.init(_:isInserted:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void MenuBarExtra<>.init<A>(_:isInserted:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void MenuBarExtra<>.init(_:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void MenuBarExtra<>.init(_:image:isInserted:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  MenuBarExtra<>.init(_:systemImage:isInserted:content:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

void MenuBarExtra<>.init<A>(_:image:isInserted:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  MenuBarExtra<>.init<A>(_:systemImage:isInserted:content:)(a1, a2, a3, a4, a5);
}

void MenuBarExtra<>.init(_:image:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void MenuBarExtra<>.init<A>(_:systemImage:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t type metadata completion function for MenuBarExtra(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MenuBarExtra(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = ((((v5 + v8) & ~v8) + v10) & 0xFFFFFFFFFFFFFFF8) + 26;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (v3 + v9) & v16;
    v19 = (a2 + v9) & v16;
    (*(v7 + 16))(v18, v19, v6);
    *(v18 + v10) = *(v19 + v10);
    v20 = (v19 + v10) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(v20 + 25);
    if (v21 >= 2)
    {
      v21 = *(v20 + 8) + 2;
    }

    v22 = (v18 + v10) & 0xFFFFFFFFFFFFFFF8;
    if (v21 == 1)
    {
      *(v22 + 8) = *(v20 + 8);
      *(v22 + 16) = *(v20 + 16);
      *(v22 + 24) = *(v20 + 24);
      *(v22 + 25) = 1;
    }

    else
    {
      *(v22 + 8) = *(v20 + 8);
      *(v22 + 16) = *(v20 + 16);
      *(v22 + 25) = 0;
    }
  }

  return v3;
}

double destroy for MenuBarExtra(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = (v8 + *(v7 + 56)) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 25);
  if (v10 >= 2)
  {
    v10 = *(v9 + 8) + 2;
  }

  if (v10 == 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for MenuBarExtra(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v17 = v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 25);
  if (v18 >= 2)
  {
    v18 = *(v17 + 8) + 2;
  }

  v19 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (v18 == 1)
  {
    *(v19 + 8) = *(v17 + 8);
    *(v19 + 16) = *(v17 + 16);
    *(v19 + 24) = *(v17 + 24);

    v20 = 1;
  }

  else
  {
    v20 = 0;
    *(v19 + 8) = *(v17 + 8);
    *(v19 + 16) = *(v17 + 16);
  }

  *(v19 + 25) = v20;
  return a1;
}

uint64_t assignWithCopy for MenuBarExtra(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0xFFFFFFFFFFFFFFF8) != (v16 & 0xFFFFFFFFFFFFFFF8))
  {
    v19 = *(v17 + 25);
    if (v19 >= 2)
    {
      v19 = *(v17 + 8) + 2;
    }

    if (v19 == 1)
    {
    }

    v20 = *(v18 + 25);
    if (v20 >= 2)
    {
      v20 = *(v18 + 8) + 2;
    }

    if (v20 == 1)
    {
      *(v17 + 8) = *(v18 + 8);
      *(v17 + 16) = *(v18 + 16);
      *(v17 + 24) = *(v18 + 24);
      *(v17 + 25) = 1;
    }

    else
    {
      *(v17 + 8) = *(v18 + 8);
      *(v17 + 16) = *(v18 + 16);
      *(v17 + 25) = 0;
    }
  }

  return a1;
}

uint64_t initializeWithTake for MenuBarExtra(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v17 = v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 25);
  if (v18 >= 2)
  {
    v18 = *(v17 + 8) + 2;
  }

  v19 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (v18 == 1)
  {
    v20 = *(v17 + 8);
    *(v19 + 24) = *(v17 + 24);
  }

  else
  {
    LOBYTE(v18) = 0;
    v20 = *(v17 + 8);
  }

  *(v19 + 8) = v20;
  *(v19 + 25) = v18;
  return a1;
}

uint64_t assignWithTake for MenuBarExtra(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0xFFFFFFFFFFFFFFF8) != (v16 & 0xFFFFFFFFFFFFFFF8))
  {
    v19 = *(v17 + 25);
    if (v19 >= 2)
    {
      v19 = *(v17 + 8) + 2;
    }

    if (v19 == 1)
    {
    }

    v20 = *(v18 + 25);
    if (v20 >= 2)
    {
      v20 = *(v18 + 8) + 2;
    }

    if (v20 == 1)
    {
      v21 = *(v18 + 8);
      *(v17 + 24) = *(v18 + 24);
      *(v17 + 8) = v21;
      v22 = 1;
    }

    else
    {
      v22 = 0;
      *(v17 + 8) = *(v18 + 8);
    }

    *(v17 + 25) = v22;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for MenuBarExtra(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = (((v12 & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 26;
  v14 = (a2 - v11 + 0xFFFF) >> 16;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
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
      if (*(a1 + v13))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (v18)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

  if (!v17 || (v18 = *(a1 + v13), !*(a1 + v13)))
  {
LABEL_29:
    if (v5 == v11)
    {
      return (*(v4 + 48))(a1);
    }

    v22 = (a1 + v12) & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(v22 + v10);
    if (v23 >= 2)
    {
      return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_22:
  v19 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v11 + (v20 | v19) + 1;
}

void storeEnumTagSinglePayload for MenuBarExtra(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = ((((v10 + v11) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 26;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 0xFFFF) >> 16;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          *(v23 + v12) = a2 + 1;
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = HIWORD(v20) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t destroy for MenuBarExtraConfiguration(void *a1)
{
}

uint64_t initializeWithCopy for MenuBarExtraConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 20);
  v5 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v5;
  v6 = *(a2 + 4);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;

  return a1;
}

uint64_t *assignWithCopy for MenuBarExtraConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];

  a1[4] = a2[4];

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  a1[6] = a2[6];
  a1[7] = a2[7];

  v4 = *(a2 + 4);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 4) = v4;
  return a1;
}

uint64_t assignWithTake for MenuBarExtraConfiguration(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for MenuBarExtraConfiguration(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MenuBarExtraConfiguration(uint64_t result, int a2, int a3)
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

uint64_t PlaybackButton.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Configuration.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys, &unk_1EFF98AD8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for ClosedRange<Date>(0);
  _sSNy10Foundation4DateVGSNyxGSesSeRzrlWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, lazy protocol witness table accessor for type Date and conformance Date, MEMORY[0x1E69E5F98]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for PlaybackButton.Configuration(0);
    LOBYTE(v15) = 1;
    type metadata accessor for PlaybackButton.State(0);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton.State and conformance PlaybackButton.State, type metadata accessor for PlaybackButton.State, protocol conformance descriptor for PlaybackButton.State);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = *(v3 + v10[7]);
    v19 = 3;
    lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v10[9]);
    v19 = 5;
    lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + v10[10]);
    v12 = *(v11 + 16);
    v13 = *(v11 + 5);
    v15 = *v11;
    v16 = v12;
    v17 = *(v11 + 24);
    v18 = v13;
    v19 = 6;
    lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackButton.Configuration.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PlaybackButton.Configuration.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Configuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Configuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackButton.State.PausedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.UnplayedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.UnplayedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackButton.State.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys, &unk_1EFF98998, MEMORY[0x1E69E6F58]);
  v38 = v3;
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v30 - v4;
  v5 = type metadata accessor for Date();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.PlayingCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys, &unk_1EFF98908, v2);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v30 - v8;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.UnplayedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys, &unk_1EFF988E8, v2);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys, &unk_1EFF988C8, v2);
  v42 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of PlaybackButton.State(v41, v14, type metadata accessor for PlaybackButton.State);
  v19 = v40;
  v20 = v5;
  v21 = (*(v40 + 48))(v14, 2, v5);
  if (v21)
  {
    if (v21 == 1)
    {
      v43 = 0;
      lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys();
      v22 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v11, v32);
    }

    else
    {
      v44 = 1;
      lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys();
      v29 = v33;
      v22 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v29, v35);
    }

    return (*(v16 + 8))(v18, v22);
  }

  else
  {
    v23 = v36;
    v24 = v19;
    (*(v19 + 32))(v39, v14, v20);
    v45 = 2;
    lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys();
    v25 = v37;
    v26 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type Date and conformance Date();
    v27 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v25, v27);
    (*(v24 + 8))(v39, v20);
    return (*(v16 + 8))(v18, v26);
  }
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

Swift::Void __swiftcall PlaybackButton.Phase.toggle()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    if (*v0 != 2)
    {
      return;
    }

    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *v0 = v5;
  v15 = v5;
  v6 = String.init<A>(describing:)();
  v8 = v7;
  static Log.archivedPlaybackButton.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v14);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_18BD4A000, v9, v10, "Transitioning state to %s from button tap.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x18D0110E0](v12, -1, -1);
    MEMORY[0x18D0110E0](v11, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
}

uint64_t PlaybackButton.Phase.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PendingPauseCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys, &unk_1EFF98D08, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v24 - v5;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PlayingCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys, &unk_1EFF98CE8, v3);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v24 - v7;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PendingPlayCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys, &unk_1EFF98CC8, v3);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PausedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys, &unk_1EFF98CA8, v3);
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys, &unk_1EFF98C88, v3);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = (v16 + 8);
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys();
      v20 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v30;
      v21 = v31;
    }

    else
    {
      v39 = 3;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys();
      v20 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v33;
      v21 = v34;
    }

    (*(v22 + 8))(v20, v21);
  }

  else if (v35)
  {
    v37 = 1;
    lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v27 + 8))(v10, v28);
  }

  else
  {
    v36 = 0;
    lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v13, v26);
  }

  return (*v19)(v18, v15);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PendingPauseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PendingPauseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PendingPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PendingPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackButton.init(interval:state:systemImage:alignment:lnAction:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = swift_getKeyPath();
  *(a9 + 32) = 0;
  *(a9 + 40) = swift_getKeyPath();
  *(a9 + 48) = 0;
  KeyPath = swift_getKeyPath();
  v19 = a9 + *(type metadata accessor for PlaybackButton(0) + 28);
  outlined init with take of PlaybackButton.State(a1, v19, type metadata accessor for ClosedRange<Date>?);
  v20 = type metadata accessor for PlaybackButton.Configuration(0);
  result = outlined init with take of PlaybackButton.State(a2, v19 + v20[5], type metadata accessor for PlaybackButton.State);
  v22 = (v19 + v20[6]);
  *v22 = a3;
  v22[1] = a4;
  *(v19 + v20[7]) = 0;
  *(v19 + v20[8]) = 0;
  v23 = (v19 + v20[9]);
  *v23 = a5;
  v23[1] = a6;
  v24 = v19 + v20[10];
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = a7;
  *(v24 + 32) = a8;
  *(v24 + 40) = a10;
  return result;
}

uint64_t PlaybackButton.init(interval:state:playSystemImage:pauseSystemImage:lnAction:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{

  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = swift_getKeyPath();
  *(a7 + 32) = 0;
  *(a7 + 40) = swift_getKeyPath();
  *(a7 + 48) = 0;
  v14 = a7 + *(type metadata accessor for PlaybackButton(0) + 28);
  outlined init with copy of PlaybackButton.State(a1, v14, type metadata accessor for ClosedRange<Date>);
  type metadata accessor for ClosedRange<Date>(0);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v16 = type metadata accessor for PlaybackButton.Configuration(0);
  outlined init with copy of PlaybackButton.State(a2, v14 + v16[5], type metadata accessor for PlaybackButton.State);
  v17 = static Alignment.center.getter();
  v19 = v18;
  outlined destroy of PlaybackButton.State(a2, type metadata accessor for PlaybackButton.State);
  outlined destroy of PlaybackButton.State(a1, type metadata accessor for ClosedRange<Date>);
  result = swift_getKeyPath();
  v21 = (v14 + v16[6]);
  *v21 = a3;
  v21[1] = a4;
  *(v14 + v16[7]) = 0;
  *(v14 + v16[8]) = 0;
  v22 = (v14 + v16[9]);
  *v22 = v17;
  v22[1] = v19;
  v23 = v14 + v16[10];
  *v23 = result;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a8;
  return result;
}

double PlaybackButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PlaybackButton(0);
  outlined init with copy of PlaybackButton.State(v1 + *(v10 + 28), v9, type metadata accessor for PlaybackButton.Configuration);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), v28);
  v11 = v28[0];
  v12 = v28[1];
  v26 = v29;
  v13 = specialized Environment.wrappedValue.getter(*(v1 + 24), *(v1 + 32));
  v14 = specialized Environment.wrappedValue.getter(*(v1 + 40), *(v1 + 48));
  outlined init with copy of PlaybackButton.State(&v9[*(v7 + 28)], v5, type metadata accessor for PlaybackButton.State);
  *a1 = specialized PlaybackButton.Phase.init(_:)(v5);
  *(a1 + 8) = 0;
  v15 = type metadata accessor for ResolvedPlaybackButton(0);
  outlined init with copy of PlaybackButton.State(v9, a1 + v15[5], type metadata accessor for PlaybackButton.Configuration);
  v16 = &v9[*(v7 + 48)];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = v16[16];
  v20 = *(v16 + 5);
  *v27 = *(v16 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(v17, v18, v19, outlined copy of AppIntentExecutor?);
  v21 = *&v27[0];

  outlined destroy of PlaybackButton.State(v9, type metadata accessor for PlaybackButton.Configuration);
  v22 = a1 + v15[6];
  *v22 = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  result = v27[0];
  *(v22 + 24) = *v27;
  *(v22 + 40) = v20;
  v24 = a1 + v15[7];
  *v24 = v11;
  *(v24 + 8) = v12;
  *(v24 + 16) = v26;
  *(a1 + v15[9]) = v13;
  *(a1 + v15[8]) = v14;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton and conformance PlaybackButton, type metadata accessor for PlaybackButton, protocol conformance descriptor for PlaybackButton);

  return MEMORY[0x1EEDE2370](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton and conformance PlaybackButton, type metadata accessor for PlaybackButton, protocol conformance descriptor for PlaybackButton);

  return MEMORY[0x1EEDE2378](a1, a2, a3, v6);
}

int *PlaybackButton.archivedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(type metadata accessor for PlaybackButton(0) + 28);
  outlined init with copy of PlaybackButton.State(v1 + v39, v9, type metadata accessor for PlaybackButton.Configuration);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), &v41);
  v34 = v42;
  v35 = v41;
  v33 = v43;
  v38 = *(v1 + 24);
  v37 = *(v1 + 32);
  v32 = specialized Environment.wrappedValue.getter(v38, v37);
  v36 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = specialized Environment.wrappedValue.getter(v36, v10);
  outlined init with copy of PlaybackButton.State(&v9[*(v7 + 28)], v5, type metadata accessor for PlaybackButton.State);
  *a1 = specialized PlaybackButton.Phase.init(_:)(v5);
  *(a1 + 8) = 0;
  v12 = type metadata accessor for ResolvedPlaybackButton(0);
  outlined init with copy of PlaybackButton.State(v9, a1 + v12[5], type metadata accessor for PlaybackButton.Configuration);
  v13 = &v9[*(v7 + 48)];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = v13[16];
  v17 = *(v13 + 5);
  v40 = *(v13 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(v15, v14, v16, outlined copy of AppIntentExecutor?);
  v18 = v40;

  outlined destroy of PlaybackButton.State(v9, type metadata accessor for PlaybackButton.Configuration);
  v19 = a1 + v12[6];
  *v19 = v15;
  *(v19 + 8) = v14;
  *(v19 + 16) = v16;
  *(v19 + 24) = v40;
  *(v19 + 40) = v17;
  v20 = a1 + v12[7];
  v21 = v34;
  *v20 = v35;
  *(v20 + 8) = v21;
  LOBYTE(v21) = v32;
  *(v20 + 16) = v33;
  *(a1 + v12[9]) = v21;
  *(a1 + v12[8]) = v11;
  type metadata accessor for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>, type metadata accessor for ResolvedPlaybackButton, type metadata accessor for ArchivablePlaybackButtonViewModifier, MEMORY[0x1E697E830]);
  v23 = a1 + *(v22 + 36);
  outlined init with copy of PlaybackButton.State(v1 + v39, v23, type metadata accessor for PlaybackButton.Configuration);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), &v41);
  v24 = v41;
  v25 = v42;
  v26 = v43;
  v27 = specialized Environment.wrappedValue.getter(v38, v37);
  v28 = specialized Environment.wrappedValue.getter(v36, v10);
  result = type metadata accessor for ArchivablePlaybackButtonViewModifier(0);
  v30 = v23 + result[5];
  *v30 = v24;
  *(v30 + 8) = v25;
  *(v30 + 16) = v26;
  *(v23 + result[6]) = v27;
  *(v23 + result[7]) = v28;
  return result;
}

uint64_t ArchivablePlaybackButtonViewModifier.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivablePlaybackButtonViewModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys, &unk_1EFF98B68, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for PlaybackButton.Configuration(0);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton.Configuration and conformance PlaybackButton.Configuration, type metadata accessor for PlaybackButton.Configuration, protocol conformance descriptor for PlaybackButton.Configuration);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for ArchivablePlaybackButtonViewModifier(0);
    v11 = (v3 + v10[5]);
    v12 = *(v11 + 16);
    v14 = *v11;
    v15 = v12;
    v16 = 1;
    lazy protocol witness table accessor for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = *(v3 + v10[6]);
    v16 = 2;
    lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v10[7]);
    v16 = 3;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivablePlaybackButtonViewModifier.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ArchivablePlaybackButtonViewModifier.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivablePlaybackButtonViewModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivablePlaybackButtonViewModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvedPlaybackButton.performAction()()
{
  v1 = type metadata accessor for ResolvedPlaybackButton(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  if (*(v0 + v1[7] + 16) == 6)
  {
    v14 = *(v0 + 8);
    LOBYTE(v42[0]) = *v0;
    *(&v42[0] + 1) = v14;
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, &lazy cache variable for type metadata for State<PlaybackButton.Phase>, &type metadata for PlaybackButton.Phase, MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    if ((v40 | 2) == 3)
    {
      static Log.archivedPlaybackButton.getter();
      outlined init with copy of PlaybackButton.State(v0, v3, type metadata accessor for ResolvedPlaybackButton);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v42[0] = v18;
        *v17 = 136315138;
        v19 = [*&v3[v1[5] + 24 + *(type metadata accessor for PlaybackButton.Configuration(0) + 40)] debugDescription];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v7;
        v22 = v21;

        outlined destroy of PlaybackButton.State(v3, type metadata accessor for ResolvedPlaybackButton);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v42);

        *(v17 + 4) = v23;
        _os_log_impl(&dword_18BD4A000, v15, v16, "Did not execute LNAction %s from playback button tap.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x18D0110E0](v18, -1, -1);
        MEMORY[0x18D0110E0](v17, -1, -1);

        return (*(v8 + 8))(v10, v39);
      }

      (*(v8 + 8))(v10, v7);
      v38 = v3;
      return outlined destroy of PlaybackButton.State(v38, type metadata accessor for ResolvedPlaybackButton);
    }
  }

  v25 = *(v0 + 8);
  LOBYTE(v42[0]) = *v0;
  *(&v42[0] + 1) = v25;
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, &lazy cache variable for type metadata for State<PlaybackButton.Phase>, &type metadata for PlaybackButton.Phase, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  PlaybackButton.Phase.toggle()();
  v41 = v40;
  if (v25)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v26 = (v0 + v1[6]);
  v27 = v26[1];
  v42[0] = *v26;
  v42[1] = v27;
  v42[2] = v26[2];
  type metadata accessor for MainActor();
  v28 = static Semantics.v7.getter();
  MEMORY[0x1EEE9AC00](v28);
  static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
  static Log.archivedPlaybackButton.getter();
  outlined init with copy of PlaybackButton.State(v0, v6, type metadata accessor for ResolvedPlaybackButton);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v29, v30))
  {

    (*(v8 + 8))(v13, v7);
    v38 = v6;
    return outlined destroy of PlaybackButton.State(v38, type metadata accessor for ResolvedPlaybackButton);
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v40 = v32;
  *v31 = 136315138;
  v33 = [*&v6[v1[5] + 24 + *(type metadata accessor for PlaybackButton.Configuration(0) + 40)] debugDescription];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v7;
  v36 = v35;

  outlined destroy of PlaybackButton.State(v6, type metadata accessor for ResolvedPlaybackButton);
  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v40);

  *(v31 + 4) = v37;
  _os_log_impl(&dword_18BD4A000, v29, v30, "Executed LNAction %s from playback button tap.", v31, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v32);
  MEMORY[0x18D0110E0](v32, -1, -1);
  MEMORY[0x18D0110E0](v31, -1, -1);

  return (*(v8 + 8))(v13, v39);
}

uint64_t EnvironmentValues.playbackButtonProgressVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.playbackButtonProgressVisibility : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.playbackButtonProgressVisibility : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>, &unk_1EFF98A28, &protocol witness table for PlaybackButtonProgressVisibilityKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void View.playbackButtonTapArea(_:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

double EnvironmentValues.playbackButtonTapArea.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.playbackButtonTapArea : EnvironmentValues@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);
    PropertyList.subscript.getter();
  }

  result = v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.playbackButtonTapArea : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>, &unk_1EFF98A48, &protocol witness table for PlaybackButtonTapAreaKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double View.playbackButtonProgress(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void specialized Environment.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x100) != 0)
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
  }

  else
  {
    outlined copy of Environment<PlaybackButton._StyleStorage>.Content(a1, a2, a3, 0);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7453656C7974535FLL, 0xED0000656761726FLL, &v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_18BF80400(a1, a2, a3, 0);
  }
}

{
  if ((a3 & 0x100) != 0)
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3 & 1;

    outlined copy of Environment<DismissAction>.Content(a1, a2, a3, 1);
  }

  else
  {
    outlined copy of Environment<DismissAction>.Content(a1, a2, a3, 0);
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x417373696D736944, 0xED00006E6F697463, &v12);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<DismissAction>.Content(a1, a2, a3, 0);
  }
}

void *specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if ((a3 & 0x100) != 0)
  {
    outlined copy of Binding<Int>?(a1, a2);
  }

  else
  {

    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018CD3F200, &v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Binding<Visibility>?>.Content(v5, a2, a3, 0);

    return v11;
  }

  return v5;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, int a2)
{
  if ((a2 & 0x10000) != 0)
  {
    v9 = a2 & 0x1FF;
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018CD3F6B0, v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1);

    return v8[2];
  }

  return a1;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x69536E6F74747542, outlined consume of Environment<Bool>.Content, a3, 0xEC000000676E697ALL);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x6F72506567646142, outlined consume of Environment<Bool>.Content, a3, 0xEF65636E656E696DLL);
}

double specialized Environment.wrappedValue.getter@<D0>(void *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for Environment<URL?>.Content, type metadata accessor for URL?, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(v2, &v12 - v5, &lazy cache variable for type metadata for Environment<URL?>.Content, type metadata accessor for URL?);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PlaybackButton.State(v6, a1, type metadata accessor for URL?);
  }

  else
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xED00003E4C52553CLL, &v12);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  v2 = v1;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for Environment<Predicate<Pack{URL}>?>.Content, type metadata accessor for Predicate<Pack{URL}>?, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(v2, &v12 - v5, &lazy cache variable for type metadata for Environment<Predicate<Pack{URL}>?>.Content, type metadata accessor for Predicate<Pack{URL}>?);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PlaybackButton.State(v6, a1, type metadata accessor for Predicate<Pack{URL}>?);
  }

  else
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018CD3F350, &v12);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  v2 = v1;
  v4 = MEMORY[0x1E6969770];
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(v2, &v14 - v6, &lazy cache variable for type metadata for Environment<Locale>.Content, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  else
  {
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x656C61636F4CLL, 0xE600000000000000, &v14);
      _os_log_impl(&dword_18BD4A000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x18D0110E0](v13, -1, -1);
      MEMORY[0x18D0110E0](v12, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  return specialized Environment.wrappedValue.getter(type metadata accessor for Environment<Calendar>.Content, outlined init with copy of Environment<Calendar>.Content, MEMORY[0x1E6969AE8], 0x7261646E656C6143, a1);
}

{
  return specialized Environment.wrappedValue.getter(type metadata accessor for Environment<TimeZone>.Content, outlined init with copy of Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], 0x656E6F5A656D6954, a1);
}

{
  v2 = v1;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(v2, &v12 - v5, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PlaybackButton.State(v6, a1, type metadata accessor for Binding<AttributedString>?);
  }

  else
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000018CD3F220, &v12);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  v2 = v1;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for Environment<DismissSearchAccessoryAction>.Content, type metadata accessor for DismissSearchAccessoryAction, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(v2, &v12 - v5, &lazy cache variable for type metadata for Environment<DismissSearchAccessoryAction>.Content, type metadata accessor for DismissSearchAccessoryAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PlaybackButton.State(v6, a1, type metadata accessor for DismissSearchAccessoryAction);
  }

  else
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000018CD3F160, &v12);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  v2 = v1;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for Environment<Binding<TabViewCustomization>?>.Content, type metadata accessor for Binding<TabViewCustomization>?, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(v2, &v12 - v5, &lazy cache variable for type metadata for Environment<Binding<TabViewCustomization>?>.Content, type metadata accessor for Binding<TabViewCustomization>?);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PlaybackButton.State(v6, a1, type metadata accessor for Binding<TabViewCustomization>?);
  }

  else
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000018CD3F920, &v12);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  v2 = v1;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(v2, &v12 - v5, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PlaybackButton.State(v6, a1, type metadata accessor for CellConfiguration);
  }

  else
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F840, &v12);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

void *specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {

    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000018CD3F7C0, &v12);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(a1, a2, a3, 0);

    return v12;
  }

  return a1;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t (*a1)(void)@<X0>, void (*a2)(uint64_t, char *, double)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = v5;
  v11 = a1(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  a2(v9, &v21 - v13, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a3(0);
    (*(*(v15 - 8) + 32))(a5, v14, v15);
  }

  else
  {
    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, 0xE800000000000000, &v21);
      _os_log_impl(&dword_18BD4A000, v18, v17, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x18D0110E0](v20, -1, -1);
      MEMORY[0x18D0110E0](v19, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

void *specialized Environment.wrappedValue.getter(void *result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100) == 0)
  {
    v5 = result;

    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018CD3F1E0, &v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_18BF80400(v5, a2, a3, 0);

    return v10;
  }

  return result;
}

void specialized Environment.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 33) == 1)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 8);
    v6 = *(v1 + 32);
  }

  else
  {

    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000018CD3F280, &v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<ToolbarItemMetrics?>(v1, &lazy cache variable for type metadata for Environment<ToolbarItemMetrics?>, &lazy cache variable for type metadata for ToolbarItemMetrics?, &type metadata for ToolbarItemMetrics);

    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6 & 1;
}

uint64_t specialized Environment.wrappedValue.getter(void *a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a1;
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12[0] = v7;
      *v6 = 136315138;
      type metadata accessor for UISceneSession?(0);
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of ResolvableCLKTextProvider.FontStorage(v2, 0);

    return v12[2];
  }

  return v2;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x100) != 0)
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;

    return outlined copy of Environment<Binding<EditMode>?>.Content(a1, a2, a3, 1);
  }

  else
  {
    outlined copy of Environment<Binding<EditMode>?>.Content(a1, a2, a3, 0);
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000018CD3F600, &v13);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Binding<Visibility>?>.Content(a1, a2, a3, 0);
  }

  return result;
}