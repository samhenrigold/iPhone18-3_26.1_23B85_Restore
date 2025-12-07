uint64_t type metadata completion function for InterpolatedShapeStyle(uint64_t a1)
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

uint64_t *initializeBufferWithCopyOfBuffer for InterpolatedShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 3;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v12 = v8 | *(v4 + 80) & 0xFC;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 3) + 16) & ~(v12 | 3)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFFCLL) = *((v10 + v18) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

uint64_t initializeWithCopy for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *((*(v9 + 48) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 48) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithCopy for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *((*(v9 + 40) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 40) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t initializeWithTake for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *((*(v9 + 32) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 32) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithTake for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *((*(v9 + 24) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 24) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for InterpolatedShapeStyle(int *a1, unsigned int a2, uint64_t a3)
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

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFFC;
  if ((v12 & 0xFFFFFFFC) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
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
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))(a1);
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for InterpolatedShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
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

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Int _UpdateFidelity.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type _UpdateFidelity and conformance _UpdateFidelity()
{
  if (!lazy protocol witness table cache variable for type _UpdateFidelity and conformance _UpdateFidelity)
  {
    swift_getWitnessTable(protocol conformance descriptor for _UpdateFidelity, &type metadata for _UpdateFidelity, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _UpdateFidelity and conformance _UpdateFidelity);
  }
}

double EnvironmentValues.defaultForegroundStyle.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (v2[1])
  {

    a1(v3);
  }

  else if (a2(v3))
  {
  }

  return result;
}

uint64_t _ForegroundStyleModifier2.init(primary:secondary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for _ForegroundStyleModifier2(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t View.foregroundStyle<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a6;
  v31 = a7;
  v32 = a1;
  v34 = a9;
  v35 = a3;
  v33 = a2;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = v20;
  v37[1] = v21;
  v37[2] = v22;
  v37[3] = v23;
  v24 = type metadata accessor for _ForegroundStyleModifier2(0, v37);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v30 - v27;
  (*(v16 + 16))(v19, v32, a4, v26);
  (*(v12 + 16))(v14, v33, a5);
  _ForegroundStyleModifier2.init(primary:secondary:)(v19, v14, a4, a5, v31, a8, v28);
  View.modifier<A>(_:)();
  return (*(v25 + 8))(v28, v24);
}

uint64_t View.foregroundStyle<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return View.foregroundStyle<A, B, C>(_:_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

{
  v51 = a8;
  v49 = a9;
  v50 = a4;
  v47 = a2;
  v48 = a3;
  v41 = a12;
  v15 = *(a7 - 8);
  v45 = a1;
  v46 = v15;
  v42 = a10;
  v43 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[0] = v27;
  v52[1] = v28;
  v52[2] = v29;
  v52[3] = v30;
  v52[4] = v32;
  v52[5] = v31;
  v33 = type metadata accessor for _ForegroundStyleModifier3(0, v52);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v40 - v36;
  (*(v23 + 16))(v26, v45, a5, v35);
  (*(v18 + 16))(v21, v47, a6);
  v38 = v44;
  (*(v46 + 16))(v44, v48, a7);
  _ForegroundStyleModifier3.init(primary:secondary:tertiary:)(v26, v21, v38, a5, a6, a7, v42, v43, v37, v41);
  View.modifier<A>(_:)();
  return (*(v34 + 8))(v37, v33);
}

uint64_t _ForegroundStyleModifier3.init(primary:secondary:tertiary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v18 = type metadata accessor for _ForegroundStyleModifier3(0, v20);
  (*(*(a5 - 8) + 32))(a9 + *(v18 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

void (*EnvironmentValues.foregroundStyle.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
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
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.foregroundStyle.modify;
}

void key path getter for EnvironmentValues.foregroundStyle : EnvironmentValues(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  v7 = *a1;
  if (a1[1])
  {

    v9 = a2(v7);
  }

  else
  {
    v10 = (a3)(*a1, a5, a6, a2);
    if (v10)
    {
      v9 = *(v10 + 72);
    }

    else
    {
      v9 = 0;
    }
  }

  *a4 = v9;
}

double key path setter for EnvironmentValues.foregroundStyle : EnvironmentValues(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t *), void (*a6)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = *a2;

  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }

  return result;
}

void (*EnvironmentValues.defaultForegroundStyle.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
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
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022DefaultForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.defaultForegroundStyle.modify;
}

void EnvironmentValues.foregroundStyle.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t *), void (*a4)(uint64_t, void, __n128))
{
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[5];
  v9 = (*a1)[3];
  if (a2)
  {
    swift_retain_n();
    swift_retain_n();
    a3(v9, v7, v6 + 1);

    if (v8)
    {
      (a4)(v6[4], *v6[3]);
    }
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    a3(v9, v7, v6 + 2);

    if (v8)
    {
      (a4)(v6[4], *v6[3]);
    }
  }

  free(v6);
}

double specialized implicit closure #1 in _GraphInputs.foregroundStyle.getter@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v7[0] = v4;
  v7[1] = v3;

  key path getter for EnvironmentValues.foregroundStyle : EnvironmentValues(v7, _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5, _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5, a2, v5, 0);

  return result;
}

double EnvironmentValues._effectiveForegroundStyle.getter()
{
  if (!EnvironmentValues.currentForegroundStyle.getter())
  {
    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }
  }

  return result;
}

uint64_t _DefaultForegroundStyleModifier.style.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _DefaultForegroundStyleModifier.style.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ForegroundStyleModifier3<A, B, C>.ForegroundStyleEnvironment(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ForegroundStyleModifier3<A, B, C>.ForegroundStyleEnvironment, a1);

  return static AsyncAttribute.flags.getter();
}

void *static ForegroundStyle._makeView<A>(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v11, v9, &type metadata for ForegroundStyle, a3, &protocol witness table for ForegroundStyle, a4, a5);
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShapeStyleBox<ForegroundStyle>(0, a2, a3, a4);
  result = swift_allocObject();
  static ForegroundStyle.shared = result;
  return result;
}

void specialized _ImplicitShapeStyle._apply(to:)(uint64_t a1)
{
  if (*(a1 + 24) == 3)
  {
    if (*a1 == 1)
    {
      v2 = EnvironmentValues.effectiveBackgroundStyle.getter();
    }

    else
    {
      if (*(a1 + 64))
      {
        v2 = *(a1 + 64);
      }

      else
      {
        v3 = EnvironmentValues.currentForegroundStyle.getter();
        if (v3)
        {
          v2 = v3;
        }

        else
        {
          if (one-time initialization token for sharedPrimary != -1)
          {
            swift_once();
          }

          v2 = static HierarchicalShapeStyle.sharedPrimary;
        }
      }
    }

    outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v2;
    *(a1 + 40) = 2;
  }

  else
  {

    specialized ForegroundStyle._apply(to:)(a1);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for _ForegroundStyleModifier3(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = a3[4];
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  v11 = *(v7 + 64);
  v12 = *(v6 - 8);
  v13 = *(v12 + 80);
  v14 = v11 + v13;
  v15 = ((v11 + v13 + v10) & ~v13) + *(v12 + 64);
  v16 = (*(v7 + 80) | *(v4 + 80) | *(v12 + 80));
  if (v16 <= 7 && v15 <= 0x18 && ((*(v7 + 80) | *(v4 + 80) | *(v12 + 80)) & 0x100000) == 0)
  {
    v20 = ~v8;
    v21 = ~v13;
    v25 = a3[3];
    (*(v4 + 16))(a1);
    v23 = (a2 + v9) & v20;
    (*(v7 + 16))((v3 + v9) & v20, v23, v25);
    (*(v12 + 16))((((v3 + v9) & v20) + v14) & v21, (v23 + v14) & v21, v6);
  }

  else
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + ((v16 + 16) & ~v16));
  }

  return v3;
}

uint64_t initializeWithCopy for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 16))((*(v8 + 48) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 48) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithCopy for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 24))((*(v8 + 40) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 40) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t initializeWithTake for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 32))((*(v8 + 32) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 32) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithTake for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 40))((*(v8 + 24) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 24) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _ForegroundStyleModifier3(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *storeEnumTagSinglePayload for _ForegroundStyleModifier3(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

void type metadata accessor for ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>)
  {
    v4[6] = v0;
    v4[7] = v1;
    v4[0] = &type metadata for AnyShapeStyle;
    v4[1] = &type metadata for AnyShapeStyle;
    v4[2] = &type metadata for AnyShapeStyle;
    v4[3] = &protocol witness table for AnyShapeStyle;
    v4[4] = &protocol witness table for AnyShapeStyle;
    v4[5] = &protocol witness table for AnyShapeStyle;
    v2 = type metadata accessor for ShapeStyleTriple(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>);
    }
  }
}

void type metadata accessor for ShapeStyleBox<ForegroundStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ShapeStyleBox<ForegroundStyle>)
  {
    v4 = type metadata accessor for ShapeStyleBox(0, &type metadata for ForegroundStyle, &protocol witness table for ForegroundStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyleBox<ForegroundStyle>);
    }
  }
}

uint64_t static ShapeStyle._apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  if (result != MEMORY[0x1E69E73E0])
  {
    v5 = result;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 40))(a1, v5, AssociatedConformanceWitness);
  }

  return result;
}

{
  return static ShapeStyle._apply(to:)(a1, a2, a3);
}

uint64_t ShapeStyle.fallbackColor(in:level:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v17[27] = 0;
  *&v13 = 0;
  v12 = a2;
  BYTE8(v13) = 2;
  *&v14 = 0;
  BYTE8(v14) = 5;
  *&v15 = v7;
  *(&v15 + 1) = v6;
  v16 = 0u;
  memset(v17, 0, 24);
  v17[24] = 1;
  *&v17[25] = 768;
  v8 = *(a4 + 32);

  v8(&v12, a3, a4);
  v9 = v14;
  v10 = BYTE8(v14);
  v18[4] = v16;
  v19[0] = *v17;
  *(v19 + 12) = *&v17[12];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  outlined copy of _ShapeStyle_Shape.Result(v14, BYTE8(v14));
  outlined destroy of _ShapeStyle_Shape(v18);
  if (v10 != 3)
  {
    outlined consume of _ShapeStyle_Shape.Result(v9, v10);
    return 0;
  }

  return v9;
}

uint64_t _ShapeStyle_Shape.applyingOpacity(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1 >= 1)
  {
    v6 = *(v2 + 56);
    v10[0] = *(v2 + 48);
    v10[1] = v6;
    v7 = *(*a2 + 168);

    v8 = v7(a1, v10);

    type metadata accessor for ColorBox<Color.OpacityColor>(0);
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = v8;
  }

  return v4;
}

float _ShapeStyle_Shape.opacity(for:at:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  v9[0] = *(v2 + 48);
  v9[1] = v5;
  v6 = *(*a1 + 168);

  v7 = v6(a2, v9);

  return v7;
}

void *static ShapeStyle._makeView<A>(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v13, v11, a3, a4, a5, a6, a7);
}

void _ShapeStyle_Shape.applyingOpacity(at:to:)(Swift::Int a1)
{
  if (a1 >= 1)
  {
    _ShapeStyle_Shape.opacity(at:)(a1);
  }
}

__n128 _ShapeStyle_Shape.init(operation:result:environment:foregroundStyle:bounds:role:substrate:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *a6;
  v13 = *a7;
  *(a8 + 107) = 0;
  *a8 = *a1;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = v10;
  *(a8 + 40) = v11;
  *(a8 + 48) = *a3;
  *(a8 + 64) = a4;
  result = *a5;
  v15 = *(a5 + 16);
  *(a8 + 104) = *(a5 + 32);
  *(a8 + 88) = v15;
  *(a8 + 72) = result;
  *(a8 + 105) = v12;
  *(a8 + 106) = v13;
  return result;
}

uint64_t _ShapeStyle_Shape.currentForegroundStyle.getter()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    v1 = EnvironmentValues.currentForegroundStyle.getter();
  }

  return v1;
}

BOOL ShapeStyle.isMultiLevel(in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v17[27] = 0;
  *&v13 = 0;
  v12 = 0uLL;
  BYTE8(v13) = 5;
  *&v14 = 0;
  BYTE8(v14) = 5;
  *&v15 = v6;
  *(&v15 + 1) = v5;
  v16 = 0u;
  memset(v17, 0, 24);
  v17[24] = 1;
  *&v17[25] = 768;
  v7 = *(a3 + 32);

  v7(&v12, a2, a3);
  v8 = BYTE8(v14) == 4 && (v14 & 1) != 0;
  v10[4] = v16;
  v11[0] = *v17;
  *(v11 + 12) = *&v17[12];
  v10[0] = v12;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  outlined destroy of _ShapeStyle_Shape(v10);
  return v8;
}

void *_ShapeStyle_Shape.effectiveForegroundStyle.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = EnvironmentValues.currentForegroundStyle.getter();
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      if (one-time initialization token for sharedPrimary != -1)
      {
        swift_once();
      }

      v1 = static HierarchicalShapeStyle.sharedPrimary;
    }
  }

  return v1;
}

