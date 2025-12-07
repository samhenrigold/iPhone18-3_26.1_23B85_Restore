uint64_t AnchorValueBox.deinit()
{
  v1 = *(*v0 + 152);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

void Material.ID.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      v5 = 10;
    }

    else if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          v5 = 6;
        }

        else
        {
          v5 = 7;
        }
      }

      else if (v3 == 4)
      {
        v5 = 4;
      }

      else
      {
        v5 = 5;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = v3 != 0;
    }

    MEMORY[0x193AC11A0](v5);
  }

  else if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](9);
    (*(*v3 + 176))(a1);
  }

  else
  {
    v4 = *(v3 + 48);
    MEMORY[0x193AC11A0](8);
    String.hash(into:)();
    String.hash(into:)();
    if (v4)
    {
      Hasher._combine(_:)(1u);
      v6 = v4;
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }
}

void *specialized GeometryEffectDisplayList.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] == a4)
  {
    v9 = 0;
    v10 = 0x40000000;
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_3:
      v29 = HIDWORD(a4);
      type metadata accessor for CGPoint(0);
      v28 = *AGGraphGetValue();
      v36 = vsubq_f64(v28, *AGGraphGetValue());
      Value = AGGraphGetValue();
      v13 = *Value;
      v14 = Value[1];
      v15 = Value[2];
      v16 = Value[3];
      type metadata accessor for CGSize(0);
      v17 = AGGraphGetValue();
      v18 = *v17;
      v19 = v17[1];
      v20 = AGGraphGetValue();
      _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA06_ScaleE0V_Tt4B5(&v36, *v20, v39, v13, v14, v15, v16, v18, v19);
      v21 = *&v39[0];
      v22 = DWORD2(v39[0]);
      v23 = BYTE12(v39[0]);
      v24 = v36;
      outlined copy of DisplayList.Effect(*&v39[0], SBYTE8(v39[0]), SBYTE12(v39[0]));
      v32 = v24;
      v25 = *AGGraphGetValue();
      ++static DisplayList.Version.lastValue;
      v33 = v25;
      *v35 = v22 | (v23 << 32);
      *&v35[8] = v11;
      *&v35[16] = v10 | v9;
      *&v35[24] = v6;
      *&v34 = static DisplayList.Version.lastValue;
      *(&v34 + 1) = v21;
      LOBYTE(v39[0]) = v29;
      DisplayList.Item.canonicalize(options:)(v39);
      v37[2] = v34;
      v38[0] = *v35;
      *(v38 + 12) = *&v35[12];
      v37[0] = v24;
      v37[1] = v33;
      v30[2] = v34;
      v31[0] = *v35;
      *(v31 + 12) = *&v35[12];
      v30[0] = v24;
      v30[1] = v33;
      outlined init with copy of DisplayList.Item(v37, v39);
      DisplayList.init(_:)(v30, a5);
      outlined consume of DisplayList.Effect(v21, v22, v23);
      v39[2] = v34;
      v40[0] = *v35;
      *(v40 + 12) = *&v35[12];
      v39[0] = v32;
      v39[1] = v33;
      return outlined destroy of DisplayList.Item(v39);
    }
  }

  else
  {
    v27 = AGGraphGetValue();
    v11 = *v27;
    v9 = *(v27 + 12) << 32;
    v10 = *(v27 + 8) | 0x40000000;

    if (*(v11 + 16))
    {
      goto LABEL_3;
    }
  }

  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 12) = 0;
  return result;
}

void *initializeWithCopy for _AnyAnimatableData(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[4];
  a1[4] = v3;
  (**(v3 - 8))(a1 + 1, a2 + 1);
  return a1;
}

void *specialized RendererEffectDisplayList.value.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v44 = v5;
  v45 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v42 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v41 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v39 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v43 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v40 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v57 = __PAIR64__(v42, v9);
  *(&v57 + 1) = __PAIR64__(v41, v11);
  *&v58 = __PAIR64__(v39, v13);
  *(&v58 + 1) = __PAIR64__(v16, v15);
  *&v59 = __PAIR64__(v19, v18);
  *(&v59 + 1) = __PAIR64__(v22, v21);
  LODWORD(v60[0]) = v40;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  LOBYTE(v22) = *(v23 + 8);
  AGGraphGetValue();
  v25 = swift_allocObject();
  *&v53[0] = v24;
  WORD4(v53[0]) = v22;
  _s7SwiftUI14GraphicsFilterOWOi_(v53);
  v26 = v53[5];
  v25[5] = v53[4];
  v25[6] = v26;
  v25[7] = v54[0];
  *(v25 + 124) = *(v54 + 12);
  v27 = v53[1];
  v25[1] = v53[0];
  v25[2] = v27;
  v28 = v53[3];
  v25[3] = v53[2];
  v25[4] = v28;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v49 = v33;
  *(&v49 + 1) = v34;
  v50 = *v35;
  *v52 = 0xA00000000;
  *&v52[8] = v43;
  *&v52[16] = v44 | v45;
  *&v52[24] = v36;
  *&v51 = v40;
  *(&v51 + 1) = v25;
  LOBYTE(v57) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v57);
  v55[2] = v51;
  v56[0] = *v52;
  *(v56 + 12) = *&v52[12];
  v55[0] = v49;
  v55[1] = v50;
  v47[2] = v51;
  v48[0] = *v52;
  *(v48 + 12) = *&v52[12];
  v47[0] = v49;
  v47[1] = v50;
  outlined init with copy of DisplayList.Item(v55, &v57);
  DisplayList.init(_:)(v47, a1);

  v59 = v51;
  v60[0] = *v52;
  *(v60 + 12) = *&v52[12];
  v57 = v49;
  v58 = v50;
  return outlined destroy of DisplayList.Item(&v57);
}

{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v49 = v5;
  v50 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v47 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v46 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v44 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v48 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v45 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v74 = __PAIR64__(v47, v9);
  *(&v74 + 1) = __PAIR64__(v46, v11);
  *&v75 = __PAIR64__(v44, v13);
  *(&v75 + 1) = __PAIR64__(v16, v15);
  *&v76 = __PAIR64__(v19, v18);
  *(&v76 + 1) = __PAIR64__(v22, v21);
  LODWORD(v77[0]) = v45;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = v23[3];
  v26 = *v23;
  v25 = v23[1];
  v60 = v23[2];
  v61 = v24;
  v58 = v26;
  v59 = v25;
  v28 = v23[5];
  v27 = v23[6];
  v29 = v23[4];
  *(v64 + 12) = *(v23 + 108);
  v63 = v28;
  v64[0] = v27;
  v62 = v29;
  outlined init with copy of VariableBlurStyle(&v58, &v65);
  AGGraphGetValue();
  v30 = swift_allocObject();
  v69 = v62;
  v70 = v63;
  v71[0] = v64[0];
  *(v71 + 12) = *(v64 + 12);
  v65 = v58;
  v66 = v59;
  v67 = v60;
  v68 = v61;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v65);
  v31 = v70;
  v30[5] = v69;
  v30[6] = v31;
  v30[7] = v71[0];
  *(v30 + 124) = *(v71 + 12);
  v32 = v66;
  v30[1] = v65;
  v30[2] = v32;
  v33 = v68;
  v30[3] = v67;
  v30[4] = v33;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = v34[1];
  v37 = AGGraphGetValue();
  v38 = v35 - *v37;
  v39 = v36 - v37[1];

  v40 = AGGraphGetValue();
  v41 = *v1;
  *&v54 = v38;
  *(&v54 + 1) = v39;
  v55 = *v40;
  *v57 = 0xA00000000;
  *&v57[8] = v48;
  *&v57[16] = v49 | v50;
  *&v57[24] = v41;
  *&v56 = v45;
  *(&v56 + 1) = v30;
  LOBYTE(v74) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v74);
  v72[2] = v56;
  v73[0] = *v57;
  *(v73 + 12) = *&v57[12];
  v72[0] = v54;
  v72[1] = v55;
  v52[2] = v56;
  v53[0] = *v57;
  *(v53 + 12) = *&v57[12];
  v52[0] = v54;
  v52[1] = v55;
  outlined init with copy of DisplayList.Item(v72, &v74);
  DisplayList.init(_:)(v52, a1);

  v76 = v56;
  v77[0] = *v57;
  *(v77 + 12) = *&v57[12];
  v74 = v54;
  v75 = v55;
  return outlined destroy of DisplayList.Item(&v74);
}

{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v40 = v5;
  v41 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v38 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v37 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v35 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v34 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v36 = v7;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v39 = v6;
  v20 = v19;
  v21 = HIDWORD(v19);
  _threadGeometryProxyData();
  *&v51 = __PAIR64__(v38, v9);
  *(&v51 + 1) = __PAIR64__(v37, v11);
  *&v52 = __PAIR64__(v35, v13);
  *(&v52 + 1) = __PAIR64__(v34, v15);
  *&v53 = __PAIR64__(v18, v17);
  *(&v53 + 1) = __PAIR64__(v21, v20);
  LODWORD(v54[0]) = v36;
  _setThreadGeometryProxyData();
  LOBYTE(v17) = *AGGraphGetValue();
  AGGraphGetValue();
  LOBYTE(v45) = v17;
  GraphicsBlendMode.init(_:)(&v45, v49);
  v22 = *&v49[0];
  v23 = BYTE8(v49[0]);
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  v27 = AGGraphGetValue();
  v28 = v25 - *v27;
  v29 = v26 - v27[1];
  outlined copy of GraphicsBlendMode(v22, v23);
  v30 = AGGraphGetValue();
  v31 = *v1;
  *&v45 = v28;
  *(&v45 + 1) = v29;
  v46 = *v30;
  *v48 = v23 | 0x500000000;
  *&v48[8] = v39;
  *&v48[16] = v40 | v41;
  *&v48[24] = v31;
  *&v47 = v36;
  *(&v47 + 1) = v22;
  LOBYTE(v51) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v51);
  v49[2] = v47;
  v50[0] = *v48;
  *(v50 + 12) = *&v48[12];
  v49[0] = v45;
  v49[1] = v46;
  v43[2] = v47;
  v44[0] = *v48;
  *(v44 + 12) = *&v48[12];
  v43[0] = v45;
  v43[1] = v46;
  outlined init with copy of DisplayList.Item(v49, &v51);
  DisplayList.init(_:)(v43, a1);
  outlined consume of GraphicsBlendMode(v22, v23);
  v53 = v47;
  v54[0] = *v48;
  *(v54 + 12) = *&v48[12];
  v51 = v45;
  v52 = v46;
  return outlined destroy of DisplayList.Item(&v51);
}

{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_15:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v24 = v4;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v23 = v6;
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v8 = *AGGraphGetValue();
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  v12 = AGGraphGetValue();
  v13 = v8 == 0;
  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v15 = v10 - *v12;
  v16 = v11 - v12[1];
  if (v8)
  {
    v17 = 0x1400000000;
  }

  else
  {
    v17 = 0x200000000;
  }

  if (v13)
  {
    v18 = 2;
  }

  else
  {
    v18 = 20;
  }

  outlined copy of DisplayList.Effect(v14, 0, v18);
  v19 = AGGraphGetValue();
  v20 = *v1;
  *&v28 = v15;
  *(&v28 + 1) = v16;
  v29 = *v19;
  *v31 = v17;
  *&v31[8] = v23;
  *&v31[16] = v5 | v24;
  *&v31[24] = v20;
  *&v30 = v7;
  *(&v30 + 1) = v14;
  LOBYTE(v34[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v34);
  v32[2] = v30;
  v33[0] = *v31;
  *(v33 + 12) = *&v31[12];
  v32[0] = v28;
  v32[1] = v29;
  v26[2] = v30;
  v27[0] = *v31;
  *(v27 + 12) = *&v31[12];
  v26[0] = v28;
  v26[1] = v29;
  outlined init with copy of DisplayList.Item(v32, v34);
  DisplayList.init(_:)(v26, a1);
  outlined consume of DisplayList.Effect(v14, 0, v18);
  v34[2] = v30;
  v35[0] = *v31;
  *(v35 + 12) = *&v31[12];
  v34[0] = v28;
  v34[1] = v29;
  return outlined destroy of DisplayList.Item(v34);
}

uint64_t sub_18D16A9E4()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t specialized static Material.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!*(a1 + 8))
    {
      if (!*(a2 + 8))
      {
        v6 = *(v2 + 32);
        v7 = *(v2 + 40);
        v8 = *(v2 + 48);
        v9 = v4[4];
        v10 = v4[5];
        v11 = v4[6];
        v12 = *(v2 + 16) == v4[2] && *(v2 + 24) == v4[3];
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v13 = v6 == v9 && v7 == v10;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            if (!v8)
            {
              outlined copy of Material.ID(v4, 0);
              outlined copy of Material.ID(v2, 0);
              outlined consume of Material.ID(v2, 0);
              outlined consume of Material.ID(v4, 0);
              return !v11;
            }

            if (v11)
            {
              type metadata accessor for NSBundle();
              outlined copy of Material.ID(v4, 0);
              outlined copy of Material.ID(v2, 0);
              v14 = v11;
              v15 = v8;
              v16 = static NSObject.== infix(_:_:)();

              outlined consume of Material.ID(v2, 0);
              outlined consume of Material.ID(v4, 0);
              return (v16 & 1) != 0;
            }
          }
        }

        outlined copy of Material.ID(v4, 0);
        outlined copy of Material.ID(v2, 0);
        outlined consume of Material.ID(v2, 0);
        v23 = v4;
        v24 = 0;
LABEL_58:
        outlined consume of Material.ID(v23, v24);
        return 0;
      }

LABEL_57:
      outlined copy of Material.ID(*a2, *(a2 + 8));
      outlined copy of Material.ID(v2, v3);
      outlined consume of Material.ID(v2, v3);
      v23 = v4;
      v24 = v5;
      goto LABEL_58;
    }

    if (v5 != 1)
    {
      goto LABEL_57;
    }

    v20 = *(*v2 + 168);
    outlined copy of Material.ID(*a2, 1u);
    outlined copy of Material.ID(v2, 1u);
    v17 = v20(v4);
    outlined consume of Material.ID(v2, 1u);
    v18 = v4;
    v19 = 1;
LABEL_23:
    outlined consume of Material.ID(v18, v19);
    return v17 & 1;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_57;
    }

    outlined copy of Material.ID(*a2, 2u);
    outlined copy of Material.ID(v2, 2u);
    v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8MaterialVACE5LayerV_Tt1g5(v2, v4);
    outlined consume of Material.ID(v2, 2u);
    v18 = v4;
    v19 = 2;
    goto LABEL_23;
  }

  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        if (v5 != 3 || v4 != 6)
        {
          goto LABEL_57;
        }

        outlined consume of Material.ID(6, 3u);
        v22 = 6;
      }

      else
      {
        if (v5 != 3 || v4 != 7)
        {
          goto LABEL_57;
        }

        outlined consume of Material.ID(7, 3u);
        v22 = 7;
      }
    }

    else if (v2 == 4)
    {
      if (v5 != 3 || v4 != 4)
      {
        goto LABEL_57;
      }

      outlined consume of Material.ID(4, 3u);
      v22 = 4;
    }

    else
    {
      if (v5 != 3 || v4 != 5)
      {
        goto LABEL_57;
      }

      outlined consume of Material.ID(5, 3u);
      v22 = 5;
    }

LABEL_56:
    outlined consume of Material.ID(v22, 3u);
    return 1;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v5 != 3 || v4 != 2)
      {
        goto LABEL_57;
      }

      outlined consume of Material.ID(2, 3u);
      v22 = 2;
    }

    else
    {
      if (v5 != 3 || v4 != 3)
      {
        goto LABEL_57;
      }

      outlined consume of Material.ID(3, 3u);
      v22 = 3;
    }

    goto LABEL_56;
  }

  if (!v2)
  {
    if (v5 != 3 || v4)
    {
      goto LABEL_57;
    }

    outlined consume of Material.ID(0, 3u);
    v22 = 0;
    goto LABEL_56;
  }

  if (v5 != 3 || v4 != 1)
  {
    goto LABEL_57;
  }

  outlined consume of Material.ID(1, 3u);
  outlined consume of Material.ID(1, 3u);
  return v4;
}

uint64_t EnvironmentValues.materialProvider(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 != 1)
  {
    v4 = *(a1 + 12);
    v16 = *v1;
    v5 = EnvironmentValues.systemMaterialDefinition.getter();
    if (v5)
    {
      v11 = v2;
      v12 = v3;
      v13 = v4;
      (*(v6 + 8))(&v14, &v11, v5, v6);
      if (v15)
      {
        outlined init with take of AnyTrackedValue(&v14, &v16);
        v7 = v17;
        v8 = v18;
        v9 = __swift_project_boxed_opaque_existential_1(&v16, v17);
        v2 = project #1 <A>(_:) in static Material.Layer.SDFLayer.customFill(_:)(v9, v7, v8, type metadata accessor for MaterialProviderBox, MaterialProviderBox.__allocating_init(_:));
        __swift_destroy_boxed_opaque_existential_1(&v16);
        return v2;
      }

      outlined destroy of MaterialProvider?(&v14);
    }

    return 0;
  }

  outlined copy of Material.ID(*a1, 1u);
  return v2;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE017AnimationListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE017AnimationListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE017AnimationListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t assignWithCopy for Material(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t specialized static DisplayList.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return v5 == *(a2 + 4) && v6 == *(a2 + 3);
  }

  v8 = (v3 + 104);
  v9 = (v2 + 104);
  while (v4)
  {
    result = *v8;
    if (*v9 != result || *(v9 - 5) != *(v8 - 5))
    {
      return 0;
    }

    v8 += 20;
    v9 += 20;
    if (!--v4)
    {
      return v5 == *(a2 + 4) && v6 == *(a2 + 3);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA06_ScaleE0V_Tt4B5@<X0>(float64x2_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  _ScaleEffect.effectValue(size:)(&v30, a8, a9, a4, a5, a6, a7);
  if (a2)
  {
    v45 = 0xBFF0000000000000;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = xmmword_18DDAA020;
    v50 = a8;
    v51 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v30, v35);
    v41[0] = 0xBFF0000000000000;
    memset(&v41[1], 0, 24);
    v42 = xmmword_18DDAA020;
    v43 = a8;
    v44 = xmmword_18DDAB500;
    v17 = &v36;
    ProjectionTransform.concatenating(_:)(v41, &v36);
    v15 = v38;
    v16 = v37;
    v13 = v40;
    v14 = v39;
  }

  else
  {
    v13 = v34;
    v14 = v33;
    v16 = v31;
    v15 = v32;
    v17 = &v30;
  }

  v18 = *v17;
  v28 = v13;
  v29 = v14;
  v26 = v15;
  v27 = v16;
  v25 = *v17;
  if (v16.f64[1] != 0.0 || *v14.i64 != 0.0 || v13.f64[1] != 1.0)
  {
    v22 = vmulq_f64(vextq_s8(v13, v14, 8uLL), vextq_s8(v15, v13, 8uLL));
    v23 = vmulq_n_f64(v13, *v15.i64);
    v24 = vmulq_f64(v16, vsubq_f64(vextq_s8(v23, v23, 8uLL), vmulq_f64(v14, vzip2q_s64(v14, v15))));
    if (v24.f64[1] + v18 * vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0] - v24.f64[0] != 0.0)
    {
      result = swift_allocObject();
      *(result + 16) = v25;
      *(result + 24) = v27;
      *(result + 40) = v26;
      *(result + 56) = v29;
      *(result + 72) = v28;
      v21 = 9;
      *(result + 88) = 1;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (vmuld_lane_f64(v18, v15, 1) - vmuld_n_f64(v16.f64[0], *v15.i64) == 0.0)
  {
LABEL_11:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
LABEL_12:
    v21 = 20;
    goto LABEL_14;
  }

  v19.f64[0] = v16.f64[0];
  v19.f64[1] = *v17;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v19, xmmword_18DDAB500), vceqq_f64(v15, xmmword_18DDAB500))))) & 1) == 0)
  {
    result = 0;
    *a1 = vaddq_f64(vextq_s8(v14, v13, 8uLL), *a1);
    goto LABEL_12;
  }

  result = swift_allocObject();
  *(result + 16) = v25;
  *(result + 24) = v27.f64[0];
  *(result + 32) = v26;
  *(result + 48) = vextq_s8(v29, v28, 8uLL);
  *(result + 88) = 0;
  v21 = 9;
LABEL_14:
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 12) = v21;
  return result;
}

