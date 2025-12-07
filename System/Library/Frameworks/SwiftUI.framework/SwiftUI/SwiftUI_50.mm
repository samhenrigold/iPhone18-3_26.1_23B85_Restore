uint64_t closure #1 in PlatterShadowedContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  WitnessTable = a4;
  v44 = a6;
  v39 = *(a5 + 8);
  v10 = v39;
  v11 = type metadata accessor for _ShadowView(0, a3, v39, a4);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v36 - v23;
  *v64 = a2;
  *&v64[8] = a3;
  v24 = a3;
  v40 = a3;
  *&v64[16] = WitnessTable;
  *&v64[24] = a5;
  v25 = type metadata accessor for PlatterShadowedContent(0, v64);
  Shape.fillShadow(color:radius:x:y:)(*(a1 + v25[15]), v24, v10, v13, *(a1 + v25[17]), 0.0, *(a1 + v25[18]));
  v26 = *(a1 + v25[16]);
  v52 = 1065353216;
  v54 = 0;
  v53 = 0;
  v55 = 0x3F80000000000000;
  v57 = 0;
  v56 = 0;
  v58 = 0x3F80000000000000;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = -v26;
  v63 = v26;
  v37 = v11;
  View._colorMatrix(_:)();
  v27 = *(v46 + 8);
  v46 += 8;
  v38 = v27;
  v27(v13, v11);
  v51[0] = &protocol witness table for _ShadowView<A>;
  v51[1] = MEMORY[0x1E697F580];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v51);
  v28 = *(v15 + 16);
  v28(v45, v21, v14);
  v29 = *(v15 + 8);
  v29(v21, v14);
  Shape.fillShadow(color:radius:x:y:)(*(a1 + v25[19]), v40, v39, v13, *(a1 + v25[21]), 0.0, *(a1 + v25[22]));
  v30 = *(a1 + v25[20]);
  *&v64[12] = 0;
  *&v64[4] = 0;
  *&v64[20] = 0x3F80000000000000;
  v65 = 0;
  *&v64[28] = 0;
  v66 = 0x3F80000000000000;
  v68 = 0;
  v67 = 0;
  *v64 = 1065353216;
  v69 = 0;
  v70 = -v30;
  v71 = v30;
  v31 = v42;
  v32 = v37;
  View._colorMatrix(_:)();
  v38(v13, v32);
  v28(v21, v31, v14);
  v29(v31, v14);
  v33 = v45;
  v28(v31, v45, v14);
  v50[0] = v31;
  v34 = v43;
  v28(v43, v21, v14);
  v50[1] = v34;
  v49[0] = v14;
  v49[1] = v14;
  v47 = WitnessTable;
  v48 = WitnessTable;
  static ViewBuilder.buildBlock<each A>(_:)(v50, 2uLL, v49);
  v29(v21, v14);
  v29(v33, v14);
  v29(v34, v14);
  return (v29)(v31, v14);
}

uint64_t closure #2 in PlatterShadowedContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v32 = a6;
  v33 = a3;
  v34 = MEMORY[0x1E697E3F0];
  v35 = MEMORY[0x1E6981E70];
  v36 = a5;
  v37 = MEMORY[0x1E697E3E0];
  v38 = MEMORY[0x1E6981E60];
  v11 = type metadata accessor for StrokeBorderShapeView();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  type metadata accessor for Spacer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18CD63410;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v19 = type metadata accessor for PlatterShadowedContent(0, &v33);
  *(v18 + 32) = *(a1 + *(v19 + 92));
  *(v18 + 40) = *(a1 + *(v19 + 96));

  static UnitPoint.top.getter();
  v21 = v20;
  v23 = v22;
  static UnitPoint.bottom.getter();
  v25 = v24;
  v27 = v26;
  v33 = MEMORY[0x18D00B0A0](v18);
  v34 = v21;
  v35 = v23;
  v36 = v25;
  v37 = v27;
  InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)(&v33, 1, a3, MEMORY[0x1E697E3F0], a5, MEMORY[0x1E697E3E0], v14);

  swift_getWitnessTable(MEMORY[0x1E697FCF0], v11);
  v28 = *(v12 + 16);
  v28(v17, v14, v11);
  v29 = *(v12 + 8);
  v29(v14, v11);
  v28(v32, v17, v11);
  return (v29)(v17, v11);
}

uint64_t InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = a2;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  InsettableShape.strokeBorder<A>(_:style:antialiased:)(a1, v16, v12, a3, a4, a5, a6, x8_0);
  return outlined destroy of StrokeStyle(v16);
}

uint64_t key path getter for EnvironmentValues.displayCornerRadius : EnvironmentValues@<X0>(uint64_t a3@<X8>)
{
  result = EnvironmentValues.displayCornerRadius.getter();
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t type metadata completion function for PlatterButtonStyleView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlatterButtonStyleView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((((v6 + ((v5 + 2) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 2) & ~v5;
    v11 = (a2 + v5 + 2) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = ((v6 + v11) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v6 + v10) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v12;
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *v14 = v16;
    *(v14 + 9) = *(v15 + 9);
    v17 = (v14 + 17) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v15 + 17) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    LOBYTE(v11) = *(v18 + 9);
    v20 = *(v18 + 8);

    outlined copy of Environment<CGFloat?>.Content(v19, v20, v11);
    *v17 = v19;
    *(v17 + 8) = v20;
    *(v17 + 9) = v11;
  }

  return v3;
}

double destroy for PlatterButtonStyleView(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 2) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = ((*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 9);
  v9 = *(v6 + 8);

  return outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
}

_WORD *initializeWithCopy for PlatterButtonStyleView(_WORD *a1, _WORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 2) & ~v6;
  v8 = (a2 + v6 + 2) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = v9 + v7;
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v10 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  *(v12 + 9) = *(v13 + 9);
  v15 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v8) = *(v16 + 9);
  v18 = *(v16 + 8);

  outlined copy of Environment<CGFloat?>.Content(v17, v18, v8);
  *v15 = v17;
  *(v15 + 8) = v18;
  *(v15 + 9) = v8;
  return a1;
}

_BYTE *assignWithCopy for PlatterButtonStyleView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 2] & ~v6;
  v8 = &a2[v6 + 2] & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v9 + v8;
  v12 = (v11 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v10 = *(v11 & 0xFFFFFFFFFFFFFFF8);

  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v12 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v13 = v14;
  *(v13 + 9) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 9);
  v15 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v12) = *(v16 + 9);
  LOBYTE(v10) = *(v16 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v16, v10, v12);
  v18 = *v15;
  v19 = *(v15 + 9);
  *v15 = v17;
  v20 = *(v15 + 8);
  *(v15 + 8) = v10;
  *(v15 + 9) = v12;
  outlined consume of Environment<CGFloat?>.Content(v18, v20, v19);
  return a1;
}

_WORD *initializeWithTake for PlatterButtonStyleView(_WORD *a1, _WORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 2) & ~v6;
  v8 = (a2 + v6 + 2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  *(v12 + 9) = *(v13 + 9);
  v15 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 8);
  *v15 = *v16;
  *(v15 + 8) = v17;
  return a1;
}