uint64_t *ShapeStyle.resolveBackgroundMaterial(in:level:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2;
  if (a2 + 1 < a2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = *result;
  v8 = result[1];
  v30[27] = 0;
  *&v25 = 1;
  *(&v25 + 1) = a2;
  *&v26 = a2 + 1;
  BYTE8(v26) = 1;
  *&v27 = 0;
  BYTE8(v27) = 5;
  *&v28 = v9;
  *(&v28 + 1) = v8;
  v29 = 0u;
  memset(v30, 0, 24);
  v30[24] = 1;
  *&v30[25] = 768;
  v10 = *(a4 + 32);

  v10(&v25, a3, a4);
  if (BYTE8(v27) == 1)
  {
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v24 = v11;
  LOBYTE(v22[0]) = 1;
  _ShapeStyle_Pack.subscript.getter(v22, v5, v16);

  v20[3] = v28;
  v20[4] = v29;
  v21[0] = *v30;
  *(v21 + 12) = *&v30[12];
  v20[0] = v25;
  v20[1] = v26;
  v20[2] = v27;
  outlined destroy of _ShapeStyle_Shape(v20);
  v22[4] = v16[4];
  v22[5] = v17;
  v22[6] = v18;
  v23 = v19;
  v22[0] = v16[0];
  v22[1] = v16[1];
  v22[2] = v16[2];
  v22[3] = v16[3];
  if (BYTE5(v17) == 3)
  {
    v13 = *(&v22[0] + 1);
    v12 = *&v22[0];
    outlined copy of Material.ID(*&v22[0], BYTE8(v22[0]));
    result = outlined destroy of _ShapeStyle_Pack.Style(v22);
    v14 = v13 & 0xFFFFFFFF000000FFLL;
  }

  else
  {
    result = outlined destroy of _ShapeStyle_Pack.Style(v22);
    v12 = 0;
    v14 = 255;
  }

  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t *ShapeStyle.resolveGradient(in:level:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = a2;
  if (a2 + 1 < a2)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = *result;
  v9 = result[1];
  v59[27] = 0;
  *&v54 = 0;
  *(&v54 + 1) = a2;
  *&v55 = a2 + 1;
  BYTE8(v55) = 1;
  *&v56 = 0;
  BYTE8(v56) = 5;
  *&v57 = v10;
  *(&v57 + 1) = v9;
  v58 = 0u;
  memset(v59, 0, 24);
  v59[24] = 1;
  *&v59[25] = 768;
  v11 = *(a4 + 32);

  v11(&v54, a3, a4);
  if (BYTE8(v56) == 1)
  {
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v53 = v12;
  LOBYTE(v36) = 0;
  _ShapeStyle_Pack.subscript.getter(&v36, v6, v42);

  if (v51 == 1)
  {
    v13 = v42[0];
    v26 = v42[2];
    v27 = v42[1];
    v24 = v43;
    v25 = v42[3];
    v23 = v44;
    v14 = v45;
    v15 = v46;
    v16 = v47;
    v17 = v48;
    v18 = v49 | (v50 << 32);
    v19 = *(*v42[0] + 112);

    v19(&v28, v20);
    if (v28)
    {
      v32 = v28;
      v33 = v29;
      v34 = v30;
      v35 = v31 & 1;
      ResolvedGradient.multiplyOpacity(by:)(by);
      outlined consume of _ShapeStyle_Pack.Fill(v13, v27, v26, v25, v24, v23, v14, v15, v16, v17, v18, 1u);
      outlined destroy of _ShapeStyle_Pack.Style(v42);
      v40 = v58;
      v41[0] = *v59;
      *(v41 + 12) = *&v59[12];
      v36 = v54;
      v37 = v55;
      v38 = v56;
      v39 = v57;
      result = outlined destroy of _ShapeStyle_Shape(&v36);
      v21 = v35;
      v22 = v33 | (v34 << 32);
      *a5 = v32;
      *(a5 + 8) = v22;
      *(a5 + 16) = v21;
      return result;
    }

    v40 = v58;
    v41[0] = *v59;
    *(v41 + 12) = *&v59[12];
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    outlined destroy of _ShapeStyle_Shape(&v36);
    outlined consume of _ShapeStyle_Pack.Fill(v13, v27, v26, v25, v24, v23, v14, v15, v16, v17, v18, 1u);
    result = outlined destroy of _ShapeStyle_Pack.Style(v42);
  }

  else
  {
    outlined destroy of _ShapeStyle_Pack.Style(v42);
    v40 = v58;
    v41[0] = *v59;
    *(v41 + 12) = *&v59[12];
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    result = outlined destroy of _ShapeStyle_Shape(&v36);
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

SwiftUI::_ShapeStyle_Name_optional __swiftcall _ShapeStyle_Name.init(rawValue:)(SwiftUI::_ShapeStyle_Name_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI__ShapeStyle_Name_unknownDefault)
  {
    value = SwiftUI__ShapeStyle_Name_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

__n128 _ShapeStyle_Shape.operation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 _ShapeStyle_Shape.operation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

double _ShapeStyle_Shape.result.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  v3 = *(v1 + 40);
  *(a1 + 8) = v3;
  return outlined copy of _ShapeStyle_Shape.Result(v2, v3);
}

void _ShapeStyle_Shape.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of _ShapeStyle_Shape.Result(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

double _ShapeStyle_Shape.environment.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

void _ShapeStyle_Shape.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

__n128 _ShapeStyle_Shape.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 _ShapeStyle_Shape.bounds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 104) = *(a1 + 32);
  return result;
}

void type metadata accessor for ColorBox<Color.OpacityColor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ColorBox<Color.OpacityColor>)
  {
    lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor();
    v4 = type metadata accessor for ColorBox(a1, &type metadata for Color.OpacityColor, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>);
    }
  }
}

Swift::Int _ShapeStyle_ShapeType.Operation.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type _ShapeStyle_Name and conformance _ShapeStyle_Name()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Name and conformance _ShapeStyle_Name)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Name, &type metadata for _ShapeStyle_Name, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Name and conformance _ShapeStyle_Name);
  }
}

void lazy protocol witness table accessor for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Shape.RecursiveStyles, &type metadata for _ShapeStyle_Shape.RecursiveStyles, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Shape.RecursiveStyles, &type metadata for _ShapeStyle_Shape.RecursiveStyles, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Shape.RecursiveStyles, &type metadata for _ShapeStyle_Shape.RecursiveStyles, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Shape.RecursiveStyles, &type metadata for _ShapeStyle_Shape.RecursiveStyles, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Shape.RecursiveStyles and conformance _ShapeStyle_Shape.RecursiveStyles);
  }
}

void lazy protocol witness table accessor for type _ShapeStyle_ShapeType.Operation and conformance _ShapeStyle_ShapeType.Operation()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ShapeType.Operation and conformance _ShapeStyle_ShapeType.Operation)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_ShapeType.Operation, &type metadata for _ShapeStyle_ShapeType.Operation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_ShapeType.Operation and conformance _ShapeStyle_ShapeType.Operation);
  }
}

uint64_t assignWithCopy for _ShapeStyle_Shape(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  v5 = *(a2 + 4);
  v6 = *(a2 + 40);
  outlined copy of _ShapeStyle_Shape.Result(v5, v6);
  v7 = *(a1 + 32);
  *(a1 + 32) = v5;
  v8 = *(a1 + 40);
  *(a1 + 40) = v6;
  outlined consume of _ShapeStyle_Shape.Result(v7, v8);
  *(a1 + 48) = *(a2 + 6);

  *(a1 + 56) = *(a2 + 7);

  *(a1 + 64) = *(a2 + 8);

  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Shape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
  v4 = *(a2 + 40);
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a1 + 40);
  *(a1 + 40) = v4;
  outlined consume of _ShapeStyle_Shape.Result(v5, v6);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Shape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 108))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Shape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Shape.Operation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Shape.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_Shape.Operation(uint64_t a1)
{
  if (*(a1 + 24) <= 4u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Shape.Operation(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Shape.Result(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _ShapeStyle_Shape.Result(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _ShapeStyle_Shape.Result(v5, v6);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Shape.Result(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of _ShapeStyle_Shape.Result(v4, v5);
  return a1;
}

uint64_t getEnumTag for _ShapeStyle_Shape.Result(uint64_t a1)
{
  if (*(a1 + 8) <= 4u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Shape.Result(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_ShapeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_ShapeType.Result(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v48 - v10;
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v53 = (&v48 - v15);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v51 = a2;
    v52 = v13;
    v16 = 0;
    v48 = a1;
    v49 = v6;
    v19 = *(a1 + 64);
    v18 = a1 + 64;
    v17 = v19;
    v20 = 1 << *(v18 - 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;
    v54 = v6 + 16;
    v55 = (v6 + 32);
    v50 = (v6 + 8);
    while (v22)
    {
      v56 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v16 << 6);
      v25 = v52;
LABEL_16:
      v30 = *(*(v48 + 48) + 8 * v24);
      v31 = v57;
      (*(v6 + 16))(v57, *(v48 + 56) + *(v6 + 72) * v24, v5, v14);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
      v33 = v32;
      v34 = *(v32 + 48);
      *v25 = v30;
      (*(v6 + 32))(&v25[v34], v31, v5);
      (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
      v35 = v30;
LABEL_17:
      v36 = v53;
      outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(v25, v53);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
      if ((*(*(v33 - 8) + 48))(v36, 1, v33) == 1)
      {
        return;
      }

      v37 = *v36;
      (*v55)(v8, v36 + *(v33 + 48), v5);
      v38 = v51;
      v39 = v8;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        (*v50)(v39, v5);
        return;
      }

      v6 = v49;
      v43 = *(v38 + 56) + *(v49 + 72) * v40;
      v44 = v57;
      (*(v49 + 16))(v57, v43, v5);
      lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance RangeSet<A>, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, MEMORY[0x1E69E7BE0], MEMORY[0x1E69E7BF0]);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v6 + 8);
      v46(v44, v5);
      v46(v39, v5);
      v8 = v39;
      v22 = v56;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v23 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v23;
    }

    v27 = v26 - 1;
    v25 = v52;
    while (1)
    {
      v28 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
        v33 = v47;
        (*(*(v47 - 8) + 56))(v25, 1, 1, v47);
        v56 = 0;
        v16 = v27;
        goto LABEL_17;
      }

      v29 = *(v18 + 8 * v28);
      ++v16;
      if (v29)
      {
        v56 = (v29 - 1) & v29;
        v24 = __clz(__rbit64(v29)) | (v28 << 6);
        v16 = v28;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI7SpacingV3KeyV_AE5ValueOTt1g5(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56) + 40 * v12;
    v14 = *(v13 + 32);
    v15 = v14 == 255;
    if (v14 == 255)
    {
      return v15;
    }

    v22 = *(v13 + 16);
    v23 = *v13;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v16 & 1) == 0)
    {
      return v15;
    }

    v17 = *(a2 + 56) + 40 * result;
    v18 = *v17;
    if (*(v17 + 32))
    {
      v19 = vceqq_f64(v23, v18);
      v20 = vceqq_f64(v22, *(v17 + 16));
      if (*(v17 + 32) == 1)
      {
        if (v14 != 1)
        {
          return v15;
        }
      }

      else if (v14 != 2)
      {
        return v15;
      }

      if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(v19, v20), xmmword_18DDA9F30)) & 0xF) != 0)
      {
        return v15;
      }
    }

    else
    {
      if (v14)
      {
        v21 = 0;
      }

      else
      {
        v21 = v23.f64[0] == v18.f64[0];
      }

      if (!v21)
      {
        return v15;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v19 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v20 = (v4 + 63) >> 6;
    while (v6)
    {
      v7 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v10 = v7 | (v3 << 6);
      v11 = *(a1 + 48) + 16 * v10;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(*(a1 + 56) + 8 * v10);
      outlined copy of AttributedString.AnyAttribute(*v11, v13);

      if (!v14)
      {
        return;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      v16 = v15;
      outlined consume of AttributedString.AnyAttribute(v12, v13);
      if ((v16 & 1) == 0)
      {

        return;
      }

      v18 = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v17, v14);

      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v3 >= v20)
      {
        return;
      }

      v9 = *(v19 + 8 * v3);
      ++v8;
      if (v9)
      {
        v7 = __clz(__rbit64(v9));
        v6 = (v9 - 1) & v9;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 4 * v12);

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ12CoreGraphics7CGFloatV_SiTt1g5(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI11ResolvedIDs33_04178B540DC3B0BFBD7679A049CE48C7LLV3KeyO_AC9SeedValueVyAC14GlassContainerO5EntryV8StableIDVGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v29 = result + 64;
  v30 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v28 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(result + 48) + 40 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(result + 56) + 16 * v10;
    v18 = *v17;
    v19 = *(v17 + 8);
    outlined copy of ResolvedIDs.Key(*v11, v13, v14, v15, *(v11 + 32));
    v20 = v16 > 0xFB;
    if (v16 <= 0xFB)
    {
      v32[0] = v12;
      v32[1] = v13;
      v32[2] = v14;
      v32[3] = v15;
      v33 = v16;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
      v23 = v22;
      outlined destroy of ResolvedIDs.Key(v32);
      if (v23)
      {
        v24 = *(a2 + 56) + 16 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v25 == v18 && v26 == v19;
        result = v30;
        v6 = v31;
        if (v27)
        {
          continue;
        }
      }
    }

    return v20;
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v28)
    {
      return 1;
    }

    v9 = *(v29 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void AttributedTextFormatting.Constraints.constrain(_:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v35 = a2;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v50 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v35 - v6;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v48 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v35 - v9;
  v46 = type metadata accessor for AttributeContainer();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v14 = v3[1];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v17 = *(v15 + 16);
  v51 = v14;
  v43 = v17;
  if (v17)
  {
    v18 = v15 + 32;
    v41 = (v10 + 32);
    v40 = (v8 + 8);
    v39 = (v10 + 16);
    v38 = (v5 + 16);
    v37 = (v5 + 8);
    v36 = (v10 + 8);

    v19 = 0;
    v42 = v15;
    v20 = v46;
    while (v19 < *(v15 + 16))
    {
      v52 = v19 + 1;
      outlined init with copy of AnyAttributedTextValueConstraint(v18, v57);
      v21 = v45;
      (*v41)(v45, v54, v20);

      v22 = v51;

      v23 = v47;
      _ss8RangeSetV_6withinAByxGqd___qd_0_tc7ElementQyd__RszSTRd__SlRd_0_5IndexQyd_0_AFRSr0_lufC7SwiftUI24AttributedTextFormattingO11ConstraintsVAGV_SNyANGAMTt2B5(v19, v19, v15, v22);
      v55 = v15;
      v56 = v22;
      lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
      v24 = v49;
      Collection.subscript.getter();
      (*v40)(v23, v48);
      v53 = v18;
      v25 = *v39;
      (*v39)(v13, v21, v20);
      v26 = v16;
      v27 = v44;
      v28 = v50;
      (*v38)(&v13[*(v44 + 24)], v24, v50);
      v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v30 = v24;
      v15 = v42;
      (*v37)(v30, v28);
      (*v36)(v21, v20);
      v31 = *(v27 + 20);
      *&v13[v31] = v29;

      *&v13[v31] = v26;
      v32 = v58;
      v33 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      AttributedTextValueConstraint.constrainAttribute(in:)(v13, v32, v33);
      outlined destroy of AnyAttributedTextValueConstraint(v57);
      v25(v54, v13, v20);
      v34 = v53;
      v16 = *&v13[v31];

      outlined destroy of ConstraintAttributeContainerProxyBase(v13, type metadata accessor for ConstraintAttributeContainerProxyBase);
      v18 = v34 + 40;
      v19 = v52;
      if (v43 == v52)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_7:

    *v35 = v16;
  }
}

double View.attributedTextFormattingDefinition<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v10 + 16))(v12, a1, a3);
  AttributeScopeContext.init<A>(_:)(v12, a3, a5, v16);
  v15[0] = v16[0];
  v15[1] = v16[1];
  View.environment<A>(_:_:)(KeyPath, v15, a2, a4);

  return result;
}

{
  v7 = type metadata accessor for AttributedTextFormatting.EmptyDefinition(0, a3, a5, a4);
  swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.EmptyDefinition<A>, v7);

  return View.attributedTextFormattingDefinition<A>(_:)(v8, a2, v7, a4, v8);
}

double key path getter for EnvironmentValues.attributeScopeContext : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5(v3, v6);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(*a1, v6);
  }

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

double key path setter for EnvironmentValues.attributeScopeContext : EnvironmentValues(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(a2, v3, v4, v5, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v7, *a2);
  }

  return result;
}