uint64_t static AnimatablePair.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for AnimatablePair(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t AnchorValueBox.__deallocating_deinit()
{
  AnchorValueBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnimatablePair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for AnimatablePair(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

CGFloat _ScaleEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v8 = a4;
  if (a4 == 0.0)
  {
    if (one-time initialization token for leastNonzeroScaleFactor != -1)
    {
      v25 = a7;
      v26 = a6;
      v27 = a3;
      v28 = a2;
      swift_once();
      a2 = v28;
      a3 = v27;
      a6 = v26;
      a7 = v25;
    }

    v8 = *&static CGFloat.leastNonzeroScaleFactor;
  }

  if (a5 == 0.0)
  {
    if (one-time initialization token for leastNonzeroScaleFactor != -1)
    {
      v29 = a7;
      v30 = a6;
      v31 = a3;
      v32 = a2;
      swift_once();
      a2 = v32;
      a3 = v31;
      a6 = v30;
      a7 = v29;
    }

    a5 = *&static CGFloat.leastNonzeroScaleFactor;
  }

  v10 = a3 * a7;
  v11 = a2 * a6;
  CGAffineTransformMakeTranslation(&t1, -(a2 * a6), -(a3 * a7));
  tx = t1.tx;
  ty = t1.ty;
  v33 = *&t1.c;
  v35 = *&t1.a;
  CGAffineTransformMakeScale(&t1, v8, a5);
  v14 = *&t1.a;
  v15 = *&t1.c;
  v16 = *&t1.tx;
  *&t1.a = v35;
  *&t1.c = v33;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v14;
  *&t2.c = v15;
  *&t2.tx = v16;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v17 = v37.tx;
  v18 = v37.ty;
  v34 = *&v37.c;
  v36 = *&v37.a;
  CGAffineTransformMakeTranslation(&t1, v11, v10);
  v19 = *&t1.a;
  v20 = *&t1.c;
  v21 = *&t1.tx;
  *&t1.a = v36;
  *&t1.c = v34;
  t1.tx = v17;
  t1.ty = v18;
  *&t2.a = v19;
  *&t2.c = v20;
  *&t2.tx = v21;
  CGAffineTransformConcat(&v37, &t1, &t2);
  result = v37.a;
  v23 = *&v37.c;
  v24 = *&v37.tx;
  *a1 = *&v37.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = v24;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

uint64_t storeEnumTagSinglePayload for AnyStyleContextType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double ItemIDTransform.updateValue()()
{
  type metadata accessor for [String](0, &lazy cache variable for type metadata for AnyHashable2?, &type metadata for AnyHashable2, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;

  v5 = AGGraphGetValue();
  v7 = v3 | v6;
  v8 = *v5;
  if ((v7 & 1) != 0 || (type metadata accessor for (_:)(), !AGGraphGetOutputValue()))
  {
    v10 = *(v0 + 8) + 1;
    *(v0 + 8) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v10;
    *(v11 + 32) = v8;
    type metadata accessor for (_:)();
    AGGraphSetOutputValue();
  }

  else
  {
  }

  return result;
}

uint64_t sub_18D16BEA0()
{

  return swift_deallocObject();
}

double GlassEffectGroupModifier.ItemTransform.updateValue()()
{
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  if ((v5 & 1) != 0 || (type metadata accessor for (_:)(), !AGGraphGetOutputValue()))
  {
    v7 = *(v0 + 4) + 1;
    *(v0 + 4) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v3;
    *(v8 + 32) = v4;
    *(v8 + 36) = v7;
    type metadata accessor for (_:)();

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t sub_18D16BFD4()
{

  return swift_deallocObject();
}

uint64_t Path.applying(_:)@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  v40.a = *a1;
  v40.b = v10;
  v40.c = v13;
  v40.d = v12;
  v40.tx = v15;
  v40.ty = v14;
  result = CGAffineTransformIsIdentity(&v40);
  if (result)
  {
    v17 = *(v2 + 16);
    *&v40.a = *v2;
    *&v40.c = v17;
    LOBYTE(v40.tx) = *(v2 + 32);
    result = outlined init with copy of Path.Storage(&v40, v39);
    goto LABEL_31;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      if (v10 == 0.0 && v13 == 0.0 || v11 == 0.0 && v12 == 0.0)
      {
        *&v43.origin.x = v5;
        v43.origin.y = v6;
        v43.size.width = v8;
        v40.a = v11;
        v40.b = v10;
        v43.size.height = v7;
        v40.c = v13;
        v40.d = v12;
        v40.tx = v15;
        v40.ty = v14;
        v44 = CGRectApplyAffineTransform(v43, &v40);
        x = v44.origin.x;
        y = v44.origin.y;
        width = v44.size.width;
        height = v44.size.height;
        result = CGRectIsNull(v44);
        if ((result & 1) == 0)
        {
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          result = CGRectIsInfinite(v45);
          v5 = *&x;
          v6 = y;
          v8 = width;
          v7 = height;
          LOBYTE(v9) = result ^ 1;
          goto LABEL_31;
        }

LABEL_20:
        v5 = 0;
        v6 = 0.0;
        v8 = 0.0;
        v7 = 0.0;
        LOBYTE(v9) = 6;
        goto LABEL_31;
      }
    }

    else if (v10 == 0.0 && v13 == 0.0 || v11 == 0.0 && v12 == 0.0)
    {
      *&v46.origin.x = v5;
      v46.origin.y = v6;
      v46.size.width = v8;
      v40.a = v11;
      v40.b = v10;
      v46.size.height = v7;
      v40.c = v13;
      v40.d = v12;
      v40.tx = v15;
      v40.ty = v14;
      v47 = CGRectApplyAffineTransform(v46, &v40);
      v23 = v47.origin.x;
      v24 = v47.origin.y;
      v25 = v47.size.width;
      v26 = v47.size.height;
      result = CGRectIsNull(v47);
      if ((result & 1) == 0)
      {
        LOBYTE(v9) = 0;
        v5 = *&v23;
        v6 = v24;
        v8 = v25;
        v7 = v26;
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v9 != 2)
  {
    if (v9 == 6 && !(*&v6 | v5 | *&v8 | *&v7))
    {
      LOBYTE(v9) = 6;
      goto LABEL_31;
    }

    goto LABEL_14;
  }

  v27 = *(v5 + 16);
  v28 = *(v5 + 24);
  v29 = *(v5 + 32);
  v30 = *(v5 + 40);
  v31 = *(v5 + 48);
  v32 = *(v5 + 56);
  v33 = *(v5 + 64);
  if ((v10 != 0.0 || v13 != 0.0) && (v11 != 0.0 || v12 != 0.0))
  {
LABEL_14:
    type metadata accessor for Path.PathBox();
    v5 = swift_allocObject();
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 16) = 2;
    RBPathStorageInit();
    v22 = *(a1 + 1);
    *&v40.a = *a1;
    *&v40.c = v22;
    *&v40.tx = *(a1 + 2);
    MEMORY[0x193AC35E0](v5 + 24, 17, 0, &v40);
    Path.append(to:)(v5 + 24);
    result = MEMORY[0x193AC35E0](v5 + 24, 16, 0, 0);
    v6 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    LOBYTE(v9) = 5;
    goto LABEL_31;
  }

  v40.a = v11;
  v40.b = v10;
  v40.c = v13;
  v40.d = v12;
  v40.tx = v15;
  v40.ty = v14;
  v48 = CGRectApplyAffineTransform(*&v27, &v40);
  v37 = v48.origin.y;
  v38 = v48.origin.x;
  v35 = v48.size.height;
  v36 = v48.size.width;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v40.a = v11;
    v40.b = v10;
    v40.c = v13;
    v40.d = v12;
    v40.tx = v15;
    v40.ty = v14;
    v42.width = v31;
    v42.height = v32;
    v34 = CGSizeApplyAffineTransform(v42, &v40);
    v31 = copysign(v34.width, v31);
    v32 = copysign(v34.height, v32);
  }

  result = swift_allocObject();
  v5 = result;
  v6 = 0.0;
  v8 = 0.0;
  v7 = 0.0;
  *(result + 16) = v38;
  *(result + 24) = v37;
  *(result + 32) = v36;
  *(result + 40) = v35;
  *(result + 48) = v31;
  *(result + 56) = v32;
  LOBYTE(v9) = 2;
  *(result + 64) = v33;
LABEL_31:
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v9) = a3;
  v226 = *MEMORY[0x1E69E9840];
  v208 = type metadata accessor for OSSignpostID();
  v205 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v13 = (&v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v186 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v206 = (&v186 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v186 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v207 = &v186 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v186 - v25;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_123;
  }

  v29 = *a1;
  v30 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  if (*(a4 + 48))
  {
    goto LABEL_122;
  }

  v31 = *(a4 + 32);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v29, *(a4 + 16)), vceqq_f64(v30, v31)))))
  {
    goto LABEL_122;
  }

  v202 = *(a4 + 16);
  v204 = v31;
  v191 = LODWORD(v9);
  v203 = v13;
  v186 = v16;
  v187 = v21;
  v192 = v30;
  v193 = v29;
  AGGraphClearUpdate();
  v32 = *(a4 + 16);
  v221 = *a4;
  v222 = v32;
  v33 = *(a4 + 48);
  v223 = *(a4 + 32);
  v224 = v33;
  v225 = *(a4 + 64);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v221, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v35 = Transaction.effectiveAnimation.getter(v34);
  if (v35)
  {
    v36 = v35;
    LODWORD(v9) = v191;
  }

  else
  {
    LODWORD(v9) = v191;
    if (!a2)
    {

      goto LABEL_121;
    }

    v36 = a2;
  }

  v37 = *(&v224 + 1);
  v38 = v193.f64[0] - *&v202;
  v39 = v193.f64[1] - *(&v202 + 1);
  v40 = v192.f64[0] - v204.f64[0];
  v41 = v192.f64[1] - v204.f64[1];
  v28 = *AGGraphGetValue();
  v194 = a1;
  v197 = a4;
  v188 = v34;
  v189 = v36;
  if (!v37)
  {
    *&v213.f64[0] = &type metadata for _ScaleEffect;
    type metadata accessor for _ScaleEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v59 = swift_dynamicCast();
    if (v59)
    {
      v60 = *&v217.f64[0];
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = *&v217.f64[1];
    }

    else
    {
      v61 = 0;
    }

    v190 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v62, v34, v60, v61, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v38, v39, v40, v41, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v64 = CurrentAttribute;
    v65 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v66 = 0;
    }

    else
    {
      v66 = CurrentAttribute;
    }

    LODWORD(v202) = v66;
    (*(*v36 + 96))(&v213);
    v67 = v213;
    v68 = *&v214.f64[0];
    v69 = v215;
    v212 = NAN;
    v211 = NAN;
    v210 = 0x3FF0000000000000;
    v209 = 0x7FF8000000000000;
    v217 = v213;
    v70 = *&v214.f64[1];
    v218 = v214;
    v219 = v215;
    LODWORD(v206) = v216;
    LOBYTE(v220) = v216;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v217, &v212, &v211, &v210, &v209);
    v4 = v212;
    v5 = v211;
    v6 = v210;
    v7 = v209;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v71 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      LODWORD(v204.f64[0]) = v65;
      if (v71)
      {
        v72 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v73 = v64 == v65;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v74 = *(v72 + 16);
          LODWORD(v217.f64[0]) = v202;
          BYTE4(v217.f64[0]) = v73;
          *&v217.f64[1] = &type metadata for _ScaleEffect;
          v218.f64[0] = v4;
          v218.f64[1] = v5;
          v219 = v6;
          v220 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v75 = v74;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, v70, v69, v206);
        }

        else
        {
          outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, v70, v69, v206);
        }

        a4 = v197;
        LODWORD(v9) = v191;
      }

      else
      {
        outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, v70, v69, v206);
      }

      v115 = one-time initialization token for animationState;

      if (v115 == -1)
      {
        goto LABEL_84;
      }
    }

    swift_once();
LABEL_84:
    v82 = *(&static Signpost.animationState + 1);
    *&v81 = static Signpost.animationState;
    LOBYTE(v46) = word_1ED5283E8;
    LOBYTE(v88) = HIBYTE(word_1ED5283E8);
    v116 = byte_1ED5283EA;
    LODWORD(Counter) = static os_signpost_type_t.begin.getter();
    v217 = __PAIR128__(*&v82, *&v81);
    LOBYTE(v218.f64[0]) = v46;
    BYTE1(v218.f64[0]) = v88;
    BYTE2(v218.f64[0]) = v116;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v128 = v190;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_91;
    }

    v117 = one-time initialization token for _signpostLog;

    if (v117 != -1)
    {
      goto LABEL_196;
    }

    goto LABEL_86;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v221, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v217.f64[0]) = 0;
  v42.n128_f64[0] = v38;
  v43.n128_f64[0] = v39;
  v44.n128_f64[0] = v40;
  v190 = v37;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v36, v34, LODWORD(v9), v42, v43, v44, v41, v28);
  v45 = AGGraphGetCurrentAttribute();
  LODWORD(v46) = v45;
  LODWORD(v204.f64[0]) = *MEMORY[0x1E698D3F8];
  if (v45 == LODWORD(v204.f64[0]))
  {
    LODWORD(v9) = 0;
  }

  else
  {
    LODWORD(v9) = v45;
  }

  (*(*v36 + 96))(&v213);
  v48 = *&v213.f64[1];
  v47 = *&v213.f64[0];
  a1 = *&v214.f64[1];
  v49 = *&v214.f64[0];
  v50 = v215;
  v51 = v216;
  v212 = NAN;
  v211 = NAN;
  v210 = 0x3FF0000000000000;
  v209 = 0x7FF8000000000000;
  v217 = v213;
  v218 = v214;
  v219 = v215;
  LOBYTE(v220) = v216;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v217, &v212, &v211, &v210, &v209);
  v4 = v212;
  v5 = v211;
  v6 = v210;
  v7 = v209;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v52 = LODWORD(v9);
        v53 = v50;
        v54 = static CustomEventTrace.recorder;
        v55 = LODWORD(v204.f64[0]);
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v203) = v51;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v56 = *(v54 + 16);
          LODWORD(v217.f64[0]) = v52;
          BYTE4(v217.f64[0]) = v46 == v55;
          *&v217.f64[1] = &type metadata for _ScaleEffect;
          v218.f64[0] = v4;
          v218.f64[1] = v5;
          v219 = v6;
          v220 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          *&v202 = v57;

          v58 = v56;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v47, v48, v49, a1, v53, v203);

          goto LABEL_44;
        }

        v76 = v47;
        v77 = v48;
        v78 = v49;
        v79 = a1;
        v80 = v53;
      }

      else
      {
        v76 = v47;
        v77 = v48;
        v78 = v49;
        v79 = a1;
        v80 = v50;
      }

      outlined consume of Animation.Function(v76, v77, v78, v79, v80, v51);
LABEL_44:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v221, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_191;
    }

    __break(1u);
LABEL_191:
    swift_once();
