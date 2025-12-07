uint64_t getEnumTagSinglePayload for _PagingView(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if (v12 - 1 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12 - 1;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = v16 | 7;
  v18 = ((v16 + 16) & ~v16) + *(*(AssociatedTypeWitness - 8) + 64);
  v19 = (v16 | 7) + *(v6 + 64);
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v20 = ((((v18 + (v19 & ~v17) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v15 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v7 == v15)
  {
    v29 = *(v6 + 48);

    return v29(a1, v7, v5);
  }

  else
  {
    v30 = (a1 + v19) & ~v17;
    if (v13 == v15)
    {
      v31 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v33 = (*(v10 + 48))((v31 + v16 + 8) & ~v16);
      }

      else
      {
        v32 = *v31;
        if (v32 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        v33 = v32 + 1;
      }

      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v34 = *(((v30 + v18 + 55) & 0xFFFFFFFFFFFFFFF8) + 112);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      return (v34 + 1);
    }
  }
}

void storeEnumTagSinglePayload for _PagingView(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v32 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v13 - 1;
  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v12 + 16) & ~v12) + *(v10 + 64);
  v18 = (v12 | 7) + *(v8 + 64);
  v19 = ((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v22 = 0;
    v23 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v25 = ~v16 + a2;
      bzero(a1, ((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v25;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v22)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  if (((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = a3 - v16 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = a2 - v16;
  if (a2 > v16)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v19) = 0;
  }

  else if (v22)
  {
    *(a1 + v19) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 == v16)
  {
    v26 = *(v32 + 56);

    v26(a1, a2, v9, v7);
    return;
  }

  v27 = (a1 + v18) & ~(v12 | 7);
  if (v14 != v16)
  {
    v29 = (v27 + v17 + 55) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) == 0)
    {
      *(v29 + 112) = (a2 - 1);
      return;
    }

    *(v29 + 136) = 0u;
    v30 = a2 & 0x7FFFFFFF;
    *(v29 + 152) = 0u;
    *(v29 + 120) = 0u;
    *(v29 + 104) = 0u;
    *(v29 + 88) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 56) = 0u;
    *(v29 + 40) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 8) = 0u;
    goto LABEL_59;
  }

  v28 = (a2 + 1);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 0x80000000) == 0)
  {
    if ((v28 & 0x80000000) != 0)
    {
      v30 = (a2 - 0x7FFFFFFF);
    }

    else
    {
      v30 = a2;
    }

LABEL_59:
    *v29 = v30;
    return;
  }

  v31 = *(v10 + 56);

  v31((v12 + v29 + 8) & ~v12, v28);
}

uint64_t getEnumTagSinglePayload for PagingLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PagingLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PagingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for State<CGFloat>()
{
  if (!lazy cache variable for type metadata for State<CGFloat>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CGFloat>);
    }
  }
}

uint64_t type metadata completion function for _PagingView.ToPageOffset(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _PagingView.ToPageOffset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v11;
    v12 = v11[1];
    *(v10 + 25) = *(v11 + 25);
    *v10 = v13;
    v10[1] = v12;
    v14 = ((v3 + v5 + 55) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((a2 + v5 + 55) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[1];
  *(v9 + 25) = *(v10 + 25);
  *v9 = v11;
  v9[1] = v12;
  v13 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = v11;
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 40) = *(v10 + 40);
  v12 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[1];
  *(v9 + 25) = *(v10 + 25);
  *v9 = v11;
  v9[1] = v12;
  v13 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = v11;
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 40) = *(v10 + 40);
  v12 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PagingView.ToPageOffset(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for _PagingView.ToPageOffset(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      if (v6 < 0xFE)
      {
        v20 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          result = 0.0;
          *(v20 + 24) = 0u;
          *(v20 + 8) = 0u;
          *(v20 + 40) = 0;
          *v20 = a2 - 255;
        }

        else
        {
          *v20 = a2 + 1;
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

  if (((((v8 + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((v8 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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

SwiftUI::PlainListStyle __swiftcall PlainListStyle.init(isOutline:)(Swift::Bool isOutline)
{
  result.isOutline.value = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t static PlainListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v22 = a2[4];
  v23 = *(a2 + 20);
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255);
  v14 = v9;
  v15 = type metadata accessor for SelectionManagerBox(255, a3, a4, v8);
  v16 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v15);
  v10 = type metadata accessor for PlainListBody(0, &v14);
  v14 = &type metadata for PlainListStyle;
  v15 = a3;
  v16 = &protocol witness table for PlainListStyle;
  WitnessTable = a4;
  type metadata accessor for _ListValue(255, &v14);
  type metadata accessor for _GraphValue();
  LODWORD(v14) = _GraphValue.value.getter();
  v12 = type metadata accessor for PlainListStyle.Body(0, a3, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for PlainListStyle.Body<A>, v12);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>, v10);
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<PlainListStyleContext>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>);
    }
  }
}

void type metadata accessor for StyleContextWriter<PlainListStyleContext>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>)
  {
    lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
    v1 = type metadata accessor for StyleContextWriter();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>);
    }
  }
}

uint64_t static PlainListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255);
  v12 = v7;
  v13 = type metadata accessor for SelectionManagerBox(255, a3, a4, v6);
  v14 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v13);
  v8 = type metadata accessor for PlainListBody(0, &v12);
  v12 = &type metadata for PlainListStyle;
  v13 = a3;
  v14 = &protocol witness table for PlainListStyle;
  WitnessTable = a4;
  type metadata accessor for _ListValue(255, &v12);
  type metadata accessor for _GraphValue();
  LODWORD(v12) = _GraphValue.value.getter();
  v10 = type metadata accessor for PlainListStyle.Body(0, a3, a4, v9);
  swift_getWitnessTable(protocol conformance descriptor for PlainListStyle.Body<A>, v10);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>, v8);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t PlainListStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for PlainListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for PlainListStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t PlainListStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v26 = a5;
  v25 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v30[0] = &type metadata for PlainListStyle;
  v30[1] = a2;
  v30[2] = &protocol witness table for PlainListStyle;
  v30[3] = a3;
  v12 = type metadata accessor for _ListValue(0, v30);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  PlainListStyle.Body.base.getter(a2, a3, &v25 - v17);
  (*(v9 + 32))(v11, &v18[*(v12 + 52)], v8);
  PlainListStyle.Body.base.getter(a2, a3, v15);
  LOBYTE(v8) = *v15;
  (*(v13 + 8))(v15, v12);
  v27 = a2;
  v28 = a3;
  v29 = v7;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(0);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v22 = v25;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v25);
  return PlainListBody.init(selection:isOutline:content:)(v11, v8, partial apply for closure #1 in PlainListStyle.Body.value.getter, v20, v22, v21, WitnessTable, v26);
}

uint64_t closure #1 in PlainListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for PlainListStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for PlainListStyle;
  v10[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  PlainListStyle.Body.base.getter(a2, a3, v10 - v7);
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PlainListStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255);
  v5 = v4;
  v7 = type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), v6);
  v10[0] = v5;
  v10[1] = v7;
  v10[2] = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v10[3] = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v8 = type metadata accessor for PlainListBody(0, v10);
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

unint64_t instantiation function for generic protocol witness table for PlainListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
  *(a1 + 8) = result;
  return result;
}

SwiftUI::DropConfiguration __swiftcall DropConfiguration.init(operation:)(SwiftUI::DropOperation operation)
{
  *v1 = *operation;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  result.operation = operation;
  return result;
}

uint64_t getEnumTagSinglePayload for DropConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[17])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DropConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

int *ProgressViewStyleConfiguration.init(value:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  _s7SwiftUI17ProgressViewValueOWOcTm_0(a1, v12, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSNy10Foundation4DateVGWOhTm_2(v12, type metadata accessor for ClosedRange<Date>);
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v17 = *v12;
    v18 = v12[8];
    v16 = v12[9];
  }

  outlined init with take of ProgressViewValue(a1, a5, type metadata accessor for ProgressViewValue);
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  v20 = a5 + result[5];
  *v20 = v17;
  *(v20 + 8) = v18;
  *(a5 + result[6]) = v16;
  *(a5 + result[7]) = v13;
  *(a5 + result[8]) = v14;
  *(a5 + result[9]) = v15;
  return result;
}

uint64_t ProgressViewStyleConfiguration.label.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ProgressViewStyleConfiguration.label.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ProgressViewStyleConfiguration.currentValueLabel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ProgressViewStyleConfiguration.currentValueLabel.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ProgressViewStyleConfiguration.actions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ProgressViewStyleConfiguration.actions.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedProgressViewStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type ResolvedProgressViewStyle and conformance ResolvedProgressViewStyle, type metadata accessor for ResolvedProgressViewStyle, protocol conformance descriptor for ResolvedProgressViewStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t View.progressViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProgressViewStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

void *initializeBufferWithCopyOfBuffer for ProgressViewStyleConfiguration(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>(0);
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = a3[5];
    v14 = a3[6];
    v15 = a1 + v13;
    v16 = a2 + v13;
    *v15 = *v16;
    v15[8] = v16[8];
    *(a1 + v14) = *(a2 + v14);
    v17 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v17) = *(a2 + v17);
    *(a1 + a3[9]) = *(a2 + a3[9]);
  }

  return a1;
}

_BYTE *initializeWithCopy for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[5];
  v12 = a3[6];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v15] = a2[v15];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

_BYTE *assignWithCopy for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>(0);
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = a3[5];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *v13;
  v12[8] = v13[8];
  *v12 = v14;
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

_BYTE *initializeWithTake for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 32);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[5];
  v12 = a3[6];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v15] = a2[v15];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

_BYTE *assignWithTake for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>(0);
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = a3[5];
  v12 = a3[6];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v15] = a2[v15];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for ResolvedProgressViewStyle(void *a1, void *a2)
{
  v4 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>(0);
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = v6[5];
    v14 = a1 + v13;
    v15 = a2 + v13;
    *v14 = *v15;
    v14[8] = v15[8];
    *(a1 + v6[6]) = *(a2 + v6[6]);
    *(a1 + v6[7]) = *(a2 + v6[7]);
    *(a1 + v6[8]) = *(a2 + v6[8]);
    *(a1 + v6[9]) = *(a2 + v6[9]);
  }

  return a1;
}

_BYTE *initializeWithCopy for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    type metadata accessor for ClosedRange<Date>(0);
    v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

_BYTE *assignWithCopy for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v4 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for Date();
      v6 = *(*(v5 - 8) + 16);
      v6(a1, a2, v5);
      type metadata accessor for ClosedRange<Date>(0);
      v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      a1[*(v8 + 48)] = a2[*(v8 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = v12[8];
  *v11 = *v12;
  v11[8] = v13;
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

_BYTE *initializeWithTake for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 32);
    v6(a1, a2, v5);
    type metadata accessor for ClosedRange<Date>(0);
    v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

_BYTE *assignWithTake for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v4 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for Date();
      v6 = *(*(v5 - 8) + 32);
      v6(a1, a2, v5);
      type metadata accessor for ClosedRange<Date>(0);
      v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      a1[*(v8 + 48)] = a2[*(v8 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSd_s5NeverOytTg5227_s7SwiftUI0A27UIAccessibilityTextResolverV36resolveAccessibilitySpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZySdXEfU2_SDySo0rS3KeyaypGTf1cn_n(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = static NSAttributedStringKey.coreAXSpeechPitch.getter();
    if (*&a1 <= 1.0)
    {
      v5 = *&a1;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = v5 + 1.0;
    if (*&a1 < -1.0)
    {
      v6 = 0.0;
    }

    v8[3] = MEMORY[0x1E69E63B0];
    *v8 = v6;
    specialized Dictionary.subscript.setter(v8, v4);
  }

  return a2 & 1;
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI33AccessibilityAnnouncementPriorityO_s5NeverOytTB503_s7c43UI0A27UIAccessibilityTextResolverV36resolvee161SpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZyAA0G20fG6OXEfU_SDySo0uV3KeyaypGTf1cn_n(unsigned __int8 a1)
{
  if (a1 != 3)
  {
    v2 = a1;
    closure #1 in static SwiftUIAccessibilityTextResolver.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(&v2);
    if (v1)
    {
      __break(1u);
    }
  }
}

uint64_t ViewRendererHost.accessibilityNodes.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [AccessibilityNode](0);
  ViewRendererHost.updateViewGraph<A>(body:)();
  return v3;
}

void *specialized View.accessibilityHidden(_:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    AccessibilityProperties.init()();
    v3 = 0x400000004;
  }

  else
  {
    AccessibilityProperties.init()();
    v3 = 0x400000000;
  }

  v8 = v3;
  v9 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v7);
  _sypSgMaTm_4(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v4 = swift_allocObject();
  result = memcpy((v4 + 16), __src, 0x128uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t AccessibilityViewGraph.readAndUpdate(graph:)(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *WeakValue;
  v5 = WeakValue[1];
  *(v1 + 24) = 1;
  if (*(v1 + 16) == v5 || (*(v1 + 16) = v5, *(v1 + 24) = 0, swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
  {
  }

  else
  {
    v6 = *(a1 + 208);
    ObjectType = swift_getObjectType();
    v8 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for AccessibilityHost, &protocol descriptor for AccessibilityHost);
    v9 = *(v6 + 16);

    v9(v14, v8, v8, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v14[0])
    {
      v10 = v14[1];
      v11 = swift_getObjectType();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(v10 + 8))(partial apply for closure #1 in AccessibilityViewGraph.postUpdate(graph:list:), v12);
      swift_unknownObjectRelease();
    }
  }

  return v4;
}

double closure #1 in ViewGraph.setAccessibilityFocusNeedsUpdate()(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  v2 = ViewGraph.subscript.getter();
  if (v2)
  {
    *(v2 + 44) = 1;
    GraphHost.setNeedsUpdate(mayDeferUpdate:values:)();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(a1 + 208);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(ObjectType, v4, 0.0);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t closure #1 in ViewRendererHost.accessibilityNodes.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  if (ViewGraph.subscript.getter())
  {
    result = AccessibilityViewGraph.readAndUpdate(graph:)(a1);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

void closure #1 in static SwiftUIAccessibilityTextResolver.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = static NSAttributedStringKey.coreAXSpeechAnnouncementPriority.getter();
  v3 = 0xD00000000000001ELL;
  v4 = "urrentValueLabel.";
  if (v1 == 1)
  {
    v4 = "UIAccessibilityPriorityHigh";
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = "UIAccessibilityPriorityDefault";
  }

  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v5;
  v7[1] = v6 | 0x8000000000000000;
  specialized Dictionary.subscript.setter(v7, v2);
}

uint64_t protocol witness for static ImageAccessibilityProvider.makeView(resolved:configuration:) in conformance SwiftUIImageAccessibilityProvider@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[9];
  v4 = a1[7];
  v33 = a1[8];
  v34 = v3;
  v5 = a1[9];
  v35[0] = a1[10];
  *(v35 + 11) = *(a1 + 171);
  v6 = a1[5];
  v8 = a1[3];
  v29 = a1[4];
  v7 = v29;
  v30 = v6;
  v9 = a1[5];
  v10 = a1[7];
  v31 = a1[6];
  v11 = v31;
  v32 = v10;
  v12 = a1[1];
  v26[0] = *a1;
  v26[1] = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v27 = a1[2];
  v16 = v27;
  v28 = v13;
  *(a3 + 128) = v33;
  *(a3 + 144) = v5;
  *(a3 + 160) = a1[10];
  *(a3 + 171) = *(a1 + 171);
  *(a3 + 64) = v7;
  *(a3 + 80) = v9;
  *(a3 + 96) = v11;
  *(a3 + 112) = v4;
  *a3 = v15;
  *(a3 + 16) = v14;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v21 = a2[4];
  v22 = *(a2 + 40);
  v23 = *(a2 + 41);
  *(a3 + 32) = v16;
  *(a3 + 48) = v8;
  *(a3 + 192) = v17;
  *(a3 + 200) = v18;
  *(a3 + 208) = v19;
  *(a3 + 216) = v20;
  *(a3 + 224) = v21;
  *(a3 + 232) = v22;
  *(a3 + 233) = v23;
  outlined init with copy of Image.Resolved(v26, &v25);

  return outlined copy of AccessibilityImageLabel?(v18, v19, v20, v21);
}

void *protocol witness for ViewModifier.body(content:) in conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier@<X0>(void *a1@<X8>)
{
  result = specialized View.accessibilityHidden(_:)(*v1, v5);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI30AccessibilityEnabledTechnologyOAH0K5FocusV6TargetVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI30klm7O_AI0J5n2V6O4VTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjNIsgnndzo_Tf1nc_n03_s7i4UI18kn48V8filtered3forAcA16ViewRendererHost_p_tFSbAA0C17lm5O_AC6O7VtXEfU_AH16ViewRendererHost_pTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_unknownObjectRetain();
    v10 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, a2, a3, a4, a5);
    swift_unknownObjectRelease_n();

    return v10;
  }

  return result;
}

double partial apply for closure #1 in AccessibilityViewGraph.postUpdate(graph:list:)()
{
  *(*(v0 + 16) + 24) = 1;

  return result;
}

uint64_t assignWithCopy for AccessibilityViewGraph(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 7);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 9);
  *(a1 + 40) = *(a2 + 10);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 48) = a2[6];
  return a1;
}