double static AttributedTextFormattingDefinition._makeDefinition(_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, AssociatedTypeWitness, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v14 = type metadata accessor for AttributedTextFormatting._Inputs(0, AssociatedTypeWitness, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v20 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, a1, v18, v19);
  AttributedTextFormatting._Inputs.Operation<A>.wrapped.getter(v20, a2);
  (*(v9 + 32))(v17, v11, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v27, v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v15 + 8))(v17, v14);
  type metadata accessor for AttributedTextFormatting._Outputs.Operation(0, AssociatedTypeWitness, v22, v23);
  result = *&v27;
  *v26 = v27;
  return result;
}

unint64_t AttributedTextFormatting.Constraints.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(v2);
  a1[1] = result;
  return result;
}

uint64_t AttributedTextFormatting.Constraints.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = static AttributedStringKey.nsAttributedStringKey.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  v12 = *(a2 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1, a1, a2);
  type metadata accessor for _EnvironmentKeyWritingModifier<AttributeScopeContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAttributedTextValueConstraint>, &type metadata for AnyAttributedTextValueConstraint, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18DDA6EB0;
  outlined init with copy of AnyAttributedTextValueConstraint(v21, v13 + 32);
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>)>, type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6F90]);
  type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18DDA6EB0;
  v17 = (v16 + v15);
  *v17 = v10;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
  v18 = v10;
  RangeSet.init(_:)();
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(v16);
  swift_setDeallocating();
  outlined destroy of ConstraintAttributeContainerProxyBase(v17, type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>));
  swift_deallocClassInstance();

  (*(v12 + 8))(a1, a2);
  result = outlined destroy of AnyAttributedTextValueConstraint(v21);
  *a4 = v13;
  a4[1] = v19;
  return result;
}

Swift::Int __swiftcall AttributedTextFormatting.Constraints.Index.distance(to:)(SwiftUI::AttributedTextFormatting::Constraints::Index to)
{
  v2 = __OFSUB__(*to._orderedConstraintsIndex, *v1);
  result = *to._orderedConstraintsIndex - *v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

SwiftUI::AttributedTextFormatting::Constraints::Index __swiftcall AttributedTextFormatting.Constraints.Index.advanced(by:)(SwiftUI::AttributedTextFormatting::Constraints::Index by)
{
  if (__OFADD__(*v2, by._orderedConstraintsIndex))
  {
    __break(1u);
  }

  else
  {
    *v1 = *v2 + by._orderedConstraintsIndex;
  }

  return by;
}

Swift::Int AttributedTextFormatting.Constraints.Index.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void *protocol witness for Strideable.distance(to:) in conformance AttributedTextFormatting.Constraints.Index@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance AttributedTextFormatting.Constraints.Index@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *protocol witness for static Strideable._step(after:from:by:) in conformance AttributedTextFormatting.Constraints.Index(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance AttributedTextFormatting.Constraints.Index(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

SwiftUI::AttributedTextFormatting::Constraints::Index __swiftcall AttributedTextFormatting.Constraints.index(after:)(SwiftUI::AttributedTextFormatting::Constraints::Index after)
{
  if (__OFADD__(*after._orderedConstraintsIndex, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *after._orderedConstraintsIndex + 1;
  }

  return after;
}

unint64_t *AttributedTextFormatting.Constraints.subscript.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    return outlined init with copy of AnyAttributedTextValueConstraint(*v2 + 40 * v3 + 32, a2);
  }

  __break(1u);
  return result;
}

uint64_t AttributedTextFormatting.Constraints.subscript.getter(uint64_t a1)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = v1[1];
  if (!*(v12 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *v1;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 16))(v8, *(v12 + 56) + *(v6 + 72) * v14, v5);
  (*(v6 + 32))(v11, v8, v5);
  v18[0] = v13;
  v18[1] = v12;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  Collection.subscript.getter();
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, MEMORY[0x1E69E6E20], MEMORY[0x1E69E6E30]);
  v16 = dispatch thunk of Sequence._copyToContiguousArray()();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t AttributedTextFormatting.Constraints.constraints<A>(for:in:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  type metadata accessor for RangeSet<AttributedTextFormatting.Constraints.Index>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15 = *v4;
  v16 = v4[1];
  v17 = static AttributedStringKey.nsAttributedStringKey.getter(a2, a3);
  v18 = v17;
  if (*(v16 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v20 & 1) != 0))
  {
    (*(v12 + 16))(v9, *(v16 + 56) + *(v12 + 72) * v19, v11);

    (*(v12 + 56))(v9, 0, 1, v11);
    (*(v12 + 32))(v14, v9, v11);
  }

  else
  {

    (*(v12 + 56))(v9, 1, 1, v11);
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
    RangeSet.init()();
    if ((*(v12 + 48))(v9, 1, v11) != 1)
    {
      outlined destroy of ConstraintAttributeContainerProxyBase(v9, type metadata accessor for RangeSet<AttributedTextFormatting.Constraints.Index>?);
    }
  }

  RangeSet.formIntersection(_:)();
  v22[2] = v15;
  v22[3] = v16;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  Collection.subscript.getter();
  return (*(v12 + 8))(v14, v11);
}

void AttributedTextFormatting.Constraints.append(_:)(uint64_t *a1)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BA8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v87 - v6;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v87 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v96 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = (&v87 - v23);
  v24 = *a1;
  v25 = a1[1];
  v107 = *(*v1 + 16);

  specialized Array.append<A>(contentsOf:)(v24);
  v26 = 0;
  v28 = v25 + 64;
  v27 = *(v25 + 64);
  v90 = v25;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v88 = (v29 + 63) >> 6;
  v89 = v10 + 16;
  v105 = (v10 + 32);
  v93 = (v5 + 8);
  v97 = v10;
  v91 = (v10 + 8);
  v108 = v7;
  v92 = v25 + 64;
  v102 = v9;
  v106 = v19;
  while (1)
  {
    if (!v31)
    {
      if (v88 <= v26 + 1)
      {
        v34 = v26 + 1;
      }

      else
      {
        v34 = v88;
      }

      v35 = v34 - 1;
      v33 = v96;
      while (1)
      {
        v32 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_44;
        }

        if (v32 >= v88)
        {
          type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
          v40 = v84;
          (*(*(v84 - 8) + 56))(v33, 1, 1, v84);
          v99 = 0;
          v100 = v35;
          goto LABEL_16;
        }

        v31 = *(v28 + 8 * v32);
        ++v26;
        if (v31)
        {
          v100 = v32;
          goto LABEL_15;
        }
      }
    }

    v100 = v26;
    v32 = v26;
    v33 = v96;
LABEL_15:
    v99 = (v31 - 1) & v31;
    v36 = __clz(__rbit64(v31)) | (v32 << 6);
    v37 = *(*(v90 + 48) + 8 * v36);
    v38 = v97;
    (*(v97 + 16))(v19, *(v90 + 56) + *(v97 + 72) * v36, v9);
    type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
    v40 = v39;
    v41 = *(v39 + 48);
    *v33 = v37;
    (*(v38 + 32))(&v33[v41], v19, v9);
    (*(*(v40 - 8) + 56))(v33, 0, 1, v40);
    v42 = v37;
LABEL_16:
    v43 = v95;
    outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(v33, v95);
    type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
    if ((*(*(v40 - 8) + 48))(v43, 1, v40) == 1)
    {

      return;
    }

    v44 = *v43;
    v45 = v43 + *(v40 + 48);
    v104 = *v105;
    v104(v103, v45, v9);
    RangeSet.ranges.getter();
    lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges, MEMORY[0x1E69E7BA8], MEMORY[0x1E69E7BC8]);
    v47 = v46;
    v48 = dispatch thunk of Collection.count.getter();
    v98 = v44;
    if (v48)
    {
      break;
    }

    (*v93)(v7, v4);
    v50 = MEMORY[0x1E69E7CC0];
LABEL_27:
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
    RangeSet.init()();
    v64 = *(v50 + 16);
    v65 = v102;
    if (v64)
    {
      v66 = (v50 + 32);
      do
      {
        v67 = *v66++;
        v109 = v67;
        RangeSet.init(_:)();
        RangeSet.formUnion(_:)();
        --v64;
      }

      while (v64);
    }

    v104(v101, v12, v65);
    v68 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v109 = *(v68 + 8);
    v70 = v109;
    v71 = v98;
    v72 = specialized __RawDictionaryStorage.find<A>(_:)(v98);
    v74 = v70[2];
    v75 = (v73 & 1) == 0;
    v76 = __OFADD__(v74, v75);
    v77 = v74 + v75;
    if (v76)
    {
      goto LABEL_45;
    }

    v78 = v73;
    if (v70[3] >= v77)
    {
      v7 = v108;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = v71;
        v86 = v72;
        specialized _NativeDictionary.copy()();
        v72 = v86;
        v71 = v85;
        v70 = v109;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, isUniquelyReferenced_nonNull_native);
      type metadata accessor for NSAttributedStringKey(0);
      v70 = v109;
      v72 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
      v7 = v108;
      if ((v78 & 1) != (v79 & 1))
      {
        goto LABEL_48;
      }
    }

    v9 = v102;
    *(v68 + 8) = v70;
    if ((v78 & 1) == 0)
    {
      v80 = v72;
      RangeSet.init()();
      v70[(v80 >> 6) + 8] |= 1 << v80;
      *(v70[6] + 8 * v80) = v71;
      v104((v70[7] + *(v97 + 72) * v80), v19, v9);
      v81 = v70[2];
      v76 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v76)
      {
        goto LABEL_47;
      }

      v70[2] = v82;
      v83 = v71;
    }

    RangeSet.formUnion(_:)();

    (*v91)(v103, v9);
    v28 = v92;
    v31 = v99;
    v26 = v100;
  }

  v49 = v48;
  v110 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 & ~(v48 >> 63), 0);
  v50 = v110;
  dispatch thunk of Collection.startIndex.getter();
  if (v49 < 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v51 = v47;
    v52 = dispatch thunk of Collection.subscript.read();
    v55 = *v53;
    v54 = v53[1];
    v52(&v109, 0);
    v56 = v55 + v107;
    if (__OFADD__(v55, v107))
    {
      break;
    }

    v57 = v54 + v107;
    if (__OFADD__(v54, v107))
    {
      goto LABEL_42;
    }

    if (v57 < v56)
    {
      goto LABEL_43;
    }

    v58 = v12;
    v59 = v4;
    v110 = v50;
    v61 = *(v50 + 16);
    v60 = *(v50 + 24);
    if (v61 >= v60 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
      v50 = v110;
    }

    *(v50 + 16) = v61 + 1;
    v62 = v50 + 16 * v61;
    *(v62 + 32) = v56;
    *(v62 + 40) = v57;
    v63 = v108;
    v4 = v59;
    v47 = v51;
    dispatch thunk of Collection.formIndex(after:)();
    --v49;
    v12 = v58;
    v19 = v106;
    if (!v49)
    {
      (*v93)(v63, v4);
      goto LABEL_27;
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void static AttributedTextFormatting.Constraints.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(*a1, *a2))
  {

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(v2, v3);
  }
}

void AttributedTextFormatting.Constraints.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  MEMORY[0x193AC11A0](*(*v1 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      outlined init with copy of AnyAttributedTextValueConstraint(v6, v7);
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of AnyAttributedTextValueConstraint(v7);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  specialized Dictionary<>.hash(into:)(a1, v3);
}

Swift::Int AttributedTextFormatting.Constraints.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      outlined init with copy of AnyAttributedTextValueConstraint(v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of AnyAttributedTextValueConstraint(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  specialized Dictionary<>.hash(into:)(v7, v1);
  return Hasher._finalize()();
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AttributedTextFormatting.Constraints(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    outlined init with copy of AnyAttributedTextValueConstraint(*v2 + 40 * v6 + 32, result);
    return protocol witness for Collection.subscript.read in conformance AttributedTextFormatting.Constraints;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance AttributedTextFormatting.Constraints(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of AnyAttributedTextValueConstraint(*a1);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance AttributedTextFormatting.Constraints(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a1[1];
  if (*(*v2 + 16) < v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2[1];
  a2[2] = *v2;
  a2[3] = v5;
  *a2 = v3;
  a2[1] = v4;
}

double protocol witness for Collection.indices.getter in conformance AttributedTextFormatting.Constraints@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = *(v2 + 16);
  a1[2] = 0;
  a1[3] = v4;

  return result;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance AttributedTextFormatting.Constraints@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.distance(from:to:) in conformance AttributedTextFormatting.Constraints(void *result, void *a2)
{
  v2 = *a2;
  v3 = *result;
  if (*a2 < *result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(*a2, *result))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = (v2 - v3);
  if (v2 != v3)
  {
    for (i = 0; !__OFADD__(i, 1); ++i)
    {
      v5 = v3 + i + 1;
      if (__OFADD__(v3 + i, 1))
      {
        goto LABEL_11;
      }

      if (__OFSUB__(v2, v5))
      {
        goto LABEL_12;
      }

      if (v2 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AttributedTextFormatting.Constraints(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*result >= a2[1])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2[1] < *result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2[1] < result[1])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedTextFormatting.Constraints(uint64_t a1)
{
  Hasher.init(_seed:)();
  AttributedTextFormatting.Constraints.hash(into:)(v2);
  return Hasher._finalize()();
}

__n128 protocol witness for Sequence.makeIterator() in conformance AttributedTextFormatting.Constraints@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedTextFormatting.Constraints()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void protocol witness for static Equatable.== infix(_:_:) in conformance AttributedTextFormatting.Constraints(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(*a1, *a2))
  {

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(v2, v3);
  }
}

double DiscontiguousSlice<>.subscript.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  MEMORY[0x193AC0870](&v13);
  v12 = v13;
  DiscontiguousSlice.subranges.getter();
  AttributedTextFormatting.Constraints.constraints<A>(for:in:)(a1, a2, a3);
  (*(v8 + 8))(v10, v7);

  return result;
}

uint64_t AttributedTextFormatting._Inputs.Operation<A>.wrapped.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, v8);
  (*(v4 + 32))(v6, v10, v3);
  (*(a2 + 40))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t AttributedTextFormatting.TupleDefinition.init(definition:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v50 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v13 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v11)
    {
      v16 = 0;
      v17 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 < 4)
      {
        goto LABEL_9;
      }

      if (&v15[-v17] < 0x20)
      {
        goto LABEL_9;
      }

      v16 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v17 + 16);
      v19 = v15 + 16;
      v20 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v16 != v11)
      {
LABEL_9:
        v22 = v11 - v16;
        v23 = 8 * v16;
        v24 = &v15[8 * v16];
        v25 = (v17 + v23);
        do
        {
          v26 = *v25++;
          *v24 = v26;
          v24 += 8;
          --v22;
        }

        while (v22);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v13 = TupleTypeMetadata;
  }

  v27 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[0] = v11;
  v51[1] = a3;
  v51[2] = a4;
  v51[3] = a5;
  v51[4] = a6;
  v30 = type metadata accessor for AttributedTextFormatting.TupleDefinition(0, v51);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v46 - v33;
  if (v11)
  {
    v47 = v30;
    v48 = &v46;
    v49 = a7;
    v35 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v36 = 32;
    v46 = v35;
    v37 = v50;
    v38 = v11;
    do
    {
      if (v11 == 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = *(v13 + v36);
      }

      v41 = *v35++;
      v40 = v41;
      v42 = *v37++;
      (*(*(v40 - 8) + 16))(&v29[v39], v42);
      v36 += 16;
      --v38;
    }

    while (v38);
    (*(v27 + 32))(v34, v29, v13);
    (*(v31 + 32))(v49, v34, v47);
    v43 = v46 - 1;
    v44 = v50 - 8;
    do
    {
      result = (*(*(v43[v11] - 8) + 8))(*(v44 + 8 * v11));
      --v11;
    }

    while (v11);
  }

  else
  {
    (*(v27 + 32))(v34, v29, v13, v32);
    return (*(v31 + 32))(a7, v34, v30);
  }

  return result;
}

uint64_t AttributedTextFormatting.AnyDefinition.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = type metadata accessor for _ConditionalContent.Storage(0, a3, a4, a4);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(*(a3 - 8) + 16))(&v15 - v11, a1, a3, v10);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v12, a3, a4, v13, x8_0);
}

