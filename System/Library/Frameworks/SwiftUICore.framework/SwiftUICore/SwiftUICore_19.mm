uint64_t specialized ShapeStyleResolver.updateValue()()
{
  v1 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = v6;
    v4 = *Value;
  }

  if (v1[1] == v2)
  {
    v7 = 0;
    v8 = 0;
    v44 = 0;
    v45 = 1;
  }

  else
  {
    v9 = AGGraphGetValue();
    v7 = v10;
    v44 = *v9;
    v45 = *(v9 + 8);
    v8 = *(v9 + 10);
    v11 = *v9;
  }

  v12 = v1[2];
  v14 = *AGGraphGetValue();
  v47 = MEMORY[0x1E69E7CC0];
  if ((v3 | v7))
  {
    v15 = 1;
    v48 = 1;
  }

  else
  {
    v16 = v13;
    OutputValue = AGGraphGetOutputValue();
    v48 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v16 & 1) == 0)
      {
        v43 = (v1 + 4);
        v18 = *(v1 + 6);

        if (v18)
        {
LABEL_17:
          v41 = 0;
          v42 = v12;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v19 = swift_retain_n();
      v15 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v19);

      v48 = v15 & 1;
    }

    else
    {

      v15 = 1;
    }
  }

  v43 = (v1 + 4);
  v18 = *(v1 + 6);
  if (!v18)
  {
    if (v15)
    {
      v18 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v1[14] == *AGGraphGetValue() >> 1)
    {
    }

    *(v1 + 6) = 0;

    *(v1 + 4) = 0;
    *(v1 + 40) = 0;
    v18 = 0;
    v1[14] = *AGGraphGetValue() >> 1;
    v48 = 1;
    goto LABEL_23;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v42 = v12;
  PropertyList.Tracker.reset()();
  v41 = 1;
LABEL_24:
  v20 = v8;
  if (v8)
  {
    v21 = v45;
  }

  else
  {
    v21 = v45 != 0;
  }

  v22 = *(v1 + 8);
  if (v14)
  {
    v23 = *(v14 + 64);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v22 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v24 + 16));
  *(v24 + 24) = v23;
  os_unfair_lock_unlock((v24 + 16));

  v25 = *(v1 + 6);
  v63[27] = 0;
  v58 = 0uLL;
  *&v59 = v21;
  BYTE8(v59) = 1;
  *&v60 = 0;
  BYTE8(v60) = 5;
  *&v61 = v14;
  *(&v61 + 1) = v22;
  v62 = 0u;
  memset(v63, 0, 24);
  v63[24] = 1;
  *&v63[25] = v25;
  if (v21)
  {
    if (v4)
    {
      v26 = *(*v4 + 80);

      v26(&v58);
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v58);
    }

    v27 = v44;
    v28 = v20;
    if ((v20 & 1) == 0)
    {
      v49[0] = 0;
      v50 = v61;
      v29 = BYTE8(v60);
      if (BYTE8(v60) == 1)
      {
        v30 = v60;

        outlined copy of _ShapeStyle_Shape.Result(v30, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
        v31 = 0;
        v29 = 5;
      }

      else
      {

        v31 = v60;

        v30 = MEMORY[0x1E69E7CC0];
      }

      *&v57[0] = v30;
      _ShapeStyle_Pack.createOpacities(count:name:environment:)(v45, v49, &v50);

      v32 = *&v57[0];
      outlined consume of _ShapeStyle_Shape.Result(v31, v29);
      *&v60 = v32;
      BYTE8(v60) = 1;
    }
  }

  else
  {
    v27 = v44;
    v28 = v20;
    if (v41)
    {
      if (v18)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v1 + 6) = 0;

      *(v1 + 4) = 0;
      *(v1 + 40) = 0;
      v1[14] = *AGGraphGetValue() >> 1;
    }
  }

  if ((v28 & 2) != 0)
  {
    v58 = xmmword_18DD85500;
    *&v59 = 1;
    BYTE8(v59) = 1;
    v63[25] = 0;
    BackgroundStyle._apply(to:)(&v58);
  }

  if ((v28 & 4) != 0)
  {
    v50 = v61;
    v34 = v27;

    ResolvedMulticolorStyle.init(in:bundle:)(&v50, v27, v57, v35);
    v50 = v57[0];
    v51 = v57[1];
    v55[5] = 6;
    *&v55[8] = 1065353216;
    *&v55[16] = 0;
    v55[24] = -1;
    v56 = MEMORY[0x1E69E7CC0];
    v46 = 2;
    v36 = BYTE8(v60);
    if (BYTE8(v60) == 1)
    {
      v37 = v60;
      outlined init with copy of ResolvedMulticolorStyle(v57, v49);
      outlined copy of _ShapeStyle_Shape.Result(v37, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v37, 1u);
      v38 = 0;
      v36 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v57, v49);
      v37 = MEMORY[0x1E69E7CC0];
      v38 = v60;
    }

    *v49 = v37;
    _ShapeStyle_Pack.subscript.setter(&v50, &v46, 0);
    outlined destroy of ResolvedMulticolorStyle(v57);
    v39 = *v49;
    outlined consume of _ShapeStyle_Shape.Result(v38, v36);
    *&v60 = v39;
    BYTE8(v60) = 1;
    goto LABEL_52;
  }

  if (BYTE8(v60) == 1)
  {
LABEL_52:
    v33 = v60;

    goto LABEL_53;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v47 = v33;
  if ((*(v1 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v47, 0, v42, v43);
  }

  if (v48 == 1)
  {
    *&v50 = v47;
    AGGraphSetOutputValue();
  }

  else
  {
  }

  *v55 = *v63;
  *&v55[12] = *&v63[12];
  v50 = v58;
  v51 = v59;
  v53 = v61;
  v54 = v62;
  v52 = v60;
  outlined destroy of _ShapeStyle_Shape(&v50);
}

{
  v1 = v0;
  v70 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = *Value;
    v44 = *(Value + 24);
    v45 = *(Value + 8);
    v3 = v6 & 1;
  }

  if (v0[1] == v2)
  {
    v7 = 0;
    v47 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v10 = AGGraphGetValue();
    v7 = v11;
    v9 = *(v10 + 8);
    v8 = *(v10 + 10);
    v47 = *v10;
    v12 = *v10;
  }

  v46 = v1[2];
  v14 = *AGGraphGetValue();
  v50 = MEMORY[0x1E69E7CC0];
  if ((v3 | v7))
  {
    v15 = 1;
    v51 = 1;

    v16 = v14;
  }

  else
  {
    v17 = v13;
    OutputValue = AGGraphGetOutputValue();
    v51 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v17 & 1) == 0)
      {
        v19 = (v1 + 4);
        v20 = *(v1 + 6);
        v16 = v14;

        if (v20)
        {
LABEL_17:
          v43 = v19;
          v42 = 0;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v16 = v14;
      v21 = swift_retain_n();
      v15 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v21);

      v51 = v15 & 1;
    }

    else
    {

      v16 = v14;

      v15 = 1;
    }
  }

  v19 = (v1 + 4);
  v20 = *(v1 + 6);
  if (!v20)
  {
    if (v15)
    {
      v20 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v1[14] == *AGGraphGetValue() >> 1)
    {
    }

    *(v1 + 6) = 0;

    *(v1 + 4) = 0;
    *(v1 + 40) = 0;
    v20 = 0;
    v1[14] = *AGGraphGetValue() >> 1;
    v51 = 1;
    goto LABEL_23;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v43 = v19;
  PropertyList.Tracker.reset()();
  v42 = 1;
LABEL_24:
  v48 = v8;
  v41 = v9;
  if ((v8 & 1) == 0)
  {
    v9 = v9 != 0;
  }

  v22 = *(v1 + 8);
  if (v16)
  {
    v23 = *(v16 + 64);
  }

  else
  {
    v23 = 0;
  }

  v24 = v16;
  v25 = *(v22 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v25 + 16));
  *(v25 + 24) = v23;
  os_unfair_lock_unlock((v25 + 16));

  v26 = *(v1 + 6);
  v69[27] = 0;
  v64 = 0uLL;
  *&v65 = v9;
  BYTE8(v65) = 1;
  *&v66 = 0;
  BYTE8(v66) = 5;
  *&v67 = v24;
  *(&v67 + 1) = v22;
  v68 = 0u;
  memset(v69, 0, 24);
  v69[24] = 1;
  *&v69[25] = v26;
  if (v9)
  {
    v27 = v48;
    if (v4)
    {
      v52 = v4;
      v53 = v45;
      v54 = v44;

      specialized Paint._apply(to:)(&v64);

      v28 = v47;
      if (v48)
      {
        goto LABEL_42;
      }
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v64);
      v28 = v47;
      if (v48)
      {
        goto LABEL_42;
      }
    }

    v55[0] = 0;
    v56 = v67;
    v29 = BYTE8(v66);
    if (BYTE8(v66) == 1)
    {
      v30 = v66;

      outlined copy of _ShapeStyle_Shape.Result(v30, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
      v31 = 0;
      v29 = 5;
    }

    else
    {

      v31 = v66;

      v30 = MEMORY[0x1E69E7CC0];
    }

    *&v63[0] = v30;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v41, v55, &v56);

    v32 = *&v63[0];

    outlined consume of _ShapeStyle_Shape.Result(v31, v29);
    *&v66 = v32;
    BYTE8(v66) = 1;

    v27 = v48;
  }

  else
  {
    v28 = v47;
    v27 = v48;
    if (v42)
    {
      if (v20)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v1 + 6) = 0;

      *(v1 + 4) = 0;
      *(v1 + 40) = 0;
      v1[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_42:
  if ((v27 & 2) != 0)
  {
    v64 = xmmword_18DD85500;
    *&v65 = 1;
    BYTE8(v65) = 1;
    v69[25] = 0;
    BackgroundStyle._apply(to:)(&v64);
  }

  if ((v27 & 4) != 0)
  {
    v56 = v67;
    v34 = v28;

    ResolvedMulticolorStyle.init(in:bundle:)(&v56, v28, v63, v35);
    v56 = v63[0];
    v57 = v63[1];
    v61[5] = 6;
    *&v61[8] = 1065353216;
    *&v61[16] = 0;
    v61[24] = -1;
    v62 = MEMORY[0x1E69E7CC0];
    v49 = 2;
    v36 = BYTE8(v66);
    if (BYTE8(v66) == 1)
    {
      v37 = v66;
      outlined init with copy of ResolvedMulticolorStyle(v63, v55);
      outlined copy of _ShapeStyle_Shape.Result(v37, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v37, 1u);
      v38 = 0;
      v36 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v63, v55);
      v37 = MEMORY[0x1E69E7CC0];
      v38 = v66;
    }

    *v55 = v37;
    _ShapeStyle_Pack.subscript.setter(&v56, &v49, 0);
    outlined destroy of ResolvedMulticolorStyle(v63);
    v39 = *v55;

    outlined consume of _ShapeStyle_Shape.Result(v38, v36);
    *&v66 = v39;
    BYTE8(v66) = 1;

    goto LABEL_51;
  }

  if (BYTE8(v66) == 1)
  {
LABEL_51:
    v33 = v66;

    goto LABEL_52;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_52:

  v50 = v33;
  if ((*(v1 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v50, 0, v46, v43);
  }

  if (v51 == 1)
  {
    *&v56 = v50;
    AGGraphSetOutputValue();
  }

  else
  {
  }

  v59 = v67;
  v60 = v68;
  *v61 = *v69;
  *&v61[12] = *&v69[12];
  v56 = v64;
  v57 = v65;
  v58 = v66;
  outlined destroy of _ShapeStyle_Shape(&v56);
}

uint64_t outlined init with copy of _ShapeStyle_Pack.Style?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double outlined copy of _ShapeStyle_LayerID(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined destroy of _ShapeStyle_Pack.Style?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void _ShapeStyle_Pack.createOpacities(count:name:environment:)(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a3[1];
  v47 = *a3;
  v6 = *v3;
  *v58 = *v3;
  v45 = v4;
  v57[0] = v4;
  v7 = _ShapeStyle_Pack.indices(of:)(v57);
  v9 = v8;

  if (__OFSUB__(v9, v7))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v9 - v7 == 1 && a1 >= 2)
  {
    if (v5)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v47);
      v46 = v10;

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_9;
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v47);
    if (v11)
    {
      v46 = v11[10];
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v7 >= v6[2])
        {
LABEL_39:
          __break(1u);
          return;
        }

        v42 = v3;
        v12 = &v6[16 * v7];
        v13 = v12[2];
        v14 = v12[3];
        v15 = v12[5];
        *&v58[32] = v12[4];
        *&v58[48] = v15;
        *v58 = v13;
        *&v58[16] = v14;
        v16 = v12[6];
        v17 = v12[7];
        v18 = v12[9];
        *v59 = v12[8];
        *&v59[16] = v18;
        *&v58[64] = v16;
        *&v58[80] = v17;
        v44 = v46[2];
        v19 = *v59;
        v20 = *(&v18 + 1);
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, v57, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        v21 = 1;
        v43 = v5;
        while (1)
        {
          *v57 = v47;
          *&v57[8] = v5;
          v22 = v44(v21, v57);
          v53 = *&v58[40];
          v54 = *&v58[56];
          v55 = *&v58[72];
          v56 = *&v58[88];
          v51 = *&v58[8];
          v52 = *&v58[24];
          v49 = *&v59[4];
          v50 = *&v59[20];
          v23 = *(v20 + 16);
          if (v23)
          {
            outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, v57, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
            v24 = v20;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            }

            if (v23 > *(v24 + 2))
            {
              goto LABEL_37;
            }

            v25 = 0;
            v26 = v23 - 1;
            if (v23 == 1)
            {
              goto LABEL_16;
            }

            v38 = !is_mul_ok(v26, 0x50uLL);
            if (&v24[80 * v26 + 88] < v24 + 88)
            {
              goto LABEL_16;
            }

            if (v38)
            {
              goto LABEL_16;
            }

            v25 = v23 & 0x7FFFFFFFFFFFFFFELL;
            v39 = (v24 + 168);
            v40 = v23 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v41 = v22 * *v39;
              *(v39 - 20) = v22 * *(v39 - 20);
              *v39 = v41;
              v39 += 40;
              v40 -= 2;
            }

            while (v40);
            if (v23 != v25)
            {
LABEL_16:
              v27 = v23 - v25;
              v28 = 80 * v25 + 88;
              do
              {
                *&v24[v28] = v22 * *&v24[v28];
                v28 += 80;
                --v27;
              }

              while (v27);
            }
          }

          else
          {
            v24 = *&v59[24];
            outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, v57, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          }

          v29 = v7;
          v30 = v21 + v7;
          v31 = v6[2];
          if (v31 < v30)
          {
            goto LABEL_36;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v31 >= v6[3] >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31 + 1, 1, v6);
          }

          v33 = &v6[16 * v30];
          type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
          swift_arrayDestroy();
          memmove(v33 + 20, v33 + 4, (v6[2] - v30) << 7);
          ++v6[2];
          *&v57[38] = v53;
          *&v57[54] = v54;
          *&v57[70] = v55;
          *&v57[86] = v56;
          *&v57[6] = v51;
          *&v57[22] = v52;
          *(v33 + 32) = v45;
          *(v33 + 33) = v21;
          v34 = *&v57[16];
          *(v33 + 34) = *v57;
          *(v33 + 50) = v34;
          v35 = *&v57[32];
          v36 = *&v57[48];
          v37 = *&v57[64];
          *(v33 + 7) = *&v57[78];
          *(v33 + 98) = v37;
          *(v33 + 82) = v36;
          *(v33 + 66) = v35;
          *(v33 + 32) = v19 * v22;
          *(v33 + 37) = v50;
          *(v33 + 132) = v49;
          v33[19] = v24;
          if (v21 + 1 == a1)
          {
            break;
          }

          ++v21;
          v5 = v43;
          v7 = v29;
        }

        outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        *v42 = v6;
        return;
      }
    }

    else
    {
      v46 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }
}

int64_t _ShapeStyle_Pack.indices(of:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    result = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 128;
      if (v7 == v2)
      {
        break;
      }

      if (v4 == ++result)
      {
        return *(*v1 + 16);
      }
    }
  }

  else
  {
    result = 0;
  }

  if (result < v4)
  {
    v8 = (v3 + (result << 7) + 32);
    v9 = result;
    while (1)
    {
      v10 = *v8;
      v8 += 128;
      if (v10 != v2)
      {
        break;
      }

      if (v4 == ++v9)
      {
        v9 = *(*v1 + 16);
        break;
      }
    }

    if (v9 < result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ContentTransition.State.rasterizationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (one-time initialization token for defaultFlags != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v3 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFF7F | v2 & 1;
  *a1 = -1;
  *(a1 + 4) = 768;
  *(a1 + 8) = v3;
  *(a1 + 12) = 3;
  return result;
}

void _ShapeStyle_InterpolatorGroup.update(contentSeed:transition:animation:listener:contentsScale:rasterizationOptions:supportsVFD:)(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, char a6, float a7)
{
  v8 = v7;
  v13 = *(v8 + 32);
  if (v13 != a7)
  {
    *(v8 + 32) = a7;
  }

  v14 = *a1;
  v93 = *a2;
  v92 = *(a2 + 13);
  v89 = *(a5 + 4);
  v90 = *a5;
  v87 = a5[2];
  v88 = *(a5 + 5);
  v86 = *(a5 + 12);
  swift_beginAccess();
  v99 = *(*(v8 + 24) + 16);
  if (!v99)
  {
LABEL_65:
    *(v8 + 36) = v90;
    *(v8 + 40) = v89;
    *(v8 + 41) = v88;
    *(v8 + 44) = v87;
    *(v8 + 48) = v86;
    return;
  }

  v15 = 0;
  v16 = a6 & 1;
  if (v92)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v93 & 0xC100000000) == 0x4100000000;
  }

  v18 = !v17;
  if (v17)
  {
    v19 = v93;
  }

  else
  {
    v19 = 0;
  }

  v96 = v19;
  v97 = v18;
  v95 = a4;
  v98 = a3;
  v94 = v14;
  v91 = a6 & 1;
  while (1)
  {
    swift_beginAccess();
    v20 = *(v8 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 24) = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v8 + 24) = v20;
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }
    }

    if (v15 >= *(v20 + 2))
    {
      goto LABEL_69;
    }

    v22 = 232 * v15;
    v23 = &v20[232 * v15];
    if (*(v23 + 128) != v14 && a3 != 0)
    {
      v25 = *(v23 + 29);
      v26 = *(v25 + 2);
      if (!v26)
      {
        goto LABEL_27;
      }

      if (!v25[112 * v26 + 24])
      {

        v28 = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + 29) = v25;
        if (v28)
        {
          v29 = *(v25 + 2);
          if (!v29)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
          *(v23 + 29) = v25;
          v29 = *(v25 + 2);
          if (!v29)
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }
        }

        v30 = &v25[112 * v29];
        v31 = *(v30 - 10);
        v32 = *(v30 - 36);
        v33 = *(v30 - 17);
        v34 = *(v30 - 6);
        v35 = *(v30 - 5);
        v36 = *(v30 - 8);
        v38 = *(v30 - 1);
        v39 = *v30;
        v40 = v30[24];
        LOBYTE(v104) = *(v30 - 28);
        v37 = v104;
        v41 = *(v30 - 4);
        v42 = *(v30 + 8);
        v43 = *(v30 - 24);
        *(v25 + 2) = v29 - 1;
        *(v23 + 29) = v25;
        *&v107 = v31;
        WORD4(v107) = v32;
        HIDWORD(v107) = v33;
        v108 = v41;
        *v109 = v34;
        *&v109[8] = v35;
        *&v109[16] = v36;
        v109[20] = v37;
        *&v109[24] = v43;
        *&v109[40] = v38;
        *v110 = v39;
        *&v110[8] = v42;
        v110[24] = v40;
        if (v39)
        {
          v44 = *(*v39 + 96);

          v44(v45);
          outlined destroy of DisplayList.InterpolatorLayer.Removed(&v107);
        }

        else
        {
          outlined destroy of DisplayList.InterpolatorLayer.Removed(&v107);
        }

        v27 = v98;
        goto LABEL_35;
      }

      if (v26 > 7)
      {

        DisplayList.InterpolatorLayer.remove(prefix:)(0);
        v27 = a3;
      }

      else
      {
LABEL_27:

        v27 = a3;
      }

LABEL_35:
      v46 = *(v23 + 11);
      v47 = *(v23 + 12);
      v48 = *(v23 + 13);
      *&v106[13] = *(v23 + 221);
      v105 = v47;
      *v106 = v48;
      v104 = v46;
      outlined init with copy of DisplayList.InterpolatorLayer.Contents(&v104, &v107);
      v49 = ContentTransition.rbTransition.getter();
      v50 = [objc_allocWithZone(MEMORY[0x1E69C7098]) init];
      (*(*v27 + 96))(&v107);
      v100 = v107;
      v101 = v108;
      v102 = *v109;
      v103 = v109[8];
      Animation.Function.apply(to:)(v50, *&v107, *&v108, v51, v52, v53);
      outlined consume of Animation.Function(v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103);
      v107 = v104;
      v108 = v105;
      *v109 = *v106;
      *&v109[13] = *&v106[13];
      v54 = *(v23 + 29);

      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 29) = v54;
      if ((v55 & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        *(v23 + 29) = v54;
      }

      v57 = *(v54 + 2);
      v56 = *(v54 + 3);
      if (v57 >= v56 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v54);
        *(v23 + 29) = v54;
      }

      *(v54 + 2) = v57 + 1;
      v58 = &v54[112 * v57];
      v59 = v107;
      v60 = *v109;
      v61 = *&v109[16];
      *(v58 + 3) = v108;
      *(v58 + 4) = v60;
      *(v58 + 2) = v59;
      *(v58 + 10) = v61;
      *(v58 + 11) = 0;
      *(v58 + 12) = v49;
      *(v58 + 13) = v50;
      *(v58 + 14) = v95;
      *(v58 + 120) = xmmword_18DDABD20;
      v58[136] = 0;
      if (v95)
      {
        (*(*v95 + 88))();
      }

      a3 = v98;

      v23[259] = 1;
      v14 = v94;
      v16 = v91;
    }

    *(v23 + 128) = v14;
    v23[258] = v16;
    *(v23 + 56) = v96;
    v23[228] = v97;
    *(v8 + 24) = v20;
    swift_endAccess();
    if (v15 >= *(v20 + 2))
    {
      goto LABEL_70;
    }

    if ((v23[260] & 1) == 0 || *(*(v23 + 29) + 16))
    {
      break;
    }

    swift_beginAccess();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 24) = v20;
    if ((v72 & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v8 + 24) = v20;
    }

    v73 = *(v20 + 2);
    if (v15 >= v73)
    {
      goto LABEL_72;
    }

    v74 = v73 - 1;
    v75 = *&v20[v22 + 32];
    v76 = *&v20[v22 + 64];
    v108 = *&v20[v22 + 48];
    *v109 = v76;
    v107 = v75;
    v77 = *&v20[v22 + 80];
    v78 = *&v20[v22 + 96];
    v79 = *&v20[v22 + 128];
    *v110 = *&v20[v22 + 112];
    *&v110[16] = v79;
    *&v109[16] = v77;
    *&v109[32] = v78;
    v80 = *&v20[v22 + 144];
    v81 = *&v20[v22 + 160];
    v82 = *&v20[v22 + 192];
    v113 = *&v20[v22 + 176];
    v114 = v82;
    v111 = v80;
    v112 = v81;
    v83 = *&v20[v22 + 208];
    v84 = *&v20[v22 + 224];
    v85 = *&v20[v22 + 240];
    *(v117 + 13) = *&v20[v22 + 253];
    v116 = v84;
    v117[0] = v85;
    v115 = v83;
    memmove(&v20[v22 + 32], &v20[v22 + 264], 232 * (v73 - 1 - v15));
    *(v20 + 2) = v74;
    *(v8 + 24) = v20;
    swift_endAccess();
    outlined destroy of _ShapeStyle_InterpolatorGroup.Layer(&v107);
    --v99;