uint64_t assignWithTake for AccessibilityViewGraph(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityViewGraph(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AccessibilityViewGraph(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = result;
  v23 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    outlined init with copy of AccessibilityFocus.Target(*(a3 + 56) + 8 * v15, v25);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      ObjectType = swift_getObjectType();
      v19 = ViewRendererHost.shouldNotifyForAccessibilityFocus(of:)(v17, ObjectType, a5);

      result = outlined destroy of AccessibilityFocus.Target(v25);
      if (v19)
      {
        *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
        }
      }
    }

    else
    {
      result = outlined destroy of AccessibilityFocus.Target(v25);
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_unknownObjectRetain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      swift_unknownObjectRetain();
      v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI30AccessibilityEnabledTechnologyOAH0K5FocusV6TargetVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI30klm7O_AI0J5n2V6O4VTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjNIsgnndzo_Tf1nc_n03_s7i4UI18kn48V8filtered3forAcA16ViewRendererHost_p_tFSbAA0C17lm5O_AC6O7VtXEfU_AH16ViewRendererHost_pTf1nnc_n(v15, v10, a1, a2, a3);
      MEMORY[0x18D0110E0](v15, -1, -1);
      swift_unknownObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
  swift_unknownObjectRetain();
  v13 = specialized closure #1 in _NativeDictionary.filter(_:)((v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, a1, a2, a3);
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_willThrow();
  }

  swift_unknownObjectRelease_n();
  return v13;
}

unint64_t lazy protocol witness table accessor for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIHiddenAccessibilityProvider, &type metadata for SwiftUIHiddenAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider);
  }

  return result;
}

void specialized static SwiftUIAccessibilityTextResolver.resolveTextStyleAttributes(_:textStyle:environment:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[36];
  if (v3 == 1)
  {
    return;
  }

  v4 = *a3;
  v5 = a3[1];
  v7 = a2[32];
  v6 = a2[33];
  v8 = a2[34];
  v9 = a2[35];
  if (v7 != 8)
  {
    v10 = static NSAttributedStringKey.coreAXTextualContext.getter();
    if (v7 > 3u)
    {
      v11 = MEMORY[0x1E69DD998];
      if (v7 != 6)
      {
        v11 = MEMORY[0x1E69DD9A0];
      }

      v12 = MEMORY[0x1E69DD988];
      if (v7 != 4)
      {
        v12 = MEMORY[0x1E69DD990];
      }

      if (v7 <= 5u)
      {
        v11 = v12;
      }
    }

    else if (v7 > 1u)
    {
      v11 = MEMORY[0x1E69DD978];
      if (v7 != 2)
      {
        v11 = MEMORY[0x1E69DD980];
      }
    }

    else
    {
      if (!v7)
      {
        v21 = 0u;
        v22 = 0u;
LABEL_19:
        specialized Dictionary.subscript.setter(&v21, v10);
        goto LABEL_20;
      }

      v11 = MEMORY[0x1E69DD970];
    }

    v13 = *v11;
    type metadata accessor for UIAccessibilityTextualContext(0);
    *(&v22 + 1) = v14;
    *&v21 = v13;
    goto LABEL_19;
  }

LABEL_20:
  if ((v7 & 0xFF00) != 0x700)
  {
    v15 = static NSAttributedStringKey.coreAXTextHeadingLevel.getter();
    *(&v22 + 1) = MEMORY[0x1E69E6810];
    *&v21 = BYTE1(v7);
    specialized Dictionary.subscript.setter(&v21, v15);
  }

  if (v3)
  {
    outlined copy of Text?(v6, v8, v9, v3);
    v16 = static NSAttributedStringKey.coreAXLabel.getter();
    *&v21 = v4;
    *(&v21 + 1) = v5;
    v20[1] = 0;
    v20[2] = 0;
    MEMORY[0x18D009CB0](v20);
    v17 = Text.resolveString(in:with:idiom:)();
    *(&v22 + 1) = MEMORY[0x1E69E6158];
    *&v21 = v17;
    *(&v21 + 1) = v18;
    specialized Dictionary.subscript.setter(&v21, v16);
    outlined consume of Text.Storage(v6, v8, v9 & 1);
  }

  if ((v7 & 0xFF0000) != 0x20000)
  {
    v19 = static NSAttributedStringKey.coreAXDurationTimeMMSS.getter();
    *(&v22 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v21) = BYTE2(v7) & 1;
    specialized Dictionary.subscript.setter(&v21, v19);
  }
}

void specialized static SwiftUIAccessibilityTextResolver.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, int *a4)
{
  v42 = type metadata accessor for Locale();
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 1);
  v18 = a2[16];
  v19 = *a3;
  v40 = a3[1];
  v41 = v19;
  v43 = *a4;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI33AccessibilityAnnouncementPriorityO_s5NeverOytTB503_s7c43UI0A27UIAccessibilityTextResolverV36resolvee161SpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZyAA0G20fG6OXEfU_SDySo0uV3KeyaypGTf1cn_n(a2[17]);
  v20 = MEMORY[0x1E69E6370];
  if (v15 != 2)
  {
    v21 = static NSAttributedStringKey.coreAXSpeechPunctuation.getter();
    *(&v47 + 1) = v20;
    LOBYTE(v46) = v15 & 1;
    specialized Dictionary.subscript.setter(&v46, v21);
  }

  if (v16 != 2)
  {
    v22 = static NSAttributedStringKey.coreAXSpeechSpellOut.getter();
    *(&v47 + 1) = v20;
    LOBYTE(v46) = v16 & 1;
    specialized Dictionary.subscript.setter(&v46, v22);
  }

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSd_s5NeverOytTg5227_s7SwiftUI0A27UIAccessibilityTextResolverV36resolveAccessibilitySpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZySdXEfU2_SDySo0rS3KeyaypGTf1cn_n(v17, v18);
  v23 = *a1;
  if (*(*a1 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(), (v25 & 1) != 0))
  {
    outlined init with copy of Any(*(v23 + 56) + 32 * v24, v45);
    outlined init with take of Any(v45, &v46);
    v26 = static NSAttributedStringKey.coreAXSpeechLanguage.getter();
    outlined init with copy of Any(&v46, v45);
    specialized Dictionary.subscript.setter(v45, v26);
    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  else
  {
    v27 = static NSAttributedStringKey.coreAXSpeechLanguage.getter();
    if (*(v23 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(), (v29 & 1) != 0))
    {
      outlined init with copy of Any(*(v23 + 56) + 32 * v28, &v46);

      _sypSgWOhTm_3(&v46, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }

    else
    {

      v46 = 0u;
      v47 = 0u;
      _sypSgWOhTm_3(&v46, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      v30 = v44;
      if ((v43 & 2) != 0)
      {
        *&v46 = v41;
        *(&v46 + 1) = v40;
        EnvironmentValues.locale.getter();
        static Locale.current.getter();
        _s7SwiftUI30AccessibilityRelationshipScopeCAcA11PropertyKeyAAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v31 = v42;
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v30 + 8);
        v33(v11, v31);
        v33(v14, v31);
        if ((v32 & 1) == 0)
        {
          *&v46 = v41;
          *(&v46 + 1) = v40;
          v34 = v39;
          EnvironmentValues.locale.getter();
          v35 = Locale.bcp47LanguageCode.getter();
          v37 = v36;
          v33(v34, v42);
          if (v37)
          {
            v38 = static NSAttributedStringKey.coreAXSpeechLanguage.getter();
            *(&v47 + 1) = MEMORY[0x1E69E6158];
            *&v46 = v35;
            *(&v46 + 1) = v37;
            specialized Dictionary.subscript.setter(&v46, v38);
          }
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier()
{
  result = lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier;
  if (!lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIPrivacyReductionAccessibilityProvider.Modifier, &type metadata for SwiftUIPrivacyReductionAccessibilityProvider.Modifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(uint64_t a1)
{
  type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(0, &lazy cache variable for type metadata for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration, MEMORY[0x1E697FD00], MEMORY[0x1E697FCF8], type metadata accessor for AccessibilityStaticTextModifier.Configuration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of [Text.Modifier](uint64_t a1, uint64_t a2)
{
  _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Text.Modifier], MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static SwiftUILayoutAccessibilityProvider.makeAccessibility(inputs:outputs:)(__int128 *a1, uint64_t *a2)
{
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0 || (PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
  {
    result = PreferencesOutputs.subscript.getter();
    if ((result & 0x100000000) != 0)
    {
      return result;
    }
  }

  else
  {
    _ViewInputs.accessibilityEnabled.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type LayoutScrollableTransform and conformance LayoutScrollableTransform();
    Attribute.init<A>(body:value:flags:update:)();
  }

  return PreferencesOutputs.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(255, &lazy cache variable for type metadata for ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, MEMORY[0x1E697FD00], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E697FCF8];
    v4[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(255, &lazy cache variable for type metadata for ModifiedContent<Image.Resolved, AccessibilityImageModifier>, MEMORY[0x1E6981730], &type metadata for AccessibilityImageModifier, MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981728];
    v4[1] = &protocol witness table for AccessibilityImageModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier, &type metadata for SwiftUIPrivacyReductionAccessibilityProvider.Modifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, AccessibilityAttachmentModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier, &type metadata for SwiftUIPrivacyReductionAccessibilityProvider.Modifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v74 = a8;
  v72 = a6;
  v73 = a7;
  v81 = a2;
  v82 = a5;
  v79 = a1;
  v80 = a4;
  v71 = a9;
  v68 = a22;
  v70 = a21;
  v64 = a20;
  v60 = a19;
  v69 = a18;
  v78 = a16;
  v67 = a15;
  v23 = a13;
  swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v56 - v26;
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v77 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v56 - v32;
  v59 = *a10;
  v75 = a13;
  if (v31)
  {
    v34 = a11;
    v66 = a11;
    v35 = a12;
    v76 = a13;
    v65 = v31;
  }

  else
  {
    v36 = static Text.System.search.getter();
    v34 = a11;
    v66 = v36;
    v35 = v37;
    v76 = v38;
    v65 = v39;
    v31 = 0;
    v23 = v75;
  }

  v61 = v34;
  v62 = a12;
  v83 = v79;
  v84 = v81;
  v85 = a3;
  v86 = v80;
  v63 = v31;
  outlined copy of Text?(v34, a12, v23, v31);
  v58 = type metadata accessor for Binding();
  Binding.zip<A>(with:)();
  v40 = v60;
  v41 = v64;
  v42 = v68;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v83 = a17;
  v84 = v40;
  v85 = v41;
  v86 = v42;
  v43 = type metadata accessor for StringTokensToAttributedStringProjection(0, &v83);
  swift_getWitnessTable(protocol conformance descriptor for StringTokensToAttributedStringProjection<A>, v43);
  Binding.projecting<A>(_:)();
  (*(v25 + 8))(v27, v24);
  v44 = outlined init with copy of Binding<AttributedString>(v33, v77);
  v56 = &v56;
  MEMORY[0x1EEE9AC00](v44);
  v45 = v33;
  v57 = v33;
  v46 = v69;
  v47 = v70;
  *(&v56 - 14) = a17;
  *(&v56 - 13) = v46;
  *(&v56 - 12) = v40;
  *(&v56 - 11) = v41;
  *(&v56 - 10) = v47;
  *(&v56 - 9) = v42;
  *(&v56 - 8) = v45;
  v48 = v66;
  *(&v56 - 7) = v66;
  v49 = v76 & 1;
  v50 = v35;
  v51 = v65;
  outlined copy of Text.Storage(v48, v50, v76 & 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  v83 = MEMORY[0x1E6981E70];
  v84 = AssociatedTypeWitness;
  v85 = v46;
  v86 = MEMORY[0x1E6981E60];
  v87 = v42;
  v88 = v47;
  v53 = type metadata accessor for TokenField(0, &v83);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v53);
  SearchModifier.init(text:isPresented:prompt:placement:control:)(v77, v72, v73, v74, v48, v50, v76 & 1, v51, v71, v59, partial apply for closure #1 in SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:), (&v56 - 16), v53, WitnessTable);

  outlined consume of Text.Storage(v48, v50, v49);

  outlined consume of Text?(v61, v62, v75, v63);
  (*(*(v58 - 8) + 8))(v82);
  return outlined destroy of Binding<AttributedString>?(v57, type metadata accessor for Binding<AttributedString>);
}

uint64_t closure #1 in SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a7;
  v43 = a5;
  v44 = a6;
  v45 = a9;
  v38 = a13;
  v39 = a14;
  v40 = a10;
  v41 = a1;
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46[0] = MEMORY[0x1E6981E70];
  v46[1] = AssociatedTypeWitness;
  v46[2] = a10;
  v46[3] = MEMORY[0x1E6981E60];
  v46[4] = a14;
  v46[5] = a13;
  v21 = type metadata accessor for TokenField(0, v46);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v37 - v26;
  outlined init with copy of Binding<AttributedString>(v41, v19);
  v28 = v42;

  v29 = a2;
  v30 = a2;
  v31 = a3;
  outlined copy of Text.Storage(v30, a3, a4 & 1);
  v32 = v43;

  *(&v36 + 1) = MEMORY[0x1E6981E60];
  *(&v35 + 1) = AssociatedTypeWitness;
  *&v36 = v40;
  *&v35 = MEMORY[0x1E6981E70];
  TokenField.init(valueType:text:prompt:token:label:)(v37, v29, v31, a4 & 1, v32, v44, v28, v24, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, v35, v36, v39, v38);
  swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v22 + 8);
  v33(v24, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v27, v21);
}

uint64_t SuggestedTokensView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v55 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = v4;
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[6];
  v12 = v10[7];
  v51 = v10[3];
  v52 = v11;
  v14 = type metadata accessor for SearchCompletion(255, v51, v11, v13);
  v59 = *(a1 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64[1] = v7;
  v64[2] = AssociatedTypeWitness;
  v50 = AssociatedTypeWitness;
  v60 = v14;
  v64[3] = v14;
  v48 = v59;
  v64[4] = v59;
  v64[5] = AssociatedConformanceWitness;
  v17 = type metadata accessor for ForEach();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v49 = v46 - v22;
  v23 = type metadata accessor for Optional();
  v56 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v57 = v46 - v27;
  if (SuggestedTokensView.shouldRenderTokens.getter(a1))
  {
    v28 = type metadata accessor for Binding();
    v46[1] = v9;
    MEMORY[0x18D00ACC0](v28);
    v29 = v55;
    (*(v55 + 16))(v5, v2, a1);
    v30 = *(v29 + 80);
    v47 = v18;
    v31 = v20;
    v32 = (v30 + 64) & ~v30;
    v33 = swift_allocObject();
    *&v34 = v7;
    v35 = v52;
    *(&v34 + 1) = v51;
    v36 = v59;
    *(v33 + 16) = v34;
    *(v33 + 32) = v36;
    *&v59 = v7;
    v37 = v54;
    *(v33 + 48) = v35;
    *(v33 + 56) = v37;
    (*(v29 + 32))(v33 + v32, v5, a1);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchCompletion<A>, v60);
    ForEach<>.init(_:content:)();
    v61 = WitnessTable;
    swift_getWitnessTable(MEMORY[0x1E69819D0], v17, &v61);
    v39 = v49;
    static ViewBuilder.buildExpression<A>(_:)();
    v40 = v47;
    v41 = *(v47 + 8);
    v41(v31, v17);
    static ViewBuilder.buildExpression<A>(_:)();
    v41(v39, v17);
    (*(v40 + 32))(v25, v31, v17);
    (*(v40 + 56))(v25, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v25, 1, 1, v17);
    v64[0] = swift_getWitnessTable(protocol conformance descriptor for SearchCompletion<A>, v60);
    swift_getWitnessTable(MEMORY[0x1E69819D0], v17, v64);
  }

  v43 = v56;
  v42 = v57;
  (*(v56 + 16))(v57, v25, v23);
  v44 = *(v43 + 8);
  v44(v25, v23);
  v63 = swift_getWitnessTable(protocol conformance descriptor for SearchCompletion<A>, v60);
  v62 = swift_getWitnessTable(MEMORY[0x1E69819D0], v17, &v63);
  swift_getWitnessTable(MEMORY[0x1E6982090], v23, &v62);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v44)(v42, v23);
}

uint64_t SuggestedTokensView.shouldRenderTokens.getter(uint64_t a1)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    if (specialized Environment.wrappedValue.getter(*(v1 + *(a1 + 76)), *(v1 + *(a1 + 76) + 8)))
    {
      specialized Environment.wrappedValue.getter(v9);
      type metadata accessor for Binding<AttributedString>(0);
      v11 = v10;
      if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
      {
        MEMORY[0x18D00ACC0](v11);
        outlined destroy of Binding<AttributedString>?(v9, type metadata accessor for Binding<AttributedString>);
        v12 = AttributedString.isEmpty.getter();
        (*(v4 + 8))(v6, v3);
        return v12 & 1;
      }

      outlined destroy of Binding<AttributedString>?(v9, type metadata accessor for Binding<AttributedString>?);
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t closure #1 in SuggestedTokensView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v30 = a6;
  v32 = a5;
  v29 = a3;
  v33 = a2;
  v34 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v29 - v14;
  v17 = type metadata accessor for SearchCompletion(0, a4, a7, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - v23;
  (*(v13 + 16))(v15, a1, AssociatedTypeWitness, v22);
  v25 = v15;
  v26 = v31;
  AnyToken.init<A>(_:)(v25, AssociatedTypeWitness, v43);
  v44 = 1;
  v35 = v29;
  v36 = a4;
  v37 = v32;
  v38 = v30;
  v39 = a7;
  v40 = v26;
  v41 = v33;
  v42 = a1;
  SearchCompletion.init(kind:label:)(v43, partial apply for closure #1 in closure #1 in SuggestedTokensView.body.getter, a4, a7, v20);
  swift_getWitnessTable(protocol conformance descriptor for SearchCompletion<A>, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v18 + 8);
  v27(v20, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return v27(v24, v17);
}

uint64_t closure #1 in closure #1 in SuggestedTokensView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  v22[5] = v18;
  v19 = type metadata accessor for SuggestedTokensView(0, v22);
  (*(a1 + *(v19 + 68)))(a2);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v7 + 8);
  v20(v9, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v12, a4);
}

uint64_t SuggestedTokensView.init(suggestedTokens:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = type metadata accessor for Binding();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v25[0] = a4;
  v25[1] = a5;
  v25[2] = a6;
  v25[3] = a7;
  v25[4] = a8;
  v25[5] = a10;
  v20 = type metadata accessor for SuggestedTokensView(0, v25);
  v21 = (a9 + v20[17]);
  *v21 = a2;
  v21[1] = a3;
  v22 = v20[18];
  *(a9 + v22) = swift_getKeyPath();
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(0, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v20[19];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  return result;
}

uint64_t View.searchable<A, B>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v63 = a7;
  v64 = a8;
  v54 = a6;
  v55 = a5;
  v59 = a2;
  v60 = a4;
  v65 = a3;
  v66 = a9;
  v61 = a11;
  v62 = a10;
  v57 = a12;
  v58 = a13;
  v68 = a1;
  v69 = a17;
  v56 = a18;
  v67 = a14;
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v50 = &v46 - v23;
  v47 = a19;
  v49 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70[0] = MEMORY[0x1E6981E70];
  v70[1] = AssociatedTypeWitness;
  v70[2] = a16;
  v70[3] = MEMORY[0x1E6981E60];
  v48 = a16;
  v70[4] = a21;
  v70[5] = a20;
  v46 = a21;
  v26 = type metadata accessor for TokenField(255, v70);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v26);
  v52 = type metadata accessor for SearchModifier(0, v26, WitnessTable, v28);
  v53 = *(v52 - 8);
  v29 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - v30;
  v31 = *v54;
  (*(v22 + 16))(v24, v55, v21, v29);
  LOBYTE(v70[0]) = v31;
  v32 = swift_allocObject();
  v32[2] = v67;
  v32[3] = a15;
  v33 = v69;
  v32[4] = a16;
  v32[5] = v33;
  v35 = v56;
  v34 = v57;
  v32[6] = v56;
  v32[7] = a19;
  v32[8] = a20;
  v32[9] = a21;
  v36 = v58;
  v32[10] = v34;
  v32[11] = v36;

  v37 = v59;

  v38 = v60;

  v39 = v63;
  v40 = v64;
  v41 = v61;
  v42 = v62;
  outlined copy of Text?(v63, v64, v62, v61);

  v43 = v51;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v68, v37, v65, v38, v50, 0, 0, 0, v51, v70, v39, v40, v42, v41, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v32, v49, v48, v35, v47, a20, v46);
  v44 = v52;
  MEMORY[0x18D00A570](v43, v67, v52, v69);
  return (*(v53 + 8))(v43, v44);
}

uint64_t View.searchable<A, B>(text:editableTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v63 = a9;
  v57 = a7;
  v58 = a8;
  v50 = a6;
  v51 = a5;
  v53 = a2;
  v54 = a4;
  v62 = a3;
  v59 = a12;
  v55 = a13;
  v52 = a10;
  v46 = a20;
  v45 = a21;
  v61 = a17;
  v47 = a16;
  v56 = a18;
  v49 = a19;
  v60 = a14;
  v48 = a15;
  v22 = type metadata accessor for Binding();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - v24;
  v44 = &v44 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64[0] = MEMORY[0x1E6981E70];
  v64[1] = AssociatedTypeWitness;
  v64[2] = a16;
  v64[3] = MEMORY[0x1E6981E60];
  v64[4] = a21;
  v64[5] = a20;
  v27 = type metadata accessor for TokenField(255, v64);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v27);
  v30 = type metadata accessor for SearchModifier(0, v27, WitnessTable, v29);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v44 - v33;
  v35 = *v50;
  (*(v23 + 16))(v25, v51, v22, v32);
  LOBYTE(v64[0]) = v35;
  v36 = a1;

  v37 = v53;

  v38 = v54;

  v40 = v57;
  v39 = v58;
  v41 = v52;
  outlined copy of Text?(v57, v58, v52, a11);

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v36, v37, v62, v38, v44, 0, 0, 0, v34, v64, v40, v39, v41, a11, v59, v42, v48, v47, v56, v49, v46, v45);
  MEMORY[0x18D00A570](v34, v60, v30, v61);
  return (*(v31 + 8))(v34, v30);
}

uint64_t View.searchable<A, B>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v60 = a8;
  v61 = a7;
  v52 = a6;
  v53 = a5;
  v69 = a4;
  v67 = a3;
  v47 = a2;
  v48 = a1;
  v68 = a9;
  v65 = a18;
  v66 = a13;
  v62 = a14;
  v63 = a17;
  LODWORD(v59) = a10;
  v64 = a12;
  v55 = a11;
  v51 = a21;
  v58 = a19;
  v50 = a16;
  v54 = a15;
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v49 = &v47 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70[0] = MEMORY[0x1E6981E70];
  v70[1] = AssociatedTypeWitness;
  v70[2] = a16;
  v70[3] = MEMORY[0x1E6981E60];
  v70[4] = a21;
  v70[5] = a20;
  v26 = type metadata accessor for TokenField(255, v70);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v26);
  v56 = type metadata accessor for SearchModifier(0, v26, WitnessTable, v28);
  v57 = *(v56 - 8);
  v29 = MEMORY[0x1EEE9AC00](v56);
  v31 = &v47 - v30;
  v32 = *v52;
  (*(v22 + 16))(v24, v53, v21, v29);
  LOBYTE(v70[0]) = v32;

  v33 = Text.init(_:tableName:bundle:comment:)();
  v60 = v34;
  v61 = v33;
  v59 = v35;
  v55 = v36 & 1;
  v37 = swift_allocObject();
  v39 = v62;
  v38 = v63;
  v40 = v54;
  v37[2] = v62;
  v37[3] = v40;
  v41 = v50;
  v37[4] = v50;
  v37[5] = v38;
  v42 = v65;
  v43 = v58;
  v37[6] = v65;
  v37[7] = v43;
  v44 = v51;
  v37[8] = a20;
  v37[9] = v44;
  v37[10] = v64;
  v37[11] = v66;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v48, v47, v67, v69, v49, 0, 0, 0, v31, v70, v61, v60, v55, v59, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v37, v40, v41, v42, v43, a20, v44);
  v45 = v56;
  MEMORY[0x18D00A570](v31, v39, v56, v38);
  return (*(v57 + 8))(v31, v45);
}

uint64_t View.searchable<A, B>(text:editableTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v58 = a8;
  v59 = a7;
  v51 = a6;
  v52 = a5;
  v55 = a2;
  v56 = a4;
  v63 = a3;
  v47 = a1;
  v65 = a9;
  v66 = a17;
  v64 = a14;
  v60 = a13;
  v61 = a18;
  v57 = a10;
  v62 = a12;
  v48 = a21;
  v49 = a20;
  v54 = a19;
  v50 = a16;
  v53 = a15;
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67[0] = MEMORY[0x1E6981E70];
  v67[1] = AssociatedTypeWitness;
  v67[2] = a16;
  v67[3] = MEMORY[0x1E6981E60];
  v67[4] = a21;
  v67[5] = a20;
  v26 = type metadata accessor for TokenField(255, v67);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v26);
  v29 = type metadata accessor for SearchModifier(0, v26, WitnessTable, v28);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v46 - v32;
  v34 = *v51;
  (*(v22 + 16))(v24, v52, v21, v31);
  LOBYTE(v67[0]) = v34;

  v35 = v55;

  v36 = v56;

  v37 = Text.init(_:tableName:bundle:comment:)();
  v39 = v38;
  v41 = v40;
  v43 = v42 & 1;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v47, v35, v63, v36, v24, 0, 0, 0, v33, v67, v37, v39, v43, v41, v62, v44, v53, v50, v61, v54, v49, v48);
  MEMORY[0x18D00A570](v33, v64, v29, v66);
  return (*(v30 + 8))(v33, v29);
}

uint64_t View.searchable<A, B, C>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v75 = a1;
  v72 = a8;
  v73 = a3;
  v65 = a5;
  v66 = a7;
  v64 = a6;
  v76 = a4;
  v77 = a2;
  v74 = a9;
  v71 = a10;
  v69 = a11;
  v67 = a19;
  v57 = a18;
  v58 = a20;
  v70 = a16;
  v62 = a17;
  v68 = a15;
  v63 = a14;
  v20 = *(a14 - 8);
  v56 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a12;
  v23 = type metadata accessor for Binding();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  v55 = &v54 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78[0] = MEMORY[0x1E6981E70];
  v78[1] = AssociatedTypeWitness;
  v78[2] = a13;
  v78[3] = MEMORY[0x1E6981E60];
  v78[4] = a20;
  v78[5] = a18;
  v28 = type metadata accessor for TokenField(255, v78);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v28);
  v60 = type metadata accessor for SearchModifier(0, v28, WitnessTable, v30);
  v61 = *(v60 - 8);
  v31 = MEMORY[0x1EEE9AC00](v60);
  v33 = &v54 - v32;
  v34 = *v64;
  (*(v24 + 16))(v26, v65, v23, v31);
  LOBYTE(v78[0]) = v34;
  v35 = v63;
  (*(v20 + 16))(v22, v66, v63);

  v36 = v35;
  v37 = v67;
  v38 = Text.init<A>(_:)();
  v65 = v39;
  v66 = v38;
  v64 = v40;
  v54 = v41 & 1;
  v42 = swift_allocObject();
  v44 = v68;
  v43 = v69;
  v45 = v59;
  v42[2] = v69;
  v42[3] = v45;
  v46 = v56;
  v42[4] = v56;
  v42[5] = v36;
  v47 = v70;
  v42[6] = v44;
  v42[7] = v47;
  v48 = v62;
  v49 = v57;
  v42[8] = v62;
  v42[9] = v49;
  v42[10] = v37;
  v50 = v58;
  v51 = v72;
  v42[11] = v58;
  v42[12] = v51;
  v42[13] = v71;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v75, v77, v73, v76, v55, 0, 0, 0, v33, v78, v66, v65, v54, v64, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:placement:prompt:token:), v42, v45, v46, v47, v48, v49, v50);
  v52 = v60;
  MEMORY[0x18D00A570](v33, v43, v60, v44);
  return (*(v61 + 8))(v33, v52);
}