uint64_t static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = type metadata accessor for _ConditionalContent.Storage(0, a3, a4, a4);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(*(a4 - 8) + 16))(&v15 - v11, a1, a4, v10);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v12, a3, a4, v13, x8_0);
}

uint64_t Optional<A>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = AssociatedTypeWitness;
  v20 = type metadata accessor for AttributedTextFormatting.EmptyDefinition(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v22 = type metadata accessor for _ConditionalContent(0, v5, v20, v21);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v41 - v25;
  (*(v14 + 16))(v16, v43, a1, v24);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.EmptyDefinition<A>, v20);
    v28 = *(*(v20 - 8) + 16);
    v29 = v28(WitnessTable);
    v30 = (v28)(v29);
    v31 = v45;
    static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(second:)(v30, v5, v20, v26);
  }

  else
  {
    (*(v6 + 32))(v12, v16, v5);
    v32 = *(v6 + 16);
    v43 = v22;
    v33 = v41;
    v32(v41, v12, v5);
    v34 = *(v6 + 8);
    v34(v12, v5);
    v35 = v42;
    v32(v42, v33, v5);
    v36 = v33;
    v22 = v43;
    v34(v36, v5);
    swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.EmptyDefinition<A>, v20);
    v31 = v45;
    static AttributedTextFormatting.DefinitionBuilder.buildEither<A, B>(first:)(v35, v5, v20, v26);
    v34(v35, v5);
  }

  v37 = swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.EmptyDefinition<A>, v20);
  v47[0] = v31;
  v47[1] = v38;
  v39 = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v22, v47, v37);
  (*(v23 + 16))(v46, v26, v22, v39);
  return (*(v23 + 8))(v26, v22);
}

unint64_t static AttributedTextFormatting.EmptyDefinition._makeDefinition(_:)@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t AttributedTextFormatting.EmptyDefinition.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.EmptyDefinition<A>, a1);
  v6 = *(*(a1 - 8) + 16);
  v6(WitnessTable);

  return (v6)(a2);
}

uint64_t static AttributedTextFormatting.AnyDefinition._makeDefinition(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for AttributedTextFormatting.AnyDefinition(255, a3, a4, a5);
  v10 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, v7, v8, v9);
  (*(*(v10 - 8) + 16))(&v20, a1, v10);
  v18[0] = v20;
  v18[1] = v21;
  v11 = v22;
  v19 = v22;
  v12 = *(&v21 + 1);
  v13 = __swift_project_boxed_opaque_existential_1(v18, *(&v21 + 1));
  AttributedTextFormattingDefinition.constraints.getter(v12, v11, &v17, v13, v14);
  v15 = swift_checkMetadataState();
  *a2 = v17;
  return (*(*(v15 - 8) + 8))(v18, v15);
}

double AttributedTextFormattingDefinition.constraints.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = v5;
  v10 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, a1, a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v16 = type metadata accessor for AttributedTextFormatting._Inputs(0, a1, v14, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(*(a1 - 8) + 16))(v13, v6, a1, v18);
  (*(v11 + 32))(v20, v13, v10);
  (*(a2 + 48))(&v22, v20, a1, a2);
  (*(v17 + 8))(v20, v16);
  result = *&v22;
  *a3 = v22;
  return result;
}

uint64_t AttributedTextFormatting.AnyDefinition.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.AnyDefinition<A>, a1);
  v6 = *(a1 - 8);
  v7 = *(v6 + 16);
  (v7)(v9, v2, a1, v5);
  v7(a2, v9, a1);
  return (*(v6 + 8))(v9, a1);
}

double static _ConditionalContent<>._makeDefinition(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v48 = a1;
  v49 = a6;
  v45 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ConditionalContent.Storage(0, v13, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v21 = type metadata accessor for _ConditionalContent(0, a2, a3, v20);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v27 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, v21, v25, v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v42 - v29;
  (*(v31 + 16))(&v42 - v29, v48, v28);
  (*(v22 + 32))(v24, v30, v21);
  (*(v17 + 16))(v19, v24, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v44;
    v32 = v45;
    (*(v45 + 32))(v44, v19, a3);
    v36 = AttributedTextFormattingDefinition.constraints.getter(a3, v47, &v50, v34, v35);
    (*(v32 + 8))(v33, a3, v36);
  }

  else
  {
    v37 = v43;
    (*(v43 + 32))(v12, v19, a2);
    v40 = AttributedTextFormattingDefinition.constraints.getter(a2, v46, &v50, v38, v39);
    (*(v37 + 8))(v12, a2, v40);
  }

  (*(v22 + 8))(v24, v21);
  result = *&v50;
  *v49 = v50;
  return result;
}

uint64_t _ConditionalContent<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v9;
  v14[1] = v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a1, v14, v6);
  v12 = *(v5 + 16);
  v12(v8, v2, a1, WitnessTable);
  (v12)(a2, v8, a1);
  return (*(v5 + 8))(v8, a1);
}

uint64_t static AttributedTextFormatting.TupleDefinition._makeDefinition(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = a2;
  v76 = a7;
  if (a2 == 1)
  {
    v12 = a1;
    TupleTypeMetadata = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v11)
    {
      v17 = 0;
      v18 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 < 4)
      {
        goto LABEL_9;
      }

      if (&v16[-v18] < 0x20)
      {
        goto LABEL_9;
      }

      v17 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = (v18 + 16);
      v20 = v16 + 16;
      v21 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v17 != v11)
      {
LABEL_9:
        v23 = v11 - v17;
        v24 = 8 * v17;
        v25 = &v16[8 * v17];
        v26 = (v18 + v24);
        do
        {
          v27 = *v26++;
          *v25 = v27;
          v25 += 8;
          --v23;
        }

        while (v23);
      }
    }

    v12 = v14;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v28 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v91 = v11;
  *(&v91 + 1) = a3;
  v92 = a4;
  v93 = a5;
  v94 = a6;
  v88 = a6;
  v32 = v31;
  v33 = type metadata accessor for AttributedTextFormatting.TupleDefinition(0, &v91);
  v74 = &v69;
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v69 - v35;
  v39 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, v33, v37, v38);
  v71 = &v69;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v69 - v41;
  (*(v43 + 16))(&v69 - v41, v12, v40);
  v72 = v34;
  v44 = *(v34 + 32);
  v73 = v33;
  v44(v36, v42, v33);
  *&v91 = MEMORY[0x1E69E7CC0];
  *(&v91 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v75 = v28;
  v45 = *(v28 + 16);
  v79 = v30;
  v70 = v36;
  v77 = v32;
  v46 = v45(v30, v36, v32);
  if (v11)
  {
    v47 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v48 = (v88 & 0xFFFFFFFFFFFFFFFELL);
    v78 = v11;
    do
    {
      v86 = &v69;
      v87 = v48;
      v88 = v47;
      v62 = *v47;
      v83 = *v48;
      v63 = *(v62 - 8);
      MEMORY[0x1EEE9AC00](v46);
      v66 = &v69 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      v84 = v67;
      v85 = v64;
      if (v11 == 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = *v64;
      }

      v80 = *(v63 + 16);
      v80(v66, &v79[v49], v62);
      v81 = type metadata accessor for AttributedTextFormatting._Inputs(0, v62, v50, v51);
      v82 = &v69;
      v52 = *(v81 - 8);
      MEMORY[0x1EEE9AC00](v81);
      v54 = &v69 - v53;
      v57 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, v62, v55, v56);
      v58 = *(v57 - 8);
      v59 = MEMORY[0x1EEE9AC00](v57);
      v61 = &v69 - v60;
      (v80)(&v69 - v60, v66, v62, v59);
      (*(v58 + 32))(v54, v61, v57);
      (*(v83 + 48))(v90, v54, v62);
      (*(v52 + 8))(v54, v81);
      v89[0] = v90[0];
      v89[1] = v90[1];
      AttributedTextFormatting.Constraints.append(_:)(v89);
      (*(v63 + 8))(v66, v62);

      v48 = v87 + 1;
      v47 = v88 + 1;
      v11 = v78;
    }

    while (v84 != 1);
  }

  (*(v72 + 8))(v70, v73);
  *v76 = v91;
  return (*(v75 + 8))(v79, v77);
}

uint64_t AttributedTextFormatting.TupleDefinition.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.TupleDefinition<A, Pack{repeat B}>, a1, v6);
  v10 = *(v5 + 16);
  v10(v8, v2, a1, WitnessTable);
  (v10)(a2, v8, a1);
  return (*(v5 + 8))(v8, a1);
}

uint64_t AttributedTextFormatting.ValueConstraint.init(for:values:default:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *a1;

  v12 = (v11 + *MEMORY[0x1E69E77B0]);
  v13 = *v12;
  v14 = v12[1];

  return AttributedTextFormatting.ValueConstraint.init(for:values:default:)(a2, a3, v13, v14, a4, a5, a6);
}

uint64_t AttributedTextFormatting.ValueConstraint.init(for:values:default:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  *a7 = a1;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v9 = *(type metadata accessor for AttributedTextFormatting.ValueConstraint(0, v12) + 52);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  return (*(*(v10 - 8) + 32))(&a7[v9], a2, v10);
}

uint64_t AttributedTextFormatting.ValueConstraint.constrain(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v18 = v2;
  v10 = *v2;
  *&v11 = *(a2 + 32);
  *&v12 = *(a2 + 16);
  *(&v12 + 1) = v5;
  *(&v11 + 1) = v4;
  v20[0] = v12;
  v20[1] = v11;
  v13 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v20);
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v13, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E7C78], v6, &AssociatedConformanceWitness);
  LOBYTE(v4) = MEMORY[0x193ABF5D0](v9, v10, v6, v15, WitnessTable);
  result = (*(v7 + 8))(v9, v6);
  if ((v4 & 1) == 0)
  {
    (*(v7 + 16))(v9, &v18[*(a2 + 52)], v6);
    return AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v9, v17, v13);
  }

  return result;
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.getter@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  if (static AttributeScope.contains<A>(_:)(a1[3], a1[2], a1[3], a1[4], a1[5]))
  {

    return AttributeContainer.subscript.getter();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(*(AssociatedTypeWitness - 8) + 56);

    return v5(a2, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[3];
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  if (static AttributeScope.contains<A>(_:)(v6, a3[2], v6, a3[4], v5))
  {
    (*(v13 + 16))(v9, a1, v7);
    AttributeContainer.subscript.setter();
    return (*(v13 + 8))(a1, v7);
  }

  else
  {
    v11 = *(v13 + 8);

    return v11(a1, v7);
  }
}

{
  specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, a3);

  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

BOOL static AttributedTextFormatting.ValueConstraint.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v36 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v30 - v11;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v30 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v30 - v16;
  v18 = a1;
  v37 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = AssociatedConformanceWitness;
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v12, &v40);
  if ((static Set.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v39[0] = v35;
  v39[1] = a4;
  v39[2] = v36;
  v39[3] = a6;
  v19 = *(type metadata accessor for AttributedTextFormatting.ValueConstraint(0, v39) + 52);
  v35 = TupleTypeMetadata2;
  v36 = v13;
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v13 + 16);
  v21(v17, &v18[v19], v12);
  v21(&v17[v20], &v37[v19], v12);
  v22 = *(v38 + 48);
  if (v22(v17, 1, AssociatedTypeWitness) == 1)
  {
    if (v22(&v17[v20], 1, AssociatedTypeWitness) == 1)
    {
      (*(v36 + 8))(v17, v12);
      return 1;
    }

    goto LABEL_7;
  }

  v23 = v34;
  v21(v34, v17, v12);
  if (v22(&v17[v20], 1, AssociatedTypeWitness) == 1)
  {
    (*(v38 + 8))(v23, AssociatedTypeWitness);
LABEL_7:
    (*(v33 + 8))(v17, v35);
    return 0;
  }

  v25 = v38;
  v26 = v32;
  (*(v38 + 32))(v32, &v17[v20], AssociatedTypeWitness);
  v27 = v23;
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v25 + 8);
  v29(v26, AssociatedTypeWitness);
  v29(v27, AssociatedTypeWitness);
  (*(v36 + 8))(v17, v12);
  return (v28 & 1) != 0;
}

uint64_t AttributedTextFormatting.ValueConstraint.hash(into:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v2, &AssociatedConformanceWitness);
  Set.hash(into:)();
  return Optional<A>.hash(into:)();
}

Swift::Int AttributedTextFormatting.ValueConstraint.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  AttributedTextFormatting.ValueConstraint.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for AttributedTextFormattingDefinition.body.getter in conformance AttributedTextFormatting.ValueConstraint<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.ValueConstraint<A, B>, a1);

  return AttributedTextValueConstraint.body.getter(a1, a2);
}