_BYTE *assignWithTake for PlatterButtonStyleView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 2] & ~v6;
  v8 = &a2[v6 + 2] & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 15;
  *v10 = v12;

  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v13 = v14;
  *(v13 + 9) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 9);
  v15 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(v16) = *(v16 + 9);
  v19 = *v15;
  v20 = *(v15 + 9);
  *v15 = v17;
  v21 = *(v15 + 8);
  *(v15 + 8) = v18;
  *(v15 + 9) = v16;
  outlined consume of Environment<CGFloat?>.Content(v19, v21, v20);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatterButtonStyleView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((((((v8 + ((v6 + 2) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10;
  v10 = (a2 - v7 + 0xFFFF) >> 16;
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
      v14 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9), !*(a1 + v9)))
  {
LABEL_28:
    v18 = (a1 + v6 + 2) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
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

void storeEnumTagSinglePayload for PlatterButtonStyleView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v11 = ((((((v10 + ((v9 + 2) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10;
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
    v12 = (a3 - v8 + 0xFFFF) >> 16;
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
      v18 = &a1[v9 + 2] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
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
  bzero(a1, ((((((v10 + ((v9 + 2) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10);
  if (v11 <= 3)
  {
    v17 = HIWORD(v16) + 1;
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

uint64_t type metadata completion function for PlatterShadowedContent(uint64_t a1)
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

void *initializeBufferWithCopyOfBuffer for PlatterShadowedContent(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v8 | *(v4 + 80) & 0xF8;
  v11 = v10 <= 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v9 + 7, ((((((((((((((((((((((v9 + 7 + ((v8 + v5 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18))
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v14 = a2 + v5 + v8;
    v15 = (v3 + v5 + v8 + 1) & ~v8;
    v16 = (v14 + 1) & ~v8;
    (*(v7 + 16))(v15, v16, v6);
    v17 = ((v12 + v15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v16) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v29 = ((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v28 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v34;
    v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v36;
    *((v35 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v37 = *a2;
    *a1 = *a2;
    v3 = (v37 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  return v3;
}

double destroy for PlatterShadowedContent(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(v4 + 56) + *(*(*(a2 + 16) - 8) + 80) + 1) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

uint64_t initializeWithCopy for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  *((v34 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v35 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + v14;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v16 += 11;

  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v18 & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v22 += 15;
  *v21 = v23;
  v21 += 15;
  v24 = (v22 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v21 & 0xFFFFFFFFFFFFFFF8) = *(v22 & 0xFFFFFFFFFFFFFFF8);
  v25 = (v21 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v25 & 0xFFFFFFFFFFFFFFF8) = *(v24 & 0xFFFFFFFFFFFFFFF8);
  v26 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v29 += 15;
  *v28 = v30;
  v28 += 15;
  v31 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v28 & 0xFFFFFFFFFFFFFFF8) = *(v29 & 0xFFFFFFFFFFFFFFF8);
  v32 = (v28 & 0xFFFFFFFFFFFFFFF8) + 15;

  v32 &= 0xFFFFFFFFFFFFFFF8;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  *v32 = *v31;

  *((v32 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 32))(v13, v14);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  *((v34 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v17 += 11;
  *v16 = v18;
  v16 += 11;

  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = (((v17 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v22 += 15;
  *v21 = v23;
  v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v24 = *(v22 & 0xFFFFFFFFFFFFFFF8);
  v24 += 11;

  *(v24 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);
  v26 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v29 += 15;
  *v28 = v30;
  v31 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v31 = *(v29 & 0xFFFFFFFFFFFFFFF8);

  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 &= 0xFFFFFFFFFFFFFFF8;
  *v33 = *v32;

  *((v33 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatterShadowedContent(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  if (v5 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v6 + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v12 = ((((((((((((((((((((((v11 + ((v8 + v9 + 1) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
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
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1, v5, *(a3 + 24));
    }

    v22 = (a1 + v8 + v9 + 1) & ~v9;
    if (v7 == v10)
    {
      return (*(v6 + 48))(v22);
    }

    v23 = *((v11 + v22) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    v21 = *a1;
  }

  else
  {
    v21 = 0;
  }

  return v10 + (v21 | v20) + 1;
}

_BYTE *storeEnumTagSinglePayload for PlatterShadowedContent(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  if (v6 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v5 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v7 + 64) + 7;
  v13 = ((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v17 = 0;
    v18 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = a3 - v11;
    if (((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v18 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v11)
      {
        v22 = *(v5 + 56);

        return v22();
      }

      else
      {
        result = (&result[v9 + 1 + v10] & ~v10);
        if (v8 == v11)
        {
          v23 = *(v7 + 56);

          return v23(result);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = a2 - 1;
          }

          *(&result[v12] & 0xFFFFFFFFFFFFFFF8) = v24;
        }
      }

      return result;
    }
  }

  if (((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v11 + a2;
    v21 = result;
    bzero(result, ((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterButtonStyleView.ClippingShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatterButtonStyleView.ClippingShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F6E0], MEMORY[0x1E697F6E8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PlatterButtonStyleView<A>.ClippingShape(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable(protocol conformance descriptor for PlatterButtonStyleView<A>.ClippingShape);
  result = swift_getWitnessTable(protocol conformance descriptor for PlatterButtonStyleView<A>.ClippingShape, a2);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PlatterButtonStyleView<A>.ClippingShape(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PlatterButtonStyleView<A>.ClippingShape);
  *(a1 + 8) = result;
  return result;
}

uint64_t InsettableShape.strokeBorder<A>(_:style:antialiased:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return StrokeBorderShapeView.init(shape:style:strokeStyle:isAntialiased:background:)(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x1E6981E70], a8, a6, a7, MEMORY[0x1E6981E60]);
}

uint64_t StrokeBorderShapeView.init(shape:style:strokeStyle:isAntialiased:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a5;
  LODWORD(v51) = a4;
  v46 = a3;
  v49 = a2;
  v57 = a1;
  v58 = a9;
  v42 = a11;
  v47 = a8;
  v50 = *(a8 - 8);
  v54 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for _BackgroundModifier();
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v38 - v15;
  v38 = a7;
  v45 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = type metadata accessor for _StrokedShape();
  v20 = MEMORY[0x1EEE9AC00](v19);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E298], v19, v20);
  v59 = v19;
  v60 = a7;
  v61 = WitnessTable;
  v62 = a11;
  v44 = type metadata accessor for _ShapeView();
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v44);
  v40 = &v38 - v23;
  v24 = *(a6 - 8);
  v25 = *(v24 + 16);
  v39 = a6;
  v25(v58, v57, a6, v22);
  (*(v56 + 32))(a6, *v46 * 0.5);
  _StrokedShape.init(shape:style:)();
  v26 = v45;
  v27 = v49;
  v28 = v38;
  (*(v45 + 16))(v43, v49, v38);
  v29 = v28;
  v30 = v42;
  _ShapeView.init(shape:style:fillStyle:)();
  v31 = v50;
  v32 = v47;
  v33 = v53;
  (*(v50 + 16))(v48, v53, v47);
  static Alignment.center.getter();
  v51 = v34;
  (*(v31 + 8))(v33, v32);
  (*(v26 + 8))(v27, v28);
  v35 = v39;
  (*(v24 + 8))(v57, v39);
  v36 = v54;
  _BackgroundModifier.init(background:alignment:)();
  v59 = v35;
  v60 = v29;
  v61 = v32;
  v62 = v56;
  v63 = v30;
  v64 = v36;
  type metadata accessor for StrokeBorderShapeView();
  return ModifiedContent.init(content:modifier:)();
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset()
{
  result = lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset;
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697EAA8], MEMORY[0x1E697EAC0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }

  return result;
}

uint64_t UISceneSessionActivationRequest.init<A>(hostingDelegateClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  BridgedSceneCoordinator.register<A>(_:)(a1, a2, a3);
  v8 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  if (v14[68])
  {
    memcpy(v15, v14, 0x231uLL);
    outlined init with copy of SceneList.Item(v15, v14);
    UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(v14, 0, 0xF000000000000000, a4);
    outlined destroy of SceneList.Item(v15);
    v9 = 0;
  }

  else
  {
    outlined destroy of SceneList.Item?(v14, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720], type metadata accessor for SceneList.Item?);
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_18BD4A000, v11, "No Scene is defined.", 20, 2, MEMORY[0x1E69E7CC0]);

    v9 = 1;
  }

  v12 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v12 - 8) + 56))(a4, v9, 1, v12);
}

void closure #1 in UISceneSessionActivationRequest.init<A>(hostingDelegateClass:)(void *a3@<X8>)
{
  if (static AppGraph.shared)
  {
    static UIHostingSceneDelegate.namespace.getter();
    v5 = v4;
    v7 = v6;
    v9 = v8;

    AppGraph.sceneList(namespace:)(v5, v7, v9, &v11);
    outlined consume of SceneList.Namespace(v5, v7, v9);

    v10 = v11;

    if (*(v10 + 16))
    {
      outlined init with copy of SceneList.Item(v10 + 32, a3);

      return;
    }
  }

  bzero(a3, 0x231uLL);
}

id UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, NSObject *a7@<X8>)
{
  v54 = a3;
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - v11;
  result = SceneList.Item.sceneSessionRole.getter();
  if (result)
  {
    v50 = a7;
    v51 = result;
    v52 = a4;
    v53 = v12;
    if (*(a2 + 560) == 1)
    {
      v14 = result;
      v49 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = static UIHostingSceneDelegate.bridgingID.getter();
      v17 = MEMORY[0x18D00C850](v16);

      type metadata accessor for AppSceneDelegate();
      v18 = [v49 _internalConfigurationWithRole_sceneClass_delegateClass_bridgingID_sceneDelegateWrapper_];

      v19 = v18;
    }

    else
    {
      v20 = result;
      v21 = static UIHostingSceneDelegate.bridgingID.getter();
      v23 = v22;
      type metadata accessor for AppSceneDelegate();
      v24 = MEMORY[0x18D00C850](v21, v23);

      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() _configurationWithRole_bridgingID_sceneDelegateWrapper_];

      v27 = swift_getObjCClassFromMetadata();
      v19 = v26;
      [v19 setDelegateClass_];
    }

    UISceneSessionActivationRequest.init(configuration:userActivity:options:)();
    static UIHostingSceneDelegate.namespace.getter();
    v28 = *(a2 + 136);
    v29 = *(a2 + 144);
    v30 = *(a2 + 152);
    *&v59 = v31;
    *(&v59 + 1) = v32;
    LOBYTE(v60) = v33;
    *(&v60 + 1) = v28;
    *&v61 = v29;
    BYTE8(v61) = v30;
    v34 = v54;
    v35 = v52;
    *&v62 = v54;
    *(&v62 + 1) = v52;
    v65 = v61;
    v66 = v62;
    v63 = v59;
    v64 = v60;
    v56[0] = v59;
    v56[1] = v60;
    v56[2] = v61;
    v56[3] = v62;
    outlined copy of SceneID(v28, v29, v30);
    outlined copy of Data?(v34, v35);
    outlined init with copy of OpenScenePayload(&v59, v58);
    lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition();
    UISceneSessionActivationRequest.subscript.setter();
    v36 = v53;
    static Log.openScene.getter();
    v37 = type metadata accessor for Logger();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      outlined destroy of SceneList.Item(a2);

      outlined destroy of OpenScenePayload(&v59);
      outlined consume of Data?(v34, v35);
      return outlined destroy of SceneList.Item?(v36, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0);
    }

    else
    {
      outlined init with copy of SceneList.Item(a2, v56);
      outlined init with copy of OpenScenePayload(&v59, v58);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      outlined destroy of OpenScenePayload(&v59);
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136315394;
        outlined init with copy of OpenScenePayload(&v59, v58);
        v43 = OpenScenePayload.description.getter();
        v50 = v39;
        v45 = v44;
        outlined destroy of OpenScenePayload(&v59);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v55);

        *(v41 + 4) = v46;
        *(v41 + 12) = 1024;
        LODWORD(v46) = v57;
        outlined destroy of SceneList.Item(v56);
        *(v41 + 14) = v46;
        v47 = v50;
        _os_log_impl(&dword_18BD4A000, v50, v40, "Creating activation request for bridged scene with %s, isInternal: %{BOOL}d", v41, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v42);
        v36 = v53;
        MEMORY[0x18D0110E0](v42, -1, -1);
        MEMORY[0x18D0110E0](v41, -1, -1);

        outlined destroy of OpenScenePayload(&v59);
        outlined consume of Data?(v54, v52);
      }

      else
      {
        outlined destroy of SceneList.Item(v56);

        outlined destroy of OpenScenePayload(&v59);
        outlined consume of Data?(v34, v35);
      }

      outlined destroy of SceneList.Item(a2);
      return (*(v38 + 8))(v36, v37);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UISceneSessionActivationRequest.init<A>(hostingDelegateClass:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    swift_beginAccess();
    BridgedSceneCoordinator.register<A>(_:)(a1, a4, a5);
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    static UIHostingSceneDelegate.namespace.getter();
    v15 = static AppGraph.shared;
    if (!static AppGraph.shared)
    {
      outlined consume of SceneList.Namespace(v12, v13, v14);
      goto LABEL_22;
    }

    v33[2] = a1;
    v33[3] = a4;
    v33[4] = a5;
    v34 = a6;
    v35 = v33;
    MEMORY[0x1EEE9AC00](v12);
    v17 = v16;
    a1 = v18;
    v20 = v19;

    static Update.ensure<A>(_:)();
    outlined consume of SceneList.Namespace(v17, v20, a1);
    a5 = v39[0];
    a6 = *(v39[0] + 16);
    if (!a6)
    {
      break;
    }

    v33[0] = v39[1];
    v33[1] = v39[2];
    v35 = v15;
    v21 = 0;
    a4 = v39[0] + 32;
    while (v21 < *(a5 + 16))
    {
      outlined init with copy of SceneList.Item(a4, v39);
      a1 = v39[18];
      if (v39[19])
      {
        v37 = _typeName(_:qualified:)();
        v38 = v22;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v36 = a1;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v23);

        if (v37 == a2 && v38 == a3)
        {

LABEL_26:

          memcpy(v40, v39, 0x231uLL);
          outlined init with copy of SceneList.Item(v40, v39);
          a6 = v34;
          UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(v39, 0, 0xF000000000000000, v34);
          outlined destroy of SceneList.Item(v40);
          v30 = 0;
          goto LABEL_27;
        }

        a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (a1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = v39[17] == a2 && v39[18] == a3;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_19:

          goto LABEL_26;
        }
      }

      v21 = (v21 + 1);
      outlined destroy of SceneList.Item(v39);
      a4 += 568;
      if (a6 == v21)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_21:

  a6 = v34;
LABEL_22:
  v25 = static os_log_type_t.fault.getter();
  v26 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136315138;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v40);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_18BD4A000, v26, v25, "No Scene with id %s is defined.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x18D0110E0](v28, -1, -1);
    MEMORY[0x18D0110E0](v27, -1, -1);
  }

  else
  {
  }

  v30 = 1;
LABEL_27:
  v31 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v31 - 8) + 56))(a6, v30, 1, v31);
}

uint64_t UISceneSessionActivationRequest.init<A, B>(hostingDelegateClass:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, NSObject *a9@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    v35 = a2;
    swift_once();
    a2 = v35;
  }

  v37 = a2;
  v38 = a9;
  swift_beginAccess();
  BridgedSceneCoordinator.register<A>(_:)(a1, a3, a5);
  swift_endAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  static UIHostingSceneDelegate.namespace.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(__src, v18, protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key, 0, a4, a6, a7, a8);
  outlined consume of SceneList.Namespace(v18, v20, v22);

  if (__src[68])
  {
    memcpy(__dst, __src, 0x231uLL);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v31 = v30;
    outlined init with copy of SceneList.Item(__dst, __src);
    UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(__src, v29, v31, a9);

    (*(*(a4 - 8) + 8))(v37, a4);
    outlined destroy of SceneList.Item(__dst);
    v32 = 0;
  }

  else
  {
    outlined destroy of SceneList.Item?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720], type metadata accessor for SceneList.Item?);
    v23 = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18CD63400;
    v32 = 1;
    v26 = _typeName(_:qualified:)();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)(v23, &dword_18BD4A000, v24, "No Scene presenting type %s is defined.", v36);

    (*(*(a4 - 8) + 8))(v37, a4);
    a9 = v38;
  }

  v33 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v33 - 8) + 56))(a9, v32, 1, v33);
}

uint64_t UISceneSessionActivationRequest.init<A, B>(hostingDelegateClass:id:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, NSObject *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = a5;
  if (one-time initialization token for shared != -1)
  {
    v41 = a4;
    swift_once();
    a4 = v41;
    v14 = a5;
  }

  v46 = a4;
  v47 = a9;
  swift_beginAccess();
  BridgedSceneCoordinator.register<A>(_:)(a1, v14, a7);
  swift_endAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = static SceneNavigationStrategy_Phone.shared;
  v19 = qword_1EAB09798;
  static UIHostingSceneDelegate.namespace.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  LOBYTE(v42) = v18;
  SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(__src, v21, a2, a3, protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key, 0, v42, v19, a6, a8, a10, a11);
  outlined consume of SceneList.Namespace(v21, v23, v25);

  if (__src[68])
  {

    memcpy(__dst, __src, 0x231uLL);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v35 = v34;
    outlined init with copy of SceneList.Item(__dst, __src);
    v36 = v47;
    UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(__src, v33, v35, v47);

    (*(*(a6 - 8) + 8))(v46, a6);
    outlined destroy of SceneList.Item(__dst);
    v37 = 0;
  }

  else
  {
    outlined destroy of SceneList.Item?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720], type metadata accessor for SceneList.Item?);
    v26 = static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_18CD63410;
    v29 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 64) = v30;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    v37 = 1;
    v31 = _typeName(_:qualified:)();
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v31;
    *(v28 + 80) = v32;
    os_log(_:dso:log:_:_:)(v26, &dword_18BD4A000, v27, "No Scene with ID %s presenting type %s is defined.", v43, v44);

    (*(*(a6 - 8) + 8))(v46, a6);
    v36 = v47;
  }

  v38 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v38 - 8) + 56))(v36, v37, 1, v38);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

unint64_t type metadata accessor for CVarArg()
{
  result = lazy cache variable for type metadata for CVarArg;
  if (!lazy cache variable for type metadata for CVarArg)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CVarArg);
  }

  return result;
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition()
{
  result = lazy protocol witness table cache variable for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition;
  if (!lazy protocol witness table cache variable for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenSceneConnectionOptionDefinition, &type metadata for OpenSceneConnectionOptionDefinition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition);
  }

  return result;
}

uint64_t outlined destroy of SceneList.Item?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t type metadata completion function for Settings(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Settings(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
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
    outlined copy of ResolvedTableRowIDs.Storage(*v11, v13);
    *v10 = v12;
    *(v10 + 8) = v13;
  }

  return v3;
}

uint64_t destroy for Settings(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);

  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v5, v6);
}

uint64_t initializeWithCopy for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v5) = *(v8 + 8);
  outlined copy of ResolvedTableRowIDs.Storage(*v8, v5);
  *v7 = v9;
  *(v7 + 8) = v5;
  return a1;
}

uint64_t assignWithCopy for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v5) = *(v8 + 8);
  outlined copy of ResolvedTableRowIDs.Storage(*v8, v5);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v5;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v10, v11);
  return a1;
}

uint64_t initializeWithTake for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithTake for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v8;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v10, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for Settings(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
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

void storeEnumTagSinglePayload for Settings(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
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
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
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

void SceneList.itemForConnectionOptions(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition();
  UISceneConnectionOptions.subscript.getter();
  if (v18 != 255)
  {
    v11 = v5;
    v12 = v6;
    v13 = v7;
    SceneList.item(id:where:)(v16, v17, v18 & 1, 0, __src);
    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for OpenScenePayload?, &type metadata for OpenScenePayload);
    if (__src[68])
    {
      memcpy(a2, __src, 0x231uLL);
      return;
    }

    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item);
  }

  v8 = [a1 userActivities];
  type metadata accessor for NSUserActivity();
  lazy protocol witness table accessor for type NSUserActivity and conformance NSObject();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = specialized Collection.first.getter(v9);

  if (v10)
  {
    __src[0] = v5;
    __src[1] = v6;
    __src[2] = v7;
    SceneList.itemForUserActivity(_:)(v10, a2);
  }

  else
  {
    bzero(a2, 0x231uLL);
  }
}

void SceneList.itemForUserActivity(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = [a1 activityType];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for userActivityTypeOpenWindowByID != -1)
  {
    swift_once();
  }

  if (v7 == static NSUserActivity.userActivityTypeOpenWindowByID && v9 == *algn_1EAB09078)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = [a1 userInfo];
  v13 = MEMORY[0x1E69E7CA0];
  if (!v12)
  {
    goto LABEL_18;
  }

  v14 = v12;
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = 0xD000000000000019;
  v30 = 0x800000018CD3D380;
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(__src), (v17 & 1) == 0))
  {

    outlined destroy of AnyHashable(__src);
LABEL_18:
    v31 = 0u;
    v32 = 0u;
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v16, &v31);
  outlined destroy of AnyHashable(__src);

  if (!*(&v32 + 1))
  {
LABEL_19:
    outlined destroy of AnyAccessibilityValue?(&v31, &lazy cache variable for type metadata for Any?, v13 + 8);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    bzero(a2, 0x231uLL);
    return;
  }

  v18 = __src[1];
  v19 = *(v5 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = __src[0];
    v22 = v5 + 32;
    while (v20 < *(v5 + 16))
    {
      outlined init with copy of SceneList.Item(v22, __src);
      v24 = __src[18];
      if (__src[19])
      {
        *&v31 = _typeName(_:qualified:)();
        *(&v31 + 1) = v25;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        LOBYTE(v29) = v24;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v26);

        if (v31 == __PAIR128__(v18, v21))
        {

LABEL_34:
          memcpy(a2, __src, 0x231uLL);
          goto LABEL_35;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v27 = __src[17] == v21 && __src[18] == v18;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_34;
        }
      }

      ++v20;
      outlined destroy of SceneList.Item(__src);
      v22 += 568;
      if (v19 == v20)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:
    bzero(a2, 0x231uLL);
LABEL_35:
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneList.Namespace.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953722216;
  }

  else
  {
    v3 = 0x676E69727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953722216;
  }

  else
  {
    v5 = 0x676E69727473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SceneList.Namespace.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneList.Namespace.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneList.Namespace.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SceneList.Namespace.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SceneList.Namespace.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SceneList.Namespace.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1953722216;
  if (!*v1)
  {
    v2 = 0x676E69727473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SceneList.Namespace.CodingKeys()
{
  if (*v0)
  {
    return 1953722216;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SceneList.Namespace.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SceneList.Namespace.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneList.Namespace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneList.Namespace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneList.Namespace.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12[1] = a3;
  type metadata accessor for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SceneList.Namespace.CodingKeys>, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a4)
  {
    if (a4 == 1)
    {
      v15 = 1;
    }

    else
    {
      v13 = 1;
    }

    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    v14 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void *protocol witness for Decodable.init(from:) in conformance SceneList.Namespace@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized SceneList.Namespace.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

void *specialized SceneList.Namespace.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12[15] = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v10)
    {
      v8 = v9;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v12[14] = 1;
      v8 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v5 + 8))(v7, v4);
      if (v8 == -1)
      {
        v8 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace.CodingKeys, &unk_1EFF90E00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace.CodingKeys, &unk_1EFF90E00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace.CodingKeys, &unk_1EFF90E00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneList.Namespace.CodingKeys, &unk_1EFF90E00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();
    v7 = a3(a1, &unk_1EFF90E00, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t type metadata accessor for NSUserActivity()
{
  result = lazy cache variable for type metadata for NSUserActivity;
  if (!lazy cache variable for type metadata for NSUserActivity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserActivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserActivity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject)
  {
    v3 = type metadata accessor for NSUserActivity();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject);
  }

  return result;
}

double View.sliderThumbVisibility(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.sliderThumbVisibility.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);
    PropertyList.subscript.getter();
  }

  return v10;
}

void key path getter for EnvironmentValues.sliderThumbVisibility : EnvironmentValues(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X6>, _BYTE *a6@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);
    PropertyList.subscript.getter();
  }

  *a6 = v11;
}

double key path setter for EnvironmentValues.sliderThumbVisibility : EnvironmentValues(char *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a5, a6, a7);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a8, a5, a6, a7);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderTintProminence and conformance SliderTintProminence()
{
  result = lazy protocol witness table cache variable for type SliderTintProminence and conformance SliderTintProminence;
  if (!lazy protocol witness table cache variable for type SliderTintProminence and conformance SliderTintProminence)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderTintProminence, &type metadata for SliderTintProminence, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderTintProminence and conformance SliderTintProminence);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind()
{
  result = lazy protocol witness table cache variable for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind;
  if (!lazy protocol witness table cache variable for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderTintProminence.Kind, &unk_1EFF90F10, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind);
  }

  return result;
}

uint64_t View.scenePadding(_:edges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  EdgeInsets.init(_all:)();
  EdgeInsets.in(_:)();

  return View.padding(_:)();
}

Swift::Int PepperUICoreFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag()
{
  result = lazy protocol witness table cache variable for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag;
  if (!lazy protocol witness table cache variable for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PepperUICoreFeatureFlag, &type metadata for PepperUICoreFeatureFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag);
  }

  return result;
}

double static __App._registerPerformanceTests(_:)(uint64_t a1)
{
  static TestingAppDelegate.performanceTests = a1;

  return result;
}

void _BenchmarkHost._started(test:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  v6 = [objc_opt_self() sharedApplication];
  v7 = MEMORY[0x18D00C850](v3, v5);

  [v6 startedTest_];
}

void _BenchmarkHost._finished(test:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  v10 = [objc_opt_self() sharedApplication];
  v11 = MEMORY[0x18D00C850](v7, v9);

  [v10 *a4];
}

void key path setter for static WindowResizability.automatic : WindowResizability.Type(uint64_t a1)
{
  v1 = static os_log_type_t.fault.getter();
  v2 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v1, &dword_18BD4A000, v2, "Mutation of WindowResizability is unsupported.\nThis will become an error in the future.", 87, 2, MEMORY[0x1E69E7CC0]);
}

double Scene.windowResizability(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.windowResizability(_:), v6, a2, a3);

  return result;
}

char *closure #1 in Scene.windowResizability(_:)(char *result, char a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return result;
    }

    if (v3 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v7 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v2;
      do
      {
        v8[520] = a2;
        v8[1088] = a2;
        v8 += 1136;
        v7 -= 2;
      }

      while (v7);
      if (v3 == v6)
      {
        goto LABEL_12;
      }
    }

    v9 = v3 - v6;
    v10 = &v2[568 * v6 + 520];
    do
    {
      *v10 = a2;
      v10 += 568;
      --v9;
    }

    while (v9);
LABEL_12:
    *v5 = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowResizability(unsigned __int8 *a1, unsigned int a2)
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

unint64_t lazy protocol witness table accessor for type WindowResizability.Role and conformance WindowResizability.Role()
{
  result = lazy protocol witness table cache variable for type WindowResizability.Role and conformance WindowResizability.Role;
  if (!lazy protocol witness table cache variable for type WindowResizability.Role and conformance WindowResizability.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowResizability.Role, &type metadata for WindowResizability.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowResizability.Role and conformance WindowResizability.Role);
  }

  return result;
}

void static __App.run<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __App.ShoeboxAdaptor(0, v7, v8, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v4 + 16))(v6, a1, a2, v11);
  (*(v4 + 32))(v13, v6, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for __App.ShoeboxAdaptor<A>, v10);
  runApp<A>(_:)(v13, v10, WitnessTable);
}

uint64_t __App.ShoeboxAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v24 = *(v8 + 16);
  v11 = type metadata accessor for WindowGroup(0, v24, v9, v10);
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  (*(v5 + 16))(v7, v3, a1, v15);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  *(v19 + 24) = v9;
  (*(v5 + 32))(v19 + v18, v7, a1);
  WindowGroup.init(makeContent:)(partial apply for closure #1 in __App.ShoeboxAdaptor.body.getter, v19, v20, v9, v13);
  swift_getWitnessTable(protocol conformance descriptor for WindowGroup<A>, v11);
  static ViewBuilder.buildExpression<A>(_:)(v13, v11, v17);
  v21 = *(v25 + 8);
  v21(v13, v11);
  static SceneBuilder.buildBlock<A>(_:)(v17, v11, v26);
  return v21(v17, v11);
}

uint64_t closure #1 in __App.ShoeboxAdaptor.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t partial apply for closure #1 in __App.ShoeboxAdaptor.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for __App.ShoeboxAdaptor(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return closure #1 in __App.ShoeboxAdaptor.body.getter(v7, v5);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _ListValue<A, B>.Init1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for _ListValue(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance AnyListStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t static ResolvedList.makeView<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a2;
  v34 = a1;
  v37 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v16;
  v42 = v15;
  v43 = v18;
  v44 = v17;
  v19 = type metadata accessor for _ListValue.Init1(0, &v41);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  v26 = *v34;
  v27 = *(a3 + 48);
  v39[2] = *(a3 + 32);
  v39[3] = v27;
  v39[4] = *(a3 + 64);
  v40 = *(a3 + 80);
  v28 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v28;
  v38 = v26;
  type metadata accessor for ResolvedList(255, a4, a6, v29);
  type metadata accessor for _GraphValue();
  LODWORD(a3) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v36, a5);
  *v25 = a3;
  v41 = a5;
  v42 = a4;
  v30 = v35;
  v43 = v35;
  v44 = a6;
  v31 = type metadata accessor for _ListValue.Init1(0, &v41);
  (*(v12 + 32))(&v25[*(v31 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v41 = a5;
  v42 = a4;
  v43 = v30;
  v44 = a6;
  type metadata accessor for _ListValue(0, &v41);
  swift_getWitnessTable(protocol conformance descriptor for _ListValue<A, B>.Init1, v19);
  _GraphValue.init<A>(_:)();
  (*(v30 + 8))(&v41, v39, a4, a6, a5, v30);
  return (*(v20 + 8))(v25, v19);
}

uint64_t *initializeBufferWithCopyOfBuffer for _ListValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 & 0xF8 | 7;
  v10 = *(v7 + 64);
  if (*(v7 + 84))
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (v11 > v10)
  {
    v10 = v11;
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 + (((v8 & 0xF8) + 23) & ~v9) + 1;
  v14 = *(v4 + 80) & 0xF8 | v9;
  v15 = (*(v4 + 80) | v8) & 0x100000;
  if (v14 != 7 || v15 != 0 || v13 + ((v5 + v9) & ~v9) > 0x18)
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + ((v14 + 16) & ~v14));

    return v3;
  }

  (*(v4 + 16))(a1);
  v20 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v22 < 0xFFFFFFFFuLL)
  {
    memcpy(v20, v21, v13);
    return v3;
  }

  *v20 = *v21;
  v23 = (v20 + 23);
  *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *v22;
  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = *(v24 + v12);

  if (v25 >= 3)
  {
    if (v12 <= 3)
    {
      v26 = v12;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *v24;
      }

      else if (v26 == 3)
      {
        v27 = *v24 | (*(v24 + 2) << 16);
      }

      else
      {
        v27 = *v24;
      }

      goto LABEL_32;
    }

    if (v26)
    {
      v27 = *v24;
LABEL_32:
      v28 = (v27 | ((v25 - 3) << (8 * v12))) + 3;
      v29 = v27 + 3;
      if (v12 >= 4)
      {
        v25 = v29;
      }

      else
      {
        v25 = v28;
      }
    }
  }

  v30 = (v23 & 0xFFFFFFFFFFFFFFF8);
  if (v25 == 2)
  {
    (*(v7 + 16))(v23 & 0xFFFFFFFFFFFFFFF8, v24, v6);
    v31 = 2;
LABEL_43:
    *(v30 + v12) = v31;
    return v3;
  }

  if (v25 == 1)
  {
    if ((*(v7 + 48))(v24, 1, v6))
    {
      memcpy((v23 & 0xFFFFFFFFFFFFFFF8), v24, v11);
    }

    else
    {
      (*(v7 + 16))(v23 & 0xFFFFFFFFFFFFFFF8, v24, v6);
      (*(v7 + 56))(v23 & 0xFFFFFFFFFFFFFFF8, 0, 1, v6);
    }

    v31 = 1;
    goto LABEL_43;
  }

  *v30 = *v24;
  *(v30 + v12) = 0;

  return v3;
}

uint64_t assignWithCopy for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v62 = *(a3 + 24);
  v7 = *(v62 - 8);
  v8 = *(v7 + 84);
  v63 = v7;
  v9 = *(v7 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = *(v6 + 40) + (v9 | 7);
  v12 = ~(v9 | 7);
  v13 = ((v11 + a1) & v12);
  v14 = ((v11 + a2) & v12);
  v15 = *(v7 + 64);
  v16 = (v9 + 23) & v12;
  v17 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  if (*v17 >= 0xFFFFFFFFuLL)
  {
    v64 = a1;
    if (v19 >= 0xFFFFFFFF)
    {
      *v13 = *v14;

      *v17 = *v18;

      v20 = v17 + v10 + 8;
      v21 = (v20 & v12);
      v22 = v18 + v10 + 8;
      v23 = (v22 & v12);
      if ((v20 & v12) == (v22 & v12))
      {
        return a1;
      }

      if (v8)
      {
        v24 = v15;
      }

      else
      {
        v24 = v15 + 1;
      }

      if (v24 <= v15)
      {
        v25 = v15;
      }

      else
      {
        v25 = v24;
      }

      if (v25 <= 8)
      {
        v26 = 8;
      }

      else
      {
        v26 = v25;
      }

      v27 = v21[v26];
      v28 = v27 - 3;
      if (v27 < 3)
      {
        v30 = v62;
        v31 = v63;
        goto LABEL_101;
      }

      if (v26 <= 3)
      {
        v29 = v26;
      }

      else
      {
        v29 = 4;
      }

      v30 = v62;
      v31 = v63;
      if (v29 <= 1)
      {
        if (!v29)
        {
          goto LABEL_101;
        }

        v32 = *v21;
      }

      else if (v29 == 2)
      {
        v32 = *v21;
      }

      else if (v29 == 3)
      {
        v32 = *v21 | (v21[2] << 16);
      }

      else
      {
        v32 = *v21;
      }

      v56 = (v32 | (v28 << (8 * v26))) + 3;
      v27 = v32 + 3;
      if (v26 < 4)
      {
        v27 = v56;
      }

LABEL_101:
      if (v27 != 2)
      {
        if (v27 != 1)
        {

LABEL_106:
          v57 = *(v23 + v26);
          v58 = v57 - 3;
          if (v57 >= 3)
          {
            if (v26 <= 3)
            {
              v59 = v26;
            }

            else
            {
              v59 = 4;
            }

            if (v59 > 1)
            {
              if (v59 == 2)
              {
                v60 = *v23;
              }

              else if (v59 == 3)
              {
                v60 = *v23 | (*(v23 + 2) << 16);
              }

              else
              {
                v60 = *v23;
              }

LABEL_118:
              v61 = (v60 | (v58 << (8 * v26))) + 3;
              v57 = v60 + 3;
              if (v26 < 4)
              {
                v57 = v61;
              }

              goto LABEL_120;
            }

            if (v59)
            {
              v60 = *v23;
              goto LABEL_118;
            }
          }

LABEL_120:
          if (v57 != 2)
          {
            if (v57 == 1)
            {
              if ((*(v31 + 48))(v23, 1, v30))
              {
                memcpy(v21, v23, v24);
              }

              else
              {
                (*(v31 + 16))(v21, v23, v30);
                (*(v31 + 56))(v21, 0, 1, v30);
              }

              a1 = v64;
              v21[v26] = 1;
            }

            else
            {
              a1 = v64;
              *v21 = *v23;
              v21[v26] = 0;
            }

            return a1;
          }

          (*(v31 + 16))(v21, v23, v30);
          v21[v26] = 2;
          return v64;
        }

        if ((*(v31 + 48))(v21, 1, v30))
        {
          goto LABEL_106;
        }
      }

      (*(v31 + 8))(v21, v30);
      goto LABEL_106;
    }

    v42 = ((v17 + v10 + 8) & v12);
    if (v8)
    {
      v43 = v15;
    }

    else
    {
      v43 = v15 + 1;
    }

    if (v43 <= v15)
    {
      v43 = v15;
    }

    if (v43 <= 8)
    {
      v44 = 8;
    }

    else
    {
      v44 = v43;
    }

    v45 = *(v42 + v44);
    v46 = v45 - 3;
    if (v45 < 3)
    {
      v48 = v62;
      v49 = v63;
    }

    else
    {
      if (v44 <= 3)
      {
        v47 = v44;
      }

      else
      {
        v47 = 4;
      }

      v48 = v62;
      v49 = v63;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v50 = *v42;
        }

        else if (v47 == 3)
        {
          v50 = *v42 | (*(v42 + 2) << 16);
        }

        else
        {
          v50 = *v42;
        }

LABEL_85:
        v54 = (v50 | (v46 << (8 * v44))) + 3;
        v45 = v50 + 3;
        if (v44 < 4)
        {
          v45 = v54;
        }

        goto LABEL_87;
      }

      if (v47)
      {
        v50 = *v42;
        goto LABEL_85;
      }
    }

LABEL_87:
    if (v45 == 2)
    {
      goto LABEL_90;
    }

    if (v45 != 1)
    {

      goto LABEL_92;
    }

    if (!(*(v49 + 48))(v42, 1, v48))
    {
LABEL_90:
      (*(v49 + 8))(v42, v48);
    }

LABEL_92:
    memcpy(v13, v14, v44 + v16 + 1);
    return v64;
  }

  if (v19 < 0xFFFFFFFF)
  {
    if (v8)
    {
      v51 = *(*(v62 - 8) + 64);
    }

    else
    {
      v51 = v15 + 1;
    }

    if (v51 <= v15)
    {
      v51 = *(*(v62 - 8) + 64);
    }

    if (v51 <= 8)
    {
      v51 = 8;
    }

    memcpy(v13, v14, v51 + v16 + 1);
    return a1;
  }

  v64 = a1;
  *v13 = *v14;
  *v17 = *v18;
  v33 = ((v17 + v10 + 8) & v12);
  v34 = ((v18 + v10 + 8) & v12);
  if (v8)
  {
    v35 = v15;
  }

  else
  {
    v35 = v15 + 1;
  }

  if (v35 <= v15)
  {
    v36 = v15;
  }

  else
  {
    v36 = v35;
  }

  if (v36 <= 8)
  {
    v37 = 8;
  }

  else
  {
    v37 = v36;
  }

  v38 = *(v34 + v37);

  if (v38 < 3)
  {
    v40 = v63;
  }

  else
  {
    if (v37 <= 3)
    {
      v39 = v37;
    }

    else
    {
      v39 = 4;
    }

    v40 = v63;
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v41 = *v34;
      }

      else if (v39 == 3)
      {
        v41 = *v34 | (*(v34 + 2) << 16);
      }

      else
      {
        v41 = *v34;
      }

      goto LABEL_73;
    }

    if (v39)
    {
      v41 = *v34;
LABEL_73:
      v52 = (v41 | ((v38 - 3) << (8 * v37))) + 3;
      v53 = v41 + 3;
      if (v37 >= 4)
      {
        v38 = v53;
      }

      else
      {
        v38 = v52;
      }
    }
  }

  if (v38 == 2)
  {
    (*(v40 + 16))(v33, v34, v62);
    *(v33 + v37) = 2;
    return v64;
  }

  if (v38 == 1)
  {
    if ((*(v40 + 48))(v34, 1, v62))
    {
      memcpy(v33, v34, v35);
    }

    else
    {
      (*(v40 + 16))(v33, v34, v62);
      (*(v40 + 56))(v33, 0, 1, v62);
    }

    a1 = v64;
    *(v33 + v37) = 1;
  }

  else
  {
    a1 = v64;
    *v33 = *v34;
    *(v33 + v37) = 0;
  }

  return a1;
}

uint64_t initializeWithTake for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) & 0xF8 | 7;
  v11 = *(v6 + 32) + v10;
  v12 = ~v10;
  v13 = ((v11 + a1) & ~v10);
  v14 = ((v11 + a2) & ~v10);
  v15 = *(v8 + 64);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v16 < 0xFFFFFFFFuLL)
  {
    v27 = (v10 + 16) & v12;
    if (v9)
    {
      v28 = *(*(v7 - 8) + 64);
    }

    else
    {
      v28 = v15 + 1;
    }

    if (v28 > v15)
    {
      v15 = v28;
    }

    if (v15 <= 8)
    {
      v15 = 8;
    }

    memcpy(v13, v14, v15 + v27 + 1);
    return a1;
  }

  *v13 = *v14;
  v17 = (v13 + 15);
  *(v17 & 0xFFFFFFFFFFFFFFF8) = *v16;
  v18 = v10 + 8;
  v19 = ((v18 + (v17 & 0xFFFFFFFFFFFFFFF8)) & v12);
  v20 = ((v16 + v18) & v12);
  if (v9)
  {
    v21 = v15;
  }

  else
  {
    v21 = v15 + 1;
  }

  if (v21 > v15)
  {
    v15 = v21;
  }

  if (v15 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v15;
  }

  v23 = *(v20 + v22);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v22 <= 3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *v20;
      }

      else if (v25 == 3)
      {
        v26 = *v20 | (*(v20 + 2) << 16);
      }

      else
      {
        v26 = *v20;
      }

LABEL_30:
      v29 = (v26 | (v24 << (8 * v22))) + 3;
      v23 = v26 + 3;
      if (v22 < 4)
      {
        v23 = v29;
      }

      goto LABEL_32;
    }

    if (v25)
    {
      v26 = *v20;
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v23 == 2)
  {
    (*(v8 + 32))(v19, v20, v7);
    v30 = 2;
LABEL_40:
    *(v19 + v22) = v30;
    return a1;
  }

  if (v23 == 1)
  {
    if ((*(v8 + 48))(v20, 1, v7))
    {
      memcpy(v19, v20, v21);
    }

    else
    {
      (*(v8 + 32))(v19, v20, v7);
      (*(v8 + 56))(v19, 0, 1, v7);
    }

    v30 = 1;
    goto LABEL_40;
  }

  *v19 = *v20;
  *(v19 + v22) = 0;
  return a1;
}

uint64_t assignWithTake for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(v6 + 24) + (v10 | 7);
  v13 = a1;
  v14 = ~(v10 | 7);
  v15 = ((v12 + a1) & v14);
  v16 = ((v12 + a2) & v14);
  v17 = *(v8 + 64);
  v18 = (v10 + 23) & v14;
  v19 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v20;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    if (v21 < 0xFFFFFFFF)
    {
      if (v9)
      {
        v49 = *(v8 + 64);
      }

      else
      {
        v49 = v17 + 1;
      }

      if (v49 <= v17)
      {
        v49 = *(v8 + 64);
      }

      if (v49 <= 8)
      {
        v49 = 8;
      }

      memcpy(v15, v16, v49 + v18 + 1);
      return v13;
    }

    *v15 = *v16;
    *v19 = *v20;
    v23 = ((v19 + v11 + 8) & v14);
    v25 = ((v20 + v11 + 8) & v14);
    if (v9)
    {
      v27 = v17;
    }

    else
    {
      v27 = v17 + 1;
    }

    if (v27 <= v17)
    {
      v36 = v17;
    }

    else
    {
      v36 = v27;
    }

    if (v36 <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v36;
    }

    v37 = v25[v29];
    v38 = v37 - 3;
    if (v37 < 3)
    {
      v26 = v13;
    }

    else
    {
      if (v29 <= 3)
      {
        v39 = v29;
      }

      else
      {
        v39 = 4;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v40 = *v25;
        }

        else if (v39 == 3)
        {
          v40 = *((v20 + v11 + 8) & v14) | (*(((v20 + v11 + 8) & v14) + 2) << 16);
        }

        else
        {
          v40 = *v25;
        }

        v26 = v13;
LABEL_74:
        v52 = (v40 | (v38 << (8 * v29))) + 3;
        v37 = v40 + 3;
        if (v29 < 4)
        {
          v37 = v52;
        }

        goto LABEL_76;
      }

      v26 = v13;
      if (v39)
      {
        v40 = *v25;
        goto LABEL_74;
      }
    }

LABEL_76:
    if (v37 != 2)
    {
      if (v37 == 1)
      {
        v53 = v7;
        v54 = v8;
        if (!(*(v8 + 48))(v25, 1))
        {
LABEL_123:
          (*(v54 + 32))(v23, v25, v53);
          (*(v54 + 56))(v23, 0, 1, v53);
          goto LABEL_124;
        }

LABEL_79:
        memcpy(v23, v25, v27);
LABEL_124:
        v64 = 1;
LABEL_128:
        v23[v29] = v64;
        return v26;
      }

      goto LABEL_125;
    }

    (*(v8 + 32))(v23, v25);
LABEL_127:
    v64 = 2;
    goto LABEL_128;
  }

  v66 = *(v7 - 8);
  v67 = v7;
  if (v21 < 0xFFFFFFFF)
  {

    v41 = v9 == 0;
    v42 = ((v19 + v11 + 8) & v14);
    if (v41)
    {
      v43 = v17 + 1;
    }

    else
    {
      v43 = v17;
    }

    if (v43 <= v17)
    {
      v43 = v17;
    }

    if (v43 <= 8)
    {
      v44 = 8;
    }

    else
    {
      v44 = v43;
    }

    v45 = *(v42 + v44);
    v46 = v45 - 3;
    if (v45 < 3)
    {
      v26 = v13;
      v50 = v66;
      v51 = v67;
    }

    else
    {
      if (v44 <= 3)
      {
        v47 = v44;
      }

      else
      {
        v47 = 4;
      }

      v26 = v13;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v48 = *v42;
        }

        else if (v47 == 3)
        {
          v48 = *((v19 + v11 + 8) & v14) | (*(((v19 + v11 + 8) & v14) + 2) << 16);
        }

        else
        {
          v48 = *v42;
        }

        v50 = v66;
        v51 = v67;
LABEL_83:
        v55 = (v48 | (v46 << (8 * v44))) + 3;
        v45 = v48 + 3;
        if (v44 < 4)
        {
          v45 = v55;
        }

        goto LABEL_85;
      }

      v50 = v66;
      v51 = v67;
      if (v47)
      {
        v48 = *v42;
        goto LABEL_83;
      }
    }

LABEL_85:
    if (v45 == 2)
    {
      (*(v50 + 8))(v42, v51);
    }

    else if (v45 == 1)
    {
      v56 = v50;
      if (!(*(v50 + 48))(v42, 1, v51))
      {
        (*(v56 + 8))(v42, v51);
      }
    }

    else
    {
    }

    memcpy(v15, v16, v44 + v18 + 1);
    return v26;
  }

  *v15 = *v16;

  *v19 = *v20;

  v22 = v19 + v11 + 8;
  v23 = (v22 & v14);
  v24 = v20 + v11 + 8;
  v25 = (v24 & v14);
  v26 = v13;
  if ((v22 & v14) != (v24 & v14))
  {
    if (v9)
    {
      v27 = v17;
    }

    else
    {
      v27 = v17 + 1;
    }

    if (v27 <= v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = v27;
    }

    if (v28 <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v28;
    }

    v30 = v23[v29];
    v31 = v30 - 3;
    if (v30 < 3)
    {
      v34 = v66;
      v33 = v67;
      goto LABEL_98;
    }

    if (v29 <= 3)
    {
      v32 = v29;
    }

    else
    {
      v32 = 4;
    }

    v34 = v66;
    v33 = v67;
    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_98;
      }

      v35 = *v23;
    }

    else if (v32 == 2)
    {
      v35 = *v23;
    }

    else if (v32 == 3)
    {
      v35 = *v23 | (v23[2] << 16);
    }

    else
    {
      v35 = *v23;
    }

    v57 = (v35 | (v31 << (8 * v29))) + 3;
    v30 = v35 + 3;
    if (v29 < 4)
    {
      v30 = v57;
    }

LABEL_98:
    if (v30 == 2)
    {
      (*(v34 + 8))(v23, v33);
    }

    else if (v30 == 1)
    {
      if (!(*(v34 + 48))(v23, 1, v33))
      {
        (*(v66 + 8))(v23, v67);
      }
    }

    else
    {
    }

    v58 = v25[v29];
    v59 = v58 - 3;
    if (v58 < 3)
    {
      v61 = v66;
      v53 = v67;
    }

    else
    {
      if (v29 <= 3)
      {
        v60 = v29;
      }

      else
      {
        v60 = 4;
      }

      v61 = v66;
      v53 = v67;
      if (v60 > 1)
      {
        if (v60 == 2)
        {
          v62 = *v25;
        }

        else if (v60 == 3)
        {
          v62 = *v25 | (v25[2] << 16);
        }

        else
        {
          v62 = *v25;
        }

LABEL_118:
        v63 = (v62 | (v59 << (8 * v29))) + 3;
        v58 = v62 + 3;
        if (v29 < 4)
        {
          v58 = v63;
        }

        goto LABEL_120;
      }

      if (v60)
      {
        v62 = *v25;
        goto LABEL_118;
      }
    }

LABEL_120:
    if (v58 != 2)
    {
      if (v58 == 1)
      {
        v54 = v61;
        if (!(*(v61 + 48))(v25, 1, v53))
        {
          goto LABEL_123;
        }

        goto LABEL_79;
      }

LABEL_125:
      *v23 = *v25;
      v23[v29] = 0;
      return v26;
    }

    (*(v61 + 32))(v23, v25, v53);
    goto LABEL_127;
  }

  return v26;
}

uint64_t getEnumTagSinglePayload for _ListValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 <= v7)
  {
    v9 = *(v6 + 64);
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v6 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(*(*(a3 + 16) - 8) + 64) + (v10 | 7);
  v13 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_33;
  }

  v14 = v9 + ((v10 + 23) & ~v11) + (v12 & ~v11) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v18 < 2)
    {
LABEL_33:
      if (v5 >= 0x7FFFFFFE)
      {
        return (*(v4 + 48))();
      }

      v20 = *((((a1 + v12) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      if ((v20 + 1) >= 2)
      {
        return v20;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_33;
  }

LABEL_22:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void storeEnumTagSinglePayload for _ListValue(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 64);
  if (v6 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = *(v7 + 84) == 0;
  v11 = *(v7 + 80) & 0xF8;
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64) + (v11 | 7);
  v14 = v13 & ~(v11 | 7);
  v15 = (v11 + 23) & ~(v11 | 7);
  if (v10)
  {
    v16 = v8 + 1;
  }

  else
  {
    v16 = v8;
  }

  if (v16 > v8)
  {
    v8 = v16;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v17 = v8 + v15 + 1;
  v18 = v17 + v14;
  v19 = a3 >= v9;
  v20 = a3 - v9;
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

  if (v9 < a2)
  {
    v22 = ~v9 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = a1;
        bzero(a1, v18);
        a1 = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_62:
              if (v21 == 2)
              {
                *&a1[v18] = v24;
              }

              else
              {
                *&a1[v18] = v24;
              }

              return;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v23 = a1;
      bzero(a1, v18);
      a1 = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v21)
    {
      a1[v18] = v24;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v18] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v21)
  {
    goto LABEL_37;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v6 < 0x7FFFFFFE)
  {
    v30 = (&a1[v13] & ~v12);
    if (a2 > 0x7FFFFFFE)
    {
      if (v17 <= 3)
      {
        v31 = ~(-1 << (8 * v17));
      }

      else
      {
        v31 = -1;
      }

      if (v17)
      {
        v32 = v31 & (a2 - 0x7FFFFFFF);
        if (v17 <= 3)
        {
          v33 = v17;
        }

        else
        {
          v33 = 4;
        }

        bzero(v30, v17);
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            *v30 = v32;
            v30[2] = BYTE2(v32);
          }

          else
          {
            *v30 = v32;
          }
        }

        else if (v33 == 1)
        {
          *v30 = v32;
        }

        else
        {
          *v30 = v32;
        }
      }
    }

    else
    {
      *((v30 + 15) & 0xFFFFFFFFFFFFFFF8) = a2;
    }
  }

  else
  {
    v29 = *(v5 + 56);

    v29();
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedList(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  v8 = ((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8;
  if (*(v4 + 84))
  {
    v9 = *(v4 + 64);
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 > v7)
  {
    v7 = v9;
  }

  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 + v8 + 1;
  if ((v6 & 0x1000F8) != 0 || v11 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    v14 = v13 + v8;

    return v14;
  }

  v16 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  if (*v16 >= 0xFFFFFFFF)
  {
    *a1 = *a2;
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = v17;
    v20 = v19 + 15;
    v21 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = v21[v10];

    if (v22 < 3)
    {
      goto LABEL_34;
    }

    if (v10 <= 3)
    {
      v23 = v10;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = *v21;
    }

    else if (v23 == 2)
    {
      v24 = *v21;
    }

    else if (v23 == 3)
    {
      v24 = *v21 | (v21[2] << 16);
    }

    else
    {
      v24 = *v21;
    }

    v25 = (v24 | ((v22 - 3) << (8 * v10))) + 3;
    v26 = v24 + 3;
    if (v10 >= 4)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }

LABEL_34:
    v27 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if (v22 == 2)
    {
      (*(v5 + 16))(v20 & 0xFFFFFFFFFFFFFFF8, v21, v3);
      v28 = 2;
    }

    else
    {
      if (v22 != 1)
      {
        *v27 = *v21;
        *(v27 + v10) = 0;

        return a1;
      }

      if ((*(v5 + 48))(v21, 1, v3))
      {
        memcpy((v20 & 0xFFFFFFFFFFFFFFF8), v21, v9);
      }

      else
      {
        (*(v5 + 16))(v20 & 0xFFFFFFFFFFFFFFF8, v21, v3);
        (*(v5 + 56))(v20 & 0xFFFFFFFFFFFFFFF8, 0, 1, v3);
      }

      v28 = 1;
    }

    *(v27 + v10) = v28;
    return a1;
  }

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for ResolvedList(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80) & 0xF8 | 7;
  v8 = ~v7;
  v9 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  if (*v9 >= 0xFFFFFFFF)
  {
    *result = *a2;
    v11 = v5 == 0;
    v12 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = v10;
    v13 = ((v12 + v7 + 8) & v8);
    v14 = ((v9 + v7 + 8) & v8);
    if (v11)
    {
      v15 = v6 + 1;
    }

    else
    {
      v15 = v6;
    }

    if (v15 > v6)
    {
      v6 = v15;
    }

    if (v6 <= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v6;
    }

    v17 = v14[v16];
    v18 = v17 - 3;
    if (v17 < 3)
    {
      goto LABEL_34;
    }

    if (v16 <= 3)
    {
      v19 = v16;
    }

    else
    {
      v19 = 4;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
LABEL_34:
        if (v17 == 2)
        {
          v25 = result;
          (*(v4 + 32))(v13, v14, v3);
          result = v25;
          *(v13 + v16) = 2;
        }

        else if (v17 == 1)
        {
          v24 = result;
          if ((*(v4 + 48))(v14, 1, v3))
          {
            memcpy(v13, v14, v15);
          }

          else
          {
            (*(v4 + 32))(v13, v14, v3);
            (*(v4 + 56))(v13, 0, 1, v3);
          }

          *(v13 + v16) = 1;
          return v24;
        }

        else
        {
          *v13 = *v14;
          *(v13 + v16) = 0;
        }

        return result;
      }

      v20 = *v14;
    }

    else if (v19 == 2)
    {
      v20 = *v14;
    }

    else if (v19 == 3)
    {
      v20 = *v14 | (v14[2] << 16);
    }

    else
    {
      v20 = *v14;
    }

    v23 = (v20 | (v18 << (8 * v16))) + 3;
    v17 = v20 + 3;
    if (v16 < 4)
    {
      v17 = v23;
    }

    goto LABEL_34;
  }

  v21 = (v7 + 16) & v8;
  if (v5)
  {
    v22 = *(v4 + 64);
  }

  else
  {
    v22 = v6 + 1;
  }

  if (v22 > v6)
  {
    v6 = v22;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  return memcpy(result, a2, v6 + v21 + 1);
}

void *assignWithTake for ResolvedList(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0xF8;
  v9 = v8 | 7;
  v10 = ~(v8 | 7);
  v11 = (v8 + 23) & v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 < 0xFFFFFFFF)
    {
      if (v6)
      {
        v44 = *(*(v4 - 8) + 64);
      }

      else
      {
        v44 = v7 + 1;
      }

      if (v44 <= v7)
      {
        v44 = *(*(v4 - 8) + 64);
      }

      if (v44 <= 8)
      {
        v44 = 8;
      }

      v45 = v44 + v11 + 1;
      goto LABEL_90;
    }

    *a1 = *a2;
    *v12 = *v13;
    v27 = ((v12 + v9 + 8) & v10);
    v28 = ((v13 + v9 + 8) & v10);
    if (v6)
    {
      v29 = v7;
    }

    else
    {
      v29 = v7 + 1;
    }

    if (v29 <= v7)
    {
      v30 = v7;
    }

    else
    {
      v30 = v29;
    }

    if (v30 <= 8)
    {
      v31 = 8;
    }

    else
    {
      v31 = v30;
    }

    v32 = *(v28 + v31);
    v33 = v32 - 3;
    if (v32 >= 3)
    {
      if (v31 <= 3)
      {
        v34 = v31;
      }

      else
      {
        v34 = 4;
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v35 = *v28;
        }

        else if (v34 == 3)
        {
          v35 = *v28 | (*(v28 + 2) << 16);
        }

        else
        {
          v35 = *v28;
        }

LABEL_71:
        v46 = (v35 | (v33 << (8 * v31))) + 3;
        v32 = v35 + 3;
        if (v31 < 4)
        {
          v32 = v46;
        }

        goto LABEL_73;
      }

      if (v34)
      {
        v35 = *v28;
        goto LABEL_71;
      }
    }

LABEL_73:
    if (v32 == 2)
    {
      (*(v5 + 32))(v27, v28);
      *(v27 + v31) = 2;
    }

    else if (v32 == 1)
    {
      v47 = v4;
      if ((*(v5 + 48))(v28, 1))
      {
        memcpy(v27, v28, v29);
      }

      else
      {
        (*(v5 + 32))(v27, v28, v47);
        (*(v5 + 56))(v27, 0, 1, v47);
      }

      *(v27 + v31) = 1;
    }

    else
    {
      *v27 = *v28;
      *(v27 + v31) = 0;
    }

    return v3;
  }

  v15 = v4;
  if (v14 >= 0xFFFFFFFF)
  {
    *a1 = *a2;

    *v12 = *v13;

    v16 = v9 + 8;
    v17 = ((v12 + v9 + 8) & v10);
    v18 = ((v13 + v16) & v10);
    if (v17 == v18)
    {
      return v3;
    }

    if (v6)
    {
      v19 = v7;
    }

    else
    {
      v19 = v7 + 1;
    }

    if (v19 <= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v19;
    }

    if (v20 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v20;
    }

    v22 = v17[v21];
    v23 = v22 - 3;
    if (v22 < 3)
    {
      v25 = v15;
      goto LABEL_99;
    }

    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    v25 = v15;
    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_99;
      }

      v26 = *v17;
    }

    else if (v24 == 2)
    {
      v26 = *v17;
    }

    else if (v24 == 3)
    {
      v26 = *v17 | (v17[2] << 16);
    }

    else
    {
      v26 = *v17;
    }

    v50 = (v26 | (v23 << (8 * v21))) + 3;
    v22 = v26 + 3;
    if (v21 < 4)
    {
      v22 = v50;
    }

LABEL_99:
    if (v22 == 2)
    {
      (*(v5 + 8))(v17, v25);
    }

    else if (v22 == 1)
    {
      if (!(*(v5 + 48))(v17, 1, v25))
      {
        (*(v5 + 8))(v17, v15);
      }
    }

    else
    {
    }

    v51 = v18[v21];
    v52 = v51 - 3;
    if (v51 < 3)
    {
      goto LABEL_120;
    }

    if (v21 <= 3)
    {
      v53 = v21;
    }

    else
    {
      v53 = 4;
    }

    if (v53 <= 1)
    {
      if (!v53)
      {
LABEL_120:
        if (v51 == 2)
        {
          (*(v5 + 32))(v17, v18, v15);
          v56 = 2;
LABEL_128:
          v17[v21] = v56;
          return v3;
        }

        if (v51 == 1)
        {
          if ((*(v5 + 48))(v18, 1, v15))
          {
            memcpy(v17, v18, v19);
          }

          else
          {
            (*(v5 + 32))(v17, v18, v15);
            (*(v5 + 56))(v17, 0, 1, v15);
          }

          v56 = 1;
          goto LABEL_128;
        }

        *v17 = *v18;
        v17[v21] = 0;
        return v3;
      }

      v54 = *v18;
    }

    else if (v53 == 2)
    {
      v54 = *v18;
    }

    else if (v53 == 3)
    {
      v54 = *v18 | (v18[2] << 16);
    }

    else
    {
      v54 = *v18;
    }

    v55 = (v54 | (v52 << (8 * v21))) + 3;
    v51 = v54 + 3;
    if (v21 < 4)
    {
      v51 = v55;
    }

    goto LABEL_120;
  }

  v36 = a2;

  v37 = ((v12 + v9 + 8) & v10);
  if (v6)
  {
    v38 = v7;
  }

  else
  {
    v38 = v7 + 1;
  }

  if (v38 <= v7)
  {
    v38 = v7;
  }

  if (v38 <= 8)
  {
    v39 = 8;
  }

  else
  {
    v39 = v38;
  }

  v40 = *(v37 + v39);
  v41 = v40 - 3;
  if (v40 < 3)
  {
    goto LABEL_84;
  }

  if (v39 <= 3)
  {
    v42 = v39;
  }

  else
  {
    v42 = 4;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = *v37;
    }

    else if (v42 == 3)
    {
      v43 = *v37 | (*(v37 + 2) << 16);
    }

    else
    {
      v43 = *v37;
    }

LABEL_82:
    v48 = (v43 | (v41 << (8 * v39))) + 3;
    v40 = v43 + 3;
    if (v39 < 4)
    {
      v40 = v48;
    }

    goto LABEL_84;
  }

  if (v42)
  {
    v43 = *v37;
    goto LABEL_82;
  }

LABEL_84:
  if (v40 == 2)
  {
    goto LABEL_87;
  }

  if (v40 != 1)
  {

    goto LABEL_89;
  }

  if (!(*(v5 + 48))(v37, 1, v15))
  {
LABEL_87:
    (*(v5 + 8))(v37, v15);
  }

LABEL_89:
  v45 = v39 + v11 + 1;
  a1 = v3;
  a2 = v36;
LABEL_90:

  return memcpy(a1, a2, v45);
}

uint64_t getEnumTagSinglePayload for ResolvedList(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_30;
  }

  v6 = v5 + (((*(v3 + 80) & 0xF8) + 23) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v7 = 8 * v6;
  if (v6 > 3)
  {
    goto LABEL_11;
  }

  v10 = (a2 - 2147483646 + ~(-1 << v7)) >> v7;
  if (v10 > 0xFFFE)
  {
    v8 = *(a1 + v6);
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_30:
    v12 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if ((v12 + 1) >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFE)
  {
    v8 = *(a1 + v6);
    if (*(a1 + v6))
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_11:
  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_30;
  }

LABEL_19:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 0x7FFFFFFF;
}

void storeEnumTagSinglePayload for ResolvedList(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v7 = *(v5 + 64);
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + (((*(v5 + 80) & 0xF8) + 23) & ~(*(v5 + 80) & 0xF8) & 0x1F8) + 1;
  if (a3 < 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = (a3 - 2147483646 + ~(-1 << (8 * v8))) >> (8 * v8);
    if (v12 > 0xFFFE)
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0xFF)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0x7FFFFFFE)
  {
    v10 = a2 - 0x7FFFFFFF;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      *((a1 + 15) & 0xFFFFFFFFFFFFFFF8) = a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

void *initializeBufferWithCopyOfBuffer for _ListStyleConfiguration(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *__dst = *a2;
    __dst = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))(v11 + 1, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    *__dst = *a2;
    v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v11;
    v17 = *(v5 + 16);

    v17(v16 + 1, v11 + 1, v4);
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v7);
}

void *initializeWithCopy for _ListStyleConfiguration(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = *(v4 + 16);
    v19 = a1;

    v18(v16 & v6, v17 & v6, v3);
    return v19;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

uint64_t *assignWithCopy for _ListStyleConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v6 + 64);
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v6 + 64);
    v19 = *(v6 + 48);
    v22 = v19((v12 + v8 + 8) & v9, v7, v5);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v4 = a1;
    v15 = v19((v13 + v8 + 8) & v9, v7, v5);
    v12 = v24;
    v3 = a2;
    v11 = v23;
    v10 = (v8 + 16) & ~v8;
    if (!v22)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      v17 = v10 + v11;
      goto LABEL_10;
    }

    *v4 = *v3;
    *v12 = *v13;
    v21 = *(v6 + 16);

    v21((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v5);
    return v4;
  }

  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v12 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v12 = *v13;

    (*(v6 + 24))((v12 + v8 + 8) & v9, (v13 + v8 + 8) & v9, v5);
    return v4;
  }

  v16 = v11;

  (*(v6 + 8))((v12 + v8 + 8) & v9, v5);
  v17 = v10 + v16;
LABEL_10:

  return memcpy(v4, v3, v17);
}

void *initializeWithTake for _ListStyleConfiguration(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = a1;
    (*(v4 + 32))(v16 & v6, v17 & v6, v3);
    return v18;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithTake for _ListStyleConfiguration(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = (v7 + 16) & ~v7;
  v10 = *(v5 + 64);
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v6 & 0x80000000) != 0)
  {
    v16 = *(v5 + 48);
    v17 = *(a3 + 16);
    v21 = v16((v11 + v7 + 8) & v8, v6, v17);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = v6;
    v12 = v17;
    v19 = v17;
    v9 = (v7 + 16) & ~v7;
    v4 = a1;
    v15 = v16((v13 + v7 + 8) & v8, v18, v19);
    v3 = a2;
    if (!v21)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *v4 = *v3;
    *v11 = *v13;
    (*(v5 + 32))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  v12 = *(a3 + 16);
  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v11 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v11 = *v13;

    (*(v5 + 40))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  (*(v5 + 8))((v11 + v7 + 8) & v8, v12);
LABEL_9:

  return memcpy(v4, v3, v9 + v10);
}

uint64_t getEnumTagSinglePayload for _ListStyleConfiguration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_7;
  }

  v12 = (((1 << v9) + a2 - v7) >> v9) + 1;
  if (HIWORD(v12))
  {
    v10 = *(a1 + v8);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_28:
    v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((v16 + v6 + 8) & ~v6);
    }

    else
    {
      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 + 1;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v12 > 0xFF)
  {
    v10 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v12 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 <= 3)
    {
      v14 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v15 = *a1;
      }
    }

    else if (v14 == 1)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1;
    }
  }

  else
  {
    v15 = 0;
  }

  return (v15 | v13) + v7;
}

void storeEnumTagSinglePayload for _ListStyleConfiguration(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(*(a4 + 16) - 8) + 64);
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
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
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
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
      v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

unint64_t instantiation function for generic protocol witness table for AnyListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyListStyleContext and conformance AnyListStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyListStyleContext and conformance AnyListStyleContext()
{
  result = lazy protocol witness table cache variable for type AnyListStyleContext and conformance AnyListStyleContext;
  if (!lazy protocol witness table cache variable for type AnyListStyleContext and conformance AnyListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyListStyleContext, &type metadata for AnyListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyListStyleContext and conformance AnyListStyleContext);
  }

  return result;
}

BOOL specialized static AnyListStyleContext.accepts<A>(_:at:)(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

void *initializeBufferWithCopyOfBuffer for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-5 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 4) & ~v5, (a2 + v5 + 4) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithCopy for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *initializeWithTake for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithTake for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _ListValue.Init1(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for _ListValue.Init1(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for AppIntentExecutingLocation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AppIntentExecutingLocation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
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
    outlined copy of Environment<AppIntentExecutor?>.Content(*v11, v13, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    v15 = *(v11 + 24);
    *(v10 + 24) = v15;
    v16 = *(v11 + 40);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = v16;
    v17 = v15;
  }

  return v3;
}

double destroy for AppIntentExecutingLocation(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));

  return result;
}

uint64_t initializeWithCopy for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v10, v11);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  v12 = *(v8 + 24);
  *(v7 + 24) = v12;
  v13 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v13;
  v14 = v12;

  return a1;
}

uint64_t assignWithCopy for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  outlined consume of Environment<AppIntentExecutor?>.Content(v12, v13, v14);
  v15 = *(v8 + 24);
  v16 = *(v7 + 24);
  *(v7 + 24) = v15;
  v17 = v15;

  v18 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v18;

  return a1;
}