LABEL_45:
    v81 = *(&static Signpost.animationState + 1);
    *&v9 = static Signpost.animationState;
    *&v82 = word_1ED5283E8;
    v83 = HIBYTE(word_1ED5283E8);
    v84 = byte_1ED5283EA;
    LODWORD(Counter) = static os_signpost_type_t.event.getter();
    v217 = __PAIR128__(*&v81, *&v9);
    LOBYTE(v218.f64[0]) = LOBYTE(v82);
    BYTE1(v218.f64[0]) = v83;
    BYTE2(v218.f64[0]) = v84;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_53:
      a4 = v197;
      LODWORD(v9) = v191;
      goto LABEL_120;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v221, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v203) = Counter;
    v86 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAF080;
    v87 = AGGraphGetCurrentAttribute();
    v88 = LODWORD(v204.f64[0]);
    if (v87 == LODWORD(v204.f64[0]))
    {
      __break(1u);
    }

    else
    {
      v89 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v90 = MEMORY[0x1E69E6870];
      *(v46 + 56) = MEMORY[0x1E69E6810];
      *(v46 + 64) = v90;
      *(v46 + 32) = Counter;
      v91 = AGGraphGetCurrentAttribute();
      if (v91 != v88)
      {
        v92 = MEMORY[0x1E69E76D0];
        *(v46 + 96) = MEMORY[0x1E69E7668];
        *(v46 + 104) = v92;
        *(v46 + 72) = v91;
        *(v46 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v46 + 144) = v93;
        strcpy((v46 + 112), "_ScaleEffect");
        *(v46 + 125) = 0;
        *(v46 + 126) = -5120;
        if ((v83 & 1) == 0)
        {
          if (LOBYTE(v9) == 20)
          {
            v95 = 3;
          }

          else
          {
            v95 = 4;
          }

          a4 = bswap32(LOWORD(v9)) | (4 * HIWORD(LODWORD(v9)));
          v96 = v203;
          v50 = (v205 + 16);
          v195 = *(v205 + 16);
          v97 = v195(v206, v187, v208);
          v98 = 0;
          LOBYTE(v213.f64[0]) = 1;
          *&v204.f64[0] = v95;
          v201 = 16 * v95;
          v196 = v50;
          *&v202 = v50 - 8;
          v200 = v46 + 32;
          v199 = LOBYTE(v9);
          do
          {
            v203 = &v186;
            MEMORY[0x1EEE9AC00](v97);
            a1 = &v186 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v9 = a1 + 8;
            v101 = v204.f64[0];
            v102 = (a1 + 8);
            do
            {
              *(v102 - 1) = 0;
              *v102 = 0;
              v102 += 16;
              --*&v101;
            }

            while (v101 != 0.0);
            v103 = v200 + 40 * v98;
            v104 = v204.f64[0];
            while (1)
            {
              v105 = *(v46 + 16);
              if (v98 == v105)
              {
                break;
              }

              if (v98 >= v105)
              {
                goto LABEL_180;
              }

              ++v98;
              outlined init with copy of AnyTrackedValue(v103, &v217);
              v106 = v218.f64[1];
              v107 = v219;
              v108 = __swift_project_boxed_opaque_existential_1(&v217, *&v218.f64[1]);
              v109 = *&v106;
              v50 = v108;
              *(*&v9 - 8) = CVarArg.kdebugValue(_:)(a4 | v96, v109, v107);
              **&v9 = v110 & 1;
              *&v9 += 16;
              v99 = __swift_destroy_boxed_opaque_existential_1(&v217);
              v103 += 40;
              --*&v104;
              if (v104 == 0.0)
              {
                goto LABEL_66;
              }
            }

            LOBYTE(v213.f64[0]) = 0;
LABEL_66:
            v111 = v199;
            if (v199 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v111 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = *v202;
            v50 = v206;
            v112 = v208;
            (*v202)(v206, v208);
            v113 = __swift_project_value_buffer(v112, static OSSignpostID.continuation);
            v97 = v195(v50, v113, v112);
          }

          while ((LOBYTE(v213.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          v114 = v208;
          (*&v9)(v206, v208);
          (*&v9)(v187, v114);

          a4 = v197;
          LODWORD(v9) = v191;
          goto LABEL_120;
        }

        LOBYTE(v209) = v203;
        v212 = COERCE_DOUBLE(&dword_18D018000);
        v211 = v86;
        v217.f64[0] = v9;
        v217.f64[1] = v81;
        LOBYTE(v218.f64[0]) = LOBYTE(v82);
        *&v213.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v213.f64[1] = 39;
        LOBYTE(v214.f64[0]) = 2;
        v210 = v46;
        v94 = v187;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v209, &v212, &v211, &v217, v187, &v213, &v210);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
        (*(v205 + 8))(v94, v208);

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_86:
    LODWORD(v206) = Counter;
    v118 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    v119 = AGGraphGetCurrentAttribute();
    v120 = LODWORD(v204.f64[0]);
    if (v119 == LODWORD(v204.f64[0]))
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v121 = AGGraphGetAttributeGraph();
    v122 = AGGraphGetCounter();

    v123 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v123;
    *(a4 + 32) = v122;
    v124 = AGGraphGetCurrentAttribute();
    if (v124 == v120)
    {
      goto LABEL_198;
    }

    v125 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v125;
    *(a4 + 72) = v124;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v126;
    strcpy((a4 + 112), "_ScaleEffect");
    *(a4 + 125) = 0;
    *(a4 + 126) = -5120;
    if (v88)
    {
      LOBYTE(v209) = v206;
      v212 = COERCE_DOUBLE(&dword_18D018000);
      v211 = v118;
      v217.f64[0] = v81;
      v217.f64[1] = v82;
      LOBYTE(v218.f64[0]) = v46;
      *&v213.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v213.f64[1] = 39;
      LOBYTE(v214.f64[0]) = 2;
      v210 = a4;
      v127 = v186;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v209, &v212, &v211, &v217, v186, &v213, &v210);
      v128 = v190;

      (*(v205 + 8))(v127, v208);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v197;
LABEL_91:
      *(a4 + 56) = v128;
    }

    else
    {
      v129 = LOBYTE(v81);
      v130 = LOBYTE(v81) == 20 ? 3 : 4;
      v131 = bswap32(LOWORD(v81)) | (4 * HIWORD(LODWORD(v81)));
      v96 = v206;
      v50 = (v205 + 16);
      v195 = *(v205 + 16);
      v132 = v195(v203, v186, v208);
      v9 = 0.0;
      LOBYTE(v213.f64[0]) = 1;
      v206 = v130;
      v201 = 16 * v130;
      v196 = v50;
      *&v202 = v50 - 8;
      v200 = a4 + 32;
      v199 = v129;
      do
      {
        *&v204.f64[0] = &v186;
        MEMORY[0x1EEE9AC00](v132);
        a1 = &v186 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
        v134 = (a1 + 8);
        v135 = v206;
        v136 = (a1 + 8);
        do
        {
          *(v136 - 1) = 0;
          *v136 = 0;
          v136 += 16;
          v135 = (v135 - 1);
        }

        while (v135);
        v137 = v200 + 40 * *&v9;
        v46 = v206;
        while (1)
        {
          v138 = *(a4 + 16);
          if (*&v9 == v138)
          {
            break;
          }

          if (*&v9 >= v138)
          {
            goto LABEL_181;
          }

          ++*&v9;
          outlined init with copy of AnyTrackedValue(v137, &v217);
          v139 = v218.f64[1];
          v140 = v219;
          v141 = __swift_project_boxed_opaque_existential_1(&v217, *&v218.f64[1]);
          v142 = *&v139;
          v50 = v141;
          *(v134 - 1) = CVarArg.kdebugValue(_:)(v131 | v96, v142, v140);
          *v134 = v143 & 1;
          v134 += 16;
          v99 = __swift_destroy_boxed_opaque_existential_1(&v217);
          v137 += 40;
          if (!--v46)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v213.f64[0]) = 0;
LABEL_104:
        v144 = v199;
        if (v199 == 20)
        {
          v145 = v203;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v145 = v203;
        }

        if (*(a1 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v144 != 20 && *(a1 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v146 = *v202;
        v50 = v208;
        (*v202)(v145, v208);
        v147 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
        v132 = v195(v145, v147, v50);
      }

      while ((LOBYTE(v213.f64[0]) & 1) != 0);
      *&v9 = v190;

      v148 = v208;
      v146(v145, v208);
      v146(v186, v148);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v197;
      *(v197 + 56) = v9;
      LODWORD(v9) = v191;
    }

LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v188);

    a1 = v194;
LABEL_121:
    v29 = v193;
    v30 = v192;
LABEL_122:
    *(a4 + 16) = v29;
    *(a4 + 32) = v30;
    *(a4 + 48) = 0;
LABEL_123:
    v46 = *(a4 + 56);
    if (!v46)
    {
      return;
    }

    v149 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x4060000000000000uLL));
    v217 = *a1;
    v218 = v149;

    LOBYTE(v221) = 0;
    v150 = specialized AnimatorState.update(_:at:environment:)(&v217, LODWORD(v9), v28);
    v99 = AGGraphGetCurrentAttribute();
    LODWORD(v9) = *MEMORY[0x1E698D3F8];
    if (v99 == *MEMORY[0x1E698D3F8])
    {
      v96 = 0;
    }

    else
    {
      v96 = v99;
    }

    v50 = &type metadata instantiation cache for TupleTypeDescription;
    if (v150)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_184;
    }

LABEL_142:
    v162 = *(v50 + 77);
    if (*(v162 + 16) >= 0x43uLL)
    {
      if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v221) = v96;
        BYTE4(v221) = v99 == LODWORD(v9);
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_177;
    }

    __break(1u);
LABEL_186:
    swift_once();
LABEL_134:
    v49 = *(&static Signpost.animationState + 1);
    v153 = static Signpost.animationState;
    v51 = word_1ED5283E8;
    v154 = HIBYTE(word_1ED5283E8);
    v155 = byte_1ED5283EA;
    v48 = static os_signpost_type_t.end.getter();
    v221 = __PAIR128__(v49, v153);
    LOBYTE(v222) = v51;
    BYTE1(v222) = v154;
    BYTE2(v222) = v155;
    v50 = &v221;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    v156 = one-time initialization token for _signpostLog;

    if (v156 != -1)
    {
      swift_once();
    }

    v194 = a1;
    *&v47 = COERCE_DOUBLE(_signpostLog);
    v196 = v46;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != LODWORD(v9))
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    swift_once();
  }

  v50 = AGGraphGetAttributeGraph();
  a1 = AGGraphGetCounter();

  v157 = MEMORY[0x1E69E6870];
  *(v46 + 56) = MEMORY[0x1E69E6810];
  *(v46 + 64) = v157;
  *(v46 + 32) = a1;
  v158 = AGGraphGetCurrentAttribute();
  if (v158 == LODWORD(v9))
  {
    goto LABEL_188;
  }

  v159 = MEMORY[0x1E69E76D0];
  *(v46 + 96) = MEMORY[0x1E69E7668];
  *(v46 + 104) = v159;
  *(v46 + 72) = v158;
  *(v46 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v46 + 144) = v160;
  strcpy((v46 + 112), "_ScaleEffect");
  *(v46 + 125) = 0;
  *(v46 + 126) = -5120;
  if (v154)
  {
    LOBYTE(v209) = v48;
    v212 = COERCE_DOUBLE(&dword_18D018000);
    v211 = *&v47;
    *&v221 = v153;
    *(&v221 + 1) = v49;
    LOBYTE(v222) = v51;
    *&v213.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v213.f64[1] = 37;
    LOBYTE(v214.f64[0]) = 2;
    v210 = v46;
    v161 = v198;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v209, &v212, &v211, &v221, v198, &v213, &v210);

    (*(v205 + 8))(v161, v208);
    goto LABEL_175;
  }

  v163 = v153;
  if (v153 == 20)
  {
    v164 = 3;
  }

  else
  {
    v164 = 4;
  }

  LODWORD(v9) = bswap32(v153) | (4 * WORD1(v153));
  v96 = v48;
  v165 = v205 + 16;
  v199 = *(v205 + 16);
  v166 = v199(v207, v198, v208);
  v167 = 0;
  LOBYTE(v213.f64[0]) = 1;
  v203 = (16 * v164);
  v205 = v165;
  *&v204.f64[0] = v165 - 8;
  *&v202 = v46 + 32;
  v201 = v163;
  v200 = v164;
  do
  {
    v206 = &v186;
    MEMORY[0x1EEE9AC00](v166);
    a1 = &v186 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
    a4 = a1 + 8;
    v169 = v164;
    v170 = (a1 + 8);
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 16;
      --v169;
    }

    while (v169);
    v171 = v202 + 40 * v167;
    while (1)
    {
      v172 = *(v46 + 16);
      if (v167 == v172)
      {
        break;
      }

      if (v167 >= v172)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v184 = v99;
        swift_once();
        v99 = v184;
LABEL_129:
        v151 = *(v50 + 77);
        if (*(v151 + 16) >= 0x43uLL)
        {
          if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v221) = v96;
            BYTE4(v221) = v99 == LODWORD(v9);
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v197 = a4;
          v152 = one-time initialization token for animationState;

          if (v152 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v185 = v99;
        swift_once();
        v99 = v185;
        goto LABEL_142;
      }

      ++v167;
      outlined init with copy of AnyTrackedValue(v171, &v221);
      v173 = *(&v222 + 1);
      v174 = v223;
      v175 = __swift_project_boxed_opaque_existential_1(&v221, *(&v222 + 1));
      v176 = v173;
      v50 = v175;
      *(a4 - 8) = CVarArg.kdebugValue(_:)(LODWORD(v9) | v96, v176, v174);
      *a4 = v177 & 1;
      a4 += 16;
      v99 = __swift_destroy_boxed_opaque_existential_1(&v221);
      v171 += 40;
      if (!--v164)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v213.f64[0]) = 0;
LABEL_160:
    v178 = v201;
    if (v201 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v178 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v179 = **&v204.f64[0];
    v180 = v207;
    v50 = v208;
    (**&v204.f64[0])(v207, v208);
    v181 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
    v166 = v199(v180, v181, v50);
    v164 = v200;
  }

  while ((LOBYTE(v213.f64[0]) & 1) != 0);

  v182 = v208;
  v179(v207, v208);
  v179(v198, v182);
LABEL_175:

  a1 = v194;
LABEL_176:
  specialized AnimatorState.removeListeners()();

  *(v197 + 56) = 0;
LABEL_177:
  v183 = vmulq_f64(v218, vdupq_n_s64(0x3F80000000000000uLL));
  *a1 = v217;
  *(a1 + 16) = v183;
  *(a1 + 32) = 1;
}

{
  LODWORD(v9) = a3;
  v227 = *MEMORY[0x1E69E9840];
  v209 = type metadata accessor for OSSignpostID();
  v206 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v13 = (&v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v187 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v207 = (&v187 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v187 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v208 = &v187 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v199 = &v187 - v25;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 64) = 1;
  }

  else if (*(a1 + 64) != 1)
  {
    goto LABEL_123;
  }

  v29 = *a1;
  v30 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  if (*(a4 + 48))
  {
    goto LABEL_122;
  }

  v31 = *(a4 + 32);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v29, *(a4 + 16)), vceqq_f64(v30, v31)))))
  {
    goto LABEL_122;
  }

  v203 = *(a4 + 16);
  v205 = v31;
  v192 = LODWORD(v9);
  v204 = v13;
  v187 = v16;
  v188 = v21;
  v193 = v30;
  v194 = v29;
  AGGraphClearUpdate();
  v32 = *(a4 + 16);
  v222 = *a4;
  v223 = v32;
  v33 = *(a4 + 48);
  v224 = *(a4 + 32);
  v225 = v33;
  v226 = *(a4 + 64);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v218, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v35 = Transaction.effectiveAnimation.getter(v34);
  if (v35)
  {
    v36 = v35;
    LODWORD(v9) = v192;
  }

  else
  {
    LODWORD(v9) = v192;
    if (!a2)
    {

      goto LABEL_121;
    }

    v36 = a2;
  }

  v37 = *(&v225 + 1);
  v38 = v194.f64[0] - *&v203;
  v39 = v194.f64[1] - *(&v203 + 1);
  v40 = v193.f64[0] - v205.f64[0];
  v41 = v193.f64[1] - v205.f64[1];
  v28 = *AGGraphGetValue();
  v195 = a1;
  v198 = a4;
  v189 = v34;
  v190 = v36;
  if (!v37)
  {
    *&v214.f64[0] = &type metadata for ScalePulseEffect;
    type metadata accessor for ScalePulseEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v59 = swift_dynamicCast();
    if (v59)
    {
      v60 = *&v218.f64[0];
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = *&v218.f64[1];
    }

    else
    {
      v61 = 0;
    }

    v191 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v62, v34, v60, v61, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v38, v39, v40, v41, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v64 = CurrentAttribute;
    v65 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v66 = 0;
    }

    else
    {
      v66 = CurrentAttribute;
    }

    LODWORD(v203) = v66;
    (*(*v36 + 96))(&v214);
    v67 = v214;
    v68 = *&v215.f64[0];
    v69 = v216;
    v213 = NAN;
    v212 = NAN;
    v211 = 0x3FF0000000000000;
    v210 = NAN;
    v218 = v214;
    v70 = *&v215.f64[1];
    v219 = v215;
    v220 = v216;
    LODWORD(v207) = v217;
    LOBYTE(v221) = v217;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v218, &v213, &v212, &v211, &v210);
    v4 = v213;
    v5 = v212;
    v6 = v211;
    v7 = v210;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v71 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      LODWORD(v205.f64[0]) = v65;
      if (v71)
      {
        v72 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v73 = v64 == v65;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v74 = *(v72 + 16);
          LODWORD(v218.f64[0]) = v203;
          BYTE4(v218.f64[0]) = v73;
          *&v218.f64[1] = &type metadata for ScalePulseEffect;
          v219.f64[0] = v4;
          v219.f64[1] = v5;
          v220 = v6;
          v221 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v75 = v74;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, v70, v69, v207);
        }

        else
        {
          outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, v70, v69, v207);
        }

        a4 = v198;
        LODWORD(v9) = v192;
      }

      else
      {
        outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, v70, v69, v207);
      }

      v116 = one-time initialization token for animationState;

      if (v116 == -1)
      {
        goto LABEL_84;
      }
    }

    swift_once();
LABEL_84:
    v82 = *(&static Signpost.animationState + 1);
    *&v81 = static Signpost.animationState;
    LOBYTE(v46) = word_1ED5283E8;
    LOBYTE(v88) = HIBYTE(word_1ED5283E8);
    v117 = byte_1ED5283EA;
    LODWORD(Counter) = static os_signpost_type_t.begin.getter();
    v218 = __PAIR128__(*&v82, *&v81);
    LOBYTE(v219.f64[0]) = v46;
    BYTE1(v219.f64[0]) = v88;
    BYTE2(v219.f64[0]) = v117;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v129 = v191;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_91;
    }

    v118 = one-time initialization token for _signpostLog;

    if (v118 != -1)
    {
      goto LABEL_196;
    }

    goto LABEL_86;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v218, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v218.f64[0]) = 0;
  v42.n128_f64[0] = v38;
  v43.n128_f64[0] = v39;
  v44.n128_f64[0] = v40;
  v191 = v37;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v36, v34, LODWORD(v9), v42, v43, v44, v41, v28);
  v45 = AGGraphGetCurrentAttribute();
  LODWORD(v46) = v45;
  LODWORD(v205.f64[0]) = *MEMORY[0x1E698D3F8];
  if (v45 == LODWORD(v205.f64[0]))
  {
    LODWORD(v9) = 0;
  }

  else
  {
    LODWORD(v9) = v45;
  }

  (*(*v36 + 96))(&v214);
  v48 = *&v214.f64[1];
  v47 = *&v214.f64[0];
  a1 = *&v215.f64[1];
  v49 = *&v215.f64[0];
  v50 = v216;
  v51 = v217;
  v213 = NAN;
  v212 = NAN;
  v211 = 0x3FF0000000000000;
  v210 = NAN;
  v218 = v214;
  v219 = v215;
  v220 = v216;
  LOBYTE(v221) = v217;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v218, &v213, &v212, &v211, &v210);
  v4 = v213;
  v5 = v212;
  v6 = v211;
  v7 = v210;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v52 = LODWORD(v9);
        v53 = v50;
        v54 = static CustomEventTrace.recorder;
        v55 = LODWORD(v205.f64[0]);
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v204) = v51;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v56 = *(v54 + 16);
          LODWORD(v218.f64[0]) = v52;
          BYTE4(v218.f64[0]) = v46 == v55;
          *&v218.f64[1] = &type metadata for ScalePulseEffect;
          v219.f64[0] = v4;
          v219.f64[1] = v5;
          v220 = v6;
          v221 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          *&v203 = v57;

          v58 = v56;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v47, v48, v49, a1, v53, v204);

          goto LABEL_44;
        }

        v76 = v47;
        v77 = v48;
        v78 = v49;
        v79 = a1;
        v80 = v53;
      }

      else
      {
        v76 = v47;
        v77 = v48;
        v78 = v49;
        v79 = a1;
        v80 = v50;
      }

      outlined consume of Animation.Function(v76, v77, v78, v79, v80, v51);
LABEL_44:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v218, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_191;
    }

    __break(1u);
LABEL_191:
    swift_once();