double static AttributedTextValueConstraint._makeDefinition(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v17 = type metadata accessor for AttributedTextFormatting._Inputs.Operation(0, v14, v15, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v18);
  (*(v8 + 32))(v13, v20, a2);
  (*(v8 + 16))(v10, v13, a2);
  AttributedTextFormatting.Constraints.init<A>(_:)(v10, a2, a3, &v23);
  (*(v8 + 8))(v13, a2);
  result = *&v23;
  *a4 = v23;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedTextFormatting.ValueConstraint<A, B>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AttributedTextFormatting.ValueConstraint.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.getter@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (static AttributeScope.contains<A>(_:)(a2, a1[2], a2, a1[4], a3))
  {
    v8 = a1[5];
    v9 = a1[3];

    return ConstraintAttributeContainerProxyBase.subscript.getter(a2, v9, a3, v8, a4);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = *(*(AssociatedTypeWitness - 8) + 56);

    return v12(a4, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t ConstraintAttributeContainerProxyBase.subscript.getter@<X0>(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X4>, void (*a4)(_BYTE *, _BYTE *, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v162 = a3;
  v161 = a1;
  v160 = a5;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v181 = v7;
  v163 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v170 = &v152[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v152[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v152[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v188 = &v152[-v14];
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>.Index, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E10]);
  v185 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v184 = &v152[-v17];
  type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(0);
  v173 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v152[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v182 = v20;
  v177 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v183 = &v152[-v21];
  type metadata accessor for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>(0);
  v168 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v171 = &v152[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for AttributedString.AttributeRunBoundaries();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v157 = &v152[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)(0, v26);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v167 = &v152[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v152[-v32];
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v156 = &v152[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v169 = &v152[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v166 = &v152[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v186 = &v152[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v152[-v43];
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v152[-v46];
  v175 = a2;
  v176 = a4;
  dispatch thunk of static AttributedStringKey.runBoundaries.getter();
  v49 = v25 + 13;
  v48 = v25[13];
  LODWORD(v164) = *MEMORY[0x1E6968710];
  v159 = v48;
  v48(v44);
  v158 = v25[7];
  v158(v44, 0, 1, v24);
  v165 = v29;
  v50 = *(v29 + 48);
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v47, v33);
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v44, &v33[v50]);
  v178 = v25;
  v51 = v25[6];
  v52 = v51(v33, 1, v24);
  v174 = v16;
  if (v52 == 1)
  {
    v186 = v49;
    v53 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v44, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v47, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v53);
    if (v51(&v33[v50], 1, v24) == 1)
    {
      outlined destroy of AttributeContainer?(v33, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
      v54 = v187;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v155 = v47;
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v33, v186);
  if (v51(&v33[v50], 1, v24) == 1)
  {
    v55 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v44, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v155, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v55);
    (v178[1])(v186, v24);
LABEL_6:
    outlined destroy of ConstraintAttributeContainerProxyBase(v33, type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    v54 = v187;
LABEL_7:
    v56 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
    v57 = v161;
    v58 = v162;
    AttributedString.AttributeDependencies.insert<A, B>(from:to:)(v175, v161, v175, v161, v176, v162);
    v59 = *(v56 + 24);
    v60 = v54;
    v61 = v183;
    v62 = DiscontiguousSlice<>.subscript.getter(v57, v58, v183);
    v63 = v177;
    v64 = v172;
    v65 = v182;
    (v177[2])(v172, v61, v182, v62);
    v66 = v173;
    v67 = *(v173 + 36);
    lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, MEMORY[0x1E69E6E20], MEMORY[0x1E69E6E38]);
    v69 = v68;
    dispatch thunk of Collection.startIndex.getter();
    v169 = v69;
    dispatch thunk of Collection.endIndex.getter();
    (v63[1])(v61, v65);
    v70 = v171;
    outlined init with copy of DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(v64, v171, type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>);
    v71 = *(v168 + 36);
    v72 = v174;
    v73 = *(v174 + 16);
    v74 = v65;
    v75 = v185;
    v168 = v174 + 16;
    v167 = v73;
    (v73)(&v70[v71], v64 + v67, v185);
    outlined destroy of ConstraintAttributeContainerProxyBase(v64, type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>);
    v76 = *(v66 + 40);
    v77 = v59;
    v78 = v71;
    lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints>.Index and conformance DiscontiguousSlice<A>.Index, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>.Index, MEMORY[0x1E69E6E10], MEMORY[0x1E69E6E18]);
    v166 = v76;
    v165 = v79;
    v80 = dispatch thunk of static Equatable.== infix(_:_:)();
    v81 = v184;
    if (v80)
    {
LABEL_14:
      outlined destroy of ConstraintAttributeContainerProxyBase(v70, type metadata accessor for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>);
      return AttributeContainer.subscript.getter();
    }

    v178 = v163 + 2;
    v82 = v163 + 1;
    v163 = (v72 + 8);
    v164 = v78;
    v177 += 5;
    v186 = v82;
    v187 = v77;
    while (1)
    {
      (v167)(v81, &v70[v78], v75);
      dispatch thunk of Collection.formIndex(after:)();
      v83 = v60;
      MEMORY[0x193AC0870](&v192, v74);
      v84 = v192;
      DefaultIndices.startIndex.getter();
      if ((v191 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v191 >= *(v84 + 16))
      {
        goto LABEL_29;
      }

      outlined init with copy of AnyAttributedTextValueConstraint(v84 + 40 * v191 + 32, &v190);

      outlined init with take of AnyTrackedValue(&v190, &v193);
      v82 = v188;
      DiscontiguousSlice.subranges.getter();
      v85 = v83;
      v86 = v181;
      v176 = *v178;
      v176(v180, v82, v181);
      MEMORY[0x193AC0870](&v190, v74);

      DefaultIndices.startIndex.getter();
      if ((v192 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      *&v190 = 0;
      *(&v190 + 1) = v192;
      lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
      v82 = v170;
      v172 = v87;
      RangeSet.init(_:)();
      v88 = v179;
      RangeSet.intersection(_:)();
      v89 = *v186;
      (*v186)(v82, v86);
      v90 = v187;
      MEMORY[0x193AC0870](&v190, v74);
      v192 = v190;
      lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
      v91 = v183;
      v173 = v92;
      Collection.subscript.getter();

      v93 = v91;
      v94 = v182;
      v174 = *v177;
      (v174)(v85 + v90, v93, v182);
      v95 = v194;
      v96 = v195;
      __swift_project_boxed_opaque_existential_1(&v193, v194);
      v97 = v96;
      v98 = v181;
      AttributedTextValueConstraint.constrainAttribute(in:)(v85, v95, v97);
      v175 = v89;
      v89(v88, v98);
      v176(v88, v188, v98);
      MEMORY[0x193AC0870](&v190, v94);

      v99 = v185;
      v100 = v184;
      DefaultIndices.startIndex.getter();
      if ((v192 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      *&v190 = 0;
      *(&v190 + 1) = v192;
      v101 = v180;
      RangeSet.init(_:)();
      v102 = v85;
      DiscontiguousSlice.subranges.getter();
      RangeSet.subtract(_:)();
      v103 = v82;
      v82 = v175;
      (v175)(v103, v98);
      DefaultIndices.startIndex.getter();
      (*v163)(v100, v99);
      v189 = v191;
      MEMORY[0x193AC0870](&v190, v94);
      v192 = v190;
      RangeSet.insert<A>(_:within:)();

      v104 = v179;
      RangeSet.subtract(_:)();
      MEMORY[0x193AC0870](&v190, v94);
      v192 = v190;
      v105 = v183;
      Collection.subscript.getter();
      (v82)(v101, v98);
      (v82)(v104, v98);
      v74 = v182;
      (v82)(v188, v98);

      v60 = v102;
      (v174)(v102 + v187, v105, v74);
      __swift_destroy_boxed_opaque_existential_1(&v193);
      v70 = v171;
      v78 = v164;
      v75 = v185;
      v106 = dispatch thunk of static Equatable.== infix(_:_:)();
      v81 = v184;
      if (v106)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v108 = v157;
  (v178[4])(v157, &v33[v50], v24);
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries, MEMORY[0x1E6968718], MEMORY[0x1E6968720]);
  v109 = v186;
  v154 = v33;
  v153 = dispatch thunk of static Equatable.== infix(_:_:)();
  v110 = v178[1];
  v110(v108, v24);
  v111 = v110;
  v112 = MEMORY[0x1E6968718];
  outlined destroy of AttributeContainer?(v44, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
  outlined destroy of AttributeContainer?(v155, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v112);
  v111(v109, v24);
  outlined destroy of AttributeContainer?(v154, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v112);
  v54 = v187;
  if ((v153 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v113 = v166;
  dispatch thunk of static AttributedStringKey.runBoundaries.getter();
  v114 = v169;
  v159(v169, v164, v24);
  v158(v114, 0, 1, v24);
  v115 = *(v165 + 48);
  v116 = v167;
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v113, v167);
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v114, &v116[v115]);
  if (v51(v116, 1, v24) == 1)
  {
    v117 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v114, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v113, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v117);
    if (v51(&v116[v115], 1, v24) == 1)
    {
      outlined destroy of AttributeContainer?(v116, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v118 = v156;
  outlined init with copy of AttributedString.AttributeRunBoundaries?(v116, v156);
  if (v51(&v116[v115], 1, v24) == 1)
  {
    v119 = MEMORY[0x1E6968718];
    outlined destroy of AttributeContainer?(v169, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
    outlined destroy of AttributeContainer?(v113, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v119);
    (v178[1])(v118, v24);
LABEL_21:
    outlined destroy of ConstraintAttributeContainerProxyBase(v116, type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    goto LABEL_22;
  }

  v145 = v178;
  v146 = &v116[v115];
  v147 = v157;
  (v178[4])(v157, v146, v24);
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries, MEMORY[0x1E6968718], MEMORY[0x1E6968720]);
  v148 = dispatch thunk of static Equatable.== infix(_:_:)();
  v149 = v145[1];
  v149(v147, v24);
  v150 = v113;
  v151 = MEMORY[0x1E6968718];
  outlined destroy of AttributeContainer?(v169, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718]);
  outlined destroy of AttributeContainer?(v150, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v151);
  v149(v118, v24);
  outlined destroy of AttributeContainer?(v116, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, v151);
  if (v148)
  {
    goto LABEL_7;
  }

LABEL_22:
  LOBYTE(v82) = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
LABEL_32:
    swift_once();
  }

  v120 = static Log.runtimeIssuesLog;
  if (os_log_type_enabled(static Log.runtimeIssuesLog, v82))
  {
    v121 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v193 = v188;
    *v121 = 136316674;
    v122 = dispatch thunk of static AttributedStringKey.name.getter();
    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v193);

    *(v121 + 4) = v124;
    *(v121 + 12) = 2080;
    v125 = dispatch thunk of static AttributedStringKey.name.getter();
    v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &v193);

    *(v121 + 14) = v127;
    *(v121 + 22) = 2080;
    v128 = dispatch thunk of static AttributedStringKey.name.getter();
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, &v193);

    *(v121 + 24) = v130;
    *(v121 + 32) = 2080;
    v131 = dispatch thunk of static AttributedStringKey.name.getter();
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, &v193);

    *(v121 + 34) = v133;
    *(v121 + 42) = 2080;
    v134 = dispatch thunk of static AttributedStringKey.name.getter();
    v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v135, &v193);

    *(v121 + 44) = v136;
    *(v121 + 52) = 2080;
    v137 = dispatch thunk of static AttributedStringKey.name.getter();
    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v193);

    *(v121 + 54) = v139;
    *(v121 + 62) = 2080;
    v140 = dispatch thunk of static AttributedStringKey.name.getter();
    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, &v193);

    *(v121 + 64) = v142;
    _os_log_impl(&dword_18D018000, v120, v82, "An AttributedTextValueConstraint for the attribute %s cannot depend on the attribute %s, because %s has 'runBoundaries' set to '.paragraph', but %s does not. This could allow %s to have inconsistent values throughout a range where %s can only have a single value. The constraint will always read 'nil' for the value of %s.", v121, 0x48u);
    v143 = v188;
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v143, -1, -1);
    MEMORY[0x193AC4820](v121, -1, -1);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(v160, 1, 1, AssociatedTypeWitness);
}

void (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(a3, v13);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

void AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    AttributedTextFormatting.AttributeContainerProxy.subscript.setter(*(*a1 + 48), a2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(void *a1, uint64_t a2, void *a3))()
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(a3, v13);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(a3, v13);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

uint64_t key path getter for AttributedTextFormatting.AttributeContainerProxy.subscript(dynamicMember:) : <A, B>AttributedTextFormatting.AttributeContainerProxy<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 16);
  v8[0] = *(a2 + a3 - 32);
  v8[1] = v5;
  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v8);
  return a4(v6, v6);
}

uint64_t key path setter for AttributedTextFormatting.AttributeContainerProxy.subscript(dynamicMember:) : <A, B>AttributedTextFormatting.AttributeContainerProxy<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v8[0] = *(a3 + a4 - 32);
  v8[1] = v5;
  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v8);
  return specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, v6);
}

void AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v4, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v9 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 104), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v9, v7, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v4, v9, v7, v8);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 72);
  v9 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 104), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v4, v9, v8, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v5 = v2[8];
    v6 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    (*(v6 + 16))(*(*a1 + 80), v4, v5);
    v9 = *(v8 - 8);
    (*(v9 + 8))(v7, v8);
    (*(v9 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[6];
    v10 = v2[7];
    v12 = *(v11 - 8);
    (*(v12 + 8))(v10, v11);
    (*(v12 + 32))(v10, v4, v11);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for AttributedTextFormatting.AttributeContainerProxy.subscript<A>(dynamicMember:) : <A, B><A1>AttributedTextFormatting.AttributeContainerProxy<A, B>ABA1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 24);
  v5[0] = *(a2 + a3 - 48);
  v5[1] = v3;
  type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v5);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.getter();
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, a3, v7, a4);

  v8 = *(a3 + 32);
  v11 = *(a3 + 16);
  v12 = v7;
  v13 = v8;
  v14 = a4;
  v9 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, &v11);
  return (*(*(v9 - 8) + 8))(a1, v9);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a2, v6);
  v10 = *(a2 + 32);
  v13[0] = *(a2 + 16);
  v13[1] = v10;
  v11 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v13);
  return (*(*(v11 - 8) + 32))(a3, v8, v11);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 - 8);
  (*(v8 + 8))(v3, a3);
  v6 = *(v8 + 32);

  return v6(v3, a1, a3);
}

void (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x78uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 64) = a4;
  *(v10 + 72) = v4;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v13 = *(a3 + 16);
  *(v10 + 80) = v12;
  v14 = *(a3 + 32);
  *v10 = v13;
  *(v10 + 16) = v12;
  *(v10 + 24) = v14;
  *(v10 + 40) = a4;
  v15 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, v10);
  v11[11] = v15;
  v16 = *(v15 - 8);
  v11[12] = v16;
  v17 = *(v16 + 64);
  if (v9)
  {
    v11[13] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[13] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v11[14] = v18;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v18, a3, v18);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

uint64_t key path getter for AttributedTextFormatting.AttributeContainerProxy.subscript<A>(dynamicMember:) : <A, B><A1>AttributedTextFormatting.AttributeContainerProxy<A, B>ABA1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 24);
  v7[0] = *(a1 + a2 - 48);
  v7[1] = v4;
  v5 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v7);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v5, v5, a3);
}