LABEL_16:
    if (v15 >= v99)
    {
      goto LABEL_65;
    }
  }

  if (v13 == a7)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 24) = v20;
  if ((v62 & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    *(v8 + 24) = v20;
  }

  if (v15 >= *(v20 + 2))
  {
    goto LABEL_71;
  }

  v63 = &v20[v22];
  *&v20[v22 + 208] = 0;
  swift_unknownObjectRelease();
  v64 = *&v20[v22 + 232];
  v65 = *(v64 + 2);
  if (!v65)
  {
LABEL_14:
    v63[259] = 1;
    *(v8 + 24) = v20;
    swift_endAccess();
    a3 = v98;
    v14 = v94;
LABEL_15:
    ++v15;
    goto LABEL_16;
  }

  v66 = swift_isUniquelyReferenced_nonNull_native();
  *(v63 + 29) = v64;
  if ((v66 & 1) == 0)
  {
    v64 = specialized _ArrayBuffer._consumeAndCreateNew()(v64);
  }

  v67 = 0;
  v68 = 0;
  *(v63 + 29) = v64;
  while (1)
  {
    *(v63 + 29) = v64;
    if (v68 >= *(v64 + 2))
    {
      break;
    }

    *&v64[v67 + 64] = 0;
    swift_unknownObjectRelease();
    v69 = *(v63 + 29);
    if (v68 >= *(v69 + 16))
    {
      goto LABEL_67;
    }

    ++v68;
    v70 = v69 + v67;
    v71 = *(v70 + 88);
    *(v70 + 88) = 0;

    v64 = *(v63 + 29);
    v67 += 112;
    if (v65 == v68)
    {
      goto LABEL_14;
    }
  }

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

void _ShapeStyle_InterpolatorGroup.addLayer(id:style:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = a2[5];
  v97 = a2[4];
  v98 = v9;
  v99 = a2[6];
  v100 = *(a2 + 14);
  v10 = a2[1];
  v93 = *a2;
  v94 = v10;
  v11 = a2[3];
  v95 = a2[2];
  v96 = v11;
  v12 = *(v3 + 56);
  swift_beginAccess();
  v13 = *(v3 + 24);
  v14 = *(v13 + 2);
  *(v3 + 56) = v12 + 1;
  if (v14 > v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v15 = &v13[232 * v12];
      v69 = *(v15 + 13);
      v16 = *(v15 + 5);
      v17 = v15[48];
      v70 = 232 * v12;
      *&__dst = *(v15 + 4);
      *(&__dst + 1) = v16;
      LOBYTE(v73) = v17;
      *&v83 = v7;
      *(&v83 + 1) = v6;
      LOBYTE(v84) = v8;

      outlined copy of _ShapeStyle_LayerID(__dst, v16, v17);
      v18 = specialized static _ShapeStyle_LayerID.== infix(_:_:)(&__dst, &v83);
      outlined consume of _ShapeStyle_LayerID(__dst, *(&__dst + 1), v73);
      if (v18)
      {
        swift_beginAccess();
        v19 = *(v3 + 24);
        outlined init with copy of _ShapeStyle_Pack.Style?(&v93, &__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 24) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v3 + 24) = v19;
        }

        v8 = 232 * v12;
        if (*(v19 + 2) > v12)
        {
          v21 = &v19[v70];
          v22 = *&v19[v70 + 56];
          v23 = *&v19[v70 + 72];
          v24 = *&v19[v70 + 104];
          v85 = *&v19[v70 + 88];
          v86 = v24;
          v83 = v22;
          v84 = v23;
          v25 = *&v19[v70 + 120];
          v26 = *&v19[v70 + 136];
          v27 = *&v19[v70 + 152];
          v90 = *&v19[v70 + 168];
          v88 = v26;
          v89 = v27;
          v87 = v25;
          v28 = v93;
          v29 = v94;
          v30 = v95;
          *(v21 + 104) = v96;
          *(v21 + 88) = v30;
          *(v21 + 72) = v29;
          *(v21 + 56) = v28;
          v31 = v97;
          v32 = v98;
          v33 = v99;
          *(v21 + 21) = v100;
          *(v21 + 152) = v33;
          *(v21 + 136) = v32;
          *(v21 + 120) = v31;
          *(v3 + 24) = v19;
          swift_endAccess();
          outlined destroy of _ShapeStyle_Pack.Style?(&v83, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
          swift_beginAccess();
          v34 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 24) = v19;
          if (v34)
          {
            goto LABEL_8;
          }

          goto LABEL_22;
        }

        __break(1u);
      }

      else
      {
        swift_beginAccess();
        v19 = *(v3 + 24);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 24) = v19;
        if (v57)
        {
LABEL_15:
          if (*(v19 + 2) > v12)
          {
            v19[v70 + 260] = 1;
            *(v3 + 24) = v19;
            swift_endAccess();
            v58 = *&v19[v70 + 56];
            v59 = *&v19[v70 + 72];
            v60 = *&v19[v70 + 104];
            v85 = *&v19[v70 + 88];
            v86 = v60;
            v83 = v58;
            v84 = v59;
            v61 = *&v19[v70 + 120];
            v62 = *&v19[v70 + 136];
            v63 = *&v19[v70 + 152];
            v90 = *&v19[v70 + 168];
            v88 = v62;
            v89 = v63;
            v87 = v61;
            memmove(&__dst, &v19[v70 + 56], 0x78uLL);
            *(&v79 + 1) = v3;
            v80 = v69;
            _s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOi0_(&__dst);
            v64 = v77;
            v65 = v79;
            *(a3 + 96) = v78;
            *(a3 + 112) = v65;
            v66 = v73;
            v67 = v75;
            v68 = v76;
            *(a3 + 32) = v74;
            *(a3 + 48) = v67;
            *(a3 + 128) = v80;
            *(a3 + 64) = v68;
            *(a3 + 80) = v64;
            *a3 = __dst;
            *(a3 + 16) = v66;
            outlined init with copy of _ShapeStyle_Pack.Style?(&v83, v71, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
            return;
          }

          __break(1u);
LABEL_22:
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
LABEL_8:
          if (*(v19 + 2) <= v12)
          {
            __break(1u);
          }

          else
          {
            v19[v8 + 260] = 0;
            *(v3 + 24) = v19;
            swift_endAccess();
            *&__dst = v3;
            DWORD2(__dst) = v69;
            _s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOi_(&__dst);
            v35 = v77;
            v36 = v79;
            *(a3 + 96) = v78;
            *(a3 + 112) = v36;
            v37 = v73;
            v38 = v75;
            v39 = v76;
            *(a3 + 32) = v74;
            *(a3 + 48) = v38;
            *(a3 + 128) = v80;
            *(a3 + 64) = v39;
            *(a3 + 80) = v35;
            *a3 = __dst;
            *(a3 + 16) = v37;
          }

          return;
        }
      }

      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 52);
  *(v3 + 52) = v4 + 1;
  LOBYTE(__dst) = 1;
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v90 = v100;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  swift_beginAccess();
  outlined init with copy of _ShapeStyle_Pack.Style?(&v93, &__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
  outlined copy of _ShapeStyle_LayerID(v7, v6, v8);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v13;
  if ((v40 & 1) == 0)
  {
LABEL_18:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 + 1, 1, v13);
    *(v3 + 24) = v13;
  }

  v42 = *(v13 + 2);
  v41 = *(v13 + 3);
  if (v42 >= v41 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v13);
  }

  *(v13 + 2) = v42 + 1;
  v43 = &v13[232 * v42];
  *(v43 + 4) = v7;
  *(v43 + 5) = v6;
  v43[48] = v8;
  v44 = v92;
  *(v43 + 49) = v91;
  v43[51] = v44;
  *(v43 + 13) = v4;
  v45 = v83;
  v46 = v84;
  v47 = v85;
  *(v43 + 104) = v86;
  *(v43 + 88) = v47;
  *(v43 + 72) = v46;
  *(v43 + 56) = v45;
  v48 = v87;
  v49 = v88;
  v50 = v90;
  *(v43 + 152) = v89;
  *(v43 + 136) = v49;
  *(v43 + 120) = v48;
  v51 = MEMORY[0x1E69E7CC0];
  *(v43 + 21) = v50;
  *(v43 + 22) = v51;
  *(v43 + 92) = 0;
  *(v43 + 188) = 0;
  *(v43 + 204) = 0;
  *(v43 + 196) = 0;
  *(v43 + 53) = 0;
  *(v43 + 27) = 0x7FF0000000000000;
  *(v43 + 56) = 0;
  v43[228] = 1;
  LOWORD(v50) = v81;
  v43[231] = v82;
  *(v43 + 229) = v50;
  *(v43 + 30) = 0;
  *(v43 + 31) = 0;
  *(v43 + 29) = v51;
  *(v43 + 253) = 0;
  *(v3 + 24) = v13;
  swift_endAccess();
  *&__dst = v3;
  DWORD2(__dst) = v4;
  _s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOi_(&__dst);
  v52 = v77;
  v53 = v79;
  *(a3 + 96) = v78;
  *(a3 + 112) = v53;
  v54 = v73;
  v55 = v75;
  v56 = v76;
  *(a3 + 32) = v74;
  *(a3 + 48) = v55;
  *(a3 + 128) = v80;
  *(a3 + 64) = v56;
  *(a3 + 80) = v52;
  *a3 = __dst;
  *(a3 + 16) = v54;
}

void type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect))
  {
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
    }
  }
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedShape.Shape(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = *(a2 + 26);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  return a1;
}

void outlined copy of _ShapeStyle_RenderedShape.Shape(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  v14 = a14 >> 29;
  if (a14 >> 29 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
      }
    }

    else
    {

      outlined copy of Path.Storage(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    switch(v14)
    {
      case 2u:

        break;
      case 3u:

        outlined copy of GraphicsImage.Contents?(a1, a2);
        break;
      case 4u:

        outlined copy of DisplayList.Item.Value(a6, a7, a8, a9);
        break;
    }
  }
}

void _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    v26 = *a1;
    v6 = *(a1 + 16);

    while (1)
    {
      v33 = v26;
      LOBYTE(v34) = v6;
      v13 = *(a2 + 80);
      v43 = *(a2 + 64);
      *v44 = v13;
      *&v44[16] = *(a2 + 96);
      v45 = *(a2 + 112);
      v14 = *(a2 + 16);
      v39 = *a2;
      v40 = v14;
      v15 = *(a2 + 48);
      v41 = *(a2 + 32);
      v42 = v15;
      _ShapeStyle_InterpolatorGroup.addLayer(id:style:)(&v33, &v39, v46);
      v48[6] = v46[6];
      v48[7] = v46[7];
      v49 = v47;
      v48[2] = v46[2];
      v48[3] = v46[3];
      v48[4] = v46[4];
      v48[5] = v46[5];
      v48[0] = v46[0];
      v48[1] = v46[1];
      if (_s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOg(v48) != 1)
      {
        break;
      }

      v16 = sub_18D130FB8(v48);
      v17 = *(v16 + 120);
      v18 = *(v16 + 128);
      v19 = *(a3 + 80);
      v31 = *(a3 + 64);
      v32[0] = v19;
      *(v32 + 12) = *(a3 + 92);
      v20 = *(a3 + 16);
      v27 = *a3;
      v28 = v20;
      v21 = *(a3 + 48);
      v29 = *(a3 + 32);
      v30 = v21;
      v33 = v27;
      v34 = v20;
      *(v38 + 12) = *(v32 + 12);
      v37 = v31;
      v38[0] = v19;
      v35 = v29;
      v36 = v21;
      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 104) = -1610612736;

      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v27, &v39);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v33);

      *(a3 + 144) = v17;
      *(a3 + 152) = v18;
      v22 = *(v16 + 112);
      if (v22)
      {
        v42 = *(v16 + 48);
        v43 = *(v16 + 64);
        *v44 = *(v16 + 80);
        *&v44[16] = *(v16 + 96);
        v39 = *v16;
        v40 = *(v16 + 16);
        v41 = *(v16 + 32);
        v45 = v22;
        _ShapeStyle_RenderedShape.render(style:)(&v39);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);

      outlined destroy of _ShapeStyle_Pack.Style?(v16, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

      v7 = *(a3 + 80);
      v43 = *(a3 + 64);
      *v44 = v7;
      *&v44[12] = *(a3 + 92);
      v8 = *(a3 + 16);
      v39 = *a3;
      v40 = v8;
      v9 = *(a3 + 48);
      v41 = *(a3 + 32);
      v42 = v9;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v39);
      v10 = v32[0];
      *(a3 + 64) = v31;
      *(a3 + 80) = v10;
      *(a3 + 92) = *(v32 + 12);
      v11 = v28;
      *a3 = v27;
      *(a3 + 16) = v11;
      v12 = v30;
      *(a3 + 32) = v29;
      *(a3 + 48) = v12;
    }

    v23 = sub_18D130FB8(v48);
    v24 = *v23;
    v25 = *(v23 + 8);

    *(a3 + 144) = v24;
    *(a3 + 152) = v25;
  }
}

uint64_t getEnumTagSinglePayload for _StackLayoutCache(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 104);
  v4 = (result + 104);
  while (v2)
  {
    v5 = *(v3 - 5);
    v6 = *v3;
    v3 += 20;
    result = *v4 == v6 && *(v4 - 5) == v5;
    v8 = result != 1 || v2-- == 1;
    v4 += 20;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _ShapeStyle_InterpolatorGroup.features.getter(_WORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v3 + 32;
    while (1)
    {
      v8 = v7 + 232 * v6;
      v9 = *(v8 + 200);
      v10 = *(v8 + 152);
      v11 = *(v9 + 16);
      if (v11)
      {
        if (v11 == 1)
        {
          v12 = 0;
        }

        else
        {
          v13 = 0;
          v12 = v11 & 0x7FFFFFFFFFFFFFFELL;
          v14 = (v9 + 152);
          v15 = v11 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v16 = *(v14 - 56);
            v17 = *v14;
            v14 += 112;
            v10 |= v16;
            v13 |= v17;
            v15 -= 2;
          }

          while (v15);
          v10 |= v13;
          if (v11 == v12)
          {
            goto LABEL_3;
          }
        }

        v18 = v11 - v12;
        v19 = (v9 + 112 * v12 + 40);
        do
        {
          v20 = *v19;
          v19 += 56;
          v10 |= v20;
          --v18;
        }

        while (v18);
      }

LABEL_3:
      ++v6;
      v5 |= v10;
      if (v6 == v4)
      {
        goto LABEL_14;
      }
    }
  }

  v5 = 0;
LABEL_14:
  *a1 = v5;
}

void _ShapeStyle_InterpolatorGroup.properties.getter(_DWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v3 + 32;
    while (1)
    {
      v8 = v7 + 232 * v6;
      v9 = *(v8 + 200);
      v10 = *(v8 + 156);
      v11 = *(v9 + 16);
      if (v11)
      {
        if (v11 == 1)
        {
          v12 = 0;
        }

        else
        {
          v13 = 0;
          v12 = v11 & 0x7FFFFFFFFFFFFFFELL;
          v14 = (v9 + 156);
          v15 = v11 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v16 = *(v14 - 28);
            v17 = *v14;
            v14 += 56;
            v10 |= v16;
            v13 |= v17;
            v15 -= 2;
          }

          while (v15);
          v10 |= v13;
          if (v11 == v12)
          {
            goto LABEL_3;
          }
        }

        v18 = v11 - v12;
        v19 = (v9 + 112 * v12 + 44);
        do
        {
          v20 = *v19;
          v19 += 28;
          v10 |= v20;
          --v18;
        }

        while (v18);
      }

LABEL_3:
      ++v6;
      v5 |= v10;
      if (v6 == v4)
      {
        goto LABEL_14;
      }
    }
  }

  v5 = 0;
LABEL_14:
  *a1 = v5;
}

uint64_t _ShapeStyle_InterpolatorGroup.rewriteInterpolation(serial:list:time:frame:contentOrigin:contentOffset:version:)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = v12;
  v24 = *a4;
  swift_beginAccess();
  v25 = *(v13 + 24);
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_5:

    v29 = 0;
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return v29 & 1;
  }

  v27 = 0;
  v28 = 259;
  while (*(v25 + v28 - 207) != a1)
  {
    ++v27;
    v28 += 232;
    if (v26 == v27)
    {
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 24) = v25;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    v25 = result;
    *(v13 + 24) = result;
  }

  if (v27 < *(v25 + 16))
  {
    v31 = v25 + v28;
    v32 = (v25 + v28 - 83);
    v33 = *(a2 + 8);
    v34 = *(a2 + 12);
    *&v63[0] = *a2;
    WORD4(v63[0]) = v33;
    HIDWORD(v63[0]) = v34;

    DisplayList.InterpolatorLayer.setDisplayList(_:origin:)(v63, a9, a10);

    if (*(*(v25 + v28 - 27) + 16))
    {
      Value = AGGraphGetValue();
      if (*(v31 - 19) != *Value)
      {
        *(v31 - 19) = *Value;
        *(v25 + v28) = 1;
      }

      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v36 = swift_dynamicCastClassUnconditional();
      v37 = *AGGraphGetValue();
      swift_beginAccess();
      v38 = *(v36 + 376);
      if (v37 < v38)
      {
        v38 = v37;
      }

      *(v36 + 376) = v38;

      v39 = *(v13 + 32);
      swift_beginAccess();
      DisplayList.InterpolatorLayer.updateInterpolators(contentsScale:maxDuration:)(v39, *(v13 + 16));
      v40 = *(v25 + v28 - 67);
      v61[0] = *v32;
      v61[1] = v40;
      v41 = *(v25 + v28 - 51);
      v42 = *(v25 + v28 - 35);
      v43 = *(v25 + v28 - 19);
      v62 = *(v25 + v28 - 3);
      v61[3] = v42;
      v61[4] = v43;
      v61[2] = v41;
      v44 = *(v25 + v28 - 35);
      v57 = *(v25 + v28 - 51);
      v58 = v44;
      v59 = *(v25 + v28 - 19);
      v60 = *(v25 + v28 - 3);
      v45 = *(v25 + v28 - 67);
      v55 = *v32;
      v56 = v45;
      v54 = v24;
      v46 = *(v13 + 40);
      v47 = *(v13 + 44);
      v48 = *(v13 + 48);
      v50 = *(v13 + 36);
      v51 = v46;
      v52 = v47;
      v53 = v48;
      outlined init with copy of DisplayList.InterpolatorLayer(v61, v63);
      DisplayList.InterpolatorLayer.updateOutput(list:frame:contentOffset:version:rasterizationOptions:)(a2, &v54, &v50, a5, a6, a7, a8, a11, a12);
      v29 = v49;
      v63[2] = v57;
      v63[3] = v58;
      v63[4] = v59;
      v64 = v60;
      v63[0] = v55;
      v63[1] = v56;
      outlined destroy of DisplayList.InterpolatorLayer(v63);
    }

    else
    {
      v29 = 0;
    }

    *(v13 + 24) = v25;
    swift_endAccess();
    return v29 & 1;
  }

  __break(1u);
  return result;
}

void DisplayList.InterpolatorLayer.setDisplayList(_:origin:)(uint64_t a1, double a2, double a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(v3 + 16) == a2 && *(v3 + 24) == a3;
  if (!v9 || (v10 = *(v3 + 8), v11 = *(v3 + 12), (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(*v3, v6) & 1) == 0) || (v10 == v7 ? (v12 = v11 == v8) : (v12 = 0), !v12))
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 52);
    v15 = *(v3 + 16);
    v20[0] = *v3;
    v20[1] = v15;
    v21[0] = *(v3 + 32);
    *(v21 + 13) = *(v3 + 45);

    outlined destroy of DisplayList.InterpolatorLayer.Contents(v20);
    *v3 = v6;
    *(v3 + 8) = v7;
    *(v3 + 12) = v8;
    *(v3 + 16) = a2;
    *(v3 + 24) = a3;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0x7FF0000000000000;
    *(v3 + 48) = v13;
    *(v3 + 52) = v14;
    *(v3 + 83) = 1;
    v16 = *(v3 + 56);
    v17 = *(v16 + 2);
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      }

      if (v17 > *(v16 + 2))
      {
        __break(1u);
      }

      else
      {
        v18 = &v16[112 * v17];
        v19 = *(v18 - 3);
        *(v18 - 3) = 0;

        *(v3 + 56) = v16;
      }
    }
  }
}

void *outlined destroy of DisplayList.InterpolatorLayer.Contents(void *a1)
{

  swift_unknownObjectRelease();
  return a1;
}

Swift::Void __swiftcall DisplayList.translate(by:version:)(CGSize by, SwiftUI::DisplayList::Version version)
{
  v3 = *v2;
  v4 = *(*v2 + 2);
  if (v4)
  {
    height = by.height;
    width = by.width;
    v5 = *version.value;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v6 = 0;
    v7 = *(v3 + 2);
    v8.f64[0] = width;
    v8.f64[1] = height;
    v9 = (v3 + 64);
    do
    {
      if (v6 >= v7)
      {
        __break(1u);
        goto LABEL_11;
      }

      ++v6;
      v9[-2] = vaddq_f64(v9[-2], v8);
      v10 = v9->f64[0];
      if (*&v5 > *&v9->f64[0])
      {
        v10 = v5;
      }

      v9->f64[0] = v10;
      v9 += 5;
    }

    while (v4 != v6);
    *v2 = v3;
  }
}

uint64_t _ShapeStyle_RenderedLayers.endLayer(shape:)(float64x2_t *a1)
{
  v2 = v1;
  _ShapeStyle_RenderedShape.commitItem()(&v57);
  v4 = *(v1 + 8);
  *&v64[12] = *(v1 + 68);
  v5 = *(v1 + 24);
  v61 = v4;
  v62 = v5;
  v6 = *(v1 + 56);
  v63 = *(v1 + 40);
  *v64 = v6;
  v7 = v4;
  v8 = (*&v64[16] >> 28) & 3;
  if (!v8)
  {
    v18 = *v64;
    v19 = v63;
    v20 = v62;
    v21 = *&v64[16] & 0xFFFFFFFFCFFFFFFFLL;
    v22 = a1[7];
    v23 = *&v4 - v22.f64[0];
    v24 = *(&v61 + 1) - a1[7].f64[1];
    v57 = vsubq_f64(v57, v22);
    *&v60[24] = 0;
    type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *v41 = v23;
    *(v41 + 1) = v24;
    v41[1] = v20;
    v41[2] = v19;
    *v42 = v18;
    *&v42[16] = v21;
    *&v42[24] = 0;
    v25 = v41[0];
    *(v7 + 48) = v20;
    *(v7 + 64) = v19;
    *(v7 + 80) = v18;
    *(v7 + 92) = *&v42[12];
    *(v7 + 16) = xmmword_18DDAB4C0;
    *(v7 + 32) = v25;
    *(v44 + 12) = *&v60[12];
    v26 = v59;
    v27 = *v60;
    v43[2] = v59;
    v44[0] = *v60;
    v28 = v57;
    v29 = v58;
    v43[0] = v57;
    v43[1] = v58;
    *(v7 + 172) = *&v60[12];
    *(v7 + 144) = v26;
    *(v7 + 160) = v27;
    *(v7 + 112) = v28;
    *(v7 + 128) = v29;
    v45.f64[0] = v23;
    v45.f64[1] = v24;
    v46 = v20;
    v47 = v19;
    *v48 = v18;
    *&v48[16] = v21;
    *&v48[24] = 0;
    outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v61, &v53);
    outlined init with copy of DisplayList.Item(v41, &v53);
    outlined init with copy of DisplayList.Item(v43, &v53);
    outlined destroy of DisplayList.Item(&v45);
    v51 = v59;
    v52[0] = *v60;
    *(v52 + 12) = *&v60[12];
    v49 = v57;
    v50 = v58;
    outlined destroy of DisplayList.Item(&v49);
    v30 = *(v2 + 24);
    v31 = *(v2 + 56);
    v55 = *(v2 + 40);
    v56[0] = v31;
    *(v56 + 12) = *(v2 + 68);
    v53 = *(v2 + 8);
    v54 = v30;
    v17 = &v53;
LABEL_9:
    result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(v17);
    *(v2 + 8) = v7;
    *(v2 + 56) = 0;
    *(v2 + 72) = 0x10000000;
    return result;
  }

  if (v8 == 1)
  {
    v57 = vsubq_f64(v57, a1[7]);
    *&v60[24] = 0;
    v55 = v59;
    v56[0] = *v60;
    *(v56 + 12) = *&v60[12];
    v53 = v57;
    v54 = v58;
    outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v61, &v49);
    outlined init with copy of DisplayList.Item(&v53, &v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    v47 = v59;
    *v48 = *v60;
    *&v48[12] = *&v60[12];
    v45 = v57;
    v46 = v58;
    outlined destroy of DisplayList.Item(&v45);
    *(v7 + 16) = v10 + 1;
    v11 = (v7 + 80 * v10);
    v11[2] = v53;
    v13 = v55;
    v12 = v56[0];
    v14 = v54;
    *(v11 + 92) = *(v56 + 12);
    v11[4] = v13;
    v11[5] = v12;
    v11[3] = v14;
    *(v52 + 12) = *(v2 + 68);
    v15 = *(v2 + 56);
    v51 = *(v2 + 40);
    v52[0] = v15;
    v16 = *(v2 + 24);
    v49 = *(v2 + 8);
    v50 = v16;
    v17 = &v49;
    goto LABEL_9;
  }

  v33 = v59;
  v34 = *&v60[8];
  v35 = *&v60[24];
  v36 = *v60 & 0x1FFFFFFFFFLL;
  v37 = *&v60[16] & 0xFFFFFFFFC000FFFFLL;
  v38 = *(v2 + 24);
  v39 = *(v2 + 56);
  v55 = *(v2 + 40);
  v56[0] = v39;
  *(v56 + 12) = *(v2 + 68);
  v53 = *(v2 + 8);
  v54 = v38;
  result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v53);
  v40 = v57;
  *(v2 + 24) = v58;
  *(v2 + 8) = v40;
  *(v2 + 40) = v33;
  *(v2 + 56) = v36;
  *(v2 + 64) = v34;
  *(v2 + 72) = v37;
  *(v2 + 80) = v35;
  return result;
}

void _ShapeStyle_RenderedShape.commitItem()(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 260);
  if (v4 == 0.0 || (v5 = *(v1 + 112), v6 = *(v1 + 120), v7 = *(v1 + 128), v8 = *(v1 + 136), v65.origin.x = v5, v65.origin.y = v6, v65.size.width = v7, v65.size.height = v8, CGRectIsEmpty(v65)))
  {
    v9 = (v1 + 200);
    outlined consume of DisplayList.Item.Value(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
    *(v1 + 224) = 3221225472;
    v10 = *(v1 + 144);
    if (v10)
    {
      v11 = *(v1 + 152);
      v12 = *(v1 + 192);
      v61 = 0uLL;
      v62 = *(v1 + 176);
      v63 = v12;
      *v64 = 0uLL;
      *&v64[16] = 3221225472;
      *&v64[24] = 0;
      swift_retain_n();
      outlined copy of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
      DisplayList.init(_:)(&v61, &v58);
      v13 = v58;
      v14 = v59 | (v60 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
      *(v1 + 200) = v10;
      *(v1 + 208) = v11 | 0x1200000000;
      *(v1 + 216) = v13;
      *(v1 + 224) = v14;
      LOBYTE(v61) = *(v1 + 236);
      DisplayList.Item.canonicalize(options:)(&v61);

      *(v1 + 144) = 0;
      *(v1 + 152) = 0;
    }

    v15 = *(v1 + 208);
    v63 = *(v1 + 192);
    *v64 = v15;
    *&v64[12] = *(v1 + 220);
    v16 = *&v64[12];
    v17 = *(v1 + 176);
    v61 = *(v1 + 160);
    v18 = v61;
    v62 = v17;
    a1[2] = v63;
    a1[3] = v15;
    *(a1 + 60) = v16;
    *a1 = v18;
    a1[1] = v17;
    outlined init with copy of DisplayList.Item(&v61, &v58);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v19 = static GraphicsBlendMode.normal;
    v20 = byte_1ED52F818;
    v21 = *(v2 + 248);
    v22 = *(v2 + 256);
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    outlined consume of GraphicsBlendMode(v21, v22);
    *(v2 + 248) = v19;
    *(v2 + 256) = v20;
    *(v2 + 260) = 1065353216;
    *(v2 + 264) = 0;
    outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
    *v9 = 0;
    *(v2 + 208) = 0;
    *(v2 + 216) = 0;
    *(v2 + 224) = 3221225472;
    v23 = *(v2 + 128);
    *(v2 + 160) = *(v2 + 112);
    *(v2 + 176) = v23;
  }

  else
  {
    LOBYTE(v61) = *(v1 + 236);
    DisplayList.Item.canonicalize(options:)(&v61);
    v24 = *(v1 + 144);
    if (v24)
    {
      v25 = *(v1 + 152);
      v26 = *(v1 + 208);
      v27 = *(v2 + 216);
      v28 = *(v2 + 224);
      v29 = *(v2 + 192);
      v30 = *(v2 + 200);
      v61 = 0uLL;
      v62 = *(v2 + 176);
      *&v63 = v29;
      *(&v63 + 1) = v30;
      *v64 = v26;
      *&v64[8] = v27;
      *&v64[16] = v28;
      *&v64[24] = 0;
      swift_retain_n();
      outlined copy of DisplayList.Item.Value(v30, v26, v27, v28);
      DisplayList.init(_:)(&v61, &v58);
      v31 = v58;
      v32 = v59 | (v60 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v24;
      *(v2 + 208) = v25 | 0x1200000000;
      *(v2 + 216) = v31;
      *(v2 + 224) = v32;
      LOBYTE(v61) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v61);

      *(v2 + 144) = 0;
      *(v2 + 152) = 0;
    }

    v33 = *(v2 + 264);
    if (v33)
    {
      LOWORD(v61) = *(v2 + 108);
      DisplayList.Item.addDrawingGroup(contentSeed:)(&v61);
      *(v2 + 264) = v33 & 0xFE;
    }

    v34 = *(v2 + 256);
    v35 = *(v2 + 248);
    if ((v34 & 1) != 0 || v35)
    {
      v36 = *(v2 + 208);
      v37 = *(v2 + 216);
      v38 = *(v2 + 224);
      v39 = *(v2 + 192);
      v40 = *(v2 + 200);
      v61 = 0uLL;
      v62 = *(v2 + 176);
      *&v63 = v39;
      *(&v63 + 1) = v40;
      *v64 = v36;
      *&v64[8] = v37;
      *&v64[16] = v38;
      *&v64[24] = 0;
      outlined copy of GraphicsBlendMode(v35, v34);
      outlined copy of GraphicsBlendMode(v35, v34);
      outlined copy of DisplayList.Item.Value(v40, v36, v37, v38);
      DisplayList.init(_:)(&v61, &v58);
      v41 = v58;
      v42 = v59 | (v60 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v35;
      *(v2 + 208) = v34 | 0x500000000;
      *(v2 + 216) = v41;
      *(v2 + 224) = v42;
      LOBYTE(v61) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v61);
      outlined consume of GraphicsBlendMode(v35, v34);
    }

    if (v4 != 1.0)
    {
      v43 = *(v2 + 208);
      v44 = *(v2 + 216);
      v45 = *(v2 + 224);
      v47 = *(v2 + 192);
      v46 = *(v2 + 200);
      v61 = 0uLL;
      v62 = *(v2 + 176);
      *&v63 = v47;
      *(&v63 + 1) = v46;
      *v64 = v43;
      *&v64[8] = v44;
      *&v64[16] = v45;
      *&v64[24] = 0;
      outlined copy of DisplayList.Item.Value(v46, v43, v44, v45);
      DisplayList.init(_:)(&v61, &v58);
      v48 = v58;
      v49 = v59 | (v60 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = LODWORD(v4);
      *(v2 + 208) = 0x400000000;
      *(v2 + 216) = v48;
      *(v2 + 224) = v49;
      LOBYTE(v61) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v61);
    }

    v50 = *(v2 + 208);
    v63 = *(v2 + 192);
    *v64 = v50;
    *&v64[12] = *(v2 + 220);
    v51 = *&v64[12];
    v52 = *(v2 + 176);
    v61 = *(v2 + 160);
    v53 = v61;
    v62 = v52;
    a1[2] = v63;
    a1[3] = v50;
    *(a1 + 60) = v51;
    *a1 = v53;
    a1[1] = v52;
    outlined init with copy of DisplayList.Item(&v61, &v58);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v54 = static GraphicsBlendMode.normal;
    v55 = byte_1ED52F818;
    v56 = *(v2 + 248);
    v57 = *(v2 + 256);
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    outlined consume of GraphicsBlendMode(v56, v57);
    *(v2 + 248) = v54;
    *(v2 + 256) = v55;
    *(v2 + 260) = 1065353216;
    *(v2 + 264) = 0;
    outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    *(v2 + 216) = 0;
    *(v2 + 224) = 3221225472;
    *(v2 + 160) = v5;
    *(v2 + 168) = v6;
    *(v2 + 176) = v7;
    *(v2 + 184) = v8;
  }
}

void outlined consume of _ShapeStyle_RenderedLayers.Layers(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v9 = (a9 >> 28) & 3;
  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    outlined consume of DisplayList.Item.Value(a6, a7, a8, a9);
  }
}