LABEL_45:
    v81 = *(&static Signpost.animationState + 1);
    *&v9 = static Signpost.animationState;
    *&v82 = word_1ED5283E8;
    v83 = HIBYTE(word_1ED5283E8);
    v84 = byte_1ED5283EA;
    LODWORD(Counter) = static os_signpost_type_t.event.getter();
    v218 = __PAIR128__(*&v81, *&v9);
    LOBYTE(v219.f64[0]) = LOBYTE(v82);
    BYTE1(v219.f64[0]) = v83;
    BYTE2(v219.f64[0]) = v84;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_53:
      a4 = v198;
      LODWORD(v9) = v192;
      goto LABEL_120;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v218, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v204) = Counter;
    v86 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAF080;
    v87 = AGGraphGetCurrentAttribute();
    v88 = LODWORD(v205.f64[0]);
    if (v87 == LODWORD(v205.f64[0]))
    {
      __break(1u);
    }

    else
    {
      v89 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v90 = MEMORY[0x1E69E6870];
      *(v46 + 56) = MEMORY[0x1E69E6810];
      *(v46 + 64) = v90;
      *(v46 + 32) = Counter;
      v91 = AGGraphGetCurrentAttribute();
      if (v91 != v88)
      {
        v92 = MEMORY[0x1E69E76D0];
        *(v46 + 96) = MEMORY[0x1E69E7668];
        *(v46 + 104) = v92;
        *(v46 + 72) = v91;
        *(v46 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v46 + 144) = v93;
        *(v46 + 112) = 0xD000000000000037;
        *(v46 + 120) = 0x800000018DD7EBB0;
        if ((v83 & 1) == 0)
        {
          if (LOBYTE(v9) == 20)
          {
            v95 = 3;
          }

          else
          {
            v95 = 4;
          }

          a4 = bswap32(LOWORD(v9)) | (4 * HIWORD(LODWORD(v9)));
          v96 = v204;
          v97 = (v206 + 16);
          v196 = *(v206 + 16);
          v98 = v196(v207, v188, v209);
          v99 = 0;
          LOBYTE(v214.f64[0]) = 1;
          *&v205.f64[0] = v95;
          v202 = 16 * v95;
          v197 = v97;
          *&v203 = v97 - 1;
          v201 = v46 + 32;
          v200 = LOBYTE(v9);
          do
          {
            v204 = &v187;
            MEMORY[0x1EEE9AC00](v98);
            a1 = &v187 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v9 = a1 + 8;
            v102 = v205.f64[0];
            v103 = (a1 + 8);
            do
            {
              *(v103 - 1) = 0;
              *v103 = 0;
              v103 += 16;
              --*&v102;
            }

            while (v102 != 0.0);
            v104 = v201 + 40 * v99;
            v105 = v205.f64[0];
            while (1)
            {
              v106 = *(v46 + 16);
              if (v99 == v106)
              {
                break;
              }

              if (v99 >= v106)
              {
                goto LABEL_180;
              }

              ++v99;
              outlined init with copy of AnyTrackedValue(v104, &v218);
              v107 = v219.f64[1];
              v108 = v220;
              v109 = __swift_project_boxed_opaque_existential_1(&v218, *&v219.f64[1]);
              v110 = *&v107;
              v97 = v109;
              *(*&v9 - 8) = CVarArg.kdebugValue(_:)(a4 | v96, v110, v108);
              **&v9 = v111 & 1;
              *&v9 += 16;
              v100 = __swift_destroy_boxed_opaque_existential_1(&v218);
              v104 += 40;
              --*&v105;
              if (v105 == 0.0)
              {
                goto LABEL_66;
              }
            }

            LOBYTE(v214.f64[0]) = 0;
LABEL_66:
            v112 = v200;
            if (v200 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v112 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = *v203;
            v97 = v207;
            v113 = v209;
            (*v203)(v207, v209);
            v114 = __swift_project_value_buffer(v113, static OSSignpostID.continuation);
            v98 = v196(v97, v114, v113);
          }

          while ((LOBYTE(v214.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
          v115 = v209;
          (*&v9)(v207, v209);
          (*&v9)(v188, v115);

          a4 = v198;
          LODWORD(v9) = v192;
          goto LABEL_120;
        }

        LOBYTE(v210) = v204;
        v213 = COERCE_DOUBLE(&dword_18D018000);
        v212 = v86;
        v218.f64[0] = v9;
        v218.f64[1] = v81;
        LOBYTE(v219.f64[0]) = LOBYTE(v82);
        *&v214.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v214.f64[1] = 39;
        LOBYTE(v215.f64[0]) = 2;
        v211 = v46;
        v94 = v188;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, &v213, &v212, &v218, v188, &v214, &v211);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
        (*(v206 + 8))(v94, v209);

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_86:
    LODWORD(v207) = Counter;
    v119 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    v120 = AGGraphGetCurrentAttribute();
    v121 = LODWORD(v205.f64[0]);
    if (v120 == LODWORD(v205.f64[0]))
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v122 = AGGraphGetAttributeGraph();
    v123 = AGGraphGetCounter();

    v124 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v124;
    *(a4 + 32) = v123;
    v125 = AGGraphGetCurrentAttribute();
    if (v125 == v121)
    {
      goto LABEL_198;
    }

    v126 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v126;
    *(a4 + 72) = v125;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v127;
    *(a4 + 112) = 0xD000000000000037;
    *(a4 + 120) = 0x800000018DD7EBB0;
    if (v88)
    {
      LOBYTE(v210) = v207;
      v213 = COERCE_DOUBLE(&dword_18D018000);
      v212 = v119;
      v218.f64[0] = v81;
      v218.f64[1] = v82;
      LOBYTE(v219.f64[0]) = v46;
      *&v214.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v214.f64[1] = 39;
      LOBYTE(v215.f64[0]) = 2;
      v211 = a4;
      v128 = v187;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, &v213, &v212, &v218, v187, &v214, &v211);
      v129 = v191;

      (*(v206 + 8))(v128, v209);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v198;
LABEL_91:
      *(a4 + 56) = v129;
    }

    else
    {
      v130 = LOBYTE(v81);
      v131 = LOBYTE(v81) == 20 ? 3 : 4;
      v132 = bswap32(LOWORD(v81)) | (4 * HIWORD(LODWORD(v81)));
      v96 = v207;
      v97 = (v206 + 16);
      v196 = *(v206 + 16);
      v133 = v196(v204, v187, v209);
      v9 = 0.0;
      LOBYTE(v214.f64[0]) = 1;
      v207 = v131;
      v202 = 16 * v131;
      v197 = v97;
      *&v203 = v97 - 1;
      v201 = a4 + 32;
      v200 = v130;
      do
      {
        *&v205.f64[0] = &v187;
        MEMORY[0x1EEE9AC00](v133);
        a1 = &v187 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
        v135 = (a1 + 8);
        v136 = v207;
        v137 = (a1 + 8);
        do
        {
          *(v137 - 1) = 0;
          *v137 = 0;
          v137 += 16;
          v136 = (v136 - 1);
        }

        while (v136);
        v138 = v201 + 40 * *&v9;
        v46 = v207;
        while (1)
        {
          v139 = *(a4 + 16);
          if (*&v9 == v139)
          {
            break;
          }

          if (*&v9 >= v139)
          {
            goto LABEL_181;
          }

          ++*&v9;
          outlined init with copy of AnyTrackedValue(v138, &v218);
          v140 = v219.f64[1];
          v141 = v220;
          v142 = __swift_project_boxed_opaque_existential_1(&v218, *&v219.f64[1]);
          v143 = *&v140;
          v97 = v142;
          *(v135 - 1) = CVarArg.kdebugValue(_:)(v132 | v96, v143, v141);
          *v135 = v144 & 1;
          v135 += 16;
          v100 = __swift_destroy_boxed_opaque_existential_1(&v218);
          v138 += 40;
          if (!--v46)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v214.f64[0]) = 0;
LABEL_104:
        v145 = v200;
        if (v200 == 20)
        {
          v146 = v204;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v146 = v204;
        }

        if (*(a1 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v145 != 20 && *(a1 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v147 = *v203;
        v97 = v209;
        (*v203)(v146, v209);
        v148 = __swift_project_value_buffer(v97, static OSSignpostID.continuation);
        v133 = v196(v146, v148, v97);
      }

      while ((LOBYTE(v214.f64[0]) & 1) != 0);
      *&v9 = v191;

      v149 = v209;
      v147(v146, v209);
      v147(v187, v149);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v198;
      *(v198 + 56) = v9;
      LODWORD(v9) = v192;
    }

LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v189);

    a1 = v195;
LABEL_121:
    v29 = v194;
    v30 = v193;
LABEL_122:
    *(a4 + 16) = v29;
    *(a4 + 32) = v30;
    *(a4 + 48) = 0;
LABEL_123:
    v46 = *(a4 + 56);
    if (!v46)
    {
      return;
    }

    v150 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x4060000000000000uLL));
    v218 = *a1;
    v219 = v150;

    LOBYTE(v222) = 0;
    v151 = specialized AnimatorState.update(_:at:environment:)(&v218, LODWORD(v9), v28);
    v100 = AGGraphGetCurrentAttribute();
    LODWORD(v9) = *MEMORY[0x1E698D3F8];
    if (v100 == *MEMORY[0x1E698D3F8])
    {
      v96 = 0;
    }

    else
    {
      v96 = v100;
    }

    v97 = &type metadata instantiation cache for TupleTypeDescription;
    if (v151)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_184;
    }

LABEL_142:
    v163 = v97[77];
    if (*(v163 + 16) >= 0x43uLL)
    {
      if (*(v163 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v222) = v96;
        BYTE4(v222) = v100 == LODWORD(v9);
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_177;
    }

    __break(1u);
LABEL_186:
    swift_once();
LABEL_134:
    v49 = *(&static Signpost.animationState + 1);
    v154 = static Signpost.animationState;
    v51 = word_1ED5283E8;
    v155 = HIBYTE(word_1ED5283E8);
    v156 = byte_1ED5283EA;
    v48 = static os_signpost_type_t.end.getter();
    v222 = __PAIR128__(v49, v154);
    LOBYTE(v223) = v51;
    BYTE1(v223) = v155;
    BYTE2(v223) = v156;
    v50 = &v222;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    v157 = one-time initialization token for _signpostLog;

    if (v157 != -1)
    {
      swift_once();
    }

    v195 = a1;
    *&v47 = COERCE_DOUBLE(_signpostLog);
    v197 = v46;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != LODWORD(v9))
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    swift_once();
  }

  v50 = AGGraphGetAttributeGraph();
  a1 = AGGraphGetCounter();

  v158 = MEMORY[0x1E69E6870];
  *(v46 + 56) = MEMORY[0x1E69E6810];
  *(v46 + 64) = v158;
  *(v46 + 32) = a1;
  v159 = AGGraphGetCurrentAttribute();
  if (v159 == LODWORD(v9))
  {
    goto LABEL_188;
  }

  v160 = MEMORY[0x1E69E76D0];
  *(v46 + 96) = MEMORY[0x1E69E7668];
  *(v46 + 104) = v160;
  *(v46 + 72) = v159;
  v97 = 0x800000018DD7EBB0;
  *(v46 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v46 + 144) = v161;
  *(v46 + 112) = 0xD000000000000037;
  *(v46 + 120) = 0x800000018DD7EBB0;
  if (v155)
  {
    LOBYTE(v210) = v48;
    v213 = COERCE_DOUBLE(&dword_18D018000);
    v212 = *&v47;
    *&v222 = v154;
    *(&v222 + 1) = v49;
    LOBYTE(v223) = v51;
    *&v214.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v214.f64[1] = 37;
    LOBYTE(v215.f64[0]) = 2;
    v211 = v46;
    v162 = v199;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, &v213, &v212, &v222, v199, &v214, &v211);

    (*(v206 + 8))(v162, v209);
    goto LABEL_175;
  }

  v164 = v154;
  if (v154 == 20)
  {
    v165 = 3;
  }

  else
  {
    v165 = 4;
  }

  LODWORD(v9) = bswap32(v154) | (4 * WORD1(v154));
  v96 = v48;
  v166 = v206 + 16;
  v200 = *(v206 + 16);
  v167 = v200(v208, v199, v209);
  v168 = 0;
  LOBYTE(v214.f64[0]) = 1;
  v204 = (16 * v165);
  v206 = v166;
  *&v205.f64[0] = v166 - 8;
  *&v203 = v46 + 32;
  v202 = v164;
  v201 = v165;
  do
  {
    v207 = &v187;
    MEMORY[0x1EEE9AC00](v167);
    a1 = &v187 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    a4 = a1 + 8;
    v170 = v165;
    v171 = (a1 + 8);
    do
    {
      *(v171 - 1) = 0;
      *v171 = 0;
      v171 += 16;
      --v170;
    }

    while (v170);
    v172 = v203 + 40 * v168;
    while (1)
    {
      v173 = *(v46 + 16);
      if (v168 == v173)
      {
        break;
      }

      if (v168 >= v173)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v185 = v100;
        swift_once();
        v100 = v185;
LABEL_129:
        v152 = v97[77];
        if (*(v152 + 16) >= 0x43uLL)
        {
          if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v222) = v96;
            BYTE4(v222) = v100 == LODWORD(v9);
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v198 = a4;
          v153 = one-time initialization token for animationState;

          if (v153 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v186 = v100;
        swift_once();
        v100 = v186;
        goto LABEL_142;
      }

      ++v168;
      outlined init with copy of AnyTrackedValue(v172, &v222);
      v174 = *(&v223 + 1);
      v175 = v224;
      v176 = __swift_project_boxed_opaque_existential_1(&v222, *(&v223 + 1));
      v177 = v174;
      v97 = v176;
      *(a4 - 8) = CVarArg.kdebugValue(_:)(LODWORD(v9) | v96, v177, v175);
      *a4 = v178 & 1;
      a4 += 16;
      v100 = __swift_destroy_boxed_opaque_existential_1(&v222);
      v172 += 40;
      if (!--v165)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v214.f64[0]) = 0;
LABEL_160:
    v179 = v202;
    if (v202 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v179 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v180 = **&v205.f64[0];
    v181 = v208;
    v97 = v209;
    (**&v205.f64[0])(v208, v209);
    v182 = __swift_project_value_buffer(v97, static OSSignpostID.continuation);
    v167 = v200(v181, v182, v97);
    v165 = v201;
  }

  while ((LOBYTE(v214.f64[0]) & 1) != 0);

  v183 = v209;
  v180(v208, v209);
  v180(v199, v183);
LABEL_175:

  a1 = v195;
LABEL_176:
  specialized AnimatorState.removeListeners()();

  *(v198 + 56) = 0;
LABEL_177:
  v184 = vmulq_f64(v219, vdupq_n_s64(0x3F80000000000000uLL));
  *a1 = v218;
  *(a1 + 16) = v184;
  *(a1 + 64) = 1;
}

{
  LODWORD(v9) = a3;
  v231 = *MEMORY[0x1E69E9840];
  v213 = type metadata accessor for OSSignpostID();
  v210 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v13 = (&v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v191 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v211 = (&v191 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v191 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v212 = &v191 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v203 = &v191 - v25;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_123;
  }

  v29 = vdupq_n_s64(0x4060000000000000uLL);
  v30 = vmulq_f64(*a1, v29);
  v31 = vmulq_f64(*(a1 + 16), v29);
  if (*(a4 + 48))
  {
    goto LABEL_122;
  }

  v32 = *(a4 + 32);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v30, *(a4 + 16)), vceqq_f64(v31, v32)))))
  {
    goto LABEL_122;
  }

  v207 = *(a4 + 16);
  v209 = v32;
  v196 = LODWORD(v9);
  v208 = v13;
  v191 = v16;
  v192 = v21;
  v197 = v31;
  v198 = v30;
  AGGraphClearUpdate();
  v33 = *(a4 + 16);
  v226 = *a4;
  v227 = v33;
  v34 = *(a4 + 48);
  v228 = *(a4 + 32);
  v229 = v34;
  v230 = *(a4 + 64);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
  v35 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v36 = Transaction.effectiveAnimation.getter(v35);
  if (v36)
  {
    v37 = v36;
    LODWORD(v9) = v196;
  }

  else
  {
    LODWORD(v9) = v196;
    if (!a2)
    {

      goto LABEL_121;
    }

    v37 = a2;
  }

  v38 = *(&v229 + 1);
  v39 = v198.f64[0] - *&v207;
  v40 = v198.f64[1] - *(&v207 + 1);
  v41 = v197.f64[0] - v209.f64[0];
  v42 = v197.f64[1] - v209.f64[1];
  v28 = *AGGraphGetValue();
  v199 = a1;
  v202 = a4;
  v193 = v35;
  v194 = v37;
  if (!v38)
  {
    *&v218.f64[0] = &type metadata for UnitRect;
    type metadata accessor for UnitRect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Type, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v60 = swift_dynamicCast();
    if (v60)
    {
      v61 = v222;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = *(&v222 + 1);
    }

    else
    {
      v62 = 0;
    }

    v195 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v63, v35, v61, v62, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, v39, v40, v41, v42, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v65 = CurrentAttribute;
    v66 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v67 = 0;
    }

    else
    {
      v67 = CurrentAttribute;
    }

    LODWORD(v207) = v67;
    (*(*v37 + 96))(&v218);
    v68 = v218;
    v69 = *&v219.f64[0];
    v70 = v220;
    v217 = NAN;
    v216 = NAN;
    v215 = 0x3FF0000000000000;
    v214 = NAN;
    v222 = v218;
    v71 = *&v219.f64[1];
    v223 = v219;
    v224 = v220;
    LODWORD(v211) = v221;
    LOBYTE(v225) = v221;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, &v217, &v216, &v215, &v214);
    v4 = v217;
    v5 = v216;
    v6 = v215;
    v7 = v214;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v72 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      LODWORD(v209.f64[0]) = v66;
      if (v72)
      {
        v73 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v74 = v65 == v66;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v75 = *(v73 + 16);
          LODWORD(v222) = v207;
          BYTE4(v222) = v74;
          *(&v222 + 1) = &type metadata for UnitRect;
          v223.f64[0] = v4;
          v223.f64[1] = v5;
          v224 = v6;
          v225 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v76 = v75;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v68.f64[0], *&v68.f64[1], v69, v71, v70, v211);
        }

        else
        {
          outlined consume of Animation.Function(*&v68.f64[0], *&v68.f64[1], v69, v71, v70, v211);
        }

        a4 = v202;
        LODWORD(v9) = v196;
      }

      else
      {
        outlined consume of Animation.Function(*&v68.f64[0], *&v68.f64[1], v69, v71, v70, v211);
      }

      v116 = one-time initialization token for animationState;

      if (v116 == -1)
      {
        goto LABEL_84;
      }
    }

    swift_once();
LABEL_84:
    v83 = *(&static Signpost.animationState + 1);
    *&v82 = static Signpost.animationState;
    LOBYTE(v47) = word_1ED5283E8;
    LOBYTE(v89) = HIBYTE(word_1ED5283E8);
    v117 = byte_1ED5283EA;
    LODWORD(Counter) = static os_signpost_type_t.begin.getter();
    v222 = __PAIR128__(*&v83, *&v82);
    LOBYTE(v223.f64[0]) = v47;
    BYTE1(v223.f64[0]) = v89;
    BYTE2(v223.f64[0]) = v117;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v129 = v195;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_91;
    }

    v118 = one-time initialization token for _signpostLog;

    if (v118 != -1)
    {
      goto LABEL_196;
    }

    goto LABEL_86;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v222) = 0;
  v43.n128_f64[0] = v39;
  v44.n128_f64[0] = v40;
  v45.n128_f64[0] = v41;
  v195 = v38;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v37, v35, LODWORD(v9), v43, v44, v45, v42, v28);
  v46 = AGGraphGetCurrentAttribute();
  LODWORD(v47) = v46;
  LODWORD(v209.f64[0]) = *MEMORY[0x1E698D3F8];
  if (v46 == LODWORD(v209.f64[0]))
  {
    LODWORD(v9) = 0;
  }

  else
  {
    LODWORD(v9) = v46;
  }

  (*(*v37 + 96))(&v218);
  v49 = *&v218.f64[1];
  v48 = *&v218.f64[0];
  a1 = *&v219.f64[1];
  v50 = *&v219.f64[0];
  v51 = v220;
  v52 = v221;
  v217 = NAN;
  v216 = NAN;
  v215 = 0x3FF0000000000000;
  v214 = NAN;
  v222 = v218;
  v223 = v219;
  v224 = v220;
  LOBYTE(v225) = v221;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, &v217, &v216, &v215, &v214);
  v4 = v217;
  v5 = v216;
  v6 = v215;
  v7 = v214;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v53 = LODWORD(v9);
        v54 = v51;
        v55 = static CustomEventTrace.recorder;
        v56 = LODWORD(v209.f64[0]);
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v208) = v52;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v57 = *(v55 + 16);
          LODWORD(v222) = v53;
          BYTE4(v222) = v47 == v56;
          *(&v222 + 1) = &type metadata for UnitRect;
          v223.f64[0] = v4;
          v223.f64[1] = v5;
          v224 = v6;
          v225 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          *&v207 = v58;

          v59 = v57;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v48, v49, v50, a1, v54, v208);

          goto LABEL_44;
        }

        v77 = v48;
        v78 = v49;
        v79 = v50;
        v80 = a1;
        v81 = v54;
      }

      else
      {
        v77 = v48;
        v78 = v49;
        v79 = v50;
        v80 = a1;
        v81 = v51;
      }

      outlined consume of Animation.Function(v77, v78, v79, v80, v81, v52);
LABEL_44:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_191;
    }

    __break(1u);
LABEL_191:
    swift_once();
LABEL_45:
    v82 = *(&static Signpost.animationState + 1);
    *&v9 = static Signpost.animationState;
    *&v83 = word_1ED5283E8;
    v84 = HIBYTE(word_1ED5283E8);
    v85 = byte_1ED5283EA;
    LODWORD(Counter) = static os_signpost_type_t.event.getter();
    v222 = __PAIR128__(*&v82, *&v9);
    LOBYTE(v223.f64[0]) = LOBYTE(v83);
    BYTE1(v223.f64[0]) = v84;
    BYTE2(v223.f64[0]) = v85;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