uint64_t key path setter for AttributedTextFormatting.AttributeContainerProxy.subscript<A>(dynamicMember:) : <A, B><A1>AttributedTextFormatting.AttributeContainerProxy<A, B>ABA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 8);
  v7 = *(a3 + a4 - 24);
  v10[0] = *(a3 + a4 - 48);
  v10[1] = v7;
  v8 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v10);
  return specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, v8, v5, v6);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(a1, a3, a4, a5);

  v9 = *(a3 + 32);
  v12 = *(a3 + 16);
  v13 = a4;
  v14 = v9;
  v15 = a5;
  v10 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, &v12);
  return (*(*(v10 - 8) + 8))(a1, v10);
}

void (*AttributedTextFormatting.AttributeContainerProxy.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x78uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 72) = a5;
  *(v12 + 80) = v5;
  *(v12 + 56) = a3;
  *(v12 + 64) = a4;
  *(v12 + 48) = a2;
  v14 = *(a3 + 32);
  *v12 = *(a3 + 16);
  *(v12 + 16) = a4;
  *(v12 + 24) = v14;
  *(v12 + 40) = a5;
  v15 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, v12);
  v13[11] = v15;
  v16 = *(v15 - 8);
  v13[12] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v13[13] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[13] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v13[14] = v18;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v18, a3, v18);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

{
  v10 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x60uLL);
  }

  v12 = v11;
  *a1 = v11;
  *(v11 + 48) = a3;
  *(v11 + 56) = v5;
  v13 = *(a3 + 32);
  *v11 = *(a3 + 16);
  *(v11 + 16) = a4;
  *(v11 + 24) = v13;
  *(v11 + 40) = a5;
  v14 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, v11);
  v12[8] = v14;
  v15 = *(v14 - 8);
  v12[9] = v15;
  v16 = *(v15 + 64);
  if (v10)
  {
    v12[10] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v12[10] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v12[11] = v17;
  AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v17, a3, v17);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.modify;
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(a2 + 40);
  v10[0] = *(a2 + 16);
  v10[1] = v7;
  v8 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v10);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v8, v6, a3, a4);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v6);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.getter(v4, a2);
}

uint64_t key path getter for AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript(dynamicMember:) : <A, B><A1>AttributedTextFormatting.AttributeContainerProxy<A, B>.Scoped<A1>ABA1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v7[0] = *(a1 + a2 - 48);
  v7[1] = v4;
  v7[2] = *(a1 + a2 - 16);
  v5 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, v7);
  return AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.getter(v5, a3);
}

uint64_t key path setter for AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript(dynamicMember:) : <A, B><A1>AttributedTextFormatting.AttributeContainerProxy<A, B>.Scoped<A1>ABA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v8[0] = *(a3 + a4 - 48);
  v8[1] = v5;
  v8[2] = *(a3 + a4 - 16);
  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, v8);
  return specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(a1, v6);
}

uint64_t AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(a1, a3);

  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.getter(a3, v13);
  return AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.modify;
}

void AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(v4, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints()
{
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints);
  }
}

uint64_t type metadata accessor for ConstraintAttributeContainerProxyBase(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConstraintAttributeContainerProxyBase;
  if (!type metadata singleton initialization cache for ConstraintAttributeContainerProxyBase)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConstraintAttributeContainerProxyBase.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(v1, v5, type metadata accessor for ConstraintAttributeContainerProxyBase);
  return outlined init with take of ConstraintAttributeContainerProxyBase(v5, a1);
}

uint64_t AttributedTextValueConstraint.constrainAttribute(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = swift_getAssociatedTypeWitness();
  v10[1] = swift_getAssociatedTypeWitness();
  v10[2] = swift_getAssociatedConformanceWitness();
  v10[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v10 - v7;
  ConstraintAttributeContainerProxyBase.subscript.getter(v10 - v7);
  (*(a3 + 40))(v8, a2, a3);
  outlined destroy of ConstraintAttributeContainerProxyBase(a1, type metadata accessor for ConstraintAttributeContainerProxyBase);
  return outlined init with take of ConstraintAttributeContainerProxyBase(v8, a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConstraintAttributeContainerProxyBase(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for AttributeContainer();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0], MEMORY[0x1E69688E8]);
  dispatch thunk of Hashable.hash(into:)();
  specialized Dictionary<>.hash(into:)(v4, *(v1 + *(a1 + 20)));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributeContainer();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0], MEMORY[0x1E69688E8]);
  dispatch thunk of Hashable.hash(into:)();
  specialized Dictionary<>.hash(into:)(a1, *(v2 + *(a2 + 20)));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AttributeContainer();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0], MEMORY[0x1E69688E8]);
  dispatch thunk of Hashable.hash(into:)();
  specialized Dictionary<>.hash(into:)(v5, *(v2 + *(a2 + 20)));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static AttributeContainer.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt1g5(v7, v8);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  v13 = v12;
  lazy protocol witness table accessor for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint();

  return MEMORY[0x1EEE6AA00](a1 + v11, a2 + v11, &type metadata for AttributedTextFormatting.Constraints, v13, v14);
}

uint64_t static AnyAttributedTextValueConstraint.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = a2[3];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v10[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  LOBYTE(v7) = areEqual<A>(_:_:)(v5, v10, v3, *(*(v4 + 8) + 8));
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7 & 1;
}

Swift::Int AnyAttributedTextValueConstraint.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyAttributedTextValueConstraint()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyAttributedTextValueConstraint(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyAttributedTextValueConstraint(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = a2[3];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v10[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  LOBYTE(v7) = areEqual<A>(_:_:)(v5, v10, v3, *(*(v4 + 8) + 8));
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7 & 1;
}

double AttributedTextFormattingDefinition.constrain(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 32))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  AttributedString.init<A, B>(_:including:)();
  v12 = AttributedTextFormattingDefinition.constraints.getter(a2, a3, &v15, v10, v11);
  v14 = v15;
  AttributedTextFormatting.Constraints.constrain(_:)(a1, v12);

  return result;
}

void AttributedTextFormatting.Constraints.constrain(_:)(uint64_t a1, double a2)
{
  type metadata accessor for Range<AttributedString.Index>(0, a2);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AttributeContainer();
  v27 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AttributedString.Runs.Index();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AttributedString.Runs.Run();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.Runs();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v14);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v2;
  if (*(v31 + 16))
  {
    v30 = a1;
    AttributedString.runs.getter();
    (*(v13 + 16))(v19, v16, v12);
    lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    dispatch thunk of Collection.startIndex.getter();
    (*(v13 + 8))(v16, v12);
    ++v36;
    v28 = (v9 + 8);
    v29 = (v9 + 16);
    for (++v27; ; (*v27)(v7, v33))
    {
      v20 = v37;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
      v21 = v38;
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v36)(v20, v21);
      if (v22)
      {
        break;
      }

      v23 = dispatch thunk of Collection.subscript.read();
      v24 = v32;
      (*v29)(v11);
      v23(v40, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Runs.Run.attributes.getter();
      v40[0] = v31;
      AttributedTextFormatting.Constraints.constrain(_:)(v7, &v39);

      v25 = v34;
      AttributedString.Runs.Run.range.getter();
      (*v28)(v11, v24);
      lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      v26 = AttributedString.subscript.modify();
      AttributedSubstring.setAttributes(_:)();
      v26(v40, 0);
      outlined destroy of ConstraintAttributeContainerProxyBase(v25, type metadata accessor for Range<AttributedString.Index>);
    }

    outlined destroy of ConstraintAttributeContainerProxyBase(v19, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  }
}

double AttributedTextFormattingDefinition.constrain(_:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for AttributeContainer?, MEMORY[0x1E69688E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AttributeContainer();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v18 = *(v11 + 32);
  v26 = a1;
  v24 = v18;
  (v18)(v13, a1, v10, v15);
  swift_getAssociatedTypeWitness();
  v25 = a3;
  swift_getAssociatedConformanceWitness();
  Dictionary<>.init<A>(_:including:)();
  AttributeContainer.init<A>(_:including:)();
  (*(v11 + 56))(v9, 0, 1, v10);
  v19 = v24;
  v24(v17, v9, v10);
  v20 = v26;
  v19(v26, v17, v10);
  AttributedTextFormattingDefinition.constraints.getter(a2, v25, &v28, v21, v22);
  v27 = v28;
  AttributedTextFormatting.Constraints.constrain(_:)(v20, &v29);

  return result;
}

void _ss8RangeSetV_6withinAByxGqd___qd_0_tc7ElementQyd__RszSTRd__SlRd_0_5IndexQyd_0_AFRSr0_lufC7SwiftUI24AttributedTextFormattingO11ConstraintsVAGV_SNyANGAMTt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
  RangeSet.init()();
  while (!__OFSUB__(a2, a1))
  {
    if (a1 == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_9:

        return;
      }
    }

    v7 = a1 == a2;
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
    RangeSet.insert<A>(_:within:)();
    a1 = v6;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AttributedTextFormatting.Constraints.constrain<A>(_:in:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void (*a3)(_BYTE *, _BYTE *, uint64_t)@<X3>, void *a4@<X8>)
{
  v43 = a4;
  v42 = a3;
  v40 = a2;
  v35 = a1;
  swift_getAssociatedTypeWitness();
  v41 = type metadata accessor for Optional();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v34 - v5;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for AttributeContainer();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v15 + 32);
  v44 = *v44;
  v22(v17, a1, v14);
  v23 = *(v44 + 16);
  *&v45 = 0;
  *(&v45 + 1) = v23;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
  RangeSet.init(_:)();
  v45 = v44;
  lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
  Collection.subscript.getter();
  (*(v11 + 8))(v13, v10);
  *&v44 = *(v15 + 16);
  v24 = v14;
  (v44)(v21, v17, v14);
  v25 = v36;
  v26 = v8;
  v27 = v8;
  v28 = v37;
  (*(v36 + 16))(&v21[*(v19 + 32)], v26, v37);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  (*(v25 + 8))(v27, v28);
  (*(v15 + 8))(v17, v24);
  v30 = *(v19 + 28);
  *&v21[v30] = v29;
  v31 = v38;
  ConstraintAttributeContainerProxyBase.subscript.getter(v40, v40, v42, v42, v38);
  (*(v39 + 8))(v31, v41);
  (v44)(v35, v21, v24);
  v32 = *&v21[v30];

  result = outlined destroy of ConstraintAttributeContainerProxyBase(v21, type metadata accessor for ConstraintAttributeContainerProxyBase);
  *v43 = v32;
  return result;
}

void specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(a2 + 48) + 16 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(*(a2 + 56) + 8 * v11);
    outlined copy of AttributedString.AnyAttribute(*v12, v14);

    if (!v15)
    {
LABEL_14:

      MEMORY[0x193AC11A0](v8);
      return;
    }

    v16 = *(a1 + 48);
    v19[2] = *(a1 + 32);
    v19[3] = v16;
    v20 = *(a1 + 64);
    v17 = *(a1 + 16);
    v19[0] = *a1;
    v19[1] = v17;
    if (v14 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    v6 &= v6 - 1;
    String.hash(into:)();

    outlined consume of AttributedString.AnyAttribute(v13, v14);

    specialized Set.hash(into:)(v19, v15);
    swift_bridgeObjectRelease_n();
    v8 ^= Hasher._finalize()();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v45 = a1;
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v47 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - v5;
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v39 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 16;
  v46 = (v4 + 32);
  v42 = v4;
  v43 = a2;
  v44 = (v4 + 8);
  v17 = v9;

  v18 = 0;
  v40 = v11;
  v41 = v17;
  v48 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v42;
      v25 = *(*(v43 + 48) + 8 * v23);
      v26 = v47;
      (*(v42 + 16))(v6, *(v43 + 56) + *(v42 + 72) * v23, v47);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
      v28 = v27;
      v29 = *(v27 + 48);
      v17 = v41;
      *v41 = v25;
      (*(v24 + 32))(v17 + v29, v6, v26);
      (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
      v30 = v25;
      v21 = v19;
      v11 = v40;
LABEL_13:
      outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(v17, v11);
      type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
      if ((*(*(v28 - 8) + 48))(v11, 1, v28) == 1)
      {
        break;
      }

      v31 = *(v28 + 48);
      v32 = *v11;
      v33 = v21;
      v34 = v47;
      (*v46)(v6, v11 + v31, v47);
      v35 = *(v45 + 48);
      v51 = *(v45 + 32);
      v52 = v35;
      v53 = *(v45 + 64);
      v36 = *(v45 + 16);
      v49 = *v45;
      v50 = v36;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.hash(into:)();

      lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>();
      dispatch thunk of Hashable.hash(into:)();
      (*v44)(v6, v34);
      v37 = Hasher._finalize()();
      v18 = v33;
      v48 ^= v37;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x193AC11A0](v48);
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(0);
        v28 = v38;
        (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1, v5);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v7, v9, a2);
}

uint64_t specialized AttributedTextFormatting.AttributeContainerProxy.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 32);
  v15 = *(a2 + 16);
  v16 = a3;
  v17 = v7;
  v18 = a4;
  v8 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy.Scoped(0, &v15);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, v9);
  v13 = *(a2 - 8);
  (*(v13 + 8))(v4, a2);
  return (*(v13 + 32))(v4, v11, a2);
}

uint64_t specialized AttributedTextFormatting.AttributeContainerProxy.Scoped.subscript.setter(uint64_t a1, void *a2)
{
  v4 = a2[6];
  v5 = a2[3];
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  (*(v10 + 16))(v16 - v8, a1, v7);
  *&v11 = a2[5];
  *&v12 = a2[2];
  *(&v12 + 1) = v5;
  *(&v11 + 1) = v4;
  v16[0] = v12;
  v16[1] = v11;
  v13 = type metadata accessor for AttributedTextFormatting.AttributeContainerProxy(0, v16);
  return AttributedTextFormatting.AttributeContainerProxy.subscript.setter(v9, v14, v13);
}

void lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t outlined destroy of ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, a2, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void instantiation function for generic protocol witness table for AttributedTextFormatting.ValueConstraint<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.ValueConstraint<A, B>);
  *(a1 + 8) = v5;
  swift_getWitnessTable(protocol conformance descriptor for AttributedTextFormatting.ValueConstraint<A, B>, a2, WitnessTable);
  *(a1 + 16) = v6;
}

void lazy protocol witness table accessor for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint()
{
  if (!lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyAttributedTextValueConstraint, &type metadata for AnyAttributedTextValueConstraint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint);
  }
}

{
  if (!lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyAttributedTextValueConstraint, &type metadata for AnyAttributedTextValueConstraint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint);
  }
}

uint64_t type metadata completion function for AttributedTextFormatting.TupleDefinition(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(v5 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v3;
  }

  return (*(*(TupleTypeMetadata - 8) + 8))(a1);
}