void outlined consume of _ShapeStyle_RenderedShape.Shape(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  v14 = a14 >> 29;
  if (a14 >> 29 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
      }
    }

    else
    {

      outlined consume of Path.Storage(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    switch(v14)
    {
      case 2u:

        break;
      case 3u:

        outlined consume of GraphicsImage.Contents?(a1, a2);
        break;
      case 4u:

        outlined consume of DisplayList.Item.Value(a6, a7, a8, a9);
        break;
    }
  }
}

uint64_t destroy for _ShapeStyle_RenderedShape(uint64_t a1)
{
  outlined consume of _ShapeStyle_RenderedShape.Shape(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));

  outlined consume of DisplayList.Item.Value(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  v2 = *(a1 + 248);
  v3 = *(a1 + 256);

  return outlined consume of GraphicsBlendMode(v2, v3);
}

uint64_t closure #1 in RendererEffectDisplayList.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for RendererEffectDisplayList(0, v8, v9, v10) + 16);
  Value = AGGraphGetValue();
  (*(*(v11 - 8) + 16))(v7, Value, v11);
  v13 = AGGraphGetValue();
  (*(a3 + 24))(a2, a3, *v13, v13[1]);
  return (*(v5 + 8))(v7, a2);
}

double _ClipEffect.effectValue(size:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Shape.effectivePath(in:)(*(a1 + 16), *(a1 + 24), v12, a3);
  v7 = swift_allocObject();
  result = *v12;
  v9 = v12[1];
  *(v7 + 16) = v12[0];
  *(v7 + 32) = v9;
  *(v7 + 48) = v13;
  v10 = (v4 + *(a1 + 36));
  v11 = *v10;
  LOBYTE(v10) = v10[1];
  *(v7 + 49) = v11;
  *(v7 + 50) = v10;
  *(v7 + 52) = 0;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 12) = 6;
  return result;
}

uint64_t sub_18D13262C()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void _ShapeStyle_RenderedShape.render(style:)(__int128 *a1)
{
  v2 = v1;
  v4 = a1[5];
  v253 = a1[4];
  v254 = v4;
  *v255 = a1[6];
  *&v255[16] = *(a1 + 14);
  v5 = a1[1];
  v249 = *a1;
  v250 = v5;
  v6 = a1[3];
  v251 = a1[2];
  v252 = v6;
  v7 = *v255;
  v8 = v255[8];
  v197 = *v255;
  v198 = v255[8];
  if (v255[8] == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v9 = static GraphicsBlendMode.normal;
    v10 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    v7 = *v255;
    v8 = -1;
  }

  else
  {
    v9 = *v255;
    v10 = v255[8];
  }

  v11 = *(v2 + 248);
  v12 = *(v2 + 256);
  outlined copy of GraphicsBlendMode?(v7, v8);
  outlined consume of GraphicsBlendMode(v11, v12);
  *(v2 + 248) = v9;
  *(v2 + 256) = v10 & 1;
  v13 = *(v2 + 260);
  v14 = *(&v254 + 2);
  v15 = v13 * *(&v254 + 2);
  *(v2 + 260) = v13 * *(&v254 + 2);
  v16 = v249;
  v17 = DWORD2(v249);
  v18 = *(&v249 + 3);
  v19 = v250;
  v20 = *(&v250 + 1);
  v21 = v251;
  v22 = DWORD1(v251);
  v23 = BYTE8(v251);
  v24 = BYTE9(v251);
  if (BYTE5(v254) <= 2u)
  {
    if (!BYTE5(v254))
    {
      v37 = *(&v249 + 3);
      if (!*(*&v255[16] + 16))
      {
        v37 = v15 * *(&v249 + 3);
        *(v2 + 260) = 1065353216;
      }

      *&v247 = v16;
      *(&v247 + 1) = __PAIR64__(LODWORD(v37), v17);
      v248 = v19;
      _ShapeStyle_RenderedShape.render(color:)(&v247);
      goto LABEL_115;
    }

    if (BYTE5(v254) == 1)
    {

      _ShapeStyle_RenderedShape.render(paint:)(v249);
LABEL_114:
      outlined destroy of _ShapeStyle_Pack.Fill(&v249);
      goto LABEL_115;
    }

    v195 = v249;
    if (v251 == 3 && (*(&v250 + 1) & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      outlined copy of Material.ID(*(&v250 + 1), 3u);
      v38 = MEMORY[0x1E69E7CC0];
      v39 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v39)
      {
        goto LABEL_21;
      }
    }

    else
    {
      outlined copy of Material.ID(*(&v250 + 1), v251);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static CoreMaterialCache.shared);
      *&__dst = *(&v250 + 1);
      BYTE8(__dst) = v251;
      HIDWORD(__dst) = DWORD1(v251);
      *v202 = WORD4(v251);
      outlined copy of Material.ID(*(&v250 + 1), v251);
      v38 = CoreMaterialCache.subscript.getter(&__dst);
      outlined consume of Material.ID(__dst, BYTE8(__dst));
      os_unfair_lock_unlock(&static CoreMaterialCache.shared);
      v39 = *(v38 + 2);
      if (!v39)
      {
LABEL_21:
        *&v247 = v195;
        *(&v247 + 1) = __PAIR64__(LODWORD(v18), v17);
        v248 = v19;
        _ShapeStyle_RenderedShape.render(color:)(&v247);
LABEL_113:

        goto LABEL_114;
      }
    }

    v45 = v18;
    v191 = v38 + 32;
    v46 = v38 + 44;
    v47 = v39;
    v48 = v38 + 44;
    do
    {
      v49 = *v48;
      v48 += 16;
      if (v49 == 10)
      {
        memmove(&__dst, (*(v46 - 12) + 16), 0x7CuLL);
        if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) == 15)
        {
          _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          __asm { FMOV            V0.2S, #1.0 }

          v45 = 1.0;
          v17 = 1065353216;
          v19 = 2143289344;
          goto LABEL_33;
        }
      }

      v46 = v48;
      --v47;
    }

    while (v47);
    _D0 = v195;
LABEL_33:
    *&v247 = _D0;
    *(&v247 + 1) = __PAIR64__(LODWORD(v45), v17);
    v248 = v19;
    _ShapeStyle_RenderedShape.render(color:)(&v247);
    v51 = 0;
    v185 = *(MEMORY[0x1E695F050] + 16);
    v186 = *MEMORY[0x1E695F050];
    v190 = v39;
    while (1)
    {
      v52 = &v191[16 * v51];
      v53 = *v52;
      v54 = *(v52 + 2);
      v55 = v52[12];
      if (v52[12] > 9u)
      {
        break;
      }

      if (v55 == 4)
      {
        *(v2 + 260) = *(v2 + 260) * *&v53;
      }

      else
      {
        if (v55 != 5)
        {
          goto LABEL_48;
        }

        v56 = *v52;
        v57 = *(v2 + 248);
        v58 = *(v2 + 256);
        outlined copy of GraphicsBlendMode(*v52, v54 & 1);
        outlined consume of GraphicsBlendMode(v57, v58);
        *(v2 + 248) = v56;
        *(v2 + 256) = v54 & 1;
      }

LABEL_35:
      if (++v51 == v39)
      {
        goto LABEL_113;
      }
    }

    if (v55 != 10)
    {
      _ZF = v55 == 20 && v53 == 0;
      if (_ZF && v54 == 0)
      {
        goto LABEL_35;
      }

LABEL_48:
      v196 = *(v52 + 2);
      outlined copy of DisplayList.Effect(*v52, v54, v55);
LABEL_79:
      v96 = *(v2 + 208);
      v95 = *(v2 + 216);
      v97 = *(v2 + 224);
      v98 = *(v2 + 192);
      v99 = *(v2 + 200);
      __dst = 0uLL;
      *v202 = *(v2 + 176);
      *&v202[16] = v98;
      *&v202[24] = v99;
      *&v202[32] = v96;
      *&v202[40] = v95;
      *&v202[48] = v97;
      v100 = v97 >> 30;
      *&v202[56] = 0;
      v193 = v53;
      if (v97 >> 30 == 3 && !(v96 | v99 | v95) && v97 == 3221225472)
      {
        v101 = v196;
        outlined copy of DisplayList.Effect(v53, v196, v55);
        outlined copy of DisplayList.Item.Value(v99, v96, v95, 0xC0000000);
        outlined destroy of DisplayList.Item(&__dst);
        v102 = MEMORY[0x1E69E7CC0];
        v103 = 0x40000000;
        v39 = v190;
LABEL_112:
        outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v193;
        *(v2 + 208) = v101 | (v55 << 32);
        *(v2 + 216) = v102;
        *(v2 + 224) = v103;
        LOBYTE(v225) = *(v2 + 236);
        DisplayList.Item.canonicalize(options:)(&v225);
        outlined consume of DisplayList.Effect(v193, v101, v55);
        goto LABEL_35;
      }

      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
      v102 = swift_allocObject();
      v104 = *&v202[16];
      v105 = *&v202[32];
      v107 = __dst;
      v106 = *v202;
      v102[3] = *v202;
      v102[4] = v104;
      v102[5] = v105;
      v108 = *&v202[44];
      *(v102 + 92) = *&v202[44];
      v102[1] = xmmword_18DDA6EB0;
      v102[2] = v107;
      *&v226[16] = v104;
      *v227 = v105;
      *&v227[12] = v108;
      v225 = v107;
      *v226 = v106;
      outlined copy of DisplayList.Effect(v53, v196, v55);
      outlined copy of DisplayList.Item.Value(v99, v96, v95, v97);
      outlined init with copy of DisplayList.Item(&__dst, &v211);
      DisplayList.Item.features.getter(&v211);
      if (v97 >> 30 > 1)
      {
        if (v100 == 2)
        {
          v111 = *(v99 + 16);
          if (v111)
          {
            v109 = v211;
            v39 = v190;
            v101 = v196;
            if (v111 > 7)
            {
              v112 = v111 & 0x7FFFFFFFFFFFFFF8;
              v114 = (v99 + 188);
              v115 = 0uLL;
              v116 = v111 & 0x7FFFFFFFFFFFFFF8;
              v117 = 0uLL;
              do
              {
                v118.i32[0] = *(v114 - 30);
                v118.i32[1] = *(v114 - 20);
                v118.i32[2] = *(v114 - 10);
                v118.i32[3] = *v114;
                v119.i32[0] = v114[10];
                v119.i32[1] = v114[20];
                v119.i32[2] = v114[30];
                v119.i32[3] = v114[40];
                v115 = vorrq_s8(v118, v115);
                v117 = vorrq_s8(v119, v117);
                v114 += 80;
                v116 -= 8;
              }

              while (v116);
              v120 = vorrq_s8(v117, v115);
              v121 = vorr_s8(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
              v110 = (v121.i32[0] | v121.i32[1]);
              if (v111 == v112)
              {
                goto LABEL_106;
              }
            }

            else
            {
              LODWORD(v110) = 0;
              v112 = 0;
            }

            v122 = v111 - v112;
            v123 = (v99 + 40 * v112 + 68);
            do
            {
              v124 = *v123;
              v123 += 10;
              v110 = v124 | v110;
              --v122;
            }

            while (v122);
          }

          else
          {
            v109 = v211;
            v110 = 0;
            v39 = v190;
            v101 = v196;
          }

LABEL_106:
          outlined destroy of DisplayList.Item(&__dst);
          goto LABEL_111;
        }

        v109 = v211;
        outlined destroy of DisplayList.Item(&__dst);
        v110 = 0;
      }

      else
      {
        if (v100)
        {
          v189 = v211;
          if (BYTE4(v96) == 2)
          {

            v113 = v99;
            v39 = v190;
          }

          else
          {
            v39 = v190;
            if (BYTE4(v96) == 7)
            {
              v113 = *(v99 + 28);
              outlined init with copy of DisplayList.Item(&__dst, &v225);
              outlined consume of DisplayList.Effect(v99, v96, 7);

              outlined destroy of DisplayList.Item(&__dst);
            }

            else if (BYTE4(v96) == 18)
            {
              (*(*v99 + 120))(&v211);
              outlined init with copy of DisplayList.Item(&__dst, &v225);
              outlined consume of DisplayList.Effect(v99, v96, 18);

              outlined destroy of DisplayList.Item(&__dst);
              v113 = v211;
            }

            else
            {
              outlined copy of DisplayList.Effect(v99, v96, SBYTE4(v96));

              outlined consume of DisplayList.Effect(v99, v96, SBYTE4(v96));

              outlined destroy of DisplayList.Item(&__dst);
              v113 = 0;
            }
          }

          v110 = v113 | HIDWORD(v97);
          v101 = v196;
          v109 = v189;
          goto LABEL_111;
        }

        if (v99 >> 60 != 6)
        {
          v109 = v211;
          v39 = v190;
          v101 = v196;
          if (v99 >> 60 == 11)
          {
            v110 = *((v99 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_106;
          }

          outlined destroy of DisplayList.Item(&__dst);
          v110 = 0;
LABEL_111:
          v103 = v109 | (v110 << 32) | 0x40000000;
          goto LABEL_112;
        }

        v110 = *((v99 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v109 = v211;
        outlined destroy of DisplayList.Item(&__dst);
      }

      v39 = v190;
      v101 = v196;
      goto LABEL_111;
    }

    memmove(&__dst, (v53 + 16), 0x7CuLL);
    v196 = v54;
    if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) != 15)
    {

      goto LABEL_79;
    }

    _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
    v61 = *(v2 + 264);
    if (v61)
    {
      v62 = *(v2 + 108);
      if ((~*(v2 + 224) & 0xC0000000) != 0 || *(v2 + 224) != 3221225472 || *(v2 + 208) | *(v2 + 216) | *(v2 + 200))
      {
        v63 = *(v2 + 176);
        v64 = *(v2 + 208);
        v213 = *(v2 + 192);
        *v214 = v64;
        *&v214[12] = *(v2 + 220);
        v65 = *(v2 + 176);
        v211 = *(v2 + 160);
        v212 = v65;
        v66 = *(v2 + 208);
        v206 = v213;
        *v207 = v66;
        *&v207[12] = *(v2 + 220);
        v221.origin = v186;
        v221.size = v185;
        v204 = v211;
        v205 = v63;
        v192 = v53;
        outlined copy of DisplayList.Effect(v53, v54, 10);
        outlined init with copy of DisplayList.Item(&v211, &v225);
        DisplayList.Item.addExtent(to:)(&v221.origin.x);
        *&v226[16] = v206;
        *v227 = *v207;
        *&v227[12] = *&v207[12];
        v225 = v204;
        *v226 = v205;
        outlined destroy of DisplayList.Item(&v225);
        origin = v221.origin;
        size = v221.size;
        IsNull = CGRectIsNull(v221);
        height = 0.0;
        if (IsNull)
        {
          x = 0.0;
        }

        else
        {
          x = origin.x;
        }

        if (IsNull)
        {
          y = 0.0;
        }

        else
        {
          y = origin.y;
        }

        if (IsNull)
        {
          width = 0.0;
        }

        else
        {
          width = size.width;
        }

        if (!IsNull)
        {
          height = size.height;
        }

        v187 = *(&v211 + 1);
        v188 = *&v211;
        v74 = v212;
        v256 = CGRectIntegral(*(&height - 3));
        v75 = v256.origin.x;
        v76 = v256.origin.y;
        v77 = v256.size.width;
        v78 = v256.size.height;
        v79 = *(v2 + 208);
        v80 = *(v2 + 216);
        v81 = *(v2 + 224);
        v83 = *(v2 + 192);
        v82 = *(v2 + 200);
        v204 = 0uLL;
        v205 = v74;
        *&v206 = v83;
        *(&v206 + 1) = v82;
        *v207 = v79;
        *&v207[8] = v80;
        *&v207[16] = v81;
        *&v207[24] = 0;
        outlined copy of DisplayList.Item.Value(v82, v79, v80, v81);
        if (one-time initialization token for defaultFlags != -1)
        {
          swift_once();
        }

        v84 = static RasterizationOptions.Flags.defaultFlags;
        *(v2 + 160) = v75;
        *(v2 + 168) = v76;
        *(v2 + 176) = v77;
        *(v2 + 184) = v78;
        if ((~*&v207[16] & 0xC0000000) != 0 || *&v207[16] != 3221225472 || *v207 | *&v207[8] | *(&v206 + 1))
        {
          type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
          v87 = swift_allocObject();
          v88 = v206;
          v89 = *v207;
          v91 = v204;
          v90 = v205;
          v87[3] = v205;
          v87[4] = v88;
          v87[5] = v89;
          v92 = *&v207[12];
          *(v87 + 92) = *&v207[12];
          v87[1] = xmmword_18DDA6EB0;
          v87[2] = v91;
          v234 = v88;
          *v235 = v89;
          *&v235[12] = v92;
          v232 = v91;
          v233 = v90;
          outlined init with copy of DisplayList.Item(&v204, v199);
          DisplayList.Item.features.getter(v199);
          v86 = v199[0];
          v234 = v206;
          *v235 = *v207;
          *&v235[12] = *&v207[12];
          v232 = v204;
          v233 = v205;
          DisplayList.Item.properties.getter(v199);
          outlined destroy of DisplayList.Item(&v204);
          v85 = v199[0];
        }

        else
        {
          outlined destroy of DisplayList.Item(&v204);
          v85 = 0;
          v86 = 0;
          v87 = MEMORY[0x1E69E7CC0];
        }

        v93 = swift_allocObject();
        *(v93 + 16) = v87;
        *(v93 + 24) = v86;
        *(v93 + 28) = v85;
        *(v93 + 32) = v75 - v188;
        *(v93 + 40) = v76 - v187;
        *(v93 + 48) = -1;
        *(v93 + 52) = 768;
        *(v93 + 56) = v84 | 1;
        *(v93 + 60) = 3;
        v94 = v93 | 0xB000000000000000;
        outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v94;
        *(v2 + 208) = v62;
        *(v2 + 216) = 0;
        *(v2 + 224) = 0;
        v53 = v192;
      }

      else
      {
      }

      v61 &= ~1u;
      *(v2 + 264) = v61;
      if ((v61 & 2) != 0)
      {
        goto LABEL_79;
      }
    }

    else
    {

      if ((v61 & 2) != 0)
      {
        goto LABEL_79;
      }
    }

    *(v2 + 264) = v61 | 2;
    goto LABEL_79;
  }

  v194 = v249;
  v25 = DWORD1(v250);
  if (BYTE5(v254) > 4u)
  {
    if (BYTE5(v254) != 5)
    {
      goto LABEL_115;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v247 = _Q0;
    v248 = 2143289344;
    _ShapeStyle_RenderedShape.render(color:)(&v247);
    v30 = swift_allocObject();
    *&__dst = v194;
    *(&__dst + 1) = __PAIR64__(LODWORD(v18), v17);
    *v202 = v19;
    *&v202[4] = v25;
    *&v202[8] = v20;
    v202[16] = v21;
    *&v202[17] = *(a1 + 33);
    v202[19] = *(a1 + 35);
    *&v202[20] = v22;
    v202[24] = v23;
    v202[25] = v24;
    *&v202[53] = *(a1 + 69);
    *&v202[42] = *(a1 + 58);
    *&v202[26] = *(a1 + 42);
    _s7SwiftUI14GraphicsFilterOWOi14_(&__dst);
    v31 = *&v202[64];
    v30[5] = *&v202[48];
    v30[6] = v31;
    v30[7] = *v203;
    *(v30 + 124) = *&v203[12];
    v32 = *v202;
    v30[1] = __dst;
    v30[2] = v32;
    v33 = *&v202[32];
    v30[3] = *&v202[16];
    v30[4] = v33;
    *&v225 = v30;
    DWORD2(v225) = 0;
    BYTE12(v225) = 10;
    _ShapeStyle_RenderedShape.render(effect:)(&v225);
    v34 = v225;
    v35 = BYTE8(v225);
    v36 = BYTE12(v225);
  }

  else
  {
    if (BYTE5(v254) == 3)
    {
      *&__dst = v249;
      BYTE8(__dst) = BYTE8(v249);
      HIDWORD(__dst) = HIDWORD(v249);
      _ShapeStyle_RenderedShape.render(material:)(&__dst);
      goto LABEL_115;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v247 = _Q0;
    v248 = 2143289344;
    _ShapeStyle_RenderedShape.render(color:)(&v247);
    v41 = swift_allocObject();
    Color.ResolvedDuotone.colorMatrix.getter(&v225);
    *&v202[16] = *&v226[16];
    *&v202[32] = *v227;
    *&v202[48] = *&v227[16];
    __dst = v225;
    *v202 = *v226;
    *&v202[64] = 2139095040;
    v202[68] = 0;
    _s7SwiftUI14GraphicsFilterOWOi14_(&__dst);
    v42 = *&v202[64];
    v41[5] = *&v202[48];
    v41[6] = v42;
    v41[7] = *v203;
    *(v41 + 124) = *&v203[12];
    v43 = *v202;
    v41[1] = __dst;
    v41[2] = v43;
    v44 = *&v202[32];
    v41[3] = *&v202[16];
    v41[4] = v44;
    *&v211 = v41;
    DWORD2(v211) = 0;
    BYTE12(v211) = 10;
    _ShapeStyle_RenderedShape.render(effect:)(&v211);
    v34 = v211;
    v35 = BYTE8(v211);
    v36 = BYTE12(v211);
  }

  outlined consume of DisplayList.Effect(v34, v35, v36);
LABEL_115:
  v125 = *&v255[16];
  v126 = *(*&v255[16] + 16);
  if (!v126)
  {
    return;
  }

  v127 = *(v2 + 192);
  v128 = *(v2 + 108);
  v129 = *(v2 + 236);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v130 = static GraphicsBlendMode.normal;
  v131 = byte_1ED52F818;
  *&v243 = v127;
  WORD4(v243) = v128;
  BYTE10(v243) = v129;
  *v244 = MEMORY[0x1E69E7CC0];
  *&v244[8] = MEMORY[0x1E69E7CC0];
  *&v244[16] = static GraphicsBlendMode.normal;
  v244[24] = byte_1ED52F818;
  *&v244[25] = 0;
  v245 = v243;
  v246[0] = *v244;
  *(v246 + 11) = *&v244[11];
  v241 = v243;
  *v242 = *v244;
  *&v242[11] = *&v244[11];
  v132 = *(v2 + 248);
  v133 = *(v2 + 256);
  if (v133)
  {
    if (byte_1ED52F818)
    {
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, 1);
      outlined init with copy of CompositedItemAccumulator(&v245, &__dst);
      outlined copy of GraphicsBlendMode(v130, 1);
      outlined copy of GraphicsBlendMode(v132, 1);
      outlined consume of GraphicsBlendMode(v132, 1);
      outlined consume of GraphicsBlendMode(v130, 1);
      v134 = v132 == v130;
      goto LABEL_123;
    }

    swift_unknownObjectRetain_n();
  }

  else if ((byte_1ED52F818 & 1) == 0)
  {
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, 0);
    outlined init with copy of CompositedItemAccumulator(&v245, &__dst);
    outlined consume of GraphicsBlendMode(v132, 0);
    outlined consume of GraphicsBlendMode(v130, 0);
    v134 = v132 == v130;
LABEL_123:
    v135 = v134;
    goto LABEL_128;
  }

  outlined copy of GraphicsBlendMode(v130, v131);
  outlined init with copy of CompositedItemAccumulator(&v245, &__dst);
  outlined copy of GraphicsBlendMode(v130, v131);
  outlined consume of GraphicsBlendMode(v132, v133);
  outlined consume of GraphicsBlendMode(v130, v131);
  outlined consume of GraphicsBlendMode(v132, v133);
  v135 = 0;
LABEL_128:
  v240 = v135;
  v136 = v125 + 32;
  for (i = v126 - 1; ; --i)
  {
    v199[0] = *v136;
    v138 = *(v136 + 16);
    v139 = *(v136 + 32);
    v140 = *(v136 + 48);
    *&v200[9] = *(v136 + 57);
    v199[2] = v139;
    *v200 = v140;
    v199[1] = v138;
    v141 = *(v136 + 16);
    v237.origin = *v136;
    v237.size = v141;
    v238 = *(v136 + 32);
    v239 = *(v136 + 48);
    if (BYTE5(v140))
    {
      goto LABEL_150;
    }

    v142 = v200[4];
    v234 = v251;
    *v235 = v252;
    *&v235[16] = v253;
    v236 = v254;
    v232 = v249;
    v233 = v250;
    v143 = HIDWORD(v254);
    v144 = *v255;
    v145 = v255[8];
    *(v231 + 7) = *&v255[16];
    v231[0] = *&v255[9];
    if ((v200[4] & 8) != 0)
    {
      v146 = v13 * *&v200[8];
    }

    else
    {
      v146 = *(v2 + 260);
    }

    v147 = *&v200[16];
    v148 = v200[24];
    outlined init with copy of _ShapeStyle_Pack.Effect(v199, &v225);
    outlined init with copy of _ShapeStyle_Pack.Effect(v199, &v225);
    outlined init with copy of _ShapeStyle_Pack.Style(&v249, &v225);
    outlined consume of GraphicsBlendMode?(v144, v145);
    v221 = v237;
    v222 = v238;
    v223 = v239;
    v224 = v142;
    *&v202[16] = v234;
    *&v202[32] = *v235;
    *&v202[48] = *&v235[16];
    *&v202[64] = v236;
    __dst = v232;
    *v202 = v233;
    *&v202[72] = v146;
    *&v202[76] = v143;
    *v203 = v147;
    v203[8] = v148;
    *&v203[9] = v231[0];
    *&v203[16] = *(v231 + 7);
    *&v227[16] = *&v235[16];
    v228 = *&v202[64];
    v229 = *v203;
    v230 = *(v231 + 7);
    v225 = v232;
    *v226 = v233;
    _ZF = *(v2 + 260) == 1.0;
    *&v226[16] = v234;
    *v227 = *v235;
    if (_ZF && v14 == 1.0)
    {
      v149 = static GraphicsBlendMode.normal;
      v150 = byte_1ED52F818;
      v151 = v198;
      if (v198 == 255)
      {
        outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
        v151 = -1;
        v153 = static GraphicsBlendMode.normal;
        v152 = byte_1ED52F818;
        v154 = v197;
        if (v150)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v152 = byte_1ED52F818;
        v153 = static GraphicsBlendMode.normal;
        v154 = v197;
        v149 = v197;
        if (v198)
        {
LABEL_138:
          outlined copy of GraphicsBlendMode?(v154, v151);
          if (v152)
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v211);
            outlined copy of GraphicsBlendMode(v153, 1);
            outlined consume of GraphicsBlendMode(v149, 1);
            outlined consume of GraphicsBlendMode(v153, 1);
            if (v149 != v153)
            {
              goto LABEL_148;
            }

LABEL_153:
            if (BYTE5(v254) <= 2u)
            {
              if (!BYTE5(v254))
              {
                v155 = *(&v249 + 3) == 1.0;
                goto LABEL_149;
              }

              if (BYTE5(v254) == 1)
              {
                v158 = *(*v249 + 104);

                v155 = v158();
                outlined destroy of _ShapeStyle_Pack.Fill(&v249);
                goto LABEL_149;
              }
            }

            else if (BYTE5(v254) > 5u)
            {
              v155 = 1;
              goto LABEL_149;
            }

            goto LABEL_142;
          }

          outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v211);
          outlined consume of GraphicsBlendMode(v149, 1);
          v156 = v153;
          v157 = 0;
          goto LABEL_147;
        }
      }

      if ((v152 & 1) == 0)
      {
        outlined copy of GraphicsBlendMode?(v154, v151);
        outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v211);
        outlined consume of GraphicsBlendMode(v149, 0);
        outlined consume of GraphicsBlendMode(v153, 0);
        if (v149 != v153)
        {
          goto LABEL_148;
        }

        goto LABEL_153;
      }

      outlined copy of GraphicsBlendMode?(v154, v151);
      outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v211);
      outlined copy of GraphicsBlendMode(v153, 1);
      outlined consume of GraphicsBlendMode(v149, 0);
      v156 = v153;
      v157 = 1;
LABEL_147:
      outlined consume of GraphicsBlendMode(v156, v157);