uint64_t View.searchable<A, B, C>(text:editableTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v66 = a8;
  v67 = a3;
  v60 = a7;
  v61 = a2;
  v57 = a6;
  v58 = a5;
  v59 = a1;
  v69 = a9;
  v64 = a4;
  v65 = a10;
  v62 = a18;
  v52 = a19;
  v51 = a20;
  v68 = a15;
  v53 = a14;
  v56 = a13;
  v20 = *(a13 - 8);
  v63 = a16;
  v55 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a12;
  v23 = type metadata accessor for Binding();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - v25;
  v50 = &v49 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71[0] = MEMORY[0x1E6981E70];
  v71[1] = AssociatedTypeWitness;
  v71[2] = a14;
  v71[3] = MEMORY[0x1E6981E60];
  v71[4] = a20;
  v71[5] = a19;
  v28 = type metadata accessor for TokenField(255, v71);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v28);
  v31 = type metadata accessor for SearchModifier(0, v28, WitnessTable, v30);
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v49 - v34;
  v36 = *v57;
  (*(v24 + 16))(v26, v58, v23, v33);
  LOBYTE(v71[0]) = v36;
  (*(v20 + 16))(v22, v60, v56);
  v37 = v59;

  v38 = v61;

  v39 = v64;

  v40 = Text.init<A>(_:)();
  v42 = v41;
  v44 = v43;
  v46 = v45 & 1;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v37, v38, v67, v39, v50, 0, 0, 0, v35, v71, v40, v42, v46, v44, v66, v47, v54, v53, v63, v55, v52, v51);
  MEMORY[0x18D00A570](v35, v70, v31, v68);
  return (*(v32 + 8))(v35, v31);
}

uint64_t View.searchable<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v72 = a8;
  v70 = a6;
  v71 = a7;
  v60 = a5;
  v73 = a3;
  v74 = a9;
  v78 = a1;
  v68 = a12;
  v69 = a4;
  v67 = a13;
  v65 = a2;
  v66 = a14;
  v64 = a15;
  v75 = a20;
  v76 = a21;
  v63 = a16;
  v55 = a17;
  v77 = a11;
  v59 = a10;
  v56 = a22;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v51 - v26;
  v57 = &v51 - v26;
  v54 = a18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79[0] = MEMORY[0x1E6981E70];
  v79[1] = AssociatedTypeWitness;
  v79[2] = a19;
  v79[3] = MEMORY[0x1E6981E60];
  v53 = a19;
  v79[4] = a24;
  v79[5] = a23;
  v51 = a24;
  v52 = a23;
  v29 = type metadata accessor for TokenField(255, v79);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v29);
  v61 = type metadata accessor for SearchModifier(0, v29, WitnessTable, v31);
  v62 = *(v61 - 8);
  v32 = MEMORY[0x1EEE9AC00](v61);
  v58 = &v51 - v33;
  v34 = *v59;
  (*(v25 + 16))(v27, v60, v24, v32);
  LOBYTE(v79[0]) = v34;
  v35 = swift_allocObject();
  v35[2] = a17;
  v35[3] = a18;
  v36 = v75;
  v37 = v76;
  v35[4] = a19;
  v35[5] = v36;
  v38 = v56;
  v35[6] = v37;
  v35[7] = v38;
  v35[8] = a23;
  v35[9] = a24;
  v39 = v63;
  v35[10] = v64;
  v35[11] = v39;

  v40 = v65;

  v41 = v69;

  v42 = v67;
  v43 = v68;
  v44 = v66;
  outlined copy of Text?(v77, v68, v67, v66);
  v45 = v70;

  v46 = v71;

  v50 = v35;
  v47 = v58;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v78, v40, v73, v41, v57, v45, v46, v72 & 1, v58, v79, v77, v43, v42, v44, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v50, v54, v53, v76, v38, v52, v51);
  v48 = v61;
  MEMORY[0x18D00A570](v47, v55, v61, v75);
  return (*(v62 + 8))(v47, v48);
}

uint64_t View.searchable<A, B>(text:editableTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v68 = a8;
  v64 = a6;
  v65 = a7;
  v57 = a5;
  v61 = a2;
  v62 = a4;
  v69 = a3;
  v48 = a1;
  v71 = a9;
  v72 = a20;
  v70 = a17;
  v63 = a16;
  v59 = a13;
  v60 = a12;
  v66 = a21;
  v67 = a15;
  v58 = a14;
  v53 = a10;
  v50 = a24;
  v51 = a23;
  v56 = a22;
  v52 = a19;
  v55 = a18;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v47 - v26;
  v49 = &v47 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73[0] = MEMORY[0x1E6981E70];
  v73[1] = AssociatedTypeWitness;
  v73[2] = a19;
  v73[3] = MEMORY[0x1E6981E60];
  v73[4] = a24;
  v73[5] = a23;
  v29 = type metadata accessor for TokenField(255, v73);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v29);
  v54 = type metadata accessor for SearchModifier(0, v29, WitnessTable, v31);
  v32 = *(v54 - 8);
  v33 = MEMORY[0x1EEE9AC00](v54);
  v35 = &v47 - v34;
  v36 = *v53;
  (*(v25 + 16))(v27, v57, v24, v33);
  LOBYTE(v73[0]) = v36;

  v37 = v61;

  v38 = v62;

  v39 = v59;
  v40 = v60;
  v41 = v58;
  outlined copy of Text?(a11, v60, v59, v58);
  v42 = v64;

  v43 = v65;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v48, v37, v69, v38, v49, v42, v43, v68 & 1, v35, v73, a11, v40, v39, v41, v67, v44, v55, v52, v66, v56, v51, v50);
  v45 = v54;
  MEMORY[0x18D00A570](v35, v70, v54, v72);
  return (*(v32 + 8))(v35, v45);
}

uint64_t View.searchable<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v74 = a8;
  v72 = a6;
  v73 = a7;
  v61 = a5;
  v79 = a4;
  v75 = a3;
  v55 = a2;
  v56 = a1;
  v76 = a9;
  v70 = a21;
  v71 = a16;
  v77 = a17;
  v78 = a20;
  LODWORD(v66) = a13;
  v69 = a15;
  v63 = a14;
  v62 = a12;
  v65 = a11;
  v54 = a10;
  v57 = a23;
  v64 = a22;
  v60 = a18;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  v58 = &v53 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80[0] = MEMORY[0x1E6981E70];
  v80[1] = AssociatedTypeWitness;
  v80[2] = a19;
  v80[3] = MEMORY[0x1E6981E60];
  v80[4] = a24;
  v80[5] = a23;
  v29 = type metadata accessor for TokenField(255, v80);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v29);
  v32 = type metadata accessor for SearchModifier(0, v29, WitnessTable, v31);
  v33 = *(v32 - 8);
  v67 = v32;
  v68 = v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v59 = &v53 - v35;
  v36 = *v54;
  (*(v25 + 16))(v27, v61, v24, v34);
  LOBYTE(v80[0]) = v36;

  v66 = Text.init(_:tableName:bundle:comment:)();
  v65 = v37;
  v63 = v38;
  v62 = v39 & 1;
  v40 = swift_allocObject();
  v41 = v60;
  v40[2] = v77;
  v40[3] = v41;
  v42 = v78;
  v40[4] = a19;
  v40[5] = v42;
  v43 = v70;
  v44 = v64;
  v40[6] = v70;
  v40[7] = v44;
  v45 = v57;
  v40[8] = v57;
  v40[9] = a24;
  v47 = v71;
  v46 = v72;
  v40[10] = v69;
  v40[11] = v47;

  v48 = v73;

  v52 = v41;
  v49 = v59;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v56, v55, v75, v79, v58, v46, v48, v74 & 1, v59, v80, v66, v65, v62, v63, partial apply for closure #1 in View.searchable<A, B>(text:tokens:isPresented:placement:prompt:token:), v40, v52, a19, v43, v44, v45, a24);
  v50 = v67;
  MEMORY[0x18D00A570](v49, v77, v67, v78);
  return (*(v68 + 8))(v49, v50);
}