uint64_t initializeWithCopy for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for AttributedTextFormatting.TupleDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for AttributedTextFormatting.ValueConstraint(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.ValueConstraint(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = *(v6 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-9 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    v14 = AssociatedTypeWitness;
    *a1 = *a2;
    v15 = a2 + v8;
    v16 = a1 + v8 + 8;
    v17 = (v15 + 8);
    v18 = *(v6 + 48);

    if (v18(v17 & ~v8, 1, v14))
    {
      memcpy((v16 & ~v8), (v17 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v16 & ~v8, v17 & ~v8, v14);
      (*(v6 + 56))(v16 & ~v8, 0, 1, v14);
    }
  }

  else
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  return a1;
}

uint64_t destroy for AttributedTextFormatting.ValueConstraint(uint64_t a1, uint64_t a2)
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = a1 + v5 + 8;
  v9 = v4;
  result = (*(v4 + 48))(v6 & ~v5, 1, AssociatedTypeWitness);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, AssociatedTypeWitness);
  }

  return result;
}

uint64_t *initializeWithCopy for AttributedTextFormatting.ValueConstraint(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = a1 + v7 + 8;
  v9 = a2 + v7 + 8;
  v10 = *(v6 + 48);

  if (v10(v9 & ~v7, 1, AssociatedTypeWitness))
  {
    if (*(v6 + 84))
    {
      v11 = *(v6 + 64);
    }

    else
    {
      v11 = *(v6 + 64) + 1;
    }

    memcpy((v8 & ~v7), (v9 & ~v7), v11);
  }

  else
  {
    (*(v6 + 16))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
    (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

void *assignWithCopy for AttributedTextFormatting.ValueConstraint(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = a1 + v7 + 8;
  v9 = v3 + v7 + 8;
  v10 = *(v6 + 48);
  LODWORD(v3) = v10(v8 & ~v7, 1, AssociatedTypeWitness);
  v11 = v10(v9 & ~v7, 1, AssociatedTypeWitness);
  if (v3)
  {
    if (!v11)
    {
      (*(v6 + 16))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v6 + 24))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      return a1;
    }

    v15 = *(v6 + 8);
    v14 = v6 + 8;
    v15(v8 & ~v7, AssociatedTypeWitness);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v8 & ~v7), (v9 & ~v7), v16);
  return a1;
}

void *initializeWithTake for AttributedTextFormatting.ValueConstraint(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = a1 + v7 + 8;
  v9 = a2 + v7 + 8;
  if ((*(v6 + 48))(v9 & ~v7, 1, AssociatedTypeWitness))
  {
    if (*(v6 + 84))
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = *(v6 + 64) + 1;
    }

    memcpy((v8 & ~v7), (v9 & ~v7), v10);
  }

  else
  {
    (*(v6 + 32))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
    (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

void *assignWithTake for AttributedTextFormatting.ValueConstraint(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = a1 + v7 + 8;
  v9 = v3 + v7 + 8;
  v10 = *(v6 + 48);
  LODWORD(v3) = v10(v8 & ~v7, 1, AssociatedTypeWitness);
  v11 = v10(v9 & ~v7, 1, AssociatedTypeWitness);
  if (v3)
  {
    if (!v11)
    {
      (*(v6 + 32))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v6 + 40))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      return a1;
    }

    v15 = *(v6 + 8);
    v14 = v6 + 8;
    v15(v8 & ~v7, AssociatedTypeWitness);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v8 & ~v7), (v9 & ~v7), v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedTextFormatting.ValueConstraint(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v12 = v11 + ((v10 + 8) & ~v10);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v9 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_31:
      if ((v8 & 0x80000000) != 0)
      {
        v19 = (*(v6 + 48))((a1 + v10 + 8) & ~v10);
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
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_31;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for AttributedTextFormatting.ValueConstraint(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v14 = ((v11 + 8) & ~v11) + v13;
  if (a3 <= v12)
  {
    goto LABEL_20;
  }

  if (v14 <= 3)
  {
    v15 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v15))
    {
      v7 = 4;
      if (v12 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    if (v12 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v7 = 1;
  if (v12 >= a2)
  {
LABEL_30:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v14] = 0;
    }

    else if (v7)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = (&a1[v11 + 8] & ~v11);
        if (v10 >= a2)
        {
          v25 = *(v8 + 56);

          v25(v21, a2 + 1);
        }

        else
        {
          if (v13 <= 3)
          {
            v22 = ~(-1 << (8 * v13));
          }

          else
          {
            v22 = -1;
          }

          if (v13)
          {
            v23 = v22 & (~v10 + a2);
            if (v13 <= 3)
            {
              v24 = v13;
            }

            else
            {
              v24 = 4;
            }

            bzero(v21, v13);
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

        *a1 = v20;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v17 = ~v12 + a2;
  if (v14 >= 4)
  {
    bzero(a1, ((v11 + 8) & ~v11) + v13);
    *a1 = v17;
    v18 = 1;
    if (v7 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v18 = (v17 >> (8 * v14)) + 1;
  if (!v14)
  {
LABEL_59:
    if (v7 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v19 = v17 & ~(-1 << (8 * v14));
  bzero(a1, v14);
  if (v14 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    goto LABEL_59;
  }

  if (v14 == 2)
  {
    *a1 = v19;
    if (v7 > 1)
    {
LABEL_63:
      if (v7 == 2)
      {
        *&a1[v14] = v18;
      }

      else
      {
        *&a1[v14] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v7 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v7)
  {
    a1[v14] = v18;
  }
}

uint64_t type metadata completion function for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1)
{
  result = type metadata accessor for ConstraintAttributeContainerProxyBase(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AttributedTextFormatting.AttributeContainerProxy.Scoped(uint64_t a1)
{
  result = type metadata accessor for ConstraintAttributeContainerProxyBase(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.AttributeContainerProxy(char *a1, char *a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
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
    v7 = type metadata accessor for AttributeContainer();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *&a1[*(v6 + 20)] = *&a2[*(v6 + 20)];
    v8 = *(v6 + 24);
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 16);

    v11(&a1[v8], &a2[v8], v10);
  }

  return a1;
}

uint64_t destroy for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1)
{
  v2 = type metadata accessor for AttributeContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);

  v4 = *(v3 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v8 = v7;
  v9 = *(*(v7 - 8) + 16);

  v9(a1 + v6, a2 + v6, v8);
  return a1;
}

uint64_t assignWithCopy for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithTake for AttributedTextFormatting.AttributeContainerProxy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  v6 = *(v5 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

double get_witness_table_7SwiftUI4ViewRzAA34AttributedTextFormattingDefinitionRd__r__lAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA21AttributeScopeContextVGGAaBHPxAaBHD1__AjA0cM0HPyHCHCTm(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for _EnvironmentKeyWritingModifier<AttributeScopeContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AttributeScopeContext>, &type metadata for AttributeScopeContext, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t type metadata completion function for AttributedTextFormatting._Inputs.Operation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedTextFormatting._Inputs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(v5 + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(v3, 0, 0, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithCopy for AttributedTextFormatting._Inputs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  (*(v5 + 56))(a1, 0, 0, v4);
  return a1;
}

uint64_t initializeWithTake for AttributedTextFormatting._Inputs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 32))(a1, a2, v4);
  (*(v5 + 56))(a1, 0, 0, v4);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for ConstraintAttributeContainerProxyBase(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for AttributeContainer();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 16);

    v11(&a1[v8], &a2[v8], v10);
  }

  return a1;
}

uint64_t destroy for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a2 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t initializeWithCopy for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  v9 = v8;
  v10 = *(*(v8 - 8) + 16);

  v10(a1 + v7, a2 + v7, v9);
  return a1;
}

uint64_t assignWithCopy for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7 = *(a3 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t initializeWithTake for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  *(a1 + v7) = *(a2 + v7);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t assignWithTake for ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7 = *(a3 + 24);
  type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

void type metadata completion function for ConstraintAttributeContainerProxyBase(uint64_t a1)
{
  type metadata accessor for AttributeContainer();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(319, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>()
{
  if (!lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v3 = v2;
    lazy protocol witness table accessor for type AnyAttributedTextValueConstraint and conformance AnyAttributedTextValueConstraint();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E6E28], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance <> DiscontiguousSlice<A>);
  }
}

void type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>)
  {
    v1 = MEMORY[0x1E69E6E20];
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    lazy protocol witness table accessor for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>(&lazy protocol witness table cache variable for type DiscontiguousSlice<AttributedTextFormatting.Constraints> and conformance DiscontiguousSlice<A>, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, v1, MEMORY[0x1E69E6E38]);
    v2 = type metadata accessor for DefaultIndices();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>);
    }
  }
}

void type metadata accessor for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>)
  {
    type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(255);
    lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries(&lazy protocol witness table cache variable for type DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>, MEMORY[0x1E69E5EC8]);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>>);
    }
  }
}

void type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?))
  {
    type metadata accessor for AttributeContainer?(255, &lazy cache variable for type metadata for AttributedString.AttributeRunBoundaries?, MEMORY[0x1E6968718], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    }
  }
}

void type metadata accessor for AttributeContainer?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of AttributeContainer?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for AttributeContainer?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for RangeSet<AttributedTextFormatting.Constraints.Index>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>?)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>?);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AttributeScopeContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>))
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>));
    }
  }
}

void type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>))
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>));
    }
  }
}

uint64_t outlined init with take of (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributeContainer?(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>)?, type metadata accessor for (key: NSAttributedStringKey, value: RangeSet<AttributedTextFormatting.Constraints.Index>), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>()
{
  if (!lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    v3 = v2;
    lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E7BE8], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type RangeSet<AttributedTextFormatting.Constraints.Index> and conformance <> RangeSet<A>);
  }
}

void lazy protocol witness table accessor for type RangeSet<AttributedTextFormatting.Constraints.Index>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(255, a2, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t outlined init with take of ConstraintAttributeContainerProxyBase(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DefaultIndices<DiscontiguousSlice<AttributedTextFormatting.Constraints>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void lazy protocol witness table accessor for type GlassContainer.ItemData and conformance GlassContainer.ItemData()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.ItemData and conformance GlassContainer.ItemData)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.ItemData, &type metadata for GlassContainer.ItemData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.ItemData and conformance GlassContainer.ItemData);
  }
}

void EnvironmentValues.attributeScopeContext.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(v2, a1);
  }
}

uint64_t AttributeScopeContext.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
  v9 = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v11);

  result = outlined destroy of TaskPriority?(v4);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v9;
  return result;
}

void _s10Foundation14AttributeScopeP7SwiftUIE4keysAA16AttributedStringVADE4KeysVvgZAA0B6ScopesOADE0D12UIAttributesV_Tt0g5(uint64_t *a1@<X8>)
{
  type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  if (one-time initialization token for scopeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);
  v6 = off_1ED5247F0;
  if (!*(off_1ED5247F0 + 2) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) == 0))
  {
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
LABEL_8:
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
    static AttributeScope.attributeKeys.getter();
    _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCAA14AttributeScopePAAE09attributeF0QrvpZQOyAA0I6ScopesOADE0D12UIAttributesV_Qo__Tt1g5(v4, &v12);
    v9 = v12;
    os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_1ED5247F0;
    off_1ED5247F0 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v5, isUniquelyReferenced_nonNull_native);
    off_1ED5247F0 = v12;
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
    goto LABEL_9;
  }

  v9 = *(v6[7] + 8 * v7);

  os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a1 = v9;
}

double EnvironmentValues.attributeScopeContext.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *v2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(v2, v3, v4, v5, v6);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v7, *v2);
  }

  return result;
}

double AttributeScopeContext.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AttributedTextFormattingDefinition.constraints.getter(a2, a3, &v15, v9, v10);
  v14 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AttributeScopeContext.init<A>(scope:constraints:)(&v14, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *v16;
  v13 = v16[1];
  *a4 = v16[0];
  a4[1] = v13;
  return result;
}

void (*EnvironmentValues.attributeScopeContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  *(v5 + 56) = v8;
  v12 = *v1;
  *(v5 + 64) = *v1;
  v13 = *(v1 + 8);
  *(v5 + 72) = v13;
  if (v13)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5(v12, v5);
  }

  else
  {
    v14 = v8;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>(0, v9, v10, v11);
    BloomFilter.init(hashValue:)(v15);
    v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(v12, v27);
    if (v16)
    {
      v17 = v16[12];
      v18 = *(v16 + 5);
      *v5 = v16[9];
      *(v5 + 8) = v18;
      *(v5 + 24) = v17;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v21 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
      v23 = v22;
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v14, &closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply, v25);

      outlined destroy of TaskPriority?(v14);
      *v5 = v19;
      *(v5 + 8) = v20;
      *(v5 + 16) = v21;
      *(v5 + 24) = v23;
    }
  }

  return EnvironmentValues.attributeScopeContext.modify;
}

void EnvironmentValues.attributeScopeContext.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];

  v8 = v3[9];
  v9 = v3[6];
  if (a2)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v3[8], *v3[6]);
    }

    v10 = v3[7];
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Ttg5(v3[8], *v3[6]);
    }

    v10 = v3[7];
  }

  free(v10);

  free(v3);
}

double AttributeScopeContext.constraints.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

__n128 AttributeScopeContext.constraints.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t AttributeScopeContext.scope.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AttributeScopeContext.init<A>(scope:constraints:)@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  *a4 = *a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v12);

  return outlined destroy of TaskPriority?(v10);
}

uint64_t specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:)()
{
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), 0, 0);
}

{
  v4 = v0;
  _s10Foundation14AttributeScopeP7SwiftUIE4keysAA16AttributedStringVADE4KeysVvgZAA0B6ScopesOADE0D12UIAttributesV_Tt0g5(&v3);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in AttributeScopeContext.init<A>(scope:constraints:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in AttributeScopeContext.init<A>(scope:constraints:), 0, 0);
}

uint64_t closure #1 in AttributeScopeContext.init<A>(scope:constraints:)()
{
  v4 = v0;
  static AttributeScope.keys.getter(*(v0 + 16), *(v0 + 24), &v3);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

uint64_t static AttributeScope.typingAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v9 = &v12 - v8;
  static AttributeScope.attributeKeys.getter();
  type metadata accessor for NSAttributedStringKey(0);
  v13 = a1;
  v14 = a2;
  swift_getOpaqueTypeConformance2();
  v10 = Sequence.compactMap<A>(_:)();
  result = (*(v7 + 8))(v9, OpaqueTypeMetadata2);
  *a3 = v10;
  return result;
}

uint64_t closure #1 in static AttributeScope.typingAttributes.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (dispatch thunk of static AttributedStringKey.inheritedByAddedText.getter())
  {
    result = static AttributedStringKey.nsAttributedStringKey.getter(v3, v4);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV12defaultValue0G0QzvgZAA0C6ValuesVAAE02__E22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLV_Tt0g5@<X0>(void *a1@<X8>)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
  v9 = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply, v11);

  result = outlined destroy of TaskPriority?(v4);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v9;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_(__n128 a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>);
    }
  }
}