LABEL_53:
      a4 = v202;
      LODWORD(v9) = v196;
      goto LABEL_120;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v208) = Counter;
    v87 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_18DDAF080;
    v88 = AGGraphGetCurrentAttribute();
    v89 = LODWORD(v209.f64[0]);
    if (v88 == LODWORD(v209.f64[0]))
    {
      __break(1u);
    }

    else
    {
      v90 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v91 = MEMORY[0x1E69E6870];
      *(v47 + 56) = MEMORY[0x1E69E6810];
      *(v47 + 64) = v91;
      *(v47 + 32) = Counter;
      v92 = AGGraphGetCurrentAttribute();
      if (v92 != v89)
      {
        v93 = MEMORY[0x1E69E76D0];
        *(v47 + 96) = MEMORY[0x1E69E7668];
        *(v47 + 104) = v93;
        *(v47 + 72) = v92;
        *(v47 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v47 + 144) = v94;
        *(v47 + 112) = 0x7463655274696E55;
        *(v47 + 120) = 0xE800000000000000;
        if ((v84 & 1) == 0)
        {
          if (LOBYTE(v9) == 20)
          {
            v96 = 3;
          }

          else
          {
            v96 = 4;
          }

          a4 = bswap32(LOWORD(v9)) | (4 * HIWORD(LODWORD(v9)));
          v97 = v208;
          v51 = (v210 + 16);
          v200 = *(v210 + 16);
          v98 = v200(v211, v192, v213);
          v99 = 0;
          LOBYTE(v218.f64[0]) = 1;
          *&v209.f64[0] = v96;
          v206 = 16 * v96;
          v201 = v51;
          *&v207 = v51 - 8;
          v205 = v47 + 32;
          v204 = LOBYTE(v9);
          do
          {
            v208 = &v191;
            MEMORY[0x1EEE9AC00](v98);
            a1 = &v191 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v9 = a1 + 8;
            v102 = v209.f64[0];
            v103 = (a1 + 8);
            do
            {
              *(v103 - 1) = 0;
              *v103 = 0;
              v103 += 16;
              --*&v102;
            }

            while (v102 != 0.0);
            v104 = v205 + 40 * v99;
            v105 = v209.f64[0];
            while (1)
            {
              v106 = *(v47 + 16);
              if (v99 == v106)
              {
                break;
              }

              if (v99 >= v106)
              {
                goto LABEL_180;
              }

              ++v99;
              outlined init with copy of AnyTrackedValue(v104, &v222);
              v107 = v223.f64[1];
              v108 = v224;
              v109 = __swift_project_boxed_opaque_existential_1(&v222, *&v223.f64[1]);
              v110 = *&v107;
              v51 = v109;
              *(*&v9 - 8) = CVarArg.kdebugValue(_:)(a4 | v97, v110, v108);
              **&v9 = v111 & 1;
              *&v9 += 16;
              v100 = __swift_destroy_boxed_opaque_existential_1(&v222);
              v104 += 40;
              --*&v105;
              if (v105 == 0.0)
              {
                goto LABEL_66;
              }
            }

            LOBYTE(v218.f64[0]) = 0;
LABEL_66:
            v112 = v204;
            if (v204 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v112 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = *v207;
            v51 = v211;
            v113 = v213;
            (*v207)(v211, v213);
            v114 = __swift_project_value_buffer(v113, static OSSignpostID.continuation);
            v98 = v200(v51, v114, v113);
          }

          while ((LOBYTE(v218.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
          v115 = v213;
          (*&v9)(v211, v213);
          (*&v9)(v192, v115);

          a4 = v202;
          LODWORD(v9) = v196;
          goto LABEL_120;
        }

        LOBYTE(v214) = v208;
        v217 = COERCE_DOUBLE(&dword_18D018000);
        v216 = v87;
        *&v222 = v9;
        *(&v222 + 1) = v82;
        LOBYTE(v223.f64[0]) = LOBYTE(v83);
        *&v218.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v218.f64[1] = 39;
        LOBYTE(v219.f64[0]) = 2;
        v215 = v47;
        v95 = v192;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v214, &v217, &v216, &v222, v192, &v218, &v215);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
        (*(v210 + 8))(v95, v213);

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_86:
    LODWORD(v211) = Counter;
    v119 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    v120 = AGGraphGetCurrentAttribute();
    v121 = LODWORD(v209.f64[0]);
    if (v120 == LODWORD(v209.f64[0]))
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v122 = AGGraphGetAttributeGraph();
    v123 = AGGraphGetCounter();

    v124 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v124;
    *(a4 + 32) = v123;
    v125 = AGGraphGetCurrentAttribute();
    if (v125 == v121)
    {
      goto LABEL_198;
    }

    v126 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v126;
    *(a4 + 72) = v125;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v127;
    *(a4 + 112) = 0x7463655274696E55;
    *(a4 + 120) = 0xE800000000000000;
    if (v89)
    {
      LOBYTE(v214) = v211;
      v217 = COERCE_DOUBLE(&dword_18D018000);
      v216 = v119;
      *&v222 = v82;
      *(&v222 + 1) = v83;
      LOBYTE(v223.f64[0]) = v47;
      *&v218.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v218.f64[1] = 39;
      LOBYTE(v219.f64[0]) = 2;
      v215 = a4;
      v128 = v191;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v214, &v217, &v216, &v222, v191, &v218, &v215);
      v129 = v195;

      (*(v210 + 8))(v128, v213);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v202;
LABEL_91:
      *(a4 + 56) = v129;
    }

    else
    {
      v130 = LOBYTE(v82);
      v131 = LOBYTE(v82) == 20 ? 3 : 4;
      v132 = bswap32(LOWORD(v82)) | (4 * HIWORD(LODWORD(v82)));
      v97 = v211;
      v51 = (v210 + 16);
      v200 = *(v210 + 16);
      v133 = v200(v208, v191, v213);
      v9 = 0.0;
      LOBYTE(v218.f64[0]) = 1;
      v211 = v131;
      v206 = 16 * v131;
      v201 = v51;
      *&v207 = v51 - 8;
      v205 = a4 + 32;
      v204 = v130;
      do
      {
        *&v209.f64[0] = &v191;
        MEMORY[0x1EEE9AC00](v133);
        a1 = &v191 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
        v135 = (a1 + 8);
        v136 = v211;
        v137 = (a1 + 8);
        do
        {
          *(v137 - 1) = 0;
          *v137 = 0;
          v137 += 16;
          v136 = (v136 - 1);
        }

        while (v136);
        v138 = v205 + 40 * *&v9;
        v47 = v211;
        while (1)
        {
          v139 = *(a4 + 16);
          if (*&v9 == v139)
          {
            break;
          }

          if (*&v9 >= v139)
          {
            goto LABEL_181;
          }

          ++*&v9;
          outlined init with copy of AnyTrackedValue(v138, &v222);
          v140 = v223.f64[1];
          v141 = v224;
          v142 = __swift_project_boxed_opaque_existential_1(&v222, *&v223.f64[1]);
          v143 = *&v140;
          v51 = v142;
          *(v135 - 1) = CVarArg.kdebugValue(_:)(v132 | v97, v143, v141);
          *v135 = v144 & 1;
          v135 += 16;
          v100 = __swift_destroy_boxed_opaque_existential_1(&v222);
          v138 += 40;
          if (!--v47)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v218.f64[0]) = 0;
LABEL_104:
        v145 = v204;
        if (v204 == 20)
        {
          v146 = v208;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v146 = v208;
        }

        if (*(a1 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a1 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v145 != 20 && *(a1 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v147 = *v207;
        v51 = v213;
        (*v207)(v146, v213);
        v148 = __swift_project_value_buffer(v51, static OSSignpostID.continuation);
        v133 = v200(v146, v148, v51);
      }

      while ((LOBYTE(v218.f64[0]) & 1) != 0);
      *&v9 = v195;

      v149 = v213;
      v147(v146, v213);
      v147(v191, v149);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect, &type metadata for UnitRect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v202;
      *(v202 + 56) = v9;
      LODWORD(v9) = v196;
    }

LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v193);

    a1 = v199;
LABEL_121:
    v30 = v198;
    v31 = v197;
LABEL_122:
    *(a4 + 16) = v30;
    *(a4 + 32) = v31;
    *(a4 + 48) = 0;
LABEL_123:
    v47 = *(a4 + 56);
    if (!v47)
    {
      return;
    }

    v150 = vdupq_n_s64(0x4060000000000000uLL);
    v151 = vmulq_f64(*a1, v150);
    v152 = vmulq_f64(*(a1 + 16), v150);
    v222 = v151;
    v223 = v152;

    LOBYTE(v226) = 0;
    v153 = specialized AnimatorState.update(_:at:environment:)(&v222, LODWORD(v9), v28);
    v100 = AGGraphGetCurrentAttribute();
    LODWORD(v9) = *MEMORY[0x1E698D3F8];
    if (v100 == *MEMORY[0x1E698D3F8])
    {
      v97 = 0;
    }

    else
    {
      v97 = v100;
    }

    v51 = &type metadata instantiation cache for TupleTypeDescription;
    if (v153)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_184;
    }

LABEL_142:
    v165 = *(v51 + 77);
    if (*(v165 + 16) >= 0x43uLL)
    {
      if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v226) = v97;
        BYTE4(v226) = v100 == LODWORD(v9);
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_177;
    }

    __break(1u);
LABEL_186:
    swift_once();
LABEL_134:
    v50 = *(&static Signpost.animationState + 1);
    v156 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v157 = HIBYTE(word_1ED5283E8);
    v158 = byte_1ED5283EA;
    v49 = static os_signpost_type_t.end.getter();
    v226 = __PAIR128__(v50, v156);
    LOBYTE(v227) = v52;
    BYTE1(v227) = v157;
    BYTE2(v227) = v158;
    v51 = &v226;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    v159 = one-time initialization token for _signpostLog;

    if (v159 != -1)
    {
      swift_once();
    }

    v199 = a1;
    *&v48 = COERCE_DOUBLE(_signpostLog);
    v201 = v47;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != LODWORD(v9))
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    swift_once();
  }

  v51 = AGGraphGetAttributeGraph();
  a1 = AGGraphGetCounter();

  v160 = MEMORY[0x1E69E6870];
  *(v47 + 56) = MEMORY[0x1E69E6810];
  *(v47 + 64) = v160;
  *(v47 + 32) = a1;
  v161 = AGGraphGetCurrentAttribute();
  if (v161 == LODWORD(v9))
  {
    goto LABEL_188;
  }

  v162 = MEMORY[0x1E69E76D0];
  *(v47 + 96) = MEMORY[0x1E69E7668];
  *(v47 + 104) = v162;
  *(v47 + 72) = v161;
  *(v47 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v47 + 144) = v163;
  *(v47 + 112) = 0x7463655274696E55;
  *(v47 + 120) = 0xE800000000000000;
  if (v157)
  {
    LOBYTE(v214) = v49;
    v217 = COERCE_DOUBLE(&dword_18D018000);
    v216 = *&v48;
    *&v226 = v156;
    *(&v226 + 1) = v50;
    LOBYTE(v227) = v52;
    *&v218.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v218.f64[1] = 37;
    LOBYTE(v219.f64[0]) = 2;
    v215 = v47;
    v164 = v203;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v214, &v217, &v216, &v226, v203, &v218, &v215);

    (*(v210 + 8))(v164, v213);
    goto LABEL_175;
  }

  v166 = v156;
  if (v156 == 20)
  {
    v167 = 3;
  }

  else
  {
    v167 = 4;
  }

  LODWORD(v9) = bswap32(v156) | (4 * WORD1(v156));
  v97 = v49;
  v168 = v210 + 16;
  v204 = *(v210 + 16);
  v169 = v204(v212, v203, v213);
  v170 = 0;
  LOBYTE(v218.f64[0]) = 1;
  v208 = (16 * v167);
  v210 = v168;
  *&v209.f64[0] = v168 - 8;
  *&v207 = v47 + 32;
  v206 = v166;
  v205 = v167;
  do
  {
    v211 = &v191;
    MEMORY[0x1EEE9AC00](v169);
    a1 = &v191 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
    a4 = a1 + 8;
    v172 = v167;
    v173 = (a1 + 8);
    do
    {
      *(v173 - 1) = 0;
      *v173 = 0;
      v173 += 16;
      --v172;
    }

    while (v172);
    v174 = v207 + 40 * v170;
    while (1)
    {
      v175 = *(v47 + 16);
      if (v170 == v175)
      {
        break;
      }

      if (v170 >= v175)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v189 = v100;
        swift_once();
        v100 = v189;
LABEL_129:
        v154 = *(v51 + 77);
        if (*(v154 + 16) >= 0x43uLL)
        {
          if (*(v154 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v226) = v97;
            BYTE4(v226) = v100 == LODWORD(v9);
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v202 = a4;
          v155 = one-time initialization token for animationState;

          if (v155 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v190 = v100;
        swift_once();
        v100 = v190;
        goto LABEL_142;
      }

      ++v170;
      outlined init with copy of AnyTrackedValue(v174, &v226);
      v176 = *(&v227 + 1);
      v177 = v228;
      v178 = __swift_project_boxed_opaque_existential_1(&v226, *(&v227 + 1));
      v179 = v176;
      v51 = v178;
      *(a4 - 8) = CVarArg.kdebugValue(_:)(LODWORD(v9) | v97, v179, v177);
      *a4 = v180 & 1;
      a4 += 16;
      v100 = __swift_destroy_boxed_opaque_existential_1(&v226);
      v174 += 40;
      if (!--v167)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v218.f64[0]) = 0;
LABEL_160:
    v181 = v206;
    if (v206 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v181 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v182 = **&v209.f64[0];
    v183 = v212;
    v51 = v213;
    (**&v209.f64[0])(v212, v213);
    v184 = __swift_project_value_buffer(v51, static OSSignpostID.continuation);
    v169 = v204(v183, v184, v51);
    v167 = v205;
  }

  while ((LOBYTE(v218.f64[0]) & 1) != 0);

  v185 = v213;
  v182(v212, v213);
  v182(v203, v185);
LABEL_175:

  a1 = v199;
LABEL_176:
  specialized AnimatorState.removeListeners()();

  *(v202 + 56) = 0;
LABEL_177:
  v186 = vdupq_n_s64(0x3F80000000000000uLL);
  v187 = vmulq_f64(v222, v186);
  v188 = vmulq_f64(v223, v186);
  *a1 = v187;
  *(a1 + 16) = v188;
  *(a1 + 32) = 1;
}

{
  LODWORD(Counter) = a3;
  v223 = *MEMORY[0x1E69E9840];
  v205 = type metadata accessor for OSSignpostID();
  v201 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v15 = (v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = v185 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v203 = (v185 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v185 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v204 = v185 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v195 = v185 - v27;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v29)
    {
      v30 = *Value;
    }

    else
    {
      v30 = -INFINITY;
    }
  }

  else
  {
    v30 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_127;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v31 = *(a1 + 24);
  if (*(a4 + 48))
  {
    goto LABEL_126;
  }

  v32 = v30;
  v4 = *(a4 + 32);
  v33 = *(a4 + 40);
  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  if (v7 != v6 || v8 != v5 || v9 != v4 || v31 != v33)
  {
    v202 = v15;
    v190 = v31;
    AGGraphClearUpdate();
    v34 = *(a4 + 16);
    v218 = *a4;
    v219 = v34;
    v35 = *(a4 + 48);
    v220 = *(a4 + 32);
    v221 = v35;
    v222 = *(a4 + 64);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v218, &v214, type metadata accessor for AnimatableAttributeHelper<CGRect>);
    v36 = *AGGraphGetValue();

    outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
    AGGraphSetUpdate();
    v37 = Transaction.effectiveAnimation.getter(v36);
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      if (!a2)
      {

        v30 = v32;
        goto LABEL_125;
      }

      v38 = a2;
    }

    v194 = a4;
    v39 = *(&v221 + 1);
    v40 = v7 - v6;
    v41 = v8 - v5;
    v42 = v9 - v4;
    v43 = v190 - v33;
    v44 = *AGGraphGetValue();
    v193 = a1;
    v187 = Counter;
    v188 = v44;
    v186 = v36;
    v185[1] = v38;
    if (v39)
    {
      v185[0] = v23;
      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v218, &v214, type metadata accessor for AnimatableAttributeHelper<CGRect>);
      LOBYTE(v214.f64[0]) = 0;
      v45.n128_f64[0] = v40;
      v46.n128_f64[0] = v41;
      v47.n128_f64[0] = v42;
      v189 = v39;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v38, v36, Counter, v45, v46, v47, v43, v44);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v23) = CurrentAttribute;
      LODWORD(v202) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == v202)
      {
        v49 = 0;
      }

      else
      {
        v49 = CurrentAttribute;
      }

      LODWORD(v199) = v49;
      type metadata accessor for CGRect(0);
      v198 = v50;
      (*(*v38 + 96))(&v210);
      v51 = *&v210.f64[1];
      v52 = *&v210.f64[0];
      v53 = v213;
      v209 = NAN;
      v208 = NAN;
      *&v207 = 1.0;
      v206 = NAN;
      v214 = v210;
      v54 = v211;
      v215 = v211;
      v55 = *(&v211 + 1);
      v200 = v212;
      v216 = *&v212;
      LOBYTE(v217) = v213;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v214, &v209, &v208, &v207, &v206);
      v30 = v209;
      v4 = v208;
      v5 = *&v207;
      v6 = v206;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_193;
      }

      goto LABEL_24;
    }

    v185[0] = v18;
    type metadata accessor for CGRect(0);
    v62 = v61;
    v210.f64[0] = v61;
    type metadata accessor for CGRect.Type(0, &lazy cache variable for type metadata for CGRect.Type, type metadata accessor for CGRect);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v63 = swift_dynamicCast();
    if (v63)
    {
      v64 = *&v214.f64[0];
    }

    else
    {
      v64 = 0;
    }

    if (v63)
    {
      v65 = *&v214.f64[1];
    }

    else
    {
      v65 = 0;
    }

    v189 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v66, v36, v64, v65, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v40, v41, v42, v43, v44);
    v67 = AGGraphGetCurrentAttribute();
    v68 = v67;
    LODWORD(v69) = *MEMORY[0x1E698D3F8];
    if (v67 == *MEMORY[0x1E698D3F8])
    {
      v70 = 0;
    }

    else
    {
      v70 = v67;
    }

    LODWORD(v200) = v70;
    (*(*v38 + 96))(&v210);
    v71 = *&v210.f64[1];
    a1 = *&v210.f64[0];
    v72 = v211;
    v73 = v212;
    v209 = NAN;
    v208 = NAN;
    *&v207 = 1.0;
    v206 = NAN;
    v214 = v210;
    v215 = v211;
    v216 = *&v212;
    LODWORD(v203) = v213;
    LOBYTE(v217) = v213;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v214, &v209, &v208, &v207, &v206);
    v30 = v209;
    v4 = v208;
    v5 = *&v207;
    v6 = v206;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_197;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v199 = v73;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v74 = *(*(&v72 + 1) + 16);
        LODWORD(v214.f64[0]) = v200;
        BYTE4(v214.f64[0]) = v68 == LODWORD(v69);
        v214.f64[1] = v62;
        *&v215 = v30;
        *(&v215 + 1) = v4;
        v216 = v5;
        v217 = v6;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v200 = v75;

        v76 = v74;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(a1, v71, v72, *(&v72 + 1), v199, v203);

        goto LABEL_87;
      }

      v77 = a1;
      v78 = v71;
      v80 = *(&v72 + 1);
      v79 = v72;
    }

    else
    {
      v77 = a1;
      v78 = v71;
      v80 = *(&v72 + 1);
      v79 = v72;
    }

    outlined consume of Animation.Function(v77, v78, v79, v80, v73, v203);
LABEL_87:
    v115 = one-time initialization token for animationState;

    a1 = v193;
    v30 = v188;
    if (v115 == -1)
    {
LABEL_88:
      v82 = *(&static Signpost.animationState + 1);
      *&v81 = static Signpost.animationState;
      LOBYTE(Counter) = word_1ED5283E8;
      v85 = HIBYTE(word_1ED5283E8);
      v116 = byte_1ED5283EA;
      LOBYTE(v23) = static os_signpost_type_t.begin.getter();
      v214 = __PAIR128__(*&v82, *&v81);
      LOBYTE(v215) = Counter;
      BYTE1(v215) = v85;
      BYTE2(v215) = v116;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v127 = v189;

        outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
        a4 = v194;
        *(v194 + 56) = v127;
        goto LABEL_123;
      }

      v117 = one-time initialization token for _signpostLog;

      if (v117 != -1)
      {
        goto LABEL_200;
      }

      goto LABEL_90;
    }

LABEL_197:
    swift_once();
    goto LABEL_88;
  }

  v30 = v32;
LABEL_126:
  while (1)
  {
    *(a4 + 16) = v7;
    *(a4 + 24) = v8;
    *(a4 + 32) = v9;
    *(a4 + 40) = v31;
    *(a4 + 48) = 0;
LABEL_127:
    v23 = *(a4 + 56);
    if (*&v23 == 0.0)
    {
      return;
    }

    v194 = a4;
    v148 = *(a1 + 16);
    v214 = *a1;
    v215 = v148;

    LOBYTE(v218) = 0;
    v149 = specialized AnimatorState.update(_:at:environment:)(&v214, Counter, v30);
    v99 = AGGraphGetCurrentAttribute();
    v54 = *MEMORY[0x1E698D3F8];
    if (v99 == v54)
    {
      v95 = 0;
    }

    else
    {
      v95 = v99;
    }

    v98 = &type metadata instantiation cache for TupleTypeDescription;
    if (v149)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_186;
      }

      goto LABEL_133;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_188;
    }

LABEL_146:
    v162 = *(v98 + 616);
    if (*(v162 + 16) >= 0x43uLL)
    {
      if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v218) = v95;
        BYTE4(v218) = v99 == v54;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_181;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_138:
    v153 = *(&static Signpost.animationState + 1);
    v152 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v154 = HIBYTE(word_1ED5283E8);
    v155 = byte_1ED5283EA;
    v53 = static os_signpost_type_t.end.getter();
    v218 = __PAIR128__(v153, v152);
    LOBYTE(v219) = v52;
    BYTE1(v219) = v154;
    BYTE2(v219) = v155;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_180;
    }

    v156 = one-time initialization token for _signpostLog;

    if (v156 != -1)
    {
      swift_once();
    }

    *&v51 = COERCE_DOUBLE(_signpostLog);
    v192 = v23;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v55 = COERCE_DOUBLE(swift_allocObject());
    *(v55 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v54)
    {
      break;
    }

    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_49;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v56 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v57 = v23 == v202;
        LODWORD(v197) = v53;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v58 = *(v56 + 16);
        LODWORD(v214.f64[0]) = v199;
        BYTE4(v214.f64[0]) = v57;
        *&v214.f64[1] = v198;
        *&v215 = v30;
        *(&v215 + 1) = v4;
        v216 = v5;
        v217 = v6;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v199 = v59;

        v60 = v58;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v52, v51, v54, v55, v200, v197);
      }

      else
      {
        outlined consume of Animation.Function(v52, v51, v54, v55, v200, v53);
      }

      LODWORD(Counter) = v187;
    }

    else
    {
      outlined consume of Animation.Function(v52, v51, v54, v55, v200, v53);
    }

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v218, &v214, type metadata accessor for AnimatableAttributeHelper<CGRect>);
    v30 = v188;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_195;
    }