uint64_t initializeWithTake for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  *v7 = *v8;
  v7[1] = v10;
  v7[2] = v9;
  return a1;
}

uint64_t assignWithTake for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
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
  outlined consume of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
  v12 = *(v7 + 24);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppIntentExecutingLocation(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for AppIntentExecutingLocation(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v19 + 40) = 0;
      result = 0.0;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void (*protocol witness for Location.wasRead.modify in conformance AppIntentExecutingLocation<A>(uint64_t a1, uint64_t a2))()
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  return protocol witness for Location.wasRead.modify in conformance AppIntentExecutingLocation<A>;
}

uint64_t static AppIntentExecutingLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a2;
  v24 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in compareValues<A>(_:_:options:), v21, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
  if (v29 != 1)
  {
    return 0;
  }

  v13 = *(type metadata accessor for AppIntentExecutingLocation(0, a3, v11, v12) + 28);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 16);
  v16 = *(a1 + v13 + 40);
  v17 = (a2 + v13);
  v18 = *(v17 + 16);
  v19 = *(v17 + 5);
  v29 = *v14;
  v30 = v15;
  v31 = *(v14 + 24);
  v32 = v16;
  v25 = *v17;
  v26 = v18;
  v27 = *(v17 + 24);
  v28 = v19;
  return AGCompareValues();
}

