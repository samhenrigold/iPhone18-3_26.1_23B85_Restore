void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSyRd__AaBRd_0_r_0_lAA15ModifiedContentVyxAA13AlertModifierVyADyqd_0_AA07ActionsG033_CFAA2A4382B588C39EB2C5339BE6A4A5LLVGAA05EmptyC0VGGAaBHPxAaBHD1__AmA0cG0HPyHCHCTm(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ModifiedContent();
  v11[0] = v3;
  v11[1] = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v5 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v11);
  v10[0] = v4;
  v10[1] = MEMORY[0x1E6981E70];
  v10[2] = WitnessTable;
  v10[3] = MEMORY[0x1E6981E60];
  type metadata accessor for AlertModifier(255, v10);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v2;
  v9[1] = &protocol witness table for AlertModifier<A, B>;
  return swift_getWitnessTable(v5, v7, v9);
}

void type metadata accessor for StyleContextWriter<DialogActionStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t implicit closure #1 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a1[9];
  v28 = a1[8];
  v29 = v6;
  v30 = *(a1 + 160);
  v7 = a1[5];
  v24 = a1[4];
  v25 = v7;
  v8 = a1[7];
  v26 = a1[6];
  v27 = v8;
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v10 = a1[3];
  v22 = a1[2];
  v23 = v10;
  *&v31 = a2;
  *(&v31 + 1) = a3;
  *&v32 = a4;
  *(&v32 + 1) = a5;
  ConfirmationDialog = type metadata accessor for MakeConfirmationDialog(0, &v31);
  v18 = ConfirmationDialog;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MakeConfirmationDialog<A, B>, ConfirmationDialog);
  v12 = *(ConfirmationDialog - 8);
  (*(v12 + 16))(&v31, a1, ConfirmationDialog);
  type metadata accessor for Attribute<(_:)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, closure #1 in Attribute.init<A>(_:)partial apply, v17, ConfirmationDialog, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  (*(v12 + 8))(&v31, ConfirmationDialog);
  return v16;
}

uint64_t initializeWithCopy for MakeConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 105) = *(a2 + 105);
  v7 = *(a2 + 152);

  if (v7)
  {
    v8 = *(a2 + 136);
    if (v8)
    {
      v9 = *(a2 + 112);
      v10 = *(a2 + 120);
      v11 = *(a2 + 128);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 112) = v9;
      *(a1 + 120) = v10;
      *(a1 + 128) = v11;
      *(a1 + 136) = v8;
    }

    else
    {
      v13 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v13;
    }

    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v7;
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
  }

  return a1;
}

void protocol witness for static UserDefaultsValueTransform.readValue(from:key:) in conformance StringTransform(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = MEMORY[0x18D00C850](a2, a3);
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = MEMORY[0x1E69E6158];
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = 0;
    a4[2] = 0;
  }

  *a4 = v8;
  a4[1] = v10;
  a4[3] = v11;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.__allocating_init(path:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(v2 + *(*v2 + 232), a1);
  return v2;
}

uint64_t ItemSheetPresentationModifier.init(item:onDismiss:sheetContent:placement:drawsBackground:anchorProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  type metadata accessor for Optional();
  v20 = type metadata accessor for Binding();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v28[0] = a10;
  v28[1] = a11;
  v28[2] = a12;
  v29 = a13;
  v30 = a14;
  v21 = type metadata accessor for ItemSheetPresentationModifier(0, v28);
  v22 = (a9 + v21[17]);
  *v22 = a2;
  v22[1] = a3;
  v23 = (a9 + v21[18]);
  *v23 = a4;
  v23[1] = a5;
  *(a9 + v21[19]) = a6;
  *(a9 + v21[20]) = a7;
  return (*(*(a12 - 8) + 32))(a9 + v21[21], a8, a12);
}

uint64_t closure #1 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45[1] = a6;
  v46 = a5;
  v49 = a4;
  v55 = a8;
  v54 = a12;
  v15 = *(a7 - 8);
  v52 = a2;
  v53 = v15;
  MEMORY[0x1EEE9AC00](a1);
  v47 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v45[0] = v45 - v18;
  v19 = type metadata accessor for Optional();
  v48 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  v50 = a10;
  v51 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v45 - v30;
  v58 = a1;
  v59 = v52;
  v60 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v57);
  if (v57 == 1)
  {
    v32 = v48;
    (*(v48 + 16))(v21, v49, v19);
    if ((*(v51 + 48))(v21, 1, v50) != 1)
    {
      v36 = v51;
      v37 = v21;
      v38 = v50;
      (*(v51 + 32))(v24, v37, v50);
      v39 = v47;
      v46(v24);
      (*(v36 + 8))(v24, v38);
      v52 = v26;
      v40 = v45[0];
      v34 = v54;
      static ViewBuilder.buildExpression<A>(_:)();
      v35 = v53;
      v41 = *(v53 + 8);
      v41(v39, a7);
      static ViewBuilder.buildExpression<A>(_:)();
      v42 = v40;
      v26 = v52;
      v41(v42, a7);
      (*(v35 + 32))(v28, v39, a7);
      v33 = 0;
      goto LABEL_6;
    }

    (*(v32 + 8))(v21, v19);
  }

  v33 = 1;
  v35 = v53;
  v34 = v54;
LABEL_6:
  (*(v35 + 56))(v28, v33, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v28, v31);
  v43 = *(v26 + 8);
  v43(v28, v25);
  v56 = v34;
  swift_getWitnessTable(MEMORY[0x1E6982090], v25, &v56);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v43)(v31, v25);
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>, MEMORY[0x1E69803A8], MEMORY[0x1E69803A0], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t List.init(selection:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = a1;
  type metadata accessor for SelectionManagerBox(255, a4, a6, a4);
  v13 = type metadata accessor for Binding();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  (*(*(v13 - 8) + 56))(a8, 1, 1, v13, v16);
  v35[0] = a4;
  v35[1] = a5;
  v35[2] = a6;
  v35[3] = a7;
  v19 = type metadata accessor for List(0, v35);
  *(a8 + *(v19 + 56)) = 0;
  v20 = a8 + *(v19 + 60);
  *v20 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v21 = type metadata accessor for Optional();
  v22 = v27;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in List.init(selection:content:), v30, MEMORY[0x1E69E73E0], v13, v23, v18);
  v24 = (*(v15 + 40))(a8, v18, v14);
  v29(v24);
  return (*(*(v21 - 8) + 8))(v22, v21);
}

void *closure #1 in List.init(selection:content:)(void x0_0, uint64_t a1, void x2_0, uint64_t a2)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v6 = type metadata accessor for OptionalSelectionManagerProjection(0, a1, a2, v5);
  swift_getWitnessTable(protocol conformance descriptor for OptionalSelectionManagerProjection<A>, v6);
  return Binding.projecting<A>(_:)();
}

{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v6 = type metadata accessor for SetSelectionManagerProjection(0, a1, a2, v5);
  swift_getWitnessTable(protocol conformance descriptor for SetSelectionManagerProjection<A>, v6);
  return Binding.projecting<A>(_:)();
}

void *partial apply for closure #1 in List.init(selection:content:)(uint64_t x0_0)
{
  return closure #1 in List.init(selection:content:)(x0_0, v2[2], v2[3], v2[4]);
}

{
  return closure #1 in List.init(selection:content:)(x0_0, v2[2], v2[3], v2[4]);
}

uint64_t OptionalSelectionManagerProjection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return SelectionManagerBox.init(optional:)(v11, a2, a3, a4);
}

uint64_t SelectionManagerBox.init(optional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  type metadata accessor for SelectionManagerBox(0, a2, a3, v9);

  return swift_storeEnumTagMultiPayload();
}

uint64_t *initializeWithCopy for List(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 84);
  v10 = *(v7 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = (v10 + 23) & ~(v10 | 7);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFF)
  {
    v44 = v12;
    v15 = v9 == 0;
    *__dst = *__src;
    v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = v14;
    v17 = (v16 + v11 + 8) & ~v11;
    v18 = ((v13 + v11 + 8) & ~v11);
    if (v15)
    {
      v19 = v8 + 1;
    }

    else
    {
      v19 = v8;
    }

    if (v19 > v8)
    {
      v8 = v19;
    }

    if (v8 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v8;
    }

    v21 = v18[v20];

    if (v21 < 3)
    {
      v25 = v17;
      v3 = a3;
      goto LABEL_36;
    }

    if (v20 <= 3)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      v25 = v17;
      v3 = a3;
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = *v18;
    }

    else
    {
      if (v22 == 2)
      {
        v23 = *v18;
      }

      else if (v22 == 3)
      {
        v23 = *v18 | (v18[2] << 16);
      }

      else
      {
        v23 = *v18;
      }

      v25 = v17;
      v3 = a3;
    }

    v26 = (v23 | ((v21 - 3) << (8 * v20))) + 3;
    v27 = v23 + 3;
    if (v20 >= 4)
    {
      v21 = v27;
    }

    else
    {
      v21 = v26;
    }

LABEL_36:
    if (v21 == 2)
    {
      (*(v7 + 16))(v25, v18, v6);
      v28 = 2;
    }

    else
    {
      if (v21 != 1)
      {
        *v25 = *v18;
        *(v25 + v20) = 0;

LABEL_45:
        v12 = v44;
        goto LABEL_46;
      }

      if ((*(v7 + 48))(v18, 1, v6))
      {
        memcpy(v25, v18, v19);
      }

      else
      {
        (*(v7 + 16))(v25, v18, v6);
        (*(v7 + 56))(v25, 0, 1, v6);
      }

      v28 = 1;
    }

    *(v25 + v20) = v28;
    goto LABEL_45;
  }

  if (v9)
  {
    v24 = *(v7 + 64);
  }

  else
  {
    v24 = v8 + 1;
  }

  if (v24 > v8)
  {
    v8 = v24;
  }

  if (v8 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v8;
  }

  memcpy(__dst, __src, v20 + v12 + 1);
LABEL_46:
  v29 = *(*(v3 + 24) - 8);
  v30 = v29 + 16;
  v31 = *(v29 + 80);
  v32 = v20 + v12 + v31 + 1;
  v33 = (__dst + v32) & ~v31;
  v34 = (__src + v32) & ~v31;
  (*(v29 + 16))(v33, v34);
  v35 = *(v30 + 48) + 7;
  v36 = ((v35 + v33) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + v34) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  v41 = *(v39 + 8);
  LOBYTE(v30) = *(v39 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*v39, v41);
  *v38 = v40;
  *(v38 + 8) = v41;
  *(v38 + 16) = v30;
  return __dst;
}

uint64_t destroy for List(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0xF8 | 7;
  v9 = ~v8;
  v10 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v10 <= 0xFFFFFFFEuLL)
  {
    if (v6)
    {
      v19 = *(v5 + 64);
    }

    else
    {
      v19 = v7 + 1;
    }

    if (v19 <= v7)
    {
      v19 = *(v5 + 64);
    }

    if (v19 <= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = v19;
    }

    goto LABEL_37;
  }

  v11 = v6 == 0;
  v12 = ((v10 + v8 + 8) & v9);
  if (v11)
  {
    v13 = v7 + 1;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= v7)
  {
    v13 = v7;
  }

  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v12 + v14);
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *v12;
      }

      else if (v17 == 3)
      {
        v18 = *((v10 + v8 + 8) & v9) | (*(((v10 + v8 + 8) & v9) + 2) << 16);
      }

      else
      {
        v18 = *v12;
      }

LABEL_30:
      v20 = (v18 | (v16 << (8 * v14))) + 3;
      v15 = v18 + 3;
      if (v14 < 4)
      {
        v15 = v20;
      }

      goto LABEL_32;
    }

    if (v17)
    {
      v18 = *v12;
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v15 == 2)
  {
LABEL_35:
    (*(v5 + 8))(v12, v4);
    goto LABEL_37;
  }

  if (v15 == 1)
  {
    if ((*(v5 + 48))(v12, 1, v4))
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_37:
  v21 = *(*(a2 + 24) - 8);
  v22 = v21 + 8;
  v23 = (a1 + ((v8 + 16) & v9) + *(v21 + 80) + v14 + 1) & ~*(v21 + 80);
  (*(v21 + 8))(v23);
  v24 = ((((*(v22 + 56) + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  v26 = v24[1];

  return outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v25, v26);
}

uint64_t storeEnumTagSinglePayload for SceneListCombiner(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneListCombiner(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FailedCallbacks<()>(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>)
  {
    v1 = MEMORY[0x1E69801E0];
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, MEMORY[0x1E6980678], MEMORY[0x1E6980670], v1);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v2 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, MEMORY[0x1E6980678], MEMORY[0x1E6980670], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69801E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>()
{
  result = lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>;
  if (!lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>)
  {
    type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980940], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationPresentationAdaptorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance NavigationPresentationAdaptorModifier(unsigned int *a1)
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
  return PropertyList.subscript.setter();
}

uint64_t type metadata completion function for Observer2(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Observer.init(modifier:environment:cycleDetector:lastValue:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a3 + 8);
  v11 = *(a3 + 12);
  *a8 = a1;
  *(a8 + 4) = a2;
  *(a8 + 8) = *a3;
  *(a8 + 16) = v10;
  *(a8 + 20) = v11;
  v12 = *(a7(0, a5, a6) + 44);
  v13 = type metadata accessor for Optional();
  v14 = *(*(v13 - 8) + 32);

  return v14(a8 + v12, a4, v13);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance Observer<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Observer<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void type metadata accessor for TextField<EmptyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_18BE703A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for SearchSuggestionsModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionsModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  v14[0] = &type metadata for EnvironmentValues.SearchSuggestions;
  v14[1] = v4;
  v14[2] = lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions();
  v14[3] = v5;
  type metadata accessor for StaticSourceWriter(255, v14);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions, &type metadata for SearchHasSuggestions);
  v9 = type metadata accessor for ModifiedContent();
  v13[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v13[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v10 = MEMORY[0x1E697E858];
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v13);
  v12[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<SearchHasSuggestions> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions, &type metadata for SearchHasSuggestions);
  return swift_getWitnessTable(v10, v9, v12);
}

void type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ViewInputFlagModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ObjectFallbackDelegateBox.addDelegate(to:)()
{
  v1 = *v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 104);
  v4 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v4, ObjectType, v3);

  return swift_unknownObjectRelease();
}

double specialized EnvironmentValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v3 = type metadata accessor for EnvironmentObjectKey();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F9E0], v3);
  return EnvironmentValues._set<A>(_:for:)(&v6, v3, v3, WitnessTable);
}

void ObservableFallbackDelegateBox.addDelegate(to:)()
{
  v1 = *(*v0 + 104);
  v2 = v0[2];
  v3 = v2;
  specialized EnvironmentValues.subscript.setter(v2, v1, v1);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t NavigationSplitView.init<>(columnVisibility:sidebar:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(__n128)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a5;
  v33 = a4;
  v30[1] = a3;
  v31 = a2;
  v34 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v16;
  if (*(v16 + 17))
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | *(v16 + 16) | 0x4000;
  lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns();
  v22 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v42[0] = v19;
  v42[1] = v22;
  v43 = v21;
  v44 = 1;
  v41 = 512;
  v24 = (v31)(v23);
  v33(v24);
  v25 = MEMORY[0x1E6981E70];
  v26 = MEMORY[0x1E6981E60];
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v38);
  v35 = v38;
  v36 = v39;
  v37 = v40;
  *(&v29 + 1) = v26;
  *&v29 = a8;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(v42, &v41, &v35, v18, v27, v14, a6, v25, v34, a7, v29, a10);
}