LABEL_49:
    v69 = *(&static Signpost.animationState + 1);
    *&v81 = static Signpost.animationState;
    *&v82 = word_1ED5283E8;
    v83 = HIBYTE(word_1ED5283E8);
    v84 = byte_1ED5283EA;
    v85 = static os_signpost_type_t.event.getter();
    v214 = __PAIR128__(*&v69, *&v81);
    LOBYTE(v215) = LOBYTE(v82);
    BYTE1(v215) = v83;
    BYTE2(v215) = v84;
    if (Signpost.isEnabled.getter())
    {
      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v218, &v214, type metadata accessor for AnimatableAttributeHelper<CGRect>);
      if (one-time initialization token for _signpostLog != -1)
      {
        swift_once();
      }

      v86 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v23 = COERCE_DOUBLE(swift_allocObject());
      *(v23 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v202)
      {
        __break(1u);
      }

      else
      {
        v87 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v88 = MEMORY[0x1E69E6870];
        *(v23 + 56) = MEMORY[0x1E69E6810];
        *(v23 + 64) = v88;
        *(v23 + 32) = Counter;
        v89 = AGGraphGetCurrentAttribute();
        if (v89 != v202)
        {
          v90 = MEMORY[0x1E69E76D0];
          *(v23 + 96) = MEMORY[0x1E69E7668];
          *(v23 + 104) = v90;
          *(v23 + 72) = v89;
          *(v23 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v23 + 144) = v91;
          *(v23 + 112) = 0x746365524743;
          *(v23 + 120) = 0xE600000000000000;
          if (v83)
          {
            LOBYTE(v206) = v85;
            v209 = COERCE_DOUBLE(&dword_18D018000);
            v208 = v86;
            v214.f64[0] = v81;
            v214.f64[1] = v69;
            LOBYTE(v215) = LOBYTE(v82);
            *&v210.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
            *&v210.f64[1] = 39;
            LOBYTE(v211) = 2;
            v207 = v23;
            v92 = v185[0];
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v206, &v209, &v208, &v214, v185[0], &v210, &v207);
            outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
            outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
            (*(v201 + 8))(v92, v205);
          }

          else
          {
            v93 = LOBYTE(v81);
            if (LOBYTE(v81) == 20)
            {
              v94 = 3;
            }

            else
            {
              v94 = 4;
            }

            a1 = bswap32(LOWORD(v81)) | (4 * HIWORD(LODWORD(v81)));
            v95 = v85;
            v96 = v201 + 16;
            v191 = *(v201 + 16);
            v97 = v191(v203, v185[0], v205);
            v98 = 0;
            LOBYTE(v210.f64[0]) = 1;
            v202 = v94;
            v198 = 16 * v94;
            v192 = v96;
            v199 = (v96 - 8);
            v197 = v23 + 32;
            v196 = v93;
            do
            {
              v200 = v185;
              MEMORY[0x1EEE9AC00](v97);
              Counter = v185 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
              v101 = Counter + 8;
              v102 = v202;
              v103 = Counter + 8;
              do
              {
                *(v103 - 1) = 0;
                *v103 = 0;
                v103 += 16;
                v102 = (v102 - 1);
              }

              while (v102);
              v104 = v197 + 40 * v98;
              v54 = v202;
              while (1)
              {
                v105 = *(v23 + 16);
                if (v98 == v105)
                {
                  break;
                }

                if (v98 >= v105)
                {
                  goto LABEL_184;
                }

                ++v98;
                outlined init with copy of AnyTrackedValue(v104, &v214);
                v106 = *(&v215 + 1);
                v107 = *&v216;
                __swift_project_boxed_opaque_existential_1(&v214, *(&v215 + 1));
                *(v101 - 1) = CVarArg.kdebugValue(_:)(a1 | v95, v106, v107);
                *v101 = v108 & 1;
                v101 += 16;
                v99 = __swift_destroy_boxed_opaque_existential_1(&v214);
                v104 += 40;
                if (!--v54)
                {
                  goto LABEL_69;
                }
              }

              LOBYTE(v210.f64[0]) = 0;
LABEL_69:
              v109 = v196;
              if (v196 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (Counter[8] == 1)
              {
                kdebug_trace_string();
              }

              if (Counter[24] == 1)
              {
                kdebug_trace_string();
              }

              if (Counter[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v109 != 20 && Counter[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v110 = *v199;
              v111 = v203;
              v112 = v205;
              (*v199)(v203, v205);
              v113 = __swift_project_value_buffer(v112, static OSSignpostID.continuation);
              v97 = v191(v111, v113, v112);
            }

            while ((LOBYTE(v210.f64[0]) & 1) != 0);
            outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
            outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
            v114 = v205;
            v110(v203, v205);
            v110(v185[0], v114);
          }

          a1 = v193;
          a4 = v194;
          LODWORD(Counter) = v187;
          goto LABEL_124;
        }
      }

      __break(1u);
LABEL_200:
      swift_once();
LABEL_90:
      v118 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&a1 = COERCE_DOUBLE(swift_allocObject());
      *(a1 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == LODWORD(v69))
      {
        __break(1u);
LABEL_202:
        __break(1u);
      }

      v119 = AGGraphGetAttributeGraph();
      v120 = AGGraphGetCounter();

      v121 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v121;
      *(a1 + 32) = v120;
      v122 = AGGraphGetCurrentAttribute();
      if (v122 == LODWORD(v69))
      {
        goto LABEL_202;
      }

      v123 = MEMORY[0x1E69E76D0];
      *(a1 + 96) = MEMORY[0x1E69E7668];
      *(a1 + 104) = v123;
      *(a1 + 72) = v122;
      *(a1 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 144) = v124;
      *(a1 + 112) = 0x746365524743;
      *(a1 + 120) = 0xE600000000000000;
      v125 = v185[0];
      if (v85)
      {
        LOBYTE(v206) = v23;
        v209 = COERCE_DOUBLE(&dword_18D018000);
        v208 = v118;
        v214.f64[0] = v81;
        v214.f64[1] = v82;
        LOBYTE(v215) = Counter;
        *&v210.f64[0] = "Animation: (%p) [%d] %{public}@ started";
        *&v210.f64[1] = 39;
        LOBYTE(v211) = 2;
        v207 = a1;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v206, &v209, &v208, &v214, v185[0], &v210, &v207);
        v126 = v189;

        (*(v201 + 8))(v125, v205);

        outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
        a4 = v194;
        *(v194 + 56) = v126;
      }

      else
      {
        v128 = LOBYTE(v81);
        v129 = v23;
        if (LOBYTE(v81) == 20)
        {
          v23 = 3;
        }

        else
        {
          v23 = 4;
        }

        LODWORD(Counter) = bswap32(LOWORD(v81)) | (4 * HIWORD(LODWORD(v81)));
        v95 = v129;
        v130 = v201 + 16;
        v191 = *(v201 + 16);
        v131 = v191(v202, v185[0], v205);
        v98 = 0;
        LOBYTE(v210.f64[0]) = 1;
        v199 = (16 * v23);
        v192 = v130;
        v200 = (v130 - 8);
        v198 = a1 + 32;
        v196 = v128;
        v197 = v23;
        do
        {
          v203 = v185;
          MEMORY[0x1EEE9AC00](v131);
          v133 = v185 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
          v54 = (v133 + 8);
          v134 = v23;
          v135 = v133 + 8;
          do
          {
            *(v135 - 1) = 0;
            *v135 = 0;
            v135 += 16;
            --v134;
          }

          while (v134);
          v136 = v198 + 40 * v98;
          while (1)
          {
            v137 = *(a1 + 16);
            if (v98 == v137)
            {
              break;
            }

            if (v98 >= v137)
            {
              goto LABEL_185;
            }

            ++v98;
            outlined init with copy of AnyTrackedValue(v136, &v214);
            v138 = *(&v215 + 1);
            v139 = *&v216;
            __swift_project_boxed_opaque_existential_1(&v214, *(&v215 + 1));
            *(v54 - 8) = CVarArg.kdebugValue(_:)(Counter | v95, v138, v139);
            *v54 = v140 & 1;
            v54 += 16;
            v99 = __swift_destroy_boxed_opaque_existential_1(&v214);
            v136 += 40;
            --v23;
            if (*&v23 == 0.0)
            {
              goto LABEL_107;
            }
          }

          LOBYTE(v210.f64[0]) = 0;
LABEL_107:
          v141 = v196;
          if (v196 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v23 = v197;
          if (v133[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v133[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v133[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v141 != 20 && v133[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v142 = *v200;
          v143 = v202;
          v144 = v205;
          (*v200)(v202, v205);
          v145 = __swift_project_value_buffer(v144, static OSSignpostID.continuation);
          v131 = v191(v143, v145, v144);
        }

        while ((LOBYTE(v210.f64[0]) & 1) != 0);
        v146 = v189;

        v147 = v205;
        v142(v202, v205);
        v142(v185[0], v147);

        outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
        a4 = v194;
        *(v194 + 56) = v146;
      }

      a1 = v193;
LABEL_123:
      LODWORD(Counter) = v187;
    }

    else
    {
      outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
      outlined destroy of Slice<IndexSet>(&v218, type metadata accessor for AnimatableAttributeHelper<CGRect>);
      a1 = v193;
      a4 = v194;
    }

LABEL_124:
    specialized AnimatorState.addListeners(transaction:)(v186);

LABEL_125:
    v31 = v190;
  }

  *&v23 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
  Counter = AGGraphGetCounter();

  v157 = MEMORY[0x1E69E6870];
  *(v55 + 56) = MEMORY[0x1E69E6810];
  *(v55 + 64) = v157;
  *(v55 + 32) = Counter;
  v158 = AGGraphGetCurrentAttribute();
  if (v158 == v54)
  {
    goto LABEL_192;
  }

  v159 = MEMORY[0x1E69E76D0];
  *(v55 + 96) = MEMORY[0x1E69E7668];
  *(v55 + 104) = v159;
  *(v55 + 72) = v158;
  *(v55 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 144) = v160;
  *(v55 + 112) = 0x746365524743;
  *(v55 + 120) = 0xE600000000000000;
  if (v154)
  {
    LOBYTE(v206) = v53;
    v209 = COERCE_DOUBLE(&dword_18D018000);
    v208 = *&v51;
    *&v218 = v152;
    *(&v218 + 1) = v153;
    LOBYTE(v219) = v52;
    *&v210.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v210.f64[1] = 37;
    LOBYTE(v211) = 2;
    v207 = v55;
    v161 = v195;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v206, &v209, &v208, &v218, v195, &v210, &v207);

    (*(v201 + 8))(v161, v205);
    goto LABEL_179;
  }

  v163 = v152;
  if (v152 == 20)
  {
    v164 = 3;
  }

  else
  {
    v164 = 4;
  }

  v95 = bswap32(v152) | (4 * WORD1(v152));
  v98 = v53;
  v165 = v201 + 16;
  v196 = *(v201 + 16);
  v166 = v196(v204, v195, v205);
  v167 = 0;
  LOBYTE(v210.f64[0]) = 1;
  v203 = v164;
  v199 = (16 * v164);
  v201 = v165;
  v200 = (v165 - 8);
  v198 = v55 + 32;
  v197 = v163;
  do
  {
    v202 = v185;
    MEMORY[0x1EEE9AC00](v166);
    v23 = v185 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = v23 + 8;
    v169 = v203;
    v170 = (v23 + 8);
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 16;
      v169 = (v169 - 1);
    }

    while (v169);
    Counter = (v198 + 40 * v167);
    v54 = v203;
    while (1)
    {
      v171 = *(v55 + 16);
      if (v167 == v171)
      {
        break;
      }

      if (v167 >= v171)
      {
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        v183 = v99;
        swift_once();
        v99 = v183;
LABEL_133:
        v150 = *(v98 + 616);
        if (*(v150 + 16) >= 0x43uLL)
        {
          if (*(v150 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v218) = v95;
            BYTE4(v218) = v99 == v54;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v193 = a1;
          v151 = one-time initialization token for animationState;

          if (v151 != -1)
          {
            goto LABEL_190;
          }

          goto LABEL_138;
        }

        __break(1u);
LABEL_188:
        v184 = v99;
        swift_once();
        v99 = v184;
        goto LABEL_146;
      }

      ++v167;
      outlined init with copy of AnyTrackedValue(Counter, &v218);
      v172 = *(&v219 + 1);
      v173 = v220;
      __swift_project_boxed_opaque_existential_1(&v218, *(&v219 + 1));
      *(a1 - 8) = CVarArg.kdebugValue(_:)(v95 | v98, v172, v173);
      *a1 = v174 & 1;
      a1 += 16;
      v99 = __swift_destroy_boxed_opaque_existential_1(&v218);
      Counter += 40;
      if (!--v54)
      {
        goto LABEL_164;
      }
    }

    LOBYTE(v210.f64[0]) = 0;
LABEL_164:
    v175 = v197;
    if (v197 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(v23 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v23 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v23 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v175 != 20 && *(v23 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v176 = *v200;
    v177 = v204;
    v178 = v205;
    (*v200)(v204, v205);
    v179 = __swift_project_value_buffer(v178, static OSSignpostID.continuation);
    v166 = v196(v177, v179, v178);
  }

  while ((LOBYTE(v210.f64[0]) & 1) != 0);

  v180 = v205;
  v176(v204, v205);
  v176(v195, v180);
LABEL_179:

LABEL_180:
  v181 = v194;
  specialized AnimatorState.removeListeners()();

  *(v181 + 56) = 0;
  a1 = v193;
LABEL_181:
  v182 = v215;
  *a1 = v214;
  *(a1 + 16) = v182;
  *(a1 + 32) = 1;
}

__CFString *_CAFilterInputKey(int a1)
{
  switch(a1)
  {
    case 1:
      v1 = MEMORY[0x1E6979980];
      goto LABEL_26;
    case 2:
      v1 = MEMORY[0x1E6979988];
      goto LABEL_26;
    case 3:
      v1 = MEMORY[0x1E6979990];
      goto LABEL_26;
    case 4:
      v1 = MEMORY[0x1E6979998];
      goto LABEL_26;
    case 5:
      v1 = MEMORY[0x1E69799C0];
      goto LABEL_26;
    case 6:
      v1 = MEMORY[0x1E69799C8];
      goto LABEL_26;
    case 7:
      v1 = MEMORY[0x1E6979A28];
      goto LABEL_26;
    case 8:
      v2 = @"inputClamp";
      break;
    case 9:
      v2 = @"inputClampPreserveHue";
      break;
    case 10:
      v1 = MEMORY[0x1E6979AA0];
      goto LABEL_26;
    case 11:
      v1 = MEMORY[0x1E6979AC0];
      goto LABEL_26;
    case 12:
      v1 = MEMORY[0x1E6979AC8];
      goto LABEL_26;
    case 13:
      v1 = MEMORY[0x1E6979B38];
      goto LABEL_26;
    case 14:
      v1 = MEMORY[0x1E6979B48];
      goto LABEL_26;
    case 15:
      v2 = @"inputMaskImage";
      break;
    case 16:
      v1 = MEMORY[0x1E6979B78];
      goto LABEL_26;
    case 17:
      v2 = @"inputNormalizeEdgesTransparent";
      break;
    case 18:
      v2 = @"inputPremultipliedAlpha";
      break;
    case 19:
      v1 = MEMORY[0x1E6979B98];
      goto LABEL_26;
    case 20:
      v1 = MEMORY[0x1E6979BA8];
      goto LABEL_26;
    case 21:
      v1 = MEMORY[0x1E6979BB0];
      goto LABEL_26;
    case 22:
      v1 = MEMORY[0x1E6979BF0];
      goto LABEL_26;
    case 23:
      v1 = MEMORY[0x1E6979C10];
      goto LABEL_26;
    case 24:
      v1 = MEMORY[0x1E6979C28];
LABEL_26:
      v2 = *v1;
      break;
    default:
      v2 = @"inputAdaptive";
      break;
  }

  return v2;
}

uint64_t specialized AnimatableAttribute.updateValue()()
{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v5 = *Value;
  v6 = v2;
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v5, 0, *(v0 + 4), (v0 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 12);
  v3 = *(Value + 16);
  v9 = *Value;
  v10 = *(Value + 8);
  v11 = v2;
  v12 = v3;
  v13 = v4 & 1;
  v5 = *(v0 + 4);
  outlined copy of Material.ID(v9, v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v9, 0, v5, v0 + 8);
  if ((v13 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v6 = v9;
    v7 = v10;
    AGGraphSetOutputValue();
  }

  else
  {
    v6 = v9;
    v7 = v10;
  }

  return outlined consume of Material.ID(v6, v7);
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v6[0] = *Value;
  v6[1] = v2;
  v7 = v3 & 1;
  v4 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, v4, (v0 + 8));
  if ((v7 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }
}

{
  v12 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1].i32[0];
  v3 = Value[1].i8[4];
  v4 = Value[1].i8[5];
  v7 = *Value;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v7, 0, *(v0 + 4), (v0 + 8));
  if (v11)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5 = *Value;
  v6 = v2;
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v5, 0, *(v0 + 4), (v0 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v3 = *(Value + 24);
  v6 = *Value;
  v7 = v2;
  v8 = v3;
  v9 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v6, 0, *(v0 + 4), v0 + 8);
  if (v9)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5 = *Value;
  v6 = v2;
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v2;
  *v6 = *(Value + 32);
  *&v6[13] = *(Value + 45);
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v5[2] = Value[2];
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v6[0] = *Value;
  v6[1] = v2;
  v3 = Value[3];
  v6[2] = Value[2];
  v6[3] = v3;
  v7 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v8 = *Value;
  v9 = v2;
  v10 = v3 & 1;
  v4 = *(v0 + 4);
  outlined copy of Material?(v8, v2);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v8, 0, v4, v0 + 8);
  if ((v10 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v5 = v8;
    v6 = v9;
    AGGraphSetOutputValue();
  }

  else
  {
    v5 = v8;
    v6 = v9;
  }

  return outlined consume of Material?(v5, v6);
}

{
  v9 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  memcpy(__dst, Value, 0x154uLL);
  memcpy(__src, Value, 0x154uLL);
  __src[340] = v3 & 1;
  v4 = *(v0 + 4);
  outlined init with copy of GlassEffectShapeModifier(__dst, v6);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__src, 0, v4, v0 + 8);
  if ((__src[340] & 1) != 0 || !AGGraphGetOutputValue())
  {
    memcpy(v6, __src, 0x154uLL);
    AGGraphSetOutputValue();
  }

  memcpy(v6, __src, 0x155uLL);
  return outlined destroy of (value: GlassEffectShapeModifier, changed: Bool)(v6);
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v5[2] = Value[2];
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), (v0 + 8));
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v6[0] = *Value;
  v6[1] = v2;
  v3 = *(Value + 48);
  v6[2] = *(Value + 32);
  v6[3] = v3;
  v7 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v33 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v4 = Value[3];
  v31[2] = Value[2];
  v31[3] = v4;
  v31[0] = v2;
  v31[1] = v3;
  v5 = Value[4];
  v6 = Value[5];
  v7 = Value[6];
  *(v32 + 12) = *(Value + 108);
  v31[5] = v6;
  v32[0] = v7;
  v31[4] = v5;
  v8 = *Value;
  v9 = Value[1];
  v10 = Value[3];
  v26 = Value[2];
  v27 = v10;
  v24 = v8;
  v25 = v9;
  v11 = Value[4];
  v12 = Value[5];
  v13 = Value[6];
  *&v30[12] = *(Value + 108);
  v29 = v12;
  *v30 = v13;
  v28 = v11;
  v30[28] = v14 & 1;
  v15 = *(v0 + 4);
  outlined init with copy of VariableBlurStyle(v31, &v17);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v24, 0, v15, v0 + 8);
  if ((v30[28] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v21 = v28;
    v22 = v29;
    v23[0] = *v30;
    *(v23 + 12) = *&v30[12];
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    AGGraphSetOutputValue();
  }

  v21 = v28;
  v22 = v29;
  v23[0] = *v30;
  *(v23 + 13) = *&v30[13];
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  return outlined destroy of (value: VariableBlurStyle, changed: Bool)(&v17);
}

{
  v21 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[3];
  v4 = *Value;
  v3 = Value[1];
  v20[2] = Value[2];
  v20[3] = v2;
  v20[0] = v4;
  v20[1] = v3;
  v5 = Value[1];
  v15 = *Value;
  v16 = v5;
  v6 = Value[3];
  v17 = Value[2];
  v18 = v6;
  v19 = v7 & 1;
  v8 = *(v0 + 4);
  outlined init with copy of ViewGeometry(v20, &v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v15, 0, v8, v0 + 8);
  if ((v19 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v10 = v15;
    v11 = v16;
    v12 = v17;
    v13 = v18;
    AGGraphSetOutputValue();
  }

  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  return outlined destroy of (value: ViewGeometry, changed: Bool)(&v10);
}

{
  v20 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v18[0] = *Value;
  v3 = *(Value + 32);
  v2 = *(Value + 48);
  v4 = *(Value + 16);
  v19 = *(Value + 64);
  v18[2] = v3;
  v18[3] = v2;
  v18[1] = v4;
  v5 = *(Value + 48);
  v16 = *(Value + 32);
  *v17 = v5;
  *&v17[16] = *(Value + 64);
  v6 = *(Value + 16);
  v14 = *Value;
  v15 = v6;
  v17[24] = v7 & 1;
  v8 = *(v0 + 4);
  outlined init with copy of MeshGradient._Paint(v18, &v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v14, 0, v8, (v0 + 8));
  if ((v17[24] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v12 = v16;
    *v13 = *v17;
    *&v13[16] = *&v17[16];
    v10 = v14;
    v11 = v15;
    AGGraphSetOutputValue();
  }

  v12 = v16;
  *v13 = *v17;
  *&v13[9] = *&v17[9];
  v10 = v14;
  v11 = v15;
  return outlined destroy of (value: MeshGradient._Paint, changed: Bool)(&v10);
}

{
  v33 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 16);
  v4 = *(Value + 48);
  v31[2] = *(Value + 32);
  v31[3] = v4;
  v31[0] = v2;
  v31[1] = v3;
  v5 = *(Value + 64);
  v6 = *(Value + 80);
  v7 = *(Value + 96);
  v32 = *(Value + 112);
  v31[5] = v6;
  v31[6] = v7;
  v31[4] = v5;
  v8 = *Value;
  v9 = *(Value + 16);
  v10 = *(Value + 48);
  v26 = *(Value + 32);
  v27 = v10;
  v24 = v8;
  v25 = v9;
  v11 = *(Value + 64);
  v12 = *(Value + 80);
  v13 = *(Value + 96);
  *&v30[16] = *(Value + 112);
  v29 = v12;
  *v30 = v13;
  v28 = v11;
  v30[24] = v14 & 1;
  v15 = *(v0 + 4);
  outlined init with copy of _ShapeStyle_Pack.Style(v31, &v17);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v24, 0, v15, v0 + 8);
  if ((v30[24] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v21 = v28;
    v22 = v29;
    *v23 = *v30;
    *&v23[16] = *&v30[16];
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    AGGraphSetOutputValue();
  }

  v21 = v28;
  v22 = v29;
  *v23 = *v30;
  *&v23[9] = *&v30[9];
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  return outlined destroy of (value: _ShapeStyle_Pack.Style, changed: Bool)(&v17);
}

{
  v25 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v23[0] = *Value;
  v23[1] = v2;
  v3 = *(Value + 32);
  v4 = *(Value + 48);
  v5 = *(Value + 64);
  *&v24[14] = *(Value + 78);
  v23[3] = v4;
  *v24 = v5;
  v23[2] = v3;
  v6 = *(Value + 16);
  v18 = *Value;
  v19 = v6;
  v7 = *(Value + 32);
  v8 = *(Value + 48);
  v9 = *(Value + 64);
  *&v22[14] = *(Value + 78);
  v21 = v8;
  *v22 = v9;
  v20 = v7;
  v22[22] = v10 & 1;
  v11 = *(v0 + 4);
  outlined init with copy of _ShapeStyle_Pack.Fill(v23, &v13);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v18, 0, v11, (v0 + 8));
  if ((v22[22] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v15 = v20;
    v16 = v21;
    v17[0] = *v22;
    *(v17 + 14) = *&v22[14];
    v13 = v18;
    v14 = v19;
    AGGraphSetOutputValue();
  }

  v15 = v20;
  v16 = v21;
  v17[0] = *v22;
  *(v17 + 15) = *&v22[15];
  v13 = v18;
  v14 = v19;
  return outlined destroy of (value: _ShapeStyle_Pack.Fill, changed: Bool)(&v13);
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v2;
  *v6 = *(Value + 32);
  *&v6[14] = *(Value + 46);
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v18[0] = *Value;
  v3 = Value[2];
  v2 = Value[3];
  v4 = Value[1];
  *(v19 + 9) = *(Value + 57);
  v18[2] = v3;
  v19[0] = v2;
  v18[1] = v4;
  v5 = Value[3];
  v16 = Value[2];
  *v17 = v5;
  *&v17[9] = *(Value + 57);
  v6 = Value[1];
  v14 = *Value;
  v15 = v6;
  v17[25] = v7 & 1;
  v8 = *(v0 + 4);
  outlined init with copy of _ShapeStyle_Pack.Effect(v18, &v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v14, 0, v8, (v0 + 8));
  if ((v17[25] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v12 = v16;
    v13[0] = *v17;
    *(v13 + 9) = *&v17[9];
    v10 = v14;
    v11 = v15;
    AGGraphSetOutputValue();
  }

  v12 = v16;
  v13[0] = *v17;
  *(v13 + 10) = *&v17[10];
  v10 = v14;
  v11 = v15;
  return outlined destroy of (value: _ShapeStyle_Pack.Effect, changed: Bool)(&v10);
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  memcpy(__dst, Value, sizeof(__dst));
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__dst, 0, *(v0 + 4), v0 + 8);
  if ((v7 & 1) != 0 || (result = AGGraphGetOutputValue()) == 0)
  {
    memcpy(v5, __dst, sizeof(v5));
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v2;
  *v6 = *(Value + 32);
  *&v6[13] = *(Value + 45);
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), v0 + 8, *&v3);
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 32);
  v3 = *(Value + 40);
  v4 = *(Value + 16);
  v7[0] = *Value;
  v7[1] = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v7, 0, *(v0 + 4), v0 + 8);
  if (v10)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v9 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 32);
  v3 = *(Value + 16);
  v6[0] = *Value;
  v6[1] = v3;
  v7 = v2;
  v8 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), v0 + 8);
  if (v8)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 16);
  v6 = v2 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v4, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v15 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v3 = *(Value + 32);
  v4 = *(Value + 40);
  v5 = *(Value + 48);
  v8 = *Value;
  v9 = v2;
  v10 = *(Value + 16);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v8, 0, *(v0 + 4), (v0 + 8));
  if (v14)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[11];
  v11[10] = Value[10];
  v11[11] = v2;
  v3 = Value[13];
  v11[12] = Value[12];
  v11[13] = v3;
  v4 = Value[7];
  v11[6] = Value[6];
  v11[7] = v4;
  v5 = Value[9];
  v11[8] = Value[8];
  v11[9] = v5;
  v6 = Value[3];
  v11[2] = Value[2];
  v11[3] = v6;
  v7 = Value[5];
  v11[4] = Value[4];
  v11[5] = v7;
  v8 = Value[1];
  v11[0] = *Value;
  v11[1] = v8;
  v12 = v9 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v11, 0, *(v0 + 4), v0 + 8);
  if (v12)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[13];
  v11[12] = Value[12];
  v11[13] = v2;
  v11[14] = Value[14];
  v3 = Value[9];
  v11[8] = Value[8];
  v11[9] = v3;
  v4 = Value[11];
  v11[10] = Value[10];
  v11[11] = v4;
  v5 = Value[5];
  v11[4] = Value[4];
  v11[5] = v5;
  v6 = Value[7];
  v11[6] = Value[6];
  v11[7] = v6;
  v7 = Value[1];
  v11[0] = *Value;
  v11[1] = v7;
  v8 = Value[3];
  v11[2] = Value[2];
  v11[3] = v8;
  v12 = v9 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v11, 0, *(v0 + 4), v0 + 8);
  if (v12)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[13];
  v12[12] = Value[12];
  v12[13] = v2;
  v3 = Value[15];
  v12[14] = Value[14];
  v12[15] = v3;
  v4 = Value[9];
  v12[8] = Value[8];
  v12[9] = v4;
  v5 = Value[11];
  v12[10] = Value[10];
  v12[11] = v5;
  v6 = Value[5];
  v12[4] = Value[4];
  v12[5] = v6;
  v7 = Value[7];
  v12[6] = Value[6];
  v12[7] = v7;
  v8 = Value[1];
  v12[0] = *Value;
  v12[1] = v8;
  v9 = Value[3];
  v12[2] = Value[2];
  v12[3] = v9;
  v13 = v10 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v12, 0, *(v0 + 4), v0 + 8);
  if (v13)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v6[0] = *Value;
  v6[1] = v2;
  v3 = Value[3];
  v6[2] = Value[2];
  v6[3] = v3;
  v7 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), (v0 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 16);
  v6 = v2 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v4, 0, *(v0 + 4), (v0 + 8));
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), v0 + 8, *&v3);
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v3 = *(Value + 9);
  v6 = *Value;
  v7 = v2;
  v8 = v3;
  v9 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v6, 0, *(v0 + 4), (v0 + 8));
  if (v9)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), (v0 + 8));
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), v0 + 8);
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, unsigned int a3, char *a4)
{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[9] = 1;
  }

  else if (a1[9] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for _BlurEffect;
    type metadata accessor for _BlurEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type, MEMORY[0x1E69E7DE0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for _BlurEffect;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for _BlurEffect;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0x66664572756C425FLL;
          *(a4 + 15) = 0xEB00000000746365;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0x66664572756C425FLL;
      *(a1 + 15) = 0xEB00000000746365;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0x66664572756C425FLL;
  *(a4 + 15) = 0xEB00000000746365;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200;
  a1[9] = 1;
}

{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[16] = 1;
  }

  else if (a1[16] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for SummarySymbol;
    type metadata accessor for SummarySymbol.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for SummarySymbol;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for SummarySymbol;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0xD000000000000034;
          *(a4 + 15) = 0x800000018DD78DB0;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0xD000000000000034;
      *(a1 + 15) = 0x800000018DD78DB0;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0xD000000000000034;
  *(a4 + 15) = 0x800000018DD78DB0;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200;
  a1[16] = 1;
}

{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for _GrayscaleEffect;
    type metadata accessor for _GrayscaleEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for _GrayscaleEffect;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for _GrayscaleEffect;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0xD000000000000010;
          *(a4 + 15) = 0x800000018DD7ED70;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0xD000000000000010;
      *(a1 + 15) = 0x800000018DD7ED70;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0xD000000000000010;
  *(a4 + 15) = 0x800000018DD7ED70;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200;
  a1[8] = 1;
}

{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for _BrightnessEffect;
    type metadata accessor for _BrightnessEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for _BrightnessEffect;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for _BrightnessEffect;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0xD000000000000011;
          *(a4 + 15) = 0x800000018DD7ED30;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0xD000000000000011;
      *(a1 + 15) = 0x800000018DD7ED30;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0xD000000000000011;
  *(a4 + 15) = 0x800000018DD7ED30;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200;
  a1[8] = 1;
}

{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for _SaturationEffect;
    type metadata accessor for _SaturationEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for _SaturationEffect;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for _SaturationEffect;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0xD000000000000011;
          *(a4 + 15) = 0x800000018DD7ECB0;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0xD000000000000011;
      *(a1 + 15) = 0x800000018DD7ECB0;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0xD000000000000011;
  *(a4 + 15) = 0x800000018DD7ECB0;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200;
  a1[8] = 1;
}

{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1 * 128.0;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for _HueRotationEffect;
    type metadata accessor for _HueRotationEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for _HueRotationEffect;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for _HueRotationEffect;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0xD000000000000012;
          *(a4 + 15) = 0x800000018DD7EC70;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0xD000000000000012;
      *(a1 + 15) = 0x800000018DD7EC70;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1 * 128.0;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0xD000000000000012;
  *(a4 + 15) = 0x800000018DD7EC70;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200 * 0.0078125;
  a1[8] = 1;
}

{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1 * 128.0;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for Angle;
    type metadata accessor for Angle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for Angle;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for Angle;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0x656C676E41;
          *(a4 + 15) = 0xE500000000000000;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0x656C676E41;
      *(a1 + 15) = 0xE500000000000000;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1 * 128.0;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0x656C676E41;
  *(a4 + 15) = 0xE500000000000000;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200 * 0.0078125;
  a1[8] = 1;
}

{
  v215 = *MEMORY[0x1E69E9840];
  v195 = type metadata accessor for OSSignpostID();
  v193 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v11 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v175 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v197 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_122;
  }

  *&v28 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(a4 + 2);
  if (v5 == v28)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v191 = v11;
  v177 = v20;
  AGGraphClearUpdate();
  v185 = a4;
  v29 = *(a4 + 4);

  v30 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    if (!a2)
    {

      a4 = v185;
      goto LABEL_121;
    }

    v32 = a2;
  }

  v180 = v28;
  v33 = v28 - v5;
  v27 = *AGGraphGetValue();
  v188 = v29;
  v181 = a3;
  v179 = v30;
  v178 = v32;
  if (!v29)
  {
    v176 = v14;
    v209 = &type metadata for Capsule._Inset;
    type metadata accessor for Capsule._Inset.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type, MEMORY[0x1E69E7DE0]);
    v48 = swift_dynamicCast();
    if (v48)
    {
      v49 = v203;
    }

    else
    {
      v49 = 0;
    }

    if (v48)
    {
      v50 = v204;
    }

    else
    {
      v50 = 0;
    }

    v52 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v51, v30, v49, v50, v33, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v196) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v196)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v192) = v55;
    (*(*v32 + 96))(&v209);
    v57 = v209;
    v56 = v210;
    v58 = v214;
    v202 = 0x7FF8000000000000;
    v203 = v209;
    v199 = 0x3FF0000000000000;
    *&v200 = NAN;
    v198 = 0x7FF8000000000000;
    v204 = v210;
    v205 = v211;
    v59 = v211;
    v60 = v212;
    v206 = *&v212;
    v207 = v213;
    v194 = v213;
    LOBYTE(v208) = v214;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v203, &v202, &v200, &v199, &v198);
    v4 = v202;
    v61 = v199;
    v5 = *&v200;
    v62 = v198;
    if (one-time initialization token for enabledCategories != -1)
    {
      v190 = v199;
      v189 = v198;
      swift_once();
      v62 = v189;
      v61 = v190;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v63 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v177 = v52;
      if (v63)
      {
        v64 = a1;
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v196;
          LODWORD(v190) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v203) = v192;
          BYTE4(v203) = v66;
          v204 = &type metadata for Capsule._Inset;
          v205 = v4;
          v206 = v5;
          v207 = v61;
          v208 = v62;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v194, v190);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v194, v58);
        }

        a1 = v64;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v194, v58);
      }

      v109 = one-time initialization token for animationState;

      if (v109 == -1)
      {
LABEL_83:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v110 = byte_1ED5283EA;
        LODWORD(v194) = static os_signpost_type_t.begin.getter();
        v203 = v70;
        v204 = v71;
        LOBYTE(v205) = a4;
        BYTE1(v205) = v73;
        BYTE2(v205) = v110;
        v111 = Signpost.isEnabled.getter();
        LODWORD(v35) = v196;
        if ((v111 & 1) == 0)
        {

          v122 = v177;

          a4 = v185;
          *(v185 + 32) = v122;
          goto LABEL_120;
        }

        v182 = a1;
        v112 = one-time initialization token for _signpostLog;

        if (v112 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_85;
      }
    }

    swift_once();
    goto LABEL_83;
  }

  LOBYTE(v203) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, a3, v33, v27);
  v34 = AGGraphGetCurrentAttribute();
  a4 = v34;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  LODWORD(v194) = v36;
  (*(*v32 + 96))(&v209);
  v38 = v209;
  v37 = v210;
  v39 = v212;
  v40 = v213;
  v202 = 0x7FF8000000000000;
  v203 = v209;
  v199 = 0x3FF0000000000000;
  *&v200 = NAN;
  v198 = 0x7FF8000000000000;
  v204 = v210;
  v205 = v211;
  v41 = v211;
  v206 = *&v212;
  v207 = v213;
  LODWORD(v196) = v214;
  LOBYTE(v208) = v214;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v203, &v202, &v200, &v199, &v198);
  v4 = v202;
  v42 = v199;
  v5 = *&v200;
  v43 = v198;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_44;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v44 = static CustomEventTrace.recorder) != 0)
    {
      v190 = v40;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v191) = v35;
      v45 = *(v44 + 16);
      LODWORD(v203) = v194;
      BYTE4(v203) = a4 == v35;
      v204 = &type metadata for Capsule._Inset;
      v205 = v4;
      v206 = v5;
      v207 = v42;
      v208 = v43;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v194 = v46;

      v47 = v45;
      AGGraphAddTraceEvent();
      LODWORD(v35) = v191;
      outlined consume of Animation.Function(v38, v37, v41, v39, v190, v196);
    }

    else
    {
      outlined consume of Animation.Function(v38, v37, v41, v39, v40, v196);
    }

    v182 = a1;
    v69 = one-time initialization token for animationState;

    a4 = v185;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_44:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v203 = v70;
    v204 = v71;
    LOBYTE(v205) = v72;
    BYTE1(v205) = v73;
    BYTE2(v205) = v74;
    if (Signpost.isEnabled.getter())
    {
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v80 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v80;
        *(a4 + 4) = Counter;
        v81 = AGGraphGetCurrentAttribute();
        if (v81 != v35)
        {
          v82 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v82;
          *(a4 + 18) = v81;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v83;
          *(a4 + 14) = 0x7465736E495FLL;
          *(a4 + 15) = 0xE600000000000000;
          if (v73)
          {
            LOBYTE(v198) = v75;
            v202 = &dword_18D018000;
            v203 = v70;
            v199 = a4;
            v200 = v77;
            v204 = v71;
            LOBYTE(v205) = v72;
            v209 = "Animation: (%p) [%d] %{public}@ updated";
            v210 = 39;
            LOBYTE(v211) = 2;
            v84 = v177;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v198, &v202, &v200, &v203, v177, &v209, &v199);

            (*(v193 + 8))(v84, v195);
          }

          else
          {
            v85 = v75;
            v86 = v70;
            if (v70 == 20)
            {
              v87 = 3;
            }

            else
            {
              v87 = 4;
            }

            v88 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v35) = v85;
            v89 = v193 + 16;
            v183 = *(v193 + 16);
            v90 = v183(v192, v177, v195);
            v41 = 0;
            LOBYTE(v209) = 1;
            v196 = v87;
            v190 = 16 * v87;
            v184 = v89;
            v191 = (v89 - 8);
            v189 = a4 + 32;
            v186 = v86;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v90);
              v93 = &v175 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v93 + 8;
              v94 = v196;
              v95 = v93 + 8;
              do
              {
                *(v95 - 1) = 0;
                *v95 = 0;
                v95 += 16;
                --v94;
              }

              while (v94);
              v96 = &v189[40 * v41];
              v97 = v196;
              while (1)
              {
                v98 = *(a4 + 2);
                if (v41 == v98)
                {
                  break;
                }

                if (v41 >= v98)
                {
                  goto LABEL_179;
                }

                ++v41;
                outlined init with copy of AnyTrackedValue(v96, &v203);
                v99 = *&v206;
                v100 = v207;
                v101 = __swift_project_boxed_opaque_existential_1(&v203, *&v206);
                v102 = v100;
                v89 = v101;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v88 | v35, v99, v102);
                *a1 = v103 & 1;
                a1 += 16;
                v91 = __swift_destroy_boxed_opaque_existential_1(&v203);
                v96 += 40;
                if (!--v97)
                {
                  goto LABEL_64;
                }
              }

              LOBYTE(v209) = 0;