uint64_t specialized AppIntentExecutingLocation.set(_:transaction:)(uint64_t a1)
{
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

void UIKitKeyPressResponder.pressesBegan(_:with:)(uint64_t a1, void *a2, char a3, SEL *a4)
{
  LOBYTE(v6) = a3;
  if (a2)
  {
    v9 = one-time initialization token for monitor;
    v10 = a2;
    if (v9 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v11 = static DefaultModifierKeySource.monitor;
      v12 = specialized EventModifiers.init(_:)([v10 modifierFlags]);
      v13 = *(v11 + 24);
      *(v11 + 24) = v12;
      if (v12 == v13)
      {
        break;
      }

      v24 = v10;
      v25 = v6;
      v26 = v4;
      v27 = a4;
      v14 = *(v11 + 16);
      v15 = 1 << *(v14 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v6 = v16 & *(v14 + 64);
      a4 = ((v15 + 63) >> 6);

      v17 = 0;
      while (v6)
      {
        v18 = v17;
LABEL_12:
        v19 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v20 = *(v14 + 56) + ((v18 << 10) | (16 * v19));
        v10 = *v20;
        v4 = *(v20 + 8);
        v28 = *(v11 + 24);

        (v10)(&v28);
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= a4)
        {

          v4 = v26;
          a4 = v27;
          LOBYTE(v6) = v25;
          v10 = v24;
          goto LABEL_15;
        }

        v6 = *(v14 + 64 + 8 * v18);
        ++v17;
        if (v6)
        {
          v17 = v18;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

LABEL_15:
  }

  LOBYTE(v28) = v6;
  UIKitKeyPressResponder.sendPresses(_:phase:)(a1, &v28);
  if ((v21 & 1) == 0)
  {
    type metadata accessor for UIPress();
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, type metadata accessor for UIPress, MEMORY[0x1E69E81B8]);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v23 = type metadata accessor for UIKitKeyPressResponder();
    v29.receiver = v4;
    v29.super_class = v23;
    objc_msgSendSuper2(&v29, *a4, isa, a2);
  }
}

uint64_t @objc UIKitKeyPressResponder.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, SEL *a6)
{
  type metadata accessor for UIPress();
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, type metadata accessor for UIPress, MEMORY[0x1E69E81B8]);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a1;
  UIKitKeyPressResponder.pressesBegan(_:with:)(v10, a4, a5, a6);
}

void UIKitKeyPressResponder.sendPresses(_:phase:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v57 = Strong;
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v55 = v2;
  v54 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UIPress();
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, type metadata accessor for UIPress, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    a1 = v70;
    v6 = v71;
    v7 = v72;
    v8 = v73;
    v9 = v74;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v56 = v7;
  v13 = (v7 + 64) >> 6;
LABEL_9:
  v14 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  while (a1 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (*&v61 = v18, type metadata accessor for UIPress(), swift_dynamicCast(), v17 = *&v68[0], v14 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate, !*&v68[0]))
    {
LABEL_30:
      outlined consume of Set<UIPress>.Iterator._Variant(a1);
      v45 = v58;
      if (v58[2])
      {
        v46 = EventBindingManager.send(_:)();
        v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI7EventIDV_SD4KeysVyAfD0D4Type_p_GTt0g5(v45);
        _sSh2eeoiySbShyxG_ABtFZ7SwiftUI7EventIDV_Tt1g5(v46, v47);
      }

      else
      {
      }

      return;
    }

LABEL_19:
    v19 = [v17 v14[49]];
    if (v19)
    {
      v20 = v19;
      [v17 timestamp];
      v22 = v21;
      v23 = specialized EventModifiers.init(_:)([v20 modifierFlags]);
      v24 = [v20 charactersIgnoringModifiers];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v25;

      if (one-time initialization token for keyInputToKeyEquivalentMap != -1)
      {
        swift_once();
      }

      rawValue = keyInputToKeyEquivalentMap._rawValue;
      v27 = *(keyInputToKeyEquivalentMap._rawValue + 2);
      v49 = v23;
      if (v27)
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v53);
        if (v29)
        {
          v30 = (rawValue[7] + 16 * v28);
          v31 = v30[1];
          v51 = *v30;

          v53 = v31;
        }
      }

      v32 = [v20 characters];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v33;

      if (rawValue[2])
      {
        v48 = rawValue;
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
        if (v35)
        {
          v36 = (v48[7] + 16 * v34);
          v37 = v36[1];
          v50 = *v36;

          v52 = v37;
        }
      }

      v60[0] = [v20 keyCode];
      type metadata accessor for UIKeyboardHIDUsage(0);
      lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIKeyboardHIDUsage and conformance UIKeyboardHIDUsage, type metadata accessor for UIKeyboardHIDUsage, protocol conformance descriptor for UIKeyboardHIDUsage);
      AnyHashable.init<A>(_:)();

      LOBYTE(v61) = v54;
      *(&v61 + 1) = v22;
      *&v62 = 0;
      *(&v62 + 1) = v49;
      *&v63 = v51;
      *(&v63 + 1) = v53;
      *&v64 = v50;
      *(&v64 + 1) = v52;
      v68[4] = v65;
      v68[5] = v66;
      v69 = v67;
      v68[0] = v61;
      v68[1] = v62;
      v68[2] = v63;
      v68[3] = v64;
      swift_beginAccess();
      v53 = KeyEvent.Tracker.serial(for:)(v68);
      swift_endAccess();
      *(&v62 + 1) = &type metadata for KeyEvent;
      *&v63 = lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent();
      *&v61 = swift_allocObject();
      outlined init with copy of KeyEvent(v68, v61 + 16);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v61, v60);
      v38 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v38;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(v60, v60[3]);
      v58 = &v48;
      v41 = MEMORY[0x1EEE9AC00](v40);
      v43 = &v48 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43, v41);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, &type metadata for KeyEvent, v53, isUniquelyReferenced_nonNull_native, &v59);

      outlined destroy of KeyEvent(v68);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v58 = v59;
      goto LABEL_9;
    }
  }

  v15 = v8;
  v16 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v16 - 1) & v16;
    v17 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_30;
    }

    v16 = *(v6 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id UIKitKeyPressResponder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitKeyPressResponder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v34 = &type metadata for KeyEvent;
  v35 = lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent();
  v10 = swift_allocObject();
  *&v33 = v10;
  v11 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v12;
  v13 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v13;
  v14 = *a5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v33, &type metadata for KeyEvent);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, v30, v22);
  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