unint64_t lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns()
{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationSplitVisibility.ToTwoColumns, &type metadata for AnyNavigationSplitVisibility.ToTwoColumns, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationSplitVisibility.ToTwoColumns, &type metadata for AnyNavigationSplitVisibility.ToTwoColumns, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationSplitVisibility.ToTwoColumns, &type metadata for AnyNavigationSplitVisibility.ToTwoColumns, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns);
  }

  return result;
}

uint64_t NavigationStack.init<>(path:root:)@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 40);
  v11 = a1[6];
  v18 = a1[7];
  v19 = *a1;
  v12 = type metadata accessor for NavigationStack(0, &type metadata for NavigationPath, a3, a4);
  *(a5 + v12[11]) = 0;
  v13 = a5 + v12[13];
  *v13 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  a2();
  type metadata accessor for AnyNavigationPath.HeterogeneousBoxBase();
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v18;
  outlined copy of NavigationPath.Representation(v7, v8, v9, v10);
  lazy protocol witness table accessor for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous();

  v15 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  outlined consume of NavigationPath.Representation(v7, v8, v9, v10);

  v17 = a5 + v12[12];
  *v17 = v19;
  *(v17 + 8) = v15;
  *(v17 + 16) = v14;
  *(v17 + 24) = 1;
  return result;
}

uint64_t View.navigationBarHidden(_:)(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 48) = 0u;
  *(inited + 64) = 0;
  *(inited + 32) = 0u;
  if (a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  View.toolbar(_:for:)(v6, inited, a2);
  swift_setDeallocating();
  return outlined destroy of ToolbarPlacement(inited + 32);
}

void type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>);
    }
  }
}

void *View.toolbar(_:for:)(char a1, uint64_t a2, uint64_t a3)
{
  v28 = 1;
  v27 = 1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v26;
    v8 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v8, &v22);
      outlined init with copy of ToolbarPlacement.Storage(&v22, &v18);
      if (*(&v19 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v22);
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v18);
        v10 = v22;
        v11 = v23;
        v9 = v24;
      }

      v26 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v11;
        v17 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v17;
        v6 = v26;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 40 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      *(v14 + 64) = v9;
      v8 += 40;
      --v5;
    }

    while (v5);
  }

  LOBYTE(v18) = a1;
  *(&v18 + 1) = 0;
  *&v19 = 0;
  BYTE8(v19) = 4;
  *&v20 = 0;
  BYTE8(v20) = v28;
  *v21 = 0;
  v21[8] = v27;
  *&v21[9] = 770;
  v21[11] = 3;
  *&v21[16] = v6;
  v21[24] = 0;
  MEMORY[0x18D00A570](&v18, a3, &type metadata for ToolbarAppearanceModifier);
  v24 = v20;
  v25[0] = *v21;
  *(v25 + 9) = *&v21[9];
  v22 = v18;
  v23 = v19;
  return outlined destroy of ToolbarAppearanceModifier(&v22);
}

uint64_t initializeWithCopy for ToolbarPlacement(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 8)
  {
    v4 = *(a2 + 32);
    *(result + 24) = v2;
    *(result + 32) = v4;
    v5 = result;
    (**(v2 - 8))();
    return v5;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t initializeWithCopy for ToolbarAppearanceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t sub_18BE713CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v17 = &type metadata for NavigationSplitViewStyleConfiguration.Sidebar;
  v18 = v1;
  v19 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
  v20 = v4;
  type metadata accessor for StaticSourceWriter(255, &v17);
  v7 = type metadata accessor for ModifiedContent();
  v8 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
  v17 = &type metadata for NavigationSplitViewStyleConfiguration.Content;
  v18 = v2;
  v19 = v8;
  v20 = v6;
  type metadata accessor for StaticSourceWriter(255, &v17);
  v9 = type metadata accessor for ModifiedContent();
  v10 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
  v17 = &type metadata for NavigationSplitViewStyleConfiguration.Detail;
  v18 = v3;
  v19 = v10;
  v20 = v5;
  type metadata accessor for StaticSourceWriter(255, &v17);
  v11 = type metadata accessor for ModifiedContent();
  v16[0] = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();
  v16[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v12 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v16);
  v15[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v14[0] = swift_getWitnessTable(v12, v9, v15);
  v14[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v12, v11, v14);
}

void type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>()
{
  if (!lazy cache variable for type metadata for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>)
  {
    v4[6] = v0;
    v4[7] = v1;
    v4[0] = &type metadata for NavigationSplitViewStyleConfiguration.Sidebar;
    v4[1] = &type metadata for NavigationSplitViewStyleConfiguration.Content;
    v4[2] = &type metadata for NavigationSplitViewStyleConfiguration.Detail;
    v4[3] = &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar;
    v4[4] = &protocol witness table for NavigationSplitViewStyleConfiguration.Content;
    v4[5] = &protocol witness table for NavigationSplitViewStyleConfiguration.Detail;
    v2 = type metadata accessor for NavigationSplitView(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>);
    }
  }
}

void type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>)
  {
    v4[0] = &type metadata for NavigationSplitViewStyleConfiguration.Content;
    v4[1] = &unk_1EFFB3840;
    v4[2] = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
    v4[3] = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent();
    v2 = type metadata accessor for StaticSourceWriter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>, &type metadata for HasSwiftUINavigationKey, &protocol witness table for HasSwiftUINavigationKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

double destroy for NavigationSplitViewStyleConfiguration(void *a1)
{

  return result;
}

uint64_t partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter@<X0>(_DWORD *a1@<X8>)
{
  return partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter(a1);
}

{
  return specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter(*(v1 + 16), a1);
}

uint64_t type metadata completion function for SelectionManagerBox(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationSplitView(uint64_t a1, uint64_t a2, void *a3)
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
  v13 = *(v8 + 48);
  v14 = *(a3[4] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 18);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);

    v24 = 1;
  }

  else
  {
    v24 = 0;
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
  }

  *(v21 + 18) = v24;
  v25 = (v22 + 26) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 17);
  if (v26 >= 2)
  {
    v26 = *v25 + 2;
  }

  v27 = (v21 + 26) & 0xFFFFFFFFFFFFFFF8;
  if (v26 == 1)
  {
    *v27 = *v25;
    *(v27 + 8) = *(v25 + 8);
    *(v27 + 16) = *(v25 + 16);

    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v27 = *v25;
    *(v27 + 8) = *(v25 + 8);
  }

  *(v27 + 17) = v28;
  *(v27 + 18) = *(v25 + 18);
  return a1;
}

double NavigationSplitView.visibility.getter(uint64_t a1)
{
  if (*(v2 + *(a1 + 76) + 18))
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
    v4 = v3;

    MEMORY[0x18D00ACC0](v4);
  }

  else
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for State<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981790]);

    State.wrappedValue.getter();
  }

  return result;
}

uint64_t closure #1 in NavigationSplitView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t type metadata completion function for List(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SelectionManagerBox(255, a1[2], a1[4], a4);
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for NavigableListModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ResolvedList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v4);
  result = type metadata accessor for _ListStyleConfiguration(319, v4, WitnessTable, v6);
  if (v8 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for SelectionManagerBox<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _ListStyleConfiguration(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ListStyleContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent()
{
  result = lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent;
  if (!lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListStyleContent, &type metadata for ListStyleContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent;
  if (!lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListStyleContent, &type metadata for ListStyleContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent);
  }

  return result;
}

uint64_t sub_18BE721A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v32 = v2;
  v31 = *a1;
  v3 = type metadata accessor for TypesMatch();
  swift_getWitnessTable(MEMORY[0x1E697DB48], v3);
  v33 = type metadata accessor for InvertedViewInputPredicate();
  type metadata accessor for ResolvedList(255, v1, v2, v4);
  type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>(255);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>, &type metadata for AutomaticTextFieldLabelDisplayMode, &protocol witness table for AutomaticTextFieldLabelDisplayMode, type metadata accessor for TextFieldLabelDisplayModeModifier);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v49[0] = &protocol witness table for ResolvedList<A>;
  v49[1] = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v9 = MEMORY[0x1E697E858];
  v48[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v49);
  v48[1] = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>, lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  v47[0] = swift_getWitnessTable(v9, v6, v48);
  v47[1] = &protocol witness table for TextFieldLabelDisplayModeModifier<A>;
  v46[0] = swift_getWitnessTable(v9, v7, v47);
  v46[1] = &protocol witness table for Fix_53164375;
  WitnessTable = swift_getWitnessTable(v9, v8, v46);
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v14 = type metadata accessor for ModifiedContent();
  v42 = OpaqueTypeMetadata2;
  v43 = &type metadata for ListContainerContext;
  v44 = OpaqueTypeConformance2;
  v45 = v12;
  v41[0] = swift_getOpaqueTypeConformance2();
  v41[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v40[0] = swift_getWitnessTable(v9, v13, v41);
  v40[1] = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v15 = swift_getWitnessTable(v9, v14, v40);
  v42 = v14;
  v43 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for ModifiedContent();
  v17 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  v42 = v14;
  v43 = v15;
  v39[0] = swift_getOpaqueTypeConformance2();
  v39[1] = &protocol witness table for ResetContentMarginModifier;
  v18 = swift_getWitnessTable(v9, v16, v39);
  v42 = &type metadata for ListStyleContent;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  type metadata accessor for StaticSourceWriter(255, &v42);
  v19 = type metadata accessor for ModifiedContent();
  type metadata accessor for NavigableListModifier(255, v31, v32, v20);
  v21 = type metadata accessor for ModifiedContent();
  v42 = v8;
  v43 = WitnessTable;
  v38[0] = swift_getOpaqueTypeConformance2();
  v38[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v37[0] = swift_getWitnessTable(v9, v19, v38);
  v37[1] = &protocol witness table for NavigableListModifier<A>;
  v22 = swift_getWitnessTable(v9, v21, v37);
  v42 = v21;
  v43 = v22;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>(255);
  v23 = type metadata accessor for ModifiedContent();
  v24 = type metadata accessor for ModifiedContent();
  v25 = type metadata accessor for StaticIf();
  v26 = swift_getWitnessTable(MEMORY[0x1E6980688], v33);
  v42 = v21;
  v43 = v22;
  v36[0] = swift_getOpaqueTypeConformance2();
  v36[1] = _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesContextMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>, MEMORY[0x1E697FD30]);
  v27 = swift_getWitnessTable(v9, v23, v36);
  v35[0] = v27;
  v35[1] = &protocol witness table for PrimitiveSelectionContainerModifier;
  v34[0] = v26;
  v34[1] = swift_getWitnessTable(v9, v24, v35);
  v34[2] = v27;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v25, v34);
  v28 = type metadata accessor for ResettableLazyLayoutRoot();
  return swift_getWitnessTable(MEMORY[0x1E6980408], v28);
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>)
  {
    type metadata accessor for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E69808E8]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsPredicate<ScrollViewStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, MEMORY[0x1E69809A0]);
    v5[1] = &protocol witness table for ListHasLazyStackBehaviorInScrollableAxisModifier;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate()
{
  result = lazy protocol witness table cache variable for type ListPresentationPredicate and conformance ListPresentationPredicate;
  if (!lazy protocol witness table cache variable for type ListPresentationPredicate and conformance ListPresentationPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPresentationPredicate, &type metadata for ListPresentationPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationPredicate and conformance ListPresentationPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier()
{
  result = lazy protocol witness table cache variable for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPresentationSizingModifier, &type metadata for ListPresentationSizingModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesContextMenuInteraction>)
  {
    lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesContextMenuInteraction>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata completion function for NavigationLink(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>)
  {
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>(255, &lazy cache variable for type metadata for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>, lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle, &type metadata for AutomaticNavigationSplitViewStyle, type metadata accessor for NavigationSplitStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle;
  if (!lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticNavigationSplitViewStyle, &type metadata for AutomaticNavigationSplitViewStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for NavigationSplitStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for NavigationSplitStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>(255);
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>(255, &lazy cache variable for type metadata for NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>, lazy protocol witness table accessor for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle, &type metadata for BalancedNavigationSplitViewStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>)
  {
    type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>();
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>(255, &lazy cache variable for type metadata for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>, lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone, &type metadata for AutomaticNavigationSplitViewStyle_Phone);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone()
{
  result = lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone;
  if (!lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticNavigationSplitViewStyle_Phone, &type metadata for AutomaticNavigationSplitViewStyle_Phone, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle()
{
  result = lazy protocol witness table cache variable for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle;
  if (!lazy protocol witness table cache variable for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BalancedNavigationSplitViewStyle, &type metadata for BalancedNavigationSplitViewStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>()
{
  result = lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>;
  if (!lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>)
  {
    type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>();
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitView<A, B, C>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

id protocol witness for static EnvironmentKey.defaultValue.getter in conformance NSManagedObjectContextEnvironmentKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static NSManagedObjectContextEnvironmentKey.defaultValue;
  *a1 = static NSManagedObjectContextEnvironmentKey.defaultValue;

  return v2;
}

id one-time initialization function for defaultValue()
{
  result = [objc_allocWithZone(MEMORY[0x1E695D628]) initWithConcurrencyType_];
  static NSManagedObjectContextEnvironmentKey.defaultValue = result;
  return result;
}

uint64_t NavigationSplitView.init<>(sidebar:detail:)@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = xmmword_18CDF3C70;
  v35 = 0;
  v36 = 0;
  v33 = 512;
  v21 = v20();
  a3(v21);
  v22 = MEMORY[0x1E6981E70];
  v23 = MEMORY[0x1E6981E60];
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v30);
  v27 = v30;
  v28 = v31;
  v29 = v32;
  *(&v26 + 1) = v23;
  *&v26 = a7;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v34, &v33, &v27, v19, v24, v16, a5, v22, x8_0, a6, v26, a8);
}

uint64_t View.navigationBarTitle(_:displayMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a4;
  v25 = a8;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  LOBYTE(a5) = *a5;
  View.navigationTitle(_:)(a1, a2, a3, v24, a6, a7);
  v28 = a5;
  v27[0] = a7;
  v27[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v19 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v27);
  v21 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v26[0] = WitnessTable;
  v26[1] = v21;
  v22 = swift_getWitnessTable(v19, v15, v26);
  View.navigationBarTitleDisplayMode(_:)(&v28, v15, v22, v25);
  return (*(v16 + 8))(v18, v15);
}

uint64_t View.navigationTitle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  a7(v8, v9);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

__n128 FetchRequest.init(fetchRequest:animation:)@<Q0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  v7 = Transaction.init(animation:)();
  FetchRequest.init(fetchRequest:transaction:)(a1, v7, a3, v10);

  v8 = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = v8;
  *(a4 + 64) = v10[4];
  result = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = result;
  return result;
}

__n128 FetchRequest.init(fetchRequest:transaction:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest, 0x1E695D5E0);
  swift_dynamicCast();
  type metadata accessor for DeferredFetchRequest(0, a3, v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v14;
  v11 = DeferredFetchRequest.__allocating_init(_:)(partial apply for closure #1 in FetchRequest.init(fetchRequest:transaction:), v10);
  FetchRequest.init(deferredFetchRequest:transaction:)(v11, a2, v15);

  v12 = v15[3];
  *(a4 + 32) = v15[2];
  *(a4 + 48) = v12;
  *(a4 + 64) = v15[4];
  result = v15[1];
  *a4 = v15[0];
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_18BE73B10()
{

  return swift_deallocObject();
}

void *DeferredFetchRequest.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = a1;
  result[4] = a2;
  return result;
}

double FetchRequest.init(deferredFetchRequest:transaction:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v7 = swift_allocObject();
  v8 = *(v6 + 80);
  *(v7 + 16) = v8;
  *(a3 + 16) = property wrapper backing initializer of FetchRequest.controller(partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of FetchRequest._controller, v7, v8, v9);
  *(a3 + 24) = v10;
  *(a3 + 32) = v11 & 1;
  v15 = 0uLL;
  property wrapper backing initializer of FetchRequest.results(&v15, v8, v11, v12);
  v13 = v17;
  result = *&v16;
  *(a3 + 40) = v16;
  *(a3 + 64) = a2;
  *(a3 + 72) = a1;
  *(a3 + 56) = v13;
  return result;
}

uint64_t property wrapper backing initializer of FetchRequest.controller(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FetchedResults(255, a3, a3, a4);
  Controller = type metadata accessor for FetchController(0, MEMORY[0x1E69E7CA8] + 8, a3, v5);
  swift_getWitnessTable(protocol conformance descriptor for FetchController<A, B, C>, Controller);
  return StateObject.init(wrappedValue:)();
}

uint64_t type metadata completion function for FetchController(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *property wrapper backing initializer of FetchRequest.results(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchedResults(255, a2, a3, a4);
  type metadata accessor for Optional();
  return State.init(wrappedValue:)();
}

__n128 FetchRequest<>.init(sortDescriptors:predicate:animation:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for DeferredFetchRequest(0, a4, a3, a4);
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v10 = DeferredFetchRequest.__allocating_init(_:)(partial apply for closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:), v9);

  v11 = a2;
  v12 = Transaction.init(animation:)();
  FetchRequest.init(deferredFetchRequest:transaction:)(v10, v12, v15);

  v13 = v15[3];
  *(a5 + 32) = v15[2];
  *(a5 + 48) = v13;
  *(a5 + 64) = v15[4];
  result = v15[1];
  *a5 = v15[0];
  *(a5 + 16) = result;
  return result;
}

{
  *&v17[0] = a1;
  v16[2] = a4;
  type metadata accessor for SortDescriptor();
  v9 = type metadata accessor for Array();
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x1E696AEB0);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v9);
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:), v16, v9, v10, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  FetchRequest<>.init(sortDescriptors:predicate:animation:)(v13, a2, a3, a4, v17);
  v14 = v17[3];
  *(a5 + 32) = v17[2];
  *(a5 + 48) = v14;
  *(a5 + 64) = v17[4];
  result = v17[1];
  *a5 = v17[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_18BE73FB0()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for ScrollViewBehavior(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t initializeWithCopy for FetchRequest(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);
  outlined copy of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(v6, v7, v8);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = a2[5];
  if (v9)
  {
    v10 = a2[6];
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    v11 = v9;
    v12 = v10;
  }

  else
  {
    *(a1 + 40) = *(a2 + 5);
  }

  v13 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v13;
  *(a1 + 72) = a2[9];

  return a1;
}

double outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

double outlined copy of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
  }

  return result;
}

double destroy for FetchRequest(uint64_t a1)
{
  outlined consume of Environment<NSManagedObjectContext>.Content(*a1, *(a1 + 8));
  outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
  }

  return result;
}

void outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1EEE66BB8](a1, a2);
  }

  else
  {
  }
}

double outlined consume of ResolvableCLKTextProvider.FontStorage(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for AnyNavigationSplitVisibility(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57347 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 57347 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1FFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1FFC)
  {
    v6 = ((a2 - 8189) >> 16) + 1;
    *result = a2 - 8189;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 2) & 0x7FF) - (a2 << 11);
    *result = (8 * v7) & 0xFE00 | (4 * (v7 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyNavigationSplitVisibility(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1FFD)
  {
    goto LABEL_17;
  }

  if (a2 + 57347 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 57347 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 57347;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 57347;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 57347;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 1) & 0x1F00) ^ 0x1FFF;
  if (v6 >> 2 >= 0x7FF)
  {
    v6 = -1;
  }

  return v6 + 1;
}

double NavigationSplitView.$visibility.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 76));
  v4 = *v3;
  v5 = v3[1];
  if (*(v3 + 18))
  {
    v6 = *(v3 + 8);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for State<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981790]);

    State.projectedValue.getter();
  }

  return result;
}

double AutomaticNavigationSplitViewStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 18) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 41) = 1;
  *(a2 + 42) = v4;

  return result;
}

uint64_t protocol witness for NavigationSplitViewStyle.makeBody(configuration:) in conformance AutomaticNavigationSplitViewStyle_Phone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(a1 + 16);
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  *a2 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *a1;
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 32);
  *(a2 + 80) = *(a1 + 48);
  *(a2 + 81) = 2;
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v6, &v5);
}

uint64_t _NavigationSplitReader.Core.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v41 = *Value;
  v4 = *(Value + 16);
  v39 = *(Value + 24);
  v40 = *(Value + 8);
  v37 = *(Value + 26);
  v38 = *(Value + 25);

  v5 = AGGraphGetValue();
  v6 = *v5;
  v7 = *(v5 + 8);
  v35 = *(v5 + 18);
  v36 = *(v5 + 16);
  v8 = *MEMORY[0x1E698D3F8];
  if (*(v1 + 12) == *MEMORY[0x1E698D3F8])
  {

    v34 = 0;
  }

  else
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for PreparedCompactColumn?, &type metadata for PreparedCompactColumn, MEMORY[0x1E69E6720]);

    v34 = *AGGraphGetValue();
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v9 = AGGraphGetValue();
  result = outlined init with copy of NavigationAuthority?(v9, v89, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v90 == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = a1;
    outlined init with take of NavigationAuthority(v89, v72);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v12 = *WeakValue;
      v13 = WeakValue[1] << 32;
    }

    else
    {
      v13 = 0xFFFFFFFF00000000;
      v12 = 0xFFFFFFFFLL;
    }

    type metadata accessor for UISplitViewControllerProxyStorage(0);
    v14 = AGGraphGetWeakValue();
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    if (*(v1 + 44) == v8)
    {
      v16 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    else
    {
      type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(0, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
      v17 = AGGraphGetValue();
      outlined init with copy of UINavigationPresentationAdaptor?(v17, v70);
      v32 = v70[1];
      v33 = v70[0];
      v16 = v71;
    }

    *&v73 = v41;
    BYTE8(v73) = v40;
    v74 = v4;
    v75 = v39;
    v76 = v38;
    v77 = v37;
    v78 = v6;
    v79 = v7;
    v80 = v36;
    v81 = v35;
    v82 = v34;
    outlined init with take of NavigationAuthority(v72, v83);
    v83[3] = v13 | v12;
    v84 = 0;
    v86 = v33;
    v87 = v32;
    v85 = v15;
    v88 = v16;
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
    v18 = AGGraphGetValue();
    v55 = *v18;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *(v18 + 16);
    v59 = *(v18 + 64);
    v57 = v20;
    v58 = v19;
    v56 = v21;
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v55, v89, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
    v22 = AGGraphGetValue();
    v60 = *v22;
    v24 = *(v22 + 32);
    v23 = *(v22 + 48);
    v25 = *(v22 + 16);
    v64 = *(v22 + 64);
    v62 = v24;
    v63 = v23;
    v61 = v25;
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v60, v89, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
    v26 = AGGraphGetValue();
    v65 = *v26;
    v28 = *(v26 + 32);
    v27 = *(v26 + 48);
    v29 = *(v26 + 16);
    v69 = *(v26 + 64);
    v67 = v28;
    v68 = v27;
    v66 = v29;
    outlined init with take of _NavigationSplitReader.ForestRoot(&v73, v89);
    v47 = v57;
    v48 = v58;
    v45 = v55;
    v46 = v56;
    *&v49[24] = v61;
    *&v49[40] = v62;
    *&v49[56] = v63;
    *v49 = v59;
    *&v49[72] = v64;
    *&v49[8] = v60;
    v52 = v67;
    v53 = v68;
    v54 = v69;
    v50 = v65;
    v51 = v66;
    v102 = v67;
    v103 = v68;
    v98 = *&v49[48];
    v99 = *&v49[64];
    v100 = v65;
    v101 = v66;
    v104 = v69;
    v97 = *&v49[32];
    v93 = v57;
    v94 = v58;
    v95 = *v49;
    v96 = *&v49[16];
    v91 = v55;
    v92 = v56;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v65, v42, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
    v30 = AGGraphGetValue();
    result = outlined init with copy of NavigationAuthority?(v30, v43, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (v44 != 1)
    {
      outlined init with take of NavigationAuthority(v43, v42);
      outlined init with take of NavigationAuthority?(v42, v31 + 368);
      return outlined init with take of VariadicViewForest<_NavigationSplitReader.ForestRoot, (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>(v89, v31);
    }
  }

  __break(1u);
  return result;
}

uint64_t _NavigationSplitReader.CustomParameters.value.getter(unint64_t a1, int a2)
{
  v7 = *AGGraphGetValue();
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for UISplitViewControllerProxy?, &type metadata for UISplitViewControllerProxy, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = lazy protocol witness table accessor for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters();

  MEMORY[0x18D000B90](&unk_1EFFAE1A8, v3, v4);
  Rule.withObservation<A>(observationCenter:do:)();

  if (v8)
  {
    KeyPath = swift_getKeyPath();
    specialized UISplitViewControllerProxy.subscript.getter(KeyPath, v8);
  }

  return v7;
}

id sub_18BE74CDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredSplitBehavior];
  *a2 = result;
  return result;
}

uint64_t NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)@<X0>(uint64_t *a1@<X0>, __int16 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 8);
  v18 = *(a1 + 18);
  v19 = *a2;
  v27 = a3[1];
  v28 = *a3;
  v25 = *(a3 + 17);
  v26 = *(a3 + 16);
  v32[0] = a7;
  v32[1] = a8;
  v32[2] = a10;
  v33 = a11;
  v34 = a12;
  v20 = type metadata accessor for NavigationSplitView(0, v32);
  v21 = v20[21];
  *(a9 + v21) = 512;
  v22 = a9 + v20[19];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 18) = v18;
  *(a9 + v21) = v19;
  v23 = a9 + v20[20];
  *v23 = v28;
  *(v23 + 8) = v27;
  *(v23 + 16) = v26;
  *(v23 + 17) = v25;
  (*(*(a7 - 8) + 32))(a9, a4, a7);
  (*(*(a8 - 8) + 32))(a9 + v20[17], a5, a8);
  return (*(*(a10 - 8) + 32))(a9 + v20[18], a6, a10);
}

void protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double destroy for NavigationSplitView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v10 + 8))(v12);
  v13 = (*(v11 + 56) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 18);
  if (v14 >= 2)
  {
    v14 = *v13 + 2;
  }

  if (v14 == 1)
  {
  }

  v15 = (v13 + 26) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 17);
  if (v16 >= 2)
  {
    v16 = *v15 + 2;
  }

  if (v16 == 1)
  {
  }

  return result;
}

uint64_t NavigationSplitView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v41 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
  v4 = a1[5];
  v35 = a1[2];
  v36 = v4;
  *&v68 = &type metadata for NavigationSplitViewStyleConfiguration.Sidebar;
  *(&v68 + 1) = v35;
  *&v69 = v41;
  *(&v69 + 1) = v4;
  type metadata accessor for StaticSourceWriter(255, &v68);
  v5 = type metadata accessor for ModifiedContent();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v32 - v6;
  v7 = a1[3];
  v42 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
  v8 = a1[6];
  *&v68 = &type metadata for NavigationSplitViewStyleConfiguration.Content;
  *(&v68 + 1) = v7;
  v33 = v7;
  *&v69 = v42;
  *(&v69 + 1) = v8;
  type metadata accessor for StaticSourceWriter(255, &v68);
  v39 = type metadata accessor for ModifiedContent();
  v46 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v32 - v9;
  v10 = a1[4];
  v43 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
  v11 = a1[7];
  *&v68 = &type metadata for NavigationSplitViewStyleConfiguration.Detail;
  *(&v68 + 1) = v10;
  v34 = v10;
  *&v69 = v43;
  *(&v69 + 1) = v11;
  type metadata accessor for StaticSourceWriter(255, &v68);
  v12 = type metadata accessor for ModifiedContent();
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v32 - v15;
  NavigationSplitView.configuration.getter(a1, v66);
  v16 = v35;
  *&v17 = v35;
  *(&v17 + 1) = v7;
  *&v18 = v10;
  *(&v18 + 1) = v36;
  v48 = v18;
  v49 = v17;
  v59[1] = v17;
  v59[2] = v18;
  v60 = v8;
  v61 = v11;
  v62 = v2;
  v19 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationSplitViewStyleConfiguration.Sidebar, partial apply for closure #1 in NavigationSplitView.body.getter, v59, &type metadata for ResolvedNavigationSplitStyle, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, v16, v19);
  v68 = v66[0];
  v69 = v66[1];
  v70 = v66[2];
  v71 = v67;
  outlined destroy of ResolvedNavigationSplitStyle(&v68);
  v55[1] = v49;
  v55[2] = v48;
  v56 = v8;
  v57 = v11;
  v58 = v2;
  v20 = v2;
  v65[0] = v19;
  v65[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v21 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v65);
  v23 = v37;
  v24 = v50;
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationSplitViewStyleConfiguration.Content, partial apply for closure #2 in NavigationSplitView.body.getter, v55, v5, &type metadata for NavigationSplitViewStyleConfiguration.Content, v33, WitnessTable);
  (*(v45 + 8))(v24, v5);
  v51[1] = v49;
  v51[2] = v48;
  v52 = v8;
  v53 = v11;
  v54 = v20;
  v64[0] = WitnessTable;
  v64[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v25 = v39;
  v26 = swift_getWitnessTable(v21, v39, v64);
  v27 = v38;
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationSplitViewStyleConfiguration.Detail, partial apply for closure #3 in NavigationSplitView.body.getter, v51, v25, &type metadata for NavigationSplitViewStyleConfiguration.Detail, v34, v26);
  (*(v46 + 8))(v23, v25);
  v63[0] = v26;
  v63[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v21, v12, v63);
  v28 = v40;
  v29 = v27;
  static ViewBuilder.buildExpression<A>(_:)();
  v30 = *(v44 + 8);
  v30(v29, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v30)(v28, v12);
}

void NavigationSplitView.configuration.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NavigationSplitView.$visibility.getter(a1, &v15);
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(v2 + *(a1 + 84));
  NavigationSplitView.visibility.getter(a1);
  v9 = v14 >> 14;
  if (v9 < 2 || v9 != 2 && v14 == 49152)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  NavigationSplitView.$preferredCompactColumn.getter(a1, &v15);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 18) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
}

void type metadata accessor for State<NavigationSplitViewColumn>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double NavigationSplitView.$preferredCompactColumn.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 80));
  v4 = *v3;
  v5 = v3[1];
  if (*(v3 + 17))
  {
    v6 = *(v3 + 16);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for State<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981790]);

    State.projectedValue.getter();
  }

  return result;
}

uint64_t initializeWithCopy for NavigationSplitViewStyleConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);
  v4 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v4;
  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t closure #2 in NavigationSplitView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;
  type metadata accessor for NavigationSplitView(0, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

uint64_t closure #3 in NavigationSplitView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  type metadata accessor for NavigationSplitView(0, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v5 + 8))(v7, a4);
}

double ResolvedNavigationSplitStyle.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 41) = 1;
  *(a1 + 42) = v4;
  *(a1 + 48) = v6;

  return result;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedNavigationSplitStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v7, v6);
}

uint64_t NavigationSplitStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v15[2] = *(a1 + 32);
  v16 = *(a1 + 48);
  (*(v3 + 24))(v15, v4, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);

  return a1;
}

double destroy for NavigationSplitReader(uint64_t *a1)
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*a1, a1[1]);

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