LABEL_64:
              v104 = v186;
              if (v186 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v93[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v93[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v93[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v104 != 20 && v93[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v105 = *v191;
              v106 = v192;
              v89 = v195;
              (*v191)(v192, v195);
              v107 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
              v90 = v183(v106, v107, v89);
            }

            while ((v209 & 1) != 0);

            v108 = v195;
            v105(v106, v195);
            v105(v177, v108);
          }

          a1 = v182;
          a4 = v185;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_85:
      v113 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v35)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v114 = AGGraphGetAttributeGraph();
      v115 = AGGraphGetCounter();

      v116 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v116;
      *(a1 + 4) = v115;
      v117 = AGGraphGetCurrentAttribute();
      if (v117 == v35)
      {
        goto LABEL_197;
      }

      v118 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v118;
      *(a1 + 18) = v117;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v119;
      *(a1 + 14) = 0x7465736E495FLL;
      *(a1 + 15) = 0xE600000000000000;
      v120 = v176;
      if (v73)
      {
        LOBYTE(v198) = v194;
        v202 = &dword_18D018000;
        v203 = v70;
        v199 = a1;
        v200 = v113;
        v204 = v71;
        LOBYTE(v205) = a4;
        v209 = "Animation: (%p) [%d] %{public}@ started";
        v210 = 39;
        LOBYTE(v211) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v198, &v202, &v200, &v203, v176, &v209, &v199);
        v121 = v177;

        (*(v193 + 8))(v120, v195);
      }

      else
      {
        v123 = v70;
        v89 = v70 == 20 ? 3 : 4;
        v88 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v35) = v194;
        v124 = v193 + 16;
        v183 = *(v193 + 16);
        v125 = v183(v191, v176, v195);
        v41 = 0;
        LOBYTE(v209) = 1;
        v196 = v89;
        v190 = 16 * v89;
        v184 = v124;
        v192 = (v124 - 8);
        v189 = a1 + 32;
        v186 = v123;
        do
        {
          v194 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v196;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v96 = &v189[40 * v41];
          v130 = v196;
          while (1)
          {
            v131 = *(a1 + 2);
            if (v41 == v131)
            {
              break;
            }

            if (v41 >= v131)
            {
              goto LABEL_180;
            }

            ++v41;
            outlined init with copy of AnyTrackedValue(v96, &v203);
            v132 = *&v206;
            v133 = v207;
            v134 = __swift_project_boxed_opaque_existential_1(&v203, *&v206);
            v135 = v133;
            v89 = v134;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v88 | v35, v132, v135);
            *a4 = v136 & 1;
            a4 += 16;
            v91 = __swift_destroy_boxed_opaque_existential_1(&v203);
            v96 += 40;
            if (!--v130)
            {
              goto LABEL_102;
            }
          }

          LOBYTE(v209) = 0;
LABEL_102:
          v137 = v186;
          if (v186 == 20)
          {
            v138 = v191;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v138 = v191;
          }

          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v137 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v139 = *v192;
          v89 = v195;
          (*v192)(v138, v195);
          v140 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
          v125 = v183(v138, v140, v89);
        }

        while ((v209 & 1) != 0);
        v121 = v177;

        v141 = v195;
        v139(v138, v195);
        v139(v176, v141);
      }

      a4 = v185;
      *(v185 + 32) = v121;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v181;
    specialized AnimatorState.addListeners(transaction:)(v179);

    v28 = v180;
LABEL_121:
    *(a4 + 2) = v28;
    a4[24] = 0;