uint64_t closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:)();
}

uint64_t specialized static AttributeScopeContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (a1[2] == a2[2])
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *a2;
    v6 = a2[1];

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(v3, v5))
    {
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(v4, v6);
      v2 = v7;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t initializeWithCopy for AttributeScopeContext(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v3 = a2[3];
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for AttributeScopeContext(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = *(a2 + 1);
  return a1;
}

_OWORD *assignWithTake for AttributeScopeContext(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void lazy protocol witness table accessor for type [NSAttributedStringKey] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance [A])
  {
    type metadata accessor for TaskPriority?(255, &lazy cache variable for type metadata for [NSAttributedStringKey], type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6328], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance [A]);
  }
}

void type metadata accessor for TaskPriority?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in AttributeScopeContext.init<A>(scope:constraints:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return closure #1 in AttributeScopeContext.init<A>(scope:constraints:)(a1, v7, v6, v4, v5);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0);
    }
  }
}

double partial apply for closure #1 in OffsetShapeStyle._apply(to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v8 + *(type metadata accessor for OffsetShapeStyle(0, v6, v7, a2) + 36));
  *a3 = a1;
  a3[1] = v9;

  return result;
}

void type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>)
  {
    v4 = type metadata accessor for OffsetShapeStyle(0, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>);
    }
  }
}

double Shape.sizeThatFits(_:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t Shape.layoutDirectionBehavior.getter@<X0>(char *a1@<X8>)
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    result = dyld_program_minos_at_least();
  }

  else
  {
    result = dword_1ED53C520 >= v2;
  }

  if (result)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

Swift::Int ShapeRole.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type ShapeRole and conformance ShapeRole()
{
  if (!lazy protocol witness table cache variable for type ShapeRole and conformance ShapeRole)
  {
    swift_getWitnessTable(protocol conformance descriptor for ShapeRole, &type metadata for ShapeRole, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ShapeRole and conformance ShapeRole);
  }
}

double _StrokedShape.style.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v5 = v3[1];
  v4 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v4;
  a2[3] = v6;
  a2[4] = v7;

  return result;
}

__n128 _StrokedShape.style.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = *(a1 + 32);
  return result;
}

uint64_t _StrokedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _StrokedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*_StrokedShape.animatableData.modify(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = a2;
  v6[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair(0, v7);
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _StrokedShape.animatableData.getter(a2, v16);
  return _StrokedShape.animatableData.modify;
}

void _StrokedShape.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _StrokedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _StrokedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _StrokedShape<A>(uint64_t a1, uint64_t a2)
{
  specialized _StrokedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _StrokedShape<A>(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = v2;
  v6[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair(0, v7);
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _StrokedShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance _StrokedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _StrokedShape<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _StrokedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _StrokedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double Shape.stroke(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  (*(v9 + 32))(a4, v12, a2);
  v14 = a4 + *(type metadata accessor for _StrokedShape(0, a2, a3, v13) + 36);
  v15 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(a1 + 32);

  return result;
}

double Shape.stroke(lineWidth:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *v5 = a4;
  v5[1] = 0;
  v5[2] = 0x4024000000000000;
  v5[3] = MEMORY[0x1E69E7CC0];
  v5[4] = 0;
  return Shape.stroke(style:)(v5, a1, a2, a3);
}

uint64_t specialized _StrokedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v22 - v9;
  (*(v11 + 16))(v22 - v9, a1, AssociatedTypeWitness, v8);
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(255);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  v22[0] = AssociatedTypeWitness;
  v22[1] = v13;
  v22[2] = AssociatedConformanceWitness;
  v22[3] = v15;
  v16 = (a1 + *(type metadata accessor for AnimatablePair(0, v22) + 52));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  result = (*(v6 + 32))(v10, v5, v6);
  v21 = (v2 + *(a2 + 36));
  *v21 = v17;
  v21[2] = v18;
  v21[4] = v19;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _StrokedShape(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
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
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 12) = *(v11 + 12);
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 32) = *(v11 + 32);
  }

  return v3;
}

uint64_t initializeWithTake for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t assignWithTake for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);
  return a1;
}

void *makeHiddenView(allowedKeys:inputs:body:)(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v43 = *(a2 + 32);
  v44 = v4;
  v6 = *(a2 + 48);
  v45 = *(a2 + 64);
  v7 = *(a2 + 16);
  v42[0] = *a2;
  v42[1] = v7;
  v38 = v43;
  v39 = v6;
  v40 = *(a2 + 64);
  v8 = *a1;
  v46 = *(a2 + 80);
  v41 = *(a2 + 80);
  v36 = v42[0];
  v37 = v5;
  if ((v8 & 0x10) != 0)
  {
    outlined init with copy of _ViewInputs(v42, v34);
    if ((v8 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = v39;
    *&v32[0] = v39;
    v10 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);
    outlined init with copy of _ViewInputs(v42, v34);

    v11 = *(v9 + 16);
    if (v10 != v11)
    {
      if (v10 >= v11)
      {
        __break(1u);
        goto LABEL_25;
      }

      if (*(v9 + 16 * v10 + 32) == &type metadata for DisplayList.Key)
      {
        specialized Array.remove(at:)(v10);
      }
    }

    if ((v8 & 4) != 0)
    {
LABEL_12:
      if ((v8 & 8) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  v12 = v39;
  *&v34[0] = v39;
  v13 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);

  v14 = *(v12 + 16);
  if (v13 == v14)
  {
    goto LABEL_12;
  }

  if (v13 >= v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v12 + 16 * v13 + 32) != &type metadata for ViewRespondersKey)
  {
    goto LABEL_12;
  }

  specialized Array.remove(at:)(v13);
  if ((v8 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v39;
  *&v34[0] = v39;
  v16 = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);

  v17 = *(v15 + 16);
  if (v16 == v17)
  {
    goto LABEL_18;
  }

  if (v16 >= v17)
  {
LABEL_26:
    __break(1u);
  }

  if (*(v15 + 16 * v16 + 32) == &type metadata for HostPreferencesKey)
  {
    specialized Array.remove(at:)(v16);
  }

LABEL_18:
  LODWORD(v34[0]) = DWORD2(v44);
  *(&v34[0] + 1) = v8;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:)();
  DWORD2(v39) = Attribute.init<A>(body:value:flags:update:)();
  v18 = *&v42[0];
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(*&v42[0]))
  {
    *&v34[0] = v8;
    (*(v19 + 8))(&v36, v34);
  }

  if ((v8 & 1) == 0)
  {
    v20 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v18);
    if (v20)
    {
      (*(v21 + 8))(&v36, v20, v21);
    }
  }

  v30[2] = v38;
  v30[3] = v39;
  v30[4] = v40;
  v31 = v41;
  v30[0] = v36;
  v30[1] = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v24 = v36;
  v25 = v37;
  v22 = outlined init with copy of _ViewInputs(v30, v34);
  a3(v22, &v24);
  v32[2] = v26;
  v32[3] = v27;
  v32[4] = v28;
  v33 = v29;
  v32[0] = v24;
  v32[1] = v25;
  outlined destroy of _ViewInputs(v32);
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  return outlined destroy of _ViewInputs(v34);
}

void (*_ViewInputs.requestedHiddenRepresentation.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedHiddenRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedHiddenRepresentation.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedHiddenRepresentation.modify;
}

double key path setter for _ViewInputs.requestedHiddenRepresentation : _ViewInputs(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t *, __n128))
{
  v7 = *a1;
  v8 = a1[1];

  (a5)(a2, v7, v8, &v10);

  return result;
}

double _ViewInputs.requestedHiddenRepresentation.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t *))
{

  a3(v3, a1, a2, &v8);

  return result;
}

void (*_ViewInputs.hiddenAccessibilityProvider.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.hiddenAccessibilityProvider.modify;
}

uint64_t (*_GraphInputs.hiddenAccessibilityProvider.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.hiddenAccessibilityProvider.modify;
}

void _ViewInputs.requestedHiddenRepresentation.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, void *, __n128))
{
  v5 = *a1;
  v7 = **a1;
  v6 = (*a1)[1];

  if (a2)
  {
    v8 = v5 + 2;
  }

  else
  {
    v8 = v5 + 3;
  }

  (a3)(v5[4], v7, v6, v8);

  free(v5);
}

void value.getter in HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:)(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *AGGraphGetValue();

  if ((v2 & 0x10) != 0)
  {
    if ((v2 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    PreferenceKeys.remove(_:)(&type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    if ((v2 & 4) != 0)
    {
LABEL_3:
      if ((v2 & 8) != 0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  PreferenceKeys.remove(_:)(&type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  if ((v2 & 8) != 0)
  {
    return;
  }

LABEL_4:
  PreferenceKeys.remove(_:)(&type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
}

void lazy protocol witness table accessor for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:)()
{
  if (!lazy protocol witness table cache variable for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:))
  {
    swift_getWitnessTable(protocol conformance descriptor for HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:), &unk_1F0086EA0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:) and conformance HostKeys #1 in makeHiddenView(allowedKeys:inputs:body:));
  }
}

void lazy protocol witness table accessor for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden()
{
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    swift_getWitnessTable(protocol conformance descriptor for AllowedPreferenceKeysWhileHidden, &type metadata for AllowedPreferenceKeysWhileHidden, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }
}

{
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    swift_getWitnessTable(protocol conformance descriptor for AllowedPreferenceKeysWhileHidden, &type metadata for AllowedPreferenceKeysWhileHidden, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }
}

{
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    swift_getWitnessTable(protocol conformance descriptor for AllowedPreferenceKeysWhileHidden, &type metadata for AllowedPreferenceKeysWhileHidden, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }
}

{
  if (!lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden)
  {
    swift_getWitnessTable(protocol conformance descriptor for AllowedPreferenceKeysWhileHidden, &type metadata for AllowedPreferenceKeysWhileHidden, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AllowedPreferenceKeysWhileHidden and conformance AllowedPreferenceKeysWhileHidden);
  }
}

uint64_t keypath_getTm_2@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t LocationBox.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  swift_beginAccess();
  return (*(*(*(v3 + 168) - 8) + 16))(a1, v1 + v4);
}

uint64_t property wrapper backing initializer of LocationBox.cache@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  type metadata accessor for AtomicBuffer<LocationProjectionCache>(0, a2, a3, a4);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v6;
  *a5 = result;
  return result;
}

SwiftUI::LocationProjectionCache __swiftcall LocationProjectionCache.init()()
{
  v1 = v0;
  result.cache._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12AnyHashable2V_AC7WeakBoxVyAC0E12LocationBaseCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1->cache._rawValue = result.cache._rawValue;
  return result;
}

uint64_t (*LocationBox.wasRead.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = LocationBox.wasRead.getter() & 1;
  return LocationBox.wasRead.modify;
}

double LocationBox.__ivar_destroyer()
{
  (*(*(*(*v0 + 168) - 8) + 8))(v0 + *(*v0 + 184));

  return result;
}

void (*protocol witness for Location.wasRead.modify in conformance LocationBox<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = LocationBox.wasRead.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t ProjectedLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v6 + 48))(v7, v6, v10);
  (*(a3[5] + 40))(v12, a1, a3[3]);
  (*(v6 + 56))(v12, a2, v7, v6);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance ProjectedLocation<A, B>(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = ProjectedLocation.wasRead.getter(a2) & 1;
  return protocol witness for Location.wasRead.modify in conformance ProjectedLocation<A, B>;
}

void (*protocol witness for Location.wasRead.modify in conformance FunctionalLocation<A>(uint64_t a1, uint64_t a2))()
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  return protocol witness for Location.wasRead.modify in conformance FunctionalLocation<A>;
}

uint64_t ZipLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v21 - v17;
  (*(*(a6 - 8) + 16))(&v21 - v17, a1, a6, v16);
  v19 = *(TupleTypeMetadata2 + 48);
  (*(*(a7 - 8) + 16))(&v18[v19], a2, a7);
  (*(*a4 + 128))(v18, a3);
  (*(*a5 + 128))(&v18[v19], a3);
  return (*(v15 + 8))(v18, TupleTypeMetadata2);
}

double (*protocol witness for Location.wasRead.modify in conformance ZipLocation<A, B>(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = ZipLocation.wasRead.getter(*v2, v2[1]) & 1;
  return protocol witness for Location.wasRead.modify in conformance ZipLocation<A, B>;
}

uint64_t protocol witness for Location.get() in conformance ZipLocation<A, B>@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = a2 + *(swift_getTupleTypeMetadata2() + 48);

  return ZipLocation.get()(a2, v6, v5, v4);
}

uint64_t protocol witness for Location.set(_:transaction:) in conformance ZipLocation<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *v3;
  v10 = v3[1];
  v11 = a1 + *(TupleTypeMetadata2 + 48);

  return ZipLocation.set(_:transaction:)(a1, v11, a2, v9, v10, v6, v7);
}

uint64_t FlattenedCollectionLocation.wasRead.getter(uint64_t a1)
{
  v1 = FlattenedCollectionLocation.primaryLocation.getter(a1);
  v2 = (*(*v1 + 96))(v1);

  return v2 & 1;
}

uint64_t key path getter for FlattenedCollectionLocation.wasRead : <A, B>FlattenedCollectionLocation<A, B>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v7[0] = *(a1 + a2 - 32);
  v7[1] = v4;
  v5 = type metadata accessor for FlattenedCollectionLocation(0, v7);
  result = FlattenedCollectionLocation.wasRead.getter(v5);
  *a3 = result & 1;
  return result;
}

double key path setter for FlattenedCollectionLocation.wasRead : <A, B>FlattenedCollectionLocation<A, B>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a3 + a4 - 16);
  v8[0] = *(a3 + a4 - 32);
  v8[1] = v5;
  v6 = type metadata accessor for FlattenedCollectionLocation(0, v8);
  return FlattenedCollectionLocation.wasRead.setter(v4, v6);
}

double FlattenedCollectionLocation.wasRead.setter(uint64_t a1, uint64_t a2)
{
  v3 = FlattenedCollectionLocation.primaryLocation.getter(a2);
  (*(*v3 + 104))(a1);

  return result;
}

double (*FlattenedCollectionLocation.wasRead.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = FlattenedCollectionLocation.primaryLocation.getter(a2);
  v5 = (*(*v4 + 96))(v4);

  *(a1 + 16) = v5 & 1;
  return FlattenedCollectionLocation.wasRead.modify;
}

double FlattenedCollectionLocation.wasRead.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = FlattenedCollectionLocation.primaryLocation.getter(*a1);
  (*(*v2 + 104))(v1);

  return result;
}

uint64_t FlattenedCollectionLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, v3, v6, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v18)
    {
      break;
    }

    v15 = *(*v18 + 128);

    v15(a1, a2);
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}