LABEL_148:
      v155 = 0;
      goto LABEL_149;
    }

    outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v211);
LABEL_142:
    v155 = 0;
LABEL_149:
    _ShapeStyle_RenderedShape.render(shadow:style:above:below:opaqueFill:mayAdjustItem:)(&v221, &v225, &v241, &v243, v155 & 1, &v240);
    outlined destroy of _ShapeStyle_Pack.Effect(v199);
    *&v207[16] = *&v227[16];
    v208 = v228;
    v209 = v229;
    v210 = v230;
    v204 = v225;
    v205 = *v226;
    v206 = *&v226[16];
    *v207 = *v227;
    outlined destroy of _ShapeStyle_Pack.Style(&v204);
    v213 = v234;
    *v214 = *v235;
    *&v214[16] = *&v235[16];
    v215 = v236;
    v211 = v232;
    v212 = v233;
    v216 = v146;
    v217 = v143;
    v218 = v147;
    v219 = v148;
    *(v220 + 7) = *(v231 + 7);
    v220[0] = v231[0];
    outlined destroy of _ShapeStyle_Pack.Style(&v211);
LABEL_150:
    if (!i)
    {
      break;
    }

    v136 += 80;
  }

  v159 = v244[25];
  v160 = v244[26];
  if (*(*v244 + 16) || *(*&v244[8] + 16) || *(*v242 + 16) || *(*&v242[8] + 16))
  {
    v161 = *(v2 + 256);
    v162 = *(v2 + 248);
    if (v162)
    {
      v163 = 1;
    }

    else
    {
      v163 = *(v2 + 256);
    }

    if (v163 == 1)
    {
      v164 = *(v2 + 208);
      v165 = *(v2 + 216);
      v166 = *(v2 + 224);
      v167 = *(v2 + 192);
      v168 = *(v2 + 200);
      __dst = 0uLL;
      *v202 = *(v2 + 176);
      *&v202[16] = v167;
      *&v202[24] = v168;
      *&v202[32] = v164;
      *&v202[40] = v165;
      *&v202[48] = v166;
      *&v202[56] = 0;
      outlined copy of GraphicsBlendMode(v162, v161);
      outlined copy of GraphicsBlendMode(v162, v161);
      outlined copy of DisplayList.Item.Value(v168, v164, v165, v166);
      DisplayList.init(_:)(&__dst, &v225);
      v169 = v225;
      v170 = WORD4(v225) | (HIDWORD(v225) << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v162;
      *(v2 + 208) = v161 | 0x500000000;
      *(v2 + 216) = v169;
      *(v2 + 224) = v170;
      LOBYTE(__dst) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&__dst);
      outlined consume of GraphicsBlendMode(v162, v161);
      v171 = static GraphicsBlendMode.normal;
      v172 = byte_1ED52F818;
      v173 = *(v2 + 248);
      LOBYTE(v165) = *(v2 + 256);
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
      outlined consume of GraphicsBlendMode(v173, v165);
      *(v2 + 248) = v171;
      *(v2 + 256) = v172;
      v174 = *(v2 + 260);
      if (v174 != 1.0)
      {
LABEL_172:
        v175 = LODWORD(v174);
        v176 = *(v2 + 208);
        v177 = *(v2 + 216);
        v178 = *(v2 + 224);
        v180 = *(v2 + 192);
        v179 = *(v2 + 200);
        __dst = 0uLL;
        *v202 = *(v2 + 176);
        *&v202[16] = v180;
        *&v202[24] = v179;
        *&v202[32] = v176;
        *&v202[40] = v177;
        *&v202[48] = v178;
        *&v202[56] = 0;
        outlined copy of DisplayList.Item.Value(v179, v176, v177, v178);
        DisplayList.init(_:)(&__dst, &v225);
        v181 = v225;
        v182 = WORD4(v225) | (HIDWORD(v225) << 32) | 0x40000000;
        outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v175;
        *(v2 + 208) = 0x400000000;
        *(v2 + 216) = v181;
        *(v2 + 224) = v182;
        LOBYTE(__dst) = *(v2 + 236);
        DisplayList.Item.canonicalize(options:)(&__dst);
        *(v2 + 260) = 1065353216;
        if ((v163 & 1) == 0)
        {
          goto LABEL_173;
        }
      }

      goto LABEL_174;
    }

    v174 = *(v2 + 260);
    if (v174 != 1.0)
    {
      goto LABEL_172;
    }

LABEL_173:
    v183 = *(v2 + 264);
    if (((v242[25] | (v183 >> 1) | v159) & 1) == 0)
    {
      push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(&v244[8], 0, v2);
      push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(&v242[8], 1, v2);
      if (v160)
      {
        if (v183)
        {
          goto LABEL_177;
        }
      }

      else if ((v183 & 1) != 0 || (v242[26] & 1) == 0)
      {
        goto LABEL_177;
      }

      *(v2 + 264) = v183 | 1;
      goto LABEL_177;
    }

LABEL_174:
    v184 = *(v2 + 264);
    if (v184)
    {
      LOWORD(__dst) = *(v2 + 108);
      DisplayList.Item.addDrawingGroup(contentSeed:)(&__dst);
      *(v2 + 264) = v184 & 0xFE;
    }

    CompositedItemAccumulator.commitPendingItems()();
    CompositedItemAccumulator.commitPendingItems()();
    push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(v244, 0, v2);
    push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(v242, 1, v2);
  }

LABEL_177:
  v225 = v241;
  *v226 = *v242;
  *&v226[11] = *&v242[11];
  outlined destroy of CompositedItemAccumulator(&v225);
  __dst = v243;
  *v202 = *v244;
  *&v202[11] = *&v244[11];
  outlined destroy of CompositedItemAccumulator(&__dst);
}

uint64_t sub_18D133CD8()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D133D44()
{

  return swift_deallocObject();
}

uint64_t _ShapeStyle_RenderedLayers.commit(shape:options:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = *a2;
  v6 = *v3;
  if (!*v3)
  {
LABEL_13:
    v32 = v4[1];
    v34 = v4[2];
    v33 = (v4 + 1);
    v35 = v4[3];
    v36 = v4[4];
    v38 = v4[5];
    v37 = v4[6];
    v40 = v4[7];
    v39 = v4[8];
    v41 = v4[9];
    v42 = *(v4 + 20);
    v43 = (v41 >> 28) & 3;
    if (v43)
    {
      if (v43 != 1)
      {
        v57 = *(v4 + 20);
        *a3 = MEMORY[0x1E69E7CC0];
        *(a3 + 8) = 0;
        *(a3 + 12) = 0;
        v51 = *(v4 + 7);
        *v67 = *(v4 + 5);
        *&v67[16] = v51;
        *&v67[28] = *(v4 + 68);
        v52 = *(v4 + 3);
        v65 = *v33;
        v66 = v52;
        v53 = v39;
        v54 = v40;
        v55 = v37;
        result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v65);
        v4[1] = v32;
        v4[2] = v34;
        v4[3] = v35;
        v4[4] = v36;
        v4[5] = v38;
        v4[6] = v55;
        v4[7] = v54;
        v4[8] = v53;
        v4[9] = v41;
        *(v4 + 20) = v57;
        return result;
      }

      DisplayList.init(_:)(v44, &v59);
      v45 = *(a1 + 232);
      v46 = *(a1 + 192);
      v47 = *(a1 + 128);
      v65 = *(a1 + 112);
      v66 = v47;
      *&v67[8] = xmmword_18DDA6ED0;
      *&v67[24] = v59;
      *&v67[32] = WORD4(v59) | (HIDWORD(v59) << 32) | 0x40000000;
      *&v67[40] = v45;
      *v67 = v46;
      LOBYTE(v59) = v56;
      DisplayList.Item.canonicalize(options:)(&v59);
      v78 = *v67;
      *v79 = *&v67[16];
      *&v79[12] = *&v67[28];
      v76 = v65;
      v77 = v66;
      v73 = *v67;
      *v74 = *&v67[16];
      *&v74[12] = *&v67[28];
      v71 = v65;
      v72 = v66;
      outlined init with copy of DisplayList.Item(&v76, &v59);
      DisplayList.init(_:)(&v71, a3);
      v61 = *v67;
      *v62 = *&v67[16];
      *&v62[12] = *&v67[28];
      v59 = v65;
      v60 = v66;
      outlined destroy of DisplayList.Item(&v59);
      v48 = *(v4 + 7);
      *v67 = *(v4 + 5);
      *&v67[16] = v48;
      *&v67[28] = *(v4 + 68);
    }

    else
    {
      *&v65 = v4[1];
      *(&v65 + 1) = v34;
      *&v66 = v35;
      *(&v66 + 1) = v36;
      *v67 = v38;
      *&v67[8] = v37;
      *&v67[16] = v40;
      *&v67[24] = v39;
      *&v67[32] = v41 & 0xFFFFFFFFCFFFFFFFLL;
      *&v67[40] = v42;
      *&v59 = v32;
      *(&v59 + 1) = v34;
      *&v60 = v35;
      *(&v60 + 1) = v36;
      *&v61 = v38;
      *(&v61 + 1) = v37;
      *v62 = v40;
      *&v62[8] = v39;
      *&v62[16] = v41 & 0xFFFFFFFFCFFFFFFFLL;
      *&v62[24] = v42;
      outlined init with copy of DisplayList.Item(&v59, &v76);
      DisplayList.init(_:)(&v65, a3);
      v49 = *(v4 + 7);
      *v67 = *(v4 + 5);
      *&v67[16] = v49;
      *&v67[28] = *(v4 + 68);
    }

    v50 = *(v4 + 3);
    v65 = *v33;
    v66 = v50;
    result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v65);
    *v33 = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 7) = 0u;
    v4[9] = 0x20000000;
    *(v4 + 20) = 0;
    return result;
  }

  v7 = *(v6 + 56);
  v8 = v7;
  swift_beginAccess();
  v9 = *(v6 + 24);
  if (*(v9 + 16) <= v7)
  {
LABEL_12:
    *(v6 + 56) = 0;
    goto LABEL_13;
  }

  while (1)
  {
    *(v6 + 56) = v7 + 1;
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v9;
    if (result)
    {
      if (v7 < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
      if (v7 < 0)
      {
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    if (*(v9 + 16) <= v8)
    {
      break;
    }

    v17 = v9 + 232 * v8;
    *(v17 + 260) = 1;
    *(v6 + 24) = v9;
    swift_endAccess();
    v18 = *(v17 + 52);
    v19 = *(v17 + 56);
    v20 = *(v17 + 72);
    v21 = *(v17 + 104);
    *v67 = *(v17 + 88);
    *&v67[16] = v21;
    v65 = v19;
    v66 = v20;
    v22 = *(v17 + 120);
    v23 = *(v17 + 152);
    v24 = *(v17 + 168);
    v68 = *(v17 + 136);
    v69 = v23;
    *&v67[32] = v22;
    v25 = *(a1 + 16);
    v71 = *a1;
    v72 = v25;
    *(v75 + 12) = *(a1 + 92);
    v26 = *(a1 + 48);
    v27 = *(a1 + 80);
    *&v74[16] = *(a1 + 64);
    v75[0] = v27;
    v28 = *(a1 + 48);
    v29 = *a1;
    v30 = *(a1 + 16);
    v73 = *(a1 + 32);
    *v74 = v28;
    v70 = v24;
    v76 = v29;
    v77 = v30;
    *(v80 + 12) = *(a1 + 92);
    v31 = *(a1 + 80);
    *&v79[16] = *&v74[16];
    v80[0] = v31;
    v78 = v73;
    *v79 = v26;
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 104) = -1610612736;
    swift_retain_n();
    outlined init with copy of _ShapeStyle_Pack.Style?(&v65, &v59, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v71, &v59);
    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v76);

    *(a1 + 144) = v6;
    *(a1 + 152) = v18;
    if (v70)
    {
      *&v62[16] = *&v67[32];
      *v63 = v68;
      *&v63[16] = v69;
      v59 = v65;
      v60 = v66;
      v61 = *v67;
      *v62 = *&v67[16];
      v64 = v70;
      _ShapeStyle_RenderedShape.render(style:)(&v59);
    }

    _ShapeStyle_RenderedLayers.endLayer(shape:)(a1);

    outlined destroy of _ShapeStyle_Pack.Style?(&v65, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

    v10 = *(a1 + 80);
    *&v62[16] = *(a1 + 64);
    *v63 = v10;
    *&v63[12] = *(a1 + 92);
    v11 = *(a1 + 16);
    v59 = *a1;
    v60 = v11;
    v12 = *(a1 + 48);
    v61 = *(a1 + 32);
    *v62 = v12;
    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v59);
    v13 = v75[0];
    *(a1 + 64) = *&v74[16];
    *(a1 + 80) = v13;
    *(a1 + 92) = *(v75 + 12);
    v14 = v72;
    *a1 = v71;
    *(a1 + 16) = v14;
    v15 = *v74;
    *(a1 + 32) = v73;
    *(a1 + 48) = v15;
    v7 = *(v6 + 56);
    v8 = v7;
    swift_beginAccess();
    v9 = *(v6 + 24);
    if (*(v9 + 16) <= v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t DisplayList.ViewUpdater.Model.State.hasDODEffects.getter()
{
  if (*(v0[10] + 16) | v0[12])
  {
    v3 = 1;
  }

  else
  {
    v1 = v0[11];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      for (i = (v1 + 32); ; i += 8)
      {
        v5 = i[5];
        v16 = i[4];
        v17 = v5;
        v18[0] = i[6];
        *(v18 + 12) = *(i + 108);
        v6 = i[1];
        v12 = *i;
        v13 = v6;
        v7 = i[3];
        v14 = i[2];
        v15 = v7;
        if ((v3 & 1) == 0)
        {
          v10[4] = v16;
          v10[5] = v17;
          v11[0] = v18[0];
          *(v11 + 12) = *(v18 + 12);
          v10[0] = v12;
          v10[1] = v13;
          v10[2] = v14;
          v10[3] = v15;
          v8 = _s7SwiftUI14GraphicsFilterOWOg(v10);
          if (v8 > 2)
          {
            if (v8 != 3 && v8 != 4 && v8 != 21)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (v8 < 2)
            {
              v3 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v10) + 8) ^ 1;
              goto LABEL_6;
            }

            if (v8 != 2)
            {
LABEL_15:
              v3 = 0;
              goto LABEL_6;
            }
          }

          _s7SwiftUI14GraphicsFilterOWOj6_(v10);
        }

        v3 = 1;
LABEL_6:
        if (!--v2)
        {
          return v3 & 1;
        }
      }
    }

    v3 = 0;
  }

  return v3 & 1;
}

void ShapeType.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v7 <= 1)
  {
    if (*(a1 + 32))
    {
      if (v7 != 1)
      {
        goto LABEL_21;
      }

      Width = CGRectGetWidth(*a1);
      v25.origin.x = v3;
      v25.origin.y = v4;
      v25.size.width = v6;
      v25.size.height = v5;
      if (Width != CGRectGetHeight(v25))
      {
LABEL_22:
        *&v23[0] = 1;
        memset(v23 + 8, 0, 72);
        goto LABEL_23;
      }

      v26.origin.x = v3;
      v26.origin.y = v4;
      v26.size.width = v6;
      v26.size.height = v5;
      *v23 = v3;
      *(v23 + 1) = v4;
      *&v23[1] = v6;
      *(&v23[1] + 1) = v5;
      *&v23[2] = CGRectGetWidth(v26) * 0.5;
    }

    else
    {
      v23[0] = *a1;
      v23[1] = *(a1 + 16);
      *&v23[2] = 0;
    }

    BYTE8(v23[2]) = 0;
    v24 = 0;
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    v10 = *(*&v3 + 16);
    v11 = *(*&v3 + 24);
    v12 = *(*&v3 + 32);
    v13 = *(*&v3 + 40);
    v15 = *(*&v3 + 48);
    v14 = *(*&v3 + 56);
    v16 = *(*&v3 + 64);
    if (v15 == v14 || vabdd_f64(v15, v14) < 0.001)
    {
      v27 = *(*&v3 + 16);
      v18 = CGRectGetWidth(v27);
      v28.origin.x = v10;
      v28.origin.y = v11;
      v28.size.width = v12;
      v28.size.height = v13;
      Height = CGRectGetHeight(v28);
      if (Height >= v18)
      {
        Height = v18;
      }

      v20 = Height * 0.5;
      *v23 = v10;
      *(v23 + 1) = v11;
      if (v20 >= v15)
      {
        v20 = v15;
      }

      *&v23[1] = v12;
      *(&v23[1] + 1) = v13;
      *&v23[2] = v20;
      BYTE8(v23[2]) = v16;
      v24 = 0;
      v21 = a1;
      goto LABEL_34;
    }

LABEL_21:
    outlined destroy of Path(a1);
    goto LABEL_22;
  }

  if (v7 != 5)
  {
    if (v7 == 6 && (*&v4 | *&v3 | *&v6 | *&v5) == 0)
    {
      memset(v23, 0, sizeof(v23));
LABEL_23:
      v24 = 3;
LABEL_35:
      *(a2 + 32) = v23[2];
      *(a2 + 48) = v23[3];
      *(a2 + 64) = v23[4];
      *(a2 + 80) = v24;
      *a2 = v23[0];
      *(a2 + 16) = v23[1];
      return;
    }

    goto LABEL_21;
  }

  *&v23[0] = 1;
  memset(v23 + 8, 0, 72);
  v24 = 3;
  if (*(*&v3 + 16))
  {
    v22 = a1;
    if (*(*&v3 + 16) != 1 && one-time initialization token for bufferCallbacks != -1)
    {
      swift_once();
    }

    goto LABEL_33;
  }

  if (*(*&v3 + 24))
  {
    v22 = a1;
LABEL_33:
    RBPathApplyShape();
    v21 = v22;
LABEL_34:
    outlined destroy of Path(v21);
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t PaintType.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v53 = a3;
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = *(v4 + 16);
  v25 = v24;
  v22(&v51 - v23, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = v25;
    (v22)(v19, v25, a2);
    if (swift_dynamicCast())
    {
      result = (*(v4 + 8))(v25, a2);
      v29 = 0;
      LODWORD(v31) = v60;
      v30 = DWORD1(v60);
      LODWORD(v33) = DWORD2(v60);
      v32 = HIDWORD(v60);
      LODWORD(v25) = v61;
      goto LABEL_28;
    }

    (v22)(v16, v25, a2);
    if (swift_dynamicCast())
    {
      v58 = v60;
      *v59 = v61;
      *&v59[16] = v62[0];
      *&v59[25] = *(v62 + 9);
      v35 = v60;
      v54 = v60;
      v55 = BYTE8(v60);
      v56 = HIDWORD(v60);
      v57 = v61;
      v31 = ResolvedGradient.constantColor.getter();
      v33 = v36;
      v25 = v37;
      result = (*(v4 + 8))(v34, a2);
      if ((v25 & 0x100000000) == 0)
      {
        result = outlined destroy of LinearGradient._Paint(&v58);
        v29 = 0;
        v32 = HIDWORD(v33);
        v30 = HIDWORD(v31);
        goto LABEL_28;
      }

      LODWORD(v33) = DWORD2(v58);
      v32 = HIDWORD(v58);
      LODWORD(v25) = *v59;
      v27 = *&v59[8];
      v28 = *&v59[24];
      v40 = v59[40];
      v41 = 32;
LABEL_27:
      v29 = v41 & 0xFC | v40 & 3;
      v30 = HIDWORD(v35);
      LODWORD(v31) = v35;
      goto LABEL_28;
    }

    (v22)(v13, v25, a2);
    if (swift_dynamicCast())
    {
      v58 = v60;
      *v59 = v61;
      *&v59[16] = v62[0];
      *&v59[25] = *(v62 + 9);
      v35 = v60;
      v54 = v60;
      v55 = BYTE8(v60);
      v56 = HIDWORD(v60);
      v57 = v61;
      v31 = ResolvedGradient.constantColor.getter();
      v33 = v38;
      v25 = v39;
      result = (*(v4 + 8))(v34, a2);
      if ((v25 & 0x100000000) != 0)
      {
        LODWORD(v33) = DWORD2(v58);
        v32 = HIDWORD(v58);
        LODWORD(v25) = *v59;
        v27 = *&v59[8];
        v28 = *&v59[24];
        v40 = v59[40];
        v41 = 64;
        goto LABEL_27;
      }
    }

    else
    {
      (v22)(v10, v25, a2);
      if (swift_dynamicCast())
      {
        v58 = v60;
        *v59 = v61;
        *&v59[16] = v62[0];
        *&v59[25] = *(v62 + 9);
        v35 = v60;
        v54 = v60;
        v55 = BYTE8(v60);
        v56 = HIDWORD(v60);
        v57 = v61;
        v31 = ResolvedGradient.constantColor.getter();
        v33 = v42;
        v25 = v43;
        result = (*(v4 + 8))(v34, a2);
        if ((v25 & 0x100000000) != 0)
        {
          LODWORD(v33) = DWORD2(v58);
          v32 = HIDWORD(v58);
          LODWORD(v25) = *v59;
          v27 = *&v59[8];
          v28 = *&v59[24];
          v40 = v59[40];
          v41 = 96;
          goto LABEL_27;
        }
      }

      else
      {
        (v22)(v52, v25, a2);
        if (swift_dynamicCast())
        {
          v58 = v60;
          *v59 = v61;
          *&v59[16] = v62[0];
          *&v59[25] = *(v62 + 9);
          v35 = v60;
          v54 = v60;
          v55 = BYTE8(v60);
          v56 = HIDWORD(v60);
          v57 = v61;
          v31 = ResolvedGradient.constantColor.getter();
          v33 = v44;
          v25 = v45;
          result = (*(v4 + 8))(v34, a2);
          if ((v25 & 0x100000000) != 0)
          {
            LODWORD(v33) = DWORD2(v58);
            v32 = HIDWORD(v58);
            LODWORD(v25) = *v59;
            v27 = *&v59[8];
            v28 = *&v59[24];
            v40 = v59[40];
            v41 = 0x80;
            goto LABEL_27;
          }

          v46 = HIDWORD(v31);
          v47 = HIDWORD(v33);
          result = outlined destroy of EllipticalGradient._Paint(&v58);
LABEL_23:
          v29 = 0;
          v32 = v47;
          v30 = v46;
          goto LABEL_28;
        }

        (v22)(v51, v25, a2);
        if ((swift_dynamicCast() & 1) == 0)
        {
          result = (*(v4 + 8))(v25, a2);
          LODWORD(v25) = 0;
          LODWORD(v33) = 0;
          v32 = 0;
          LODWORD(v31) = 0;
          v30 = 0;
          v27 = 0uLL;
          v28 = 0uLL;
          v29 = -64;
          goto LABEL_28;
        }

        v58 = v60;
        *v59 = v61;
        *&v59[16] = v62[0];
        *&v59[25] = *(v62 + 9);
        v35 = v60;
        v54 = v60;
        v55 = BYTE8(v60);
        v56 = HIDWORD(v60);
        v57 = v61;
        v31 = ResolvedGradient.constantColor.getter();
        v33 = v48;
        v25 = v49;
        result = (*(v4 + 8))(v34, a2);
        if ((v25 & 0x100000000) != 0)
        {
          LODWORD(v33) = DWORD2(v58);
          v32 = HIDWORD(v58);
          LODWORD(v25) = *v59;
          v27 = *&v59[8];
          v28 = *&v59[24];
          v40 = v59[40];
          v41 = -96;
          goto LABEL_27;
        }
      }
    }

    v46 = HIDWORD(v31);
    v47 = HIDWORD(v33);
    result = outlined destroy of LinearGradient._Paint(&v58);
    goto LABEL_23;
  }

  result = (*(v4 + 8))(v25, a2);
  v29 = 0;
  LODWORD(v31) = v60;
  v30 = DWORD1(v60);
  LODWORD(v25) = 2143289344;
  LODWORD(v33) = DWORD2(v60);
  v32 = HIDWORD(v60);
LABEL_28:
  v50 = v53;
  *v53 = v31 | (v30 << 32);
  v50[1] = v33 | (v32 << 32);
  v50[2] = v25;
  *(v50 + 3) = v27;
  *(v50 + 5) = v28;
  *(v50 + 56) = v29;
  return result;
}

uint64_t initializeWithCopy for PaintType(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = *(a2 + 56);
  outlined copy of PaintType(*a2, v4, v5, v6, v7, v8, v9, v10);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return a1;
}

uint64_t contentLayerType(_:_:mayClip:)(__int128 *a1, _OWORD *a2, char a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[4];
  v6 = v4;
  v20 = a1[3];
  v21 = v5;
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v19 = v4;
  *&v24[9] = *(a2 + 41);
  v8 = a2[1];
  *v24 = a2[2];
  v9 = a2[1];
  v23[0] = *a2;
  v23[1] = v9;
  *(v26 + 9) = *(a2 + 41);
  v10 = a2[2];
  v25[1] = v8;
  v26[0] = v10;
  v25[0] = v23[0];
  v26[2] = v17;
  v26[3] = v3;
  v11 = a1[4];
  v26[5] = v20;
  v26[6] = v11;
  v22 = *(a1 + 80);
  v27 = *(a1 + 80);
  v26[4] = v6;
  if (v22 > 1u)
  {
    if (v22 == 2)
    {
      if (v24[24] >= 0x20u)
      {
        outlined copy of Path.Storage(v17, *(&v17 + 1), v18, *(&v18 + 1), v19);

        goto LABEL_17;
      }
    }

    else
    {
      v15 = vorrq_s8(v19, v20);
      if (!(v17 | *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | v21 | *(&v21 + 1) | *(&v17 + 1) | v18 | *(&v18 + 1)))
      {
        goto LABEL_16;
      }

      if (v24[24] >= 0x20u)
      {
        goto LABEL_17;
      }
    }

    outlined init with copy of ShapeType(&v17, v16);
    outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
    return type metadata accessor for ColorShapeLayer();
  }

  if (v22)
  {
    if (v24[24] > 0x1Fu)
    {
      goto LABEL_17;
    }

LABEL_16:
    outlined init with copy of PaintType(v23, v16);
    outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
    return type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer, 0x1E6979398);
  }

  v12 = v24[24] >> 5;
  if ((v12 - 1) >= 5)
  {
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_17:
    outlined init with copy of PaintType(v23, v16);
    outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
    return type metadata accessor for PaintShapeLayer();
  }

  outlined init with copy of PaintType(v23, v16);
  outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
  if (a3)
  {
    return type metadata accessor for GradientLayer();
  }

  else
  {
    return type metadata accessor for UnclippedGradientLayer();
  }
}

double outlined copy of PaintType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if ((a8 >> 5) - 1 <= 4)
  {
  }

  return result;
}

uint64_t outlined destroy of (ShapeType, ShapeType)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for (Path, FillStyle)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t initializeWithCopy for Path(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  return a1;
}