void *NavigationSplitReader.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v20 = *(v1 + 56);
  v7 = *(v1 + 72);
  v18 = *(v1 + 80);
  v19 = *(v1 + 50);
  v17 = *(v1 + 81);
  v16 = Namespace.wrappedValue.getter();
  v15 = Namespace.wrappedValue.getter();
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI21NavigationSplitColumnO_AC0ef4ViewG5WidthOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for NavigationStateHost();
  lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type NavigationStateHost and conformance NavigationStateHost, type metadata accessor for NavigationStateHost, "=M\tbTv\b");

  v8 = StateObject.wrappedValue.getter();
  v22 = v3;
  v23 = v4;
  v24 = v5;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v10 = v9;

  result = MEMORY[0x18D00ACC0](&v21, v10);
  v12 = v21 >> 14;
  if (v12 < 2 || v12 != 2 && v21 == 49152)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 58) = v19;
  *(a1 + 64) = v8;
  *(a1 + 72) = v20;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = v18;
  *(a1 + 104) = v13;
  *(a1 + 112) = 1;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI21NavigationSplitColumnO_AC0ef4ViewG5WidthOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationSplitViewColumnWidth>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn, &type metadata for NavigationSplitColumn, &type metadata for NavigationSplitViewColumnWidth);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 8);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 32);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

double destroy for _NavigationSplitReader(void *a1)
{

  return result;
}

void closure #1 in _NavigationSplitReader.CustomParameters.value.getter(void *a3@<X8>)
{
  type metadata accessor for UISplitViewControllerProxyStorage(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v5 = *WeakValue;
    swift_getKeyPath();
    lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage, protocol conformance descriptor for UISplitViewControllerProxyStorage);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

uint64_t initializeWithCopy for NavigationSplitParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);

  return a1;
}

double _NavigationSplitReader.DerivedAttributes.updateValue()()
{
  v41 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = Value[1];
  *&v40 = *Value;
  *(&v40 + 1) = v1;

  swift_retain_n();
  v2 = AGGraphGetValue();
  v4 = *v2;
  v3 = v2[1];
  *&v28[0] = v4;
  *(&v28[0] + 1) = v3;

  EnvironmentValues.horizontalSizeClass.getter();

  LOBYTE(v28[0]) = v38[0] & 1;
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v28[0]) = 1;
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey, MEMORY[0x1E697FE38]);
  memset(v28, 0, 17);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of NavigationAuthority?(v25 + 16, v28, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  v5 = *(&v28[0] + 1);
  outlined destroy of _VariadicView_Children.Element?(v28, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v5 != 1)
  {
    goto LABEL_17;
  }

  type metadata accessor for NavigationStateHost();
  AGGraphGetValue();

  v6 = AGGraphGetValue();
  v7 = *v6;
  v8 = v6[1];
  swift_weakInit();
  swift_weakAssign();

  *(&v28[0] + 1) = v7;
  *&v28[1] = v8;
  outlined assign with take of NavigationAuthority?(v28, v25 + 16);
  AGGraphGetValue();
  v1 = *(&v40 + 1);
  v28[0] = v40;

  NavigationStateHost.createState(environment:)(v28);

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationState.StackContent.Key>, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63410;
  v10 = *AGGraphGetValue();
  v11 = *AGGraphGetValue();
  *(inited + 32) = v10;
  *(inited + 40) = 0;
  *(inited + 48) = v11;
  v12 = *AGGraphGetValue();
  v13 = *AGGraphGetValue();
  *(inited + 56) = v12;
  *(inited + 64) = 2;
  *(inited + 72) = v13;
  if (*AGGraphGetValue() == 3)
  {
    v14 = *AGGraphGetValue();
    v15 = *AGGraphGetValue();
    v16 = 3;
    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 80) = v14;
    *(inited + 88) = 1;
    *(inited + 96) = v15;
  }

  else
  {
    v16 = *(inited + 16);
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  v24 = v1;
  v17 = 0;
  v18 = (inited + 48);
  do
  {
    if (v17 >= *(inited + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v19 = *(v18 - 2);
    v20 = *(v18 - 8);
    v21 = *v18;
    outlined init with copy of NavigationAuthority?(v25 + 16, v38, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (v39 == 1)
    {
      goto LABEL_22;
    }

    ++v17;
    memset(v28, 0, sizeof(v28));
    v29 = 22;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v36 = 0;
    NavigationAuthority.enqueueRequest(_:)(v28);
    outlined destroy of NavigationRequest(v28);
    outlined destroy of NavigationAuthority(v38);
    v18 += 3;
  }

  while (v16 != v17);
  v1 = v24;
LABEL_16:

LABEL_17:
  LOBYTE(v28[0]) = 0;
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of NavigationAuthority?(v25 + 16, v26, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v27 == 1)
  {
LABEL_23:
    __break(1u);
  }

  outlined init with take of NavigationAuthority(v26, v38);
  v22 = v40;
  outlined init with take of NavigationAuthority?(v38, v28);
  *(&v28[1] + 8) = v22;
  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(0);

  AGGraphSetOutputValue();
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v28, type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues));

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *specialized closure #1 in Attribute.subscript.getter@<X0>(void *a3@<X8>)
{
  result = swift_getAtKeyPath();
  *a3 = v5;
  return result;
}

double key path getter for NavigationStateHost.seedHost : NavigationStateHost@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 192);

  return result;
}

uint64_t specialized _NavigationSplitReader.PreparedColumn.updateValue()()
{
  v1 = v0;
  v82 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v0 + 4))
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      *&v11 = *WeakValue;
    }

    else
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
    }

    v50 = v11;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    *(v12 + 16) = v50;

    *(v1 + 5) = v12;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    result = outlined init with copy of NavigationState?(Value, &v71, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (*(&v71 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v15 = *(v1 + 8);
    v16 = *AGGraphGetValue();
    v17 = *AGGraphGetValue();
    outlined init with take of NavigationAuthority(&v71, v4);
    *(v4 + 3) = v16;
    v4[32] = v15;
    *(v4 + 5) = v17;
    UUID.init()();
    *&v4[*(v2 + 28)] = v12;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>(0);
    swift_allocObject();
    *(v1 + 4) = LocationBox.init(_:)();
  }

  else
  {
    v5 = *(v0 + 5);
    if (v5)
    {

      v6 = AGGraphGetWeakValue();
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        swift_beginAccess();
        if (*(v5 + 16) != v7 || *(v5 + 20) != v8)
        {
          *(v5 + 16) = v7;
          *(v5 + 20) = v8;
        }
      }
    }
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v18 = AGGraphGetValue();
  outlined init with copy of NavigationState?(v18, v80, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v81 == 1)
  {
    __break(1u);
  }

  v19 = *(v1 + 8);
  v20 = *AGGraphGetValue();
  v21 = *AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  if (Strong && (v23 = Strong, swift_beginAccess(), v24 = v23[8], v68 = v23[7], v69 = v24, v70[0] = v23[9], *(v70 + 10) = *(v23 + 154), v25 = v23[4], v64 = v23[3], v65 = v25, v26 = v23[6], v66 = v23[5], v67 = v26, v27 = v23[2], v62 = v23[1], v63 = v27, outlined init with copy of NavigationState?(&v62, v60, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v77 = v68, v78 = v69, v79[0] = v70[0], *(v79 + 10) = *(v70 + 10), v73 = v64, v74 = v65, v75 = v66, v76 = v67, v71 = v62, v72 = v63, getEnumTag for AccessibilityActionCategory.Category(&v71) != 1))
  {
    v57 = v68;
    v58 = v69;
    v59[0] = v70[0];
    *(v59 + 10) = *(v70 + 10);
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v56 = v67;
    v51 = v62;
    v52 = v63;
    v28 = NavigationState.canDismissRoot(of:)(v20, v19, v21);
    v60[6] = v57;
    v60[7] = v58;
    v61[0] = v59[0];
    *(v61 + 10) = *(v59 + 10);
    v60[2] = v53;
    v60[3] = v54;
    v60[4] = v55;
    v60[5] = v56;
    v60[0] = v51;
    v60[1] = v52;
    outlined destroy of NavigationState(v60);
  }

  else
  {
    v28 = 0;
  }

  outlined destroy of NavigationAuthority(v80);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v50 = v19;
  if (v19 == 1)
  {
    v29 = 1;
  }

  else
  {
    AGGraphGetValue();
    AGGraphGetValue();
    v29 = v19 == 2;
  }

  AGGraphGetValue();
  v30 = *AGGraphGetValue();
  v49 = *AGGraphGetValue();
  KeyPath = swift_getKeyPath();
  v31 = *(v1 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  *(v32 + 32) = v28 & 1;
  v47 = swift_getKeyPath();
  v33 = v1[1];
  v62 = *v1;
  v63 = v33;
  v35 = *v1;
  v34 = v1[1];
  v64 = v1[2];
  v71 = v35;
  v72 = v34;
  v73 = v1[2];
  MEMORY[0x1EEE9AC00](v47);
  *(&v46 - 2) = &v62;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  v37 = v36;
  v38 = lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>();

  MEMORY[0x18D000B40](v37, &type metadata for NavigationState.SelectionSeed, v38);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v39 = v60[0];
  v40 = v30;
  *&v71 = v30;
  v41 = v49;
  v42 = v50;
  *(&v71 + 1) = v50;
  *&v72 = v49;
  *(&v72 + 1) = -1;
  v44 = v47;
  v43 = KeyPath;
  *&v73 = KeyPath;
  *(&v73 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v74 = v32;
  *(&v74 + 1) = v47;
  LODWORD(v75) = v60[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
  AGGraphSetOutputValue();
  *&v71 = v40;
  *(&v71 + 1) = v42;
  *&v72 = v41;
  *(&v72 + 1) = -1;
  *&v73 = v43;
  *(&v73 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v74 = v32;
  *(&v74 + 1) = v44;
  LODWORD(v75) = v39;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v71, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, v45);
}

{
  v1 = v0;
  v82 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v0 + 4))
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      *&v11 = *WeakValue;
    }

    else
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
    }

    v50 = v11;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    *(v12 + 16) = v50;

    *(v1 + 5) = v12;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    result = outlined init with copy of NavigationState?(Value, &v71, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (*(&v71 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v15 = *(v1 + 8);
    v16 = *AGGraphGetValue();
    v17 = *AGGraphGetValue();
    outlined init with take of NavigationAuthority(&v71, v4);
    *(v4 + 3) = v16;
    v4[32] = v15;
    *(v4 + 5) = v17;
    UUID.init()();
    *&v4[*(v2 + 28)] = v12;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>(0);
    swift_allocObject();
    *(v1 + 4) = LocationBox.init(_:)();
  }

  else
  {
    v5 = *(v0 + 5);
    if (v5)
    {

      v6 = AGGraphGetWeakValue();
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        swift_beginAccess();
        if (*(v5 + 16) != v7 || *(v5 + 20) != v8)
        {
          *(v5 + 16) = v7;
          *(v5 + 20) = v8;
        }
      }
    }
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v18 = AGGraphGetValue();
  outlined init with copy of NavigationState?(v18, v80, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v81 == 1)
  {
    __break(1u);
  }

  v19 = *(v1 + 8);
  v20 = *AGGraphGetValue();
  v21 = *AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  if (Strong && (v23 = Strong, swift_beginAccess(), v24 = v23[8], v68 = v23[7], v69 = v24, v70[0] = v23[9], *(v70 + 10) = *(v23 + 154), v25 = v23[4], v64 = v23[3], v65 = v25, v26 = v23[6], v66 = v23[5], v67 = v26, v27 = v23[2], v62 = v23[1], v63 = v27, outlined init with copy of NavigationState?(&v62, v60, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v77 = v68, v78 = v69, v79[0] = v70[0], *(v79 + 10) = *(v70 + 10), v73 = v64, v74 = v65, v75 = v66, v76 = v67, v71 = v62, v72 = v63, getEnumTag for AccessibilityActionCategory.Category(&v71) != 1))
  {
    v57 = v68;
    v58 = v69;
    v59[0] = v70[0];
    *(v59 + 10) = *(v70 + 10);
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v56 = v67;
    v51 = v62;
    v52 = v63;
    v28 = NavigationState.canDismissRoot(of:)(v20, v19, v21);
    v60[6] = v57;
    v60[7] = v58;
    v61[0] = v59[0];
    *(v61 + 10) = *(v59 + 10);
    v60[2] = v53;
    v60[3] = v54;
    v60[4] = v55;
    v60[5] = v56;
    v60[0] = v51;
    v60[1] = v52;
    outlined destroy of NavigationState(v60);
  }

  else
  {
    v28 = 0;
  }

  outlined destroy of NavigationAuthority(v80);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v50 = v19;
  if (v19 == 1)
  {
    v29 = 1;
  }

  else
  {
    AGGraphGetValue();
    AGGraphGetValue();
    v29 = v19 == 2;
  }

  AGGraphGetValue();
  v30 = *AGGraphGetValue();
  v49 = *AGGraphGetValue();
  KeyPath = swift_getKeyPath();
  v31 = *(v1 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  *(v32 + 32) = v28 & 1;
  v47 = swift_getKeyPath();
  v33 = v1[1];
  v62 = *v1;
  v63 = v33;
  v35 = *v1;
  v34 = v1[1];
  v64 = v1[2];
  v71 = v35;
  v72 = v34;
  v73 = v1[2];
  MEMORY[0x1EEE9AC00](v47);
  *(&v46 - 2) = &v62;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  v37 = v36;
  v38 = lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>();

  MEMORY[0x18D000B40](v37, &type metadata for NavigationState.SelectionSeed, v38);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v39 = v60[0];
  v40 = v30;
  *&v71 = v30;
  v41 = v49;
  v42 = v50;
  *(&v71 + 1) = v50;
  *&v72 = v49;
  *(&v72 + 1) = -1;
  v44 = v47;
  v43 = KeyPath;
  *&v73 = KeyPath;
  *(&v73 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v74 = v32;
  *(&v74 + 1) = v47;
  LODWORD(v75) = v60[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
  AGGraphSetOutputValue();
  *&v71 = v40;
  *(&v71 + 1) = v42;
  *&v72 = v41;
  *(&v72 + 1) = -1;
  *&v73 = v43;
  *(&v73 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v74 = v32;
  *(&v74 + 1) = v44;
  LODWORD(v75) = v39;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v71, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content, v45);
}

{
  v1 = v0;
  v82 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v0 + 4))
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      *&v11 = *WeakValue;
    }

    else
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
    }

    v50 = v11;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    *(v12 + 16) = v50;

    *(v1 + 5) = v12;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    result = outlined init with copy of NavigationState?(Value, &v71, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (*(&v71 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v15 = *(v1 + 8);
    v16 = *AGGraphGetValue();
    v17 = *AGGraphGetValue();
    outlined init with take of NavigationAuthority(&v71, v4);
    *(v4 + 3) = v16;
    v4[32] = v15;
    *(v4 + 5) = v17;
    UUID.init()();
    *&v4[*(v2 + 28)] = v12;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>(0);
    swift_allocObject();
    *(v1 + 4) = LocationBox.init(_:)();
  }

  else
  {
    v5 = *(v0 + 5);
    if (v5)
    {

      v6 = AGGraphGetWeakValue();
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        swift_beginAccess();
        if (*(v5 + 16) != v7 || *(v5 + 20) != v8)
        {
          *(v5 + 16) = v7;
          *(v5 + 20) = v8;
        }
      }
    }
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v18 = AGGraphGetValue();
  outlined init with copy of NavigationState?(v18, v80, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v81 == 1)
  {
    __break(1u);
  }

  v19 = *(v1 + 8);
  v20 = *AGGraphGetValue();
  v21 = *AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  if (Strong && (v23 = Strong, swift_beginAccess(), v24 = v23[8], v68 = v23[7], v69 = v24, v70[0] = v23[9], *(v70 + 10) = *(v23 + 154), v25 = v23[4], v64 = v23[3], v65 = v25, v26 = v23[6], v66 = v23[5], v67 = v26, v27 = v23[2], v62 = v23[1], v63 = v27, outlined init with copy of NavigationState?(&v62, v60, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v77 = v68, v78 = v69, v79[0] = v70[0], *(v79 + 10) = *(v70 + 10), v73 = v64, v74 = v65, v75 = v66, v76 = v67, v71 = v62, v72 = v63, getEnumTag for AccessibilityActionCategory.Category(&v71) != 1))
  {
    v57 = v68;
    v58 = v69;
    v59[0] = v70[0];
    *(v59 + 10) = *(v70 + 10);
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v56 = v67;
    v51 = v62;
    v52 = v63;
    v28 = NavigationState.canDismissRoot(of:)(v20, v19, v21);
    v60[6] = v57;
    v60[7] = v58;
    v61[0] = v59[0];
    *(v61 + 10) = *(v59 + 10);
    v60[2] = v53;
    v60[3] = v54;
    v60[4] = v55;
    v60[5] = v56;
    v60[0] = v51;
    v60[1] = v52;
    outlined destroy of NavigationState(v60);
  }

  else
  {
    v28 = 0;
  }

  outlined destroy of NavigationAuthority(v80);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v50 = v19;
  if (v19 == 1)
  {
    v29 = 1;
  }

  else
  {
    AGGraphGetValue();
    AGGraphGetValue();
    v29 = v19 == 2;
  }

  AGGraphGetValue();
  v30 = *AGGraphGetValue();
  v49 = *AGGraphGetValue();
  KeyPath = swift_getKeyPath();
  v31 = *(v1 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  *(v32 + 32) = v28 & 1;
  v47 = swift_getKeyPath();
  v33 = v1[1];
  v62 = *v1;
  v63 = v33;
  v35 = *v1;
  v34 = v1[1];
  v64 = v1[2];
  v71 = v35;
  v72 = v34;
  v73 = v1[2];
  MEMORY[0x1EEE9AC00](v47);
  *(&v46 - 2) = &v62;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  v37 = v36;
  v38 = lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>();

  MEMORY[0x18D000B40](v37, &type metadata for NavigationState.SelectionSeed, v38);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v39 = v60[0];
  v40 = v30;
  *&v71 = v30;
  v41 = v49;
  v42 = v50;
  *(&v71 + 1) = v50;
  *&v72 = v49;
  *(&v72 + 1) = -1;
  v44 = v47;
  v43 = KeyPath;
  *&v73 = KeyPath;
  *(&v73 + 1) = partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue();
  *&v74 = v32;
  *(&v74 + 1) = v47;
  LODWORD(v75) = v60[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
  AGGraphSetOutputValue();
  *&v71 = v40;
  *(&v71 + 1) = v42;
  *&v72 = v41;
  *(&v72 + 1) = -1;
  *&v73 = v43;
  *(&v73 + 1) = partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue();
  *&v74 = v32;
  *(&v74 + 1) = v44;
  LODWORD(v75) = v39;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v71, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, v45);
}

uint64_t type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for _NavigationSplitReader.SplitPresentationModeLocation;
  if (!type metadata singleton initialization cache for _NavigationSplitReader.SplitPresentationModeLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithTake for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_weakTakeInit();
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t NavigationState.canDismissRoot(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 - 1) > 1u)
  {
LABEL_30:
    v24 = 0;
    return v24 & 1;
  }

  v5 = a2;
  v7 = *(v3 + 3);
  v8 = *(v3 + 13);
  v9 = *(v3 + 112);
  v10 = *(v3 + 113);
  v11 = *(v3 + 153);
  if (v8 == 1)
  {
    goto LABEL_3;
  }

  if (*(v3 + 113) > 1u)
  {
    if (v10 == 2)
    {
LABEL_23:
      v24 = 1;
      return v24 & 1;
    }

LABEL_24:
    if (v11 != 3)
    {
      if (a2 == 2)
      {
        if (v11 == 2)
        {
          goto LABEL_23;
        }
      }

      else if ((v11 - 1) < 2)
      {
        goto LABEL_23;
      }
    }

LABEL_3:
    v12 = v3;
    if (!*(v7 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3), (v14 & 1) == 0) || (v15 = outlined init with copy of NavigationColumnState(*(v7 + 56) + 360 * v13, &v29), NavigationColumnState.hasDismissableColumnContent.getter(v15), v17 = v16, outlined destroy of NavigationColumnState(&v29), (v17 & 1) == 0))
    {
      if (!*(v7 + 16))
      {
        goto LABEL_29;
      }

      v18 = v5 == 2 && a3 == 3;
      v19 = v18;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v19, a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_29;
      }

      outlined init with copy of NavigationColumnState(*(v7 + 56) + 360 * v20, &v29);
      if (!v33)
      {
        outlined destroy of NavigationColumnState(&v29);
        goto LABEL_29;
      }

      NavigationListState.hasNonEmptySelection.getter();
      v23 = v22;
      outlined destroy of NavigationColumnState(&v29);
      if ((v23 & 1) == 0)
      {
LABEL_29:
        if ((v5 - 2) >= 4u)
        {
          v29 = *v12;
          v30 = *(v12 + 2);
          v31 = v7;
          v26 = v12[4];
          v35 = v12[5];
          v27 = *(v12 + 12);
          v28 = v12[2];
          v33 = v12[3];
          v34 = v26;
          v32 = v28;
          v36 = v27;
          v37 = v8;
          v38 = v9;
          v39 = v10;
          *&v41[15] = *(v12 + 145);
          *v41 = *(v12 + 130);
          v40 = *(v12 + 114);
          v42 = v11;
          v24 = NavigationState.canDismissRoot(of:)(a1, 2, a3);
          return v24 & 1;
        }

        goto LABEL_30;
      }
    }

    goto LABEL_23;
  }

  if (!*(v3 + 113))
  {
    goto LABEL_24;
  }

  v24 = 1;
  if (a2 == 2 && v11 != 2)
  {
    goto LABEL_3;
  }

  return v24 & 1;
}

uint64_t specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  result = outlined init with copy of NavigationState?(Value, v14, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v15 != 1)
  {
    Strong = swift_weakLoadStrong();
    result = outlined destroy of NavigationAuthority(v14);
    if (Strong)
    {
      v7 = *(Strong + 184);

      v8 = *AGGraphGetValue();
      v9 = *AGGraphGetValue();
      swift_getKeyPath();
      _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost, protocol conformance descriptor for NavigationSelectionHost);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v7 + 16);

      if (*(v10 + 16))
      {
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, *(a1 + 8), v9);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 4 * v11);

LABEL_8:
          *a2 = v13;
          return result;
        }
      }
    }

    v13 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, __n128 a6)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, a2, a3, a4, a5);
  (*(*(v7 - 8) + 8))(a1, v7);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_18BE78AF0()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of _NavigationSplitReader.ForestRoot(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 11) = *(a1 + 11);
  *a2 = v4;
  v5 = a1[2];
  *(a2 + 48) = *(a1 + 12);
  *(a2 + 32) = v5;
  *(a2 + 56) = *(a1 + 7);
  swift_weakTakeInit();
  *(a2 + 72) = *(a1 + 72);
  v6 = *(a1 + 11);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 88) = v6;
  *(a2 + 104) = *(a1 + 13);
  v7 = a1[7];
  v8 = a1[8];
  *(a2 + 144) = *(a1 + 18);
  *(a2 + 112) = v7;
  *(a2 + 128) = v8;
  return a2;
}