LABEL_122:
    v88 = *(a4 + 4);
    if (!v88)
    {
      return;
    }

    v96 = *a1;
    v202 = *a1 & 0xFFFFFFFFFFFFFFFELL;

    LOBYTE(v203) = 0;
    v142 = specialized AnimatorState.update(_:at:environment:)(&v202, a3, v27);
    v91 = AGGraphGetCurrentAttribute();
    LODWORD(v35) = *MEMORY[0x1E698D3F8];
    if (v91 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v41) = 0;
    }

    else
    {
      LODWORD(v41) = v91;
    }

    v89 = &type metadata instantiation cache for TupleTypeDescription;
    if (v142)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v153 = *(v89 + 616);
    if (*(v153 + 16) >= 0x43uLL)
    {
      if (*(v153 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v203) = v41;
        BYTE4(v203) = v91 == v35;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v145 = *(&static Signpost.animationState + 1);
    v41 = static Signpost.animationState;
    v39 = word_1ED5283E8;
    v146 = HIBYTE(word_1ED5283E8);
    v147 = byte_1ED5283EA;
    v38 = static os_signpost_type_t.end.getter();
    v203 = v41;
    v204 = v145;
    LOBYTE(v205) = v39;
    BYTE1(v205) = v146;
    BYTE2(v205) = v147;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v185 = a4;
    v40 = one-time initialization token for _signpostLog;

    if (v40 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v37 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v35)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v191 = v42;
    v190 = v43;
    swift_once();
    v43 = v190;
    v42 = v191;
  }

  v40 = AGGraphGetAttributeGraph();
  a1 = AGGraphGetCounter();

  v148 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v148;
  *(a4 + 4) = a1;
  v149 = AGGraphGetCurrentAttribute();
  if (v149 == v35)
  {
    goto LABEL_187;
  }

  v150 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v150;
  *(a4 + 18) = v149;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v151;
  *(a4 + 14) = 0x7465736E495FLL;
  *(a4 + 15) = 0xE600000000000000;
  if (v146)
  {
    v201 = v38;
    v199 = v37;
    *&v200 = COERCE_DOUBLE(&dword_18D018000);
    v203 = v41;
    v204 = v145;
    LOBYTE(v205) = v39;
    v209 = "Animation: (%p) [%d] %{public}@ ended";
    v210 = 37;
    LOBYTE(v211) = 2;
    v198 = a4;
    v152 = v187;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v201, &v200, &v199, &v203, v187, &v209, &v198);

    (*(v193 + 8))(v152, v195);
    goto LABEL_174;
  }

  v154 = v41;
  if (v41 == 20)
  {
    v89 = 3;
  }

  else
  {
    v89 = 4;
  }

  v155 = bswap32(v41) | (4 * WORD1(v41));
  LODWORD(v41) = v38;
  v156 = v193 + 16;
  v188 = *(v193 + 16);
  v157 = v188(v197, v187, v195);
  v35 = 0;
  LOBYTE(v209) = 1;
  v196 = v89;
  v191 = (16 * v89);
  v193 = v156;
  v192 = (v156 - 8);
  v190 = (a4 + 32);
  v189 = v154;
  do
  {
    v194 = &v175;
    MEMORY[0x1EEE9AC00](v157);
    a1 = &v175 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
    v159 = a1 + 8;
    v160 = v196;
    v161 = a1 + 8;
    do
    {
      *(v161 - 1) = 0;
      *v161 = 0;
      v161 += 16;
      --v160;
    }

    while (v160);
    v96 = v190 + 40 * v35;
    v88 = v196;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v35 == v162)
      {
        break;
      }

      if (v35 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v91;
        swift_once();
        v91 = v173;
LABEL_128:
        v143 = *(v89 + 616);
        if (*(v143 + 16) >= 0x43uLL)
        {
          if (*(v143 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v203) = v41;
            BYTE4(v203) = v91 == v35;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v184 = v96;
          v144 = one-time initialization token for animationState;
          v186 = v88;

          if (v144 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v91;
        swift_once();
        v91 = v174;
        goto LABEL_141;
      }

      ++v35;
      outlined init with copy of AnyTrackedValue(v96, &v203);
      v163 = *&v206;
      v164 = v207;
      v165 = __swift_project_boxed_opaque_existential_1(&v203, *&v206);
      v166 = v164;
      v89 = v165;
      *(v159 - 1) = CVarArg.kdebugValue(_:)(v155 | v41, v163, v166);
      *v159 = v167 & 1;
      v159 += 16;
      v91 = __swift_destroy_boxed_opaque_existential_1(&v203);
      v96 += 40;
      if (!--v88)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v209) = 0;
LABEL_159:
    v168 = v189;
    if (v189 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v192;
    v170 = v197;
    v89 = v195;
    (*v192)(v197, v195);
    v171 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
    v157 = v188(v170, v171, v89);
  }

  while ((v209 & 1) != 0);

  v172 = v195;
  v169(v197, v195);
  v169(v187, v172);
LABEL_174:

  a1 = v182;
  a4 = v185;
LABEL_175:
  LOBYTE(v96) = v184;
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v202 & 0xFFFFFFFFFFFFFFFELL | v96 & 1;
  a1[8] = 1;
}

{
  v213 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v175 - v16);
  MEMORY[0x1EEE9AC00](v18);
  Counter = &v175 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v175 - v24;
  if (*(a4 + 4))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[10] = 1;
  }

  else if (a1[10] != 1)
  {
    goto LABEL_122;
  }

  v5 = *a1;
  if (a4[24])
  {
    goto LABEL_121;
  }

  v4 = *(a4 + 2);
  if (v5 == v4)
  {
    goto LABEL_121;
  }

  v192 = v17;
  v194 = v11;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 4);

  v29 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    if (!a2)
    {

      a4 = v183;
      goto LABEL_121;
    }

    v31 = a2;
  }

  v32 = v5 - v4;
  v27 = *AGGraphGetValue();
  v182 = a1;
  v179 = a3;
  v178 = v29;
  v177 = v31;
  v180 = v28;
  if (!v28)
  {
    v175 = v14;
    v207 = &type metadata for BlurStyle;
    type metadata accessor for BlurStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type, MEMORY[0x1E69E7DE0]);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v201;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v202;
    }

    else
    {
      v51 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v52, v29, v50, v51, v32, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v54 = CurrentAttribute;
    LODWORD(v192) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v192)
    {
      v55 = 0;
    }

    else
    {
      v55 = CurrentAttribute;
    }

    LODWORD(v190) = v55;
    (*(*v31 + 96))(&v207);
    v57 = v207;
    v56 = v208;
    v58 = v212;
    v200 = NAN;
    v201 = v207;
    v197 = 0x3FF0000000000000;
    v198 = NAN;
    v196 = 0x7FF8000000000000;
    v202 = v208;
    v203 = *&v209;
    v59 = v209;
    v60 = v210;
    v204 = v210;
    v205 = v211;
    v61 = v211;
    LOBYTE(v206) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
    v4 = v200;
    v62 = v197;
    v63 = *&v198;
    v64 = v196;
    if (one-time initialization token for enabledCategories != -1)
    {
      v189 = *&v198;
      v187 = v197;
      v188 = v196;
      swift_once();
      v64 = v188;
      v62 = v187;
      v63 = v189;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v66 = v54 == v192;
          LODWORD(v189) = v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v67 = *(v65 + 16);
          LODWORD(v201) = v190;
          BYTE4(v201) = v66;
          v202 = &type metadata for BlurStyle;
          v203 = v4;
          v204 = v63;
          v205 = v62;
          v206 = v64;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v68 = v67;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v189);
        }

        else
        {
          outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
        }

        a1 = v182;
      }

      else
      {
        outlined consume of Animation.Function(v57, v56, v59, v60, v61, v58);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_84:
        v71 = *(&static Signpost.animationState + 1);
        v70 = static Signpost.animationState;
        LOBYTE(a4) = word_1ED5283E8;
        v73 = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LOBYTE(Counter) = static os_signpost_type_t.begin.getter();
        v201 = v70;
        v202 = v71;
        LOBYTE(v203) = a4;
        BYTE1(v203) = v73;
        BYTE2(v203) = v108;
        v109 = Signpost.isEnabled.getter();
        LODWORD(v34) = v192;
        if ((v109 & 1) == 0)
        {

          v120 = v176;

          a4 = v183;
          *(v183 + 32) = v120;
          goto LABEL_120;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_195;
        }

        goto LABEL_86;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  LOBYTE(v201) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, a3, v32, v27);
  v33 = AGGraphGetCurrentAttribute();
  a4 = v33;
  LODWORD(v34) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  LODWORD(v190) = v35;
  (*(*v31 + 96))(&v207);
  v37 = v207;
  v36 = v208;
  v39 = v209;
  v38 = v210;
  v40 = v211;
  v200 = NAN;
  v201 = v207;
  v197 = 0x3FF0000000000000;
  v198 = NAN;
  v196 = 0x7FF8000000000000;
  v202 = v208;
  v203 = *&v209;
  v204 = v210;
  v205 = v211;
  LODWORD(v194) = v212;
  LOBYTE(v206) = v212;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v200, &v198, &v197, &v196);
  v4 = v200;
  v41 = v197;
  v42 = *&v198;
  v43 = v196;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_45;
    }

    v44 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v176 = Counter;
    if (v44)
    {
      v189 = v38;
      v45 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v188 = v40;
        v46 = *(v45 + 16);
        LODWORD(v201) = v190;
        BYTE4(v201) = a4 == v34;
        v202 = &type metadata for BlurStyle;
        v203 = v4;
        v204 = v42;
        v205 = v41;
        v206 = v43;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v190 = v47;

        v48 = v46;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v37, v36, v39, v189, v188, v194);
      }

      else
      {
        outlined consume of Animation.Function(v37, v36, v39, v189, v40, v194);
      }

      LOBYTE(Counter) = v176;
    }

    else
    {
      outlined consume of Animation.Function(v37, v36, v39, v38, v40, v194);
    }

    v69 = one-time initialization token for animationState;

    a4 = v183;
    if (v69 != -1)
    {
      goto LABEL_190;
    }

LABEL_45:
    v71 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v201 = v70;
    v202 = v71;
    LOBYTE(v203) = v72;
    BYTE1(v203) = v73;
    BYTE2(v203) = v74;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v194) = v75;
      v76 = one-time initialization token for _signpostLog;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
      }

      else
      {
        v78 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v79 = MEMORY[0x1E69E6870];
        *(a4 + 7) = MEMORY[0x1E69E6810];
        *(a4 + 8) = v79;
        *(a4 + 4) = Counter;
        v80 = AGGraphGetCurrentAttribute();
        if (v80 != v34)
        {
          v81 = MEMORY[0x1E69E76D0];
          *(a4 + 12) = MEMORY[0x1E69E7668];
          *(a4 + 13) = v81;
          *(a4 + 18) = v80;
          *(a4 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a4 + 18) = v82;
          *(a4 + 14) = 0x6C79745372756C42;
          *(a4 + 15) = 0xE900000000000065;
          v83 = v176;
          if (v73)
          {
            LOBYTE(v196) = v194;
            v200 = COERCE_DOUBLE(&dword_18D018000);
            v201 = v70;
            v197 = a4;
            *&v198 = v77;
            v202 = v71;
            LOBYTE(v203) = v72;
            v207 = "Animation: (%p) [%d] %{public}@ updated";
            v208 = 39;
            LOBYTE(v209) = 2;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v176, &v207, &v197);

            (*(v191 + 8))(v83, v193);
          }

          else
          {
            v84 = v70;
            if (v70 == 20)
            {
              v85 = 3;
            }

            else
            {
              v85 = 4;
            }

            v86 = bswap32(v70) | (4 * WORD1(v70));
            LODWORD(v34) = v194;
            v87 = v191 + 16;
            v88 = v85;
            v181 = *(v191 + 16);
            v89 = v181(v192, v176, v193);
            v39 = 0;
            LOBYTE(v207) = 1;
            v189 = 16 * v88;
            v184 = v87;
            v190 = (v87 - 8);
            v188 = a4 + 32;
            v187 = v84;
            v186 = v88;
            do
            {
              v194 = &v175;
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v175 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v92 + 8;
              v93 = v88;
              v94 = v92 + 8;
              do
              {
                *(v94 - 1) = 0;
                *v94 = 0;
                v94 += 16;
                --v93;
              }

              while (v93);
              v95 = &v188[40 * v39];
              while (1)
              {
                v96 = *(a4 + 2);
                if (v39 == v96)
                {
                  break;
                }

                if (v39 >= v96)
                {
                  goto LABEL_179;
                }

                ++v39;
                outlined init with copy of AnyTrackedValue(v95, &v201);
                v97 = v204;
                v98 = v205;
                v99 = __swift_project_boxed_opaque_existential_1(&v201, v204);
                v100 = v98;
                v77 = v99;
                *(a1 - 1) = CVarArg.kdebugValue(_:)(v86 | v34, v97, v100);
                *a1 = v101 & 1;
                a1 += 16;
                v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
                v95 += 40;
                if (!--v88)
                {
                  goto LABEL_65;
                }
              }

              LOBYTE(v207) = 0;
LABEL_65:
              v102 = v187;
              if (v187 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v88 = v186;
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v102 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v103 = *v190;
              v104 = v192;
              v77 = v193;
              (*v190)(v192, v193);
              v105 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
              v89 = v181(v104, v105, v77);
            }

            while ((v207 & 1) != 0);

            v106 = v193;
            v103(v192, v193);
            v103(v176, v106);
          }

          a1 = v182;
          a4 = v183;
          goto LABEL_120;
        }
      }

      __break(1u);
LABEL_195:
      swift_once();
LABEL_86:
      v111 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v34)
      {
        __break(1u);
LABEL_197:
        __break(1u);
      }

      v112 = AGGraphGetAttributeGraph();
      v113 = AGGraphGetCounter();

      v114 = MEMORY[0x1E69E6870];
      *(a1 + 7) = MEMORY[0x1E69E6810];
      *(a1 + 8) = v114;
      *(a1 + 4) = v113;
      v115 = AGGraphGetCurrentAttribute();
      if (v115 == v34)
      {
        goto LABEL_197;
      }

      v116 = MEMORY[0x1E69E76D0];
      *(a1 + 12) = MEMORY[0x1E69E7668];
      *(a1 + 13) = v116;
      *(a1 + 18) = v115;
      *(a1 + 17) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a1 + 18) = v117;
      *(a1 + 14) = 0x6C79745372756C42;
      *(a1 + 15) = 0xE900000000000065;
      v118 = v175;
      if (v73)
      {
        LOBYTE(v196) = Counter;
        v200 = COERCE_DOUBLE(&dword_18D018000);
        v201 = v70;
        v197 = a1;
        *&v198 = v111;
        v202 = v71;
        LOBYTE(v203) = a4;
        v207 = "Animation: (%p) [%d] %{public}@ started";
        v208 = 39;
        LOBYTE(v209) = 2;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v196, &v200, &v198, &v201, v175, &v207, &v197);
        v119 = v176;

        (*(v191 + 8))(v118, v193);
      }

      else
      {
        v121 = v70;
        v122 = Counter;
        v123 = v70 == 20 ? 3 : 4;
        v124 = bswap32(v70) | (4 * WORD1(v70));
        LODWORD(v34) = v122;
        v77 = v191 + 16;
        v181 = *(v191 + 16);
        v125 = v181(v194, v175, v193);
        v39 = 0;
        LOBYTE(v207) = 1;
        v189 = 16 * v123;
        v184 = v77;
        v190 = (v77 - 8);
        v188 = a1 + 32;
        v187 = v121;
        v186 = v123;
        do
        {
          v192 = &v175;
          MEMORY[0x1EEE9AC00](v125);
          v127 = &v175 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v127 + 8;
          v128 = v123;
          v129 = v127 + 8;
          do
          {
            *(v129 - 1) = 0;
            *v129 = 0;
            v129 += 16;
            --v128;
          }

          while (v128);
          v95 = &v188[40 * v39];
          while (1)
          {
            v130 = *(a1 + 2);
            if (v39 == v130)
            {
              break;
            }

            if (v39 >= v130)
            {
              goto LABEL_180;
            }

            ++v39;
            outlined init with copy of AnyTrackedValue(v95, &v201);
            v131 = v204;
            v132 = v205;
            v133 = __swift_project_boxed_opaque_existential_1(&v201, v204);
            v134 = v132;
            v77 = v133;
            *(a4 - 1) = CVarArg.kdebugValue(_:)(v124 | v34, v131, v134);
            *a4 = v135 & 1;
            a4 += 16;
            v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
            v95 += 40;
            if (!--v123)
            {
              goto LABEL_103;
            }
          }

          LOBYTE(v207) = 0;
LABEL_103:
          v136 = v187;
          if (v187 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v123 = v186;
          if (v127[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v127[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v136 != 20 && v127[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v137 = *v190;
          v138 = v194;
          v77 = v193;
          (*v190)(v194, v193);
          v139 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
          v125 = v181(v138, v139, v77);
        }

        while ((v207 & 1) != 0);
        v119 = v176;

        v140 = v193;
        v137(v194, v193);
        v137(v175, v140);
      }

      a4 = v183;
      *(v183 + 32) = v119;
    }

    else
    {
    }

    a1 = v182;
LABEL_120:
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_121:
    *(a4 + 2) = v5;
    a4[24] = 0;
LABEL_122:
    v95 = *(a4 + 4);
    if (!v95)
    {
      return;
    }

    v200 = *a1;

    LOBYTE(v201) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v27);
    v90 = AGGraphGetCurrentAttribute();
    LODWORD(v34) = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v39) = 0;
    }

    else
    {
      LODWORD(v39) = v90;
    }

    v77 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v152 = *(v77 + 616);
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v39;
        BYTE4(v201) = v90 == v34;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v144 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v40 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v145 = byte_1ED5283EA;
    v37 = static os_signpost_type_t.end.getter();
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    BYTE1(v203) = Counter;
    BYTE2(v203) = v145;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v183 = a4;
    v38 = one-time initialization token for _signpostLog;

    if (v38 != -1)
    {
      swift_once();
    }

    v182 = a1;
    v36 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v34)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v189 = v42;
    v187 = v41;
    v188 = v43;
    swift_once();
    v43 = v188;
    v41 = v187;
    v42 = v189;
  }

  v38 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v34)
  {
    goto LABEL_187;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0x6C79745372756C42;
  *(a4 + 15) = 0xE900000000000065;
  if (Counter)
  {
    v199 = v37;
    v197 = v36;
    *&v198 = &dword_18D018000;
    v201 = v39;
    v202 = v144;
    LOBYTE(v203) = v40;
    v207 = "Animation: (%p) [%d] %{public}@ ended";
    v208 = 37;
    LOBYTE(v209) = 2;
    v196 = a4;
    v151 = v185;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v199, &v198, &v197, &v201, v185, &v207, &v196);

    (*(v191 + 8))(v151, v193);
    goto LABEL_174;
  }

  v153 = v39;
  if (v39 == 20)
  {
    v77 = 3;
  }

  else
  {
    v77 = 4;
  }

  v154 = bswap32(v39) | (4 * WORD1(v39));
  LODWORD(v39) = v37;
  v155 = v191 + 16;
  v186 = *(v191 + 16);
  v156 = v186(v195, v185, v193);
  v34 = 0;
  LOBYTE(v207) = 1;
  v194 = v77;
  v189 = 16 * v77;
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = a1 + 8;
    v159 = v194;
    v160 = a1 + 8;
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v95 = &v188[40 * v34];
    v161 = v194;
    while (1)
    {
      v162 = *(a4 + 2);
      if (v34 == v162)
      {
        break;
      }

      if (v34 >= v162)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v173 = v90;
        swift_once();
        v90 = v173;
LABEL_128:
        v142 = *(v77 + 616);
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v39;
            BYTE4(v201) = v90 == v34;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v184 = v95;

          if (v143 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v174 = v90;
        swift_once();
        v90 = v174;
        goto LABEL_141;
      }

      ++v34;
      outlined init with copy of AnyTrackedValue(v95, &v201);
      v163 = v204;
      v164 = v205;
      v165 = __swift_project_boxed_opaque_existential_1(&v201, v204);
      v166 = v164;
      v77 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v154 | v39, v163, v166);
      *v158 = v167 & 1;
      v158 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v95 += 40;
      v161 = (v161 - 1);
      if (!v161)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v207) = 0;
LABEL_159:
    v168 = v187;
    if (v187 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v168 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v195;
    v77 = v193;
    (*v190)(v195, v193);
    v171 = __swift_project_value_buffer(v77, static OSSignpostID.continuation);
    v156 = v186(v170, v171, v77);
  }

  while ((v207 & 1) != 0);

  v172 = v193;
  v169(v195, v193);
  v169(v185, v172);
LABEL_174:

  a1 = v182;
  a4 = v183;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 4) = 0;
LABEL_176:
  *a1 = v200;
  a1[10] = 1;
}