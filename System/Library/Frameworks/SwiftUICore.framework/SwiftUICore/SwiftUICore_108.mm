uint64_t destroy for Stack3(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v13 = *(v3 - 8);
  v4 = *(v13 + 48);
  if (!v4(a1, 1, v3))
  {
    (*(v13 + 8))(a1, v3);
  }

  if (*(v13 + 84))
  {
    v5 = *(v13 + 64);
  }

  else
  {
    v5 = *(v13 + 64) + 1;
  }

  v6 = *(v13 + 80);
  v7 = v5 + v6;
  v8 = ~v6;
  v9 = (v5 + v6 + a1) & ~v6;
  if (!v4(v9, 1, v3))
  {
    (*(v13 + 8))(v9, v3);
  }

  v10 = v7 + v9;
  result = (v4)(v10 & v8, 1, v3);
  if (!result)
  {
    v12 = *(v13 + 8);

    return v12(v10 & v8, v3);
  }

  return result;
}

void *initializeWithCopy for Stack3(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = v11 + v12;
  v14 = ~v12;
  v15 = ((a1 + v11 + v12) & ~v12);
  v16 = ((a2 + v11 + v12) & ~v12);
  if (v7(v16, 1, v5))
  {
    memcpy(v15, v16, v11);
  }

  else
  {
    (*(v6 + 16))(v15, v16, v5);
    (*(v6 + 56))(v15, 0, 1, v5);
  }

  v17 = &v15[v13];
  v18 = &v16[v13];
  if (v7((v18 & v14), 1, v5))
  {
    memcpy((v17 & v14), (v18 & v14), v11);
  }

  else
  {
    (*(v6 + 16))(v17 & v14, v18 & v14, v5);
    (*(v6 + 56))(v17 & v14, 0, 1, v5);
  }

  return a1;
}

void *assignWithCopy for Stack3(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = v13 + v14;
  v26 = a1;
  v16 = ~v14;
  v17 = ((a1 + v13 + v14) & ~v14);
  v18 = ((a2 + v13 + v14) & ~v14);
  v19 = v7(v17, 1, v5);
  v20 = v7(v18, 1, v5);
  if (v19)
  {
    if (!v20)
    {
      (*(v6 + 16))(v17, v18, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    (*(v6 + 8))(v17, v5);
LABEL_20:
    memcpy(v17, v18, v13);
    goto LABEL_21;
  }

  (*(v6 + 24))(v17, v18, v5);
LABEL_21:
  v21 = &v17[v15];
  v22 = &v18[v15];
  v23 = v7((v21 & v16), 1, v5);
  v24 = v7((v22 & v16), 1, v5);
  if (!v23)
  {
    if (!v24)
    {
      (*(v6 + 24))(v21 & v16, v22 & v16, v5);
      return v26;
    }

    (*(v6 + 8))(v21 & v16, v5);
    goto LABEL_26;
  }

  if (v24)
  {
LABEL_26:
    memcpy((v21 & v16), (v22 & v16), v13);
    return v26;
  }

  (*(v6 + 16))(v21 & v16, v22 & v16, v5);
  (*(v6 + 56))(v21 & v16, 0, 1, v5);
  return v26;
}

void *initializeWithTake for Stack3(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = v11 + v12;
  v14 = ~v12;
  v15 = ((a1 + v11 + v12) & ~v12);
  v16 = ((a2 + v11 + v12) & ~v12);
  if (v7(v16, 1, v5))
  {
    memcpy(v15, v16, v11);
  }

  else
  {
    (*(v6 + 32))(v15, v16, v5);
    (*(v6 + 56))(v15, 0, 1, v5);
  }

  v17 = &v15[v13];
  v18 = &v16[v13];
  if (v7((v18 & v14), 1, v5))
  {
    memcpy((v17 & v14), (v18 & v14), v11);
  }

  else
  {
    (*(v6 + 32))(v17 & v14, v18 & v14, v5);
    (*(v6 + 56))(v17 & v14, 0, 1, v5);
  }

  return a1;
}

void *assignWithTake for Stack3(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = v13 + v14;
  v26 = a1;
  v16 = ~v14;
  v17 = ((a1 + v13 + v14) & ~v14);
  v18 = ((a2 + v13 + v14) & ~v14);
  v19 = v7(v17, 1, v5);
  v20 = v7(v18, 1, v5);
  if (v19)
  {
    if (!v20)
    {
      (*(v6 + 32))(v17, v18, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    (*(v6 + 8))(v17, v5);
LABEL_20:
    memcpy(v17, v18, v13);
    goto LABEL_21;
  }

  (*(v6 + 40))(v17, v18, v5);
LABEL_21:
  v21 = &v17[v15];
  v22 = &v18[v15];
  v23 = v7((v21 & v16), 1, v5);
  v24 = v7((v22 & v16), 1, v5);
  if (!v23)
  {
    if (!v24)
    {
      (*(v6 + 40))(v21 & v16, v22 & v16, v5);
      return v26;
    }

    (*(v6 + 8))(v21 & v16, v5);
    goto LABEL_26;
  }

  if (v24)
  {
LABEL_26:
    memcpy((v21 & v16), (v22 & v16), v13);
    return v26;
  }

  (*(v6 + 32))(v21 & v16, v22 & v16, v5);
  (*(v6 + 56))(v21 & v16, 0, 1, v5);
  return v26;
}

uint64_t getEnumTagSinglePayload for Stack3(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((v7 + *(v4 + 80) + ((v7 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
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

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for Stack3(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
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
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

void _GeometryActionModifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void _GeometryActionModifier.action.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void _GeometryActionModifier.value.init(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t GeometryActionBinder.init(provider:position:size:transform:environment:safeAreaInsets:phase:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v25 = a4;
  v14 = type metadata accessor for GeometryActionBinder(0, a8, a10, a4);
  v15 = v14[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ValueCycleDetector.init()(AssociatedTypeWitness, AssociatedConformanceWitness, &a9[v15]);
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v18 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced >= v18)
    {
      goto LABEL_7;
    }

LABEL_9:
    v21 = specialized static GraphHost.currentHost.getter();
    swift_beginAccess();
    v22 = *(v21 + 64);

    v20 = 0;
    v19 = *&v22 | 0xFFFFFFFF00000000;
    goto LABEL_10;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v19 = 0;
  v20 = 0x200000000;
LABEL_10:
  v23 = &a9[v14[16]];
  *v23 = v19;
  v23[12] = BYTE4(v20);
  *(v23 + 2) = v20;
  *&a9[v14[17]] = 0;
  *&a9[v14[18]] = 0;
  result = (*(*(AssociatedTypeWitness - 8) + 56))(&a9[v14[19]], 1, 1, AssociatedTypeWitness);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = v25;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  return result;
}

uint64_t _GeometryActionModifier.value(geometry:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return a2(v4);
}

uint64_t _GeometryActionModifier2.value.getter()
{
  _ViewInputs.base.modify();
  v1 = v0;

  return v1;
}

double key path getter for _GeometryActionModifier2.value : <A>_GeometryActionModifier2<A>@<D0>(void *a1@<X8>)
{
  _ViewInputs.base.modify();
  *a1 = v2;
  a1[1] = v3;

  return result;
}

void key path setter for _GeometryActionModifier2.value : <A>_GeometryActionModifier2<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  _GeometryActionModifier.value.setter(v1, v2);
}

uint64_t _GeometryActionModifier2.value.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double key path getter for _GeometryActionModifier.action : <A>_GeometryActionModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a2 + a3;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = *(v8 - 16);
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  *a6 = a5;
  a6[1] = v11;

  return result;
}

void key path setter for _GeometryActionModifier.action : <A>_GeometryActionModifier<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3 + a4;
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = *(v8 - 16);
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;

  *(a2 + 16) = a6;
  *(a2 + 24) = v11;
}

uint64_t static _GeometryActionModifier._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t)@<X6>, const char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a4;
  v40 = a3;
  v38 = a9;
  v37 = a10;
  v56 = *MEMORY[0x1E69E9840];
  v13 = a7(255, a5, a6);
  swift_getWitnessTable(a8, v13);
  v15 = v14;
  v17 = type metadata accessor for GeometryActionBinder(0, v13, v14, v16);
  v36 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  LODWORD(a1) = *a1;
  v20 = *a2;
  v21 = *(a2 + 2);
  v22 = *(a2 + 6);
  v23 = *(a2 + 44);
  v53 = *(a2 + 28);
  v54 = v23;
  v55 = v20;
  v24 = *(a2 + 15);
  v25 = *(a2 + 18);
  swift_beginAccess();
  v26 = *(v21 + 16);
  *&v27 = *(a2 + 8);
  v35 = v27;
  v28 = v27;
  *&v27 = *(a2 + 76);
  v34 = v27;
  GeometryActionBinder.init(provider:position:size:transform:environment:safeAreaInsets:phase:)(a1, v28, v25, v24, v26, v27, v22, v13, v19, v15);
  v42 = v17;
  swift_getWitnessTable(protocol conformance descriptor for GeometryActionBinder<A>, v17);
  v43 = v29;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, v37, v41, v17, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
  (*(v36 + 8))(v19, v17);
  v32 = AGGraphSetFlags();
  v44 = v55;
  v45 = v21;
  v46 = v22;
  v47 = v53;
  v48 = v54;
  v49 = v24;
  v50 = v35;
  v51 = v25;
  v52 = v34;
  return v40(v32, &v44);
}

double _GeometryActionModifier2.value(geometry:)(uint64_t a1, void (*a2)(_OWORD *, __n128), uint64_t a3)
{
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);

  (a2)(v6);

  return result;
}

uint64_t static _CoreGeometryActionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a4;
  v36 = a3;
  v34 = a7;
  v52 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for _CoreGeometryActionModifier(255, a5, a6, a4);
  swift_getWitnessTable(protocol conformance descriptor for _CoreGeometryActionModifier<A>, v9);
  v11 = v10;
  v13 = type metadata accessor for GeometryActionBinder(0, v9, v10, v12);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *a1;
  v17 = *a2;
  v18 = *(a2 + 2);
  v19 = *(a2 + 6);
  v20 = *(a2 + 44);
  v49 = *(a2 + 28);
  v50 = v20;
  v51 = v17;
  v21 = *(a2 + 15);
  v22 = *(a2 + 18);
  swift_beginAccess();
  v23 = *(v18 + 16);
  *&v24 = *(a2 + 8);
  v32 = v24;
  v25 = v24;
  *&v24 = *(a2 + 76);
  v31 = v24;
  GeometryActionBinder.init(provider:position:size:transform:environment:safeAreaInsets:phase:)(v16, v25, v22, v21, v23, v24, v19, v9, v15, v11);
  v38 = v13;
  swift_getWitnessTable(protocol conformance descriptor for GeometryActionBinder<A>, v13);
  v39 = v26;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, v37, v13, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
  (*(v33 + 8))(v15, v13);
  v29 = AGGraphSetFlags();
  v40 = v51;
  v41 = v18;
  v42 = v19;
  v43 = v49;
  v44 = v50;
  v45 = v21;
  v46 = v32;
  v47 = v22;
  v48 = v31;
  return v36(v29, &v40);
}

uint64_t _CoreGeometryActionModifier.value(geometry:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return a2(v4);
}

Swift::Void __swiftcall GeometryActionBinder.updateValue()()
{
  v2 = v0;
  v199 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 16);
  v179 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v173 = &v152 - v7;
  v181 = v5;
  v175 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v162 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v152 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v177 = &v152 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v185 = &v152 - v16;
  v17 = type metadata accessor for ObservationTracking._AccessList();
  v174 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v152 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v152 - v22;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v183 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v170 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v169 = &v152 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v176 = (&v152 - v28);
  v191 = *(AssociatedTypeWitness - 8);
  v29 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v163 = &v152 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v152 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v182 = &v152 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v184 = &v152 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v152 - v41;
  v188 = v3;
  v187 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v152 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v43;
  MEMORY[0x1EEE9AC00](v45);
  v186 = &v152 - v46;
  if (*(v1 + v2[17]) != *AGGraphGetValue() >> 1)
  {
    AGGraphGetValue();
    specialized GeometryActionBinder.reset(seed:)(v2);
  }

  v47 = v2[18];
  v48 = (*(v1 + v47) + 1);
  *(v1 + v47) = v48;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v50 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v164 = v17;
    v157 = v12;
    v160 = v44;
    v158 = v6;
    v154 = v29;
    v155 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v180 = v2;
    v189 = AssociatedTypeWitness;
    v192 = v1;
    LODWORD(v168) = *(v1 + 20) == v50;
    v51 = v50;
    v52 = AGCreateWeakAttribute();
    v53 = v52;
    v167 = HIDWORD(v52);
    v54 = AGCreateWeakAttribute();
    v55 = v54;
    v166 = HIDWORD(v54);
    v56 = AGCreateWeakAttribute();
    v57 = v56;
    v165 = HIDWORD(v56);
    v58 = AGCreateWeakAttribute();
    v59 = v58;
    v60 = HIDWORD(v58);
    v61 = AGCreateWeakAttribute();
    v62 = v61;
    v63 = HIDWORD(v61);
    LODWORD(v168) = v51;
    v64 = AGCreateWeakAttribute();
    v193[0] = v53;
    v193[1] = v167;
    v193[2] = v55;
    v193[3] = v166;
    v193[4] = v57;
    v193[5] = v165;
    v193[6] = v59;
    v193[7] = v60;
    v193[8] = v62;
    v193[9] = v63;
    v194 = v64;
    v195 = v48;
    v65 = v188;
    Value = AGGraphGetValue();
    v31 = (v187 + 16);
    v44 = *(v187 + 16);
    v67 = v186;
    v68 = (v44)(v186, Value, v65);
    v6 = &v152;
    MEMORY[0x1EEE9AC00](v68);
    v29 = &v152 - 6;
    v69 = v179;
    *(&v152 - 4) = v65;
    *(&v152 - 3) = v69;
    *(&v152 - 2) = v67;
    *(&v152 - 1) = v193;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v70 = static ObservationCenter._current;
  swift_beginAccess();
  v71 = pthread_getspecific(v70[2]);
  v72 = v189;
  v73 = v174;
  if (!v71)
  {
    v74 = swift_slowAlloc();
    pthread_setspecific(v70[2], v74);
    v198 = type metadata accessor for ObservationCenter();
    v70 = v70[3];
    *&v197 = v70;
    outlined init with take of Any(&v197, v74);

    v71 = v74;
  }

  outlined init with copy of Any(v71, &v197);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v75 = v196;
  v76 = AGGraphGetCurrentAttribute();
  if (v76 == v168)
  {
    __break(1u);
LABEL_38:
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
    *(v75 + 24) = v70;
    goto LABEL_11;
  }

  LODWORD(v166) = v76;
  v168 = v6;
  v153 = v44;
  swift_beginAccess();
  v167 = *(v75 + 24);
  *(v75 + 24) = MEMORY[0x1E69E7CC0];
  v77 = v169;
  v48 = v164;
  v78 = (*(v73 + 56))(v169, 1, 1, v164);
  MEMORY[0x1EEE9AC00](v78);
  *(&v152 - 4) = v72;
  *(&v152 - 3) = partial apply for closure #1 in GeometryActionBinder.updateValue();
  *(&v152 - 2) = v29;
  v79 = type metadata accessor for Error();
  v80 = v182;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v77, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v152 - 6), v183, v79, v72, MEMORY[0x1E69E7288], &v196);
  v81 = *(v191 + 32);
  v183 = v191 + 32;
  v182 = v81;
  (v81)(v184, v80, v72);
  v82 = MEMORY[0x1E69E81D0];
  v83 = MEMORY[0x1E69E6720];
  v84 = v176;
  outlined init with take of ObservationTracking._AccessList?(v77, v176, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v85 = v83;
  v86 = v170;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_0(v84, v170, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v82, v85);
  v87 = (*(v73 + 48))(v86, 1, v48);
  v165 = v31;
  if (v87 == 1)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v84, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v88 = v86;
    v6 = v185;
    goto LABEL_14;
  }

  v29 = *(v73 + 32);
  v89 = v172;
  (v29)(v172, v86, v48);
  (*(v73 + 16))(v171, v89, v48);
  v70 = *(v75 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v75 + 24) = v70;
  v6 = v185;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_11:
  v92 = v70[2];
  v91 = v70[3];
  if (v92 >= v91 >> 1)
  {
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v70);
  }

  v70[2] = v92 + 1;
  (v29)(v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v92, v171, v48);
  *(v75 + 24) = v70;
  (*(v73 + 8))(v172, v48);
  v72 = v189;
  v88 = v176;
LABEL_14:
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v88, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v93 = v190;
  (v182)(v190, v184, v72);
  v94 = *(v75 + 24);
  v95 = *(v94 + 16);
  if (v95)
  {
    v98 = *(v73 + 16);
    v97 = v73 + 16;
    v96 = v98;
    v99 = v94 + ((*(v97 + 64) + 32) & ~*(v97 + 64));
    v100 = *(v97 + 56);
    v101 = v161;
    v102 = (v97 - 8);
    v184 = *(v75 + 24);

    v103 = v166;
    do
    {
      v96(v101, v99, v48);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v103, v101, &unk_1F006FA80, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FAA8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
      (*v102)(v101, v48);
      v99 += v100;
      --v95;
    }

    while (v95);

    v72 = v189;
    v93 = v190;
    v6 = v185;
  }

  *(v75 + 24) = v167;

  v104 = v191;
  v105 = *(v191 + 16);
  v172 = (v191 + 16);
  v171 = v105;
  (v105)(v6, v93, v72);
  (*(v104 + 56))(v6, 0, 1, v72);
  v106 = v175;
  v107 = v72;
  v108 = v175 + 16;
  v109 = *(v175 + 16);
  v170 = v180[19];
  v110 = v177;
  v111 = v181;
  v109(v177, v192 + v170, v181);
  v112 = *(TupleTypeMetadata2 + 48);
  v113 = v173;
  v109(v173, v6, v111);
  v184 = v112;
  v109(&v112[v113], v110, v111);
  v114 = *(v104 + 48);
  v115 = v114(v113, 1, v107);
  v176 = v109;
  v174 = v108;
  if (v115 == 1)
  {
    v116 = *(v106 + 8);
    v116(v110, v111);
    v117 = v6;
    v118 = v116;
    v116(v117, v111);
    v119 = v114(&v184[v113], 1, v107) == 1;
    v120 = v113;
    v121 = v107;
    if (v119)
    {
      v118(v113, v111);
      (*(v191 + 8))(v190, v107);
      goto LABEL_34;
    }
  }

  else
  {
    v122 = v157;
    v109(v157, v113, v111);
    v123 = v122;
    v121 = v107;
    if (v114(&v184[v113], 1, v107) != 1)
    {
      v145 = v159;
      (v182)(v159, &v184[v113], v107);
      swift_getAssociatedConformanceWitness();
      v146 = v111;
      LODWORD(v184) = dispatch thunk of static Equatable.== infix(_:_:)();
      v147 = v123;
      v148 = *(v191 + 8);
      v148(v145, v121);
      v149 = *(v175 + 8);
      v149(v177, v146);
      v149(v185, v146);
      v148(v147, v189);
      v150 = v113;
      v151 = v146;
      v118 = v149;
      v124 = v190;
      v149(v150, v151);
      v121 = v189;
      v125 = v176;
      if (v184)
      {
        v148(v124, v189);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v118 = *(v106 + 8);
    v118(v177, v111);
    v118(v185, v111);
    (*(v191 + 8))(v123, v107);
    v120 = v113;
  }

  v124 = v190;
  (v158[1])(v120, TupleTypeMetadata2);
  v125 = v176;
LABEL_25:
  v126 = v162;
  v125(v162, v192 + v170, v181);
  if (v114(v126, 1, v121) == 1)
  {
    v127 = v163;
    (v171)(v163, v124, v121);
    if (v114(v126, 1, v121) != 1)
    {
      v118(v126, v181);
    }
  }

  else
  {
    v127 = v163;
    (v182)(v163, v126, v121);
  }

  if (GeometryActionBinder.dispatch(value:)(v124, v180))
  {
    LOBYTE(v196) = 17;
    v128 = v121;
    v129 = v188;
    v153(v160, v186, v188);
    v130 = v159;
    v131 = v171;
    (v171)(v159, v127, v128);
    v132 = v155;
    (v131)(v155, v124, v128);
    v133 = v187;
    v134 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    v135 = v191;
    v136 = *(v191 + 80);
    v137 = (v156 + v136 + v134) & ~v136;
    v138 = (v154 + v136 + v137) & ~v136;
    v139 = swift_allocObject();
    v140 = v179;
    *(v139 + 16) = v129;
    *(v139 + 24) = v140;
    (*(v133 + 32))(v139 + v134, v160, v129);
    v141 = v139 + v137;
    v142 = v182;
    (v182)(v141, v130, v128);
    v142(v139 + v138, v132, v128);
    static Update.enqueueAction(reason:_:)(&v196, partial apply for closure #2 in GeometryActionBinder.updateValue(), v139);

    v143 = *(v135 + 8);
    v143(v163, v128);
    v143(v190, v128);
  }

  else
  {
    v144 = *(v191 + 8);
    v144(v127, v121);
    v144(v124, v121);
  }

LABEL_34:
  (*(v187 + 8))(v186, v188);
}

BOOL GeometryActionBinder.dispatch(value:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3 + *(a2 + 64);
  if (*(v6 + 12) << 32 == 0x200000000)
  {
    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = type metadata accessor for ValueCycleDetector(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
    v13 = ValueCycleDetector.dispatch(value:label:isDebug:)(a1, implicit closure #2 in GeometryActionBinder.dispatch(value:), 0, 0, v12);
    $defer #1 <A>() in GeometryActionBinder.dispatch(value:)(v3, a1, v8, v7);
    return v13;
  }

  else
  {
    AGGraphClearUpdate();
    v15 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (*(v6 + 4) == v15)
    {
      v16 = *(v6 + 8);
      if (v16 && (v17 = v16 - 1, (*(v6 + 8) = v17) != 0))
      {
        v18 = 1;
      }

      else if (*(v6 + 12) == 1)
      {
        v18 = 0;
      }

      else
      {
        specialized static Log.externalWarning(_:)(0xD000000000000039, 0x800000018DD7AB60);
        v18 = 0;
        *(v6 + 12) = 1;
      }
    }

    else
    {
      *(v6 + 4) = v15;
      *(v6 + 8) = 2;
      v18 = 1;
    }

    $defer #1 <A>() in GeometryActionBinder.dispatch(value:)(v3, a1, *(a2 + 16), *(a2 + 24));
    return v18;
  }
}

uint64_t $defer #1 <A>() in GeometryActionBinder.dispatch(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for GeometryActionBinder(0, a3, a4, a4) + 76);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(a1 + v6, v8);
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(a1 + v6, a2, AssociatedTypeWitness);
  v9 = *(v11 + 56);

  return v9(a1 + v6, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance GeometryActionBinder<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for GeometryActionBinder<A>, a1);

  return static AsyncAttribute.flags.getter();
}

id specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, void (*a2)(void, void, void))
{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E8B0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E8D8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E860, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E888, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EAE0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EB08, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FA30, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FA58, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006ECC0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006ECE8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E950, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E978, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FBC0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FBE8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006ED10, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006ED38, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FC10, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FC38, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FC60, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FC88, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FCB0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FCD8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FD00, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FD28, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FD50, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FD78, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FDA0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FDC8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E9A0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E9C8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E9F0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EA18, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FE90, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FEB8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EB80, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EBA8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FAD0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FAF8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FDF0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FE18, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EBD0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EBF8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FF30, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FF58, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FEE0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FF08, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E900, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E928, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FE40, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FE68, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EA40, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EA68, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F670, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F698, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F9E0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FA08, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FA80, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FAA8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FB70, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FB98, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EA90, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EAB8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EC70, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EC98, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EC20, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EC48, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E810, partial apply for closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:), &unk_1F006E838, partial apply for closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:));
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FB20, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FB48, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EB30, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EB58, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006ED60, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006ED88, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F800, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F828, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F760, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F788, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EE50, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EE78, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F850, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F878, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F6C0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F6E8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EEA0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EEC8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F490, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F4B8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F2B0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F2D8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EEF0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EF18, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F530, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F558, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F350, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F378, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F170, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F198, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F3A0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F3C8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F1C0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F1E8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F300, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F328, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F120, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F148, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F4E0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F508, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EF90, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EFB8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F7B0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F7D8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F3F0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F418, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F210, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F238, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EFE0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F008, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F080, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F0A8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F030, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F058, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F580, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F5A8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F620, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F648, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F5D0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F5F8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F0D0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F0F8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F8F0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F918, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F440, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F468, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F260, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F288, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F8A0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F8C8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F940, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F968, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F990, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F9B8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EF40, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EF68, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F710, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F738, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

id specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a5;
  *&v67 = a4;
  v65 = a3;
  v72 = a2;
  v7 = MEMORY[0x1E69E6720];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v57 - v9;
  v10 = type metadata accessor for ObservationTracking();
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ObservationTracking._AccessList();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = AGGraphGetAttributeSubgraph2();
  if (result)
  {
    v59 = result;
    v73 = v10;
    v62 = a6;
    specialized static GraphHost.currentHost.getter();
    swift_weakInit();
    swift_weakAssign();

    v27 = AGCreateWeakAttribute();
    v28 = v23 + 16;
    v29 = v72;
    v72 = *(v23 + 16);
    v72(v25, v29, v22);
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v16, v27);
    swift_endAccess();
    v60 = v19;
    v30 = (*(v19 + 48))(v16, 1, v18);
    v63 = v23;
    v61 = v18;
    if (v30 == 1)
    {
      v31 = v23;
      v32 = v74;
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v16, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
    }

    else
    {
      v32 = v74;
      outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v16, v21);
      v33 = *&v21[*(v18 + 48)];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = *v25;
      *v25 = 0x8000000000000000;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v33, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v76);

      *v25 = v76[0];

      specialized ObservationGraphMutation.cancel()(*(v21 + 2), *(v21 + 3), v35);
      outlined destroy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v21);
      v31 = v63;
    }

    v70 = v25;
    v71 = v22;
    v36 = v64;
    v72(v64, v25, v22);
    (*(v31 + 56))(v36, 0, 1, v22);
    v37 = v75;
    ObservationTracking.init(_:)();
    v38 = swift_allocObject();
    v74 = v28;
    v39 = v38;
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v27;
    v58 = HIDWORD(v27);

    v41 = v59;
    v42 = AGSubgraphAddObserver();

    v43 = MEMORY[0x1E69E6F90];
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObservationTracking>, MEMORY[0x1E69E81D8], MEMORY[0x1E69E6F90]);
    v44 = v69;
    v45 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v46 = swift_allocObject();
    v67 = xmmword_18DDA6EB0;
    *(v46 + 16) = xmmword_18DDA6EB0;
    (*(v44 + 16))(v46 + v45, v37, v73);
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AGSubgraphRef, Int)>, type metadata accessor for (AGSubgraphRef, Int), v43);
    v47 = swift_allocObject();
    *(v47 + 16) = v67;
    *(v47 + 32) = v41;
    *(v47 + 40) = v42;
    v48 = v61;
    v49 = *(v61 + 48);
    v50 = v66;
    *v66 = v32;
    v50[1] = v27;
    v50[2] = v46;
    v50[3] = v47;
    v72(v50 + v49, v70, v71);
    (*(v60 + 56))(v50, 0, 1, v48);
    swift_beginAccess();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v51 = v41;
    specialized Dictionary.subscript.setter(v50, v27);
    swift_endAccess();
    _s11Observation0A8TrackingV11_AccessListVSgWOcTm_0(v77, v76, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v32;
    v53 = v58;
    *(v52 + 32) = v27;
    *(v52 + 36) = v53;
    *(v52 + 40) = v46;
    *(v52 + 48) = v47;
    *(v52 + 56) = v27;
    *(v52 + 60) = v53;
    outlined init with take of ObservationTracking._AccessList?(v76, v52 + 64, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    v54 = v51;

    v55 = v54;
    v56 = v75;
    MEMORY[0x193ABDEB0](v75, v62, v52, 0, 0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v44 + 8))(v56, v73);
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v77, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    return (*(v63 + 8))(v70, v71);
  }

  return result;
}