uint64_t initializeWithTake for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t initializeWithTake for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  swift_weakTakeInit();
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t initializeWithCopy for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  swift_weakCopyInit();
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 136);

  if (v6)
  {
    v7 = *(a2 + 144);
    *(a1 + 136) = v6;
    *(a1 + 144) = v7;
    (**(v6 - 8))(a1 + 112, a2 + 112, v6);
  }

  else
  {
    v8 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v8;
    *(a1 + 144) = *(a2 + 144);
  }

  return a1;
}

void destroy for _NavigationSplitReader.ForestRoot(void *a1)
{

  swift_weakDestroy();

  if (a1[17])
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 14);
  }
}

__n128 closure #1 in ForestRootBodyAccessor.updateBody(of:changed:)(char **a1, unsigned int *a2, uint64_t a3, void *a4)
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  v8 = v7;
  outlined init with copy of _Benchmark(Value, v21);
  outlined init with copy of _Benchmark(v21, v18);
  v9 = a4;
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  *(&v19 + 1) = v9;
  v20 = v17;
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  *(v10 + 2) = v12 + 1;
  v13 = &v10[64 * v12];
  result = v18[0];
  v15 = v18[1];
  v16 = v20;
  *(v13 + 4) = v19;
  *(v13 + 5) = v16;
  *(v13 + 2) = result;
  *(v13 + 3) = v15;
  *a1 = v10;
  *(a1 + 8) = (*(a1 + 8) | v8) & 1;
  return result;
}

uint64_t ForestRootBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  LOBYTE(v19) = 0;
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = 32;
    do
    {
      v20 = *(a3 + v13);
      closure #1 in ForestRootBodyAccessor.updateBody(of:changed:)(&v18, &v20, a3, a4);
      v13 += 4;
      --v12;
    }

    while (v12);
    v11 = v18;
    v14 = v19;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    if (a2)
    {
LABEL_11:
      v18 = a3;
      v19 = a4;
      MEMORY[0x1EEE9AC00](v11);
      v17 = type metadata accessor for ForestRootBodyAccessor(0, a5, a6, v16);
      swift_getWitnessTable(protocol conformance descriptor for ForestRootBodyAccessor<A>, v17);
      BodyAccessor.setBody(_:)();
    }
  }

  if (v14)
  {
    goto LABEL_11;
  }
}

void _NavigationSplitReader.ForestRoot.body(children:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v2;
  outlined init with copy of _VariadicView_Children(a1 + 32, v46);
  if (v3 == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  outlined init with copy of _VariadicView_Children(a1 + 96, v45);
  if (v3 < 3)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v42 = a2;
  outlined init with copy of _VariadicView_Children(a1 + 160, v44);
  v40 = *v4;
  v41 = v4[7];
  v39 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = *(v4 + 25);
  v10 = *(v4 + 26);

  v11 = _NavigationSplitReader.ForestRoot.widths(from:)(a1);
  v12 = _NavigationSplitReader.ForestRoot.sidebarDimmingIgnoresSafeArea(_:)(a1, &type metadata for SidebarDimmingIgnoresSafeAreaTraitKey, &protocol witness table for SidebarDimmingIgnoresSafeAreaTraitKey);
  v13 = _NavigationSplitReader.ForestRoot.sidebarDimmingIgnoresSafeArea(_:)(a1, &type metadata for NavigationSplitViewExtraWidePrimaryColumnTraitKey, &protocol witness table for NavigationSplitViewExtraWidePrimaryColumnTraitKey);
  v14 = *(v11 + 16);
  if (v14)
  {
    v15 = v13;
    *&v47[0] = v7;
    v16 = *(v11 + 64);
    v17 = *(v11 + 48);
    v63[0] = *(v11 + 32);
    v63[1] = v17;
    v64 = v16;

    specialized Dictionary.subscript.setter(v63, 0);
    if (v14 == 1)
    {
      v18 = *&v47[0];
      v19 = *(*&v47[0] + 16);
      if (v19)
      {
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(1);
        if (v21)
        {
          v22 = (*(v18 + 56) + 40 * v20);
          v23 = v22 + 1;
          v24 = v22 + 2;
          v25 = v22 + 3;
          v26 = (v22 + 4);
LABEL_11:
          v19 = *v25;
          v27 = *v24;
          v28 = *v23;
          v29 = *v22;
          v30 = *v26;
LABEL_15:
          v61[0] = v29;
          v61[1] = v28;
          v61[2] = v27;
          v61[3] = v19;
          v62 = v30;
          specialized Dictionary.subscript.setter(v61, 1);

          v37 = v15;
          v38 = 0;
          v7 = *&v47[0];
          goto LABEL_16;
        }

        v29 = 0;
        v27 = 0;
        v19 = 0;
      }

      else
      {
        v29 = 0;
        v27 = 0;
      }

      v30 = 0;
      v28 = 0x1FFFFFFFELL;
      goto LABEL_15;
    }

    v22 = (v11 + 72);
    v23 = (v11 + 80);
    v24 = (v11 + 88);
    v25 = (v11 + 96);
    v26 = (v11 + 104);
    goto LABEL_11;
  }

  v12 = v9;
  v37 = v10;
  v38 = v8;
LABEL_16:
  v32 = v4[4];
  v31 = v4[5];
  v33 = *(v4 + 12);
  outlined init with copy of NavigationAuthority((v4 + 8), v43);
  if (*(v4 + 96))
  {
    v34 = -1;
  }

  else
  {
    v34 = *(v4 + 22);
  }

  if (*(v4 + 96))
  {
    v35 = -1;
  }

  else
  {
    v35 = *(v4 + 23);
  }

  v36 = v4[13];
  outlined init with copy of UINavigationPresentationAdaptor?((v4 + 14), &v60);
  v47[0] = v46[0];
  v47[1] = v46[1];
  v47[2] = v46[2];
  v47[3] = v46[3];
  v47[4] = v45[0];
  v47[5] = v45[1];
  v47[6] = v45[2];
  v47[7] = v45[3];
  v47[10] = v44[2];
  v47[11] = v44[3];
  v47[8] = v44[0];
  v47[9] = v44[1];
  v48 = v41;
  v49 = v40;
  v50 = v39;
  v51 = v7;
  v52 = v38;
  v53 = v12 & 1;
  v54 = v37 & 1;
  v55 = v32;
  v56 = v31;
  v57 = v33;
  outlined init with take of NavigationAuthority(v43, v58);
  v58[6] = v34;
  v58[7] = v35;
  v59 = v36;
  outlined init with take of NavigationSplitCore(v47, v42);
}

uint64_t _NavigationSplitReader.ForestRoot.widths(from:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = 0;
    result = v26;
    v14 = v2;
    while (1)
    {
      v15 = result;
      v16 = v4;
      outlined init with copy of _VariadicView_Children(a1 + 32 + (v4 << 6), v25);
      outlined init with copy of _VariadicView_Children(v25, v23);
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0x1FFFFFFFELL;
      if (_VariadicView_Children.endIndex.getter())
      {
        break;
      }

LABEL_4:
      outlined destroy of _VariadicView_Children(v25);
      v24 = v9;
      outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v23, type metadata accessor for IndexingIterator<_VariadicView_Children>);
      result = v15;
      v26 = v15;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        result = v26;
      }

      v4 = v16 + 1;
      *(result + 16) = v12 + 1;
      v13 = result + 40 * v12;
      *(v13 + 32) = v5;
      *(v13 + 40) = v10;
      *(v13 + 48) = v6;
      *(v13 + 56) = v7;
      *(v13 + 64) = v8;
      if (v16 + 1 == v14)
      {
        return result;
      }
    }

    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v9 >= result)
      {
        break;
      }

      if (v10 >> 1 == 0xFFFFFFFF && v8 <= 1)
      {

        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined destroy of _VariadicView_Children.Element(v22);

        v5 = v17;
        v10 = v18;
        v6 = v19;
        v7 = v20;
        v8 = v21;
      }

      else
      {
        outlined destroy of _VariadicView_Children.Element(v22);
      }

      if (++v9 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for NavigationSplitViewColumnWidth?, &type metadata for NavigationSplitViewColumnWidth, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>);
    }
  }
}