void DisplayList.ViewUpdater.Model.State.addClip(_:style:)(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a2 & 0x100;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(v2 + 32);
  v12 = *(v2 + 48);
  if ((*(v2 + 40) != 0.0 || *&v12 != 0.0) && (*&v11 != 0.0 || *(&v12 + 1) != 0.0))
  {
    v66 = *(v2 + 48);
    v67 = *(v2 + 32);
    v62 = *(a1 + 24);
    v63 = *(a1 + 32);
    v64 = *(a1 + 16);
    v65 = *a1;
    v24 = *(v2 + 64);
    v23 = *(v2 + 72);
    v27 = *(a1 + 16);
    *&v73.a = *a1;
    *&v73.c = v27;
    LOBYTE(v73.tx) = *(a1 + 32);
    v25 = &v73;
    v26 = v69;
    goto LABEL_15;
  }

  v13 = *(a1 + 16);
  v76.origin = *a1;
  v76.size = v13;
  v77 = *(a1 + 32);
  if (v77 > 1u)
  {
    if (v77 != 2)
    {
      if (v77 == 6 && !(*&v76.origin.y | *&v76.origin.x | *&v13.width | *&v13.height))
      {
        type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.ViewUpdater.Model.Clip>, &type metadata for DisplayList.ViewUpdater.Model.Clip, MEMORY[0x1E69E6F90]);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_18DDA6EB0;
        LOBYTE(v73.a) = 1;
        *(v2 + 32) = v6;
        *(v2 + 40) = v7;
        *(v2 + 48) = v8;
        *(v2 + 56) = v9;
        *(v2 + 64) = v10;
        *(v2 + 72) = 0u;
        *(v2 + 88) = 0u;
        *(v2 + 104) = 0u;
        *(v2 + 120) = 1;
        *(v2 + 121) = v4 & 1;
        *(v2 + 122) = HIBYTE(v5);

LABEL_35:
        *(v3 + 10) = v2;
        return;
      }

LABEL_13:
      v66 = v12;
      v67 = v11;
      v62 = v9;
      v63 = v10;
      v64 = v8;
      v65 = v6;
      v24 = *(v2 + 64);
      v23 = *(v2 + 72);
      v25 = &v76;
      v26 = &v73;
LABEL_15:
      outlined init with copy of Path.Storage(v25, v26);
      LOBYTE(v28) = 0;
LABEL_31:
      HIBYTE(v10) = HIBYTE(v5);
      v2 = *(v3 + 10);
      LOBYTE(v5) = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_42:
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
      }

      v48 = *(v2 + 16);
      v47 = *(v2 + 24);
      v50 = v66;
      v49 = v67;
      if (v48 >= v47 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v2);
        v50 = v66;
        v49 = v67;
        v2 = v60;
      }

      LOBYTE(v70) = v28;
      *(v2 + 16) = v48 + 1;
      v51 = v2 + 96 * v48;
      *(v51 + 32) = v65;
      *(v51 + 40) = v7;
      *(v51 + 48) = v64;
      *(v51 + 56) = v62;
      *(v51 + 64) = v63;
      v52 = *&v69[3];
      *(v51 + 65) = *v69;
      *(v51 + 68) = v52;
      *(v51 + 88) = v50;
      *(v51 + 72) = v49;
      *(v51 + 104) = v24;
      *(v51 + 112) = v23;
      *(v51 + 120) = v70;
      *(v51 + 121) = v5 & 1;
      *(v51 + 122) = HIBYTE(v10);
      goto LABEL_35;
    }

    v84 = *(*&v76.origin.x + 16);
    v33 = *(*&v76.origin.x + 48);
    v34 = *(*&v76.origin.x + 56);
    v2 = *(*&v76.origin.x + 64);
    v35 = v3[8];
    v36 = v3[9];
    v66 = v12;
    v67 = v11;
    *&v73.a = v11;
    *&v73.c = v12;
    v73.tx = v35;
    v73.ty = v36;
    v85 = CGRectApplyAffineTransform(v84, &v73);
    x = v85.origin.x;
    y = v85.origin.y;
    width = v85.size.width;
    height = v85.size.height;
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *&v73.a = v67;
      *&v73.c = v66;
      v73.tx = v35;
      v73.ty = v36;
      v80.width = v33;
      v80.height = v34;
      v41 = CGSizeApplyAffineTransform(v80, &v73);
      v33 = copysign(v41.width, v33);
      v34 = copysign(v41.height, v34);
    }

    v19 = swift_allocObject();
    v7 = 0;
    v20 = 0;
    v21 = 0;
    *(v19 + 16) = x;
    *(v19 + 24) = y;
    *(v19 + 32) = width;
    *(v19 + 40) = height;
    *(v19 + 48) = v33;
    *(v19 + 56) = v34;
    v22 = 2;
    *(v19 + 64) = v2;
  }

  else
  {
    if (v77)
    {
      if (v77 == 1)
      {
        *&v73.a = v11;
        *&v73.c = v12;
        *&v73.tx = *(v2 + 64);
        v81 = CGRectApplyAffineTransform(v76, &v73);
        v14 = v81.origin.x;
        v15 = v81.origin.y;
        v16 = v81.size.width;
        v17 = v81.size.height;
        if (!CGRectIsNull(v81))
        {
          v82.origin.x = v14;
          v82.origin.y = v15;
          v82.size.width = v16;
          v82.size.height = v17;
          IsInfinite = CGRectIsInfinite(v82);
          v19 = *&v14;
          v7 = *&v15;
          v20 = *&v16;
          v21 = *&v17;
          v22 = !IsInfinite;
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      goto LABEL_13;
    }

    *&v73.a = v11;
    *&v73.c = v12;
    *&v73.tx = *(v2 + 64);
    v83 = CGRectApplyAffineTransform(v76, &v73);
    v29 = v83.origin.x;
    v30 = v83.origin.y;
    v31 = v83.size.width;
    v32 = v83.size.height;
    if (CGRectIsNull(v83))
    {
LABEL_17:
      v19 = 0;
      v7 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 6;
      goto LABEL_23;
    }

    v22 = 0;
    v19 = *&v29;
    v7 = *&v30;
    v20 = *&v31;
    v21 = *&v32;
  }

LABEL_23:
  v64 = v20;
  v65 = v19;
  v78[0] = v19;
  v78[1] = v7;
  v78[2] = v20;
  v78[3] = v21;
  v62 = v21;
  v63 = v22;
  v79 = v22;
  v42 = *(v3 + 10);
  v28 = *(v42 + 2);
  if (!v28)
  {
LABEL_30:
    v24 = 0;
    v23 = 0;
    v66 = 0u;
    v67 = 0u;
    LOBYTE(v28) = 1;
    goto LABEL_31;
  }

  v24 = 0;
  v23 = 64;
  while (1)
  {
    if (v24 >= *(v42 + 2))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v42[v23 + 56])
    {
      break;
    }

LABEL_25:
    ++v24;
    v23 += 96;
    if (v28 == v24)
    {
      goto LABEL_30;
    }
  }

  v44 = *&v42[v23 + 16];
  v43 = *&v42[v23 + 32];
  v45 = *&v42[v23 + 43];
  *&v73.tx = *&v42[v23];
  v46 = *&v42[v23 - 16];
  *&v73.a = *&v42[v23 - 32];
  *&v73.c = v46;
  *(v75 + 11) = v45;
  v74 = v44;
  v75[0] = v43;
  v70 = *&v73.a;
  v71 = v46;
  tx_low = LOBYTE(v73.tx);
  outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v73, v69);
  v2 = &v70;
  if ((Path.intersectRoundedRects(_:)(v78) & 1) == 0)
  {
    outlined consume of Path.Storage(v70, *(&v70 + 1), v71, *(&v71 + 1), tx_low);
    goto LABEL_25;
  }

  v53 = v70;
  v61 = v71;
  v68 = tx_low;
  outlined copy of Path.Storage(v70, *(&v70 + 1), v71, *(&v71 + 1), tx_low);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
  }

  outlined consume of Path.Storage(v65, v7, v64, v62, v63);
  outlined consume of Path.Storage(v53, *(&v53 + 1), v61, *(&v61 + 1), v68);
  if (v24 >= *(v42 + 2))
  {
    __break(1u);
  }

  else
  {
    v54 = &v42[v23];
    v55 = *&v42[v23 - 32];
    v56 = *&v42[v23 - 24];
    v57 = *&v42[v23 - 16];
    v58 = *&v42[v23 - 8];
    *(v54 - 2) = v53;
    *(v54 - 1) = v61;
    v59 = v42[v23];
    *v54 = v68;
    outlined consume of Path.Storage(v55, v56, v57, v58, v59);
    *(v3 + 10) = v42;
  }
}

uint64_t visitPaint<A>(_:) in Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 48);
  v7 = *(v2 + 16);
  v22 = *(v2 + 32);
  v23 = v6;
  v8 = *(v2 + 48);
  v24 = *(v2 + 64);
  v9 = *(v2 + 16);
  v21[0] = *v2;
  v21[1] = v9;
  v17 = v22;
  v18 = v8;
  v19 = *(v2 + 64);
  v25 = *(v2 + 80);
  v20 = *(v2 + 80);
  v15 = v21[0];
  v16 = v7;
  (*(v10 + 16))(v5);
  outlined init with copy of ShapeType(v21, v28);
  PaintType.init<A>(_:)(v5, a2, v13);
  v11 = contentLayerType(_:_:mayClip:)(&v15, v13, *(v2 + 81));
  v26[0] = v13[0];
  v26[1] = v13[1];
  v27[0] = v14[0];
  *(v27 + 9) = *(v14 + 9);
  outlined destroy of PaintType(v26);
  v28[2] = v17;
  v28[3] = v18;
  v28[4] = v19;
  v29 = v20;
  v28[0] = v15;
  v28[1] = v16;
  result = outlined destroy of ShapeType(v28);
  *(v2 + 88) = v11;
  return result;
}

uint64_t initializeWithCopy for ShapeType(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = *(a2 + 80);
  outlined copy of ShapeType(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  return a1;
}

double outlined copy of ShapeType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 2)
  {
    outlined copy of Path.Storage(a1, a2, a3, a4, a5);
  }

  return result;
}

BOOL specialized DisplayList.Item.canMergeWithClipMask(state:)()
{
  v1 = v0[8];
  v2 = v1 >> 30;
  if (v1 >> 30 > 1)
  {
    if (v2 != 3)
    {
LABEL_41:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18D1361B0);
    }

    return 1;
  }

  v3 = v0[5];
  if (v2)
  {
    v6 = v0[6];
    switch(BYTE4(v6))
    {
      case 1:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 1);
        v7 = v3;
        v8 = v6;
        v9 = 1;
        goto LABEL_35;
      case 2:
        v11 = v0[5];
        v12 = v0[6];
        v13 = 2;
        goto LABEL_32;
      case 3:
        outlined copy of DisplayList.Item.Value(v0[5], v0[6], v0[7], v1);
        outlined consume of DisplayList.Effect(v3, v6, 3);

        return 0;
      case 4:
        v11 = v0[5];
        v12 = v0[6];
        v13 = 4;
        goto LABEL_32;
      case 5:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 5);
        v7 = v3;
        v8 = v6;
        v9 = 5;
        goto LABEL_35;
      case 6:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 6);
        v7 = v3;
        v8 = v6;
        v9 = 6;
        goto LABEL_35;
      case 7:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 7);
        outlined consume of DisplayList.Effect(v3, v6, 7);
        return 0;
      case 8:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 8);
        outlined consume of DisplayList.Effect(v3, v6, 8);
        return 0;
      case 9:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 9);
        v14 = *(v3 + 16);
        c = *(v3 + 32);
        if (*(v3 + 88) > 1u)
        {
          if (*(v3 + 88) == 2)
          {
            v18 = *(v3 + 24);
            angle = *(v3 + 16);
            CGAffineTransformMakeTranslation(&v22, *(&v14 + 1), *(v3 + 32));
            CGAffineTransformRotate(&v21, &v22, angle);
            v22 = v21;
            CGAffineTransformTranslate(&v21, &v22, -v18, -c);
            v14 = *&v21.a;
            c = v21.c;
            v17 = *&v21.d;
            ty = v21.ty;
            goto LABEL_39;
          }
        }

        else if (!*(v3 + 88))
        {
          ty = *(v3 + 56);
          v17 = *(v3 + 40);
LABEL_39:
          *&v22.a = v14;
          v22.c = c;
          *&v22.d = v17;
          v22.ty = ty;
          IsIdentity = CGAffineTransformIsIdentity(&v22);
          outlined consume of DisplayList.Effect(v3, v6, 9);
          return IsIdentity;
        }

        outlined consume of DisplayList.Effect(v3, v6, 9);
        return 0;
      case 0xA:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 10);
        v7 = v3;
        v8 = v6;
        v9 = 10;
        goto LABEL_35;
      case 0xB:
      case 0xD:
        goto LABEL_41;
      case 0xC:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 12);
        v7 = v3;
        v8 = v6;
        v9 = 12;
        goto LABEL_35;
      case 0xE:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 14);
        v7 = v3;
        v8 = v6;
        v9 = 14;
        goto LABEL_35;
      case 0xF:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 15);
        v7 = v3;
        v8 = v6;
        v9 = 15;
        goto LABEL_35;
      case 0x10:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 16);
        v7 = v3;
        v8 = v6;
        v9 = 16;
        goto LABEL_35;
      case 0x11:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 17);
        v7 = v3;
        v8 = v6;
        v9 = 17;
        goto LABEL_35;
      case 0x12:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 18);
        v7 = v3;
        v8 = v6;
        v9 = 18;
        goto LABEL_35;
      case 0x13:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 19);
        v7 = v3;
        v8 = v6;
        v9 = 19;
        goto LABEL_35;
      case 0x14:
        v11 = v0[5];
        v12 = v0[6];
        v13 = 20;
LABEL_32:
        outlined copy of DisplayList.Effect(v11, v12, v13);
        return 1;
      default:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 0);
        v7 = v3;
        v8 = v6;
        v9 = 0;
LABEL_35:
        outlined consume of DisplayList.Effect(v7, v8, v9);
        return 1;
    }
  }

  v4 = v3 >> 60;
  if ((v3 >> 60) - 8 < 3)
  {
    return 0;
  }

  if (v4 == 12)
  {
    v10 = 48;
    return *((v3 & 0xFFFFFFFFFFFFFFFLL) + v10) & 1;
  }

  if (v4 == 11)
  {
    v10 = 56;
    return *((v3 & 0xFFFFFFFFFFFFFFFLL) + v10) & 1;
  }

  return 1;
}

void __swiftcall DisplayList.ViewUpdater.Model.Clip.clipRect()(SwiftUI::FixedRoundedRect_optional *__return_ptr retstr)
{
  if ((*(v1 + 88) & 1) == 0)
  {
LABEL_8:
    retstr->value.rect.size = 0u;
    retstr->value.cornerSize = 0u;
    retstr->value.rect.origin = 0u;
    retstr->value.style = SwiftUI_RoundedCornerStyle_unknownDefault;
    return;
  }

  v2 = *v1;
  v3 = *(v1 + 32);
  if (v3 != 2)
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v3 == 1)
    {
      if (vabdd_f64(v4, v6) < 0.001)
      {
        retstr->value.rect.origin.x = v2;
        retstr->value.rect.origin.y = v5;
        retstr->value.rect.size.width = v4;
        retstr->value.rect.size.height = v6;
        retstr->value.cornerSize.width = v4 * 0.5;
        retstr->value.cornerSize.height = v4 * 0.5;
        retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
        return;
      }
    }

    else if (!*(v1 + 32))
    {
      retstr->value.rect.origin.x = v2;
      retstr->value.rect.origin.y = v5;
      retstr->value.rect.size.width = v4;
      retstr->value.rect.size.height = v6;
      retstr->value.cornerSize.width = 0.0;
      retstr->value.cornerSize.height = 0.0;
      retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
      return;
    }

    goto LABEL_8;
  }

  v7 = *(*&v2 + 64);
  v8 = *(*&v2 + 32);
  retstr->value.rect.origin = *(*&v2 + 16);
  retstr->value.rect.size = v8;
  retstr->value.cornerSize = *(*&v2 + 48);
  retstr->value.style = v7;
}

uint64_t DisplayList.Item.canMergeWithClipRect(_:state:)(CGRect *a1)
{
  v2 = *(v1 + 64);
  v3 = v2 >> 30;
  if (v2 >> 30 > 1)
  {
    if (v3 == 3)
    {
      return 1;
    }

    goto LABEL_32;
  }

  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v3)
  {
    if (BYTE4(v5) == 10)
    {
      outlined copy of DisplayList.Effect(*(v1 + 40), *(v1 + 48), 10);
      memmove(__dst, (v4 + 16), 0x7CuLL);
      if (_s7SwiftUI14GraphicsFilterOWOg(__dst) == 4)
      {
        _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
        outlined consume of DisplayList.Effect(v4, v5, 10);
        return 0;
      }

      v17 = v4;
      v18 = v5;
      LOBYTE(v19) = 10;
      goto LABEL_27;
    }

    if (BYTE4(v5) == 15)
    {
      outlined copy of DisplayList.Effect(*(v1 + 40), *(v1 + 48), 15);
      v17 = v4;
      v18 = v5;
      LOBYTE(v19) = 15;
LABEL_27:
      outlined consume of DisplayList.Effect(v17, v18, v19);
      return 1;
    }

    if (BYTE4(v5) != 11)
    {
      outlined copy of DisplayList.Effect(*(v1 + 40), *(v1 + 48), SBYTE4(v5));
      v17 = v4;
      v18 = v5;
      v19 = HIDWORD(v5);
      goto LABEL_27;
    }

LABEL_32:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  x = a1->origin.x;
  y = a1->origin.y;
  width = a1->size.width;
  height = a1->size.height;
  v11 = *v1;
  v10 = *(v1 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = v4 >> 60;
  v15 = *(v1 + 56);
  if ((v4 >> 60) > 7)
  {
    if (v14 < 10)
    {
      return 0;
    }

    if ((v14 - 10) < 3)
    {
      goto LABEL_25;
    }

    if (v14 == 13)
    {
    }

    goto LABEL_32;
  }

  if (v14 <= 3)
  {
    if (v14 >= 3)
    {
      if (vabdd_f64(v11, x) < 0.001 && vabdd_f64(v10, y) < 0.001 && vabdd_f64(v13, width) < 0.001)
      {
        return vabdd_f64(v12, height) < 0.001;
      }

      return 0;
    }

LABEL_25:
    outlined copy of DisplayList.Content.Value(*(v1 + 40));
    v22.origin.x = v11;
    v22.origin.y = v10;
    v22.size.width = v13;
    v22.size.height = v12;
    v23 = CGRectInset(v22, -0.001, -0.001);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v20 = CGRectContainsRect(v23, v25);
    outlined consume of DisplayList.Item.Value(v4, v5, v15, v2);
    return v20;
  }

  if ((v14 - 5) < 3)
  {
    goto LABEL_25;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
  {
    return 0;
  }

  v24.size.width = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v24.size.height = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v24.origin.x = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v24.origin.y = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  return CGRectContainsRect(v24, *a1);
}

uint64_t CoreViewSetClipsToBounds(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || a4)
  {
    if (a1)
    {
      a2 = [a2 layer];
    }

    return [a2 setMasksToBounds:{a3, a4}];
  }

  else
  {

    return [a2 setClipsToBounds:?];
  }
}

id static CALayerPlatformViewDefinition.makeLayerView(type:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setCoordinatedAnimationDelegate];
  [v3 setAnchorPoint_];
  if (v2 <= 0xE)
  {
    v4 = 1;
    if (((1 << v2) & 0x7801) != 0)
    {
      [v3 setAllowsGroupOpacity_];
      v4 = 0;
      v5 = &selRef_setAllowsGroupBlending_;
LABEL_6:
      [v3 *v5];
      return v3;
    }

    if (((1 << v2) & 0xE) != 0)
    {
      v5 = &selRef_setAllowsEdgeAntialiasing_;
      goto LABEL_6;
    }
  }

  return v3;
}

CGAffineTransform *DisplayList.ViewUpdater.Platform.updateShapeView(_:state:size:path:paint:style:contentsChanged:)(uint64_t a1, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5, __int16 a6, char a7)
{
  v101 = *(a4 + 8);
  v102 = *a4;
  v99 = *(a4 + 24);
  v100 = *(a4 + 16);
  v14 = *(a4 + 32);
  v15 = *v7;
  v16 = *(a1 + 16);
  ObjectType = swift_getObjectType();
  v18 = *a3;
  v19 = a3[1];
  v97 = *a2;
  v20 = *(*a2 + 24);
  v95 = type metadata accessor for ColorShapeLayer();
  v98 = v14;
  if (ObjectType != v95)
  {
    if (v14 > 2)
    {
      if (v14 == 5)
      {
        if (*(*&v102 + 16))
        {
          if (*(*&v102 + 16) == 1)
          {

            RBPathGetBoundingRect();
          }

          else
          {

            v25 = MEMORY[0x193AC3640](v31 + 24);
          }

          x = v25;
          y = v26;
          width = v27;
          height = v28;
          outlined destroy of Path(a4);
        }

        else
        {
          v29 = *(*&v102 + 24);
          if (!v29)
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          v30 = v29;

          PathBoundingBox = CGPathGetPathBoundingBox(v30);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;

          outlined destroy of Path(a4);
        }
      }

      else
      {
        if (v14 != 6)
        {
          goto LABEL_71;
        }

        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
      }
    }

    else if (v14 > 1)
    {
      x = *(*&v102 + 16);
      y = *(*&v102 + 24);
      width = *(*&v102 + 32);
      height = *(*&v102 + 40);
    }

    else
    {
      y = v101;
      x = v102;
      height = v99;
      width = v100;
    }

    v126.origin.x = x;
    v126.origin.y = y;
    v126.size.width = width;
    v126.size.height = height;
    if (CGRectIsNull(v126))
    {
      x = 0.0;
      y = 0.0;
      width = 0.0;
      height = 0.0;
    }

    if (ObjectType == type metadata accessor for PaintShapeLayer())
    {
      v32 = 1.0 / v20;
      v127.origin.x = x;
      v127.origin.y = y;
      v127.size.width = width;
      v127.size.height = height;
      v128 = CGRectStandardize(v127);
      v33 = v128.origin.x + v128.size.width;
      v34 = v128.origin.y + v128.size.height;
      v35 = v32 * 0.5;
      v36 = v32 * 0.5 + v128.origin.x;
      if (v32 != 1.0)
      {
        x = v32 * floor(v36 / v32);
        y = v32 * floor((v35 + v128.origin.y) / v32);
        width = v32 * round((v32 * floor((v35 + v33) / v32) - x) / v32);
        height = v32 * round((v32 * floor((v35 + v34) / v32) - y) / v32);
        if (a7)
        {
          goto LABEL_24;
        }

        goto LABEL_68;
      }

      x = floor(v36);
      y = floor(v35 + v128.origin.y);
      width = round(floor(v35 + v33) - x);
      height = round(floor(v35 + v34) - y);
    }

    if (a7)
    {
      goto LABEL_24;
    }

LABEL_68:
    v85 = *(a2 + 3);
    *&location.a = *(a2 + 2);
    *&location.c = v85;
    *&location.tx = *(a2 + 4);
    result = CGAffineTransformTranslate(&v103, &location, x, y);
    v87 = *&v103.c;
    v88 = *&v103.tx;
    *(a2 + 2) = *&v103.a;
    *(a2 + 3) = v87;
    *(a2 + 4) = v88;
    *a3 = width;
    a3[1] = height;
    return result;
  }

  x = 0.0;
  y = 0.0;
  width = v18;
  height = v19;
  if ((a7 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_24:
  v94 = v15;
  v92 = a3;
  v37 = *(v97 + 24);
  v38 = *(a2 + 9);
  v116 = *(a2 + 8);
  v117 = v38;
  v118 = *(a2 + 10);
  v119 = a2[22];
  v39 = *(a2 + 5);
  v112 = *(a2 + 4);
  v113 = v39;
  v40 = *(a2 + 7);
  v114 = *(a2 + 6);
  v115 = v40;
  v41 = *(a2 + 1);
  *&location.a = *a2;
  *&location.c = v41;
  v42 = *(a2 + 3);
  *&location.tx = *(a2 + 2);
  v111 = v42;
  v43 = DisplayList.ViewUpdater.Model.State.hasDODEffects.getter();
  v44 = *a4;
  v90 = *(a4 + 16);
  v91 = *(a4 + 8);
  v89 = *(a4 + 24);
  v93 = *(a4 + 32);
  *&location.a = v16;
  *&location.b = ObjectType;
  location.c = v102;
  location.d = v101;
  location.tx = v100;
  location.ty = v99;
  LOBYTE(v111) = v98;
  *(&v111 + 1) = x;
  *&v112 = y;
  *(&v112 + 1) = a5;
  *&v113 = -x;
  *(&v113 + 1) = -y;
  *&v114 = v18;
  *(&v114 + 1) = v19;
  LOWORD(v115) = a6 & 0x101;
  *(&v115 + 1) = v37;
  LOBYTE(v116) = (v43 & 1) == 0;
  v45 = *(*a5 + 152);
  outlined init with copy of Path(a4, &v103);
  v46 = v16;

  v45(&location, &type metadata for ShapeLayerHelper, &protocol witness table for ShapeLayerHelper);
  b = location.b;
  if (*&location.b == ObjectType)
  {
    v58 = v94 & 0xFFFFFFFFFFFFFFF8;
    v53 = v44;
LABEL_62:
    a3 = v92;
    if (y == 0.0)
    {
      v77.n128_f64[0] = outlined copy of Path.Storage(v53, v91, v90, v89, v93);
      v79 = *&v101;
      v78 = *&v102;
      v81 = *&v99;
      v80 = *&v100;
      v82 = v98;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v124, -y, -y);
      Path.applying(_:)(&v124.a, v120);
      v78 = v120[0];
      v79 = v120[1];
      v80 = v120[2];
      v81 = v120[3];
      v82 = v121;
    }

    v122[0] = v78;
    v122[1] = v79;
    v122[2] = v80;
    v122[3] = v81;
    v123 = v82;
    v83 = *(v58 + 128);
    v84 = v82;
    v83(v122, *(a1 + 8), v77);
    outlined consume of Path.Storage(v78, v79, v80, v81, v84);
    if ((*(a1 + 65) & 0x20) == 0)
    {
      *(a1 + 65) |= 0x20u;
    }

    v107 = v114;
    v108 = v115;
    v109 = v116;
    v103 = location;
    v104 = v111;
    v105 = v112;
    v106 = v113;
    outlined destroy of ShapeLayerHelper(&v103);
    goto LABEL_68;
  }

  v48 = *(a1 + 80);
  v105 = *(a1 + 64);
  v106 = v48;
  v49 = *(a1 + 112);
  v107 = *(a1 + 96);
  v108 = v49;
  v50 = *(a1 + 16);
  *&v103.a = *a1;
  *&v103.c = v50;
  v51 = *(a1 + 48);
  *&v103.tx = *(a1 + 32);
  v104 = v51;
  outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v103);
  if (*&b == v95)
  {
    x = 0.0;
    y = 0.0;
    v53 = v44;
LABEL_61:
    *(&v111 + 1) = x;
    *&v112 = y;
    *&v113 = -x;
    *(&v113 + 1) = -y;
    v58 = v94 & 0xFFFFFFFFFFFFFFF8;
    LOBYTE(v124.a) = 3;
    v71 = (*((v94 & 0xFFFFFFFFFFFFFFF8) + 104))(COERCE_CGFLOAT(*&b), &v124);
    swift_unknownObjectRetain_n();
    v72 = CoreViewLayer(v94 & 3, v71);
    v73 = v72;
    v74 = AGMakeUniqueID();
    *a1 = v94;
    *(a1 + 8) = v71;
    *(a1 + 16) = v73;
    *(a1 + 24) = v71;
    v75 = vdupq_n_s64(0x7FF0000000000000uLL);
    *(a1 + 32) = v75;
    *(a1 + 48) = v75;
    *(a1 + 64) = 3;
    *(a1 + 72) = v74;
    *(a1 + 80) = -1;
    *(a1 + 108) = 0;
    *(a1 + 112) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 120) = 0x7FF0000000000000;
    objc_storeStrong(&location, v72);
    v76 = *(**(&v112 + 1) + 152);

    v76(&location, &type metadata for ShapeLayerHelper, &protocol witness table for ShapeLayerHelper);
    swift_unknownObjectRelease();

    width = v18;
    height = v19;
    goto LABEL_62;
  }

  v52 = *(v97 + 24);
  v53 = v44;
  if (v93 <= 2)
  {
    if (v93 > 1)
    {
      v54 = v44[2];
      v55 = v44[3];
      v56 = v44[4];
      v57 = v44[5];
    }

    else
    {
      v54 = *&v44;
      v56 = *&v90;
      v55 = *&v91;
      v57 = *&v89;
    }

    goto LABEL_45;
  }

  if (v93 == 5)
  {
    if (*(v44 + 16))
    {
      if (*(v44 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v59 = MEMORY[0x193AC3640](v44 + 3);
      }

      v54 = v59;
      v55 = v60;
      v56 = v61;
      v57 = v62;
      goto LABEL_44;
    }

    v63 = *(v44 + 3);
    if (v63)
    {
      v64 = v63;

      v129 = CGPathGetPathBoundingBox(v64);
      v54 = v129.origin.x;
      v55 = v129.origin.y;
      v56 = v129.size.width;
      v57 = v129.size.height;

LABEL_44:
      outlined destroy of Path(a4);
LABEL_45:
      v130.origin.x = v54;
      v130.origin.y = v55;
      v130.size.width = v56;
      v130.size.height = v57;
      IsNull = CGRectIsNull(v130);
      if (IsNull)
      {
        x = 0.0;
      }

      else
      {
        x = v54;
      }

      if (IsNull)
      {
        y = 0.0;
      }

      else
      {
        y = v55;
      }

      if (IsNull)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v56;
      }

      if (IsNull)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v57;
      }

      if (*&b == type metadata accessor for PaintShapeLayer())
      {
        v131.size.width = v18;
        v66 = 1.0 / v52;
        v131.origin.x = x;
        v131.origin.y = y;
        v131.size.height = v19;
        v132 = CGRectStandardize(v131);
        v67 = v132.origin.x + v132.size.width;
        v68 = v132.origin.y + v132.size.height;
        v69 = 1.0 / v52 * 0.5;
        v70 = v69 + v132.origin.x;
        if (1.0 / v52 == 1.0)
        {
          x = floor(v70);
          y = floor(v69 + v132.origin.y);
          v18 = round(floor(v69 + v67) - x);
          v19 = round(floor(v69 + v68) - y);
        }

        else
        {
          x = v66 * floor(v70 / v66);
          y = v66 * floor((v69 + v132.origin.y) / v66);
          v18 = v66 * round((v66 * floor((v69 + v67) / v66) - x) / v66);
          v19 = v66 * round((v66 * floor((v69 + v68) / v66) - y) / v66);
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v93 == 6)
  {
    v54 = *MEMORY[0x1E695F050];
    v55 = *(MEMORY[0x1E695F050] + 8);
    v56 = *(MEMORY[0x1E695F050] + 16);
    v57 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_45;
  }

LABEL_71:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void CALayer.animateEDRProperty(_:interval:)(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 != 0.0)
  {
    if (one-time initialization token for v6 != -1)
    {
      swift_once();
    }

    v6 = static Semantics.v6;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      v7 = dyld_program_sdk_at_least();
      v8 = a2;
      v9 = a1;
      if ((v7 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v8 = a2;
      v9 = a1;
      if (static Semantics.forced < v6)
      {
        return;
      }
    }

    v10 = MEMORY[0x193ABEC20](v9, v8);
    v11 = [objc_opt_self() animationWithKeyPath_];

    v12 = v11;
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v12 setFromValue_];

    v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v12 setToValue_];

    [v12 setAdditive_];
    v15 = v12;
    [v15 setDuration_];
    [v15 setMass_];
    [v15 setStiffness_];
    [v15 setDamping_];
    [v15 setFillMode_];

    [v3 addAnimation:v15 forKey:0];
  }
}