uint64_t View.searchable<A, B>(text:editableTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v70 = a8;
  v66 = a6;
  v67 = a7;
  v57 = a5;
  v50 = a4;
  v71 = a3;
  v61 = a2;
  v51 = a1;
  v73 = a9;
  v74 = a20;
  v72 = a17;
  v65 = a16;
  v64 = a13;
  v68 = a21;
  v69 = a15;
  v60 = a14;
  v58 = a12;
  v63 = a11;
  v53 = a10;
  v54 = a24;
  v55 = a23;
  v62 = a22;
  v56 = a19;
  v59 = a18;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v50 - v26;
  v52 = &v50 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75[0] = MEMORY[0x1E6981E70];
  v75[1] = AssociatedTypeWitness;
  v75[2] = a19;
  v75[3] = MEMORY[0x1E6981E60];
  v75[4] = a24;
  v75[5] = a23;
  v29 = type metadata accessor for TokenField(255, v75);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v29);
  v32 = type metadata accessor for SearchModifier(0, v29, WitnessTable, v31);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v50 - v35;
  v37 = *v53;
  (*(v25 + 16))(v27, v57, v24, v34);
  LOBYTE(v75[0]) = v37;

  v38 = v61;

  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  v43 = v42;
  v45 = v44 & 1;
  v46 = v66;

  v47 = v67;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v51, v38, v71, v50, v52, v46, v47, v70 & 1, v36, v75, v39, v41, v45, v43, v69, v48, v59, v56, v68, v62, v55, v54);
  MEMORY[0x18D00A570](v36, v72, v32, v74);
  return (*(v33 + 8))(v36, v32);
}

uint64_t View.searchable<A, B, C>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v76 = a8;
  v74 = a6;
  v75 = a7;
  v67 = a5;
  v81 = a4;
  v82 = a2;
  v77 = a3;
  v78 = a9;
  v83 = a1;
  v72 = a12;
  v73 = a13;
  v71 = a19;
  v80 = a18;
  v66 = a11;
  v63 = a10;
  v70 = a22;
  v60 = a23;
  v59 = a21;
  v64 = a20;
  v58 = a16;
  v65 = a17;
  v23 = *(a17 - 8);
  v79 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Binding();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v56 - v28;
  v61 = &v56 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84[0] = MEMORY[0x1E6981E70];
  v84[1] = AssociatedTypeWitness;
  v84[2] = a16;
  v84[3] = MEMORY[0x1E6981E60];
  v84[4] = a23;
  v84[5] = a21;
  v31 = type metadata accessor for TokenField(255, v84);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v31);
  v68 = type metadata accessor for SearchModifier(0, v31, WitnessTable, v33);
  v69 = *(v68 - 8);
  v34 = MEMORY[0x1EEE9AC00](v68);
  v62 = &v56 - v35;
  v36 = *v63;
  (*(v27 + 16))(v29, v67, v26, v34);
  LOBYTE(v84[0]) = v36;
  v37 = v65;
  (*(v23 + 16))(v25, v66, v65);

  v38 = v70;
  v67 = Text.init<A>(_:)();
  v66 = v39;
  v63 = v40;
  v57 = v41 & 1;
  v42 = swift_allocObject();
  v42[2] = v79;
  v42[3] = a15;
  v43 = v58;
  v42[4] = v58;
  v42[5] = v37;
  v44 = v71;
  v42[6] = v80;
  v42[7] = v44;
  v45 = v64;
  v46 = v59;
  v42[8] = v64;
  v42[9] = v46;
  v47 = v60;
  v42[10] = v38;
  v42[11] = v47;
  v48 = v73;
  v42[12] = v72;
  v42[13] = v48;
  v49 = v74;

  v50 = v75;

  v51 = v62;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v83, v82, v77, v81, v61, v49, v50, v76 & 1, v62, v84, v67, v66, v57, v63, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:isPresented:placement:prompt:token:), v42, a15, v43, v44, v45, v46, v47);
  v52 = v51;
  v53 = v51;
  v54 = v68;
  MEMORY[0x18D00A570](v52, v79, v68, v80);
  return (*(v69 + 8))(v53, v54);
}

uint64_t closure #1 in View.searchable<A, B, C>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6)
{
  v21[0] = a1;
  v21[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v21 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  v18 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v18);
  (v21[0])(v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v14, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v17, a3);
}

uint64_t View.searchable<A, B, C>(text:editableTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v74 = a8;
  v69 = a6;
  v70 = a7;
  v64 = a5;
  v75 = a3;
  v76 = a9;
  v78 = a2;
  v65 = a1;
  v77 = a18;
  v71 = a19;
  v73 = a12;
  v67 = a4;
  v68 = a13;
  v63 = a11;
  v60 = a10;
  v56 = a22;
  v55 = a23;
  v66 = a21;
  v61 = a20;
  v57 = a17;
  v62 = a16;
  v23 = *(a16 - 8);
  v72 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a15;
  v26 = type metadata accessor for Binding();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v53 - v28;
  v54 = &v53 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79[0] = MEMORY[0x1E6981E70];
  v79[1] = AssociatedTypeWitness;
  v79[2] = a17;
  v79[3] = MEMORY[0x1E6981E60];
  v79[4] = a23;
  v79[5] = a22;
  v31 = type metadata accessor for TokenField(255, v79);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v31);
  v58 = type metadata accessor for SearchModifier(0, v31, WitnessTable, v33);
  v34 = *(v58 - 8);
  v35 = MEMORY[0x1EEE9AC00](v58);
  v37 = &v53 - v36;
  v38 = *v60;
  (*(v27 + 16))(v29, v64, v26, v35);
  LOBYTE(v79[0]) = v38;
  (*(v23 + 16))(v25, v63, v62);
  v39 = v65;

  v40 = v67;

  v41 = Text.init<A>(_:)();
  v43 = v42;
  v45 = v44;
  v47 = v46 & 1;
  v48 = v69;

  v49 = v70;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v39, v78, v75, v40, v54, v48, v49, v74 & 1, v37, v79, v41, v43, v47, v45, v73, v50, v59, v57, v71, v61, v56, v55);
  v51 = v58;
  MEMORY[0x18D00A570](v37, v72, v58, v77);
  return (*(v34 + 8))(v37, v51);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v77 = a8;
  v69 = a7;
  v80 = a6;
  v70 = a5;
  v84 = a4;
  v79 = a3;
  v85 = a2;
  v58 = a1;
  v81 = a9;
  v76 = a10;
  v75 = a11;
  v74 = a12;
  v86 = a13;
  v72 = a21;
  v71 = a20;
  v83 = a14;
  v82 = a18;
  v67 = type metadata accessor for Binding();
  v23 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v25 = &v56 - v24;
  v62 = &v56 - v24;
  v63 = a19;
  v57 = a16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = MEMORY[0x1E6981E70];
  v102 = AssociatedTypeWitness;
  v103 = a17;
  v104 = MEMORY[0x1E6981E60];
  v56 = a17;
  v105 = a23;
  v106 = a22;
  v27 = type metadata accessor for TokenField(255, &v101);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v27);
  v66 = type metadata accessor for SearchModifier(0, v27, WitnessTable, v29);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - v30;
  v61 = a15;
  v73 = type metadata accessor for ModifiedContent();
  v78 = *(v73 - 8);
  v31 = MEMORY[0x1EEE9AC00](v73);
  v64 = &v56 - v32;
  v33 = *v69;
  (*(v23 + 16))(v25, v70, v67, v31);
  LOBYTE(v101) = v33;
  v34 = swift_allocObject();
  v34[2] = a15;
  v34[3] = a16;
  v35 = v82;
  v34[4] = a17;
  v34[5] = v35;
  v36 = v71;
  v34[6] = a19;
  v34[7] = v36;
  v37 = v72;
  v34[8] = v72;
  v34[9] = a22;
  v59 = a22;
  v60 = a23;
  v38 = v86;
  v34[10] = a23;
  v34[11] = v38;
  v34[12] = v83;

  v39 = v77;
  v40 = v76;
  v41 = v75;
  v42 = v74;
  outlined copy of Text?(v77, v76, v75, v74);

  v43 = v56;
  v44 = v57;
  v55 = v41;
  v45 = v65;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v58, v85, v79, v84, v62, 0, 0, 0, v65, &v101, v39, v40, v55, v42, partial apply for closure #1 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v34, v57, v56, v36, v37, a22, a23);
  v46 = v64;
  v47 = v61;
  v48 = v66;
  v49 = v82;
  MEMORY[0x18D00A570](v45, v61, v66, v82);
  (*(v68 + 8))(v45, v48);
  v88 = v47;
  v89 = v44;
  v90 = v43;
  v91 = v49;
  v92 = v63;
  v93 = v36;
  v94 = v37;
  v95 = v59;
  v96 = v60;
  v97 = v80;
  v98 = v86;
  v99 = v83;
  v101 = v44;
  v102 = v43;
  v103 = v36;
  v104 = v37;
  v105 = v59;
  v106 = v60;
  v50 = type metadata accessor for SuggestedTokensView(0, &v101);
  v51 = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v48);
  v100[0] = v49;
  v100[1] = v51;
  v52 = v73;
  v53 = swift_getWitnessTable(MEMORY[0x1E697E858], v73, v100);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v50);
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v87, v52, v50, v53);
  return (*(v78 + 8))(v46, v52);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v72 = a8;
  v66 = a7;
  v79 = a6;
  v67 = a5;
  v84 = a4;
  v78 = a3;
  v60 = a2;
  v61 = a1;
  v80 = a9;
  v87 = a21;
  v75 = a20;
  LODWORD(v71) = a11;
  v76 = a13;
  v69 = a12;
  v68 = a10;
  v86 = a14;
  v81 = a15;
  v82 = a22;
  v65 = a23;
  v73 = a18;
  v83 = a19;
  v23 = type metadata accessor for Binding();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  v62 = &v59 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = MEMORY[0x1E6981E70];
  v103 = AssociatedTypeWitness;
  v104 = a17;
  v105 = MEMORY[0x1E6981E60];
  v106 = a23;
  v107 = a22;
  v28 = type metadata accessor for TokenField(255, &v102);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v28);
  v64 = type metadata accessor for SearchModifier(0, v28, WitnessTable, v30);
  v70 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v59 - v31;
  v32 = v81;
  v74 = type metadata accessor for ModifiedContent();
  v77 = *(v74 - 8);
  v33 = MEMORY[0x1EEE9AC00](v74);
  v85 = &v59 - v34;
  v35 = *v66;
  (*(v24 + 16))(v26, v67, v23, v33);
  LOBYTE(v102) = v35;

  v72 = Text.init(_:tableName:bundle:comment:)();
  v71 = v36;
  v38 = v37;
  v69 = v39 & 1;
  v40 = swift_allocObject();
  v40[2] = v32;
  v40[3] = a16;
  v40[4] = a17;
  v41 = v73;
  v42 = v83;
  v40[5] = v73;
  v40[6] = v42;
  v43 = v75;
  v44 = v87;
  v40[7] = v75;
  v40[8] = v44;
  v45 = v82;
  v46 = v65;
  v40[9] = v82;
  v40[10] = v46;
  v47 = v76;
  v40[11] = v76;
  v40[12] = v86;

  v58 = v44;
  v48 = v63;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v61, v60, v78, v84, v62, 0, 0, 0, v63, &v102, v72, v71, v69, v38, partial apply for closure #1 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v40, a16, a17, v43, v58, v45, v46);
  v49 = v81;
  v50 = v64;
  MEMORY[0x18D00A570](v48, v81, v64, v41);
  (*(v70 + 8))(v48, v50);
  v89 = v49;
  v90 = a16;
  v91 = a17;
  v92 = v41;
  v93 = v83;
  v94 = v43;
  v95 = v87;
  v96 = v82;
  v97 = v46;
  v98 = v79;
  v99 = v47;
  v100 = v86;
  v102 = a16;
  v103 = a17;
  v104 = v43;
  v105 = v87;
  v106 = v82;
  v107 = v46;
  v51 = type metadata accessor for SuggestedTokensView(0, &v102);
  v52 = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v50);
  v101[0] = v41;
  v101[1] = v52;
  v53 = v74;
  v54 = swift_getWitnessTable(MEMORY[0x1E697E858], v74, v101);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v51);
  v55 = v54;
  v56 = v85;
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v88, v53, v51, v55);
  return (*(v77 + 8))(v56, v53);
}

uint64_t closure #1 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X5>, uint64_t a5@<X8>)
{
  v20[0] = a1;
  v20[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v20 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v17 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v17);
  (v20[0])(v9);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v10 + 8);
  v18(v13, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v16, a3);
}

uint64_t closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a5;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a6;
  v27 = a8;
  v28 = a9;
  v12 = type metadata accessor for Binding();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v34[0] = a4;
  v34[1] = a5;
  v34[2] = a7;
  v34[3] = a8;
  v34[4] = a9;
  v34[5] = a10;
  v16 = type metadata accessor for SuggestedTokensView(0, v34);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v26 - v22;
  (*(v13 + 16))(v15, v30, v12, v21);
  SuggestedTokensView.init(suggestedTokens:token:)(v15, v31, v32, a4, v29, a7, v27, v28, v19, a10);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v17 + 8);

  v24(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v23, v16);
}