void type metadata accessor for IndexingIterator<_VariadicView_Children>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children()
{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FFE8], MEMORY[0x1E697FFD0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FFE0], MEMORY[0x1E697FFD0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FFD8], MEMORY[0x1E697FFD0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

uint64_t _NavigationSplitReader.ForestRoot.sidebarDimmingIgnoresSafeArea(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  outlined init with copy of _VariadicView_Children(result + 32, v15);
  v3 = 0;
  if (_VariadicView_Children.endIndex.getter())
  {
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v3 >= result)
      {
        break;
      }

      v10 = v13[4];
      v11 = v13[5];
      v6 = v13[0];
      v7 = v13[1];
      ++v3;
      v12 = v14;
      v8 = v13[2];
      v9 = v13[3];
      *&v17 = v14;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      if (v5 == 1)
      {
        v16 = v3;
        outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v15, type metadata accessor for IndexingIterator<_VariadicView_Children>);
        v21 = v10;
        v22 = v11;
        v23 = v12;
        v17 = v6;
        v18 = v7;
        v4 = 1;
        v19 = v8;
        v20 = v9;
        goto LABEL_8;
      }

      outlined destroy of _VariadicView_Children.Element(&v6);
      if (v3 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_6:
  v16 = v3;
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v15, type metadata accessor for IndexingIterator<_VariadicView_Children>);
  v4 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
LABEL_8:
  outlined destroy of _VariadicView_Children.Element?(&v17, &lazy cache variable for type metadata for _VariadicView_Children.Element?, MEMORY[0x1E697FFB8]);
  return v4;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    v15[0] = *a1;
    v15[1] = v4;
    v16 = *(a1 + 16);
    v17 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v15[0] = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15[0];
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v13);
      *v3 = v13;
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 2:
          if (a1 == 2)
          {
            return result;
          }

          break;
        case 3:
          if (a1 == 3)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 2 >= 3 && ((v7 ^ a1) & 1) == 0)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t outlined init with copy of UINavigationPresentationAdaptor?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UINavigationPresentationAdaptor?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t initializeWithTake for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 211) = *(a2 + 211);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  swift_weakTakeInit();
  *(a1 + 264) = *(a2 + 264);
  v11 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v11;
  v12 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v12;
  *(a1 + 328) = *(a2 + 328);
  return a1;
}

uint64_t initializeWithCopy for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  v8 = v7;
  v9 = **(v7 - 8);
  v10 = v5;

  v9(a1 + 64, a2 + 64, v8);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = *(a2 + 120);
  v13 = *(a2 + 152);
  *(a1 + 152) = v13;
  v14 = v13;
  v15 = **(v13 - 8);
  v16 = v11;

  v15(a1 + 128, a2 + 128, v14);
  v17 = *(a2 + 168);
  v18 = *(a2 + 176);
  *(a1 + 168) = v17;
  *(a1 + 176) = v18;
  v19 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v19;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  v20 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v20;
  *(a1 + 248) = *(a2 + 248);
  v21 = v17;

  swift_weakCopyInit();
  v22 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v22;
  v23 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v23;
  v24 = *(a2 + 320);

  if (v24)
  {
    v25 = *(a2 + 328);
    *(a1 + 320) = v24;
    *(a1 + 328) = v25;
    (**(v24 - 8))(a1 + 296, a2 + 296, v24);
  }

  else
  {
    v26 = *(a2 + 312);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = v26;
    *(a1 + 328) = *(a2 + 328);
  }

  return a1;
}

void destroy for NavigationSplitCore(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  __swift_destroy_boxed_opaque_existential_1((a1 + 64));

  __swift_destroy_boxed_opaque_existential_1((a1 + 128));

  swift_weakDestroy();

  if (*(a1 + 320))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 296));
  }
}

uint64_t NavigationSplitCore.uikitSplitRepresentable.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  outlined init with copy of _VariadicView_Children(v1, v21);
  outlined init with copy of _VariadicView_Children(v1 + 64, &v22);
  outlined init with copy of _VariadicView_Children(v1 + 128, v23);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  v19 = *(v1 + 226);
  v20 = *(v1 + 225);
  v10 = *(v1 + 232);
  v9 = *(v1 + 240);
  v18 = *(v2 + 248);
  outlined init with copy of NavigationAuthority(v2 + 256, v32);
  v11 = *(v2 + 288);
  v12 = *(v2 + 280);
  outlined init with copy of UINavigationPresentationAdaptor?(v2 + 296, v33);
  v23[8] = v4;
  v23[9] = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = v20;
  v28 = v19;
  v29 = v10;
  v30 = v9;
  v31 = v18;
  v32[3] = v12;
  v32[4] = v11;
  v33[5] = swift_getKeyPath();
  v34 = 0;
  KeyPath = swift_getKeyPath();
  v36 = 0;
  v37 = swift_getKeyPath();
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = swift_getKeyPath();
  v43 = 0;
  v13 = swift_getKeyPath();
  outlined init with copy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(v21, a1);
  a1[53] = v13;

  v14 = static Alignment.center.getter();
  v16 = v15;
  result = outlined destroy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(v21);
  a1[54] = closure #1 in View.renderContainerBackground<A>(_:key:);
  a1[55] = 0;
  a1[56] = v14;
  a1[57] = v16;
  return result;
}

void type metadata accessor for UINavigationPresentationAdaptor?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UINavigationPresentationAdaptor?)
  {
    type metadata accessor for UINavigationPresentationAdaptor();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?);
    }
  }
}

uint64_t initializeWithCopy for NavigationSplitRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  v8 = v7;
  v9 = **(v7 - 8);
  v10 = v5;

  v9(a1 + 64, a2 + 64, v8);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = *(a2 + 120);
  v13 = *(a2 + 152);
  *(a1 + 152) = v13;
  v14 = v13;
  v15 = **(v13 - 8);
  v16 = v11;

  v15(a1 + 128, a2 + 128, v14);
  v17 = *(a2 + 168);
  v18 = *(a2 + 176);
  *(a1 + 168) = v17;
  *(a1 + 176) = v18;
  v19 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v19;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  v20 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v20;
  *(a1 + 248) = *(a2 + 248);
  v21 = v17;

  swift_weakCopyInit();
  v22 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v22;
  v23 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v23;
  v24 = *(a2 + 320);

  if (v24)
  {
    v25 = *(a2 + 328);
    *(a1 + 320) = v24;
    *(a1 + 328) = v25;
    (**(v24 - 8))(a1 + 296, a2 + 296, v24);
  }

  else
  {
    v26 = *(a2 + 312);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = v26;
    *(a1 + 328) = *(a2 + 328);
  }

  v27 = *(a2 + 336);
  v28 = *(a2 + 344);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 336) = v27;
  *(a1 + 344) = v28;
  v29 = *(a2 + 352);
  v30 = *(a2 + 360);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 352) = v29;
  *(a1 + 360) = v30;
  v31 = *(a2 + 368);
  v32 = *(a2 + 376);
  v33 = *(a2 + 384);
  v34 = *(a2 + 392);
  v35 = *(a2 + 400);
  outlined copy of Environment<NavigationEventHandlers>.Content(v31, v32, v33, v34, v35);
  *(a1 + 368) = v31;
  *(a1 + 376) = v32;
  *(a1 + 384) = v33;
  *(a1 + 392) = v34;
  *(a1 + 400) = v35;
  return a1;
}

double outlined copy of Environment<NavigationEventHandlers>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    outlined copy of AppIntentExecutor?(a1, a2);

    outlined copy of AppIntentExecutor?(a3, a4);
  }

  else
  {
  }

  return result;
}

double destroy for NavigationSplitRepresentable(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  __swift_destroy_boxed_opaque_existential_1((a1 + 64));

  __swift_destroy_boxed_opaque_existential_1((a1 + 128));

  swift_weakDestroy();

  if (*(a1 + 320))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 296));
  }

  outlined consume of Environment<Bool>.Content(*(a1 + 336), *(a1 + 344));
  outlined consume of Environment<Bool>.Content(*(a1 + 352), *(a1 + 360));
  v2 = *(a1 + 368);
  v3 = *(a1 + 376);
  v4 = *(a1 + 384);
  v5 = *(a1 + 392);
  v6 = *(a1 + 400);

  return outlined consume of Environment<NavigationEventHandlers>.Content(v2, v3, v4, v5, v6);
}

double outlined consume of Environment<NavigationEventHandlers>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1, a2);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3, a4);
  }

  else
  {
  }

  return result;
}

uint64_t closure #1 in View.renderContainerBackground<A>(_:key:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1] < 0)
  {
    v3 = 0;
    v4 = 0;
    result = 0;
  }

  else
  {
    v3 = *a1;

    v4 = -1;
    result = static Edge.Set.all.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void type metadata completion function for SearchCompletionButtonStyle(uint64_t a1)
{
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for DismissSearchAction(uint64_t a1)
{
  type metadata accessor for Binding<SearchFieldState>?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    a3(255);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for SearchCompletionButtonStyle(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCompletionButtonStyle;
  if (!type metadata singleton initialization cache for SearchCompletionButtonStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<DismissSearchAccessoryAction>.Content)
  {
    type metadata accessor for DismissSearchAccessoryAction(255);
    v1 = type metadata accessor for Environment.Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<DismissSearchAccessoryAction>.Content);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MEMORY[0x1E6980428]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, lazy protocol witness table accessor for type DefaultListButtonStyle and conformance DefaultListButtonStyle, &type metadata for DefaultListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>(255);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ContainerContextPredicate<ListContainerContext>, lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext, &type metadata for ListContainerContext, MEMORY[0x1E69804E8]);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, MEMORY[0x1E69809A0]);
    lazy protocol witness table accessor for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>();
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>(255);
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, MEMORY[0x1E69809A0]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>);
    }
  }
}

void type metadata accessor for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>(255);
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>(255);
    v1 = MEMORY[0x1E69809A0];
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, MEMORY[0x1E69809A0]);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, v1);
    v2 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<ContainerContextStylingDisabled>, MEMORY[0x1E6980A68], MEMORY[0x1E6980A60], MEMORY[0x1E6980680]);
    result = swift_getWitnessTable(MEMORY[0x1E6980688], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>()
{
  result = lazy protocol witness table cache variable for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>;
  if (!lazy protocol witness table cache variable for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ContainerContextPredicate<ListContainerContext>, lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext, &type metadata for ListContainerContext, MEMORY[0x1E69804E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69804F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>);
  }

  return result;
}

void type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>(255);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, MEMORY[0x1E69809A0]);
    v1 = type metadata accessor for InvertedViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>(255);
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, MEMORY[0x1E6980688]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>)
  {
    type metadata accessor for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}> and conformance StyleContextAcceptsAnyPredicate<Pack{repeat A}>, type metadata accessor for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>, MEMORY[0x1E6980AA0]);
    v1 = type metadata accessor for InvertedViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>)
  {
    v0 = type metadata accessor for StyleContextAcceptsAnyPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultListButtonStyle and conformance DefaultListButtonStyle()
{
  result = lazy protocol witness table cache variable for type DefaultListButtonStyle and conformance DefaultListButtonStyle;
  if (!lazy protocol witness table cache variable for type DefaultListButtonStyle and conformance DefaultListButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultListButtonStyle, &type metadata for DefaultListButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultListButtonStyle and conformance DefaultListButtonStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>(255);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, lazy protocol witness table accessor for type SidebarButtonStyle and conformance SidebarButtonStyle, &type metadata for SidebarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>(255);
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, MEMORY[0x1E6980688]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarButtonStyle and conformance SidebarButtonStyle()
{
  result = lazy protocol witness table cache variable for type SidebarButtonStyle and conformance SidebarButtonStyle;
  if (!lazy protocol witness table cache variable for type SidebarButtonStyle and conformance SidebarButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarButtonStyle, &type metadata for SidebarButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarButtonStyle and conformance SidebarButtonStyle);
  }

  return result;
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>(255);
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, MEMORY[0x1E69809A0]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>(255);
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, MEMORY[0x1E6980688]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TableStyleContext>, MEMORY[0x1E697F2C8]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TabSectionStyleContext>, &type metadata for TabSectionStyleContext);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, lazy protocol witness table accessor for type ToolbarButtonStyle and conformance ToolbarButtonStyle, &type metadata for ToolbarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonStyle and conformance ToolbarButtonStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonStyle and conformance ToolbarButtonStyle;
  if (!lazy protocol witness table cache variable for type ToolbarButtonStyle and conformance ToolbarButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarButtonStyle, &type metadata for ToolbarButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonStyle and conformance ToolbarButtonStyle);
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>)
  {
    v2 = type metadata accessor for SearchCompletionButtonStyle(255);
    v3 = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle, type metadata accessor for SearchCompletionButtonStyle, protocol conformance descriptor for SearchCompletionButtonStyle);
    v5 = type metadata accessor for PrimitiveButtonStyleContainerModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TextInputSuggestionsContext>, MEMORY[0x1E6980818]);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, &type metadata for SidebarSectionActionStyleContext);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, lazy protocol witness table accessor for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle, &type metadata for SidebarSectionActionButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle()
{
  result = lazy protocol witness table cache variable for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle;
  if (!lazy protocol witness table cache variable for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarSectionActionButtonStyle, &type metadata for SidebarSectionActionButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<AccessibilityButtonStyle>, lazy protocol witness table accessor for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle, &type metadata for AccessibilityButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<PlatterButtonStyle>, lazy protocol witness table accessor for type PlatterButtonStyle and conformance PlatterButtonStyle, &type metadata for PlatterButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatterButtonStyle and conformance PlatterButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlatterButtonStyle and conformance PlatterButtonStyle;
  if (!lazy protocol witness table cache variable for type PlatterButtonStyle and conformance PlatterButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatterButtonStyle, &type metadata for PlatterButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterButtonStyle and conformance PlatterButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<PlatterButtonStyle>, lazy protocol witness table accessor for type PlatterButtonStyle and conformance PlatterButtonStyle, &type metadata for PlatterButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonStyle, &type metadata for AccessibilityButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle);
  }

  return result;
}

void type metadata accessor for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>(255);
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>(255);
    v1 = MEMORY[0x1E69809A0];
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, MEMORY[0x1E69809A0]);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, v1);
    v2 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationVie()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<();
    v5[1] = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>( &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>,  type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>,  lazy protocol witness table accessor for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>,  lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>( &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>,  type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>,  lazy protocol witness table accessor for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>,  lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>( &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>,  type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>,  lazy protocol witness table accessor for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>,  lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, lazy protocol witness table accessor for type DefaultListButtonStyle and conformance DefaultListButtonStyle, &type metadata for DefaultListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, lazy protocol witness table accessor for type SidebarButtonStyle and conformance SidebarButtonStyle, &type metadata for SidebarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SwipeActionsStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MEMORY[0x1E6980428]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, lazy protocol witness table accessor for type ToolbarButtonStyle and conformance ToolbarButtonStyle, &type metadata for ToolbarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarSectionActionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, &type metadata for SidebarSectionActionStyleContext);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    v5[1] = lazy protocol witness table accessor for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle>, lazy protocol witness table accessor for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle, &type metadata for PlatformFallbackButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for ButtonStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>(255);
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>(255);
    v1 = MEMORY[0x1E69809A0];
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, MEMORY[0x1E69809A0]);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, v1);
    v2 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>(255);
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, MEMORY[0x1E69809A0]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle;
  if (!lazy protocol witness table cache variable for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformFallbackButtonStyle, &type metadata for PlatformFallbackButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TableStyleContext>, MEMORY[0x1E697F2C8]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TabSectionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TabSectionStyleContext>, &type metadata for TabSectionStyleContext);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TextInputSuggestionsContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TextInputSuggestionsContext>, MEMORY[0x1E6980818]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, lazy protocol witness table accessor for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle, &type metadata for SidebarSectionActionButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<AccessibilityButtonStyle>, lazy protocol witness table accessor for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle, &type metadata for AccessibilityButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<ContainerContextStylingDisabled>, MEMORY[0x1E6980A68], MEMORY[0x1E6980A60], MEMORY[0x1E6980680]);
    lazy protocol witness table accessor for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>();
    v1 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>(255);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(a4, a5, MEMORY[0x1E6980940]);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>, MEMORY[0x1E6980688]);
    v8 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64) + 1;

  PreferencesOutputs.init()();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