uint64_t outlined consume of PaintType(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if ((a8 >> 5) - 1 <= 4)
  {
  }

  return v8;
}

uint64_t outlined consume of ShapeType(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 2)
  {
    outlined consume of Path.Storage(result, a2, a3, a4, a5);
  }

  return result;
}

void ShapeLayerHelper.visitPaint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v288 = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v233 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 16);
  v242 = *(v3 + 32);
  v243 = v10;
  v266 = v10;
  v267 = v242;
  v11 = *(v3 + 48);
  v268 = v11;
  v277[0] = v10;
  v277[1] = v242;
  v278 = v11;
  outlined init with copy of Path.Storage(v277, &v257);
  ShapeType.init(_:)(&v266, &v279);
  (*(v7 + 16))(v9, a1, a2);
  PaintType.init<A>(_:)(v9, a2, &v285);
  v259[0] = v281;
  v259[1] = v282;
  v260 = v283;
  LOBYTE(v261) = v284;
  v257 = v279;
  v258 = v280;
  *v271 = v285;
  *&v271[16] = v286;
  *&v271[32] = *v287;
  *&v271[41] = *&v287[9];
  v12 = *(v3 + 128);
  v13 = contentLayerType(_:_:mayClip:)(&v257, v271, *(v3 + 128));
  if (v13 != *(v3 + 8))
  {
    v14 = v13;
    outlined destroy of ShapeType(&v279);
    outlined destroy of PaintType(&v285);
    *(v3 + 8) = v14;
    return;
  }

  DWORD2(v236) = v11;
  v237 = v12;
  v239 = a2;
  v241 = a1;
  v15 = *v3;
  v16 = *(v3 + 113);
  [*v3 setAllowsEdgeAntialiasing_];
  v257 = v285;
  v258 = v286;
  v259[0] = *v287;
  *(v259 + 9) = *&v287[9];
  v262 = v281;
  v263 = v282;
  v264 = v283;
  v265 = v284;
  v260 = v279;
  v261 = v280;
  v17 = *&v281;
  v18 = BYTE8(v281);
  v240 = a3;
  if (v284 > 1u)
  {
    v238 = v15;
    v20 = v279;
    if (v284 == 2)
    {
      if (v287[24] <= 0x1Fu)
      {
        v250 = v285;
        LODWORD(v251) = v286;
        v255 = v279;
        v256[0] = v280;
        LOBYTE(v256[1]) = v281;
        *v271 = (*(&v281 + 9) << 8) | ((*(&v281 + 13) | (HIBYTE(v281) << 16)) << 40) | BYTE8(v281);
        *&v271[8] = v282;
        *&v271[24] = v283;
        v21 = *(&v280 + 1);
        v22 = v280;
        type metadata accessor for ColorShapeLayer();
        v23 = v238;
        v24 = swift_dynamicCastClassUnconditional();
        v25 = *(v3 + 56);
        v26 = *(v3 + 64);
        outlined copy of Path.Storage(v20, *(&v20 + 1), v22, v21, LOBYTE(v17));

        updateContent(shapeLayer:color:strokedPath:origin:style:)(v24, &v250, &v255, v271, v25, v26);
        outlined destroy of (ShapeType, ShapeType)(&v257, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
        v27 = v23;
LABEL_79:
        v32 = v27;
        v19 = v240;
        goto LABEL_80;
      }

      outlined copy of Path.Storage(v279, *(&v279 + 1), v280, *(&v280 + 1), v281);

      v19 = v240;
      v15 = v238;
    }

    else
    {
      v19 = v240;
      v15 = v238;
      if (!(v280 | *(&v279 + 1) | v279 | *(&v280 + 1) | v281 | v282 | *(&v282 + 1) | v283 | *(&v283 + 1) | (*(&v281 + 9) << 8) | ((*(&v281 + 13) | (HIBYTE(v281) << 16)) << 40) | BYTE8(v281)))
      {
        [v238 setBackgroundColor_];
        [v15 setBorderColor_];
        [v15 setContents_];
        outlined destroy of (ShapeType, ShapeType)(&v257, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
        return;
      }
    }

LABEL_20:
    *(&v256[1] + 9) = *&v287[9];
    v255 = v285;
    v256[0] = v286;
    v256[1] = *v287;
    v33 = v287[24] >> 5;
    if (v33 > 2)
    {
      LODWORD(v236) = v16;
      if (v287[24] >> 5 <= 4u)
      {
        if (v33 == 3)
        {
          BYTE8(v256[2]) &= 0x1Fu;
          if (!v284)
          {
            v34 = v255;
            v35 = BYTE8(v255);
            v36 = HIDWORD(v255);
            v37 = v256[0];
            v38 = v280;
            v39 = BYTE8(v281);
            v40 = *&v281;
            v41 = *(v3 + 112);
            v274 = *(v3 + 96);
            v275 = v41;
            v276 = *(v3 + 128);
            v42 = *(v3 + 48);
            *&v271[32] = *(v3 + 32);
            *&v271[48] = v42;
            v43 = *(v3 + 80);
            v272 = *(v3 + 64);
            v273 = v43;
            v44 = *(v3 + 16);
            *v271 = *v3;
            *&v271[16] = v44;
            v45 = v273;
            v46 = v274;
            v242 = *(&v256[1] + 8);
            v243 = *(v256 + 8);
            ShapeLayerHelper.gradientLayer()();
            v48 = v47;
            *&v269[16] = v242;
            *v269 = v243;
            v270 = 2;
            outlined init with copy of PaintType(&v285, &v250);
            v32 = v48;
            [v32 setCornerRadius_];
            v49 = MEMORY[0x1E69796E8];
            if ((v39 & 1) == 0)
            {
              v49 = MEMORY[0x1E69796E0];
            }

            v50 = *v49;
            [v32 setCornerCurve_];

            if ((v237 & 1) == 0)
            {
              [v32 setBounds_];
            }

            v51 = v241;
            if (one-time initialization token for v4 != -1)
            {
              swift_once();
            }

            v52 = static Semantics.v4;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C == 1)
            {
              if ((dyld_program_sdk_at_least() & 1) == 0)
              {
LABEL_110:
                specialized GradientLayer.GradientGeometry.init(size:function:bounds:)(v269, &v250, *&v38, *(&v38 + 1), *&v45, *(&v45 + 1), *&v46, *(&v46 + 1));
                [v32 setType_];
                [v32 setStartPoint_];
                [v32 setEndPoint_];
                v244 = v34;
                v245 = v35;
                v246 = v36;
                v247 = v37;
                specialized static GradientLayer.clippedValues(gradient:function:)(&v244, v269);
                v195 = v194;
                specialized _arrayForceCast<A, B>(_:)(v196);

                isa = Array._bridgeToObjectiveC()().super.isa;

                [v32 setColors_];

                type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
                v198 = Array._bridgeToObjectiveC()().super.isa;

                [v32 setLocations_];

                if (v195)
                {
                  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x1E69793D0);
                  v199.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v199.super.isa = 0;
                }

                v140 = v239;
                [v32 setInterpolations_];

                if (v35)
                {
                  if (v35 != 1)
                  {
                    v173 = _CGColorSpaceGetPerceptual(v224, v225);
                    v19 = v240;
                    goto LABEL_161;
                  }

                  v19 = v240;
                  if (one-time initialization token for srgbExtendedLinear != -1)
                  {
                    swift_once();
                  }

                  v226 = static Color.Resolved.srgbExtendedLinear;
                }

                else
                {
                  v19 = v240;
                  if (one-time initialization token for srgbExtended != -1)
                  {
                    swift_once();
                  }

                  v226 = static Color.Resolved.srgbExtended;
                }

                v173 = v226;
LABEL_161:
                [v32 setColorSpace_];
                outlined destroy of GradientLayer.GradientGeometry(&v250);

LABEL_166:
                outlined destroy of (ShapeType, ShapeType)(&v257, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
                outlined destroy of PaintType(&v285);
                goto LABEL_82;
              }
            }

            else if (static Semantics.forced < v52)
            {
              goto LABEL_110;
            }

            [v32 setPremultiplied_];
            goto LABEL_110;
          }

          goto LABEL_78;
        }

        BYTE8(v256[2]) &= 0x1Fu;
        if (v284)
        {
LABEL_78:
          outlined destroy of (ShapeType, ShapeType)(&v257, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
          type metadata accessor for PaintShapeLayer();
          v122 = swift_dynamicCastClassUnconditional();
          v123 = *(v3 + 56);
          v124 = *(v3 + 64);
          v125 = *(v3 + 72);
          v126 = *(v3 + 112);
          v127 = *(v3 + 120);
          v128 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path];
          v238 = v15;
          v129 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path];
          v130 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 8];
          v131 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 16];
          v132 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 24];
          v133 = *(v3 + 80);
          v242 = *(v3 + 96);
          v243 = v133;
          v134 = v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 32];
          v128[32] = v268;
          v135 = v267;
          *v128 = v266;
          *(v128 + 1) = v135;
          outlined init with copy of Path.Storage(v277, v271);
          outlined consume of Path.Storage(v129, v130, v131, v132, v134);
          v136 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin];
          *v136 = v123;
          v136[1] = v124;
          *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint] = v125;

          v137 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds];
          v138 = v242;
          *v137 = v243;
          v137[1] = v138;
          v139 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle];
          *v139 = v126;
          v139[1] = v236;

          [v122 setContentsScale_];
          [v122 setNeedsDisplay];
          v27 = v238;
          goto LABEL_79;
        }

        v146 = v255;
        v147 = BYTE8(v255);
        v148 = HIDWORD(v255);
        v149 = v256[0];
        v150 = *(&v256[0] + 1);
        v152 = v256[1];
        v151 = *&v256[2];
        *&v243 = *(&v280 + 1);
        v238 = *&v280;
        v153 = BYTE8(v281);
        *(&v236 + 1) = v281;
        v154 = *(v3 + 112);
        v274 = *(v3 + 96);
        v275 = v154;
        v276 = *(v3 + 128);
        v155 = *(v3 + 48);
        *&v271[32] = *(v3 + 32);
        *&v271[48] = v155;
        v156 = *(v3 + 80);
        v272 = *(v3 + 64);
        v273 = v156;
        v157 = *(v3 + 16);
        *v271 = *v3;
        *&v271[16] = v157;
        v158 = v273;
        v159 = v274;
        ShapeLayerHelper.gradientLayer()();
        v161 = v160;
        *&v242 = v150;
        *v269 = v150;
        *&v269[8] = v152;
        *&v269[24] = v151;
        v270 = 3;
        outlined init with copy of PaintType(&v285, &v250);
        v32 = v161;
        [v32 setCornerRadius_];
        v162 = MEMORY[0x1E69796E8];
        if ((v153 & 1) == 0)
        {
          v162 = MEMORY[0x1E69796E0];
        }

        v163 = *v162;
        [v32 setCornerCurve_];

        if ((v237 & 1) == 0)
        {
          [v32 setBounds_];
        }

        v51 = v241;
        if (one-time initialization token for v4 != -1)
        {
          swift_once();
        }

        v164 = static Semantics.v4;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_118:
            v211 = (*&v158 + *&v242 * *&v159) / *&v238;
            v212 = (*(&v158 + 1) + *&v152 * *(&v159 + 1)) / *&v243;
            if (*(&v152 + 1) > v151)
            {
              v213 = *(&v152 + 1);
            }

            else
            {
              v213 = v151;
            }

            v214 = (*&v158 + (*&v242 - v213) * *&v159) / *&v238;
            v215 = (*(&v158 + 1) + (*&v152 - v213) * *(&v159 + 1)) / *&v243;
            v173 = *MEMORY[0x1E6979DB0];
            [v32 setType_];
            [v32 setStartPoint_];
            [v32 setEndPoint_];
            *&v248 = v146;
            BYTE8(v248) = v147;
            HIDWORD(v248) = v148;
            LOBYTE(v249) = v149;
            specialized static GradientLayer.clippedValues(gradient:function:)(&v248, v269);
            v217 = v216;
            specialized _arrayForceCast<A, B>(_:)(v218);

            v219 = Array._bridgeToObjectiveC()().super.isa;

            [v32 setColors_];

            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
            v220 = Array._bridgeToObjectiveC()().super.isa;

            [v32 setLocations_];

            if (v217)
            {
              type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x1E69793D0);
              v221.super.isa = Array._bridgeToObjectiveC()().super.isa;
            }

            else
            {
              v221.super.isa = 0;
            }

            v140 = v239;
            v19 = v240;
            [v32 setInterpolations_];

            if (v147)
            {
              if (v147 == 1)
              {
                goto LABEL_146;
              }

LABEL_164:
              v230 = _CGColorSpaceGetPerceptual(v222, v223);
LABEL_165:
              v232 = v230;
              [v32 setColorSpace_];

              goto LABEL_166;
            }

LABEL_149:
            if (one-time initialization token for srgbExtended != -1)
            {
              swift_once();
            }

            v230 = static Color.Resolved.srgbExtended;
            goto LABEL_165;
          }
        }

        else if (static Semantics.forced < v164)
        {
          goto LABEL_118;
        }

        [v32 setPremultiplied_];
        goto LABEL_118;
      }

      if (v33 != 5)
      {
        goto LABEL_78;
      }

      BYTE8(v256[2]) &= 0x1Fu;
      if (v284)
      {
        goto LABEL_78;
      }

      *&v242 = *(&v280 + 1);
      *&v243 = v280;
      v71 = BYTE8(v281);
      v72 = *&v281;
      *v271 = v255;
      *&v271[16] = v256[0];
      *&v271[32] = v256[1];
      *&v271[41] = *(&v256[1] + 9);
      v74 = *(v3 + 80);
      v73 = *(v3 + 88);
      v76 = *(v3 + 96);
      v75 = *(v3 + 104);
      outlined init with copy of AngularGradient._Paint(&v255, &v250);
      v77.f64[0] = v74;
      v78.f64[0] = v76;
      ConicGradient.init(angular:bounds:)(v271, &v250, v77, v73, v78, v75);
      v79 = v250;
      v80 = BYTE8(v250);
      v81 = HIDWORD(v250);
      v82 = v251;
      v83 = v253;
      v84 = *(v3 + 112);
      v274 = *(v3 + 96);
      v275 = v84;
      v276 = *(v3 + 128);
      v85 = *(v3 + 48);
      *&v271[32] = *(v3 + 32);
      *&v271[48] = v85;
      v86 = *(v3 + 80);
      v272 = *(v3 + 64);
      v273 = v86;
      v87 = *(v3 + 16);
      *v271 = *v3;
      *&v271[16] = v87;
      ShapeLayerHelper.gradientLayer()();
      v89 = *(v256 + 1);
      v88 = *&v256[1];
      v250 = *(v256 + 8);
      v251 = *&v83;
      LOBYTE(v252) = 4;
      v32 = v90;

      [v32 setCornerRadius_];
      v91 = MEMORY[0x1E69796E8];
      if ((v71 & 1) == 0)
      {
        v91 = MEMORY[0x1E69796E0];
      }

      v92 = *v91;
      [v32 setCornerCurve_];

      if ((v237 & 1) == 0)
      {
        [v32 setBounds_];
      }

      if (one-time initialization token for v4 != -1)
      {
        swift_once();
      }

      v93 = static Semantics.v4;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
LABEL_114:
          v200 = v73 + v75 * v88;
          v201 = (v74 + v76 * v89) / *&v243;
          v202 = v200 / *&v242;
          v203 = *MEMORY[0x1E6979DA8];
          v204 = __sincos_stret(v83);
          [v32 setType_];
          [v32 setStartPoint_];
          [v32 setEndPoint_];
          *&v248 = v79;
          BYTE8(v248) = v80;
          HIDWORD(v248) = v81;
          LOBYTE(v249) = v82;
          specialized static GradientLayer.clippedValues(gradient:function:)(&v248, &v250);
          v206 = v205;
          specialized _arrayForceCast<A, B>(_:)(v207);

          v208 = Array._bridgeToObjectiveC()().super.isa;

          [v32 setColors_];

          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
          v209 = Array._bridgeToObjectiveC()().super.isa;

          [v32 setLocations_];

          if (v206)
          {
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x1E69793D0);
            v210.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v210.super.isa = 0;
          }

          v140 = v239;
          v19 = v240;
          [v32 setInterpolations_];

          if (v80)
          {
            if (v80 != 1)
            {
              v231 = _CGColorSpaceGetPerceptual(v227, v228);
              v51 = v241;
              goto LABEL_163;
            }

            v51 = v241;
            if (one-time initialization token for srgbExtendedLinear != -1)
            {
              swift_once();
            }

            v229 = static Color.Resolved.srgbExtendedLinear;
          }

          else
          {
            v51 = v241;
            if (one-time initialization token for srgbExtended != -1)
            {
              swift_once();
            }

            v229 = static Color.Resolved.srgbExtended;
          }

          v231 = v229;
LABEL_163:
          [v32 setColorSpace_];

          outlined destroy of (ShapeType, ShapeType)(&v257, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);

          goto LABEL_82;
        }
      }

      else if (static Semantics.forced < v93)
      {
        goto LABEL_114;
      }

      [v32 setPremultiplied_];
      goto LABEL_114;
    }

    v51 = v241;
    if (!v33)
    {
      v94 = v19;
      BYTE8(v256[2]) &= 0x1Fu;
      v248 = v255;
      v249 = v256[0];
      type metadata accessor for ColorShapeLayer();
      v95 = swift_dynamicCastClassUnconditional();
      v96 = *(v3 + 56);
      v97 = *(v3 + 64);
      v98 = *(v3 + 112);
      if (v96 == 0.0 && v97 == 0.0)
      {
        outlined init with copy of Path.Storage(v277, v271);
        v100 = v242;
        v99 = v243;
        v101 = BYTE8(v236);
      }

      else
      {
        CGAffineTransformMakeTranslation(v271, -v96, -v97);
        Path.applying(_:)(v271, v269);
        v100 = *&v269[16];
        v99 = *v269;
        v101 = v270;
      }

      v242 = v100;
      v243 = v99;
      v250 = v99;
      v251 = v100;
      LOBYTE(v252) = v101;
      v142 = Path.cgPath.getter();
      [v95 setPath_];

      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v143 = specialized ObjectCache.subscript.getter(&v248);
      [v95 setFillColor_];

      v144 = MEMORY[0x1E69797F8];
      if (!v98)
      {
        v144 = MEMORY[0x1E6979800];
      }

      v145 = *v144;
      [v95 setFillRule_];

      [v95 setStrokeColor_];
      outlined destroy of (ShapeType, ShapeType)(&v257, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
      v32 = v15;
      v19 = v94;
      goto LABEL_81;
    }

    LODWORD(v236) = v16;
    if (v33 == 1)
    {
      BYTE8(v256[2]) &= 0x1Fu;
      if (v284)
      {
        goto LABEL_78;
      }

      v53 = v255;
      v54 = BYTE8(v255);
      v55 = HIDWORD(v255);
      v56 = v256[0];
      v57 = *(v256 + 1);
      v59 = v256[1];
      v58 = *&v256[2];
      *&v242 = *(&v280 + 1);
      *&v243 = v280;
      v60 = BYTE8(v281);
      *&v234 = v281;
      v61 = *(v3 + 112);
      v274 = *(v3 + 96);
      v275 = v61;
      v276 = *(v3 + 128);
      v62 = *(v3 + 48);
      *&v271[32] = *(v3 + 32);
      *&v271[48] = v62;
      v63 = *(v3 + 80);
      v272 = *(v3 + 64);
      v273 = v63;
      v64 = *(v3 + 16);
      *v271 = *v3;
      *&v271[16] = v64;
      v65 = v273;
      v66 = v274;
      ShapeLayerHelper.gradientLayer()();
      v235 = v57;
      v236 = v59;
      *v269 = v57;
      *&v269[8] = v59;
      v238 = v58;
      *&v269[24] = v58;
      v270 = 0;
      v32 = v67;
      outlined init with copy of PaintType(&v285, &v250);
      [v32 setCornerRadius_];
      v68 = MEMORY[0x1E69796E8];
      if ((v60 & 1) == 0)
      {
        v68 = MEMORY[0x1E69796E0];
      }

      v69 = *v68;
      [v32 setCornerCurve_];

      if ((v237 & 1) == 0)
      {
        [v32 setBounds_];
      }

      v51 = v241;
      if (one-time initialization token for v4 != -1)
      {
        swift_once();
      }

      v70 = static Semantics.v4;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else if (static Semantics.forced < v70)
      {
LABEL_102:
        v165 = *MEMORY[0x1E6979DA0];
        v166 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(*&v65 + v235 * *&v66, *(&v65 + 1) + *&v236 * *(&v66 + 1), *&v65 + *(&v236 + 1) * *&v66, *(&v65 + 1) + *&v238 * *(&v66 + 1), *&v243, *&v242);
        v168 = v167;
        v170 = v169;
        v172 = v171;
        v173 = v165;
        [v32 setType_];
        [v32 setStartPoint_];
        [v32 setEndPoint_];
        *&v248 = v53;
        BYTE8(v248) = v54;
        HIDWORD(v248) = v55;
        LOBYTE(v249) = v56;
        specialized static GradientLayer.clippedValues(gradient:function:)(&v248, v269);
        v175 = v174;
        specialized _arrayForceCast<A, B>(_:)(v176);

        v177 = Array._bridgeToObjectiveC()().super.isa;

        [v32 setColors_];

        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        v178 = Array._bridgeToObjectiveC()().super.isa;

        [v32 setLocations_];

        if (v175)
        {
          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x1E69793D0);
          v179.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v179.super.isa = 0;
        }

        v140 = v239;
        v19 = v240;
        [v32 setInterpolations_];

        if (!v54)
        {
          goto LABEL_149;
        }

        if (v54 != 1)
        {
          goto LABEL_164;
        }

LABEL_146:
        if (one-time initialization token for srgbExtendedLinear != -1)
        {
          swift_once();
        }

        v230 = static Color.Resolved.srgbExtendedLinear;
        goto LABEL_165;
      }

      [v32 setPremultiplied_];
      goto LABEL_102;
    }

    BYTE8(v256[2]) &= 0x1Fu;
    if (v284)
    {
      goto LABEL_78;
    }

    v102 = v255;
    v103 = BYTE8(v255);
    v104 = HIDWORD(v255);
    v105 = v256[0];
    v106 = *(&v256[0] + 1);
    v108 = v256[1];
    v107 = *&v256[2];
    v238 = *(&v280 + 1);
    *&v242 = v280;
    v109 = BYTE8(v281);
    v110 = *&v281;
    v111 = *(v3 + 112);
    v274 = *(v3 + 96);
    v275 = v111;
    v276 = *(v3 + 128);
    v112 = *(v3 + 48);
    *&v271[32] = *(v3 + 32);
    *&v271[48] = v112;
    v113 = *(v3 + 80);
    v272 = *(v3 + 64);
    v273 = v113;
    v114 = *(v3 + 16);
    *v271 = *v3;
    *&v271[16] = v114;
    v115 = v273;
    v116 = *(&v274 + 1);
    *(&v236 + 1) = v274;
    ShapeLayerHelper.gradientLayer()();
    v118 = v117;
    *&v243 = v106;
    *v269 = v106;
    *&v269[8] = v108;
    *&v269[24] = v107;
    v270 = 1;
    outlined init with copy of PaintType(&v285, &v250);
    v32 = v118;
    [v32 setCornerRadius_];
    v119 = MEMORY[0x1E69796E8];
    if ((v109 & 1) == 0)
    {
      v119 = MEMORY[0x1E69796E0];
    }

    v120 = *v119;
    [v32 setCornerCurve_];

    if ((v237 & 1) == 0)
    {
      [v32 setBounds_];
    }

    v51 = v241;
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v121 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else if (static Semantics.forced < v121)
    {
LABEL_106:
      v180 = *MEMORY[0x1E6979DA0];
      v181 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(*&v243, *&v108, *(&v108 + 1), v107, *&v242, *&v238);
      v183 = v182;
      v185 = v184;
      v187 = v186;
      v173 = v180;
      [v32 setType_];
      [v32 setStartPoint_];
      [v32 setEndPoint_];
      *&v248 = v102;
      BYTE8(v248) = v103;
      HIDWORD(v248) = v104;
      LOBYTE(v249) = v105;
      specialized static GradientLayer.clippedValues(gradient:function:)(&v248, v269);
      v189 = v188;
      specialized _arrayForceCast<A, B>(_:)(v190);

      v191 = Array._bridgeToObjectiveC()().super.isa;

      [v32 setColors_];

      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v192 = Array._bridgeToObjectiveC()().super.isa;

      [v32 setLocations_];

      if (v189)
      {
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x1E69793D0);
        v193.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v193.super.isa = 0;
      }

      v140 = v239;
      v19 = v240;
      [v32 setInterpolations_];

      if (!v103)
      {
        goto LABEL_149;
      }

      if (v103 != 1)
      {
        goto LABEL_164;
      }

      goto LABEL_146;
    }

    [v32 setPremultiplied_];
    goto LABEL_106;
  }

  v19 = a3;
  if (v284)
  {
    if (v287[24] <= 0x1Fu)
    {
      v28 = *&v282;
      *v271 = v285;
      *&v271[16] = v286;
      [v15 setBackgroundColor_];
      [v15 setBorderWidth_];
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v29 = specialized ObjectCache.subscript.getter(v271);
      [v15 setBorderColor_];

      [v15 setContents_];
      [v15 setCornerRadius_];
      v30 = MEMORY[0x1E69796E8];
      if ((v18 & 1) == 0)
      {
        v30 = MEMORY[0x1E69796E0];
      }

      v31 = *v30;
      [v15 setCornerCurve_];

      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v287[24] > 0x1Fu)
  {
    goto LABEL_20;
  }

  *v271 = v285;
  *&v271[16] = v286;
  LOBYTE(v255) = BYTE8(v281) & 1;
  updateContent(layer:color:radius:style:)(v15, v271, &v255, *&v281);
LABEL_16:
  outlined destroy of (ShapeType, ShapeType)(&v257, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType);
  v32 = v15;
LABEL_80:
  v51 = v241;
LABEL_81:
  v140 = v239;
LABEL_82:
  v141 = (*(v19 + 72))(&v244, v140, v19);
  MEMORY[0x1EEE9AC00](v141);
  *(&v233 - 4) = v140;
  *(&v233 - 3) = v19;
  *(&v233 - 2) = v51;
  CALayer.updateEDR(allowedDynamicRange:contentHeadroom:)(&v244, partial apply for implicit closure #1 in ShapeLayerHelper.visitPaint<A>(_:));
  outlined destroy of ShapeType(&v279);
}

void CALayer.updateEDR(allowedDynamicRange:contentHeadroom:)(_BYTE *a1, void (*a2)(void))
{
  v3 = *a1;
  if (*a1)
  {
    a2();
    v5 = MEMORY[0x1E69792A8];
    v6 = MEMORY[0x1E6979298];
    if (v3 == 2)
    {
      v6 = MEMORY[0x1E69792A0];
    }

    if (v4 > 1.0)
    {
      v5 = v6;
    }

    v3 = v4 > 1.0;
  }

  else
  {
    v5 = MEMORY[0x1E69792A8];
  }

  v15 = *v5;
  [v2 contentsEDRStrength];
  v8 = v7;
  [v2 contentsCDRStrength];
  v10 = v9;
  [v2 setPreferredDynamicRange_];
  [v2 contentsEDRStrength];
  v12 = v11;
  [v2 contentsCDRStrength];
  v14 = v13;
  if (v12 == v8)
  {
    if (v13 == v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBC0, v12 - v8);
    if (v14 == v10)
    {
      goto LABEL_10;
    }
  }

  CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBE0, v14 - v10);
LABEL_10:
  [v2 setWantsExtendedDynamicRangeContent_];
}