uint64_t View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v71 = a8;
  v68 = a7;
  v78 = a6;
  v69 = a5;
  v86 = a4;
  v77 = a3;
  v85 = a2;
  v70 = a1;
  v79 = a9;
  v87 = a11;
  v88 = a10;
  v76 = a19;
  v74 = a18;
  v84 = a21;
  v80 = a20;
  v81 = a22;
  v73 = a16;
  v67 = a17;
  v83 = a15;
  v22 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Binding();
  v25 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v27 = &v60 - v26;
  v62 = &v60 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = MEMORY[0x1E6981E70];
  v106 = AssociatedTypeWitness;
  v107 = a14;
  v108 = MEMORY[0x1E6981E60];
  v109 = a22;
  v110 = a20;
  v29 = type metadata accessor for TokenField(255, &v105);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v29);
  v65 = type metadata accessor for SearchModifier(0, v29, WitnessTable, v31);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v60 - v32;
  v61 = a12;
  v72 = type metadata accessor for ModifiedContent();
  v75 = *(v72 - 8);
  v33 = MEMORY[0x1EEE9AC00](v72);
  v82 = &v60 - v34;
  v35 = *v68;
  (*(v25 + 16))(v27, v69, v63, v33);
  LOBYTE(v105) = v35;
  v36 = v83;
  (*(v22 + 16))(v24, v71, v83);
  v37 = v70;

  v38 = v84;
  v71 = Text.init<A>(_:)();
  v69 = v39;
  v68 = v40;
  v63 = v41 & 1;
  v42 = swift_allocObject();
  v42[2] = a12;
  v42[3] = a13;
  v42[4] = a14;
  v42[5] = v36;
  v43 = v73;
  v44 = v67;
  v42[6] = v73;
  v42[7] = v44;
  v45 = v74;
  v46 = v76;
  v42[8] = v74;
  v42[9] = v46;
  v47 = v80;
  v42[10] = v80;
  v42[11] = v38;
  v48 = v81;
  v49 = v88;
  v42[12] = v81;
  v42[13] = v49;
  v42[14] = v87;

  v50 = v64;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v37, v85, v77, v86, v62, 0, 0, 0, v64, &v105, v71, v69, v63, v68, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:), v42, a13, a14, v45, v46, v47, v48);
  v51 = v61;
  v52 = v65;
  MEMORY[0x18D00A570](v50, v61, v65, v43);
  (*(v66 + 8))(v50, v52);
  v90 = v51;
  v91 = a13;
  v92 = a14;
  v93 = v83;
  v94 = v43;
  v95 = v44;
  v96 = v45;
  v97 = v46;
  v98 = v80;
  v99 = v84;
  v100 = v81;
  v101 = v78;
  v102 = v88;
  v103 = v87;
  v105 = a13;
  v106 = a14;
  v107 = v45;
  v108 = v46;
  v109 = v80;
  v110 = v81;
  v53 = type metadata accessor for SuggestedTokensView(0, &v105);
  v54 = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v52);
  v104[0] = v43;
  v104[1] = v54;
  v55 = v72;
  v56 = swift_getWitnessTable(MEMORY[0x1E697E858], v72, v104);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v53);
  v57 = v53;
  v58 = v82;
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:), v89, v55, v57, v56);
  return (*(v75 + 8))(v58, v55);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v80 = a8;
  v88 = a7;
  v84 = a6;
  v73 = a5;
  v90 = a4;
  v83 = a3;
  v91 = a2;
  v92 = a1;
  v85 = a9;
  v82 = a10;
  v78 = a13;
  v77 = a14;
  v76 = a15;
  v93 = a16;
  v75 = a22;
  v66 = a21;
  v89 = a12;
  v71 = a11;
  v87 = a17;
  v86 = a18;
  v69 = a23;
  v25 = type metadata accessor for Binding();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - v27;
  v67 = &v61 - v27;
  v63 = a19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v107 = MEMORY[0x1E6981E70];
  v108 = AssociatedTypeWitness;
  v109 = a20;
  v110 = MEMORY[0x1E6981E60];
  v62 = a20;
  v111 = a25;
  v112 = a24;
  v30 = type metadata accessor for TokenField(255, &v107);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v30);
  v72 = type metadata accessor for SearchModifier(0, v30, WitnessTable, v32);
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v61 - v33;
  v34 = v86;
  v79 = type metadata accessor for ModifiedContent();
  v81 = *(v79 - 8);
  v35 = MEMORY[0x1EEE9AC00](v79);
  v68 = &v61 - v36;
  v37 = *v71;
  (*(v26 + 16))(v28, v73, v25, v35);
  LOBYTE(v107) = v37;
  v38 = swift_allocObject();
  v38[2] = v34;
  v38[3] = a19;
  v38[4] = a20;
  v38[5] = a21;
  v39 = v75;
  v40 = v69;
  v38[6] = v75;
  v38[7] = v40;
  v64 = a24;
  v38[8] = a24;
  v38[9] = a25;
  v65 = a25;
  v41 = v87;
  v38[10] = v93;
  v38[11] = v41;

  v42 = v78;
  v43 = v77;
  v44 = v76;
  outlined copy of Text?(v89, v78, v77, v76);

  v45 = v80;

  v60 = v40;
  v46 = v40;
  v47 = v62;
  v48 = v63;
  v59 = v42;
  v49 = v70;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v92, v91, v83, v90, v67, v88, v45, v82 & 1, v70, &v107, v89, v59, v43, v44, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v38, v63, v62, v39, v60, a24, a25);
  v50 = v68;
  v51 = v86;
  v52 = v72;
  v53 = v66;
  MEMORY[0x18D00A570](v49, v86, v72, v66);
  (*(v74 + 8))(v49, v52);
  v95 = v51;
  v96 = v48;
  v97 = v47;
  v98 = v53;
  v99 = v39;
  v100 = v46;
  v101 = v64;
  v102 = v65;
  v103 = v84;
  v104 = v93;
  v105 = v87;
  v107 = v48;
  v108 = v47;
  v109 = v39;
  v110 = v46;
  v111 = v64;
  v112 = v65;
  v54 = type metadata accessor for SuggestedTokensView(0, &v107);
  v55 = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v52);
  v106[0] = v53;
  v106[1] = v55;
  v56 = v79;
  v57 = swift_getWitnessTable(MEMORY[0x1E697E858], v79, v106);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v54);
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v94, v56, v54, v57);
  return (*(v81 + 8))(v50, v56);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v89 = a8;
  v88 = a7;
  v93 = a6;
  v78 = a5;
  v96 = a4;
  v92 = a3;
  v70 = a2;
  v71 = a1;
  v94 = a9;
  v91 = a10;
  v86 = a22;
  v99 = a21;
  LODWORD(v84) = a14;
  v98 = a16;
  v81 = a15;
  v79 = a13;
  v83 = a12;
  v73 = a11;
  v97 = a17;
  v95 = a18;
  v82 = a23;
  v75 = a20;
  v77 = a19;
  v25 = type metadata accessor for Binding();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v67 - v27;
  v72 = &v67 - v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = MEMORY[0x1E6981E70];
  v114 = AssociatedTypeWitness;
  v115 = a20;
  v116 = MEMORY[0x1E6981E60];
  v117 = a25;
  v118 = a24;
  v30 = type metadata accessor for TokenField(255, &v113);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v30);
  v80 = type metadata accessor for SearchModifier(0, v30, WitnessTable, v32);
  v85 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v67 - v33;
  v34 = v95;
  v87 = type metadata accessor for ModifiedContent();
  v90 = *(v87 - 8);
  v35 = MEMORY[0x1EEE9AC00](v87);
  v74 = &v67 - v36;
  v37 = *v73;
  (*(v26 + 16))(v28, v78, v25, v35);
  LOBYTE(v113) = v37;

  v84 = Text.init(_:tableName:bundle:comment:)();
  v83 = v38;
  v81 = v39;
  v79 = v40 & 1;
  v41 = swift_allocObject();
  v42 = v77;
  v41[2] = v34;
  v41[3] = v42;
  v43 = v75;
  v44 = v99;
  v41[4] = v75;
  v41[5] = v44;
  v45 = v86;
  v46 = v82;
  v41[6] = v86;
  v41[7] = v46;
  v68 = a24;
  v41[8] = a24;
  v41[9] = a25;
  v69 = a25;
  v47 = v97;
  v41[10] = v98;
  v41[11] = v47;
  v48 = v88;

  v49 = v89;

  v50 = v46;
  v66 = v43;
  v51 = v43;
  v52 = v42;
  v53 = v76;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v71, v70, v92, v96, v72, v48, v49, v91 & 1, v76, &v113, v84, v83, v79, v81, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v41, v42, v66, v45, v46, a24, a25);
  v54 = v74;
  v55 = v53;
  v56 = v53;
  v57 = v95;
  v58 = v80;
  v59 = v99;
  MEMORY[0x18D00A570](v55, v95, v80, v99);
  (*(v85 + 8))(v56, v58);
  v101 = v57;
  v102 = v52;
  v103 = v51;
  v104 = v59;
  v60 = v59;
  v105 = v45;
  v106 = v50;
  v107 = v68;
  v108 = v69;
  v109 = v93;
  v110 = v98;
  v111 = v97;
  v113 = v52;
  v114 = v51;
  v115 = v45;
  v116 = v50;
  v117 = v68;
  v118 = v69;
  v61 = type metadata accessor for SuggestedTokensView(0, &v113);
  v62 = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v58);
  v112[0] = v60;
  v112[1] = v62;
  v63 = v87;
  v64 = swift_getWitnessTable(MEMORY[0x1E697E858], v87, v112);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v61);
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v100, v63, v61, v64);
  return (*(v90 + 8))(v54, v63);
}

uint64_t closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5)
{
  v20[0] = a1;
  v20[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v20 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v17 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v17);
  (v20[0])(v9);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v10 + 8);
  v18(v13, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v16, a3);
}

uint64_t closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a5;
  v30 = a6;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v34 = a7;
  v28 = a9;
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v35[0] = a4;
  v35[1] = a5;
  v35[2] = a6;
  v35[3] = a8;
  v35[4] = a9;
  v35[5] = a10;
  v17 = type metadata accessor for SuggestedTokensView(0, v35);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v27 - v23;
  (*(v14 + 16))(v16, v31, v13, v22);
  SuggestedTokensView.init(suggestedTokens:token:)(v16, v32, v33, a4, v29, v30, a8, v28, v20, a10);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  v25 = *(v18 + 8);

  v25(v20, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v25)(v24, v17);
}

uint64_t View.searchable<A, B, C>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v88 = a8;
  v86 = a7;
  v91 = a6;
  v82 = a5;
  v103 = a4;
  v90 = a3;
  v99 = a2;
  v98 = a1;
  v92 = a9;
  v89 = a10;
  v101 = a14;
  v102 = a13;
  v100 = a22;
  v85 = a21;
  v81 = a12;
  v80 = a11;
  v96 = a24;
  v93 = a23;
  v94 = a25;
  v104 = a19;
  v97 = a20;
  v76 = a17;
  v95 = a18;
  v25 = *(a18 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a16;
  v28 = type metadata accessor for Binding();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v72 - v30;
  v74 = &v72 - v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = MEMORY[0x1E6981E70];
  v122 = AssociatedTypeWitness;
  v123 = a17;
  v124 = MEMORY[0x1E6981E60];
  v125 = a25;
  v33 = v93;
  v126 = v93;
  v34 = type metadata accessor for TokenField(255, &v121);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v34);
  v79 = type metadata accessor for SearchModifier(0, v34, WitnessTable, v36);
  v83 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v72 - v37;
  v73 = a15;
  v84 = type metadata accessor for ModifiedContent();
  v87 = *(v84 - 8);
  v38 = MEMORY[0x1EEE9AC00](v84);
  v75 = &v72 - v39;
  v40 = *v80;
  (*(v29 + 16))(v31, v82, v28, v38);
  LOBYTE(v121) = v40;
  v41 = v95;
  (*(v25 + 16))(v27, v81, v95);

  v42 = v41;
  v43 = v96;
  v82 = Text.init<A>(_:)();
  v81 = v44;
  v80 = v45;
  v72 = v46 & 1;
  v47 = swift_allocObject();
  v48 = v77;
  v47[2] = a15;
  v47[3] = v48;
  v49 = v76;
  v47[4] = v76;
  v47[5] = v42;
  v50 = v97;
  v47[6] = v104;
  v47[7] = v50;
  v51 = v85;
  v52 = v100;
  v47[8] = v85;
  v47[9] = v52;
  v53 = v33;
  v47[10] = v33;
  v47[11] = v43;
  v54 = v94;
  v55 = v102;
  v47[12] = v94;
  v47[13] = v55;
  v47[14] = v101;
  v56 = v86;

  v57 = v88;

  v71 = v52;
  v58 = v49;
  v59 = v48;
  v70 = v47;
  v60 = v78;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v98, v99, v90, v103, v74, v56, v57, v89 & 1, v78, &v121, v82, v81, v72, v80, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v70, v48, v49, v51, v71, v53, v54);
  v61 = v75;
  v62 = v73;
  v63 = v79;
  v64 = v104;
  MEMORY[0x18D00A570](v60, v73, v79, v104);
  (*(v83 + 8))(v60, v63);
  v106 = v62;
  v107 = v59;
  v108 = v58;
  v109 = v95;
  v110 = v64;
  v111 = v97;
  v112 = v51;
  v113 = v100;
  v114 = v93;
  v115 = v96;
  v116 = v94;
  v117 = v91;
  v118 = v102;
  v119 = v101;
  v121 = v59;
  v122 = v58;
  v123 = v51;
  v124 = v100;
  v125 = v93;
  v126 = v94;
  v65 = type metadata accessor for SuggestedTokensView(0, &v121);
  v66 = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v63);
  v120[0] = v64;
  v120[1] = v66;
  v67 = v84;
  v68 = swift_getWitnessTable(MEMORY[0x1E697E858], v84, v120);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v65);
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B, C>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v105, v67, v65, v68);
  return (*(v87 + 8))(v61, v67);
}

uint64_t closure #1 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5)
{
  v20[0] = a1;
  v20[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v20 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v17 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v17);
  (v20[0])(v9);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v10 + 8);
  v18(v13, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v16, a3);
}

uint64_t closure #2 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a5;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a6;
  v29 = a9;
  v30 = a10;
  v14 = type metadata accessor for Binding();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v36[0] = a4;
  v36[1] = a5;
  v36[2] = a8;
  v36[3] = a9;
  v36[4] = a10;
  v36[5] = a12;
  v18 = type metadata accessor for SuggestedTokensView(0, v36);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v28 - v24;
  (*(v15 + 16))(v17, v32, v14, v23);
  SuggestedTokensView.init(suggestedTokens:token:)(v17, v33, v34, a4, v31, a8, v29, v30, v21, a12);
  swift_getWitnessTable(protocol conformance descriptor for SuggestedTokensView<A, B>, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v19 + 8);

  v26(v21, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v25, v18);
}

void View.searchable<A, B, C>(text:tokens:placement:prompt:token:suggestions:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void View.searchable<A, B, C, D>(text:tokens:scope:placement:prompt:token:scopes:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void View.searchable<A, B, C, D, E>(text:tokens:scope:placement:prompt:token:scopes:suggestions:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void type metadata completion function for SuggestedTokensView(uint64_t a1)
{
  type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<Binding<AttributedString>?>.Content(319, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCB8]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for SuggestedTokensView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v6 + 64);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v10 + 64);
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = ((v12 + 16) & ~v12) + *(v10 + 64);
  }

  v15 = ((v14 + ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + (v12 | 7) + 16) & ~(v12 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  v16 = v12 | v7;
  v17 = (*(v10 + 80) | v7) & 0x100000;
  v18 = *a2;
  *a1 = *a2;
  if (v16 <= 7 && v17 == 0 && v15 <= 0x18)
  {
    v51 = v11;
    __n = v13;
    v49 = v10;
    v50 = v9;
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = *(v6 + 16);

    v23(v21 + 1, v22 + 1, v5);
    v24 = a1;
    v25 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v27 = v26[1];
    *v25 = *v26;
    v25[1] = v27;
    v28 = a1 + v8 + 23;
    v29 = a2 + v8 + 23;
    v30 = (v29 & 0xFFFFFFFFFFFFFFF8);
    v31 = *((v29 & 0xFFFFFFFFFFFFFFF8) + v14);

    if (v31 < 2)
    {
      v34 = v51;
      goto LABEL_30;
    }

    if (v14 <= 3)
    {
      v32 = v14;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      v34 = v51;
      if (!v32)
      {
        goto LABEL_30;
      }

      v33 = *v30;
    }

    else
    {
      if (v32 == 2)
      {
        v33 = *v30;
      }

      else if (v32 == 3)
      {
        v33 = *v30 | (v30[2] << 16);
      }

      else
      {
        v33 = *v30;
      }

      v34 = v51;
    }

    v35 = (v33 | ((v31 - 2) << (8 * v14))) + 2;
    v36 = v33 + 2;
    if (v14 >= 4)
    {
      v31 = v36;
    }

    else
    {
      v31 = v35;
    }

LABEL_30:
    v37 = v14 + 1;
    v38 = (v28 & 0xFFFFFFFFFFFFFFF8);
    if (v31 != 1)
    {
      *v38 = *v30;
      *(v38 + v14) = 0;

LABEL_40:
      v43 = ((v28 | 7) + v37) & 0xFFFFFFFFFFFFFFF8;
      v44 = ((v29 | 7) + v37) & 0xFFFFFFFFFFFFFFF8;
      v45 = *v44;
      v46 = *(v44 + 8);
      outlined copy of Environment<Bool>.Content();
      *v43 = v45;
      *(v43 + 8) = v46;
      return v24;
    }

    v39 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v34 < 0)
    {
      if ((*(v49 + 48))(v39 + 1))
      {
LABEL_35:
        memcpy((v28 & 0xFFFFFFFFFFFFFFF8), (v29 & 0xFFFFFFFFFFFFFFF8), __n);
LABEL_39:
        *(v38 + v14) = 1;
        goto LABEL_40;
      }
    }

    else
    {
      v40 = *v39;
      if (*v39 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      if (v40 != -1)
      {
        goto LABEL_35;
      }
    }

    *v38 = *v30;
    v41 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v39;
    v42 = *(v49 + 16);

    v42(v41 + 1, v39 + 1, v50);
    goto LABEL_39;
  }

  v24 = (v18 + ((v16 & 0xF8 ^ 0x1F8) & (v16 + 16)));

  return v24;
}

uint64_t destroy for SuggestedTokensView(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  v8 = (a1 + *(v6 + 56) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v8 + (v11 | 7) + 16) & ~(v11 | 7));
  if (((v11 + 16) & ~v11) + *(v10 + 64) <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = ((v11 + 16) & ~v11) + *(*(v9 - 8) + 64);
  }

  v14 = v12[v13];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = *v12;
    }

    else if (v16 == 2)
    {
      v17 = *v12;
    }

    else if (v16 == 3)
    {
      v17 = *v12 | (v12[2] << 16);
    }

    else
    {
      v17 = *v12;
    }

    v18 = (v17 | (v15 << (8 * v13))) + 2;
    v14 = v17 + 2;
    if (v13 < 4)
    {
      v14 = v18;
    }
  }