void type metadata accessor for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>)
  {
    type metadata accessor for ToolbarButtonStyle.ResolvedBody(255);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>, &type metadata for ToolbarButtonContentModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance Button<A>(&lazy protocol witness table cache variable for type ToolbarButtonStyle.ResolvedBody and conformance ToolbarButtonStyle.ResolvedBody, type metadata accessor for ToolbarButtonStyle.ResolvedBody, protocol conformance descriptor for ToolbarButtonStyle.ResolvedBody);
    v5[1] = _s7SwiftUI8StaticIfVyAA28StyleContextAcceptsPredicateVyAA07ToolbareF0VGAA0I21ButtonContentModifierVAA05EmptyL0VGACyxq_q0_GAA04ViewL0A2A0n5InputH0RzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>, &type metadata for ToolbarButtonContentModifier, lazy protocol witness table accessor for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier;
  if (!lazy protocol witness table cache variable for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarButtonContentModifier, &type metadata for ToolbarButtonContentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier);
  }

  return result;
}

void type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>)
  {
    lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate();
    v1 = type metadata accessor for InvertedViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AttributeInvalidatingSubscriber<ObservableObjectPublisher>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for AttributeInvalidatingSubscriber<ObservableObjectPublisher>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, &type metadata for IncludesStyledTextModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, lazy protocol witness table accessor for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>);
    v5[1] = &protocol witness table for IncludesStyledTextModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IncludesStyledTextModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  outlined init with copy of _ViewListInputs(a2, v8);
  v6 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance IncludesStyledTextModifier();
  a3(v6, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BarEdgeReader<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for BarEdgeReader<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

void type metadata accessor for Binding<PresentationMode>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t assignWithCopy for NavigationStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v9 != v10)
  {
    v11 = *(v9 + 24);
    if (v11 >= 2)
    {
      v11 = *v9 + 2;
    }

    if (v11 == 1)
    {
    }

    v12 = *(v10 + 24);
    if (v12 >= 2)
    {
      v12 = *v10 + 2;
    }

    *v9 = *v10;
    *(v9 + 8) = *(v10 + 8);
    if (v12 == 1)
    {
      *(v9 + 16) = *(v10 + 16);
      *(v9 + 24) = 1;
    }

    else
    {
      *(v9 + 24) = 0;
    }
  }

  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*v14, v16);
  v18 = *v13;
  v19 = *(v13 + 8);
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v18, v19);
  return a1;
}

uint64_t _ConditionalContent.init(__storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SheetPresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v65 = a3;
  v6 = *(a2 + 24);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v11;
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(&v67 + 1) = *(v13 + 40);
  v15 = type metadata accessor for CoreSheetPresentationModifier(0, v6, *(&v67 + 1), v14);
  v60 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v48[-v17];
  swift_getWitnessTable(protocol conformance descriptor for SheetPresentationModifier<A, B>, a2, v16);
  v56 = type metadata accessor for _ViewModifier_Content();
  v62 = v15;
  v61 = type metadata accessor for ModifiedContent();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v48[-v21];
  v22 = *(a2 + 32);
  v66 = *(a2 + 16);
  *&v67 = v22;
  v24 = type metadata accessor for SheetContent(0, v66, v22, v23);
  v54 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48[-v25];
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  v53 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v53);
  v27 = 0;
  if (SheetPresentationModifier.isPresented.getter())
  {
    closure #1 in SheetPresentationModifier.body(content:)(v4, v66);
    swift_getKeyPath();
    v50 = v12;
    v52 = v6;
    v28 = *v4;
    v49 = *(v4 + 16);
    lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented();
    v51 = v9;

    v29 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    v68[2] = v28;
    v68[3] = v29;
    v6 = v52;
    v69 = v49;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SheetContent<A>, v24);
    View.environment<A>(_:_:)();
    v12 = v50;

    (*(v54 + 8))(v26, v24);
    v31 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>();
    v68[0] = WitnessTable;
    v68[1] = v31;
    v9 = v51;
    swift_getWitnessTable(MEMORY[0x1E697E858], v53, v68);
    v27 = AnyView.init<A>(_:)();
  }

  (*(v9 + 16))(v12, v4, a2);
  v32 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v33 = swift_allocObject();
  *&v34 = v66;
  v35 = v67;
  *(&v34 + 1) = v6;
  *(v33 + 16) = v34;
  *(v33 + 32) = v35;
  (*(v9 + 32))(v33 + v32, v12, a2);
  LOBYTE(v32) = *(v4 + 56);
  v36 = *(v4 + 57);
  v37 = v63;
  v38 = v64;
  (*(v64 + 16))(v63, v4 + *(a2 + 68), v6);
  v39 = *(v4 + *(a2 + 72));
  *v18 = 0;
  *(v18 + 1) = v27;
  *(v18 + 2) = partial apply for closure #2 in SheetPresentationModifier.body(content:);
  *(v18 + 3) = v33;
  v18[32] = v32;
  v18[33] = v36;
  *(v18 + 56) = 0u;
  *(v18 + 9) = 0;
  *(v18 + 40) = 0u;
  v40 = v62;
  (*(v38 + 32))(&v18[*(v62 + 56)], v37, v6);
  v18[*(v40 + 60)] = v39;
  v41 = v56;
  v42 = swift_getWitnessTable(MEMORY[0x1E697FDF8], v56);
  v43 = v57;
  MEMORY[0x18D00A570](v18, v41, v40, v42);
  (*(v60 + 8))(v18, v40);
  v70[0] = v42;
  v70[1] = &protocol witness table for CoreSheetPresentationModifier<A>;
  v44 = v61;
  swift_getWitnessTable(MEMORY[0x1E697E858], v61, v70);
  v45 = v58;
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v59 + 8);
  v46(v43, v44);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v46)(v45, v44);
}

uint64_t sub_18BE7EBD8()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = v5;
  v8 = v1;
  v2 = type metadata accessor for SheetPresentationModifier(0, &v6);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  if (*(v3 + 24))
  {
  }

  (*(*(v5 - 8) + 8))(v3 + *(v2 + 68));
  return swift_deallocObject();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<PresentationMode>(255, a3, a4, a5);
    v6 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SheetPresentationModifier.isPresented.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  type metadata accessor for Binding<PresentationMode>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

void *initializeWithCopy for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;

  if (v10 < 0xFFFFFFFF)
  {
    *v8 = *v9;
  }

  else
  {
    v11 = *(v9 + 8);
    *v8 = v10;
    *(v8 + 8) = v11;
  }

  *(v8 + 16) = *(v9 + 16);
  *(v8 + 17) = *(v9 + 17);
  v12 = (v8 + 25) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v9 + 25) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 24);
  if (v14 < 0xFFFFFFFF)
  {
    v15 = *v13;
    v16 = *(v13 + 16);
    *(v12 + 32) = *(v13 + 32);
    *v12 = v15;
    *(v12 + 16) = v16;
  }

  else
  {
    *(v12 + 24) = v14;
    *(v12 + 32) = *(v13 + 32);
    (**(v14 - 8))(v12, v13);
  }

  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 16;
  v19 = *(v17 + 80);
  v20 = (v12 + v19 + 40) & ~v19;
  v21 = (v13 + v19 + 40) & ~v19;
  (*(v17 + 16))(v20, v21);
  *(v20 + *(v18 + 48)) = *(v21 + *(v18 + 48));
  return a1;
}

uint64_t destroy for CoreSheetPresentationModifier(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v4 >= 0xFFFFFFFFuLL)
  {
  }

  v5 = ((v4 + 25) & 0xFFFFFFFFFFFFFFF8);
  if (v5[3] >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t CoreSheetPresentationModifier.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  v26 = v14;
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v24 - v16;
  v19 = *a1;
  v18 = a1[1];
  v24[2] = *(a2 + 56);
  (*(v7 + 16))(v9, v4, a2, v15);
  v20 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v12;
  *(v21 + 3) = v11;
  *(v21 + 4) = v19;
  *(v21 + 5) = v18;
  (*(v7 + 32))(&v21[v20], v9, a2);
  (*(v11 + 24))(partial apply for closure #1 in CoreSheetPresentationModifier.resolve(in:), v21, v12, v11);

  v22 = v25;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  ViewModifier.requiring<A>(_:)(&type metadata for AllowPresentationPredicate, v22, &type metadata for AllowPresentationPredicate);
  return (*(v26 + 8))(v17, v22);
}

uint64_t sub_18BE7F274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for CoreSheetPresentationModifier(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);

  v8 = v4 + v7;

  if (*(v4 + v7 + 16))
  {
  }

  if (*(v8 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v8 + 40));
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 56), v5);

  return swift_deallocObject();
}

double NullSheetAnchor.preferenceTransformModifier(for:)@<D0>(void *a2@<X8>)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  *a2 = v3;
  a2[1] = v4;

  return result;
}

void partial apply for closure #1 in CoreSheetPresentationModifier.resolve(in:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = *(type metadata accessor for CoreSheetPresentationModifier(0, v7, v8, a4) - 8);
  v10 = v4[4];
  v11 = v4[5];
  v12 = (v4 + ((*(v9 + 80) + 48) & ~*(v9 + 80)));

  closure #1 in CoreSheetPresentationModifier.resolve(in:)(a1, a2, v10, v11, v12, v7, v8);
}

void closure #1 in CoreSheetPresentationModifier.resolve(in:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v42 = a3;
  v43 = a4;

  specialized static ResetGlassEnvironmentModifier.makeEnvironment(_:)();
  v12 = a5[1];
  v13 = &v36 + 8;
  outlined init with copy of SheetPreference.Value(a1, &v36 + 8);
  if (v12)
  {
    if (v41)
    {
      if (v41 == 1)
      {
        MEMORY[0x18D009810](0xD00000000000008BLL, 0x800000018CD47B40);
LABEL_7:

        outlined destroy of SheetPreference.Value(&v36 + 8);
        return;
      }

      v33 = a6;
      v34 = a7;
      v35 = a2;

      v13 = a1;
    }

    else
    {
      v33 = a6;
      v34 = a7;
      v35 = a2;

      outlined destroy of SheetPreference.Value(a1);
    }

    outlined destroy of SheetPreference.Value(v13);
    v14 = a5[2];
    v15 = a5[3];
    outlined copy of AppIntentExecutor?(v14, v15);
    v16 = Namespace.wrappedValue.getter();
    outlined init with copy of AnyHashable?((a5 + 5), v38);
    v17 = *(a5 + 32);
    v18 = *(a5 + 33);
    v19 = v42;
    v20 = v43;
    v22 = *(a5 + *(type metadata accessor for CoreSheetPresentationModifier(0, v33, v34, v21) + 60));
    *&v36 = v12;
    *(&v36 + 1) = v14;
    *&v37 = v15;
    *(&v37 + 1) = v16;
    BYTE8(v39) = v17;
    BYTE9(v39) = v18;
    *v40 = v35;
    *&v40[8] = v19;
    *&v40[16] = v20;
    v40[24] = v22;
    v40[25] = 1;
    v23 = v37;
    *a1 = v36;
    *(a1 + 1) = v23;
    v24 = v38[0];
    v25 = v38[1];
    v26 = v39;
    *(a1 + 90) = *&v40[10];
    v27 = *v40;
    *(a1 + 4) = v26;
    *(a1 + 5) = v27;
    *(a1 + 2) = v24;
    *(a1 + 3) = v25;
    a1[106] = 1;
  }

  else
  {
    if (v41)
    {
      if (v41 == 1)
      {
        goto LABEL_7;
      }

      outlined destroy of SheetPreference.Value(a1);
      type metadata accessor for _ContiguousArrayStorage<(Namespace.ID, Transaction)>(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18CD63400;
      *(inited + 32) = Namespace.wrappedValue.getter();
      *(inited + 40) = a2;
      v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9NamespaceV2IDV_AC11TransactionVTt0g5Tf4g_n(inited);
      swift_setDeallocating();

      outlined destroy of (Namespace.ID, Transaction)(inited + 32);

      *a1 = v32;
    }

    else
    {
      outlined destroy of SheetPreference.Value(a1);
      v28 = *(&v36 + 1);
      v29 = Namespace.wrappedValue.getter();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v29, isUniquelyReferenced_nonNull_native);

      *a1 = v28;
    }

    a1[106] = 0;
  }
}

void *assignWithCopy for ToolbarModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = *(*(a3 + 24) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  if (v12[1] < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      *v12 = *v13;
      v12[1] = v13[1];
      v12[2] = v13[2];

      return a1;
    }

LABEL_7:
    v15 = *v13;
    v12[2] = v13[2];
    *v12 = v15;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *v12 = *v13;

  v12[1] = v13[1];

  v12[2] = v13[2];
  return a1;
}

uint64_t assignWithCopy for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (v8 != v9)
  {
    outlined destroy of ToolbarItemPlacement.Role(v8);
    if (*(v9 + 40) == 1)
    {
      v10 = *(v9 + 24);
      *(v8 + 24) = v10;
      *(v8 + 32) = *(v9 + 32);
      (**(v10 - 8))(v8, v9);
      *(v8 + 40) = 1;
    }

    else
    {
      v11 = *v9;
      v12 = *(v9 + 16);
      *(v8 + 25) = *(v9 + 25);
      *v8 = v11;
      *(v8 + 16) = v12;
    }
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v8 + v15 + 41) & ~v15;
  v17 = (v9 + v15 + 41) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(v14 + 40);
  v19 = (v16 + v18);
  v20 = (v17 + v18);
  *v19 = *v20;
  v19[1] = v20[1];
  v19[2] = v20[2];
  return a1;
}

void *destroy for ToolbarItemPlacement.Role(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t protocol witness for Rule.value.getter in conformance A?<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return Optional<A>.Child.value.getter(*(a1 + 16), *(a1 + 24), a2);
}

{
  return Optional<A>.Child.value.getter(*(a1 + 16), *(a1 + 24), a2);
}

uint64_t Optional<A>.Child.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for _ConditionalContent.Storage();
  v11 = type metadata accessor for Optional();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  Optional<A>.ChildTableColumn.content.getter(v9);
  v26 = a2;
  v27 = a3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.Child.value.getter, v25, MEMORY[0x1E69E73E0], v10, v18, v13);
  (*(v7 + 8))(v9, v6);
  v19 = *(v14 + 48);
  if (v19(v13, 1, v10) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v19(v13, 1, v10) != 1)
    {
      (*(v22 + 8))(v13, v23);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v13, v10);
  }

  return _ConditionalContent.init(__storage:)(v17, v24);
}

{
  v24 = a4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for _ConditionalContent.Storage();
  v11 = type metadata accessor for Optional();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  Optional<A>.ChildTableColumn.content.getter(v9);
  v26 = a2;
  v27 = a3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.Child.value.getter, v25, MEMORY[0x1E69E73E0], v10, v18, v13);
  (*(v7 + 8))(v9, v6);
  v19 = *(v14 + 48);
  if (v19(v13, 1, v10) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v19(v13, 1, v10) != 1)
    {
      (*(v22 + 8))(v13, v23);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v13, v10);
  }

  return _ConditionalContent.init(__storage:)(v17, v24);
}