double destroy for ShapeLayerHelper(uint64_t a1)
{
  outlined consume of Path.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));

  return result;
}

void RendererEffectDisplayList.value.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = v2[1];
  v39[0] = *v2;
  v39[1] = v5;
  v7 = *v2;
  v6 = v2[1];
  v40 = v2[2];
  v49 = v7;
  v50 = v6;
  v51 = v2[2];
  RendererEffectDisplayList.content.getter(v47);
  v8 = v47[0];
  v9 = MEMORY[0x1E69E7CC0];
  if (*&v47[0])
  {
    v10 = *&v47[0];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (*&v47[0])
  {
    v11 = WORD4(v47[0]);
  }

  else
  {
    v11 = 0;
  }

  v38 = v11;
  if (*(v10 + 16) || ((*(*(a1 + 24) + 48))() & 1) != 0)
  {
    v12 = ++static DisplayList.Version.lastValue;
    if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v36 = v12;
    v37 = a2;
    v35 = AGCreateWeakAttribute();
    v34 = AGCreateWeakAttribute();
    v13 = AGCreateWeakAttribute();
    v14 = AGCreateWeakAttribute();
    v15 = AGCreateWeakAttribute();
    v16 = AGCreateWeakAttribute();
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    if (((*(v18 + 40))(v17, v18) & 1) != 0 && (v38 & 0x200) != 0)
    {
      v19 = 0;
      v20 = 0;
      v53 = 0;
      v54 = 0;
      v21 = 20;
      v55 = 20;
      v23 = v10;
      v22 = v37;
      v24 = v36;
    }

    else
    {
      _threadGeometryProxyData();
      *&v49 = v35;
      *(&v49 + 1) = v34;
      *&v50 = v13;
      *(&v50 + 1) = v14;
      *&v51 = v15;
      *(&v51 + 1) = v16;
      v24 = v36;
      LODWORD(v52[0]) = v36;
      _setThreadGeometryProxyData();
      closure #1 in RendererEffectDisplayList.value.getter(v39, v17, v18);
      _setThreadGeometryProxyData();
      v20 = v53;
      v19 = v54;
      v21 = v55;
      v23 = v10;
      v22 = v37;
    }

    type metadata accessor for CGPoint(0);
    Value = AGGraphGetValue();
    v26 = *Value;
    v27 = Value[1];
    v28 = AGGraphGetValue();
    v29 = v26 - *v28;
    v30 = v27 - v28[1];
    v31 = 0x40000000;
    if (v8)
    {
      v31 = *(&v8 + 1) & 0xFFFFFFFF00000000 | 0x40000000;
    }

    v32 = v31 | v38;
    outlined copy of DisplayList.Effect(v20, v19, v21);
    v33 = AGGraphGetValue();
    *&v43 = v29;
    *(&v43 + 1) = v30;
    v44 = *v33;
    *v46 = v19 | (v21 << 32);
    *&v46[8] = v23;
    *&v46[16] = v32;
    *&v46[24] = v39[0];
    *&v45 = v24;
    *(&v45 + 1) = v20;
    LOBYTE(v49) = BYTE4(v40);
    DisplayList.Item.canonicalize(options:)(&v49);
    v47[2] = v45;
    v48[0] = *v46;
    *(v48 + 12) = *&v46[12];
    v47[0] = v43;
    v47[1] = v44;
    v41[2] = v45;
    v42[0] = *v46;
    *(v42 + 12) = *&v46[12];
    v41[0] = v43;
    v41[1] = v44;
    outlined init with copy of DisplayList.Item(v47, &v49);
    DisplayList.init(_:)(v41, v22);
    outlined consume of DisplayList.Effect(v20, v19, v21);
    v51 = v45;
    v52[0] = *v46;
    *(v52 + 12) = *&v46[12];
    v49 = v43;
    v50 = v44;
    outlined destroy of DisplayList.Item(&v49);
  }

  else
  {

    *a2 = v9;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
  }
}

void RendererEffectDisplayList.content.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a1 + 8) = *(Value + 8);
    *(a1 + 12) = v5;
  }

  *a1 = v3;
}

uint64_t closure #2 in ShapeStyledDisplayList.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = (*(a3 + 40))(a4, a2, a3, a5, a6);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = (*(v11 + 8))(v14, a2);
  a4[14] = v15;
  *(a4 + 15) = v17;
  *(a4 + 16) = v19;
  *(a4 + 17) = v21;
  return result;
}

uint64_t ShapeStyledDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v157 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v90 - v7;
  v10 = *(v9 + 48);
  Value = AGGraphGetValue();
  v13 = v12;
  (*(*(v5 - 8) + 16))(v8, Value, v5);
  v14 = (v13 & 1);
  *(v10 + v8) = v13 & 1;
  v15 = *(a1 + 80);
  v16 = *(v2 + 28);
  v17 = *(v2 + 40);
  v104 = a1;
  v105 = v5;
  v18 = *(*(a1 + 24) + 32);
  v107 = *(a1 + 24);
  v19 = v18(v2 + v15, v16, v17, v5);
  if (v19)
  {
    *(v10 + v8) = 1;
  }

  else if ((v13 & 1) == 0 && *(v2 + *(v104 + 84)))
  {
    v14 = &v90;
    v135 = 0;
    v145[0] = *(v2 + 28);
    LODWORD(v145[1]) = *(v2 + 12);
    MEMORY[0x1EEE9AC00](v19);
    v20 = v107;
    *(&v90 - 4) = v105;
    *(&v90 - 3) = v20;
    *(&v90 - 2) = &v135;
    _sSay7SwiftUI13ViewResponderCGMaTm_1(255, &lazy cache variable for type metadata for Attribute<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E698D388]);
    v10 = v21;
    type metadata accessor for Attribute();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v145, partial apply for closure #1 in ShapeStyledDisplayList.updateValue(), (&v90 - 6), TupleTypeMetadata3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v23);
    v24 = ++static DisplayList.Version.lastValue;
    if (v135 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v135 = 1;
  v24 = ++static DisplayList.Version.lastValue;
LABEL_8:
  v25 = (2 * ((33 * (v24 >> 16)) ^ v24)) | 1;
  if (!v24)
  {
    LOWORD(v25) = 0;
  }

  *(v2 + *(v104 + 84)) = v25;
LABEL_11:
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v31 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_24:
    v82 = v27;
    v83 = v28;
    v84 = v29;
    v85 = v30;
    swift_once();
    v30 = v85;
    v29 = v84;
    v28 = v83;
    v27 = v82;
    goto LABEL_22;
  }

  v106 = v24;
  v103 = v8;
  v91 = TupleTypeMetadata2;
  v32 = AGCreateWeakAttribute();
  v101 = HIDWORD(v32);
  v102 = v32;
  v33 = AGCreateWeakAttribute();
  v99 = HIDWORD(v33);
  v100 = v33;
  v34 = AGCreateWeakAttribute();
  v97 = HIDWORD(v34);
  v98 = v34;
  v35 = AGCreateWeakAttribute();
  v95 = HIDWORD(v35);
  v96 = v35;
  v36 = AGCreateWeakAttribute();
  v94 = HIDWORD(v36);
  v37 = AGCreateWeakAttribute();
  v38 = v37;
  v93 = HIDWORD(v37);
  type metadata accessor for CGPoint(0);
  v39 = AGGraphGetValue();
  v40 = *v39;
  v41 = v39[1];
  v42 = AGGraphGetValue();
  v43 = *v42;
  v44 = v42[1];
  v45 = v107;
  v46 = v105;
  if (((*(v107 + 24))(v105, v107) & 1) == 0)
  {
    type metadata accessor for CGSize(0);
  }

  v47 = AGGraphGetValue();
  v48 = v103;
  v49 = v106;
  v51 = *v47;
  v50 = v47[1];
  _threadGeometryProxyData();
  v122 = v102;
  v123 = v101;
  v124 = v100;
  v125 = v99;
  v126 = v98;
  v127 = v97;
  v128 = v96;
  v129 = v95;
  v130 = v36;
  v90 = v36;
  v131 = v94;
  v132 = v38;
  v133 = v93;
  v134 = v49;
  _setThreadGeometryProxyData();
  closure #2 in ShapeStyledDisplayList.updateValue()(v48, v46, v45, v156, v51, v50);
  v52 = v46;
  v14 = &v146;
  v10 = v136;
  v53 = v40 - v43;
  v54 = v41 - v44;
  _setThreadGeometryProxyData();
  v153[5] = v156[5];
  v153[6] = v156[6];
  v154 = v156[7];
  v155 = v156[8];
  v153[1] = v156[1];
  v153[2] = v156[2];
  v153[3] = v156[3];
  v153[4] = v156[4];
  v153[0] = v156[0];
  v55 = *v2;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0x20000000;
  v152 = 0;
  v146 = v55;
  v56 = *(v45 + 48);

  v57 = v56(v52, v45);
  v8 = v103;
  if (v57)
  {
    _threadGeometryProxyData();
    v109 = v102;
    v110 = v101;
    v111 = v100;
    v112 = v99;
    v113 = v98;
    v114 = v97;
    v115 = v96;
    v116 = v95;
    v117 = v90;
    v118 = v94;
    v119 = v38;
    v120 = v93;
    v121 = v106;
    _setThreadGeometryProxyData();
    v58 = v105;
    closure #3 in ShapeStyledDisplayList.updateValue()(v8, v105, v107, v139, v51, v50);
    _setThreadGeometryProxyData();
    v136[5] = v140;
    v136[6] = v141;
    v137 = v142;
    v138 = v143;
    v136[1] = v139[1];
    v136[2] = v139[2];
    v136[3] = v139[3];
    v136[4] = v139[4];
    v136[0] = v139[0];
    if (DWORD2(v141) >> 29 != 5 || DWORD2(v141) != -1610612736 || (v59 = vorrq_s8(vorrq_s8(vorrq_s8(*(&v136[2] + 8), *(&v136[4] + 8)), vorrq_s8(*(&v136[3] + 8), *(&v136[5] + 8))), vorrq_s8(*(v136 + 8), *(&v136[1] + 8))), *&vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL)) | *&v136[0]))
    {
      v60 = v137;
      v61 = v138;
      outlined init with copy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v136, v145);
      v158.origin = v60;
      v158.size = v61;
      v159 = CGRectOffset(v158, v53, v54);
      v62 = *(v2 + 8);
      v63 = *(v2 + *(v104 + 84));
      v64 = *(v2 + 48);
      v65 = *(v2 + 40);
      *&v144[9] = 0;
      DWORD2(v144[9]) = 0;
      if (one-time initialization token for normal != -1)
      {
        x = v159.origin.x;
        y = v159.origin.y;
        width = v159.size.width;
        height = v159.size.height;
        swift_once();
        v159.size.height = height;
        v159.size.width = width;
        v159.origin.y = y;
        v159.origin.x = x;
      }

      v102 = &v90;
      v144[3] = v136[3];
      v144[4] = v136[4];
      v144[5] = v136[5];
      *(&v144[5] + 12) = *(&v136[5] + 12);
      v144[0] = v136[0];
      v144[1] = v136[1];
      DWORD1(v144[16]) = 1065353216;
      *(&v144[15] + 1) = static GraphicsBlendMode.normal;
      LOBYTE(v144[16]) = byte_1ED52F818;
      BYTE8(v144[16]) = 0;
      v144[2] = v136[2];
      WORD6(v144[6]) = v63;
      *&v144[7] = v159.origin.x;
      *(&v144[7] + 1) = *&v159.origin.y;
      *&v144[8] = v159.size.width;
      *(&v144[8] + 1) = *&v159.size.height;
      *&v144[10] = v159.origin.x;
      *(&v144[10] + 1) = *&v159.origin.y;
      *&v144[11] = v159.size.width;
      *(&v144[11] + 1) = *&v159.size.height;
      v144[12] = v106;
      v144[13] = 0uLL;
      *&v144[14] = 3221225472;
      DWORD2(v144[14]) = v62;
      BYTE12(v144[14]) = v64;
      LODWORD(v144[15]) = v65;
      v108 = 1;
      MEMORY[0x1EEE9AC00](static GraphicsBlendMode.normal);
      v66 = v107;
      *(&v90 - 4) = v58;
      *(&v90 - 3) = v66;
      *(&v90 - 2) = v2;
      outlined copy of GraphicsBlendMode(v67, v68);
      _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(&v108, partial apply for implicit closure #2 in ShapeStyledDisplayList.updateValue(), (&v90 - 6), &v146);
      outlined destroy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v136);
      memcpy(v145, v144, 0x109uLL);
      outlined destroy of _ShapeStyle_RenderedShape(v145);
    }
  }

  v69 = v154;
  v70 = v155;
  outlined init with copy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v153, v145);
  v160.origin = v69;
  v160.size = v70;
  *&v27 = CGRectOffset(v160, v53, v54);
  LODWORD(v24) = *(v2 + 8);
  LOWORD(TupleTypeMetadata2) = *(v2 + *(v104 + 84));
  v4 = *(v2 + 48);
  v31 = *(v2 + 40);
  *&v144[9] = 0;
  DWORD2(v144[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_24;
  }

LABEL_22:
  DWORD1(v144[16]) = 1065353216;
  *(&v144[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(v144[16]) = byte_1ED52F818;
  BYTE8(v144[16]) = 0;
  v71 = *(v14 + 17);
  v72 = *(v14 + 21);
  v144[4] = *(v14 + 19);
  v144[5] = v72;
  *(&v144[5] + 12) = *(v14 + 180);
  v73 = *(v14 + 13);
  v144[0] = *(v14 + 11);
  v144[1] = v73;
  v144[2] = *(v14 + 15);
  v144[3] = v71;
  WORD6(v144[6]) = TupleTypeMetadata2;
  *&v144[7] = v27;
  *(&v144[7] + 1) = v28;
  *&v144[8] = v29;
  *(&v144[8] + 1) = v30;
  *&v144[10] = v27;
  *(&v144[10] + 1) = v28;
  *&v144[11] = v29;
  *(&v144[11] + 1) = v30;
  v144[12] = v106;
  v144[13] = 0uLL;
  *&v144[14] = 3221225472;
  DWORD2(v144[14]) = v24;
  BYTE12(v144[14]) = v4;
  LODWORD(v144[15]) = v31;
  LOBYTE(v145[0]) = 0;
  MEMORY[0x1EEE9AC00](static GraphicsBlendMode.normal);
  v74 = v107;
  *(&v90 - 4) = v105;
  *(&v90 - 3) = v74;
  *(&v90 - 2) = v2;
  outlined copy of GraphicsBlendMode(v75, v76);
  _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(v145, partial apply for implicit closure #3 in ShapeStyledDisplayList.updateValue(), (&v90 - 6), &v146);
  LOBYTE(v145[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(v144, v145, v136);
  v77 = WORD4(v136[0]);
  v78 = HIDWORD(v136[0]);
  *(v10 + 18) = *&v136[0];
  WORD4(v139[0]) = v77;
  HIDWORD(v139[0]) = v78;
  AGGraphSetOutputValue();
  outlined destroy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v153);
  memcpy(v145, v144, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(v145);

  v79 = *(v14 + 3);
  v10[11] = *(v14 + 2);
  v10[12] = v79;
  v10[13] = *(v14 + 4);
  LODWORD(v140) = v152;
  v80 = *(v14 + 1);
  v10[9] = *v14;
  v10[10] = v80;
  outlined destroy of _ShapeStyle_RenderedLayers(v139);
  return (*(v92 + 8))(v8, v91);
}

uint64_t outlined init with copy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t implicit closure #2 in ShapeStyledDisplayList.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = type metadata accessor for ShapeStyledDisplayList(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(v8 + 16))(&v14 - v10, a1, v7, v9);
  *a5 = *AGGraphGetValue();
  v12 = *(v8 + 8);

  return v12(v11, v7);
}

uint64_t outlined destroy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(uint64_t a1)
{
  type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D2>)
{
  (*(a2 + 24))(v20);
  v17 = v20[0];
  v18 = v20[1];
  v8 = v21;
  (*(a2 + 40))(v22, a1, a2);
  v9 = v22[0];
  if (LOBYTE(v22[0]) == 2 || !_threadGeometryProxyData())
  {
    goto LABEL_13;
  }

  specialized static Update.begin()();
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v11 = *InputValue;
    v14 = *(InputValue + 8);

    static Update.end()();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v11);
    if (v15)
    {
      v12 = *(v15 + 72);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_11;
  }

  EnvironmentValues.init()(&v24);
  v11 = v24;
  v10 = v25;
  static Update.end()();
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_5:

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v11, &v19);

  v12 = v19;
LABEL_11:
  if (v12 == (v9 & 1))
  {
    v24 = 0xBFF0000000000000;
    v25 = 0;
    v26 = 0;
    v27 = 0x3FF0000000000000;
    v28 = a4;
    v29 = 0;
    Path.applying(_:)(&v24, v22);
    v17 = v22[0];
    v18 = v22[1];
    v8 = v23;
    outlined destroy of Path(v20);
  }

LABEL_13:
  result = v17;
  *a3 = v17;
  *(a3 + 16) = v18;
  *(a3 + 32) = v8;
  return result;
}

void _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *a1;
  v8 = v4[1];
  v58 = *v4;
  v59 = v8;
  v9 = v4[3];
  v60 = v4[2];
  v61 = v9;
  v10 = v4[5];
  v62 = v4[4];
  v63[0] = v10;
  v11 = *(v4 + 92);
  *(v63 + 12) = v11;
  v12 = v58;
  v13 = v59;
  v14 = HIDWORD(v11) >> 29;
  if (HIDWORD(v11) >> 29 == 2)
  {
    v16 = a2;
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v58, &v51);

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v33 = v12;
      LOBYTE(v34) = v13 & 1;
      v16(v41);
      v32 = v41[0];
      LOBYTE(v51) = v7;
      _ShapeStyle_Pack.subscript.getter(&v51, 0, &v43);

      v31 = v7;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v33, &v43, &v31);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v58);
      v55 = v47;
      v56[0] = v48;
      v56[1] = v49;
      v57 = v50;
      v51 = v43;
      v52 = v44;
      v53 = v45;
      v54 = v46;
      outlined destroy of _ShapeStyle_Pack.Style(&v51);
    }

    else
    {
      v51 = v12;
      LOBYTE(v52) = v13 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v51);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v58);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v58);
  }

  else
  {
    v15 = *(&v60 + 1);
    if (v14 == 3)
    {
      if (v62)
      {
        v51 = v58;
        LOBYTE(v52) = v59;
        *(&v52 + 1) = *(&v59 + 1);
        BYTE7(v52) = (*(&v59 + 1) | ((*(&v59 + 5) | (BYTE7(v59) << 16)) << 32)) >> 48;
        *(&v52 + 5) = *(&v59 + 5);
        *(&v52 + 1) = *(&v59 + 1);
        v53 = v60;
        v54 = v61;
        LOBYTE(v55) = v62;
        *(&v55 + 1) = *(&v62 + 1);
        BYTE7(v55) = (*(&v62 + 1) | ((*(&v62 + 5) | (BYTE7(v62) << 16)) << 32)) >> 48;
        *(&v55 + 5) = *(&v62 + 5);
        *(&v55 + 1) = *(&v62 + 1);
        v56[0] = v63[0];
        *&v56[1] = *&v63[1];
        DWORD2(v56[1]) = HIDWORD(v11) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v51);
        return;
      }

      if (BYTE8(v58) != 2)
      {
        if (BYTE8(v58) == 255)
        {
          *(v56 + 12) = *(v4 + 92);
          v17 = v4[2];
          v54 = v4[3];
          v18 = v4[5];
          v55 = v4[4];
          v56[0] = v18;
          v19 = v4[1];
          v51 = *v4;
          v52 = v19;
          v53 = v17;
          DWORD2(v56[1]) &= 0x1FFFFFFFu;
          v20 = a2;
          outlined init with copy of GraphicsImage(&v51, &v43);
          a2 = v20;
        }

        goto LABEL_14;
      }

      v21 = *(v58 + 24);
      v22 = *(v58 + 32);
      v23 = *(v58 + 40);
      v24 = *(v58 + 44);
      v25 = *(v58 + 45);
      v26 = *(v58 + 48);
      *&v43 = *(v58 + 16);
      BYTE8(v43) = v21;
      *&v44 = v22;
      DWORD2(v44) = v23;
      BYTE12(v44) = v24;
      BYTE13(v44) = v25;
      *&v45 = v26;
      LOBYTE(v33) = v7;
      v27 = a2;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v58, &v51);
      v28 = v43;
      outlined copy of Image.Location(v22);
      v29 = v26;
      v27(&v51);
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v43, v15, &v33, &v51, a4, v30);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v58);

      outlined consume of Image.Location(v22);
    }

    else if (v14 != 5 || HIDWORD(v11) != -1610612736 || v59 | ((*(&v59 + 1) | ((*(&v59 + 5) | (BYTE7(v59) << 16)) << 32)) << 8) | v62 | ((*(&v62 + 1) | ((*(&v62 + 5) | (BYTE7(v62) << 16)) << 32)) << 8) | v58 | *(&v58 + 1) | *(&v59 + 1) | v60 | *(&v60 + 1) | v61 | *(&v61 + 1) | *(&v62 + 1) | *&v63[0] | *(&v63[0] + 1) | *&v63[1])
    {
LABEL_14:
      a2(&v33);
      v41[0] = v33;
      LOBYTE(v43) = v7;
      _ShapeStyle_Pack.subscript.getter(&v43, 0, &v51);

      v47 = v55;
      v48 = v56[0];
      v49 = v56[1];
      v50 = v57;
      v43 = v51;
      v44 = v52;
      v45 = v53;
      v46 = v54;
      v41[0] = v7;
      v41[1] = 0;
      v42 = 0;
      v37 = v55;
      v38 = v56[0];
      v39 = v56[1];
      v40 = v57;
      v33 = v51;
      v34 = v52;
      v35 = v53;
      v36 = v54;
      outlined init with copy of _ShapeStyle_Pack.Style(&v43, &v51);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v41, &v33, v5);
      v55 = v37;
      v56[0] = v38;
      v56[1] = v39;
      v51 = v33;
      v52 = v34;
      v53 = v35;
      v57 = v40;
      v54 = v36;
      outlined destroy of _ShapeStyle_Pack.Style?(&v51, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v37 = v47;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v33 = v43;
      v34 = v44;
      v35 = v45;
      v36 = v46;
      _ShapeStyle_RenderedShape.render(style:)(&v33);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(v5);
      outlined destroy of _ShapeStyle_Pack.Style(&v43);
    }
  }
}

double _ShapeView.shape(in:)(uint64_t a1, uint64_t a2, double a3)
{
  Shape.effectivePath(in:)(*(a2 + 16), *(a2 + 32), v14, a3);
  v6 = v15;
  v7 = (v3 + *(a2 + 56));
  v8 = *v7;
  LODWORD(v7) = v7[1];
  v9 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v9;
  v10 = v7 == 0;
  v11 = 0x10000;
  if (v10)
  {
    v11 = 0;
  }

  v10 = v8 == 0;
  v12 = 256;
  if (v10)
  {
    v12 = 0;
  }

  *(a1 + 32) = v12 | v6 | v11;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  return 0.0;
}

uint64_t ResolvedGradient.constantColor.getter()
{
  v1 = *v0;
  v2 = (*v0)[1].i64[0];
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 5;
  while (--v2)
  {
    v4 = *v3;
    v3 += 3;
    if ((vminv_u16(vmovn_s32(vceqq_f32(v4, v1[2]))) & 1) == 0)
    {
      return 0;
    }
  }

  return v1[2].i64[0];
}

BOOL specialized static _ShapeStyle_LayerID.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v7 != 3 || (v6 | v5) != 0)
      {
        goto LABEL_24;
      }

      outlined consume of _ShapeStyle_LayerID(*a1, v3, 3);
      v10 = 0;
      v11 = 0;
      v12 = 3;
LABEL_22:
      outlined consume of _ShapeStyle_LayerID(v10, v11, v12);
      return 1;
    }

    if (v7 != 2)
    {

      goto LABEL_24;
    }

    if (v3)
    {
      if (v6)
      {
        if (v2 == v5 && v3 == v6)
        {
          outlined copy of _ShapeStyle_LayerID(*a1, v3, 2);
          outlined copy of _ShapeStyle_LayerID(v2, v3, 2);
          outlined consume of _ShapeStyle_LayerID(v2, v3, 2);
          v10 = v2;
          v11 = v3;
          v12 = 2;
          goto LABEL_22;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of _ShapeStyle_LayerID(v5, v6, 2);
        outlined copy of _ShapeStyle_LayerID(v2, v3, 2);
        outlined consume of _ShapeStyle_LayerID(v2, v3, 2);
        outlined consume of _ShapeStyle_LayerID(v5, v6, 2);
        return (v17 & 1) != 0;
      }

      outlined copy of _ShapeStyle_LayerID(*a2, 0, 2);
      outlined copy of _ShapeStyle_LayerID(v5, 0, 2);
      outlined copy of _ShapeStyle_LayerID(v2, v3, 2);
      outlined consume of _ShapeStyle_LayerID(v2, v3, 2);
    }

    else
    {

      outlined copy of _ShapeStyle_LayerID(v5, v6, 2);
      outlined copy of _ShapeStyle_LayerID(v2, 0, 2);
      outlined consume of _ShapeStyle_LayerID(v2, 0, 2);
      outlined consume of _ShapeStyle_LayerID(v5, v6, 2);
      if (!v6)
      {
        return 1;
      }
    }

    v14 = v5;
    v15 = v6;
    v16 = 2;
    goto LABEL_25;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      outlined consume of _ShapeStyle_LayerID(*a1, v3, 1);
      outlined consume of _ShapeStyle_LayerID(v5, v6, 1);
      return v2 == v5;
    }

    goto LABEL_24;
  }

  if (*(a2 + 16))
  {
LABEL_24:
    outlined copy of _ShapeStyle_LayerID(v5, v6, v7);
    outlined consume of _ShapeStyle_LayerID(v2, v3, v4);
    v14 = v5;
    v15 = v6;
    v16 = v7;
LABEL_25:
    outlined consume of _ShapeStyle_LayerID(v14, v15, v16);
    return 0;
  }

  v8 = *a1;
  outlined consume of _ShapeStyle_LayerID(*a1, v3, 0);
  outlined consume of _ShapeStyle_LayerID(v5, v6, 0);
  return v8 == v5 && WORD1(v2) == WORD1(v5);
}

uint64_t outlined consume of _ShapeStyle_LayerID(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

id *DynamicViewList.Item.deinit()
{
  v1 = *(*v0 + 17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t _AnyResolvedPaint.__deallocating_deinit()
{
  (*(*(*(*v0 + 184) - 8) + 8))(v0 + *(*v0 + 200));

  return swift_deallocClassInstance();
}

uint64_t destroy for SDFStyle.Gradient(void *a1)
{
}

Swift::Void __swiftcall DynamicContainerInfo.destroy()()
{
  v2 = *(v1 + *(v0 + 48));
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AC03C0](v4, v2);
      if (*(v5 + 56))
      {
        goto LABEL_8;
      }

LABEL_9:
      swift_beginAccess();
      if (*(v5 + 84) == 3)
      {
        v6 = *(v5 + 16);
        AGSubgraphRef.willInvalidate(isInserted:)(0);

        AGSubgraphInvalidate();
      }

      ++v4;

      if (v3 == v4)
      {
        return;
      }
    }

    v5 = *(v2 + 8 * v4 + 32);

    if (!*(v5 + 56))
    {
      goto LABEL_9;
    }

LABEL_8:
    swift_weakAssign();
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t DynamicContainer._ItemInfo.__deallocating_deinit()
{
  DynamicContainer._ItemInfo.deinit();

  return swift_deallocClassInstance();
}

void sub_18D13B720(uint64_t result)
{
  if (*(result + 72))
  {
    specialized AnimatorState.removeListeners()();
  }
}

uint64_t PropertyList.Tracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t destroy for GlassContainer.Storage(void *a1)
{
}

uint64_t ModifiedViewList.ListModifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>)
  {
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();
    v5[0] = MEMORY[0x1E69E6448];
    v5[1] = &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData;
    v5[2] = &protocol witness table for Float;
    v5[3] = v2;
    v3 = type metadata accessor for AnimatablePair(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    }
  }
}

void lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  }
}

void lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
  }
}

void type metadata accessor for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>)
  {
    type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>(255);
    v3 = v2;
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, protocol conformance descriptor for AnimatablePair<A, B>);
    v6 = type metadata accessor for AnimatableArray(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    }
  }
}

void lazy protocol witness table accessor for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key);
  }
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, char a3, char a4)
{
  v7 = v4;
  v54 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v12 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v13 = (a3 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a4 & 1;
  v14 = swift_beginAccess();
  v15 = *(v7 + 144);
  v16 = *(v15 + 2);
  if (v16)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      *(v7 + 144) = v15;
    }

    if (v16 > *(v15 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v47[0]) = v16;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v15;
        swift_endAccess();
        if (v13)
        {
LABEL_47:
          v39 = *(v7 + 144);
          v40 = *(v39 + 16);
          if (v40)
          {
            v26 = *(v39 + 24 * v40 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v26 = 0;
          goto LABEL_50;
        }

        swift_beginAccess();
        if (*(v15 + 2))
        {
          specialized Array._customRemoveLast()(&v49);
          LODWORD(v15) = v50;
          v5 = v51;
          a1 = v49;
          if (v51)
          {
            v6 = HIDWORD(v50);
          }

          else
          {
            outlined consume of AsyncTransaction?(v49, v50, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v49);
            a1 = v49;
            LODWORD(v15) = v50;
            LODWORD(v6) = HIDWORD(v50);
            v5 = v51;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          v16 = *(v7 + 144);

          v35 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = v16;
          if (v35)
          {
LABEL_44:
            v37 = *(v16 + 16);
            v36 = *(v16 + 24);
            if (v37 >= v36 >> 1)
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v16);
            }

            *(v16 + 16) = v37 + 1;
            v38 = (v16 + 24 * v37);
            *(v38 + 4) = a1;
            *(v38 + 10) = v15;
            *(v38 + 11) = v6;
            *(v38 + 6) = v5;
            *(v7 + 144) = v16;
            swift_endAccess();

            goto LABEL_47;
          }

LABEL_56:
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          *(v7 + 144) = v16;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v5 = &v15[24 * v16];
    if (*(v5 + 4) == a2)
    {
      v18 = *(v5 + 1);
      if (v18)
      {
        if (a1)
        {
          v47[0] = MEMORY[0x1E69E7CC0];

          v19 = compareLists(_:_:ignoredTypes:)(v18, a1, v47);
          LODWORD(v6) = v47[0];

          if (v19)
          {
LABEL_15:
            specialized AsyncTransaction.append<A>(_:)();
            v16 = *(v5 + 5);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    v43 = a2;
    *(v7 + 144) = v15;
    swift_endAccess();
    if (!v13)
    {
      GraphHost.flushTransactions()();
    }
  }

  else
  {
    v43 = a2;
    if ((*(*v7 + 192))(v14))
    {
      v21 = v20;
      ObjectType = swift_getObjectType();
      (*(v21 + 32))(ObjectType, v21);
      swift_unknownObjectRelease();
    }
  }

  v52 = &type metadata for EmptyGraphMutation;
  v53 = &protocol witness table for EmptyGraphMutation;
  swift_beginAccess();
  v42 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v49, v47);
  v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(&v49);
  v27 = v48;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v29 = MEMORY[0x1EEE9AC00](v28);
  (*(v30 + 16))(v29);
  v45 = &type metadata for EmptyGraphMutation;
  v46 = &protocol witness table for EmptyGraphMutation;
  v23[2] = v26;
  outlined init with take of AnyTrackedValue(&v44, &v23[5 * v25 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v47);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v26 = (v42 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v49) = (v42 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v27 = *(v7 + 144);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v27;
    if (v31)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
  *(v7 + 144) = v27;
LABEL_39:
  v33 = *(v27 + 2);
  v32 = *(v27 + 3);
  if (v33 >= v32 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v27);
  }

  *(v27 + 2) = v33 + 1;
  v34 = &v27[24 * v33];
  *(v34 + 4) = a1;
  *(v34 + 10) = v43;
  *(v34 + 11) = v26;
  *(v34 + 6) = v23;
  *(v7 + 144) = v27;
  swift_endAccess();

LABEL_50:
  _MovableLockUnlock(v12);
  return v26;
}

unint64_t GraphHost.emptyTransaction(_:)(unint64_t a1)
{
  v2 = _threadTransactionID();

  return specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, v2, 1, 1);
}

void type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
    v5 = v4;
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v9[0] = &type metadata for _ShapeStyle_Pack.Fill.AnimatableData;
    v9[1] = v3;
    v9[2] = v5;
    v9[3] = v6;
    v7 = type metadata accessor for AnimatablePair(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>)
  {
    type metadata accessor for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>> and conformance AnimatableArray<A>, type metadata accessor for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, protocol conformance descriptor for AnimatableArray<A>);
    v7[0] = MEMORY[0x1E69E6448];
    v7[1] = v3;
    v7[2] = &protocol witness table for Float;
    v7[3] = v4;
    v5 = type metadata accessor for AnimatablePair(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
    }
  }
}

uint64_t one-time initialization function for caLayer()
{
  result = type metadata accessor for CALayerPlatformViewDefinition();
  static DisplayList.ViewUpdater.Platform.caLayer = result;
  return result;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(&v15, &type metadata for InvalidatingGraphMutation, &protocol witness table for InvalidatingGraphMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for InvalidatingGraphMutation;
    v14 = &protocol witness table for InvalidatingGraphMutation;
    *&v12 = a1;
    v4[2] = v11 + 1;
    result = outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(a1, &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation, &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(a1, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation;
    v14 = &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation;
    *&v12 = swift_allocObject();
    outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(v15, v12 + 16);
    v4[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    result = outlined destroy of LazyLayoutCacheItem.SingleItemPhaseMutation(v15);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v15 = a1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(&v15, &type metadata for RepeatMutation, &protocol witness table for RepeatMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for RepeatMutation;
    v14 = &protocol witness table for RepeatMutation;
    *&v12 = a1;
    v4[2] = v11 + 1;
    result = outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(a1, &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation, &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(a1, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation;
    v14 = &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation;
    *&v12 = swift_allocObject();
    outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(v15, v12 + 16);
    v4[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    result = outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation(v15);
    *(v2 + 16) = v4;
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ForegroundStyleKey(uint64_t *a1, uint64_t *a2)
{

  return sub_18D13C810(a1, a2);
}

uint64_t sub_18D13C810(uint64_t *a1, uint64_t *a2)
{

  return protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TintKey(a1, a2);
}

uint64_t DerivedValue.hasMatchingValue(in:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v3 + 24))(a1, v4, v3, v7);
  swift_getAssociatedConformanceWitness();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

double static DerivedEnvironmentPropertyKey.value(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = 0;
  v5 = *(a3 + 24);

  v5(v7, a2, a3);

  return result;
}

BOOL protocol witness for static DerivedEnvironmentKey.value(in:) in conformance ShouldRedactContentKey@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static ShouldRedactContentKey.value(in:)(a1);
  *a2 = result;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x193AC03C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x193AC03C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18D13CC70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  result = a2 == 2 && a1 == 2;
  if (v2 != 2)
  {
    v4 = ((a2 ^ v2) & 1) == 0;
    if (a2 == 2)
    {
      return result;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance LocaleKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), const char *a8)
{
  a5(0);
  lazy protocol witness table accessor for type AttributedString.LineHeight and conformance AttributedString.LineHeight(a6, a7, a8);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void lazy protocol witness table accessor for type AttributedString.LineHeight and conformance AttributedString.LineHeight(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v222 = *MEMORY[0x1E69E9840];
  v201 = type metadata accessor for OSSignpostID();
  v197 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v9 = (v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v181 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v199 = (v181 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v181 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v200 = v181 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v181 - v21;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  if (*(a4 + 40) != *AGGraphGetValue() >> 1)
  {
    specialized AnimatableAttributeHelper.reset()();
    *(a1 + 8) = 1;
LABEL_11:
    _ShapeStyle_Pack.animatableData.getter(&v208);
    v27 = *(a4 + 16);
    v28 = v208;
    if (!v27)
    {
      goto LABEL_126;
    }

    LODWORD(v194) = a3;
    v183 = v17;
    v29 = *(a4 + 24);
    v30 = v209;

    v195 = v27;
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVyAC16_ShapeStyle_PackV3KeyVAC0E4PairVyAI4FillO0E4DataOAMySfAC0eF0VyAMySfAI6EffectV4KindOAPOGGGG_G_Tt1g5(v28, v27) & 1) != 0 && ((v30 ^ v29) & 1) == 0)
    {

      goto LABEL_125;
    }

    v198 = v9;
    v181[0] = v12;
    v187 = v22;
    v185 = a1;
    AGGraphClearUpdate();
    v31 = *(a4 + 32);

    v32 = *AGGraphGetValue();

    v186 = v31;

    AGGraphSetUpdate();
    v33 = Transaction.effectiveAnimation.getter(v32);
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      if (!a2)
      {

        goto LABEL_124;
      }

      v34 = a2;
    }

    v204 = v28;
    v205 = v30;

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v204, v195, v29 & 1);
    v25 = *AGGraphGetValue();
    v35 = v204;
    v36 = v205;
    v184 = a4;
    v182 = v32;
    v181[1] = v34;
    if (v186)
    {

      LOBYTE(v210) = 0;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v34, v35, v36, v32, v194, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v38 = CurrentAttribute;
      v39 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v40) = 0;
      }

      else
      {
        LODWORD(v40) = CurrentAttribute;
      }

      (*(*v34 + 96))(&v216);
      v41 = v216;
      v22 = v217;
      v42 = v218;
      a1 = v219;
      v43 = v220;
      v44 = v221;
      v206 = 0x7FF8000000000000;
      v207 = 0x7FF8000000000000;
      v203 = 0x3FF0000000000000;
      v202 = 0x7FF8000000000000;
      v210 = v216;
      v211 = v217;
      v212 = v218;
      v213 = v219;
      v214 = v220;
      LOBYTE(v215) = v221;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v210, &v207, &v206, &v203, &v202);
      v45 = v206;
      v46 = v207;
      v47 = v203;
      v48 = v202;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_192;
      }

      goto LABEL_24;
    }

    v216 = &type metadata for _ShapeStyle_Pack;
    type metadata accessor for _ShapeStyle_Pack.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Type, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);

    v55 = swift_dynamicCast();
    if (v55)
    {
      v56 = v210;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = v211;
    }

    else
    {
      v57 = 0;
    }

    v183 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV3KeyVAA0V4PairVyAX4FillO0V4DataOA0_ySfAA0vW0VyA0_ySfAX6EffectV4KindOA3_OGGGGG_Tt4B5(v58, v35, v36, v32, v56, v57, v25);
    v59 = AGGraphGetCurrentAttribute();
    v60 = v59;
    v39 = *MEMORY[0x1E698D3F8];
    if (v59 == *MEMORY[0x1E698D3F8])
    {
      v61 = 0;
    }

    else
    {
      v61 = v59;
    }

    (*(*v34 + 96))(&v216);
    v62 = v216;
    v63 = v217;
    a4 = v218;
    v64 = v219;
    v65 = v220;
    v66 = v221;
    v206 = 0x7FF8000000000000;
    v207 = 0x7FF8000000000000;
    v203 = 0x3FF0000000000000;
    v202 = 0x7FF8000000000000;
    v210 = v216;
    v211 = v217;
    v212 = v218;
    v213 = v219;
    v214 = v220;
    LOBYTE(v215) = v221;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v210, &v207, &v206, &v203, &v202);
    v67 = v206;
    v68 = v207;
    v69 = v203;
    v70 = v202;
    if (one-time initialization token for enabledCategories != -1)
    {
      v199 = v207;
      v193 = v206;
      v196 = v203;
      v192 = v202;
      swift_once();
      v70 = v192;
      v69 = v196;
      v67 = v193;
      v68 = v199;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v71 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v199 = v65;
        v72 = *(v71 + 16);
        LODWORD(v210) = v61;
        BYTE4(v210) = v60 == v39;
        v211 = &type metadata for _ShapeStyle_Pack;
        v212 = v68;
        v213 = v67;
        v214 = v69;
        v215 = v70;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v73 = v72;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v62, v63, a4, v64, v199, v66);
      }

      else
      {
        outlined consume of Animation.Function(v62, v63, a4, v64, v65, v66);
      }

      v79 = one-time initialization token for animationState;
      v60 = v183;

      a4 = v184;
      if (v79 == -1)
      {
        goto LABEL_46;
      }
    }

    swift_once();
LABEL_46:
    a1 = *(&static Signpost.animationState + 1);
    v80 = static Signpost.animationState;
    LOBYTE(v81) = word_1ED5283E8;
    v82 = HIBYTE(word_1ED5283E8);
    v83 = byte_1ED5283EA;
    v84 = static os_signpost_type_t.begin.getter();
    v210 = v80;
    v211 = a1;
    LOBYTE(v212) = v81;
    BYTE1(v212) = v82;
    BYTE2(v212) = v83;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_122;
    }

    v85 = one-time initialization token for _signpostLog;

    if (v85 != -1)
    {
      goto LABEL_199;
    }

    goto LABEL_48;
  }

  if (*(a1 + 8) == 1)
  {
    goto LABEL_11;
  }

  v26 = *(a4 + 32);
  if (!v26)
  {
    return;
  }

  while (1)
  {

    _ShapeStyle_Pack.animatableData.getter(&v208);
    LOBYTE(v210) = 0;
    v147 = specialized AnimatorState.update(_:at:environment:)(&v208, a3, v25);
    v109 = AGGraphGetCurrentAttribute();
    v39 = *MEMORY[0x1E698D3F8];
    if (v109 == *MEMORY[0x1E698D3F8])
    {
      v106 = 0;
    }

    else
    {
      v106 = v109;
    }

    v86 = &type metadata instantiation cache for TupleTypeDescription;
    if (v147)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_185;
      }

      goto LABEL_132;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_187;
    }

LABEL_145:
    v159 = *(v86 + 616);
    if (*(v159 + 16) >= 0x43uLL)
    {
      if (*(v159 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v210) = v106;
        BYTE4(v210) = v109 == v39;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_180;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_137:
    v41 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    v44 = word_1ED5283E8;
    v42 = HIBYTE(word_1ED5283E8);
    v150 = byte_1ED5283EA;
    v151 = static os_signpost_type_t.end.getter();
    v210 = v40;
    v211 = v41;
    LOBYTE(v212) = v44;
    BYTE1(v212) = v42;
    BYTE2(v212) = v150;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_179;
    }

    LODWORD(v199) = v151;
    v152 = one-time initialization token for _signpostLog;
    v38 = v191;

    if (v152 != -1)
    {
      swift_once();
    }

    v184 = a4;
    v185 = a1;
    v43 = _signpostLog;
    v187 = v22;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v39)
    {
      break;
    }

    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    v198 = v46;
    v193 = v45;
    v196 = v47;
    v192 = v48;
    swift_once();
    v48 = v192;
    v47 = v196;
    v45 = v193;
    v46 = v198;
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v49 = v40;
        v50 = v43;
        v51 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          LODWORD(v198) = v44;
          v52 = *(v51 + 16);
          LODWORD(v210) = v49;
          BYTE4(v210) = v38 == v39;
          v211 = &type metadata for _ShapeStyle_Pack;
          v212 = v46;
          v213 = v45;
          v214 = v47;
          v215 = v48;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v196 = v53;

          v54 = v52;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v41, v22, v42, a1, v50, v198);

          goto LABEL_56;
        }

        v74 = v41;
        v75 = v22;
        v76 = v42;
        v77 = a1;
        v78 = v50;
      }

      else
      {
        v74 = v41;
        v75 = v22;
        v76 = v42;
        v77 = a1;
        v78 = v43;
      }

      outlined consume of Animation.Function(v74, v75, v76, v77, v78, v44);
LABEL_56:
      v94 = one-time initialization token for animationState;

      if (v94 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_194;
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_57:
    v81 = *(&static Signpost.animationState + 1);
    v80 = static Signpost.animationState;
    v95 = word_1ED5283E8;
    v82 = HIBYTE(word_1ED5283E8);
    v96 = byte_1ED5283EA;
    v84 = static os_signpost_type_t.event.getter();
    v210 = v80;
    v211 = v81;
    LOBYTE(v212) = v95;
    BYTE1(v212) = v82;
    BYTE2(v212) = v96;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_93:
      a4 = v184;
      goto LABEL_123;
    }

    v97 = one-time initialization token for _signpostLog;

    if (v97 != -1)
    {
      swift_once();
    }

    v98 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v39)
    {
      __break(1u);
    }

    else
    {
      v26 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v100 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v100;
      *(a1 + 32) = Counter;
      v101 = AGGraphGetCurrentAttribute();
      if (v101 != v39)
      {
        v102 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v102;
        *(a1 + 72) = v101;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 144) = v103;
        *(a1 + 112) = 0xD000000000000010;
        *(a1 + 120) = 0x800000018DD7EDB0;
        if (v82)
        {
          LOBYTE(v202) = v84;
          v206 = v98;
          v207 = &dword_18D018000;
          v210 = v80;
          v211 = v81;
          LOBYTE(v212) = v95;
          v216 = "Animation: (%p) [%d] %{public}@ updated";
          v217 = 39;
          LOBYTE(v218) = 2;
          v203 = a1;
          v104 = v183;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v202, &v207, &v206, &v210, v183, &v216, &v203);

          (*(v197 + 8))(v104, v201);
        }

        else
        {
          v105 = v80;
          if (v80 == 20)
          {
            v86 = 3;
          }

          else
          {
            v86 = 4;
          }

          v39 = bswap32(v80) | (4 * (v80 >> 16));
          v106 = v84;
          v107 = v197 + 16;
          v188 = *(v197 + 16);
          v108 = v188(v199, v183, v201);
          v22 = 0;
          LOBYTE(v216) = 1;
          v198 = v86;
          v192 = (16 * v86);
          v189 = v107;
          v193 = (v107 - 8);
          v191 = (a1 + 32);
          v190 = v105;
          do
          {
            v196 = v181;
            MEMORY[0x1EEE9AC00](v108);
            v111 = v181 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (v111 + 8);
            v112 = v198;
            v113 = v111 + 8;
            do
            {
              *(v113 - 1) = 0;
              *v113 = 0;
              v113 += 16;
              v112 = (v112 - 1);
            }

            while (v112);
            v114 = &v191[5 * v22];
            v115 = v198;
            while (1)
            {
              v116 = *(a1 + 16);
              if (v22 == v116)
              {
                break;
              }

              if (v22 >= v116)
              {
                goto LABEL_183;
              }

              ++v22;
              outlined init with copy of AnyTrackedValue(v114, &v210);
              v117 = v213;
              v26 = v214;
              v118 = __swift_project_boxed_opaque_existential_1(&v210, v213);
              v119 = v117;
              v86 = v118;
              *(a4 - 8) = CVarArg.kdebugValue(_:)(v39 | v106, v119, v26);
              *a4 = v120 & 1;
              a4 += 16;
              v109 = __swift_destroy_boxed_opaque_existential_1(&v210);
              v114 += 40;
              v115 = (v115 - 1);
              if (!v115)
              {
                goto LABEL_77;
              }
            }

            LOBYTE(v216) = 0;
LABEL_77:
            v121 = v190;
            if (v190 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v111[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v111[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v111[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v121 != 20 && v111[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v122 = *v193;
            v26 = v199;
            v86 = v201;
            (*v193)(v199, v201);
            v123 = __swift_project_value_buffer(v86, static OSSignpostID.continuation);
            v108 = v188(v26, v123, v86);
          }

          while ((v216 & 1) != 0);

          v124 = v201;
          v122(v199, v201);
          v122(v183, v124);
        }

        goto LABEL_93;
      }
    }

    __break(1u);
LABEL_199:
    swift_once();
LABEL_48:
    v86 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v39)
    {
      __break(1u);
LABEL_201:
      __break(1u);
    }

    v87 = AGGraphGetAttributeGraph();
    v88 = AGGraphGetCounter();

    v89 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v89;
    *(a4 + 32) = v88;
    v90 = AGGraphGetCurrentAttribute();
    if (v90 == v39)
    {
      goto LABEL_201;
    }

    v91 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v91;
    *(a4 + 72) = v90;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v92;
    *(a4 + 112) = 0xD000000000000010;
    *(a4 + 120) = 0x800000018DD7EDB0;
    if (v82)
    {
      LOBYTE(v202) = v84;
      v206 = v86;
      v207 = &dword_18D018000;
      v210 = v80;
      v211 = a1;
      LOBYTE(v212) = v81;
      v216 = "Animation: (%p) [%d] %{public}@ started";
      v217 = 39;
      LOBYTE(v218) = 2;
      v203 = a4;
      v93 = v181[0];
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v202, &v207, &v206, &v210, v181[0], &v216, &v203);
      v60 = v183;

      (*(v197 + 8))(v93, v201);
    }

    else
    {
      v125 = v80;
      if (v80 == 20)
      {
        a1 = 3;
      }

      else
      {
        a1 = 4;
      }

      v39 = bswap32(v80) | (4 * (v80 >> 16));
      v106 = v84;
      v126 = v197 + 16;
      v188 = *(v197 + 16);
      v127 = v188(v198, v181[0], v201);
      v22 = 0;
      LOBYTE(v216) = 1;
      v193 = (16 * a1);
      v189 = v126;
      v196 = (v126 - 8);
      v192 = (a4 + 32);
      v191 = v125;
      v190 = a1;
      do
      {
        v199 = v181;
        MEMORY[0x1EEE9AC00](v127);
        v129 = v181 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = (v129 + 8);
        v130 = a1;
        v131 = v129 + 8;
        do
        {
          *(v131 - 1) = 0;
          *v131 = 0;
          v131 += 16;
          --v130;
        }

        while (v130);
        v132 = v192 + 40 * v22;
        while (1)
        {
          v133 = *(a4 + 16);
          if (v22 == v133)
          {
            break;
          }

          if (v22 >= v133)
          {
            goto LABEL_184;
          }

          ++v22;
          outlined init with copy of AnyTrackedValue(v132, &v210);
          v134 = v213;
          v135 = v214;
          v136 = __swift_project_boxed_opaque_existential_1(&v210, v213);
          v137 = v134;
          v86 = v136;
          *(v26 - 1) = CVarArg.kdebugValue(_:)(v39 | v106, v137, v135);
          *v26 = v138 & 1;
          v26 += 2;
          v109 = __swift_destroy_boxed_opaque_existential_1(&v210);
          v132 += 40;
          if (!--a1)
          {
            goto LABEL_106;
          }
        }

        LOBYTE(v216) = 0;
LABEL_106:
        v139 = v191;
        if (v191 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        a1 = v190;
        if (v129[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v129[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v129[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v139 != 20 && v129[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v140 = *v196;
        v141 = v198;
        v86 = v201;
        (*v196)(v198, v201);
        v142 = __swift_project_value_buffer(v86, static OSSignpostID.continuation);
        v127 = v188(v141, v142, v86);
      }

      while ((v216 & 1) != 0);
      v143 = v183;

      v144 = v141;
      v60 = v143;
      v145 = v201;
      v140(v144, v201);
      v140(v181[0], v145);
    }

    a4 = v184;
LABEL_122:
    *(a4 + 32) = v60;
LABEL_123:
    specialized AnimatorState.addListeners(transaction:)(v182);

    v28 = v208;
LABEL_124:
    a1 = v185;
    v22 = v187;
LABEL_125:
    a3 = v194;
LABEL_126:

    v146 = v209;
    *(a4 + 16) = v28;
    *(a4 + 24) = v146;
    v26 = *(a4 + 32);
    if (!v26)
    {
      return;
    }
  }

  v22 = AGGraphGetAttributeGraph();
  v153 = AGGraphGetCounter();

  v154 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v154;
  *(a1 + 32) = v153;
  v155 = AGGraphGetCurrentAttribute();
  v38 = v199;
  if (v155 == v39)
  {
    goto LABEL_191;
  }

  v156 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v156;
  *(a1 + 72) = v155;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v157;
  *(a1 + 112) = 0xD000000000000010;
  *(a1 + 120) = 0x800000018DD7EDB0;
  v158 = v187;
  if (v42)
  {
    LOBYTE(v203) = v38;
    v204 = &dword_18D018000;
    v206 = a1;
    v207 = v43;
    v210 = v40;
    v211 = v41;
    LOBYTE(v212) = v44;
    v216 = "Animation: (%p) [%d] %{public}@ ended";
    v217 = 37;
    LOBYTE(v218) = 2;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v203, &v204, &v207, &v210, v187, &v216, &v206);

    (*(v197 + 8))(v158, v201);
    goto LABEL_178;
  }

  v160 = v40;
  if (v40 == 20)
  {
    v86 = 3;
  }

  else
  {
    v86 = 4;
  }

  v39 = bswap32(v40) | (4 * (v40 >> 16));
  v106 = v38;
  v161 = v197 + 16;
  v192 = *(v197 + 16);
  v162 = v192(v200, v187, v201);
  a4 = 0;
  LOBYTE(v216) = 1;
  v199 = v86;
  v195 = (16 * v86);
  v197 = v161;
  v196 = (v161 - 8);
  v194 = a1 + 32;
  v193 = v160;
  do
  {
    v198 = v181;
    MEMORY[0x1EEE9AC00](v162);
    v22 = v181 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = (v22 + 8);
    v164 = v199;
    v165 = (v22 + 8);
    do
    {
      *(v165 - 1) = 0;
      *v165 = 0;
      v165 += 16;
      --v164;
    }

    while (v164);
    v166 = v194 + 40 * a4;
    v167 = v199;
    while (1)
    {
      v168 = *(a1 + 16);
      if (a4 == v168)
      {
        break;
      }

      if (a4 >= v168)
      {
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        v179 = v109;
        swift_once();
        v109 = v179;
LABEL_132:
        v148 = *(v86 + 616);
        if (*(v148 + 16) >= 0x43uLL)
        {
          if (*(v148 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v210) = v106;
            BYTE4(v210) = v109 == v39;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v149 = one-time initialization token for animationState;
          v191 = v26;

          if (v149 != -1)
          {
            goto LABEL_189;
          }

          goto LABEL_137;
        }

        __break(1u);
LABEL_187:
        v180 = v109;
        swift_once();
        v109 = v180;
        goto LABEL_145;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v166, &v210);
      v169 = v213;
      v170 = v214;
      v171 = __swift_project_boxed_opaque_existential_1(&v210, v213);
      v172 = v169;
      v86 = v171;
      *(v26 - 1) = CVarArg.kdebugValue(_:)(v39 | v106, v172, v170);
      *v26 = v173 & 1;
      v26 += 2;
      v109 = __swift_destroy_boxed_opaque_existential_1(&v210);
      v166 += 40;
      if (!--v167)
      {
        goto LABEL_163;
      }
    }

    LOBYTE(v216) = 0;
LABEL_163:
    v174 = v193;
    if (v193 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(v22 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v174 != 20 && *(v22 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v175 = *v196;
    v176 = v200;
    v86 = v201;
    (*v196)(v200, v201);
    v177 = __swift_project_value_buffer(v86, static OSSignpostID.continuation);
    v162 = v192(v176, v177, v86);
  }

  while ((v216 & 1) != 0);

  v178 = v201;
  v175(v200, v201);
  v175(v187, v178);
LABEL_178:

  a1 = v185;
  a4 = v184;
LABEL_179:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_180:
  v210 = v208;
  LOBYTE(v211) = v209;

  _ShapeStyle_Pack.animatableData.setter(&v210);

  *(a1 + 8) = 1;
}