LABEL_18:
  if (v14 != 1)
  {

    goto LABEL_27;
  }

  v19 = ~v11;
  v20 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v10 + 84) & 0x80000000) != 0)
  {
    if ((*(v10 + 48))((v20 + v11 + 8) & v19))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v21 = *v20;
  if (*v20 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  if (v21 == -1)
  {
LABEL_26:

    (*(v10 + 8))((v20 + v11 + 8) & v19, v9);
  }

LABEL_27:
  v22 = &v12[v13 + 8] & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = *(v22 + 8);

  return outlined consume of Environment<Bool>.Content(v23, v24);
}

uint64_t *initializeWithCopy for SuggestedTokensView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v14 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  v16 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v14;
  v16[1] = v15;
  v42 = type metadata accessor for AttributedString();
  v17 = *(v42 - 8);
  v18 = *(v17 + 84);
  v19 = *(v17 + 80);
  v20 = *(v17 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v21 = ((v16 + v19 + 16) & v20);
  v22 = ((v14 + v19 + 16) & v20);
  v23 = *(v17 + 64);
  v24 = ((v19 + 16) & ~v19) + v23;
  if (v24 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = ((v19 + 16) & ~v19) + v23;
  }

  v26 = v22[v25];

  if (v26 >= 2)
  {
    if (v25 <= 3)
    {
      v27 = v25;
    }

    else
    {
      v27 = 4;
    }

    if (v27 <= 1)
    {
      if (!v27)
      {
        goto LABEL_19;
      }

      v28 = *v22;
    }

    else if (v27 == 2)
    {
      v28 = *v22;
    }

    else if (v27 == 3)
    {
      v28 = *v22 | (v22[2] << 16);
    }

    else
    {
      v28 = *v22;
    }

    v29 = (v28 | ((v26 - 2) << (8 * v25))) + 2;
    v30 = v28 + 2;
    if (v25 >= 4)
    {
      v26 = v30;
    }

    else
    {
      v26 = v29;
    }
  }

LABEL_19:
  if (v26 == 1)
  {
    v31 = ~v19;
    v32 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v18 & 0x80000000) != 0)
    {
      if ((*(v17 + 48))((v32 + v19 + 8) & v31, v18, v42))
      {
LABEL_24:
        memcpy(v21, v22, v24);
LABEL_28:
        *(v21 + v25) = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v33 = *v32;
      if (*v32 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      if (v33 != -1)
      {
        goto LABEL_24;
      }
    }

    *v21 = *v22;
    v34 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v32;
    v35 = v34 + v19 + 8;
    v36 = *(v17 + 16);

    v36(v35 & v31, (v32 + v19 + 8) & v31, v42);
    goto LABEL_28;
  }

  *v21 = *v22;
  *(v21 + v25) = 0;

LABEL_29:
  v37 = (v21 + v25 + 8) & 0xFFFFFFFFFFFFFFF8;
  v38 = &v22[v25 + 8] & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  v40 = *(v38 + 8);
  outlined copy of Environment<Bool>.Content();
  *v37 = v39;
  *(v37 + 8) = v40;
  return a1;
}

uint64_t *assignWithCopy for SuggestedTokensView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  v15 = type metadata accessor for AttributedString();
  v16 = *(v15 - 8);
  v17 = v16;
  v18 = *(v16 + 80);
  v19 = *(v16 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v20 = ((v12 + v18 + 16) & v19);
  v21 = ((v13 + v18 + 16) & v19);
  v22 = (v18 + 16) & ~v18;
  if (v20 != v21)
  {
    v25 = v15;
    v26 = *(v16 + 64) + v22;
    if (v26 <= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = *(v16 + 64) + v22;
    }

    v27 = v20[v24];
    v28 = v27 - 2;
    if (v27 >= 2)
    {
      if (v24 <= 3)
      {
        v29 = v24;
      }

      else
      {
        v29 = 4;
      }

      if (v29 <= 1)
      {
        if (!v29)
        {
          goto LABEL_22;
        }

        v30 = *v20;
      }

      else if (v29 == 2)
      {
        v30 = *v20;
      }

      else if (v29 == 3)
      {
        v30 = *v20 | (v20[2] << 16);
      }

      else
      {
        v30 = *v20;
      }

      v31 = (v30 | (v28 << (8 * v24))) + 2;
      v27 = v30 + 2;
      if (v24 < 4)
      {
        v27 = v31;
      }
    }

LABEL_22:
    v52 = ~v18;
    v32 = *(v16 + 84);
    if (v27 != 1)
    {

      goto LABEL_31;
    }

    v33 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v32 & 0x80000000) != 0)
    {
      if ((*(v16 + 48))((v33 + v18 + 8) & v52, *(v16 + 84), v15))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = *v33;
      if (*v33 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      if (v34 != -1)
      {
LABEL_31:
        v35 = v21[v24];
        v36 = v35 - 2;
        if (v35 < 2)
        {
          goto LABEL_45;
        }

        if (v24 <= 3)
        {
          v37 = v24;
        }

        else
        {
          v37 = 4;
        }

        if (v37 <= 1)
        {
          if (!v37)
          {
            goto LABEL_45;
          }

          v38 = *v21;
        }

        else if (v37 == 2)
        {
          v38 = *v21;
        }

        else if (v37 == 3)
        {
          v38 = *v21 | (v21[2] << 16);
        }

        else
        {
          v38 = *v21;
        }

        v39 = (v38 | (v36 << (8 * v24))) + 2;
        v35 = v38 + 2;
        if (v24 < 4)
        {
          v35 = v39;
        }

LABEL_45:
        if (v35 != 1)
        {
          *v20 = *v21;
          v20[v24] = 0;

          goto LABEL_55;
        }

        v40 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v32 & 0x80000000) != 0)
        {
          if ((*(v17 + 48))((v40 + v18 + 8) & v52, v32, v25))
          {
LABEL_50:
            memcpy(v20, v21, v26);
LABEL_54:
            v20[v24] = 1;
            goto LABEL_55;
          }
        }

        else
        {
          v41 = *v40;
          if (*v40 >= 0xFFFFFFFF)
          {
            LODWORD(v41) = -1;
          }

          if (v41 != -1)
          {
            goto LABEL_50;
          }
        }

        *v20 = *v21;
        v42 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v42 = *v40;
        v43 = v42 + v18 + 8;
        v44 = *(v17 + 16);

        v44(v43 & v52, (v40 + v18 + 8) & v52, v25);
        goto LABEL_54;
      }
    }

    (*(v17 + 8))((v33 + v18 + 8) & v52, v25);
    goto LABEL_31;
  }

  v23 = *(v16 + 64) + v22;
  if (v23 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

LABEL_55:
  v45 = &v20[v24 + 8] & 0xFFFFFFFFFFFFFFF8;
  v46 = &v21[v24 + 8] & 0xFFFFFFFFFFFFFFF8;
  v47 = *v46;
  v48 = *(v46 + 8);
  outlined copy of Environment<Bool>.Content();
  v49 = *v45;
  v50 = *(v45 + 8);
  *v45 = v47;
  *(v45 + 8) = v48;
  outlined consume of Environment<Bool>.Content(v49, v50);
  return a1;
}

void *initializeWithTake for SuggestedTokensView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  v11 = ((a1 + v10) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((a2 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v11 + v15 + 16) & v16);
  v18 = ((v12 + v15 + 16) & v16);
  v19 = *(v14 + 64);
  v20 = ((v15 + 16) & ~v15) + v19;
  if (v20 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = ((v15 + 16) & ~v15) + v19;
  }

  v22 = v18[v21];
  v23 = v22 - 2;
  if (v22 >= 2)
  {
    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_18;
      }

      v25 = *v18;
    }

    else if (v24 == 2)
    {
      v25 = *v18;
    }

    else if (v24 == 3)
    {
      v25 = *v18 | (v18[2] << 16);
    }

    else
    {
      v25 = *v18;
    }

    v26 = (v25 | (v23 << (8 * v21))) + 2;
    v22 = v25 + 2;
    if (v21 < 4)
    {
      v22 = v26;
    }
  }

LABEL_18:
  if (v22 == 1)
  {
    v27 = ~v15;
    v28 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v14 + 84) & 0x80000000) != 0)
    {
      if ((*(v14 + 48))((v28 + v15 + 8) & v27))
      {
LABEL_23:
        memcpy(v17, v18, v20);
LABEL_27:
        v30 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = *v28;
      if (*v28 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      if (v29 != -1)
      {
        goto LABEL_23;
      }
    }

    *v17 = *v18;
    v31 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v28;
    (*(v14 + 32))((v31 + v15 + 8) & v27, (v28 + v15 + 8) & v27, v13);
    goto LABEL_27;
  }

  v30 = 0;
  *v17 = *v18;
LABEL_28:
  *(v17 + v21) = v30;
  v32 = &v18[v21 + 8] & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = (v17 + v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  *(v34 + 8) = *(v32 + 8);
  *v34 = v33;
  return a1;
}

void *assignWithTake for SuggestedTokensView(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  v16 = v15;
  v17 = *(v15 + 80);
  v18 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v12 + v17 + 16) & v18);
  v20 = ((v13 + v17 + 16) & v18);
  v21 = (v17 + 16) & ~v17;
  if (v19 != v20)
  {
    v24 = v14;
    v25 = *(v15 + 64) + v21;
    if (v25 <= 8)
    {
      v23 = 8;
    }

    else
    {
      v23 = *(v15 + 64) + v21;
    }

    v26 = v19[v23];
    v27 = v26 - 2;
    if (v26 >= 2)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      if (v28 <= 1)
      {
        if (!v28)
        {
          goto LABEL_22;
        }

        v29 = *v19;
      }

      else if (v28 == 2)
      {
        v29 = *v19;
      }

      else if (v28 == 3)
      {
        v29 = *v19 | (v19[2] << 16);
      }

      else
      {
        v29 = *v19;
      }

      v30 = (v29 | (v27 << (8 * v23))) + 2;
      v26 = v29 + 2;
      if (v23 < 4)
      {
        v26 = v30;
      }
    }

LABEL_22:
    v48 = ~v17;
    v31 = *(v15 + 84);
    if (v26 != 1)
    {

      goto LABEL_31;
    }

    v32 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v31 & 0x80000000) != 0)
    {
      if ((*(v15 + 48))((v32 + v17 + 8) & v48, *(v15 + 84), v14))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v33 = *v32;
      if (*v32 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      if (v33 != -1)
      {
LABEL_31:
        v34 = v20[v23];
        v35 = v34 - 2;
        if (v34 < 2)
        {
          goto LABEL_45;
        }

        if (v23 <= 3)
        {
          v36 = v23;
        }

        else
        {
          v36 = 4;
        }

        if (v36 <= 1)
        {
          if (!v36)
          {
            goto LABEL_45;
          }

          v37 = *v20;
        }

        else if (v36 == 2)
        {
          v37 = *v20;
        }

        else if (v36 == 3)
        {
          v37 = *v20 | (v20[2] << 16);
        }

        else
        {
          v37 = *v20;
        }

        v38 = (v37 | (v35 << (8 * v23))) + 2;
        v34 = v37 + 2;
        if (v23 < 4)
        {
          v34 = v38;
        }

LABEL_45:
        if (v34 != 1)
        {
          *v19 = *v20;
          v19[v23] = 0;
          goto LABEL_55;
        }

        v39 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v31 & 0x80000000) != 0)
        {
          if ((*(v16 + 48))((v39 + v17 + 8) & v48, v31, v24))
          {
LABEL_50:
            memcpy(v19, v20, v25);
LABEL_54:
            v19[v23] = 1;
            goto LABEL_55;
          }
        }

        else
        {
          v40 = *v39;
          if (*v39 >= 0xFFFFFFFF)
          {
            LODWORD(v40) = -1;
          }

          if (v40 != -1)
          {
            goto LABEL_50;
          }
        }

        *v19 = *v20;
        v41 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v41 = *v39;
        (*(v16 + 32))((v41 + v17 + 8) & v48, (v39 + v17 + 8) & v48, v24);
        goto LABEL_54;
      }
    }

    (*(v16 + 8))((v32 + v17 + 8) & v48, v24);
    goto LABEL_31;
  }

  v22 = *(v15 + 64) + v21;
  if (v22 <= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v22;
  }

LABEL_55:
  v42 = &v19[v23 + 8] & 0xFFFFFFFFFFFFFFF8;
  v43 = &v20[v23 + 8] & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = *v42;
  v46 = *(v42 + 8);
  *v42 = v44;
  *(v42 + 8) = v43;
  outlined consume of Environment<Bool>.Content(v45, v46);
  return a1;
}

uint64_t getEnumTagSinglePayload for SuggestedTokensView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for AttributedString() - 8);
  v10 = *(v9 + 80);
  v11 = v10 + 16;
  v12 = (v11 & ~v10) + *(v9 + 64);
  v13 = *(v6 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v12 + ((v11 + ((*(v6 + 64) + ((v13 + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & (v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 <= 3)
  {
    v15 = ((a2 - v8 + 255) >> 8) + 1;
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
      v18 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v14];
      if (!v18)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v20 = (v18 - 1) << (8 * v14);
    if (v14 <= 3)
    {
      v21 = *a1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
    }

    return v8 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = a1[v14];
    if (a1[v14])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v24 = *(v6 + 48);

    return v24((v22 + v13 + 8) & ~v13, v7, v5);
  }

  else
  {
    v23 = *v22;
    if (*v22 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void storeEnumTagSinglePayload for SuggestedTokensView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for AttributedString() - 8);
  v12 = *(v11 + 80) + 16;
  v13 = (v12 & ~*(v11 + 80)) + *(v11 + 64);
  v14 = *(v8 + 80);
  v15 = (v12 + ((*(v8 + 64) + ((v14 + 16) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8)) & (*(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8);
  v16 = 8;
  if (v13 > 8)
  {
    v16 = v13;
  }

  v17 = ((v16 + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v20 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
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
      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v26 + 56);

        v25((v23 + v14 + 8) & ~v14, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = (a2 - 1);
        }

        *v23 = v24;
      }

      return;
    }
  }

  v21 = ~v10 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

uint64_t partial apply for closure #1 in SuggestedTokensView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for SuggestedTokensView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return closure #1 in SuggestedTokensView.body.getter(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t outlined destroy of Binding<AttributedString>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xED00007466654C65;
  if (a1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  v5 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000018CD3D3E0;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x70616373646E616CLL;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xED00007466654C65;
    }

    else
    {
      v9 = 0xEE00746867695265;
    }

    if (v6 != 0x70616373646E616CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x7469617274726F70;
    }

    if (a2)
    {
      v9 = 0x800000018CD3D3E0;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

void static PreviewProvider.platform.getter(_BYTE *a1@<X8>)
{
  static PreviewProvider.platform.getter(a1);
}

{
  *a1 = 4;
}

uint64_t static PreviewProvider._previews.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return v6(a1, a2);
}

Swift::Int PreviewPlatform.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t PreviewDevice.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InterfaceOrientation.Orientation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InterfaceOrientation.Orientation(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InterfaceOrientation.Orientation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InterfaceOrientation.Orientation@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized InterfaceOrientation.Orientation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t InterfaceOrientation.id.getter()
{
  v1 = 0x7469617274726F70;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t static InterfaceOrientation.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7469617274726F70;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xED00007466654C65;
  if (v3 != 2)
  {
    v5 = 0xEE00746867695265;
  }

  v6 = 0xD000000000000012;
  v7 = 0x800000018CD3D3E0;
  if (*a1)
  {
    v4 = 0x800000018CD3D3E0;
  }

  else
  {
    v6 = 0x7469617274726F70;
  }

  if (*a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x70616373646E616CLL;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xED00007466654C65;
  if (*a2 != 2)
  {
    v10 = 0xEE00746867695265;
  }

  if (*a2)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0x70616373646E616CLL;
  }

  if (*a2 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  if (v8 == v11 && v9 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance InterfaceOrientation@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static InterfaceOrientation.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t View.previewContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a3;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  View._trait<A>(_:_:)();
  return outlined destroy of PreviewContext?(v9, type metadata accessor for PreviewContext?);
}

uint64_t static PreviewLayoutTraitKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69667A0];
  v3 = type metadata accessor for PreviewLayout();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance PreviewLayoutTraitKey@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69667A0];
  v3 = type metadata accessor for PreviewLayout();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double static PreviewContextTraitKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static _PreviewProvider._allPreviews.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v7, a1);
  v8 = MEMORY[0x1E69E7CC0];
  outlined init with copy of Any(v7, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v4);
  static ProtocolDescriptor.conformance(of:)();
  result = v5;
  if (v5)
  {
    MakePreviews.visit<A>(type:)(v5, v5, v6);
    v3 = v8;

    outlined destroy of MakePreviews(v7);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MakePreviews.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v4, v12);
  swift_dynamicCast();
  v10 = View._allPreviews.getter(a2, a3);
  (*(v7 + 8))(v9, a2);

  *(v4 + 32) = v10;
  return result;
}

uint64_t View._allPreviews.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [FrameResizePosition](0, &lazy cache variable for type metadata for [_Preview], &type metadata for _Preview);
  v5 = v4;
  EnvironmentValues.init()();
  v8[0] = v8[1];
  v7 = 0;
  View.withChildrenForTest<A>(environment:options:body:)(v8, &v7, closure #1 in View._allPreviews.getter, 0, a1, v5, a2);

  return v9;
}

uint64_t closure #1 in View._allPreviews.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, v41);
  v3 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (v3 < 0 || result < v3)
  {
    goto LABEL_17;
  }

  if (v3)
  {
    v19 = a2;
    v40 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = 0;
    v6 = v40;
    while (1)
    {
      result = _VariadicView_Children.endIndex.getter();
      if (v5 >= result)
      {
        break;
      }

      _VariadicView_Children.subscript.getter();
      v22 = v5;
      v26 = v33;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v23 = v30;
      v24 = v31;
      v25 = v32;
      outlined init with copy of (offset: Int, element: _VariadicView_Children.Element)(&v22, v20);
      outlined init with copy of _VariadicView_Children.Element(v21, v37);
      *(&v38 + 1) = v5;
      type metadata accessor for _VariadicView_Children.Element.Type();
      v7 = String.init<A>(describing:)();
      v9 = v8;
      outlined destroy of PreviewContext?(&v22, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
      outlined destroy of _VariadicView_Children.Element(v21);
      *&v39 = v7;
      *(&v39 + 1) = v9;
      v40 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v40;
      }

      *(v6 + 16) = v11 + 1;
      v12 = (v6 + (v11 << 7));
      v13 = v37[0];
      v14 = v37[1];
      v15 = v37[3];
      v12[4] = v37[2];
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      v16 = v37[4];
      v17 = v37[5];
      v18 = v39;
      v12[8] = v38;
      v12[9] = v18;
      v12[6] = v16;
      v12[7] = v17;
      result = _VariadicView_Children.endIndex.getter();
      if (v5 >= result)
      {
        goto LABEL_15;
      }

      if (v3 == ++v5)
      {
        result = outlined destroy of PreviewContext?(v41, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
        a2 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = outlined destroy of PreviewContext?(v41, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
  *a2 = v6;
  return result;
}

uint64_t _Preview.contentType.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t _Preview.context.getter()
{
  v5 = *(v1 + 96);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  ViewTraitCollection.value<A>(for:defaultValue:)();
  return outlined destroy of PreviewContext?(v3, type metadata accessor for PreviewContext?);
}

uint64_t _Preview.layout.getter()
{
  v2 = type metadata accessor for PreviewLayout();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v1 + 96);
  (*(v3 + 104))(v6, *MEMORY[0x1E69667A0], v2, v4);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t specialized InterfaceOrientation.Orientation.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InterfaceOrientation.Orientation.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static InterfaceOrientation.allCases.getter()
{
  v9 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v0 = v9;
  v2 = *(v9 + 16);
  v1 = *(v9 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1);
    v0 = v9;
    v1 = *(v9 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 2, 1);
    v0 = v9;
    v1 = *(v9 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 3, 1);
  }

  result = v9;
  *(v9 + 16) = v6;
  *(v9 + v5 + 32) = 2;
  v8 = *(v9 + 24);
  if ((v2 + 4) > (v8 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v2 + 4, 1);
    result = v9;
  }

  *(result + 16) = v2 + 4;
  *(result + v6 + 32) = 3;
  return result;
}

void type metadata accessor for PreviewContext?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PreviewContext?)
  {
    type metadata accessor for PreviewContext();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PreviewContext?);
    }
  }
}

unint64_t type metadata accessor for PreviewContext()
{
  result = lazy cache variable for type metadata for PreviewContext;
  if (!lazy cache variable for type metadata for PreviewContext)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PreviewContext);
  }

  return result;
}

void *outlined destroy of MakePreviews(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return a1;
}

unint64_t lazy protocol witness table accessor for type PreviewPlatform and conformance PreviewPlatform()
{
  result = lazy protocol witness table cache variable for type PreviewPlatform and conformance PreviewPlatform;
  if (!lazy protocol witness table cache variable for type PreviewPlatform and conformance PreviewPlatform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewPlatform, &type metadata for PreviewPlatform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewPlatform and conformance PreviewPlatform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreviewDevice and conformance PreviewDevice()
{
  result = lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice;
  if (!lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewDevice, &type metadata for PreviewDevice, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice;
  if (!lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewDevice, &type metadata for PreviewDevice, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice);
  }

  return result;
}

uint64_t destroy for _Preview(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for _Preview(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  v8 = v7;

  return a1;
}

uint64_t assignWithCopy for _Preview(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  v6 = v5;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for _Preview(uint64_t a1, uint64_t a2)
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

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for _Preview(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for _Preview(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA21_TraitWritingModifierVyAA013PreviewDeviceF3KeyVGGAaBHPxAaBHD1__AiA0cH0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v9 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, a2, a3, a4);
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v9;
  v12[1] = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(a5, a2, a3, a4);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

uint64_t destroy for MakePreviews(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for MakePreviews(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *assignWithCopy for MakePreviews(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2, a3);
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for MakePreviews(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t lazy protocol witness table accessor for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation()
{
  result = lazy protocol witness table cache variable for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation;
  if (!lazy protocol witness table cache variable for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InterfaceOrientation.Orientation, &unk_1EFFD4E10, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation);
  }

  return result;
}

unint64_t type metadata accessor for _VariadicView_Children.Element.Type()
{
  result = lazy cache variable for type metadata for _VariadicView_Children.Element.Type;
  if (!lazy cache variable for type metadata for _VariadicView_Children.Element.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _VariadicView_Children.Element.Type);
  }

  return result;
}

uint64_t outlined destroy of PreviewContext?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for EnumeratedSequence<_VariadicView_Children>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v1 = type metadata accessor for EnumeratedSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>);
    }
  }
}

Swift::Int ScrollAnchorRole.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

double View.defaultScrollAnchor(_:for:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  *(v10 + 33) = v9;
  View.transformEnvironment<A>(_:transform:)();

  return result;
}

uint64_t partial apply for closure #1 in View.defaultScrollAnchor(_:for:)()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return ScrollAnchorStorage.updateRole(_:anchor:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollAnchorRole and conformance ScrollAnchorRole()
{
  result = lazy protocol witness table cache variable for type ScrollAnchorRole and conformance ScrollAnchorRole;
  if (!lazy protocol witness table cache variable for type ScrollAnchorRole and conformance ScrollAnchorRole)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollAnchorRole, &type metadata for ScrollAnchorRole, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollAnchorRole and conformance ScrollAnchorRole);
  }

  return result;
}

uint64_t View.popover<A, B>(item:attachmentAnchor:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  v39 = a9;
  v40 = a5;
  v37 = a3;
  v38 = a4;
  v36 = a1;
  v33 = a11;
  v34 = a7;
  v31 = a6;
  v32 = a10;
  type metadata accessor for Optional();
  v35 = type metadata accessor for Binding();
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &WitnessTable - v15;
  v42 = a6;
  v43 = a7;
  v44 = a10;
  v45 = a11;
  v17 = type metadata accessor for PopoverItemStateProvider(0, &v42);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &WitnessTable - v19;
  WitnessTable = swift_getWitnessTable("HM\t", v17, v18);
  v22 = type metadata accessor for PopoverPresentationModifier(0, v17, WitnessTable, v21);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &WitnessTable - v25;
  v28 = *a2;
  v27 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v14 + 16))(v16, v36, v35, v24);
  PopoverItemStateProvider.init(item:content:)(v16, v37, v38, v31, v34, v32, v33, v20);
  v42 = v28;
  v43 = v27;
  LOBYTE(v44) = a2;
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v20, &v42, 256, 0, 1, 0, v17, WitnessTable, v26);

  outlined copy of Environment<CGFloat?>.Content(v28, v27, a2);
  MEMORY[0x18D00A570](v26, v40, v22, v41);
  return (*(v23 + 8))(v26, v22);
}

uint64_t View.popover<A, B>(item:attachmentAnchor:arrowEdge:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a6;
  v40 = a4;
  v41 = a5;
  v39 = a1;
  v44 = a9;
  v35 = a12;
  v36 = a8;
  v42 = a3;
  v43 = a10;
  v33 = a7;
  v34 = a11;
  type metadata accessor for Optional();
  v37 = type metadata accessor for Binding();
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v33 - v16;
  v46 = a7;
  v47 = a8;
  v48 = a11;
  v49 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider(0, &v46);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  WitnessTable = swift_getWitnessTable("HM\t", v18, v19);
  v23 = type metadata accessor for PopoverPresentationModifier(0, v18, WitnessTable, v22);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v33 - v26;
  v28 = *a2;
  v29 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v15 + 16))(v17, v39, v37, v25);
  PopoverItemStateProvider.init(item:content:)(v17, v40, v41, v33, v36, v34, v35, v21);
  v46 = v28;
  v47 = v29;
  LOBYTE(v48) = a2;

  outlined copy of Environment<CGFloat?>.Content(v28, v29, a2);
  static Semantics.v6.getter();
  v30 = isLinkedOnOrAfter(_:)();
  if (v42 >= 8u)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = 1 << v42;
  }

  if (v42 > 8u)
  {
    LOBYTE(v31) = 0;
  }

  if ((v30 & 1) == 0)
  {
    LOBYTE(v31) = 0;
  }

  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v21, &v46, v31 | (((v30 & 1) == 0) << 8), 0, 1, 0, v18, WitnessTable, v27);
  MEMORY[0x18D00A570](v27, v45, v23, v43);
  return (*(v24 + 8))(v27, v23);
}