void _ConditionalContent<>.CommandsProvider.makeChildInputs()(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v11[0] = *v1;
  v11[1] = v3;
  v12[0] = v1[2];
  v4 = v12[0];
  *(v12 + 12) = *(v1 + 44);
  v5 = *(v12 + 12);
  v6 = v3;
  *a1 = v11[0];
  a1[1] = v3;
  a1[2] = v4;
  *(a1 + 44) = v5;
  swift_beginAccess();
  v7 = v6[3];
  v13[1] = v6[2];
  v13[2] = v7;
  v8 = v6[5];
  v13[3] = v6[4];
  v13[4] = v8;
  v13[0] = v6[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v9 = swift_allocObject();
  memmove((v9 + 16), v6 + 1, 0x50uLL);
  outlined init with copy of _CommandsInputs(v11, v10);
  outlined init with copy of CachedEnvironment(v13, v10);

  *(a1 + 2) = v9;
}

uint64_t _ConditionalContent<>.CommandsProvider.makeFalseOutputs(child:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  *v8 = a2[2];
  *&v8[12] = *(a2 + 44);
  v5 = *(a3 + 24);
  _GraphValue.init(_:)();
  return (*(*(a3 + 40) + 32))(v9, v7, v5);
}

uint64_t _ConditionalContent<>.CommandsProvider.attachOutputs(to:)(uint64_t *a1)
{

  PreferencesOutputs.attachIndirectOutputs(to:)();
}

uint64_t protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance PlatformViewControllerRepresentableAdaptor<A>@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = PlatformViewControllerRepresentableAdaptor.makeViewProvider(context:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for UIViewControllerRepresentableContext(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PlatformViewControllerRepresentableAdaptor.makeViewProvider(context:)(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>);
  v4 = type metadata accessor for PlatformViewRepresentableContext();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = type metadata accessor for UIViewControllerRepresentableContext(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a2);
  v16 = UIViewControllerRepresentableContext.init<A>(_:)(v7, v8, v9, v15);
  v17 = (*(v9 + 32))(v15, v8, v9, v16);
  (*(v12 + 8))(v15, v11);
  return v17;
}

double UIViewControllerRepresentableContext.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v8 = type metadata accessor for UIViewControllerRepresentableContext(0, a2, a4, a4);
  v9 = v8[11];
  v10 = type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.coordinator.getter();
  *(a6 + v9) = protocol witness for ArchivedViewHostStates.count.getter in conformance _ArchivedViewHost<A, B>.LegacyStates();
  *(a6 + v8[9]) = specialized PlatformViewRepresentableContext.transaction.getter();

  PlatformViewRepresentableContext.environment.getter();
  (*(*(v10 - 8) + 8))(a1, v10);
  result = *&v12;
  *(a6 + v8[10]) = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for TransferableDropAction.UserActionStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t initializeBufferWithCopyOfBuffer for SceneID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of SceneID(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t storeEnumTagSinglePayload for TransferableDropAction.UserActionStorage(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t specialized static SceneID.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a5;
  v7 = a4;
  v8 = a2;
  if (a3)
  {
    if (a6)
    {
      v9 = a1 == a4 && a2 == a5;
      return v9 & 1;
    }

    v17 = _typeName(_:qualified:)();
    v19 = v13;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v14);

    v10 = v17;
    v8 = v19;

    goto LABEL_9;
  }

  if (a6)
  {
    v10 = a1;

    v16 = _typeName(_:qualified:)();
    v18 = v11;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v12);

    v7 = v16;
    v6 = v18;
LABEL_9:
    if (v10 != v7 || v8 != v6)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v9 & 1;
    }

LABEL_15:
    v9 = 1;
    return v9 & 1;
  }

  if (a1 == a4 && a2 == a5)
  {
    goto LABEL_15;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t @objc UIHostingController.preferredStatusBarUpdateAnimation.getter(void *a1)
{
  v1 = a1;
  updated = UIHostingController.preferredStatusBarUpdateAnimation.getter();

  return updated;
}

void *AppSceneDelegate.sceneItem()@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
  if (v4 != 255 && static AppGraph.shared)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
    v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
    v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 16);
    outlined copy of SceneID?(*v3, v6, *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16));

    outlined copy of SceneList.Namespace(v7, v8, v9);
    AppGraph.sceneList(namespace:)(v7, v8, v9, __src);
    outlined consume of SceneList.Namespace(v7, v8, v9);

    SceneList.item(id:where:)(v5, v6, v4 & 1, 0, __src);
    outlined consume of SceneID?(v5, v6, v4);

    if (__src[68])
    {
      return memcpy(a1, __src, 0x231uLL);
    }

    outlined destroy of RootEnvironmentModifier?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RootViewDelegate.hostingView<A>(_:willUpdate:)(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  _UIHostingView.colorScheme.getter(&v9);
  EnvironmentValues.explicitPreferredColorScheme.setter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RootViewDelegate.hostingView<A>(_:didUpdate:)(void *a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = *a2;
  v6 = a2[1];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v10[0] = v5;
    v10[1] = v6;
    (*(v8 + 24))(a1, v10, *(v4 + 80), *(v4 + 88), ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void SceneList.item(id:where:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, void *a6@<X8>)
{
  v25 = *v6;
  v24 = *(*v6 + 16);
  if (v24)
  {
    v7 = a4;
    v8 = a3;
    v11 = 0;
    v12 = v25 + 32;
    v23 = a2;
    do
    {
      if (v11 >= *(v25 + 16))
      {
        __break(1u);
        return;
      }

      outlined init with copy of SceneList.Item(v12, __src);
      v13 = __src[17];
      v14 = __src[18];
      if (__src[19])
      {
        if (v8)
        {
          if (__src[17] != a1 || LOBYTE(__src[18]) != v23)
          {
            goto LABEL_3;
          }

          goto LABEL_21;
        }

        v27 = _typeName(_:qualified:)();
        v29 = v18;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v19);

        v14 = v29;

        v17 = a2;
        if (v27 != a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ((v8 & 1) == 0)
        {
          if ((__src[17] != a1 || __src[18] != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_3;
          }

          goto LABEL_21;
        }

        outlined copy of SceneID(__src[17], __src[18], 0);
        v26 = _typeName(_:qualified:)();
        v28 = v15;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v16);
        v7 = a4;

        v17 = v28;
        if (v13 != v26)
        {
          goto LABEL_16;
        }
      }

      if (v14 != v17)
      {
LABEL_16:
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }

LABEL_21:
      if (!v7 || (v7(__src) & 1) != 0)
      {
        memcpy(a6, __src, 0x231uLL);
        return;
      }

LABEL_3:
      ++v11;
      outlined destroy of SceneList.Item(__src);
      v12 += 568;
    }

    while (v24 != v11);
  }

  bzero(a6, 0x231uLL);
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(255, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t specialized AppGraph.addObserver(_:)(unint64_t *a1, uint64_t a2)
{

  return sub_18BE80EF0(a1, a2);
}

{
  v31 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a2 + 192);
  v5 = *(v4 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v25 = v7;
    v26 = a1;
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](v9);
    v10 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v8);
    v8 = 0;
    v7 = 0;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v14 = (v11 + 63) >> 6;
    a1 = &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v7 << 6);
      outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v4 + 48) + 16 * v18, v30);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        outlined destroy of HashableWeakBox<Swift.AnyObject>(v30, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
        *&v10[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_17:
          v20 = specialized _NativeSet.extractSubset(using:count:)(v10, v25, v8, v4);
          a1 = v26;
          goto LABEL_18;
        }
      }

      else
      {
        outlined destroy of HashableWeakBox<Swift.AnyObject>(v30, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_17;
      }

      v17 = *(v4 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI15HashableWeakBoxVyyXlGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i4UI15klM10VyyXlG_TG5ALxSbs5Error_pRi_zRi0_zlyAKIsgndzo_Tf1nc_n(v22, v7, v4, closure #1 in AppGraph.addObserver(_:));

  MEMORY[0x18D0110E0](v22, -1, -1);
  v20 = v23;
LABEL_18:
  *(a2 + 192) = v20;

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v28 = a1;
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v29, v27);
  swift_endAccess();
  return outlined destroy of HashableWeakBox<Swift.AnyObject>(v29, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
}

uint64_t sub_18BE80EF0(unint64_t *a1, uint64_t a2)
{

  return specialized AppGraph.addObserver(_:)(a1, a2);
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>(0);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    outlined init with copy of NavigationTitleStorage?(*(a4 + 48) + 16 * (v13 | (v11 << 6)), v25, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v26);
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = outlined init with take of HashableWeakBox<Swift.AnyObject>(v25, *(v6 + 48) + 16 * v19);
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _SetStorage<UIOpenURLContext>, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _SetStorage<UIScene>, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
}

{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    outlined init with copy of ToolbarPlacement.Role(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v34);
    Hasher.init(_seed:)();
    outlined init with copy of ToolbarPlacement.Role(v34, &v31);
    if (*(&v32 + 1) <= 2)
    {
      if (*(&v32 + 1))
      {
        if (*(&v32 + 1) == 1)
        {
          v16 = 1;
        }

        else
        {
          if (*(&v32 + 1) != 2)
          {
            goto LABEL_28;
          }

          v16 = 2;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else if (*(&v32 + 1) > 4)
    {
      if (*(&v32 + 1) == 5)
      {
        v16 = 5;
      }

      else
      {
        if (*(&v32 + 1) != 6)
        {
LABEL_28:
          v29[0] = v31;
          v29[1] = v32;
          v30 = v33;
          MEMORY[0x18D00F6F0](6);
          AnyHashable.hash(into:)();
          outlined destroy of AnyHashable(v29);
          goto LABEL_33;
        }

        v16 = 7;
      }
    }

    else if (*(&v32 + 1) == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    MEMORY[0x18D00F6F0](v16);
LABEL_33:
    result = Hasher._finalize()();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_43;
        }
      }

      goto LABEL_48;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_43:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v6 + 48) + 40 * v20;
    v26 = v34[0];
    v27 = v34[1];
    *(v25 + 32) = v35;
    *v25 = v26;
    *(v25 + 16) = v27;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_49;
    }

    if (!v5)
    {
LABEL_45:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_45;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of HashableWeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  v10 = *(a1 + 8);
  MEMORY[0x18D00F6F0](v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    do
    {
      outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v9 + 48) + 16 * a2, v20);
      v14 = v21;
      outlined destroy of HashableWeakBox<Swift.AnyObject>(v20);
      if (v14 == v10)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of HashableWeakBox<Swift.AnyObject>(a1, *(v15 + 48) + 16 * a2);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69E8450], type metadata accessor for _SetStorage<UTType>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v24 = v8;
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    v24 = v8;
    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for CommandGroupPlacement(0);
  UUID.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v26 + 72);
    do
    {
      outlined init with copy of HashableCommandGroupPlacementWrapper(*(v13 + 48) + v17 * a2, v10);
      v18 = static UUID.== infix(_:_:)();
      outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v10, type metadata accessor for HashableCommandGroupPlacementWrapper);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of HashableCommandGroupPlacementWrapper(a1, *(v19 + 48) + *(v26 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E6968FB0], type metadata accessor for _SetStorage<URL>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E6969C28], type metadata accessor for _SetStorage<IndexPath>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<HashableWeakBox<Swift.AnyObject>>)
  {
    type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(255, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    lazy protocol witness table accessor for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<HashableWeakBox<Swift.AnyObject>>);
    }
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>(0);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v2 + 48) + 16 * (v12 | (v5 << 6)), v23);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v24);
      v15 = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      outlined init with take of HashableWeakBox<Swift.AnyObject>(v23, *(v4 + 48) + 16 * v11);
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>();
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x18D00F6C0](*(v5 + 40), v16);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<AccessibilityRelationshipScope.Key>, lazy protocol witness table accessor for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key, &type metadata for AccessibilityRelationshipScope.Key);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of AccessibilityRelationshipScope.Key(*(v3 + 48) + 48 * (v16 | (v6 << 6)), v27);
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      MEMORY[0x18D00F6F0](*(&v28 + 1));
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      v14 = v27[0];
      v15 = v28;
      v13[1] = v27[1];
      v13[2] = v15;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v18);
      MEMORY[0x18D00F6F0](v19);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<NavigationState.ListKey>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v35 = v4;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      v36 = *(v18 + 40);
      Hasher.init(_seed:)();
      v38 = v20;
      MEMORY[0x18D00F6F0](v20);
      if (v22 == 6)
      {
        v24 = v19;
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v24 = v19;
        MEMORY[0x18D00F6F0](v19);
        MEMORY[0x18D00F6F0](v22);
        MEMORY[0x18D00F6F0](v21);
      }

      Hasher._combine(_:)(v23);
      v25 = Hasher._finalize()();
      v5 = v35;
      v26 = -1 << *(v35 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v35 + 48) + 48 * v13;
      *v14 = v38;
      *(v14 + 8) = v24;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      v10 = v37;
      *(v14 + 40) = v36;
      ++*(v35 + 16);
      v3 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v33;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarDefaultItemKind.Kind>, lazy protocol witness table accessor for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind, &type metadata for ToolbarDefaultItemKind.Kind);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for UTType();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<UTType>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

{
  v2 = v1;
  v3 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<HashableCommandGroupPlacementWrapper>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      outlined init with copy of HashableCommandGroupPlacementWrapper(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      type metadata accessor for CommandGroupPlacement(0);
      UUID.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      outlined init with take of HashableCommandGroupPlacementWrapper(v5, *(v8 + 48) + v15 * v19);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<SceneRequestCache.Item>, lazy protocol witness table accessor for type SceneRequestCache.Item and conformance SceneRequestCache.Item, &type metadata for SceneRequestCache.Item);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of SceneRequestCache.Item(*(v3 + 48) + 56 * (v17 | (v6 << 6)), v28);
      Hasher.init(_seed:)();
      String.hash(into:)();
      AnyHashable.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 56 * v12;
      v14 = v28[0];
      v15 = v28[1];
      v16 = v28[2];
      *(v13 + 48) = v29;
      *(v13 + 16) = v15;
      *(v13 + 32) = v16;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for URL();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<URL>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

{
  v2 = v1;
  v3 = *v1;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x18D00F6C0](*(v5 + 40), v16);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for IndexPath();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<IndexPath>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ArchivedViewState.ID>, lazy protocol witness table accessor for type ArchivedViewState.ID and conformance ArchivedViewState.ID, &type metadata for ArchivedViewState.ID);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v34 = v1;
    v35 = (v8 + 63) >> 6;
    v11 = v4 + 56;
    v36 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v17 = (*(v3 + 48) + 24 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      v24 = v5;
      Hasher.init(_seed:)();
      Hasher.combine(bytes:)();
      Hasher._combine(_:)(v22);
      v25 = Hasher._finalize()();
      v5 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        do
        {
          if (++v28 == v30 && (v29 & 1) != 0)
          {
            goto LABEL_28;
          }

          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
        }

        while (v32 == -1);
        v12 = __clz(__rbit64(~v32)) + (v28 << 6);
      }

      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v24 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      v13[5] = v22;
      ++*(v24 + 16);
      v3 = v36;
      v10 = v37;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v6 >= v35)
      {
        break;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v33 = v5;

    v2 = v34;
  }

  else
  {
    v33 = v4;
  }

  *v2 = v33;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarItemPlacement.Role>, lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role, &type metadata for ToolbarItemPlacement.Role);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of ToolbarItemPlacement.Role(*(v3 + 48) + 48 * (v16 | (v6 << 6)), &v28);
      Hasher.init(_seed:)();
      ToolbarItemPlacement.Role.hash(into:)(v27);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      v14 = v28;
      v15 = v29[0];
      *(v13 + 25) = *(v29 + 9);
      *v13 = v14;
      v13[1] = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<UITextFormattingViewControllerComponentKey>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<UIScene>(0, &lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<Color>, lazy protocol witness table accessor for type Color and conformance Color, MEMORY[0x1E69815C0]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      dispatch thunk of AnyColorBox.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<UIColor?>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v16)
      {
        Hasher._combine(_:)(1u);
        v17 = v16;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

{
  v2 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<_ViewList_ID.Canonical>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, MEMORY[0x1E697E088]);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v25 = *v16;
      v26 = v16[1];
      Hasher.init(_seed:)();

      _ViewList_ID.Canonical.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v25;
      v12[1] = v26;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }
}