unint64_t type metadata accessor for UIPress()
{
  result = lazy cache variable for type metadata for UIPress;
  if (!lazy cache variable for type metadata for UIPress)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPress);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIPress and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type WindowLevel and conformance WindowLevel()
{
  result = lazy protocol witness table cache variable for type WindowLevel and conformance WindowLevel;
  if (!lazy protocol witness table cache variable for type WindowLevel and conformance WindowLevel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowLevel, &type metadata for WindowLevel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLevel and conformance WindowLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WindowLevel.Storage and conformance WindowLevel.Storage()
{
  result = lazy protocol witness table cache variable for type WindowLevel.Storage and conformance WindowLevel.Storage;
  if (!lazy protocol witness table cache variable for type WindowLevel.Storage and conformance WindowLevel.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowLevel.Storage, &type metadata for WindowLevel.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLevel.Storage and conformance WindowLevel.Storage);
  }

  return result;
}

void specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a3;
  v7 = MEMORY[0x1E6981D28];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v25 - v11;
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18C0A9F94(a1, v16);
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a2, v12, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v7);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_18C0AA238(v16, v19 + v17);
  outlined init with take of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v12, v19 + v18, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v7);
  v20 = (v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v25[0];
  v20[1] = a4;
  v21 = static TestingSceneDelegate.connectCallback;
  v22 = qword_1EAB0A0A0;
  static TestingSceneDelegate.connectCallback = partial apply for specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:);
  qword_1EAB0A0A0 = v19;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21, v22);
  v23 = type metadata accessor for TestingAppDelegate();
  v24 = MEMORY[0x18D00E850]();
  closure #1 in KitRendererCommon(_:)(v24, v23);
}

void specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E6981D20];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v19[-v10];
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, &v19[-v10], &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v6);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  outlined init with take of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v11, v13 + v12, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v6);
  v14 = (v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  v15 = static TestingSceneDelegate.connectCallback;
  v16 = qword_1EAB0A0A0;
  static TestingSceneDelegate.connectCallback = partial apply for specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:);
  qword_1EAB0A0A0 = v13;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15, v16);
  v17 = type metadata accessor for TestingAppDelegate();
  v18 = MEMORY[0x18D00E850]();
  closure #1 in KitRendererCommon(_:)(v18, v17);
}

void _TestApp.run()()
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v23[-v1 - 16];
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = static CommandLine.arguments.getter();
  *&v27 = 0x746E616D65732D2DLL;
  *(&v27 + 1) = 0xEB00000000736369;
  v24 = &v27;
  v7 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v23, v6);
  v9 = v8;

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = __OFADD__(v7, 1);
  v11 = v7 + 1;
  if (!v10)
  {
    v12 = *(static CommandLine.arguments.getter() + 16);

    if (v11 == v12)
    {
LABEL_9:
      v14._countAndFlagsBits = 0x74736574616CLL;
      v14._object = 0xE600000000000000;
      _TestApp.setSemantics(_:)(v14);
      goto LABEL_11;
    }

    v13 = static CommandLine.arguments.getter();
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    if (v11 < *(v13 + 16))
    {
      v15 = v13 + 16 * v11;
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);

      v18._countAndFlagsBits = v16;
      v18._object = v17;
      _TestApp.setSemantics(_:)(v18);

LABEL_11:
      v19 = MEMORY[0x18D00C850](0x6E614C656C707041, 0xEE00736567617567);
      isa = Array._bridgeToObjectiveC()().super.isa;
      CFPreferencesSetAppValue(v19, isa, *MEMORY[0x1E695E8A8]);

      _CTClearFontFallbacksCache();
      static Color.Resolved.legacyInterpolation.setter();
      _TestApp.RootView.init()();
      v25 = v27;
      v26 = v28;
      lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
      View.truePreference<A>(_:)();

      static _TestApp.rootViewIdentifier.getter();
      _TestApp.RootView.init()();
      v22 = v27;
      v21 = v28;
      static _TestApp.comparisonViewIdentifier.getter();
      *v2 = v22;
      v2[1] = v21;
      specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(v5, v2, closure #1 in _TestApp.run(), 0);
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_8;
}

unint64_t lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView()
{
  result = lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView;
  if (!lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981D38], MEMORY[0x1E6981D40], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView);
  }

  return result;
}