uint64_t specialized GeometryActionBinder.reset(seed:)(int *a1)
{
  v2 = v1;
  *(v1 + a1[17]) = *AGGraphGetValue() >> 1;
  v4 = v1 + a1[16];
  if (*(v4 + 12) << 32 != 0x200000000)
  {
    *(v4 + 4) = 0xFFFFFFFFLL;
    *(v4 + 12) = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ValueCycleDetector(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  ValueCycleDetector.reset()();
  v8 = a1[19];
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  v10 = *(*(AssociatedTypeWitness - 8) + 56);

  return v10(v2 + v8, 1, 1, AssociatedTypeWitness);
}

uint64_t partial apply for closure #1 in GeometryActionBinder.updateValue()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v6[2] = *(v3 + 32);
  v7 = *(v3 + 48);
  return (*(v2 + 24))(v6, v1);
}

uint64_t partial apply for closure #2 in GeometryActionBinder.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  return (*(v2 + 32))(v0 + ((v3 + v4 + v6) & ~v6), v0 + ((*(v5 + 64) + v6 + ((v3 + v4 + v6) & ~v6)) & ~v6), v1, v2);
}

uint64_t type metadata completion function for GeometryActionBinder(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for ValueCycleDetector(319, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for GeometryActionBinder(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  v9 = v7 | 3;
  v10 = ~v9;
  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  v12 = v7 <= 7u && (v7 & 0x100000) == 0;
  if (v12 && (v13 = v11 + v7, ((-5 - v7 - ((((((v7 + 28) & ~v9) + ((v7 + 9) & ~v7) + v11 + ((v13 + (v13 & ~v7)) & ~v7) + 19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL)) | v7) - v11 >= 0xFFFFFFFFFFFFFFE7))
  {
    v14 = AssociatedTypeWitness;
    v51 = ((v7 + 9) & ~v7) + v11 + ((v11 + v7 + ((v11 + v7) & ~v7)) & ~v7);
    v52 = a1;
    v15 = ~v7;
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v23;
    v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v24 = *v25;
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = ((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v26 = *v27;
    v50 = ((v27 + v9 + 4) & v10);
    v49 = ((v26 + v9 + 4) & v10);
    *v49 = *v50;
    v28 = (v49 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = (v50 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v28 = *v29;
    *(v28 + 4) = *(v29 + 4);
    v30 = ((v8 + 5 + v28) & ~v8);
    v31 = ((v8 + 5 + v29) & ~v8);
    v32 = *(v6 + 48);
    if (v32(v31, 1, AssociatedTypeWitness))
    {
      memcpy(v30, v31, v11);
    }

    else
    {
      (*(v6 + 16))(v30, v31, v14);
      (*(v6 + 56))(v30, 0, 1, v14);
    }

    v35 = ((v30 + v13) & v15);
    v36 = ((v31 + v13) & v15);
    if (v32(v36, 1, v14))
    {
      memcpy(v35, v36, v11);
    }

    else
    {
      (*(v6 + 16))(v35, v36, v14);
      (*(v6 + 56))(v35, 0, 1, v14);
    }

    v37 = &v35[v13];
    v38 = &v36[v13];
    if (v32((v38 & v15), 1, v14))
    {
      memcpy((v37 & v15), (v38 & v15), v11);
    }

    else
    {
      (*(v6 + 16))(v37 & v15, v38 & v15, v14);
      (*(v6 + 56))(v37 & v15, 0, 1, v14);
    }

    v39 = ((v49 + v51 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v40 = ((v50 + v51 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v41 = *v40;
    *(v39 + 5) = *(v40 + 5);
    *v39 = v41;
    v42 = ((v49 + v51 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    v43 = ((v50 + v51 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    *v42 = *v43;
    v44 = ((v42 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v45 = ((v43 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v44 = *v45;
    v46 = v44 + v8 + 4;
    v47 = v45 + v8 + 4;
    if (v32((v47 & v15), 1, v14))
    {
      memcpy((v46 & v15), (v47 & v15), v11);
    }

    else
    {
      (*(v6 + 16))(v46 & v15, v47 & v15, v14);
      (*(v6 + 56))(v46 & v15, 0, 1, v14);
    }

    return v52;
  }

  else
  {
    v33 = *a2;
    *a1 = *a2;
    v34 = v33 + ((v7 + 16) & v10);
  }

  return v34;
}

uint64_t destroy for GeometryActionBinder(uint64_t a1, uint64_t a2)
{
  v2 = (((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v2 + (v5 | 3) + 4) & ~(v5 | 3);
  v7 = ~v5;
  v8 = (v5 + ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v5;
  v16 = v4;
  v9 = *(v4 + 48);
  if (!v9(v8, 1, AssociatedTypeWitness))
  {
    (*(v16 + 8))(v8, AssociatedTypeWitness);
  }

  if (*(v16 + 84))
  {
    v10 = *(v16 + 64);
  }

  else
  {
    v10 = *(v16 + 64) + 1;
  }

  v11 = (v8 + v5 + v10) & v7;
  if (!v9(v11, 1, AssociatedTypeWitness))
  {
    (*(v16 + 8))(v11, AssociatedTypeWitness);
  }

  v12 = v10 + v5 + v11;
  if (!v9(v12 & v7, 1, AssociatedTypeWitness))
  {
    (*(v16 + 8))(v12 & v7, AssociatedTypeWitness);
  }

  v13 = v5 + ((((((v5 + 9) & v7) + v10 + v6 + ((v10 + v5 + ((v10 + v5) & v7)) & v7) + 19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  result = (v9)(v13 & v7, 1, AssociatedTypeWitness);
  if (!result)
  {
    v15 = *(v16 + 8);

    return v15(v13 & v7, AssociatedTypeWitness);
  }

  return result;
}

_DWORD *initializeWithCopy for GeometryActionBinder(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 80);
  v18 = *(v16 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v47 = ((v13 + v17 + 4) & v18);
  v48 = v17 + 4;
  v46 = ((v14 + v17 + 4) & v18);
  *v47 = *v46;
  v19 = (v47 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = (v46 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v19 = *v20;
  *(v19 + 4) = *(v20 + 4);
  v21 = ~v17;
  v22 = ((v17 + 5 + v19) & ~v17);
  v23 = ((v17 + 5 + v20) & ~v17);
  v24 = *(v16 + 48);
  if (v24(v23, 1, AssociatedTypeWitness))
  {
    v25 = *(v16 + 84);
    v26 = *(v16 + 64);
    if (v25)
    {
      v27 = *(v16 + 64);
    }

    else
    {
      v27 = v26 + 1;
    }

    memcpy(v22, v23, v27);
  }

  else
  {
    (*(v16 + 16))(v22, v23, AssociatedTypeWitness);
    (*(v16 + 56))(v22, 0, 1, AssociatedTypeWitness);
    v25 = *(v16 + 84);
    v26 = *(v16 + 64);
  }

  if (v25)
  {
    v28 = v26;
  }

  else
  {
    v28 = v26 + 1;
  }

  v29 = ((v22 + v17 + v28) & v21);
  v30 = ((v23 + v17 + v28) & v21);
  if (v24(v30, 1, AssociatedTypeWitness))
  {
    memcpy(v29, v30, v28);
  }

  else
  {
    (*(v16 + 16))(v29, v30, AssociatedTypeWitness);
    (*(v16 + 56))(v29, 0, 1, AssociatedTypeWitness);
  }

  v31 = &v29[v28 + v17];
  v32 = &v30[v28 + v17];
  if (v24((v32 & v21), 1, AssociatedTypeWitness))
  {
    memcpy((v31 & v21), (v32 & v21), v28);
  }

  else
  {
    (*(v16 + 16))(v31 & v21, v32 & v21, AssociatedTypeWitness);
    (*(v16 + 56))(v31 & v21, 0, 1, AssociatedTypeWitness);
  }

  v33 = v28 + ((v17 + 9) & v21) + ((v28 + v17 + ((v28 + v17) & v21)) & v21);
  v34 = v47 + v33;
  v35 = v46 + v33;
  v36 = ((v34 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v37 = ((v35 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v38 = *v37;
  *(v36 + 5) = *(v37 + 5);
  *v36 = v38;
  v39 = ((v34 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v40 = ((v35 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v39 = *v40;
  v41 = ((v39 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v42 = ((v40 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v41 = *v42;
  v43 = v41 + v48;
  v44 = v42 + v48;
  if (v24(((v42 + v48) & v21), 1, AssociatedTypeWitness))
  {
    memcpy((v43 & v21), (v44 & v21), v28);
  }

  else
  {
    (*(v16 + 16))(v43 & v21, v44 & v21, AssociatedTypeWitness);
    (*(v16 + 56))(v43 & v21, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithCopy for GeometryActionBinder(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 80);
  v18 = *(v16 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v54 = ((v13 + v17 + 4) & v18);
  v55 = v17 + 4;
  v53 = ((v14 + v17 + 4) & v18);
  *v54 = *v53;
  v19 = (v54 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = (v53 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v19 = *v20;
  *(v19 + 4) = *(v20 + 4);
  v21 = ~v17;
  v22 = ((v17 + 5 + v19) & ~v17);
  v23 = ((v17 + 5 + v20) & ~v17);
  v24 = *(v16 + 48);
  LODWORD(v14) = v24(v22, 1, AssociatedTypeWitness);
  v25 = v24(v23, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v25)
    {
      (*(v16 + 16))(v22, v23, AssociatedTypeWitness);
      (*(v16 + 56))(v22, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v26 = *(v16 + 84);
    v27 = *(v16 + 64);
  }

  else
  {
    if (!v25)
    {
      (*(v16 + 24))(v22, v23, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v16 + 8))(v22, AssociatedTypeWitness);
    v26 = *(v16 + 84);
    v27 = *(v16 + 64);
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  memcpy(v22, v23, v28);
LABEL_12:
  if (*(v16 + 84))
  {
    v29 = *(v16 + 64);
  }

  else
  {
    v29 = *(v16 + 64) + 1;
  }

  v30 = ((v22 + v17 + v29) & v21);
  v31 = ((v23 + v17 + v29) & v21);
  v32 = v24(v30, 1, AssociatedTypeWitness);
  v33 = v24(v31, 1, AssociatedTypeWitness);
  v57 = v16;
  if (v32)
  {
    if (!v33)
    {
      (*(v16 + 16))(v30, v31, AssociatedTypeWitness);
      (*(v16 + 56))(v30, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v33)
  {
    (*(v16 + 8))(v30, AssociatedTypeWitness);
LABEL_20:
    memcpy(v30, v31, v29);
    goto LABEL_21;
  }

  (*(v16 + 24))(v30, v31, AssociatedTypeWitness);
LABEL_21:
  v34 = &v30[v29 + v17];
  v35 = &v31[v29 + v17];
  v36 = v24((v34 & v21), 1, AssociatedTypeWitness);
  v37 = v24((v35 & v21), 1, AssociatedTypeWitness);
  if (v36)
  {
    if (!v37)
    {
      (*(v57 + 16))(v34 & v21, v35 & v21, AssociatedTypeWitness);
      (*(v57 + 56))(v34 & v21, 0, 1, AssociatedTypeWitness);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v37)
  {
    (*(v57 + 8))(v34 & v21, AssociatedTypeWitness);
LABEL_26:
    memcpy((v34 & v21), (v35 & v21), v29);
    goto LABEL_27;
  }

  (*(v57 + 24))(v34 & v21, v35 & v21, AssociatedTypeWitness);
LABEL_27:
  v38 = v29 + ((v17 + 9) & v21) + ((v29 + v17 + ((v29 + v17) & v21)) & v21);
  v39 = v54 + v38;
  v40 = v53 + v38;
  v41 = ((v39 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v42 = ((v40 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v43 = *v42;
  *(v41 + 5) = *(v42 + 5);
  *v41 = v43;
  v44 = ((v39 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v45 = ((v40 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v44 = *v45;
  v46 = ((v44 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v47 = ((v45 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v46 = *v47;
  v48 = v46 + v55;
  v49 = v47 + v55;
  v50 = v24(((v46 + v55) & v21), 1, AssociatedTypeWitness);
  v51 = v24((v49 & v21), 1, AssociatedTypeWitness);
  if (!v50)
  {
    if (!v51)
    {
      (*(v57 + 24))(v48 & v21, v49 & v21, AssociatedTypeWitness);
      return a1;
    }

    (*(v57 + 8))(v48 & v21, AssociatedTypeWitness);
    goto LABEL_32;
  }

  if (v51)
  {
LABEL_32:
    memcpy((v48 & v21), (v49 & v21), v29);
    return a1;
  }

  (*(v57 + 16))(v48 & v21, v49 & v21, AssociatedTypeWitness);
  (*(v57 + 56))(v48 & v21, 0, 1, AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for GeometryActionBinder(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 80);
  v18 = *(v16 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v47 = ((v13 + v17 + 4) & v18);
  v48 = v17 + 4;
  v46 = ((v14 + v17 + 4) & v18);
  *v47 = *v46;
  v19 = (v47 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = (v46 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v19 = *v20;
  *(v19 + 4) = *(v20 + 4);
  v21 = ~v17;
  v22 = ((v17 + 5 + v19) & ~v17);
  v23 = ((v17 + 5 + v20) & ~v17);
  v24 = *(v16 + 48);
  if (v24(v23, 1, AssociatedTypeWitness))
  {
    v25 = *(v16 + 84);
    v26 = *(v16 + 64);
    if (v25)
    {
      v27 = *(v16 + 64);
    }

    else
    {
      v27 = v26 + 1;
    }

    memcpy(v22, v23, v27);
  }

  else
  {
    (*(v16 + 32))(v22, v23, AssociatedTypeWitness);
    (*(v16 + 56))(v22, 0, 1, AssociatedTypeWitness);
    v25 = *(v16 + 84);
    v26 = *(v16 + 64);
  }

  if (v25)
  {
    v28 = v26;
  }

  else
  {
    v28 = v26 + 1;
  }

  v29 = ((v22 + v17 + v28) & v21);
  v30 = ((v23 + v17 + v28) & v21);
  if (v24(v30, 1, AssociatedTypeWitness))
  {
    memcpy(v29, v30, v28);
  }

  else
  {
    (*(v16 + 32))(v29, v30, AssociatedTypeWitness);
    (*(v16 + 56))(v29, 0, 1, AssociatedTypeWitness);
  }

  v31 = &v29[v28 + v17];
  v32 = &v30[v28 + v17];
  if (v24((v32 & v21), 1, AssociatedTypeWitness))
  {
    memcpy((v31 & v21), (v32 & v21), v28);
  }

  else
  {
    (*(v16 + 32))(v31 & v21, v32 & v21, AssociatedTypeWitness);
    (*(v16 + 56))(v31 & v21, 0, 1, AssociatedTypeWitness);
  }

  v33 = v28 + ((v17 + 9) & v21) + ((v28 + v17 + ((v28 + v17) & v21)) & v21);
  v34 = v47 + v33;
  v35 = v46 + v33;
  v36 = ((v34 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v37 = ((v35 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v38 = *v37;
  *(v36 + 5) = *(v37 + 5);
  *v36 = v38;
  v39 = ((v34 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v40 = ((v35 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v39 = *v40;
  v41 = ((v39 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v42 = ((v40 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v41 = *v42;
  v43 = v41 + v48;
  v44 = v42 + v48;
  if (v24(((v42 + v48) & v21), 1, AssociatedTypeWitness))
  {
    memcpy((v43 & v21), (v44 & v21), v28);
  }

  else
  {
    (*(v16 + 32))(v43 & v21, v44 & v21, AssociatedTypeWitness);
    (*(v16 + 56))(v43 & v21, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithTake for GeometryActionBinder(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 80);
  v18 = *(v16 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v54 = ((v13 + v17 + 4) & v18);
  v55 = v17 + 4;
  v53 = ((v14 + v17 + 4) & v18);
  *v54 = *v53;
  v19 = (v54 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = (v53 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v19 = *v20;
  *(v19 + 4) = *(v20 + 4);
  v21 = ~v17;
  v22 = ((v17 + 5 + v19) & ~v17);
  v23 = ((v17 + 5 + v20) & ~v17);
  v24 = *(v16 + 48);
  LODWORD(v14) = v24(v22, 1, AssociatedTypeWitness);
  v25 = v24(v23, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v25)
    {
      (*(v16 + 32))(v22, v23, AssociatedTypeWitness);
      (*(v16 + 56))(v22, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v26 = *(v16 + 84);
    v27 = *(v16 + 64);
  }

  else
  {
    if (!v25)
    {
      (*(v16 + 40))(v22, v23, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v16 + 8))(v22, AssociatedTypeWitness);
    v26 = *(v16 + 84);
    v27 = *(v16 + 64);
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  memcpy(v22, v23, v28);
LABEL_12:
  if (*(v16 + 84))
  {
    v29 = *(v16 + 64);
  }

  else
  {
    v29 = *(v16 + 64) + 1;
  }

  v30 = ((v22 + v17 + v29) & v21);
  v31 = ((v23 + v17 + v29) & v21);
  v32 = v24(v30, 1, AssociatedTypeWitness);
  v33 = v24(v31, 1, AssociatedTypeWitness);
  v57 = v16;
  if (v32)
  {
    if (!v33)
    {
      (*(v16 + 32))(v30, v31, AssociatedTypeWitness);
      (*(v16 + 56))(v30, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v33)
  {
    (*(v16 + 8))(v30, AssociatedTypeWitness);
LABEL_20:
    memcpy(v30, v31, v29);
    goto LABEL_21;
  }

  (*(v16 + 40))(v30, v31, AssociatedTypeWitness);
LABEL_21:
  v34 = &v30[v29 + v17];
  v35 = &v31[v29 + v17];
  v36 = v24((v34 & v21), 1, AssociatedTypeWitness);
  v37 = v24((v35 & v21), 1, AssociatedTypeWitness);
  if (v36)
  {
    if (!v37)
    {
      (*(v57 + 32))(v34 & v21, v35 & v21, AssociatedTypeWitness);
      (*(v57 + 56))(v34 & v21, 0, 1, AssociatedTypeWitness);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v37)
  {
    (*(v57 + 8))(v34 & v21, AssociatedTypeWitness);
LABEL_26:
    memcpy((v34 & v21), (v35 & v21), v29);
    goto LABEL_27;
  }

  (*(v57 + 40))(v34 & v21, v35 & v21, AssociatedTypeWitness);
LABEL_27:
  v38 = v29 + ((v17 + 9) & v21) + ((v29 + v17 + ((v29 + v17) & v21)) & v21);
  v39 = v54 + v38;
  v40 = v53 + v38;
  v41 = ((v39 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v42 = ((v40 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v43 = *v42;
  *(v41 + 5) = *(v42 + 5);
  *v41 = v43;
  v44 = ((v39 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v45 = ((v40 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v44 = *v45;
  v46 = ((v44 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v47 = ((v45 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v46 = *v47;
  v48 = v46 + v55;
  v49 = v47 + v55;
  v50 = v24(((v46 + v55) & v21), 1, AssociatedTypeWitness);
  v51 = v24((v49 & v21), 1, AssociatedTypeWitness);
  if (!v50)
  {
    if (!v51)
    {
      (*(v57 + 40))(v48 & v21, v49 & v21, AssociatedTypeWitness);
      return a1;
    }

    (*(v57 + 8))(v48 & v21, AssociatedTypeWitness);
    goto LABEL_32;
  }

  if (v51)
  {
LABEL_32:
    memcpy((v48 & v21), (v49 & v21), v29);
    return a1;
  }

  (*(v57 + 32))(v48 & v21, v49 & v21, AssociatedTypeWitness);
  (*(v57 + 56))(v48 & v21, 0, 1, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for GeometryActionBinder(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 3;
  if (a2 > v9)
  {
    v14 = ((v10 + ((((v12 - (((-10 - v10) | v10) + ((-29 - v10) | v13)) + ((v12 + v10 + ((v12 + v10) & ~v10)) & ~v10) + 17) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4) & ~v10) + v12;
    v15 = 8 * v14;
    if (v14 > 3)
    {
      goto LABEL_13;
    }

    v17 = ((a2 - v9 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v17 >= 2)
    {
LABEL_13:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_33;
      }

LABEL_20:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v14)
      {
        if (v14 <= 3)
        {
          v19 = v14;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      else
      {
        v20 = 0;
      }

      v25 = v9 + (v20 | v18);
      return (v25 + 1);
    }
  }

LABEL_33:
  v21 = (((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v13 + 4) & ~v13) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v8 <= 0xFE)
  {
    v22 = *(v21 + 4);
    if (v22 < 2)
    {
      return 0;
    }

    v25 = (v22 + 2147483646) & 0x7FFFFFFF;
    return (v25 + 1);
  }

  v24 = (*(v6 + 48))((v10 + v21 + 5) & ~v10);
  if (v24 >= 2)
  {
    return v24 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for GeometryActionBinder(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  v14 = v11 | 3;
  if (!v9)
  {
    ++v12;
  }

  v15 = ((v12 + v11 + ((v12 + v11) & ~v11)) & ~v11) + v12;
  v16 = ((v11 + ((((v15 - (((-10 - v11) | v11) + ((-29 - v11) | v14)) + 17) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4) & ~v11) + v12;
  if (a3 <= v13)
  {
    goto LABEL_19;
  }

  if (v16 <= 3)
  {
    v17 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v17))
    {
      v7 = 4;
      if (v13 >= a2)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v7 = v18;
    }

    else
    {
      v7 = 0;
    }

LABEL_19:
    if (v13 >= a2)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v7 = 1;
  if (v13 >= a2)
  {
LABEL_29:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      *&a1[v16] = 0;
    }

    else if (v7)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_36:
      v22 = (((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v14 + 4) & ~v14) + 7) & 0xFFFFFFFFFFFFFFFCLL;
      if (v10 > 0xFE)
      {
        v23 = ((v11 + v22 + 5) & ~v11);
        if (v10 >= a2)
        {
          v27 = *(v8 + 56);

          v27((v11 + v22 + 5) & ~v11, a2 + 1);
        }

        else
        {
          if (v15 <= 3)
          {
            v24 = ~(-1 << (8 * v15));
          }

          else
          {
            v24 = -1;
          }

          if (v15)
          {
            v25 = v24 & (~v10 + a2);
            if (v15 <= 3)
            {
              v26 = v15;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v15);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      else
      {
        *(v22 + 4) = a2 + 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_20:
  v19 = ~v13 + a2;
  if (v16 >= 4)
  {
    bzero(a1, v16);
    *a1 = v19;
    v20 = 1;
    if (v7 > 1)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v20 = (v19 >> (8 * v16)) + 1;
  if (!v16)
  {
LABEL_55:
    if (v7 > 1)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v21 = v19 & ~(-1 << (8 * v16));
  bzero(a1, v16);
  if (v16 == 3)
  {
    *a1 = v21;
    a1[2] = BYTE2(v21);
    goto LABEL_55;
  }

  if (v16 == 2)
  {
    *a1 = v21;
    if (v7 > 1)
    {
LABEL_59:
      if (v7 == 2)
      {
        *&a1[v16] = v20;
      }

      else
      {
        *&a1[v16] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v7 > 1)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v7)
  {
    a1[v16] = v20;
  }
}

double get_witness_table_7SwiftUI4ViewRzSQRd__s8SendableRd__r__lAA15ModifiedContentVyxAA23_GeometryActionModifierVyqd__GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void *assignWithCopy for _GeometryActionModifier(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

_OWORD *assignWithTake for _GeometryActionModifier(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t objectdestroy_32Tm()
{

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t _GraphInputs.redactionReasons.getter()
{
  if (one-time initialization token for redactionReasons != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.redactionReasons;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.redactionReasons.getter, 0);
  swift_endAccess();
  return v1;
}

void *EnvironmentValues.unredactSymbolImage.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

void key path getter for EnvironmentValues.unredactSymbolImage : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
}

double key path setter for EnvironmentValues.unredactSymbolImage : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA19UnredactSymbolImageVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.unredactSymbolImage.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA19UnredactSymbolImageVG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.unredactSymbolImage.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.unredactSymbolImage.modify;
}

void EnvironmentValues.unredactSymbolImage.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA19UnredactSymbolImageVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t EnvironmentValues.shouldRedactSymbolImages.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    ShouldRedactSymbolImagesJ0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA024ShouldRedactSymbolImagesJ0VG_Tt1g5(v1);

    return ShouldRedactSymbolImagesJ0VG_Tt1g5 & 1;
  }

  else
  {
    v4 = *v0;

    return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(v4);
  }
}

uint64_t one-time initialization function for redactionReasons(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.redactionReasons = result;
  return result;
}

void GraphicsImage.redact(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    swift_once();
  }

  v8[0] = v2;
  v8[1] = v3;
  (*(*static Color.foreground + 120))(&v9, v8);
  v5 = v12;
  v6 = v10;
  v7 = v11 * 0.16;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;
  *(v4 + 28) = v7;
  *(v4 + 32) = v5;
  outlined consume of GraphicsImage.Contents?(*v1, *(v1 + 8));
  *v1 = v4;
  *(v1 + 8) = 4;
}

uint64_t one-time initialization function for redacted()
{
  type metadata accessor for ImageProviderBox<Image.RedactedImageProvider>(0);
  result = swift_allocObject();
  static Image.redacted = result;
  return result;
}

double static Image.redacted.getter()
{
  if (one-time initialization token for redacted != -1)
  {
    swift_once();
  }

  return result;
}

__n128 Image.RedactedImageProvider.resolve(in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    swift_once();
  }

  *&v43[0] = v3;
  *(&v43[0] + 1) = v4;
  (*(*static Color.foreground + 120))(&v39, v43);
  v6 = v42;
  v7 = v40;
  v8 = v41 * 0.16;
  *(v5 + 16) = v39;
  *(v5 + 24) = v7;
  *(v5 + 28) = v8;
  *(v5 + 32) = v6;
  if (one-time initialization token for resizable != -1)
  {
    swift_once();
  }

  v9 = byte_1EAB12468;
  v27 = unk_1EAB12458;
  v28 = static Image.ResizingInfo.resizable;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  LOBYTE(v30) = 1;
  *&v43[0] = v5;
  BYTE8(v43[0]) = 4;
  __asm { FMOV            V0.2D, #1.0 }

  v43[1] = _Q0;
  *v44 = 0x3FF0000000000000;
  v44[8] = 0;
  v45 = 0;
  *&v44[12] = 0;
  v46 = 0;
  v47[0] = 1;
  *&v47[24] = v27;
  *&v47[8] = v28;
  v47[40] = v9;
  *&v47[41] = 257;
  v47[43] = 0;
  v34 = _Q0;
  v35 = *v44;
  v33 = v43[0];
  *(v38 + 12) = *&v47[28];
  v37 = *v47;
  v38[0] = *&v47[16];
  v36 = 0u;
  outlined init with copy of GraphicsImage(v43, &v30);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  if (BYTE8(v43[0]) == 2)
  {
    v17 = *(*&v43[0] + 32);
    v18 = *(*&v43[0] + 48);
    v19 = *(*&v43[0] + 16);
    outlined copy of Image.Location(v17);
    v20 = v18;
    outlined copy of Image.Location(v17);
    v29 = v17;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v19 styleMask], &v29, &v30);

    outlined consume of Image.Location(v17);
    outlined destroy of GraphicsImage(v43);
    v21 = v30;
    v16 = v31;
    v15 = v32 & 0xFD;
  }

  else
  {
    if (BYTE8(v43[0]) == 255)
    {
      outlined destroy of GraphicsImage(v43);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v16 = (v47[0] & 1) == 0;
      outlined destroy of GraphicsImage(v43);
      v15 = 0;
    }

    v21 = 0;
  }

  result = v36;
  v23 = v38[0];
  v24 = v38[1];
  *(a2 + 64) = v37;
  *(a2 + 80) = v23;
  *(a2 + 96) = v24;
  v25 = v34;
  v26 = v35;
  *a2 = v33;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  *(a2 + 48) = result;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0x1FFFFFFFELL;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 769;
  *(a2 + 164) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v21;
  *(a2 + 184) = v16;
  *(a2 + 186) = v15;
  return result;
}

void type metadata accessor for ImageProviderBox<Image.RedactedImageProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.RedactedImageProvider>)
  {
    lazy protocol witness table accessor for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider();
    v4 = type metadata accessor for ImageProviderBox(a1, &unk_1F00700D0, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ImageProviderBox<Image.RedactedImageProvider>);
    }
  }
}

void lazy protocol witness table accessor for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider()
{
  if (!lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.RedactedImageProvider, &unk_1F00700D0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.RedactedImageProvider, &unk_1F00700D0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider);
  }
}

uint64_t static SemanticFeature.prior.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = v2 != 0;
  result = (v2 - 1);
  if (!v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for introduced(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v5 = a4;
    v6 = a3;
    result = swift_once();
    a3 = v6;
    a4 = v5;
  }

  *a4 = *a3;
  return result;
}

void instantiation function for generic protocol witness table for _SemanticFeature<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _SemanticFeature<A>);
  *(a1 + 8) = v2;
}

{
  swift_getWitnessTable(protocol conformance descriptor for _SemanticFeature<A>);
  *(a1 + 8) = v2;
}

{
  swift_getWitnessTable(protocol conformance descriptor for _SemanticFeature<A>);
  *(a1 + 16) = v2;
}

uint64_t protocol witness for static SemanticFeature.introduced.getter in conformance Semantics.DismissPopsInNavigationSplitViewRoots(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

uint64_t static WindowDragGestureIsActiveKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

uint64_t specialized Comparable.clamp(min:max:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  LODWORD(v4) = a3;
  result = specialized Collection<>.firstIndex(of:)(a3, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= result)
  {
    v4 = v4;
  }

  else
  {
    v4 = a1;
  }

  result = specialized Collection<>.firstIndex(of:)(a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v12)
  {
    goto LABEL_14;
  }

  v13 = result;
  result = specialized Collection<>.firstIndex(of:)(v4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v14)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v13 >= result)
  {
    v15 = v4;
  }

  else
  {
    v15 = a2;
  }

  *a4 = v15;
  return result;
}

int *specialized Collection<>.subscript.getter@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 12);
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[2];
  if (v3 >= v5)
  {
    v6 = *(v2 + 8);
    *(a2 + 16) = *v2;
    *(a2 + 24) = v6;
    *(a2 + 28) = v3;
    v7 = result[1];
    v8 = result[3];
    *a2 = v4;
    *(a2 + 4) = v7;
    *(a2 + 8) = v5;
    *(a2 + 12) = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void specialized Collection<>.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v3;
  v7 = _HashTable.startBucket.getter();
  v8 = 1 << *(v6 + 32);
  if (v8 < v7)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(v6 + 36);
  if (*(a1 + 2) != v10)
  {
    goto LABEL_12;
  }

  v11 = *a1;
  if (*a1 < v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v10 != *(a1 + 8))
  {
    goto LABEL_14;
  }

  v13 = a1[3];
  if (v8 < v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = *(a1 + 3);
  v15 = *(a1 + 9);
  *(a2 + 48) = v6;
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 12) = v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v13;
  *(a2 + 32) = v10;
  *(a2 + 36) = v15;
  *(a2 + 40) = v12;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (result > 0xBFFu)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  result = specialized Collection<>.firstIndex(of:)(4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v5)
  {
    goto LABEL_14;
  }

  v6 = result;
  result = specialized Collection<>.firstIndex(of:)(0, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  result = specialized Collection<>.firstIndex(of:)(0, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 < result)
  {
    goto LABEL_12;
  }

  result = specialized Collection<>.firstIndex(of:)(4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  result = specialized Collection<>.firstIndex(of:)(BYTE1(a1), &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if ((v13 & 1) == 0)
  {
    if (v12 >= result)
    {
      *a2 = a1;
      return result;
    }

    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void specialized Collection<>.subscript.getter(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a2 & 1) == 0 && a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 32) = a5;
    *a6 = a1;
    *(a6 + 8) = a2 & 1;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4 & 1;
  }
}

uint64_t specialized Collection.index(_:offsetBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      result = asc_1F0043DA7[2];
      do
      {
        if (byte_1F0043DA0 == v3)
        {
          v4 = 0;
        }

        else if (byte_1F0043DA1 == v3)
        {
          v4 = 1;
        }

        else if (byte_1F0043DA2 == v3)
        {
          v4 = 2;
        }

        else if (byte_1F0043DA3 == v3)
        {
          v4 = 3;
        }

        else if (byte_1F0043DA4 == v3)
        {
          v4 = 4;
        }

        else if (byte_1F0043DA5 == v3)
        {
          v4 = 5;
        }

        else if (byte_1F0043DA6 == v3)
        {
          v4 = 6;
        }

        else if (asc_1F0043DA7[0] == v3)
        {
          v4 = 7;
        }

        else if (asc_1F0043DA7[1] == v3)
        {
          v4 = 8;
        }

        else if (asc_1F0043DA7[2] == v3)
        {
          v4 = 9;
        }

        else if (asc_1F0043DA7[3] == v3)
        {
          v4 = 10;
        }

        else
        {
          if (asc_1F0043DA7[4] != v3)
          {
            goto LABEL_33;
          }

          v4 = 11;
        }

        if (v4 >= 0xA)
        {
          v4 = 10;
        }

        v3 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v4 + 33);
        --a2;
      }

      while (a2);
    }

    *a3 = v3;
  }

  return result;
}

{
  if (a2 < 0)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  if (!a2)
  {
    goto LABEL_14;
  }

  while (byte_1F0043E20 == v3)
  {
    v4 = 1u;
LABEL_5:
    v3 = *(&outlined read-only object #1 of specialized Collection.index(_:offsetBy:) + v4 + 32);
    if (!--a2)
    {
      goto LABEL_14;
    }
  }

  if (byte_1F0043E21 == v3)
  {
    v4 = 2u;
    goto LABEL_5;
  }

  if (byte_1F0043E22 == v3)
  {
    v4 = 3u;
    goto LABEL_5;
  }

  v4 = 4u;
  if (byte_1F0043E23 == v3 || byte_1F0043E24 == v3)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_14:
  *a3 = v3;
  return result;
}

unint64_t specialized Collection.index(_:offsetBy:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = HIDWORD(result);
  if (!a2)
  {
    *a5 = result;
    return result;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v6 = HIDWORD(a4);
  for (i = 1; !(result - HIDWORD(a4) + i); ++i)
  {
    LODWORD(v5) = 0;
    if (i >= a2)
    {
      goto LABEL_10;
    }

LABEL_6:
    ;
  }

  LODWORD(v5) = *(a3 + 8 + v5) + v5;
  if (i < a2)
  {
    goto LABEL_6;
  }

  LODWORD(v6) = result + i;
LABEL_10:
  *a5 = v6;
  *(a5 + 4) = v5;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6, char a7)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v13 = result;
    outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
    if (!a4)
    {
      return v13;
    }

    v15 = 0;
    v16 = a3 | a7;
    result = v13;
    v17 = a2;
    while ((v16 & 1) == 0)
    {
      if (v17 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v19 = *v7;
      v20 = 1 << *(*v7 + 32);
      if (result >= v20)
      {
        goto LABEL_23;
      }

      v21 = result >> 6;
      v22 = *(v19 + 64 + 8 * (result >> 6));
      if (((v22 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(v19 + 36) != a6)
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (result & 0x3F));
      if (v23)
      {
        result = __clz(__rbit64(v23)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v21 << 6;
        v25 = v21 + 1;
        v26 = (v19 + 8 * v21 + 72);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v17, 0);
            result = __clz(__rbit64(v27)) + v24;
            goto LABEL_5;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v17, 0);
        result = v20;
      }

LABEL_5:
      v17 = a6;
      v16 = a7;
      if (v15++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

unsigned int *specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v5 = result[1];
    if (a2)
    {
      v7 = a3[1];
      if (v6 != *a3 || v5 != v7)
      {
        if (*v4)
        {
          v9 = *(v4 + 12);
          v10 = 1;
          while (1)
          {
            if (v6 - v9 + v10)
            {
              v5 = (*(*v4 + 8 + v5) + v5);
              if (v10 >= a2)
              {
                v9 = v6 + v10;
                goto LABEL_17;
              }
            }

            else
            {
              v5 = 0;
              if (v10 >= a2)
              {
                goto LABEL_17;
              }
            }

            v11 = v6 - *a3 + v10++;
            if (!v11 && v5 == v7)
            {
              goto LABEL_15;
            }
          }
        }

        goto LABEL_20;
      }

LABEL_15:
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v9 = *result;
LABEL_17:
      v13 = 0;
      v12 = v9 | (v5 << 32);
    }

    *a4 = v12;
    *(a4 + 8) = v13;
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, _BYTE *a4@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      result = asc_1F0043DA7[1];
      while (v4 != a3)
      {
        if (byte_1F0043DA0 == v4)
        {
          v5 = 0;
        }

        else if (byte_1F0043DA1 == v4)
        {
          v5 = 1;
        }

        else if (byte_1F0043DA2 == v4)
        {
          v5 = 2;
        }

        else if (byte_1F0043DA3 == v4)
        {
          v5 = 3;
        }

        else if (byte_1F0043DA4 == v4)
        {
          v5 = 4;
        }

        else if (byte_1F0043DA5 == v4)
        {
          v5 = 5;
        }

        else if (byte_1F0043DA6 == v4)
        {
          v5 = 6;
        }

        else if (asc_1F0043DA7[0] == v4)
        {
          v5 = 7;
        }

        else if (asc_1F0043DA7[1] == v4)
        {
          v5 = 8;
        }

        else if (asc_1F0043DA7[2] == v4)
        {
          v5 = 9;
        }

        else if (asc_1F0043DA7[3] == v4)
        {
          v5 = 10;
        }

        else
        {
          if (asc_1F0043DA7[4] != v4)
          {
            goto LABEL_35;
          }

          v5 = 11;
        }

        if (v5 >= 0xA)
        {
          v5 = 10;
        }

        v4 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v5 + 33);
        if (!--a2)
        {
          goto LABEL_32;
        }
      }

      *a4 = 12;
    }

    else
    {
LABEL_32:
      *a4 = v4;
    }
  }

  return result;
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      while (v4 != a3)
      {
        if (byte_1F0043E70 == v4)
        {
          v5 = 1u;
        }

        else if (byte_1F0043E71 == v4)
        {
          v5 = 2u;
        }

        else if (byte_1F0043E72 == v4)
        {
          v5 = 3u;
        }

        else
        {
          v5 = 4u;
          if (byte_1F0043E73 != v4 && byte_1F0043E74 != v4)
          {
            __break(1u);
            goto LABEL_15;
          }
        }

        v4 = *(&outlined read-only object #1 of specialized Collection.index(_:offsetBy:limitedBy:) + v5 + 32);
        if (!--a2)
        {
          goto LABEL_15;
        }
      }

      *a4 = 5;
    }

    else
    {
LABEL_15:
      *a4 = v4;
    }
  }

  return result;
}

uint64_t *specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = *result;
  if (a2)
  {
    v5 = *a3;
    v6 = v4 + a2;
    while (!__OFSUB__(v5, v4))
    {
      v7 = v5 == v4;
      if (v5 == v4)
      {
        v4 = 0;
        goto LABEL_11;
      }

      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }

      ++v4;
      if (!--a2)
      {
        v4 = v6;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = 0;
LABEL_11:
  *a4 = v4;
  *(a4 + 8) = v7;
  return result;
}

unint64_t specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = HIDWORD(result);
  if (!a2)
  {
    goto LABEL_15;
  }

  if (result == a3 && v6 == HIDWORD(a3))
  {
LABEL_13:
    v9 = 0;
    v10 = 1;
    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v7 = 1;
  while (result - HIDWORD(a5) + v7)
  {
    v6 = (*(a4 + 8 + v6) + v6);
    if (v7 >= a2)
    {
      result = (result + v7);
      goto LABEL_15;
    }

LABEL_11:
    v8 = result - a3 + v7++;
    if (!v8 && v6 == HIDWORD(a3))
    {
      goto LABEL_13;
    }
  }

  v6 = 0;
  if (v7 < a2)
  {
    goto LABEL_11;
  }

  result = HIDWORD(a5);
LABEL_15:
  v10 = 0;
  v9 = result | (v6 << 32);
LABEL_16:
  *a6 = v9;
  *(a6 + 8) = v10;
  return result;
}

int64_t specialized Collection.distance(from:to:)(int64_t result, uint64_t a2, char a3, int64_t a4, unsigned int a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_32;
  }

  if (a4 < result)
  {
    goto LABEL_30;
  }

  v9 = a2;
  if (a5 != a2)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = *v6;
    v10 = 1;
    while ((result & 0x8000000000000000) == 0)
    {
      v12 = 1 << *(v11 + 32);
      if (result >= v12)
      {
        break;
      }

      v13 = result >> 6;
      v14 = *(v11 + 64 + 8 * (result >> 6));
      if (((v14 >> result) & 1) == 0)
      {
        goto LABEL_27;
      }

      if (*(v11 + 36) != v9)
      {
        goto LABEL_28;
      }

      v15 = v14 & (-2 << (result & 0x3F));
      if (v15)
      {
        result = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
        if (v9 != a5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (v11 + 72 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v9, 0);
            result = __clz(__rbit64(v19)) + v16;
            goto LABEL_21;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v9, 0);
        result = v12;
LABEL_21:
        if (v9 != a5)
        {
          goto LABEL_29;
        }
      }

      if (result == a4)
      {
        return v10;
      }

      v9 = a5;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return 0;
}

unint64_t specialized Collection.distance(from:to:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = HIDWORD(a2);
  v5 = HIDWORD(result);
  v6 = a2 - result;
  if (a2 == result && v5 == v4)
  {
    return 0;
  }

  if (a3)
  {
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = HIDWORD(a4) == a2;
    }

    v8 = v7;
    v9 = HIDWORD(a4) - result;
    result = 1;
    do
    {
      if (v9 == result)
      {
        if (v8)
        {
          return result;
        }

        LODWORD(v5) = 0;
      }

      else
      {
        LODWORD(v5) = *(a3 + 8 + v5) + v5;
        if (v6 == result && v5 == HIDWORD(a2))
        {
          return result;
        }
      }
    }

    while (!__OFADD__(result++, 1));
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::Int ControlSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static ControlSize.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  result = specialized Collection<>.firstIndex(of:)(*a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  result = specialized Collection<>.firstIndex(of:)(*a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*EnvironmentValues.controlSize.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v7 = v3;
  *a1 = v3;
  v3[2] = v1;
  v8 = *v1;
  v3[3] = *v1;
  v9 = *(v1 + 8);
  v3[4] = v9;
  if (v9)
  {

    v10 = &v16;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v8, &v16);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>(0, v4, v5, v6);
    BloomFilter.init(hashValue:)(v11);
    v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v8, v15);
    if (!v12)
    {
LABEL_9:
      v13 = 2;
      goto LABEL_10;
    }

    v10 = (v12 + 9);
  }

  v13 = *v10;
  if (*v10 == 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v7 + 40) = v13;
  return EnvironmentValues.controlSize.modify;
}

void EnvironmentValues.explicitControlSize.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(v2, a1);
  }
}

void key path getter for EnvironmentValues.explicitControlSize : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double EnvironmentValues.controlSize.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011ControlSizeK033_B084178BA9D46D059A1FB75185D1E85CLLVG_Ttg5(v3, *v2);
  }

  return result;
}

uint64_t (*EnvironmentValues.explicitControlSize.modify(char **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v7 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v8 = *v1;
  *(v3 + 24) = *v1;
  v9 = *(v1 + 8);
  *(v3 + 32) = v9;
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v8, (v7 + 40));
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>(0, v4, v5, v6);
    BloomFilter.init(hashValue:)(v10);
    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v8, v14);
    if (v11)
    {
      v12 = *(v11 + 72);
    }

    else
    {
      v12 = 5;
    }

    *(v7 + 40) = v12;
  }

  return EnvironmentValues.explicitControlSize.modify;
}

void EnvironmentValues.controlSize.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011ControlSizeK033_B084178BA9D46D059A1FB75185D1E85CLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t one-time initialization function for controlSize(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.controlSize = result;
  return result;
}

uint64_t _GraphInputs.controlSize.getter()
{
  if (one-time initialization token for controlSize != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.controlSize;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, key path getter for EnvironmentValues.controlSize : EnvironmentValues, 0);
  swift_endAccess();
  return v1;
}

double View.controlSize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);

  return result;
}

double View.controlSize<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a6;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  KeyPath = swift_getKeyPath();
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  (*(v11 + 32))(&v15[v14], &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.controlSize<A>(_:), v15, a2);

  return result;
}

uint64_t ControlSize.clamped<A>(to:)@<X0>(_BYTE *a3@<X8>)
{
  v5 = *v3;
  lazy protocol witness table accessor for type ControlSizeCollection and conformance ControlSizeCollection();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v6 = v11;
  if (dispatch thunk of RangeExpression.contains(_:)())
  {
    return specialized Comparable.clamp(min:max:)(v10, v6, v5, a3);
  }

  result = specialized Collection<>.firstIndex(of:)(v11, &outlined read-only object #0 of ControlSize.clamped<A>(to:));
  if ((v8 & 1) == 0)
  {
    v9 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if (v9 <= 4)
    {
      v6 = outlined read-only object #1 of ControlSize.clamped<A>(to:)[(v9 & ~(v9 >> 63)) + 32];
      return specialized Comparable.clamp(min:max:)(v10, v6, v5, a3);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ControlSizeCollection.index(after:)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of ControlSizeCollection.index(after:));
  if (v4)
  {
    goto LABEL_9;
  }

  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v5 >= 4)
  {
    v5 = 4;
  }

  *a2 = outlined read-only object #1 of ControlSizeCollection.index(after:)[v5 + 32];
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance ControlSizeCollection(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v6)
  {
    goto LABEL_10;
  }

  v7 = result;
  result = specialized Collection<>.firstIndex(of:)(v3, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Collection<>.firstIndex(of:)(v4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v10 < result)
  {
    goto LABEL_9;
  }

  return result;
}

{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v6)
  {
    goto LABEL_10;
  }

  v7 = result;
  result = specialized Collection<>.firstIndex(of:)(v3, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Collection<>.firstIndex(of:)(v4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v10 < result)
  {
    goto LABEL_9;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ControlSizeCollection()
{
  v0 = specialized Collection.distance(from:to:)(0, 4);
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11ControlSizeO_Tt1g5(v0, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v4, (v2 + 4), v1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t partial apply for closure #1 in View.controlSize<A>(_:)(_BYTE *a1)
{
  result = ControlSize.clamped<A>(to:)(&v3);
  *a1 = v3;
  return result;
}

void lazy protocol witness table accessor for type ControlSizeCollection and conformance ControlSizeCollection()
{
  if (!lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for ControlSizeCollection, &unk_1F00706C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for ControlSizeCollection, &unk_1F00706C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection);
  }
}

void lazy protocol witness table accessor for type ControlSize and conformance ControlSize()
{
  if (!lazy protocol witness table cache variable for type ControlSize and conformance ControlSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for ControlSize, &type metadata for ControlSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ControlSize and conformance ControlSize);
  }
}

{
  if (!lazy protocol witness table cache variable for type ControlSize and conformance ControlSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for ControlSize, &type metadata for ControlSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ControlSize and conformance ControlSize);
  }
}

void lazy protocol witness table accessor for type [ControlSize] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [ControlSize] and conformance [A])
  {
    type metadata accessor for [ControlSize](255, &lazy cache variable for type metadata for [ControlSize], MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [ControlSize] and conformance [A]);
  }
}

void type metadata accessor for [ControlSize](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ControlSize);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void lazy protocol witness table accessor for type IndexingIterator<ControlSizeCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for IndexingIterator<ControlSizeCollection>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for IndexingIterator<ControlSizeCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type ControlSizeCollection and conformance ControlSizeCollection();
    v7 = a3(a1, &unk_1F00706C0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2)
{
  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = result;
  result = specialized Collection<>.firstIndex(of:)(a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 < result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = specialized Collection<>.firstIndex(of:)(BYTE1(a2), &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v10)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v9 >= result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = specialized Collection<>.firstIndex(of:)(a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if ((v5 & 1) == 0)
  {
    v6 = result;
    result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if (v7)
    {
      goto LABEL_25;
    }

    if (v6 >= result)
    {
      if (a1 == v2)
      {
        return 0;
      }

      for (i = 0; ; ++i)
      {
        result = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (byte_1F0043D50 == a1)
        {
          v9 = 0;
        }

        else if (byte_1F0043D51 == a1)
        {
          v9 = 1;
        }

        else if (byte_1F0043D52 == a1)
        {
          v9 = 2;
        }

        else if (byte_1F0043D53 == a1)
        {
          v9 = 3;
        }

        else
        {
          if (byte_1F0043D54 != a1)
          {
            goto LABEL_26;
          }

          v9 = 4;
        }

        if (v9 >= 3)
        {
          v9 = 3;
        }

        LODWORD(a1) = outlined read-only object #1 of specialized Collection.distance(from:to:)[v9 + 33];
        if (a1 == v2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, unsigned __int8 a2)
{
  v2 = result;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    for (i = 0; ; ++i)
    {
      result = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (byte_1F0043DA0 == v2)
      {
        v4 = 0;
      }

      else if (byte_1F0043DA1 == v2)
      {
        v4 = 1;
      }

      else if (byte_1F0043DA2 == v2)
      {
        v4 = 2;
      }

      else if (byte_1F0043DA3 == v2)
      {
        v4 = 3;
      }

      else if (byte_1F0043DA4 == v2)
      {
        v4 = 4;
      }

      else if (byte_1F0043DA5 == v2)
      {
        v4 = 5;
      }

      else if (byte_1F0043DA6 == v2)
      {
        v4 = 6;
      }

      else if (asc_1F0043DA7[0] == v2)
      {
        v4 = 7;
      }

      else if (asc_1F0043DA7[1] == v2)
      {
        v4 = 8;
      }

      else if (asc_1F0043DA7[2] == v2)
      {
        v4 = 9;
      }

      else if (asc_1F0043DA7[3] == v2)
      {
        v4 = 10;
      }

      else
      {
        if (asc_1F0043DA7[4] != v2)
        {
          goto LABEL_36;
        }

        v4 = 11;
      }

      if (v4 >= 0xA)
      {
        v4 = 10;
      }

      v2 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v4 + 33);
      if (v2 == a2)
      {
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void specialized MutableCollection<>.sort(by:)(void *a1)
{
  v2 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 3);
          v13[2] = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 3) = v14;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      type metadata accessor for (ScrapeableContent, Int)();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t static FormatStyle<>.offset(to:allowedFields:maxFieldCount:sign:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v7 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v16(v15, a1, v11, v13);
  v17 = *(v8 + 16);
  v17(v10, v25, v7);
  v18 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  *(a5 + v18[8]) = 0;
  static Calendar.autoupdatingCurrent.getter();
  *(a5 + v18[11]) = 0;
  *(a5 + v18[12]) = 0;
  *(a5 + v18[13]) = 0;
  (v16)(a5, v15, v11);
  v19 = v27;
  *(a5 + v18[5]) = v26;
  *(a5 + v18[6]) = v19;
  v20 = v23;
  v17((a5 + v18[7]), v10, v23);

  static Locale.autoupdatingCurrent.getter();
  (*(v24 + 8))(v10, v20);
  return (*(v12 + 8))(v15, v11);
}

uint64_t SystemFormatStyle.DateOffset.init(to:allowedFields:maxFieldCount:sign:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  *(a5 + v10[8]) = 0;
  static Calendar.autoupdatingCurrent.getter();
  *(a5 + v10[11]) = 0;
  *(a5 + v10[12]) = 0;
  *(a5 + v10[13]) = 0;
  v11 = type metadata accessor for Date();
  v17 = *(v11 - 8);
  (*(v17 + 16))(a5, a1, v11);
  *(a5 + v10[5]) = a2;
  *(a5 + v10[6]) = a3;
  v12 = v10[7];
  v13 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a5 + v12, a4, v13);
  static Locale.autoupdatingCurrent.getter();
  (*(v14 + 8))(a4, v13);
  v15 = *(v17 + 8);

  return v15(a1, v11);
}

uint64_t type metadata accessor for SystemFormatStyle.DateOffset(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemFormatStyle.DateOffset;
  if (!type metadata singleton initialization cache for SystemFormatStyle.DateOffset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SystemFormatStyle.DateOffset.calendar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  v5 = *(type metadata accessor for SystemFormatStyle.DateOffset(0) + 40);
  v6 = type metadata accessor for Calendar();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t SystemFormatStyle.DateOffset.locale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  v5 = *(type metadata accessor for SystemFormatStyle.DateOffset(0) + 36);
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t SystemFormatStyle.DateOffset.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7246657461647075;
    v6 = 0x6964496863746177;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C61636F6CLL;
    if (a1 != 5)
    {
      v7 = 0x7261646E656C6163;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x726F68636E61;
    v2 = 0x646C65694678616DLL;
    v3 = 1852270963;
    if (a1 != 3)
    {
      v3 = 0x69726156657A6973;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x466465776F6C6C61;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemFormatStyle.DateOffset.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SystemFormatStyle.DateOffset.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemFormatStyle.DateOffset.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemFormatStyle.DateOffset.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemFormatStyle.DateOffset.format(_:)@<X0>(void (**a1)(uint64_t, uint64_t, uint64_t, void *)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v209 = a1;
  v210 = a2;
  type metadata accessor for Locale?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v207 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for Locale();
  v172 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v206 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v205 = &v170 - v8;
  v9 = type metadata accessor for Locale.Key(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v203 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v202 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0, v12);
  v201 = v14;
  v171 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v200 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DateComponents();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for Calendar.Component();
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v182 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v181 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v21);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v192 = (&v170 - v25);
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v23);
  v176 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v177 = &v170 - v27;
  v28 = type metadata accessor for Date.ComponentsFormatStyle();
  v193 = *(v28 - 8);
  v194 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v187 = &v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>(0);
  v179 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v180 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v191 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v190 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v189 = &v170 - v36;
  v37 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v35);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v170 - v39;
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), v37);
  v198 = v41;
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v178 = &v170 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v195 = &v170 - v45;
  v46 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v47 = *(v46 - 8);
  v196 = v46;
  v197 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v186 = &v170 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v188 = &v170 - v50;
  v51 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v170 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v170 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(0);
  v58 = v57;
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v170 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v60) = *(v3 + v51[13]);
  v199 = v51;
  if (((v60 & 1) != 0 || *(v3 + v51[12]) == 1) && *(v3 + v51[11]) > 1u)
  {
LABEL_6:
    SystemFormatStyle.DateOffset.unitsStyle(for:)(v209, v40);
    v62 = v198;
    v63 = (*(v42 + 48))(v40, 1, v198);
    v208 = v3;
    v65 = v210;
    if (v63 == 1)
    {
      outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v40, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v64);
      v66 = v192;
      SystemFormatStyle.DateOffset.componentsStyle(for:)(v209, v192);
      type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
      v68 = v67;
      if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
      {
        outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v66, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v69);
        v70 = v188;
        static Date.ComponentsFormatStyle.Field.minute.getter();
        v71 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v209, v70);
        (*(v197 + 8))(v70, v196);
        v72 = static Date.< infix(_:_:)();
        result = SystemFormatStyle.DateOffset.smallerOneMinuteString.getter(v65);
        if (v71)
        {
          if (v72)
          {
            v74 = "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
            v75 = v65;
            v76 = 3;
            v77 = 9603298;
            v78 = 0xA300000000000000;
          }

          else
          {
            v74 = "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
            v75 = v65;
            v76 = 1;
            v77 = 43;
            v78 = 0xE100000000000000;
          }

          return SystemFormatStyle.DateOffset.addMinusSign(to:)(v75, v76, v77, v78, v74);
        }

        return result;
      }

      v96 = *(v68 + 48);
      v195 = *(v68 + 64);
      v97 = v176;
      v98 = *(v176 + 48);
      v191 = *(v176 + 64);
      v99 = v194;
      v198 = *(v193 + 32);
      v100 = v177;
      (v198)(v177, v66, v194);
      v101 = v197;
      v102 = *(v197 + 32);
      v103 = &v100[v98];
      v104 = v196;
      v102(v103, v66 + v96, v196);
      v102(&v100[v191], v66 + v195, v104);
      v195 = *(v97 + 48);
      v105 = *(v97 + 64);
      v106 = v209;
      v107 = v187;
      (v198)(v187, v100, v99);
      v108 = &v100[v105];
      v109 = v186;
      v102(v186, v108, v104);
      v110 = v107;
      v111 = v109;
      v112 = *(v101 + 8);
      v197 = v101 + 8;
      v112(&v100[v195], v104);
      v113 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v106, v109);
      if (Date.ComponentsFormatStyle.isPositive.getter())
      {
        v114 = v181;
        SystemFormatStyle.DateOffset.dateRange(for:)(v106, v181);
        Date.ComponentsFormatStyle.format(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v114, type metadata accessor for Range<Date>);
        AttributeContainer.init()();
        v115 = v210;
        AttributedString.init(_:attributes:)();
        if (v113)
        {
          SystemFormatStyle.DateOffset.addMinusSign(to:)(v115, 1, 43, 0xE100000000000000, "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)");
        }

LABEL_57:
        v112(v111, v196);
        return (*(v193 + 8))(v110, v194);
      }

      LODWORD(v195) = v113;
      v117 = v183;
      SystemFormatStyle.DateOffset.component(for:)(v109, v183);
      type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v118 = v184;
      v119 = (*(v184 + 80) + 32) & ~*(v184 + 80);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_18DDA6EB0;
      v121 = (*(v118 + 16))(v120 + v119, v117, v185);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v120, v121);
      v122 = v173;
      Calendar.dateComponents(_:from:to:)();

      v123 = DateComponents.value(for:)();
      v125 = v124;
      (*(v174 + 8))(v122, v175);
      if (v125)
      {
        v126 = v181;
        SystemFormatStyle.DateOffset.dateRange(for:)(v106, v181);
        Date.ComponentsFormatStyle.format(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v126, type metadata accessor for Range<Date>);
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
      }

      else
      {
        v153 = v181;
        SystemFormatStyle.DateOffset.dateRange(for:)(v106, v181);
        Date.ComponentsFormatStyle.format(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v153, type metadata accessor for Range<Date>);
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        if (!v123)
        {
LABEL_54:
          if (v195)
          {
            SystemFormatStyle.DateOffset.addMinusSign(to:)(v210, 3, 9603298, 0xA300000000000000, "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)");
          }

          (*(v184 + 8))(v183, v185);
          goto LABEL_57;
        }
      }

      v192 = v112;
      v209 = v199[9];
      v154 = (v172 + 16);
      v198 = v172 + 56;
      v199 = (v172 + 8);
      v155 = (v171 + 48);
      v156 = v209;
      v157 = v204;
      while (1)
      {
        if (one-time initialization token for minusSignCache != -1)
        {
          swift_once();
        }

        v158 = *v154;
        v159 = v208;
        v160 = v205;
        (*v154)(v205, v208 + v156, v157);
        v158(v206, v160, v157);
        v161 = v203;
        Locale.Components.init(locale:)();
        (*v199)(v160, v157);
        specialized ObjectCache.subscript.getter(v161);
        v163 = v162;
        v165 = v164;
        outlined destroy of SystemFormatStyle.DateOffset(v161, type metadata accessor for Locale.Key);
        v211 = v163;
        v212 = v165;
        v166 = v159 + v156;
        v167 = v207;
        v158(v207, v166, v157);
        (*v198)(v167, 0, 1, v157);
        type metadata accessor for AttributedString();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
        lazy protocol witness table accessor for type String and conformance String();
        v168 = v202;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        outlined destroy of SystemFormatStyle.DateOffset(v167, type metadata accessor for Locale?);

        if ((*v155)(v168, 1, v201) == 1)
        {
          break;
        }

        v169 = v200;
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v168, v200, type metadata accessor for Range<AttributedString.Index>);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        AttributedString.removeSubrange<A>(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v169, type metadata accessor for Range<AttributedString.Index>);
      }

      outlined destroy of SystemFormatStyle.DateOffset(v168, type metadata accessor for Range<AttributedString.Index>?);
      v110 = v187;
      v111 = v186;
      v112 = v192;
      goto LABEL_54;
    }

    v79 = v195;
    outlined init with take of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v40, v195);
    v80 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v209, v79 + *(v62 + 64));
    LODWORD(v207) = static Date.< infix(_:_:)();
    Date.timeIntervalSince(_:)();
    v81 = static Duration.seconds(_:)();
    v83 = v82;
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      v81 = static Duration.- infix(_:_:)();
      v83 = v84;
    }

    v85 = v191;
    v86 = v190;
    v87 = v189;
    v88 = *(v3 + v199[8]);
    v209 = v83;
    if (v88 > 1)
    {
      v116 = v32;
      static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    }

    else if (v88 == 1)
    {
      v116 = v32;
      if (*(v3 + v199[12]))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      v116 = v32;
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }

    static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
    v131 = static Duration.UnitsFormatStyle.UnitWidth.== infix(_:_:)();
    v132 = *(v85 + 8);
    v132(v86, v116);
    v132(v87, v116);
    if (v131)
    {
      v133 = v178;
      outlined init with copy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v79, v178);
      v134 = *(v198 + 48);
      v204 = *(v198 + 64);
      v205 = v134;
      v135 = v179;
      LODWORD(v206) = v80;
      v136 = *(v179 + 76);
      v137 = *MEMORY[0x1E69683F8];
      v138 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
      v139 = *(v138 - 8);
      v140 = *(v139 + 104);
      v141 = v180;
      v140(&v180[v136], v137, v138);
      v142 = *(v139 + 56);
      v142(v141 + v136, 0, 1, v138);
      v143 = *(v135 + 80);
      v140((v141 + v143), *MEMORY[0x1E69683F0], v138);
      v144 = v210;
      v142(v141 + v143, 0, 1, v138);
      v145 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
      (*(*(v145 - 8) + 32))(v141, v133, v145);
      v146 = v196;
      v147 = *(v197 + 8);
      v147(v133 + v204, v196);
      v147(&v205[v133], v146);
      LOBYTE(v143) = v206;
      v79 = v195;
      v211 = v81;
      v212 = v209;
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8], MEMORY[0x1E696A1A0]);
      dispatch thunk of FormatStyle.format(_:)();
      outlined destroy of SystemFormatStyle.DateOffset(v141, type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>);
      if ((v143 & 1) == 0)
      {
        return outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v79);
      }
    }

    else
    {
      v144 = v210;
      Duration.UnitsFormatStyle.Attributed.format(_:)();
      if ((v80 & 1) == 0)
      {
        return outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v79);
      }
    }

    if (v207)
    {
      v148 = "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v149 = v144;
      v150 = 3;
      v151 = 9603298;
      v152 = 0xA300000000000000;
    }

    else
    {
      v148 = "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v149 = v144;
      v150 = 1;
      v151 = 43;
      v152 = 0xE100000000000000;
    }

    SystemFormatStyle.DateOffset.addMinusSign(to:)(v149, v150, v151, v152, v148);
    return outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v79);
  }

  outlined init with copy of SystemFormatStyle.DateOffset(v3, v53, type metadata accessor for SystemFormatStyle.DateOffset);
  v53[v51[11]] = 0;
  SystemFormatStyle.DateOffset.timeStyle(for:)(v209, v56);
  outlined destroy of SystemFormatStyle.DateOffset(v53, type metadata accessor for SystemFormatStyle.DateOffset);
  if ((*(v59 + 48))(v56, 1, v58) == 1)
  {
    outlined destroy of SystemFormatStyle.DateOffset(v56, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    goto LABEL_6;
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v56, v61, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field));
  v89 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v209, &v61[*(v58 + 48)]);
  v90 = static Date.< infix(_:_:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  static Duration.zero.getter();
  if (static Duration.< infix(_:_:)())
  {
    static Duration.zero.getter();
    static Duration.- infix(_:_:)();
  }

  Duration.TimeFormatStyle.Attributed.format(_:)();
  if (v89)
  {
    if (v90)
    {
      v91 = "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v92 = v210;
      v93 = 3;
      v94 = 9603298;
      v95 = 0xA300000000000000;
    }

    else
    {
      v91 = "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v92 = v210;
      v93 = 1;
      v94 = 43;
      v95 = 0xE100000000000000;
    }

    SystemFormatStyle.DateOffset.addMinusSign(to:)(v92, v93, v94, v95, v91);
  }

  v127 = v199[11];
  if (*(v3 + v127) >= 2u)
  {
    v128 = *(v3 + v199[5]);
    v129 = v188;
    static Date.ComponentsFormatStyle.Field.second.getter();
    LOBYTE(v128) = specialized Set.contains(_:)(v129, v128);
    (*(v197 + 8))(v129, v196);
    if (v128)
    {
      LOBYTE(v211) = *(v3 + v127);
      AttributedString.redact(for:locale:)(&v211, v3 + v199[9], v130);
    }
  }

  return outlined destroy of SystemFormatStyle.DateOffset(v61, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field));
}

void type metadata accessor for Locale?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  if (!*a2)
  {
    type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>)
  {
    v2 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
    v3 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8], MEMORY[0x1E696A1A0]);
    v5 = v4;
    v6 = MEMORY[0x1E6968438];
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438], MEMORY[0x1E6968428]);
    v8 = v7;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, v6, MEMORY[0x1E6968430]);
    v10 = v9;
    v11 = MEMORY[0x1E6968400];
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component, MEMORY[0x1E6968400], MEMORY[0x1E6968418]);
    v13 = v12;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component, v11, MEMORY[0x1E6968408]);
    v17[0] = v2;
    v17[1] = v3;
    v17[2] = v5;
    v17[3] = v8;
    v17[4] = v10;
    v17[5] = v13;
    v17[6] = v14;
    v15 = type metadata accessor for WhitespaceRemovingFormatStyle(a1, v17);
    if (!v16)
    {
      atomic_store(v15, &lazy cache variable for type metadata for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>);
    }
  }
}

void type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field))
  {
    type metadata accessor for Duration.TimeFormatStyle.Attributed();
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field));
    }
  }
}

uint64_t SystemFormatStyle.DateOffset.updateFrequency(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  result = type metadata accessor for SystemFormatStyle.DateOffset(0);
  *(a2 + *(result + 44)) = v4;
  return result;
}

uint64_t SystemFormatStyle.DateOffset.timeStyle(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v59 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Grouping();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Duration.TimeFormatStyle();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v52 = v48 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v48 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v48 - v26;
  SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter();
  if (v28)
  {
    v49 = v19;
    v29 = type metadata accessor for SystemFormatStyle.DateOffset(0);
    v30 = *(v2 + *(v29 + 44));
    v48[2] = v29;
    if (v30 >= 2)
    {
      v35 = v53;
      v34 = v54;
      (*(v53 + 104))(v13, *MEMORY[0x1E69E7020], v54);
      static Duration.TimeFormatStyle.Pattern.hourMinute(padHourToLength:roundSeconds:)();
      v33 = v59;
    }

    else
    {
      v31 = *(v29 + 20);
      v48[1] = v2;
      v32 = *(v2 + v31);
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      LOBYTE(v32) = specialized Set.contains(_:)(v8, v32);
      (*(v6 + 8))(v8, v5);
      v33 = v59;
      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }

      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      if ((static Duration.< infix(_:_:)() & 1) == 0)
      {
        v35 = v53;
        v34 = v54;
        (*(v53 + 104))(v13, *MEMORY[0x1E69E7020], v54);
        static Duration.TimeFormatStyle.Pattern.hourMinuteSecond(padHourToLength:fractionalSecondsLength:roundFractionalSeconds:)();
      }

      else
      {
LABEL_7:
        v35 = v53;
        v34 = v54;
        (*(v53 + 104))(v13, *MEMORY[0x1E69E7020], v54);
        static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
      }
    }

    (*(v35 + 8))(v13, v34);
    static Locale.autoupdatingCurrent.getter();
    Duration.TimeFormatStyle.init(pattern:locale:)();
    (*(v17 + 32))(v27, v24, v16);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(0);
    v42 = v41;
    v43 = v49;
    v44 = Duration.TimeFormatStyle.locale(_:)();
    v45 = v56;
    MEMORY[0x193ABCCC0](v44);
    v46 = v52;
    Duration.TimeFormatStyle.grouping(_:)();
    (*(v57 + 8))(v45, v58);
    v47 = *(v17 + 8);
    v47(v43, v16);
    Duration.TimeFormatStyle.attributed.getter();
    v47(v46, v16);
    static Date.ComponentsFormatStyle.Field.second.getter();
    v47(v27, v16);
    return (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
  }

  else
  {
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(0);
    v37 = *(*(v36 - 8) + 56);
    v38 = v36;
    v39 = v59;

    return v37(v39, 1, 1, v38);
  }
}

uint64_t outlined destroy of SystemFormatStyle.DateOffset(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v39 = a1;
  v4 = type metadata accessor for DateComponents();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Calendar.Component();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  (*(v9 + 16))(v14, v3 + *(v15 + 28), v8);
  static NumberFormatStyleConfiguration.SignDisplayStrategy.never.getter();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8], MEMORY[0x1E6968F10]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v11, v8);
  if (v16)
  {
    v17(v14, v8);
    v18 = 0;
  }

  else
  {
    static NumberFormatStyleConfiguration.SignDisplayStrategy.automatic.getter();
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17(v11, v8);
    if (v19)
    {
      v17(v14, v8);
      v18 = static Date.< infix(_:_:)();
    }

    else
    {
      static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17(v11, v8);
      if (v20)
      {
        v17(v14, v8);
        v18 = 1;
      }

      else
      {
        static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        v17(v11, v8);
        v17(v14, v8);
        v18 = 0;
        if (v21)
        {
          SystemFormatStyle.DateOffset.component(for:)(v33, v7);
          type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
          v22 = v34;
          v23 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_18DDA6EB0;
          v25 = v24 + v23;
          v26 = v36;
          v27 = (*(v22 + 16))(v25, v7, v36);
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v24, v27);
          v28 = v35;
          Calendar.dateComponents(_:from:to:)();

          v29 = DateComponents.value(for:)();
          LOBYTE(v24) = v30;
          (*(v37 + 8))(v28, v38);
          (*(v22 + 8))(v7, v26);
          v18 = (v24 & 1) != 0 || v29 != 0;
        }
      }
    }
  }

  return v18 & 1;
}

uint64_t SystemFormatStyle.DateOffset.addMinusSign(to:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v42 = a5;
  v37 = a3;
  v35[1] = a2;
  v46 = a1;
  v6 = type metadata accessor for Locale.Language();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Locale();
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = type metadata accessor for AttributedString.InterpolationOptions();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x1EEE9AC00](v19 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = v37;
  v20._object = a4;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v47 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
  type metadata accessor for [AttributedString.InterpolationOptions](0);
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], type metadata accessor for [AttributedString.InterpolationOptions], MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v46;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
  v22 = type metadata accessor for AttributedString();
  (*(*(v22 - 8) + 8))(v21, v22);
  v23 = v17;
  v24 = v36;
  v25 = v14;
  v26 = v39;
  (*(v15 + 8))(v23, v25);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  String.LocalizationValue.init(stringInterpolation:)();
  v28 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  (*(v11 + 16))(v24, v26 + *(v28 + 36), v38);
  if (one-time initialization token for systemFormatStyle != -1)
  {
    swift_once();
  }

  v29 = [static NSBundle.systemFormatStyle bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v40 + 104))(v10, *MEMORY[0x1E6968DF8], v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.AccessibilityAttributes();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.AccessibilityAttributes and conformance AttributeScopes.AccessibilityAttributes, MEMORY[0x1E6959510], MEMORY[0x1E6959508]);
  AttributedString.init<A>(localized:including:)();
  v30 = v43;
  Locale.language.getter();
  v31 = Locale.Language.maximalIdentifier.getter();
  v33 = v32;
  (*(v44 + 8))(v30, v45);
  v47 = v31;
  v48 = v33;
  return AttributedString.subscript.setter();
}

uint64_t SystemFormatStyle.DateOffset.unitsStyle(for:)@<X0>(void (**a1)(uint64_t, uint64_t, uint64_t, void *)@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v107[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v107[-v7];
  v126 = type metadata accessor for FloatingPointRoundingRule();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v107[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v123 = &v107[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v122 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v135 = &v107[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v146 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v134 = *(v146 - 1);
  MEMORY[0x1EEE9AC00](v146);
  v142 = &v107[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v127 = &v107[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = type metadata accessor for Duration.UnitsFormatStyle();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v107[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v107[-v20];
  v130 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v107[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for Calendar.Component();
  v136 = *(v22 - 8);
  v137 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v107[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = type metadata accessor for DateComponents();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v139 = &v107[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v143 = &v107[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v147 = &v107[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v107[-v31];
  v138 = a1;
  v133 = v2;
  v33 = SystemFormatStyle.DateOffset.fieldsToDisplay(for:)(a1);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
  v40 = *(v26 + 72);
  v131 = v26;
  v41 = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18DDAF080;
  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  v144 = v40;
  static Date.ComponentsFormatStyle.Field.minute.getter();
  static Date.ComponentsFormatStyle.Field.second.getter();
  v151 = v39;
  v152 = v42;
  v148 = v33;
  v149 = v35;
  v115 = v35;
  v150 = v37;
  v140 = v39;
  type metadata accessor for [Date.ComponentsFormatStyle.Field](0);
  type metadata accessor for ArraySlice<Date.ComponentsFormatStyle.Field>(0);
  v145 = v43;
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type [Date.ComponentsFormatStyle.Field] and conformance [A], type metadata accessor for [Date.ComponentsFormatStyle.Field], MEMORY[0x1E69E6340]);
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type ArraySlice<Date.ComponentsFormatStyle.Field> and conformance ArraySlice<A>, type metadata accessor for ArraySlice<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E69E6978]);
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
  v45 = v44;
  LOBYTE(v37) = Collection<>.contains<A>(_:)();

  if ((v37 & 1) == 0)
  {
    type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
    (*(*(v61 - 8) + 56))(v132, 1, 1, v61);
    return swift_unknownObjectRelease();
  }

  v141 = v45;
  result = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v47 = *(v133 + *(result + 44)) >= 2u;
  v111 = v33;
  v110 = result;
  if (v47)
  {
    v48 = result;
    v49 = *(v133 + *(result + 20));
    static Date.ComponentsFormatStyle.Field.second.getter();
    LOBYTE(v49) = specialized Set.contains(_:)(v32, v49);
    result = (*(v131 + 8))(v32, v25);
    if (v49)
    {
      v145 = *(v48 + 40);
      type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v50 = v136;
      v51 = v41;
      v52 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_18DDA6EB0;
      v108 = *MEMORY[0x1E6969A88];
      v54 = *(v50 + 104);
      v55 = v53 + v52;
      v41 = v51;
      v56 = v137;
      v57 = v54(v55);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v53, v57);
      Calendar.dateComponents(_:from:to:)();

      v58 = v113;
      (v54)(v113, v108, v56);
      v145 = DateComponents.value(for:)();
      LOBYTE(v53) = v59;
      (*(v50 + 8))(v58, v56);
      result = (*(v112 + 8))(v139, v114);
      if ((v53 & 1) == 0 && !v145)
      {
        swift_unknownObjectRelease();
        type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
        return (*(*(v60 - 8) + 56))(v132, 1, 1, v60);
      }
    }
  }

  v114 = v140 >> 1;
  v62 = (v140 >> 1) - v41;
  v109 = v41;
  if (v140 >> 1 != v41)
  {
    if ((v140 >> 1) <= v41)
    {
      __break(1u);
      goto LABEL_45;
    }

    v139 = *(v131 + 16);
    v140 = v131 + 16;
    v65 = (v131 + 8);
    v137 = (v134 + 48);
    v138 = (v134 + 56);
    v136 = v134 + 32;
    v66 = v143;
    v67 = v115 + v41 * v144;
    v145 = MEMORY[0x1E69E7CC0];
    v68 = v135;
    while (1)
    {
      v69 = v147;
      v70 = v139;
      (v139)(v147, v67, v25);
      v70(v66, v69, v25);
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      LOBYTE(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
      v71 = *v65;
      (*v65)(v32, v25);
      if (v69)
      {
        v71(v66, v25);
        static Duration.UnitsFormatStyle.Unit.hours.getter();
      }

      else
      {
        static Date.ComponentsFormatStyle.Field.minute.getter();
        v72 = dispatch thunk of static Equatable.== infix(_:_:)();
        v71(v32, v25);
        if (v72)
        {
          v71(v66, v25);
          static Duration.UnitsFormatStyle.Unit.minutes.getter();
        }

        else
        {
          static Date.ComponentsFormatStyle.Field.second.getter();
          v73 = dispatch thunk of static Equatable.== infix(_:_:)();
          v71(v32, v25);
          v71(v66, v25);
          if ((v73 & 1) == 0)
          {
            v74 = 1;
            goto LABEL_27;
          }

          static Duration.UnitsFormatStyle.Unit.seconds.getter();
        }
      }

      v74 = 0;
LABEL_27:
      v71(v147, v25);
      v75 = v74;
      v76 = v146;
      (*v138)(v68, v75, 1, v146);
      if ((*v137)(v68, 1, v76) == 1)
      {
        outlined destroy of SystemFormatStyle.DateOffset(v68, type metadata accessor for Duration.UnitsFormatStyle.Unit?);
      }

      else
      {
        v77 = *v136;
        (*v136)(v142, v68, v76);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 16) + 1, 1, v145);
        }

        v79 = *(v145 + 16);
        v78 = *(v145 + 24);
        if (v79 >= v78 >> 1)
        {
          v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v145);
        }

        v81 = v145;
        v80 = v146;
        *(v145 + 16) = v79 + 1;
        v77((v81 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v79), v142, v80);
        v68 = v135;
      }

      v66 = v143;
      v67 += v144;
      if (!--v62)
      {
        goto LABEL_11;
      }
    }
  }

  v145 = MEMORY[0x1E69E7CC0];
LABEL_11:
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5Tf4g_n(v145);

  v63 = *(v133 + *(v110 + 32));
  if (v63 >= 2)
  {
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v64 = v132;
  }

  else
  {
    v64 = v132;
    if (v63 == 1)
    {
      if (*(v133 + *(v110 + 48)))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }
  }

  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.show(length:)();
  v82 = v125;
  v83 = v124;
  v84 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x1E69E7020], v126);
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide(rounded:)();
  (*(v82 + 8))(v83, v84);
  v85 = v118;
  Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
  v86 = v119;
  Duration.UnitsFormatStyle.locale(_:)();
  v87 = *(v120 + 8);
  v88 = v121;
  v87(v85, v121);
  v89 = v128;
  Duration.UnitsFormatStyle.attributed.getter();
  v87(v86, v88);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v147 = v90;
  v91 = *(v90 + 48);
  result = (*(v129 + 16))(v64, v89, v130);
  if (v114 == v109)
  {
    v92 = v131;
    v93 = *(v131 + 56);
    v94 = v117;
    v93(v117, 1, 1, v25);
    static Date.ComponentsFormatStyle.Field.second.getter();
    v95 = *(v92 + 48);
    if (v95(v94, 1, v25) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v94, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }

    v96 = v116;
    v93(v116, 1, 1, v25);
    static Date.ComponentsFormatStyle.Field.second.getter();
    swift_unknownObjectRelease();
    (*(v129 + 8))(v128, v130);
    if (v95(v96, 1, v25) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v96, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }

    return (*(*(v147 - 1) + 56))(v64, 0, 1, v147);
  }

  if (v114 > v109)
  {
    v97 = v144;
    v98 = v131;
    v99 = *(v131 + 16);
    v100 = v115;
    v101 = v117;
    v99(v117, v115 + v144 * v109, v25);
    v146 = *(v98 + 56);
    (v146)(v101, 0, 1, v25);
    v102 = v101;
    v103 = *(v98 + 32);
    v64 = v132;
    v103(v132 + v91, v102, v25);
    v104 = *(v147 + 16);
    v105 = v100 + (v114 - 1) * v97;
    v106 = v116;
    v99(v116, v105, v25);
    swift_unknownObjectRelease();
    (v146)(v106, 0, 1, v25);
    (*(v129 + 8))(v128, v130);
    v103(v64 + v104, v106, v25);
    return (*(*(v147 - 1) + 56))(v64, 0, 1, v147);
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.componentsStyle(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v77 = a2;
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v56 - v7;
  v8 = type metadata accessor for Calendar();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date.ComponentsFormatStyle();
  v70 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar.Component();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DateComponents();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v22 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v26 = v25;
  v78 = 0u;
  v79 = 0u;
  v27 = *(v3 + *(v25 + 44));
  v73 = v14;
  if (v27 >= 2)
  {
    v28 = *(v3 + *(v25 + 20));
    static Date.ComponentsFormatStyle.Field.second.getter();
    LOBYTE(v28) = specialized Set.contains(_:)(v24, v28);
    (*(v22 + 8))(v24, v74);
    if (v28)
    {
      v59 = v26[10];
      type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_18DDA6EB0;
      v60 = v22;
      v58 = *MEMORY[0x1E6969A88];
      v57 = *(v17 + 104);
      v31 = v57(v30 + v29);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v30, v31);
      Calendar.dateComponents(_:from:to:)();

      v22 = v60;
      (v57)(v19, v58, v16);
      v14 = v73;
      v32 = DateComponents.value(for:)();
      LOBYTE(v30) = v33;
      (*(v17 + 8))(v19, v16);
      (*(v61 + 8))(v21, v62);
      if ((v30 & 1) == 0 && !v32)
      {
        type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
        return (*(*(v34 - 8) + 56))(v77, 1, 1, v34);
      }
    }
  }

  v36 = *(v3 + v26[8]);
  if (v36 > 1)
  {
    static Date.ComponentsFormatStyle.Style.narrow.getter();
  }

  else if (v36 == 1)
  {
    if (*(v3 + v26[12]))
    {
      static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    }
  }

  else
  {
    static Date.ComponentsFormatStyle.Style.wide.getter();
  }

  (*(v64 + 16))(v66, v3 + v26[9], v65);
  (*(v67 + 16))(v69, v3 + v26[10], v68);
  specialized getter of fieldsToDisplay #1 in SystemFormatStyle.DateOffset.componentsStyle(for:)(&v78, v3, v75);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DateV21ComponentsFormatStyleV5FieldV_s10ArraySliceVyAJGTt0g5Tf4gX_n(v37, v38, v39);
  swift_unknownObjectRelease();
  Date.ComponentsFormatStyle.init(style:locale:calendar:fields:)();
  if (static Date.< infix(_:_:)())
  {
    Date.ComponentsFormatStyle.isPositive.setter();
  }

  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v41 = v40;
  v69 = *(v40 + 48);
  v42 = v70;
  result = (*(v70 + 16))(v77, v76, v14);
  v75 = v78;
  v43 = *(&v79 + 1) >> 1;
  if (v79 == *(&v79 + 1) >> 1)
  {
    v44 = v42;
    v45 = *(v22 + 56);
    v46 = v71;
    v47 = v74;
    v45(v71, 1, 1, v74);
    swift_unknownObjectRetain();
    static Date.ComponentsFormatStyle.Field.second.getter();
    v48 = *(v22 + 48);
    if (v48(v46, 1, v47) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v46, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }

    swift_unknownObjectRelease();
    v49 = v72;
    v50 = v74;
    v45(v72, 1, 1, v74);
    static Date.ComponentsFormatStyle.Field.second.getter();
    (*(v44 + 8))(v76, v73);
    if (v48(v49, 1, v50) != 1)
    {
      outlined destroy of SystemFormatStyle.DateOffset(v72, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    }
  }

  else
  {
    v51 = v71;
    if (v79 >= v43)
    {
      __break(1u);
      return result;
    }

    v52 = *(&v78 + 1);
    v53 = *(v22 + 72);
    v65 = *(v22 + 16);
    v54 = v74;
    v65(v71, *(&v78 + 1) + v53 * v79, v74);
    v68 = v41;
    v66 = *(v22 + 56);
    (v66)(v51, 0, 1, v54);
    v67 = *(v22 + 32);
    (v67)(&v69[v77], v51, v54);
    v71 = *(v68 + 64);
    swift_unknownObjectRetain();
    v55 = v72;
    v65(v72, v52 + v53 * (v43 - 1), v54);
    swift_unknownObjectRelease();
    (v66)(v55, 0, 1, v54);
    v41 = v68;
    (*(v42 + 8))(v76, v73);
    (v67)(v77 + v71, v55, v54);
  }

  (*(*(v41 - 8) + 56))(v77, 0, 1, v41);
  return swift_unknownObjectRelease();
}

uint64_t outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t SystemFormatStyle.DateOffset.dateRange(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = static Date.< infix(_:_:)();
  v14 = type metadata accessor for Date();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (v13)
  {
    v15 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v16 = a1;
    if (v15)
    {
LABEL_5:
      v18 = *(v14 - 8);
      v19 = v18[2];
      v19(v12, v16, v14);
      v19(&v12[*(v7 + 48)], v3, v14);
      outlined init with copy of SystemFormatStyle.DateOffset(v12, v9, type metadata accessor for (lower: Date, upper: Date));
      v20 = *(v7 + 48);
      v21 = v18[4];
      v21(a2, v9, v14);
      v22 = v18[1];
      v22(&v9[v20], v14);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v12, v9, type metadata accessor for (lower: Date, upper: Date));
      v23 = *(v7 + 48);
      type metadata accessor for Range<Date>(0);
      v21(a2 + *(v24 + 36), &v9[v23], v14);
      return (v22)(v9, v14);
    }

    __break(1u);
  }

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  v16 = v3;
  v3 = a1;
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.component(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  (*(v5 + 16))(v24 - v10, a1, v4, v9);
  static Date.ComponentsFormatStyle.Style.wide.getter();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v14 = MEMORY[0x1E6969A68];
LABEL_15:
    v13(v11, v4);
    v21 = *v14;
    v22 = type metadata accessor for Calendar.Component();
    return (*(*(v22 - 8) + 104))(a2, v21, v22);
  }

  static Date.ComponentsFormatStyle.Style.narrow.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v15)
  {
    v14 = MEMORY[0x1E6969A78];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Style.abbreviated.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v16)
  {
    v14 = MEMORY[0x1E6969A20];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v17)
  {
    v14 = MEMORY[0x1E6969A48];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v18)
  {
    v14 = MEMORY[0x1E6969A58];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Field.minute.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v19)
  {
    v14 = MEMORY[0x1E6969A88];
    goto LABEL_15;
  }

  static Date.ComponentsFormatStyle.Field.second.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  if (v20)
  {
    v14 = MEMORY[0x1E6969A98];
    goto LABEL_15;
  }

  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  MEMORY[0x193ABEDD0](0xD000000000000029, 0x800000018DD7AC40);
  type metadata accessor for SystemFormatStyle.DateOffset(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.smallerOneMinuteString.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>(0);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v59 = type metadata accessor for Duration.UnitsFormatStyle();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v60 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v55 - v24;
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Duration.UnitsFormatStyle.Unit>, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18DDA6EB0;
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5(v25);
  v72 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v73 = v1;
  v26 = *(v1 + v72[8]);
  v74 = v26;
  if (v26 > 1)
  {
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v27 = v71;
  }

  else
  {
    v27 = v71;
    if (v26 == 1)
    {
      if (*(v73 + v72[12]))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }
  }

  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.show(length:)();
  v28 = v64;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7020], v64);
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide(rounded:)();
  (*(v6 + 8))(v8, v28);
  Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
  Duration.UnitsFormatStyle.attributed.getter();
  (*(v58 + 8))(v20, v59);
  v29 = v73;
  v61 = v72[9];
  v30 = v70;
  Duration.UnitsFormatStyle.Attributed.locale(_:)();
  v31 = v60;
  v64 = *(v60 + 8);
  (v64)(v22, v27);
  v32 = v27;
  if (v74 >= 2)
  {
    v34 = v62;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v33 = v75;
  }

  else
  {
    v33 = v75;
    v34 = v62;
    if (v74 == 1)
    {
      if (*(v29 + v72[12]))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }
  }

  v35 = v63;
  static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
  v36 = static Duration.UnitsFormatStyle.UnitWidth.== infix(_:_:)();
  v39 = *(v33 + 8);
  v38 = v33 + 8;
  v37 = v39;
  v40 = v35;
  v41 = v76;
  v39(v40, v76);
  v39(v34, v41);
  if (v36)
  {
    v42 = *(v31 + 16);
    v75 = v38;
    v43 = v57;
    v42(v57, v30, v32);
    v44 = v56;
    v45 = *(v56 + 76);
    v46 = *MEMORY[0x1E69683F8];
    v47 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
    v48 = *(v47 - 8);
    v49 = *(v48 + 104);
    v49(v43 + v45, v46, v47);
    v50 = *(v48 + 56);
    v50(v43 + v45, 0, 1, v47);
    v51 = *(v44 + 80);
    v32 = v71;
    v49(v43 + v51, *MEMORY[0x1E69683F0], v47);
    v30 = v70;
    v50(v43 + v51, 0, 1, v47);
    v29 = v73;
    v77 = xmmword_18DDCF140;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8], MEMORY[0x1E696A1A0]);
    v52 = v66;
    dispatch thunk of FormatStyle.format(_:)();
    outlined destroy of SystemFormatStyle.DateOffset(v43, type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>);
  }

  else
  {
    v52 = v66;
    Duration.UnitsFormatStyle.Attributed.format(_:)();
  }

  v53 = v65;
  if (v74 > 1)
  {
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
  }

  else if (v74 == 1)
  {
    if (*(v29 + v72[12]))
    {
      static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    }
  }

  else
  {
    static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  }

  static SystemFormatStyle.lessThanOneMinuteString(_:locale:width:)(v52, &v61[v29], v53, v69);
  v37(v53, v76);
  (*(v67 + 8))(v52, v68);
  return (v64)(v30, v32);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v31 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v36 = a2 + 56;
  v32 = v7;
  v33 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v34 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 16 * (v8 | (v3 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    Hasher.init(_seed:)();
    if (v13 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v12;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    String.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_36:
      outlined consume of AttributedString.AnyAttribute(v12, v13);
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = *(v2 + 48) + 16 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      if (v21 < 0)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v25;
        v26 = v20;
        if ((v13 & 0x8000000000000000) == 0)
        {
          v27 = dispatch thunk of static AttributedStringKey.name.getter();
          goto LABEL_26;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v20 == v12)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        }

        v22 = dispatch thunk of static AttributedStringKey.name.getter();
        v24 = v23;
      }

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_26:
      if (v22 == v27 && v24 == v28)
      {
        break;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v20, v21);

      v2 = a2;
      if (v30)
      {
        goto LABEL_33;
      }

LABEL_19:
      v17 = (v17 + 1) & v18;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    outlined consume of AttributedString.AnyAttribute(v20, v21);

    v2 = a2;
LABEL_33:
    outlined consume of AttributedString.AnyAttribute(v12, v13);
    v7 = v32;
    result = v33;
    v6 = v34;
  }

  while (v34);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v31 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI14GlassContainerO5EntryV8StableIDV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x193AC11A0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t SystemFormatStyle.DateOffset.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for SystemFormatStyle.DateOffset(0);
    v13 = *(v3 + v10[5]);
    HIBYTE(v12) = 1;
    type metadata accessor for Set<Date.ComponentsFormatStyle.Field>(0);
    lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E69E64F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8], MEMORY[0x1E6968F00]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + v10[8]);
    HIBYTE(v12) = 4;
    lazy protocol witness table accessor for type TextSizeVariant and conformance TextSizeVariant();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 5;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 6;
    type metadata accessor for Calendar();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = *(v3 + v10[11]);
    HIBYTE(v12) = 7;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

void SystemFormatStyle.DateOffset.hash(into:)(__int128 *a1)
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  specialized Set.hash(into:)(a1, *(v1 + v3[5]));
  MEMORY[0x193AC11A0](*(v1 + v3[6]));
  type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8], MEMORY[0x1E6968F08]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x193AC11A0](*(v1 + v3[8]));
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x193AC11A0](*(v1 + v3[11]));
  Hasher._combine(_:)(*(v1 + v3[12]));
  Hasher._combine(_:)(*(v1 + v3[13]));
}

Swift::Int SystemFormatStyle.DateOffset.hashValue.getter()
{
  Hasher.init(_seed:)();
  SystemFormatStyle.DateOffset.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SystemFormatStyle.DateOffset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for Calendar();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemFormatStyle.DateOffset.CodingKeys>, MEMORY[0x1E69E6F48]);
  v58 = v13;
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 32);
  *&v18[v20] = 0;
  v61 = *(v19 + 40);
  static Calendar.autoupdatingCurrent.getter();
  v21 = *(v16 + 44);
  v64 = v18;
  v18[v21] = 0;
  v22 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();
  v57 = v15;
  v23 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v24 = v62;
    v25 = v63;
    v29 = v61;
    v30 = v64;
    __swift_destroy_boxed_opaque_existential_1(v60);
    return (*(v24 + 8))(&v30[v29], v25);
  }

  else
  {
    v45 = v20;
    v46 = v10;
    v44 = v21;
    v59 = v16;
    LOBYTE(v66) = 0;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v26 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v62;
    v28 = v63;
    v32 = *(v54 + 32);
    v33 = v64;
    v55 = v11;
    v32(v64, v26, v11);
    type metadata accessor for Set<Date.ComponentsFormatStyle.Field>(0);
    v65 = 1;
    lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E69E6510]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v61;
    v35 = v59;
    *&v33[v59[5]] = v66;
    LOBYTE(v66) = 2;
    v43 = 0;
    *&v33[v35[6]] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v66) = 3;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy, MEMORY[0x1E6968EF8], MEMORY[0x1E6968F18]);
    v36 = v46;
    v37 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v53 + 32))(&v33[v35[7]], v36, v37);
    v65 = 4;
    lazy protocol witness table accessor for type TextSizeVariant and conformance TextSizeVariant();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v33[v45] = v66;
    LOBYTE(v66) = 5;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
    v38 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v50 + 32))(&v33[v59[9]], v49, v38);
    LOBYTE(v66) = 6;
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B08]);
    v39 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 40))(&v33[v34], v39, v28);
    v65 = 7;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33[v44] = v66;
    LOBYTE(v66) = 8;
    v33[v59[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v66) = 9;
    LOBYTE(v39) = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v59[13];
    (*(v56 + 8))(v57, v58);
    v41 = v39 & 1;
    v42 = v64;
    v64[v40] = v41;
    outlined init with copy of SystemFormatStyle.DateOffset(v42, v47, type metadata accessor for SystemFormatStyle.DateOffset);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return outlined destroy of SystemFormatStyle.DateOffset(v42, type metadata accessor for SystemFormatStyle.DateOffset);
  }
}

uint64_t protocol witness for FormatStyle.locale(_:) in conformance SystemFormatStyle.DateOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of SystemFormatStyle.DateOffset(v3, a3, type metadata accessor for SystemFormatStyle.DateOffset);
  v7 = *(a2 + 36);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 24);

  return v9(a3 + v7, a1, v8);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemFormatStyle.DateOffset()
{
  Hasher.init(_seed:)();
  SystemFormatStyle.DateOffset.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemFormatStyle.DateOffset(uint64_t a1)
{
  Hasher.init(_seed:)();
  SystemFormatStyle.DateOffset.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t SystemFormatStyle.DateOffset.discreteInput(before:)@<X0>(void (**a1)(uint64_t, uint64_t, uint64_t, void *)@<X0>, uint64_t a2@<X8>)
{
  v197 = a1;
  v192 = a2;
  v166 = type metadata accessor for Calendar.Component();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v168 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  MEMORY[0x1EEE9AC00](v7);
  v178 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>(0);
  v176 = v9;
  v174 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v167 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v172 = &v160 - v12;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v173 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v175 = &v160 - v17;
  v18 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v16);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v184 = (&v160 - v20);
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v18);
  v170 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v160 - v22;
  v191 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v193 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v163 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v187 = &v160 - v25;
  v186 = type metadata accessor for Date.ComponentsFormatStyle();
  v26 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v185 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for Date();
  v196 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v161 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v180 = &v160 - v30;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v169 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v162 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v177 = &v160 - v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v188 = &v160 - v39;
  v40 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v38);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v160 - v42;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v40);
  v181 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v182 = &v160 - v45;
  v46 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v189 = *(v46 - 8);
  v190 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v183 = &v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v160 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)(0);
  v52 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v160 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v160 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v57) = *(v3 + v7[13]);
  v195 = v3;
  if ((v57 & 1) == 0 && *(v3 + v7[12]) != 1 || *(v3 + v7[11]) <= 1u)
  {
    v179 = v26;
    SystemFormatStyle.DateOffset.timeStyle(for:)(v197, v50);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(0);
    v60 = v59;
    if ((*(*(v59 - 8) + 48))(v50, 1, v59) != 1)
    {
      v190 = *(v60 + 48);
      v92 = *(v52 + 48);
      v93 = *(v56 + 32);
      v93(v54, v50, v55);
      v94 = v193;
      v95 = &v54[v92];
      v96 = v191;
      (*(v193 + 32))(v95, &v50[v190], v191);
      v97 = *(v52 + 48);
      v93(v58, v54, v55);
      (*(v94 + 8))(&v54[v97], v96);
      v89 = v195;
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      Duration.TimeFormatStyle.Attributed.discreteInput(before:)();
      v91 = v98;
      (*(v56 + 8))(v58, v55);
      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v50, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    v26 = v179;
  }

  v61 = v197;
  SystemFormatStyle.DateOffset.unitsStyle(for:)(v197, v43);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v63 = v62;
  if ((*(*(v62 - 8) + 48))(v43, 1, v62) != 1)
  {
    v74 = *(v63 + 48);
    v187 = *(v63 + 64);
    v75 = v181;
    v76 = v182;
    v77 = *(v181 + 48);
    v78 = *(v181 + 64);
    v185 = v74;
    v186 = v78;
    v79 = v190;
    v80 = *(v189 + 32);
    v80(v182, v43, v190);
    v81 = v193;
    v82 = *(v193 + 32);
    v83 = &v76[v77];
    v84 = v191;
    v82(v83, &v185[v43], v191);
    v82(&v76[v186], &v187[v43], v84);
    v85 = *(v75 + 48);
    v86 = *(v75 + 64);
    v87 = v183;
    v80(v183, v76, v79);
    v88 = *(v81 + 8);
    v88(&v76[v86], v84);
    v88(&v76[v85], v84);
    v89 = v195;
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    Duration.UnitsFormatStyle.Attributed.discreteInput(before:)();
    v91 = v90;
    (*(v189 + 8))(v87, v190);
LABEL_12:
    v99 = static Date.> infix(_:_:)();
    v100 = v194;
    v101 = v196;
    v102 = v188;
    if (v99)
    {
      (*(v196 + 16))(v188, v89, v194);
      v103 = 0;
    }

    else
    {
      v103 = 1;
    }

    v104 = v192;
    v105 = *(v101 + 56);
    v105(v102, v103, 1, v100);
    if ((v91 & 1) == 0)
    {
      v108 = v180;
      SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v180);
      specialized max<A>(_:ifPresent:)(v108, v102, v104);
      (*(v101 + 8))(v108, v100);
      outlined destroy of SystemFormatStyle.DateOffset(v102, type metadata accessor for Date?);
      return (v105)(v104, 0, 1, v100);
    }

    v106 = v102;
    v107 = v104;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v106, v107, type metadata accessor for Date?);
  }

  v190 = v7;
  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v43, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v64);
  v65 = v184;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(v61, v184);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v67 = v66;
  v68 = (*(*(v66 - 8) + 48))(v65, 1, v66);
  v70 = v196;
  if (v68 == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v65, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v69);
    v71 = static Date.< infix(_:_:)();
    v72 = v194;
    if (v71)
    {
      v73 = v169;
      SystemFormatStyle.DateOffset.nextInputRoundingLower(for:)(v169);
    }

    else
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v73 = v169;
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    (*(v70 + 56))(v73, 0, 1, v72);
    v106 = v73;
    v107 = v192;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v106, v107, type metadata accessor for Date?);
  }

  v110 = *(v67 + 64);
  v188 = *(v67 + 48);
  v189 = v110;
  v111 = v170;
  v112 = *(v170 + 48);
  v113 = *(v170 + 64);
  v179 = v26;
  v114 = *(v26 + 32);
  v115 = v171;
  v116 = v186;
  v114(v171, v65, v186);
  v118 = (v193 + 32);
  v117 = *(v193 + 32);
  v119 = &v115[v112];
  v120 = v191;
  v117(v119, v65 + v188, v191);
  v117(&v115[v113], v65 + v189, v120);
  v121 = *(v111 + 48);
  v122 = *(v111 + 64);
  v114(v185, v115, v116);
  v123 = v196;
  v188 = v118;
  v184 = v117;
  v117(v187, &v115[v121], v120);
  v124 = &v115[v122];
  v125 = (v193 + 8);
  v189 = *(v193 + 8);
  (v189)(v124, v120);
  v126 = v172;
  v127 = v195;
  SystemFormatStyle.DateOffset.dateRange(for:)(v197, v172);
  v128 = v175;
  Date.ComponentsFormatStyle.discreteInput(before:)();
  outlined destroy of SystemFormatStyle.DateOffset(v126, type metadata accessor for Range<Date>);
  v129 = v127;
  v130 = v127;
  v131 = v178;
  outlined init with copy of SystemFormatStyle.DateOffset(v129, v178, type metadata accessor for SystemFormatStyle.DateOffset);
  v132 = v173;
  outlined init with copy of SystemFormatStyle.DateOffset(v128, v173, type metadata accessor for Range<Date>?);
  v133 = 1;
  v134 = v176;
  v135 = (*(v174 + 48))(v132, 1, v176);
  v136 = v177;
  if (v135 != 1)
  {
    v137 = v167;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v132, v167, type metadata accessor for Range<Date>);
    v138 = static Date.== infix(_:_:)();
    v139 = v137;
    if (v138)
    {
      v139 = v137 + *(v134 + 36);
    }

    (*(v123 + 16))(v136, v139, v194);
    outlined destroy of SystemFormatStyle.DateOffset(v137, type metadata accessor for Range<Date>);
    v133 = 0;
  }

  outlined destroy of SystemFormatStyle.DateOffset(v128, type metadata accessor for Range<Date>?);
  v140 = *(v123 + 56);
  v141 = v133;
  v142 = v194;
  v140(v136, v141, 1, v194);
  outlined destroy of SystemFormatStyle.DateOffset(v131, type metadata accessor for SystemFormatStyle.DateOffset);
  v143 = static Date.> infix(_:_:)();
  if (v143)
  {
    v144 = v192;
    specialized max<A>(_:ifPresent:)(v130, v136, v192);
    outlined destroy of SystemFormatStyle.DateOffset(v136, type metadata accessor for Date?);
    (*(v179 + 8))(v185, v186);
    v140(v144, 0, 1, v142);
    return (v189)(v187, v191);
  }

  v145 = v191;
  if (one-time initialization token for orderedFields != -1)
  {
    v143 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v143);
  v146 = v187;
  *(&v160 - 2) = v130;
  *(&v160 - 1) = v146;
  v147 = v168;
  specialized BidirectionalCollection.last(where:)(partial apply for closure #1 in SystemFormatStyle.DateOffset.discreteInput(before:), v148, v168);
  if ((*(v193 + 48))(v147, 1, v145) == 1)
  {
    (*(v179 + 8))(v185, v186);
    outlined destroy of SystemFormatStyle.DateOffset(v147, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    v149 = v192;
    v150 = v189;
LABEL_33:
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v136, v149, type metadata accessor for Date?);
    return v150(v187, v145);
  }

  v197 = v125;
  v151 = v163;
  v184(v163, v147, v145);
  v152 = v164;
  SystemFormatStyle.DateOffset.component(for:)(v151, v164);
  v153 = v162;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v165 + 8))(v152, v166);
  v154 = v196;
  v155 = v194;
  if ((*(v196 + 48))(v153, 1, v194) == 1)
  {
    v150 = v189;
    (v189)(v151, v145);
    (*(v179 + 8))(v185, v186);
    outlined destroy of SystemFormatStyle.DateOffset(v153, type metadata accessor for Date?);
    v149 = v192;
    goto LABEL_33;
  }

  v156 = v161;
  (*(v154 + 32))(v161, v153, v155);
  v157 = v192;
  specialized max<A>(_:ifPresent:)(v156, v136, v192);
  (*(v154 + 8))(v156, v155);
  v158 = v151;
  v159 = v189;
  (v189)(v158, v145);
  outlined destroy of SystemFormatStyle.DateOffset(v136, type metadata accessor for Date?);
  (*(v179 + 8))(v185, v186);
  v140(v157, 0, 1, v155);
  return v159(v187, v145);
}

uint64_t SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  Duration.components.getter();
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    return (*(v5 + 32))(a3, v13, v4);
  }

  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Date.+ infix(_:_:)();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v14 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v13, v4);
  v16 = (v5 + 32);
  if (v14)
  {
    v15(v10, v4);
    return (*v16)(a3, v7, v4);
  }

  else
  {
    v15(v7, v4);
    return (*v16)(a3, v10, v4);
  }
}

uint64_t SystemFormatStyle.DateOffset.nextInputRoundingLower(for:)@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  Duration.components.getter();
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    return (*(v5 + 32))(a3, v13, v4);
  }

  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Date.+ infix(_:_:)();
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v14 = dispatch thunk of static Comparable.< infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v13, v4);
  v16 = (v5 + 32);
  if (v14)
  {
    v15(v10, v4);
    return (*v16)(a3, v7, v4);
  }

  else
  {
    v15(v7, v4);
    return (*v16)(a3, v10, v4);
  }
}

uint64_t SystemFormatStyle.DateOffset.discreteInput(after:)@<X0>(void (**a1)(uint64_t, uint64_t, uint64_t, void *)@<X0>, uint64_t a2@<X8>)
{
  v193 = a1;
  v188 = a2;
  v162 = type metadata accessor for Calendar.Component();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date.ComponentsFormatStyle.Field?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v164 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  MEMORY[0x1EEE9AC00](v7);
  v173 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>(0);
  v172 = v9;
  v170 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v168 = &v156 - v12;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v169 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v171 = &v156 - v17;
  v18 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v16);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v180 = &v156 - v20;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v18);
  v166 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v167 = &v156 - v22;
  v187 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v190 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v159 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v156 - v25;
  v182 = type metadata accessor for Date.ComponentsFormatStyle();
  v26 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for Date();
  v189 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v157 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v156 - v30;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v165 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v158 = &v156 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v174 = &v156 - v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v184 = (&v156 - v39);
  v40 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v38);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v156 - v42;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v40);
  v177 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v178 = &v156 - v45;
  v46 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v185 = *(v46 - 8);
  v186 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v179 = &v156 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)(0);
  v52 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v156 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v156 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v57) = *(v3 + v7[13]);
  v192 = v3;
  if ((v57 & 1) == 0 && *(v3 + v7[12]) != 1 || *(v3 + v7[11]) <= 1u)
  {
    v175 = v26;
    SystemFormatStyle.DateOffset.timeStyle(for:)(v193, v50);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(0);
    v60 = v59;
    if ((*(*(v59 - 8) + 48))(v50, 1, v59) != 1)
    {
      v186 = *(v60 + 48);
      v91 = *(v52 + 48);
      v92 = v56;
      v93 = *(v56 + 32);
      v93(v54, v50, v55);
      v94 = v190;
      v95 = &v54[v91];
      v96 = v187;
      (*(v190 + 32))(v95, &v50[v186], v187);
      v97 = *(v52 + 48);
      v93(v58, v54, v55);
      (*(v94 + 8))(&v54[v97], v96);
      v84 = v192;
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      Duration.TimeFormatStyle.Attributed.discreteInput(after:)();
      v190 = v98;
      v90 = v99;
      (*(v92 + 8))(v58, v55);
      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v50, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    v3 = v192;
    v26 = v175;
  }

  v61 = v193;
  SystemFormatStyle.DateOffset.unitsStyle(for:)(v193, v43);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v63 = v62;
  if ((*(*(v62 - 8) + 48))(v43, 1, v62) != 1)
  {
    v73 = *(v63 + 48);
    v183 = *(v63 + 64);
    v74 = v177;
    v75 = v178;
    v76 = *(v177 + 48);
    v77 = *(v177 + 64);
    v181 = v73;
    v182 = v77;
    v78 = v186;
    v79 = *(v185 + 32);
    v79(v178, v43, v186);
    v80 = v190;
    v81 = *(v190 + 32);
    v82 = (v75 + v76);
    v83 = v187;
    v81(v82, &v181[v43], v187);
    v81((v75 + v182), &v183[v43], v83);
    v84 = v192;
    v183 = *(v74 + 48);
    v85 = *(v74 + 64);
    v86 = v179;
    v79(v179, v75, v78);
    v87 = *(v80 + 8);
    v87((v75 + v85), v83);
    v87(&v183[v75], v83);
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    Duration.UnitsFormatStyle.Attributed.discreteInput(after:)();
    v190 = v88;
    v90 = v89;
    (*(v185 + 8))(v86, v186);
LABEL_12:
    v100 = static Date.< infix(_:_:)();
    v101 = v191;
    v102 = v189;
    if (v100)
    {
      v103 = v184;
      (*(v189 + 16))(v184, v84, v191);
      v104 = 0;
    }

    else
    {
      v104 = 1;
      v103 = v184;
    }

    v105 = *(v102 + 56);
    v105(v103, v104, 1, v101);
    if ((v90 & 1) == 0)
    {
      v107 = v176;
      SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v176);
      v108 = v188;
      specialized min<A>(_:ifPresent:)(v107, v103, v188);
      (*(v102 + 8))(v107, v101);
      outlined destroy of SystemFormatStyle.DateOffset(v103, type metadata accessor for Date?);
      return (v105)(v108, 0, 1, v101);
    }

    v106 = v103;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v106, v188, type metadata accessor for Date?);
  }

  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v43, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v64);
  v65 = v180;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(v61, v180);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v67 = v66;
  if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v65, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v68);
    v69 = static Date.< infix(_:_:)();
    v70 = v189;
    v71 = v165;
    if (v69)
    {
      v72 = v191;
      (*(v189 + 16))(v165, v3, v191);
    }

    else
    {
      SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v165);
      v72 = v191;
    }

    (*(v70 + 56))(v71, 0, 1, v72);
    v106 = v71;
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v106, v188, type metadata accessor for Date?);
  }

  v184 = v7;
  v110 = *(v67 + 48);
  v186 = *(v67 + 64);
  v111 = v166;
  v112 = *(v166 + 48);
  v185 = *(v166 + 64);
  v175 = v26;
  v113 = *(v26 + 32);
  v114 = v167;
  v115 = v182;
  v113(v167, v65, v182);
  v117 = v190 + 32;
  v116 = *(v190 + 32);
  v118 = &v65[v110];
  v119 = v187;
  v116(&v114[v112], v118, v187);
  v116(&v114[v185], &v65[v186], v119);
  v120 = *(v111 + 48);
  v121 = *(v111 + 64);
  v113(v181, v114, v115);
  v185 = v117;
  v180 = v116;
  v116(v183, &v114[v120], v119);
  v186 = *(v190 + 8);
  (v186)(&v114[v121], v119);
  v122 = v168;
  v123 = v192;
  SystemFormatStyle.DateOffset.dateRange(for:)(v193, v168);
  v124 = v171;
  Date.ComponentsFormatStyle.discreteInput(after:)();
  outlined destroy of SystemFormatStyle.DateOffset(v122, type metadata accessor for Range<Date>);
  v125 = v123;
  v126 = v173;
  outlined init with copy of SystemFormatStyle.DateOffset(v123, v173, type metadata accessor for SystemFormatStyle.DateOffset);
  v127 = v169;
  outlined init with copy of SystemFormatStyle.DateOffset(v124, v169, type metadata accessor for Range<Date>?);
  v128 = 1;
  v129 = v172;
  v130 = (*(v170 + 48))(v127, 1, v172);
  v131 = v189;
  v132 = v174;
  if (v130 != 1)
  {
    v133 = v163;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v127, v163, type metadata accessor for Range<Date>);
    v134 = static Date.== infix(_:_:)();
    v135 = v133;
    if (v134)
    {
      v135 = v133 + *(v129 + 36);
    }

    (*(v131 + 16))(v132, v135, v191);
    outlined destroy of SystemFormatStyle.DateOffset(v133, type metadata accessor for Range<Date>);
    v128 = 0;
  }

  outlined destroy of SystemFormatStyle.DateOffset(v124, type metadata accessor for Range<Date>?);
  v136 = *(v131 + 56);
  v137 = v128;
  v138 = v191;
  v136(v132, v137, 1, v191);
  outlined destroy of SystemFormatStyle.DateOffset(v126, type metadata accessor for SystemFormatStyle.DateOffset);
  v139 = static Date.< infix(_:_:)();
  if (v139)
  {
    v140 = v188;
    specialized min<A>(_:ifPresent:)(v125, v132, v188);
    outlined destroy of SystemFormatStyle.DateOffset(v132, type metadata accessor for Date?);
    (*(v175 + 8))(v181, v182);
    v136(v140, 0, 1, v138);
    return (v186)(v183, v119);
  }

  if (one-time initialization token for orderedFields != -1)
  {
    v139 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v139);
  v141 = v183;
  *(&v156 - 2) = v125;
  *(&v156 - 1) = v141;
  v142 = v164;
  specialized BidirectionalCollection.last(where:)(partial apply for closure #1 in SystemFormatStyle.DateOffset.discreteInput(after:), v143, v164);
  v144 = v187;
  if ((*(v190 + 48))(v142, 1, v187) == 1)
  {
    (*(v175 + 8))(v181, v182);
    outlined destroy of SystemFormatStyle.DateOffset(v142, type metadata accessor for Date.ComponentsFormatStyle.Field?);
    v145 = v186;
LABEL_33:
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v132, v188, type metadata accessor for Date?);
    return v145(v183, v144);
  }

  v146 = v159;
  (v180)(v159, v142, v144);
  v147 = v160;
  v148 = v144;
  SystemFormatStyle.DateOffset.component(for:)(v146, v160);
  v149 = v158;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v161 + 8))(v147, v162);
  v150 = v189;
  v151 = v191;
  if ((*(v189 + 48))(v149, 1, v191) == 1)
  {
    v145 = v186;
    (v186)(v146, v144);
    (*(v175 + 8))(v181, v182);
    outlined destroy of SystemFormatStyle.DateOffset(v149, type metadata accessor for Date?);
    v132 = v174;
    goto LABEL_33;
  }

  v152 = v157;
  (*(v150 + 32))(v157, v149, v151);
  v153 = v188;
  v154 = v174;
  specialized min<A>(_:ifPresent:)(v152, v174, v188);
  (*(v150 + 8))(v152, v151);
  v155 = v186;
  (v186)(v146, v148);
  outlined destroy of SystemFormatStyle.DateOffset(v154, type metadata accessor for Date?);
  (*(v175 + 8))(v181, v182);
  v136(v153, 0, 1, v151);
  return v155(v183, v148);
}

BOOL closure #1 in SystemFormatStyle.DateOffset.discreteInput(before:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  if ((specialized Set.contains(_:)(a1, *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  Date.ComponentsFormatStyle.Field.magnitude.getter(&v8);
  v5 = v8;
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v7);
  return v7 < v5;
}

uint64_t SystemFormatStyle.DateOffset.input(before:)@<X0>(void (**a1)(uint64_t, uint64_t, uint64_t, void *)@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>(0);
  v117 = v7;
  v115 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v108 = &v107 - v11;
  v12 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v120 = &v107 - v14;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v12);
  v109 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v107 - v16;
  v113 = type metadata accessor for Date.ComponentsFormatStyle();
  v111 = *(v113 - 8);
  v17 = MEMORY[0x1EEE9AC00](v113);
  v112 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v17);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v107 - v21;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v19);
  v118 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v107 - v24;
  v26 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v121 = *(v26 - 8);
  v122 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v119 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)(0);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v40 = *(v3 + v39[13]);
  v124 = a1;
  if ((v40 & 1) == 0 && *(v3 + v39[12]) != 1 || *(v3 + v39[11]) <= 1u)
  {
    SystemFormatStyle.DateOffset.timeStyle(for:)(a1, v30);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(0);
    v42 = v41;
    if ((*(*(v41 - 8) + 48))(v30, 1, v41) != 1)
    {
      v68 = *(v42 + 48);
      v121 = *(v32 + 48);
      v122 = v68;
      v107 = v36;
      v69 = *(v36 + 32);
      v69(v34, v30, v35);
      v70 = type metadata accessor for Date.ComponentsFormatStyle.Field();
      v71 = *(v70 - 8);
      (*(v71 + 32))(&v34[v121], &v30[v122], v70);
      v72 = *(v32 + 48);
      v69(v38, v34, v35);
      (*(v71 + 8))(&v34[v72], v70);
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160], MEMORY[0x1E696A158]);
      DiscreteFormatStyle<>.input(before:)();
      v74 = v73;
      (*(v107 + 8))(v38, v35);
      if (v74)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v30, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    a1 = v124;
  }

  SystemFormatStyle.DateOffset.unitsStyle(for:)(a1, v22);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v44 = v43;
  if ((*(*(v43 - 8) + 48))(v22, 1, v43) != 1)
  {
    v54 = *(v44 + 48);
    v120 = *(v44 + 64);
    v55 = v118;
    v115 = *(v118 + 48);
    v116 = v54;
    v117 = *(v118 + 64);
    v111 = v3;
    v56 = *(v121 + 32);
    v56(v25, v22, v122);
    v57 = type metadata accessor for Date.ComponentsFormatStyle.Field();
    v58 = *(v57 - 8);
    v59 = *(v58 + 32);
    v59(&v25[v115], &v116[v22], v57);
    v59(&v25[v117], (v22 + v120), v57);
    v60 = *(v55 + 48);
    v61 = *(v55 + 64);
    v62 = v119;
    v63 = v122;
    v56(v119, v25, v122);
    v64 = *(v58 + 8);
    v64(&v25[v61], v57);
    v64(&v25[v60], v57);
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8], MEMORY[0x1E696A198]);
    DiscreteFormatStyle<>.input(before:)();
    LOBYTE(v61) = v65;
    (*(v121 + 8))(v62, v63);
    if (v61)
    {
LABEL_10:
      v66 = type metadata accessor for Date();
      return (*(*(v66 - 8) + 56))(v123, 1, 1, v66);
    }

LABEL_12:
    v75 = v123;
    SystemFormatStyle.DateOffset.nextInputRoundingLower(for:)(v123);
    v51 = type metadata accessor for Date();
    v52 = *(*(v51 - 8) + 56);
    v53 = v75;
    return v52(v53, 0, 1, v51);
  }

  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v22, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v45);
  v46 = v120;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(a1, v120);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v48 = v47;
  if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v46, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v49);
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = v123;
    Date.init(timeIntervalSinceReferenceDate:)();
    v51 = type metadata accessor for Date();
    v52 = *(*(v51 - 8) + 56);
    v53 = v50;
    return v52(v53, 0, 1, v51);
  }

  v76 = *(v48 + 48);
  v77 = *(v48 + 64);
  v78 = v109;
  v79 = v110;
  v118 = *(v109 + 48);
  v119 = v76;
  v121 = *(v109 + 64);
  v122 = v77;
  v81 = v111 + 32;
  v80 = *(v111 + 32);
  v82 = v113;
  v80(v110, v46, v113);
  v83 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v84 = *(v83 - 8);
  v111 = v3;
  v85 = v84;
  v86 = *(v84 + 32);
  v86(&v79[v118], &v119[v46], v83);
  v86(&v79[v121], (v46 + v122), v83);
  v87 = *(v78 + 48);
  v88 = *(v78 + 64);
  v89 = v112;
  v80(v112, v79, v82);
  v90 = *(v85 + 8);
  v90(&v79[v88], v83);
  v90(&v79[v87], v83);
  v91 = v114;
  SystemFormatStyle.DateOffset.dateRange(for:)(v124, v114);
  v92 = v116;
  Date.ComponentsFormatStyle.input(before:)();
  outlined destroy of SystemFormatStyle.DateOffset(v91, type metadata accessor for Range<Date>);
  v93 = v117;
  v94 = (v81 - 24);
  if ((*(v115 + 48))(v92, 1, v117) == 1)
  {
    outlined destroy of SystemFormatStyle.DateOffset(v92, type metadata accessor for Range<Date>?);
    v95 = static Date.< infix(_:_:)();
    (*v94)(v89, v82);
    v96 = type metadata accessor for Date();
    v97 = *(v96 - 8);
    v98 = v97;
    if (v95)
    {
      v99 = v123;
      (*(v97 + 16))();
      return (*(v98 + 56))(v99, 0, 1, v96);
    }

    else
    {
      return (*(v97 + 56))(v123, 1, 1, v96);
    }
  }

  else
  {
    v100 = v92;
    v101 = v108;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v100, v108, type metadata accessor for Range<Date>);
    v102 = static Date.== infix(_:_:)();
    (*v94)(v89, v82);
    v103 = v101;
    v104 = v123;
    if (v102)
    {
      v103 = v101 + *(v93 + 36);
    }

    v105 = type metadata accessor for Date();
    v106 = *(v105 - 8);
    (*(v106 + 16))(v104, v103, v105);
    outlined destroy of SystemFormatStyle.DateOffset(v101, type metadata accessor for Range<Date>);
    return (*(v106 + 56))(v104, 0, 1, v105);
  }
}

uint64_t SystemFormatStyle.DateOffset.input(after:)@<X0>(void (**a1)(uint64_t, uint64_t, uint64_t, void *)@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  type metadata accessor for Range<Date>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>(0);
  v117 = v7;
  v115 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v108 = &v107 - v11;
  v12 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v120 = &v107 - v14;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v12);
  v109 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v107 - v16;
  v113 = type metadata accessor for Date.ComponentsFormatStyle();
  v111 = *(v113 - 8);
  v17 = MEMORY[0x1EEE9AC00](v113);
  v112 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v17);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v107 - v21;
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Duration.UnitsFormatStyle.Attributed, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v19);
  v118 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v107 - v24;
  v26 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v121 = *(v26 - 8);
  v122 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v119 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)(0);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v40 = *(v3 + v39[13]);
  v124 = a1;
  if ((v40 & 1) == 0 && *(v3 + v39[12]) != 1 || *(v3 + v39[11]) <= 1u)
  {
    SystemFormatStyle.DateOffset.timeStyle(for:)(a1, v30);
    type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)(0);
    v42 = v41;
    if ((*(*(v41 - 8) + 48))(v30, 1, v41) != 1)
    {
      v68 = *(v42 + 48);
      v121 = *(v32 + 48);
      v122 = v68;
      v107 = v36;
      v69 = *(v36 + 32);
      v69(v34, v30, v35);
      v70 = type metadata accessor for Date.ComponentsFormatStyle.Field();
      v71 = *(v70 - 8);
      (*(v71 + 32))(&v34[v121], &v30[v122], v70);
      v72 = *(v32 + 48);
      v69(v38, v34, v35);
      (*(v71 + 8))(&v34[v72], v70);
      Date.timeIntervalSince(_:)();
      static Duration.seconds(_:)();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160], MEMORY[0x1E696A158]);
      DiscreteFormatStyle<>.input(after:)();
      v74 = v73;
      (*(v107 + 8))(v38, v35);
      if (v74)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    outlined destroy of SystemFormatStyle.DateOffset(v30, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    a1 = v124;
  }

  SystemFormatStyle.DateOffset.unitsStyle(for:)(a1, v22);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  v44 = v43;
  if ((*(*(v43 - 8) + 48))(v22, 1, v43) != 1)
  {
    v54 = *(v44 + 48);
    v120 = *(v44 + 64);
    v55 = v118;
    v115 = *(v118 + 48);
    v116 = v54;
    v117 = *(v118 + 64);
    v111 = v3;
    v56 = *(v121 + 32);
    v56(v25, v22, v122);
    v57 = type metadata accessor for Date.ComponentsFormatStyle.Field();
    v58 = *(v57 - 8);
    v59 = *(v58 + 32);
    v59(&v25[v115], &v116[v22], v57);
    v59(&v25[v117], (v22 + v120), v57);
    v60 = *(v55 + 48);
    v61 = *(v55 + 64);
    v62 = v119;
    v63 = v122;
    v56(v119, v25, v122);
    v64 = *(v58 + 8);
    v64(&v25[v61], v57);
    v64(&v25[v60], v57);
    Date.timeIntervalSince(_:)();
    static Duration.seconds(_:)();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8], MEMORY[0x1E696A198]);
    DiscreteFormatStyle<>.input(after:)();
    LOBYTE(v61) = v65;
    (*(v121 + 8))(v62, v63);
    if (v61)
    {
LABEL_10:
      v66 = type metadata accessor for Date();
      return (*(*(v66 - 8) + 56))(v123, 1, 1, v66);
    }

LABEL_12:
    v75 = v123;
    SystemFormatStyle.DateOffset.nextInputRoundingHigher(for:)(v123);
    v51 = type metadata accessor for Date();
    v52 = *(*(v51 - 8) + 56);
    v53 = v75;
    return v52(v53, 0, 1, v51);
  }

  outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v22, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8], v45);
  v46 = v120;
  SystemFormatStyle.DateOffset.componentsStyle(for:)(a1, v120);
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  v48 = v47;
  if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
  {
    outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v46, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0], v49);
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = v123;
    Date.init(timeIntervalSinceReferenceDate:)();
    v51 = type metadata accessor for Date();
    v52 = *(*(v51 - 8) + 56);
    v53 = v50;
    return v52(v53, 0, 1, v51);
  }

  v76 = *(v48 + 48);
  v77 = *(v48 + 64);
  v78 = v109;
  v79 = v110;
  v118 = *(v109 + 48);
  v119 = v76;
  v121 = *(v109 + 64);
  v122 = v77;
  v81 = v111 + 32;
  v80 = *(v111 + 32);
  v82 = v113;
  v80(v110, v46, v113);
  v83 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v84 = *(v83 - 8);
  v111 = v3;
  v85 = v84;
  v86 = *(v84 + 32);
  v86(&v79[v118], &v119[v46], v83);
  v86(&v79[v121], (v46 + v122), v83);
  v87 = *(v78 + 48);
  v88 = *(v78 + 64);
  v89 = v112;
  v80(v112, v79, v82);
  v90 = *(v85 + 8);
  v90(&v79[v88], v83);
  v90(&v79[v87], v83);
  v91 = v114;
  SystemFormatStyle.DateOffset.dateRange(for:)(v124, v114);
  v92 = v116;
  Date.ComponentsFormatStyle.input(after:)();
  outlined destroy of SystemFormatStyle.DateOffset(v91, type metadata accessor for Range<Date>);
  v93 = v117;
  v94 = (v81 - 24);
  if ((*(v115 + 48))(v92, 1, v117) == 1)
  {
    outlined destroy of SystemFormatStyle.DateOffset(v92, type metadata accessor for Range<Date>?);
    v95 = static Date.< infix(_:_:)();
    (*v94)(v89, v82);
    v96 = type metadata accessor for Date();
    v97 = *(v96 - 8);
    v98 = v97;
    if (v95)
    {
      v99 = v123;
      (*(v97 + 16))();
      return (*(v98 + 56))(v99, 0, 1, v96);
    }

    else
    {
      return (*(v97 + 56))(v123, 1, 1, v96);
    }
  }

  else
  {
    v100 = v92;
    v101 = v108;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v100, v108, type metadata accessor for Range<Date>);
    v102 = static Date.== infix(_:_:)();
    (*v94)(v89, v82);
    v103 = v101;
    v104 = v123;
    if (v102)
    {
      v103 = v101 + *(v93 + 36);
    }

    v105 = type metadata accessor for Date();
    v106 = *(v105 - 8);
    (*(v106 + 16))(v104, v103, v105);
    outlined destroy of SystemFormatStyle.DateOffset(v101, type metadata accessor for Range<Date>);
    return (*(v106 + 56))(v104, 0, 1, v105);
  }
}

void SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter()
{
  v1 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v2 = v1;
  v3 = *(v0 + v1[8]);
  v4 = *(v0 + v1[6]);
  v5 = v4;
  if (v3 < 3)
  {
    goto LABEL_8;
  }

  v6 = v4 + 2;
  v7 = __OFADD__(v4, 2);
  if (__OFADD__(v4, 2))
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = v6 - v3;
  if (__OFSUB__(v6, v3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 < 1)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v5 != 2 || (v8 = *(v0 + v1[5]), type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]), type metadata accessor for Date.ComponentsFormatStyle.Field(), v9 = swift_allocObject(), *(v9 + 16) = xmmword_18DDAB4C0, static Date.ComponentsFormatStyle.Field.minute.getter(), static Date.ComponentsFormatStyle.Field.second.getter(), v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v9), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v8, v10), LOBYTE(v8) = v11, , (v8 & 1) == 0))
  {
    if (v3 < 3)
    {
LABEL_17:
      if (v4 == 3)
      {
        v12 = *(v0 + v2[5]);
        type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
        type metadata accessor for Date.ComponentsFormatStyle.Field();
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_18DDAF080;
        static Date.ComponentsFormatStyle.Style.spellOut.getter();
        static Date.ComponentsFormatStyle.Field.minute.getter();
        static Date.ComponentsFormatStyle.Field.second.getter();
        v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v13);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v12, v14);
      }

      return;
    }

    v6 = v4 + 2;
    v7 = __OFADD__(v4, 2);