uint64_t View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int16 a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = *(a4 + 16);
  v24[0] = a1;
  v24[1] = a2;
  v25 = a3;
  v26 = a7;
  v27 = a8;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v22[0] = v14;
  v22[1] = v15;
  v23 = v16;
  v17 = type metadata accessor for PopoverConditionalStateProvider(0, a10, a12, a4);
  WitnessTable = swift_getWitnessTable("tM\t", v17);
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v24, v22, a5 & 0x1FF, a6, 1, 0, v17, WitnessTable, v31);

  outlined copy of Environment<CGFloat?>.Content(v14, v15, v16);
  v20 = type metadata accessor for PopoverPresentationModifier(0, v17, WitnessTable, v19);
  MEMORY[0x18D00A570](v31, a9, v20, a11);
  return (*(*(v20 - 8) + 8))(v31, v20);
}

uint64_t View.popover<A>(isPresented:attachmentAnchor:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v23 = a5;
  v24 = a6;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v19[0] = v10;
  v19[1] = v11;
  v20 = v12;
  v13 = type metadata accessor for PopoverConditionalStateProvider(0, a8, a10, a4);
  WitnessTable = swift_getWitnessTable("tM\t", v13);
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v21, v19, 256, 0, 1, 0, v13, WitnessTable, v28);

  outlined copy of Environment<CGFloat?>.Content(v10, v11, v12);
  v16 = type metadata accessor for PopoverPresentationModifier(0, v13, WitnessTable, v15);
  MEMORY[0x18D00A570](v28, a7, v16, a9);
  return (*(*(v16 - 8) + 8))(v28, v16);
}

uint64_t View.popover<A>(isPresented:attachmentAnchor:arrowEdge:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  v28[0] = a1;
  v28[1] = a2;
  v29 = a3;
  v30 = a6;
  v31 = a7;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v26[0] = v13;
  v26[1] = v12;
  v27 = v14;

  outlined copy of Environment<CGFloat?>.Content(v13, v12, v14);
  static Semantics.v6.getter();
  v15 = isLinkedOnOrAfter(_:)();
  if (a5 >= 8u)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = 1 << a5;
  }

  if (a5 > 8u)
  {
    LOBYTE(v17) = 0;
  }

  if (v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = ~v15;
  v20 = type metadata accessor for PopoverConditionalStateProvider(0, a9, a11, v16);
  WitnessTable = swift_getWitnessTable("tM\t", v20);
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v28, v26, v18 | ((v19 & 1) << 8), 0, 1, 0, v20, WitnessTable, v35);
  v23 = type metadata accessor for PopoverPresentationModifier(0, v20, WitnessTable, v22);
  MEMORY[0x18D00A570](v35, a8, v23, a10);
  return (*(*(v23 - 8) + 8))(v35, v23);
}

double PopoverConditionalStateProvider.init(isPresented:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  result = 0.0;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0;
  return result;
}

uint64_t View.popover<A, B>(item:attachmentAnchor:arrowEdges:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a6;
  v38 = a4;
  v39 = a5;
  v40 = a3;
  v37 = a1;
  v41 = a9;
  v34 = a12;
  v35 = a8;
  v42 = a10;
  v32 = a7;
  v33 = a11;
  type metadata accessor for Optional();
  v36 = type metadata accessor for Binding();
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &WitnessTable - v16;
  v44 = a7;
  v45 = a8;
  v46 = a11;
  v47 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider(0, &v44);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &WitnessTable - v20;
  WitnessTable = swift_getWitnessTable("HM\t", v18, v19);
  v23 = type metadata accessor for PopoverPresentationModifier(0, v18, WitnessTable, v22);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &WitnessTable - v26;
  v28 = *a2;
  v29 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v15 + 16))(v17, v37, v36, v25);
  PopoverItemStateProvider.init(item:content:)(v17, v38, v39, v32, v35, v33, v34, v21);
  v44 = v28;
  v45 = v29;
  LOBYTE(v46) = a2;
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v21, &v44, v40, 0, 1, 0, v18, WitnessTable, v27);

  outlined copy of Environment<CGFloat?>.Content(v28, v29, a2);
  MEMORY[0x18D00A570](v27, v43, v23, v42);
  return (*(v24 + 8))(v27, v23);
}

void PopoverContent.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v57 = *(a1 + 16);
  v4 = type metadata accessor for ModifiedContent();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v55 - v5;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(255, &lazy cache variable for type metadata for StyleContextWriter<PopoverStyleContext>, MEMORY[0x1E697F788], MEMORY[0x1E697F780], MEMORY[0x1E697F4C8]);
  v6 = type metadata accessor for ModifiedContent();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v55 - v7;
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(255);
  v60 = type metadata accessor for ModifiedContent();
  v79 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v55 - v8;
  type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  v64 = type metadata accessor for ModifiedContent();
  v82 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v55 - v9;
  v10 = MEMORY[0x1E69E6720];
  type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
  v67 = type metadata accessor for ModifiedContent();
  v87 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v55 - v11;
  v12 = MEMORY[0x1E6980A08];
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v73 = type metadata accessor for ModifiedContent();
  v84 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v62 = &v55 - v13;
  v72 = type metadata accessor for ModifiedContent();
  v86 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v55 - v14;
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior, v12);
  v74 = type metadata accessor for ModifiedContent();
  v85 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v55 - v15;
  v76 = type metadata accessor for ModifiedContent();
  v88 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v55 - v16;
  v78 = type metadata accessor for ModifiedContent();
  v92 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v71 = &v55 - v17;
  v81 = type metadata accessor for ModifiedContent();
  v93 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v75 = &v55 - v18;
  v89 = type metadata accessor for ModifiedContent();
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, v12);
  v90 = type metadata accessor for ModifiedContent();
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v12);
  v80 = type metadata accessor for ModifiedContent();
  v95 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v63 = &v55 - v19;
  type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, v10);
  v91 = type metadata accessor for ModifiedContent();
  v94 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v77 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v55 - v22;
  static Alignment.center.getter();
  v54 = *(a1 + 24);
  v23 = v58;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v107[0] = v54;
  v107[1] = MEMORY[0x1E697EBF8];
  v24 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v107);
  v26 = v55;
  View.styleContext<A>(_:)();
  (*(v69 + 8))(v23, v4);
  v27 = lazy protocol witness table accessor for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>();
  v106[0] = WitnessTable;
  v106[1] = v27;
  v28 = swift_getWitnessTable(v24, v6, v106);
  v29 = v56;
  View.renderContainerBackgroundInHostingView<A>(_:)(&type metadata for ContainerBackgroundKeys.PresentationKey, v6, &type metadata for ContainerBackgroundKeys.PresentationKey, v28, &protocol witness table for ContainerBackgroundKeys.PresentationKey);
  (*(v65 + 8))(v26, v6);
  swift_getKeyPath();
  v30 = (v2 + *(a1 + 40));
  v31 = *v30;
  v32 = v30[1];
  LOBYTE(v26) = *(v30 + 16);

  v103 = v31;
  v104 = v32;
  v105 = v26;
  v33 = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>();
  v102[0] = v28;
  v102[1] = v33;
  v34 = v60;
  v35 = swift_getWitnessTable(v24, v60, v102);
  v36 = v59;
  View.environment<A>(_:_:)();

  (*(v79 + 8))(v29, v34);
  swift_getKeyPath();
  LOBYTE(v103) = 2;
  v37 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>();
  v101[0] = v35;
  v101[1] = v37;
  v38 = v64;
  v39 = swift_getWitnessTable(v24, v64, v101);
  v40 = v61;
  View.environment<A>(_:_:)();

  (*(v82 + 8))(v36, v38);
  swift_getKeyPath();
  LOBYTE(v103) = 1;
  v41 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>();
  v100[0] = v39;
  v100[1] = v41;
  v42 = v67;
  v43 = swift_getWitnessTable(v24, v67, v100);
  v44 = v62;
  View.environment<A>(_:_:)();

  (*(v87 + 8))(v40, v42);
  v45 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
  v99[0] = v43;
  v99[1] = v45;
  v46 = v73;
  v47 = swift_getWitnessTable(v24, v73, v99);
  v48 = v68;
  View.resetScrollEnvironment()(v46, v47);
  (*(v84 + 8))(v44, v46);
  v49 = lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier();
  v98[0] = v47;
  v98[1] = v49;
  v50 = v72;
  v51 = swift_getWitnessTable(v24, v72, v98);
  v52 = View.resetListStackBehavior()(v50, v51);
  (*(v86 + 8))(v48, v50, v52);
  v53 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior);
  v97[0] = v51;
  v97[1] = v53;
  swift_getWitnessTable(v24, v74, v97);
  View.resetFormEnvironment()();
}

void sub_18C713A3C()
{
  (*(*(v0 + 240) + 8))(v3, v1);
  *(v5 - 256) = v2;
  *(v5 - 248) = &protocol witness table for ResetFormEnvironmentModifier;
  swift_getWitnessTable(v4, *(v0 + 168), v5 - 256);
  View.resetTabViewEnvironment()();
}

uint64_t sub_18C713A94()
{
  (*(v0[33] + 8))(v4, v2);
  swift_getKeyPath();
  *(v7 - 144) = 0;
  v0[52] = v3;
  v0[53] = &protocol witness table for ResetTabViewEnvironmentModifier;
  v8 = v0[23];
  WitnessTable = swift_getWitnessTable(v6, v8, v0 + 52);
  v10 = v0[20];
  View.environment<A>(_:_:)();

  (*(v0[37] + 8))(v5, v8);
  v0[50] = WitnessTable;
  v0[51] = v1;
  v11 = v0[26];
  v12 = swift_getWitnessTable(v6, v11, v0 + 50);
  v13 = v0[8];
  View.clearNavigationContext()(v12, v13);
  (*(v0[38] + 8))(v10, v11);
  v0[48] = v12;
  v0[49] = &protocol witness table for ClearNavigationContextModifier;
  v14 = swift_getWitnessTable(v6, v0[34], v0 + 48);
  v15 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  v0[46] = v14;
  v0[47] = v15;
  v16 = swift_getWitnessTable(v6, v0[35], v0 + 46);
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  v0[44] = v16;
  v0[45] = v17;
  v18 = v0[25];
  v19 = swift_getWitnessTable(v6, v18, v0 + 44);
  v20 = v0[22];
  v21 = View.clearSharingPickerHost()(v18, v19);
  (*(v0[40] + 8))(v13, v18, v21);
  v22 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  v0[42] = v19;
  v0[43] = v22;
  v23 = v0[36];
  swift_getWitnessTable(v6, v23, v0 + 42);
  v24 = v0[28];
  static ViewBuilder.buildExpression<A>(_:)();
  v25 = *(v0[39] + 8);
  v25(v20, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v25)(v24, v23);
}

uint64_t EnvironmentValues.presentationNeedsInitialPreferredContentSize.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.presentationNeedsInitialPreferredContentSize : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.presentationNeedsInitialPreferredContentSize : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t PopoverPresentationModifier.PopoverModifier.viewID.getter@<X0>(_DWORD *a1@<X8>)
{
  if (*v1)
  {
    *a1 = *v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PopoverPresentationModifier.PopoverModifier.presentationEnvironment.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *(a1 + 56));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;

  return specialized static ResetGlassEnvironmentModifier.makeEnvironment(_:)();
}