void type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>)
  {
    type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0(255);
    type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(255, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
    lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for TestIDView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0)
  {
    lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0);
    }
  }
}

void type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t closure #1 in _TestApp.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  static _TestApp.host.setter();
  swift_unknownObjectRetain();
  static _TestApp.comparisonHost.setter();
  static _TestApp.defaultEnvironment.getter();
  static _TestApp.environmentOverride.setter();
  ObjectType = swift_getObjectType();
  static _TestApp.defaultEnvironment.getter();
  v9 = v10;
  (*(a2 + 64))(&v9, ObjectType, a2);
  v7 = swift_getObjectType();
  static _TestApp.defaultEnvironment.getter();
  v9 = v10;
  return (*(a4 + 64))(&v9, v7, a4);
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = (a1)(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

void specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, id, uint64_t), uint64_t a6)
{
  v34 = a6;
  v35 = a5;
  v33 = a4;
  v9 = MEMORY[0x1E6981D28];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoreTesting.isRunning.setter();
  sub_18C0A9F94(a3, v15);
  type metadata accessor for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v17 = objc_allocWithZone(v16);
  v18 = specialized UIHostingController.init(rootView:)(v15);
  v19 = *&v18[direct field offset for UIHostingController.host];
  [a1 setRootViewController_];
  [a1 makeKeyAndVisible];
  v20 = lazy protocol witness table accessor for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, protocol conformance descriptor for _UIHostingView<A>);
  v21 = static TestingAppDelegate.testHost;
  static TestingAppDelegate.testHost = v19;
  qword_1EAB0A070 = v20;
  v22 = v19;

  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v33, v12, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v9);
  type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v24 = objc_allocWithZone(v23);
  v25 = specialized UIHostingController.init(rootView:)(v12);
  v26 = *&v25[direct field offset for UIHostingController.host];
  [a2 setRootViewController_];
  [a2 setHidden_];
  [a2 setHidden_];
  v27 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
  v28 = static TestingAppDelegate.comparisonHost;
  static TestingAppDelegate.comparisonHost = v26;
  unk_1EAB0A080 = v27;
  v29 = v26;

  v30 = v22;
  v31 = v29;
  v35(v30, v20, v31, v27);
}

void specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(void *a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t, id, uint64_t))
{
  v28 = a4;
  v7 = MEMORY[0x1E6981D20];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  static CoreTesting.isRunning.setter();
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a3, v10, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v7);
  type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v12 = objc_allocWithZone(v11);
  v13 = specialized UIHostingController.init(rootView:)(v10);
  v14 = *&v13[direct field offset for UIHostingController.host];
  [a1 setRootViewController_];
  [a1 makeKeyAndVisible];
  v15 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
  v16 = static TestingAppDelegate.testHost;
  static TestingAppDelegate.testHost = v14;
  qword_1EAB0A070 = v15;
  v17 = v14;

  type metadata accessor for UIHostingController<EmptyView>(0, &lazy cache variable for type metadata for UIHostingController<EmptyView>, type metadata accessor for UIHostingController);
  v19 = objc_allocWithZone(v18);
  v20 = specialized UIHostingController.init(rootView:)();
  v21 = *&v20[direct field offset for UIHostingController.host];
  [a2 setRootViewController_];
  [a2 setHidden_];
  [a2 setHidden_];
  v22 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, type metadata accessor for UIHostingController<EmptyView>);
  v23 = static TestingAppDelegate.comparisonHost;
  static TestingAppDelegate.comparisonHost = v21;
  unk_1EAB0A080 = v22;
  v24 = v21;

  v25 = v17;
  v26 = v24;
  v28(v25, v15, v26, v22);
}

uint64_t partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(255, a3, a4);
    lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
    swift_getOpaqueTypeConformance2();
    v5 = type metadata accessor for TestIDView();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void partial apply for specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(void *a1, void *a2)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(a1, a2, v2 + v7, v8);
}

{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  v9 = *(v8 - 8);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(a1, a2, v2 + v6, v2 + v10, v12, v13);
}

void type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E6981D20];
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
    v8 = v7;
    v9 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for UIHostingController<EmptyView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined init with take of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(255);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, MEMORY[0x1E697DB30]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697DB30], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)))
{
  result = *a1;
  if (!result)
  {
    v5 = a3(255, a2, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E6981D28];
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
    v8 = v7;
    v9 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance OrnamentDynamicScaleBehavior.UpdateBehavior()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior()
{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentDynamicScaleBehavior.UpdateBehavior, &type metadata for OrnamentDynamicScaleBehavior.UpdateBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentDynamicScaleBehavior.UpdateBehavior, &type metadata for OrnamentDynamicScaleBehavior.UpdateBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentDynamicScaleBehavior.UpdateBehavior, &type metadata for OrnamentDynamicScaleBehavior.UpdateBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentDynamicScaleBehavior.UpdateBehavior, &type metadata for OrnamentDynamicScaleBehavior.UpdateBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrnamentDynamicScaleBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t getEnumTagSinglePayload for OrnamentDynamicScaleBehavior.UpdateBehavior(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for OrnamentDynamicScaleBehavior.UpdateBehavior(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

void type metadata accessor for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>();
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage()
{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentDynamicScaleBehavior.Variant.Storage, &type metadata for OrnamentDynamicScaleBehavior.Variant.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage);
  }

  return result;
}

uint64_t PlatformSceneCache.removeHost(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (!*(v10 + 16))
  {
    return swift_endAccess();
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v22 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v20 = a1;
  v13 = *(v22 + 16);

  if (v13)
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if (v14)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v19, v21);
      v15 = v22;
      if (*(v22 + 16))
      {
        swift_beginAccess();
        outlined copy of SceneID(a2, a3, a4 & 1);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v5 + 16);
        *(v5 + 16) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
        outlined consume of SceneID(a2, a3, a4 & 1);
        *(v5 + 16) = v18;
        swift_endAccess();
      }

      else
      {
        swift_beginAccess();
        specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, a4 & 1);
        swift_endAccess();
      }
    }
  }

  outlined destroy of HashableWeakBox<UIViewController>(v19);
}

uint64_t PlatformSceneCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double View.avKitOnCaptureButtonPress(isEnabled:perform:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;

  View.transformPreference<A>(_:_:)();

  return result;
}

uint64_t closure #1 in View.avKitOnCaptureButtonPress(isEnabled:perform:)(uint64_t (**a1)(), char a2, uint64_t (*a3)(uint64_t a1, uint64_t a2), uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v12 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed AVKitPressableCaptureButton, @in_guaranteed AVKitPressableCaptureButton.Phase) -> (@out ());
    if ((a2 & 1) == 0)
    {
      a3 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed AVKitPressableCaptureButton, @in_guaranteed AVKitPressableCaptureButton.Phase) -> (@out ());
      a4 = v10;
LABEL_6:
      result = swift_allocObject();
      *(result + 16) = a3;
      *(result + 24) = a4;
      v13 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewList_ID.Canonical, @inout Bool) -> ();
      goto LABEL_7;
    }

LABEL_5:
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12, v11);

    goto LABEL_6;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  result = 0;
  if (a2)
  {
    goto LABEL_5;
  }

LABEL_7:
  *a1 = v13;
  a1[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase()
{
  result = lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase;
  if (!lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVKitPressableCaptureButton.Phase, &type metadata for AVKitPressableCaptureButton.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton()
{
  result = lazy protocol witness table cache variable for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton;
  if (!lazy protocol witness table cache variable for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVKitPressableCaptureButton, &type metadata for AVKitPressableCaptureButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton);
  }

  return result;
}

void type metadata accessor for _PreferenceTransformModifier<AVKitCaptureButtonPreference>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<AVKitCaptureButtonPreference>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<AVKitCaptureButtonPreference>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<AVKitCaptureButtonPreference>();
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts()
{
  result = lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts;
  if (!lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVKitPressableCaptureButton.Guts, &type metadata for AVKitPressableCaptureButton.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts);
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AVKitCaptureButtonPreference(void *result, void *(*a2)(void *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (*result)
  {
    v4 = result[1];
  }

  else
  {
    result = a2(v5);
    v3 = v5[0];
    v4 = v5[1];
  }

  *v2 = v3;
  v2[1] = v4;
  return result;
}

uint64_t AttributedSubstring.transformingEquivalentAttributes(from:to:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedSubstring();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3, v9);
  AttributedString.init(_:)();
  AttributedString.transformingUIKitAttributedForSwiftUI()(a1, v12);
  return (*(v8 + 8))(v11, v7);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D860], MEMORY[0x1E697D868], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute);
  }

  return result;
}

uint64_t outlined init with copy of AttributedString.AdaptiveImageGlyph?(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D820], MEMORY[0x1E697D828], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBD78], MEMORY[0x1E69DBD80], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D870], MEMORY[0x1E697D878], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69DBDC8], MEMORY[0x1E69DBDD0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D8B0], MEMORY[0x1E697D8B8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D8A0], MEMORY[0x1E697D8A8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D830], MEMORY[0x1E697D838], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute);
  }

  return result;
}

double static AccessibilityActionCategory.default.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static AccessibilityActionCategory.edit.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
}

uint64_t AccessibilityActionCategory.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3 & 1;
  a5[3] = a4;
  return result;
}

uint64_t AccessibilityActionCategory.init(_:)@<X0>(uint64_t *a5@<X8>)
{
  result = Text.init(_:tableName:bundle:comment:)();
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8 & 1;
  a5[3] = v9;
  return result;
}

uint64_t AccessibilityActionCategory.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v8);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = (*(v7 + 8))(a1, a2);
  *a4 = v10;
  a4[1] = v12;
  a4[2] = v14 & 1;
  a4[3] = v16;
  return result;
}

uint64_t static AccessibilityActionCategory.== infix(_:_:)(uint64_t a1, void *a2, __n128 a3)
{
  v3 = *(a1 + 24);
  v4 = a2[3];
  if (v3)
  {
    if (v3 == 1)
    {
      if (v4 == 1)
      {
        return 1;
      }
    }

    else if (v4 >= 2 && (static Text.== infix(_:_:)() & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityActionCategory(uint64_t a1, void *a2, __n128 a3)
{
  v3 = *(a1 + 24);
  v4 = a2[3];
  if (v3)
  {
    if (v3 == 1)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4 < 2 || (static Text.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !v4;
}

uint64_t View.accessibilityActions<A>(category:_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v24 = a7;
  v22 = a4;
  v23 = a6;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19(v11);
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  outlined copy of AccessibilityActionCategory.Category(v15, v16, v17, v18);
  View.accessibilityAttachment<A>(content:_:)(v13, partial apply for closure #1 in View.accessibilityActions<A>(category:_:), v20, v22, a5, v23, v24, x8_0);

  return (*(v10 + 8))(v13, a5);
}

void *closure #1 in View.accessibilityActions<A>(category:_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  *&v23 = a4;
  *(&v23 + 1) = a5;
  AccessibilityAttachment.init()();
  AccessibilityAttachment.Tree.attachment.getter(__dst);
  outlined destroy of AccessibilityAttachment.Tree(a1);
  if (!*(&__dst[17] + 1))
  {
    outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    memset(__src, 0, sizeof(__src));
    goto LABEL_12;
  }

  AccessibilityAttachment.mergedProperties.getter(__src);
  outlined destroy of AccessibilityAttachment(__dst);
  if (!*(&__src[17] + 1))
  {
LABEL_12:
    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    goto LABEL_15;
  }

  memcpy(__dst, __src, sizeof(__dst));
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  v9 = *&__src[0];
  v10 = *(*&__src[0] + 16);
  if (v10)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v28;
    v12 = v9 + 32;
    do
    {
      v13 = v25;
      outlined init with copy of AnyAccessibilityAction(v12, v25);
      v14 = v26;
      v15 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      *&__src[0] = a2;
      *(&__src[0] + 1) = a3;
      __src[1] = v23;
      (*(v15 + 64))(v24, __src, 0, 0, 0, 0, v14, v15);
      if (v24[3])
      {
        outlined destroy of AnyAccessibilityAction(v25);
        v13 = v24;
      }

      v16 = v13[1];
      __src[0] = *v13;
      __src[1] = v16;
      *(&__src[1] + 9) = *(v13 + 25);
      v28 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v11 = v28;
      }

      *(v11 + 16) = v18 + 1;
      v19 = (v11 + 48 * v18);
      v20 = __src[0];
      v21 = __src[1];
      *(v19 + 57) = *(&__src[1] + 9);
      v19[2] = v20;
      v19[3] = v21;
      v12 += 48;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  *&__src[0] = v11;
  AccessibilityProperties.subscript.setter();
  outlined destroy of AccessibilityProperties(__dst);
LABEL_15:
  result = memcpy(a1, v31, 0x128uLL);
  a1[296] = 0;
  return result;
}

double outlined copy of AccessibilityActionCategory.Category(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t destroy for AccessibilityActionCategory(uint64_t result)
{
  if (*(result + 24) >= 2uLL)
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

_OWORD *initializeWithCopy for AccessibilityActionCategory(_OWORD *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 2)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = result;
    outlined copy of Text.Storage(*a2, v5, v6);
    *v7 = v4;
    *(v7 + 1) = v5;
    *(v7 + 16) = v6;
    *(v7 + 3) = v2;

    return v7;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    result[1] = v3;
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityActionCategory(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) >= 2uLL)
  {
    if (v4 >= 2)
    {
      v10 = *a2;
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v11, v12);
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      outlined consume of Text.Storage(v13, v14, v15);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
    }
  }

  else if (v4 >= 2)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  return a1;
}

_OWORD *assignWithTake for AccessibilityActionCategory(_OWORD *result, uint64_t a2)
{
  if (*(result + 3) >= 2uLL)
  {
    v3 = *(a2 + 24);
    if (v3 >= 2)
    {
      v7 = *(a2 + 16);
      v8 = *result;
      v9 = *(result + 1);
      v10 = *(result + 16);
      *result = *a2;
      *(result + 16) = v7;
      v11 = result;
      outlined consume of Text.Storage(v8, v9, v10);
      *(v11 + 24) = v3;

      return v11;
    }

    else
    {
      v4 = result;
      outlined destroy of Text(result);
      v6 = *(a2 + 16);
      *v4 = *a2;
      v4[1] = v6;
      return v4;
    }
  }

  else
  {
    v2 = *(a2 + 16);
    *result = *a2;
    result[1] = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionCategory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityActionCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for AccessibilityActionCategory.Category(uint64_t result)
{
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

__n128 initializeWithCopy for AccessibilityActionCategory.Category(uint64_t a1, uint64_t *a2)
{
  v2 = a2[3];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  else
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v4, v5);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v2;
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityActionCategory.Category(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v12, v13);
      *a1 = v11;
      *(a1 + 8) = v12;
      *(a1 + 16) = v13;
      *(a1 + 24) = *(a2 + 24);

      return a1;
    }

LABEL_7:
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

    goto LABEL_7;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for AccessibilityActionCategory.Category(uint64_t result, uint64_t a2)
{
  if (*(result + 24) < 0xFFFFFFFFuLL)
  {
    v8 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v8;
  }

  else
  {
    v2 = *(a2 + 24);
    if (v2 < 0xFFFFFFFF)
    {
      v7 = result;
      outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));

      v10 = *(a2 + 16);
      *v7 = *a2;
      *(v7 + 16) = v10;
    }

    else
    {
      v3 = *(a2 + 16);
      v4 = *result;
      v5 = *(result + 8);
      v6 = *(result + 16);
      *result = *a2;
      *(result + 16) = v3;
      v7 = result;
      outlined consume of Text.Storage(v4, v5, v6);
      *(v7 + 24) = v2;
    }

    return v7;
  }

  return result;
}