LABEL_14:
    if (!v7)
    {
      v4 = v6 - v3;
      if (!__OFSUB__(v6, v3))
      {
        if (v4 < 1)
        {
          return;
        }

        goto LABEL_17;
      }

LABEL_23:
      __break(1u);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

uint64_t SystemFormatStyle.DateOffset.fieldsToDisplay(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SystemFormatStyle.DateOffset.applicableFields(for:)(a1);
  v11 = v10;
  if (v8 == v9 >> 1)
  {
    if (one-time initialization token for orderedFields != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v12 = static Date.ComponentsFormatStyle.Field.orderedFields;
      v13 = *(static Date.ComponentsFormatStyle.Field.orderedFields + 16);
      if (!v13)
      {
        break;
      }

      v25 = v11;
      v14 = v1[*(type metadata accessor for SystemFormatStyle.DateOffset(0) + 44)];
      v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v11 = v4 + 8;
      while (v13 <= *(v12 + 16))
      {
        --v13;
        (*(v4 + 16))(v6, v15 + *(v4 + 72) * v13, v3);
        v1 = v6;
        Date.ComponentsFormatStyle.Field.magnitude.getter(&v26);
        (*(v4 + 8))(v6, v3);
        if (v26 >= 1.0 / dbl_18DDCF488[v14] || !v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

LABEL_16:
    result = swift_unknownObjectRelease();
    if (*(v12 + 16) > v13)
    {

      return v12;
    }

    __break(1u);
    goto LABEL_22;
  }

  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v20 = *&v1[*(v19 + 32)];
  result = *&v1[*(v19 + 24)];
  if (v20 < 3)
  {
    return specialized Collection.prefix(_:)(result, v11, v16, v17, v18);
  }

  v22 = result + 2;
  if (__OFADD__(result, 2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = __OFSUB__(v22, v20);
  v24 = v22 - v20;
  if (!v23)
  {
    if (v24 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v24;
    }

    return specialized Collection.prefix(_:)(result, v11, v16, v17, v18);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized getter of fieldsToDisplay #1 in SystemFormatStyle.DateOffset.componentsStyle(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = SystemFormatStyle.DateOffset.fieldsToDisplay(for:)(a3);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    swift_beginAccess();
    *a1 = v5;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

void SystemFormatStyle.DateOffset.applicableFields(for:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for SystemFormatStyle.DateOffset(0) + 20));
  v16 = v1;

  v4 = specialized _NativeSet.filter(_:)(partial apply for closure #1 in SystemFormatStyle.DateOffset.applicableFields(for:), v15, v3);
  v5 = v4[2];
  if (!v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v13[4] = 0;
  v14 = a1;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v5, 0);
  v7 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
  specialized Sequence._copySequenceContents(initializing:)(&v17, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v5, v4);
  v9 = v8;
  v10 = v17;

  outlined consume of Set<EventID>.Iterator._Variant(v10);
  if (v9 == v5)
  {
    a1 = v14;
LABEL_5:
    v17 = v6;
    specialized MutableCollection<>.sort(by:)(&v17);

    v12 = v17;
    MEMORY[0x1EEE9AC00](v11);
    v13[2] = v1;
    v13[3] = a1;
    specialized Collection.firstIndex(where:)(partial apply for closure #3 in SystemFormatStyle.DateOffset.applicableFields(for:), v13, v12);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    return;
  }

  __break(1u);

  __break(1u);
}

BOOL closure #1 in SystemFormatStyle.DateOffset.applicableFields(for:)(uint64_t a1, uint64_t a2)
{
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v5);
  v3 = v5;
  return v3 >= 1.0 / dbl_18DDCF488[*(a2 + *(type metadata accessor for SystemFormatStyle.DateOffset(0) + 44))];
}

uint64_t closure #3 in SystemFormatStyle.DateOffset.applicableFields(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v4 = type metadata accessor for DateComponents();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  SystemFormatStyle.DateOffset.component(for:)(a1, v10);
  v19[0] = *(type metadata accessor for SystemFormatStyle.DateOffset(0) + 40);
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18DDA6EB0;
  v13 = (*(v8 + 16))(v12 + v11, v10, v7);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v12, v13);
  swift_setDeallocating();
  v14 = *(v8 + 8);
  v14(v12 + v11, v7);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v15 = DateComponents.value(for:)();
  v17 = v16;
  (*(v20 + 8))(v6, v21);
  v14(v10, v7);
  return (v15 != 0) & ~v17;
}