uint64_t PopoverPresentationModifier.PopoverModifier.wrappedContent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v6[2] = v7;
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  *&v49[0] = v11;
  *(&v49[0] + 1) = v12;
  v14 = type metadata accessor for LazyView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyView<A>, v14);
  View.clearNavigationContext()(WitnessTable, &v33);

  v44 = v33;
  v45 = v34;
  v46 = BYTE8(v34);
  v47 = v35;
  v48 = DWORD2(v35);
  (*(v8 + 56))(v42, v7, v8);
  v17 = v42[0];
  v16 = v42[1];
  v32 = v43;
  v18 = type metadata accessor for ModifiedContent();
  v19 = MEMORY[0x1E6980A08];
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
  v20 = type metadata accessor for ModifiedContent();
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v19);
  v21 = type metadata accessor for ModifiedContent();
  v41[0] = WitnessTable;
  v41[1] = &protocol witness table for ClearNavigationContextModifier;
  v22 = MEMORY[0x1E697E858];
  v23 = swift_getWitnessTable(MEMORY[0x1E697E858], v18, v41);
  v24 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  v40[0] = v23;
  v40[1] = v24;
  v25 = swift_getWitnessTable(v22, v20, v40);
  v26 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  v39[0] = v25;
  v39[1] = v26;
  v27 = swift_getWitnessTable(v22, v21, v39);
  v49[0] = vdupq_n_s64(0x4051000000000000uLL);
  v29 = type metadata accessor for PopoverContent(0, v21, v27, v28);
  (*(*(v21 - 8) + 32))(v49 + *(v29 + 36), &v44, v21);
  v30 = v49 + *(v29 + 40);
  *v30 = v17;
  *(v30 + 1) = v16;
  v30[16] = v32;
  v35 = v49[2];
  v36 = v49[3];
  v37 = v49[4];
  v38 = v50;
  v33 = v49[0];
  v34 = v49[1];
  swift_getWitnessTable(protocol conformance descriptor for PopoverContent<A>, v29);
  return AnyView.init<A>(_:)();
}

uint64_t (*implicit closure #1 in closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3))()
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
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:);
}

__n128 closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void))
{
  v13 = type metadata accessor for PopoverPresentationModifier.PopoverModifier(0, a5, a6, a4);
  v14 = v13[9];
  v15 = (*(a6 + 40))(a5, a6);
  if (v15)
  {
    v18 = v15;
    v42 = v16;
    v41 = PopoverPresentationModifier.PopoverModifier.wrappedContent(_:)(v15, v16, v13);
    v19 = (a4 + v13[11]);
    v39 = v19[1];
    v40 = *v19;
    v20 = a7(a4 + v14, a5, a6);
    v37 = v21;
    v38 = v20;
    v36 = *(a4 + v13[12]);
    PopoverPresentationModifier.PopoverModifier.viewID.getter(&v46);
    v22 = a1;
    v23 = v46;
    (*(a6 + 48))(v45, a5, a6);
    PopoverPresentationModifier.PopoverModifier.presentationEnvironment.getter(v13, v44);
    v24 = v44[0];
    v25 = v44[1];
    v26 = *(a4 + v13[15]);
    LODWORD(v54) = 0;
    v50 = 0u;
    v51 = 0u;
    *(&v53 + 1) = 0;
    *&v52 = 0;
    BYTE4(v54) = 1;
    BYTE6(v54) = 1;
    *&v47 = v41;
    BYTE8(v47) = v40;
    BYTE9(v47) = v39;
    *&v48 = a2;
    *(&v48 + 1) = v38;
    *&v49 = v37;
    BYTE8(v49) = v36;
    HIDWORD(v49) = v23;

    outlined assign with take of AnyHashable?(v45, &v50);
    *(&v52 + 1) = v24;
    v53 = v25;
    LODWORD(v54) = 0;
    BYTE4(v54) = 1;
    BYTE5(v54) = v26;
    *(&v54 + 1) = a3;
    v27 = *v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18, v42);
    *(v27 + 2) = v29 + 1;
    v30 = &v27[128 * v29];
    v31 = v47;
    v32 = v48;
    v33 = v50;
    *(v30 + 4) = v49;
    *(v30 + 5) = v33;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    result = v51;
    v34 = v52;
    v35 = v54;
    *(v30 + 8) = v53;
    *(v30 + 9) = v35;
    *(v30 + 6) = result;
    *(v30 + 7) = v34;
    *v22 = v27;
  }

  return result;
}

uint64_t (*implicit closure #1 in closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3))()
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
  return partial apply for implicit closure #2 in implicit closure #1 in closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:);
}

uint64_t closure #1 in PopoverPresentationModifier.PopoverModifier.wrappedContent(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  a1(v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

uint64_t static EmptyAnchorTraitTransformModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v32);
  v11 = a2[1];
  v33 = *a2;
  v34 = v11;
  v13 = *a2;
  v12 = a2[1];
  v35 = a2[2];
  v26 = v13;
  v27 = v12;
  v28 = a2[2];
  outlined init with copy of _GraphInputs(&v33, &v36);
  _ViewInputs.init(withoutGeometry:)();
  type metadata accessor for EmptyAnchorTraitTransformModifier(255, a5, a6, a7);
  type metadata accessor for _GraphValue();
  v14 = _GraphValue.value.getter();
  v15 = _ViewListInputs.traits.getter();
  if ((v15 & 0x100000000) != 0)
  {
    v16 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v16 = v15;
  }

  v17 = HIDWORD(v34);
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  *(&v27 + 1) = *(&v37 + 1);
  *&v26 = __PAIR64__(v16, v14);
  DWORD2(v26) = _ViewInputs.position.getter();
  HIDWORD(v26) = Attribute<A>.origin()();
  *&v27 = __PAIR64__(v17, HIDWORD(v39));
  v24 = type metadata accessor for EmptyAnchorTraitTransformModifier.TransformTrait(0, a5, a6, a7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyAnchorTraitTransformModifier<A, B>.TransformTrait, v24);
  _ss11AnyHashableVSgMaTm_3(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21, v23, v24, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  LOBYTE(v26) = 0;
  _ViewListInputs.traits.setter();
  v20 = _ViewListInputs.addTraitKey<A>(_:)();
  a3(v20, v32);
  outlined destroy of _ViewInputs(&v36);
  return outlined destroy of _ViewListInputs(v32);
}

uint64_t EmptyAnchorTraitTransformModifier.TransformTrait.modifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for EmptyAnchorTraitTransformModifier(0, a4, a5, a6);
  v6 = *AGGraphGetValue();

  return v6;
}

void EmptyAnchorTraitTransformModifier.TransformTrait.value.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[0] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = v23 - v14;
  AGGraphClearUpdate();
  v16 = *AGGraphGetValue();

  AGGraphSetUpdate();
  AnchorGeometry.init(position:size:transform:)();
  v17 = v25;
  v18 = v24;
  EmptyAnchorTraitTransformModifier.TransformTrait.modifier.getter(a1, a2, a3, a4, a5, a6);

  v24 = v18;
  v25 = v17;
  v19 = Anchor.Source.prepare(geometry:)();

  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1) || (v20 = *AGGraphGetValue(), , !v20))
  {
    ViewTraitCollection.init()();
    v20 = v24;
  }

  else
  {
    v24 = v20;
  }

  EmptyAnchorTraitTransformModifier.TransformTrait.modifier.getter(a1, a2, a3, a4, a5, a6);
  v22 = v21;

  v23[1] = v20;
  ViewTraitCollection.subscript.getter();
  v22(v15, v19, v16);

  ViewTraitCollection.subscript.setter();

  *v23[0] = v24;
}

void PopoverConditionalStateProvider.presentationMode.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented();

  v5 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  *(a1 + 16) = v4;
  *a1 = v3;
  *(a1 + 8) = v5;
}

uint64_t PopoverItemStateProvider.popoverContent.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981920]);
  v12 = v3;
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v15 = v1;
  FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PopoverItemStateProvider.popoverContent.getter, v11, MEMORY[0x1E69E73E0], FunctionTypeMetadata0, v9, &v16);
  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t closure #1 in PopoverItemStateProvider.popoverContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v33 = a5;
  v34 = a6;
  v31 = a2;
  v32 = a4;
  v35 = a7;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v12;
  v36[1] = v13;
  v36[2] = v14;
  v36[3] = v15;
  v16 = type metadata accessor for PopoverItemStateProvider(0, v36);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v30 - v20;
  (*(v17 + 16))(&v30 - v20, v31, v16, v19);
  (*(v9 + 16))(v11, a1, a3);
  v22 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v23 = (v18 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = v32;
  v26 = v33;
  *(v24 + 2) = a3;
  *(v24 + 3) = v25;
  v27 = v34;
  *(v24 + 4) = v26;
  *(v24 + 5) = v27;
  (*(v17 + 32))(&v24[v22], v21, v16);
  result = (*(v9 + 32))(&v24[v23], v11, a3);
  v29 = v35;
  *v35 = partial apply for closure #1 in closure #1 in PopoverItemStateProvider.popoverContent.getter;
  v29[1] = v24;
  return result;
}

uint64_t PopoverItemStateProvider.identifier.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981920]);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    result = (*(v7 + 8))(v9, v6);
    v14 = v19;
    v19[4] = 0;
    *v14 = 0u;
    v14[1] = 0u;
  }

  else
  {
    v15 = v18;
    (*(v4 + 16))(v18, v9, v3);
    (*(v7 + 8))(v9, v6);
    dispatch thunk of Identifiable.id.getter();
    (*(v4 + 8))(v15, v3);
    swift_getAssociatedConformanceWitness();
    _convertToAnyHashable<A>(_:)();
    return (*(v17 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t PopoverItemStateProvider.presentationMode.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  type metadata accessor for Optional();
  v4 = type metadata accessor for Binding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981928]);
  v8 = *(a1 + 32);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v10 = type metadata accessor for PresentationMode.FromItem(0, v3, v8, v9);
  swift_getWitnessTable(protocol conformance descriptor for PresentationMode.FromItem<A>, v10);
  Binding.projecting<A>(_:)();
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall PopoverItemStateProvider.dismiss()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - v6;
  (*(*(v2 - 8) + 56))(&v8 - v6, 1, 1, v2, v5);
  specialized ItemSheetPresentationModifier.item.setter(v7, v1);
  (*(v4 + 8))(v7, v3);
}

uint64_t specialized Edge.Set.init(_:)(unsigned __int8 a1)
{
  if (a1 >= 8u)
  {
    v1 = 0;
  }

  else
  {
    v1 = 1 << a1;
  }

  if (a1 <= 8u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t assignWithTake for PopoverAttachmentAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of Environment<CGFloat?>.Content(v4, v5, v6);
  return a1;
}

double destroy for PopoverPresentation(uint64_t a1)
{

  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 48));
  }

  return result;
}

uint64_t initializeWithCopy for PopoverPresentation(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
  v4 = a2[4];
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 11);
  v5 = a2[9];

  if (v5)
  {
    v6 = a2[10];
    *(a1 + 72) = v5;
    *(a1 + 80) = v6;
    (**(v5 - 8))(a1 + 48, a2 + 6, v5);
  }

  else
  {
    v7 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v7;
    *(a1 + 80) = a2[10];
  }

  v8 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v8;
  *(a1 + 104) = a2[13];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = a2[15];

  return a1;
}

uint64_t assignWithCopy for PopoverPresentation(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 4);
  *(a1 + 16) = a2[2];

  v4 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 11);
  v5 = a2[9];
  if (*(a1 + 72))
  {
    v6 = (a1 + 48);
    if (v5)
    {
      __swift_assign_boxed_opaque_existential_1(v6, a2 + 6);
    }

    else
    {
      outlined destroy of AnyHashable(v6);
      v7 = a2[10];
      v8 = *(a2 + 4);
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = v8;
      *(a1 + 80) = v7;
    }
  }

  else if (v5)
  {
    *(a1 + 72) = v5;
    *(a1 + 80) = a2[10];
    (**(v5 - 8))(a1 + 48, a2 + 6);
  }

  else
  {
    v9 = *(a2 + 3);
    v10 = *(a2 + 4);
    *(a1 + 80) = a2[10];
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  *(a1 + 88) = a2[11];

  *(a1 + 96) = a2[12];

  v11 = a2[13];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 104) = v11;
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = a2[15];

  return a1;
}

uint64_t assignWithTake for PopoverPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  if (*(a1 + 72))
  {
    if (*(a2 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 48));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 48);
    }
  }

  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for PopoverConditionalStateProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 40));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 40);
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverConditionalStateProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for PopoverConditionalStateProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 22 > 0x18)
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
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    outlined copy of Environment<CGFloat?>.Content(*v11, v13, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 17) = *(v11 + 17);
    *(v10 + 19) = *(v11 + 19);
    *(v10 + 20) = *(v11 + 20);
    *(v10 + 21) = *(v11 + 21);
  }

  return v3;
}

uint64_t initializeWithTake for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t assignWithTake for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v6) = *(v8 + 16);
  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  *v7 = *v8;
  *(v7 + 16) = v6;
  outlined consume of Environment<CGFloat?>.Content(v9, v10, v11);
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverPresentationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 < a2 && *(a1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 22))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v9 > 1)
  {
    return (v9 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for PopoverPresentationModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 22;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0xFE)
      {
        v13 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v13 + 16) = 0;
          *v13 = a2 - 255;
          *(v13 + 8) = 0;
        }

        else
        {
          *(v13 + 16) = -a2;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverItemStateProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  v10 = (v8 + 16) & ~v8;
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = *(v5 + 64) + 1;
  }

  v12 = v10 + v11;
  v13 = v7 & 0x100000;
  v14 = *a2;
  *a1 = *a2;
  if (v8 > 7 || v13 != 0 || ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    a1 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & v9));
  }

  else
  {
    v17 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v17;
    v18 = v17 + 1;
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = v19;
    v21 = v20 + 1;
    v22 = *(v5 + 48);

    if (v22(v18, 1, v4))
    {
      memcpy(v21, v18, v11);
    }

    else
    {
      (*(v6 + 16))(v21, v18, v4);
      (*(v6 + 56))(v21, 0, 1, v4);
    }

    v23 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    v25 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v23;
    v25[1] = v24;
  }

  return a1;
}

void *initializeWithTake for PopoverItemStateProvider(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  if ((*(v8 + 48))(v11 & ~v9, 1, v7))
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

    memcpy((v10 & ~v9), (v11 & ~v9), v14);
  }

  else
  {
    (*(v8 + 32))(v10 & ~v9, v11 & ~v9, v7);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10 & ~v9, 0, 1, v7);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  v17 = v13 + ((v9 + 16) & ~v9);
  if (!v12)
  {
    ++v17;
  }

  *((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for PopoverItemStateProvider(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  *v7 = *(v6 & 0xFFFFFFFFFFFFFFF8);

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v7 + v11 + 8;
  v13 = v11 + 8 + v8;
  v14 = *(v10 + 48);
  LODWORD(v7) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v7)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 32))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 40))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  *((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverItemStateProvider(_DWORD *a1, unsigned int a2, uint64_t a3)
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
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
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
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
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

void storeEnumTagSinglePayload for PopoverItemStateProvider(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
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

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
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

uint64_t partial apply for closure #1 in closure #1 in PopoverItemStateProvider.popoverContent.getter()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v12 = *(v0 + 2);
  v1 = v12;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = *(type metadata accessor for PopoverItemStateProvider(0, &v12) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(*(v1 - 8) + 80);
  v12 = v1;
  v13 = v2;
  v9 = (v6 + v7 + v8) & ~v8;
  v14 = v3;
  v15 = v4;
  v10 = type metadata accessor for PopoverItemStateProvider(0, &v12);
  return (*&v0[*(v10 + 52) + v6])(&v0[v9]);
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverPresentationModifier.PopoverModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((v6 + ((v5 + 4) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 4) & ~v5;
    v11 = (a2 + v5 + 4) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v6 + v11) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Environment<CGFloat?>.Content(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 17) = *(v13 + 17);
    *(v12 + 19) = *(v13 + 19);
    *(v12 + 20) = *(v13 + 20);
    v17 = (v12 + 28) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v13 + 28) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 16) = *(v18 + 16);
  }

  return v3;
}

_DWORD *initializeWithTake for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v13 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 16) = *(v14 + 16);
  return a1;
}

_DWORD *assignWithTake for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v9) = *(v11 + 16);
  v12 = *v10;
  v13 = *(v10 + 8);
  v14 = *(v10 + 16);
  *v10 = *v11;
  *(v10 + 16) = v9;
  outlined consume of Environment<CGFloat?>.Content(v12, v13, v14);
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v15 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);

  *(v15 + 16) = *(v16 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverPresentationModifier.PopoverModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 4) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v7 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v9];
    if (a1[v9])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = &a1[v6 + 4] & ~v6;
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(v18);
  }

  v19 = *((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

void storeEnumTagSinglePayload for PopoverPresentationModifier.PopoverModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
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
      v18 = &a1[v9 + 4] & ~v9;
      if (v7 < 0x7FFFFFFE)
      {
        v20 = ((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

unint64_t lazy protocol witness table accessor for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType()
{
  result = lazy protocol witness table cache variable for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType;
  if (!lazy protocol witness table cache variable for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PopoverPresentationKeyType, &type metadata for PopoverPresentationKeyType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior()
{
  result = lazy protocol witness table cache variable for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior;
  if (!lazy protocol witness table cache variable for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PopoverAttachmentBehavior, &type metadata for PopoverAttachmentBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior);
  }

  return result;
}

void type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect?(255);
    v11 = a5(a1, v10, a3, a4);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

double partial apply for closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:)(char **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for PopoverPresentationModifier.PopoverModifier(0, v9, v10, a4) - 8);
  *&result = closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:)(a1, a2, a3, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, v10, a4).n128_u64[0];
  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _ss11AnyHashableVSgMaTm_3(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for PopoverContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 16) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 16) & ~v5;
    v11 = (a2 + v5 + 16) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v6 + v11) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
  }

  return v3;
}

double destroy for PopoverContent(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

_OWORD *initializeWithCopy for PopoverContent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);

  return a1;
}

void *assignWithCopy for PopoverContent(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  return a1;
}

_OWORD *initializeWithTake for PopoverContent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  return a1;
}

_OWORD *assignWithTake for PopoverContent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverContent(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 17;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    v18 = &a1[v6 + 16] & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void storeEnumTagSinglePayload for PopoverContent(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
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
      v18 = &a1[v9 + 16] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v20 + 16) = 0;
          *v20 = a2 & 0x7FFFFFFF;
          *(v20 + 8) = 0;
        }

        else
        {
          *(v20 + 8) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}