uint64_t outlined destroy of Environment<DismissSearchAccessoryAction>.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *assignWithCopy for ToolbarButtonStyle.ResolvedBody(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    outlined destroy of ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(&a1[v7], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 3);
      *(v8 + 3) = v29;
      v30 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v30;
      v31 = v29;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v41 = a3;
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v15 = v9[34];
        v16 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v16, v15);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v16;
        v8[34] = v15;
        v17 = *(v9 + 5);
        v18 = *(v9 + 6);
        v19 = *(v9 + 7);
        v20 = *(v9 + 8);
        LOBYTE(v12) = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v14, v12);
        *(v8 + 5) = v17;
        *(v8 + 6) = v18;
        *(v8 + 7) = v19;
        *(v8 + 8) = v20;
        *(v8 + 36) = v14;
        v8[74] = v12;
        a3 = v41;
        v21 = *(type metadata accessor for LinkDestination() + 24);
        v22 = &v8[v21];
        v23 = &v9[v21];
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 16))(v22, v23, v24);
        v25 = type metadata accessor for LinkDestination.Configuration();
        v22[*(v25 + 20)] = v23[*(v25 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_8;
  }

LABEL_9:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  v33 = *(a3 + 24);
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *v35;
  v37 = v35[8];
  outlined copy of Environment<Selector?>.Content(*v35, v37);
  v38 = *v34;
  v39 = v34[8];
  *v34 = v36;
  v34[8] = v37;
  outlined consume of Environment<Selector?>.Content(v38, v39);
  return a1;
}

uint64_t assignWithCopy for ToolbarButtonContentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v3, v4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithCopy for UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for ToolbarButtonLabelModifier(uint64_t a1, uint64_t *a2, __n128 a3)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(a1);
    if (*(a2 + 41))
    {
      if (*(a2 + 40) == 1)
      {
        v5 = a2[3];
        *(a1 + 24) = v5;
        *(a1 + 32) = a2[4];
        (**(v5 - 8))(a1, a2);
        *(a1 + 40) = 1;
      }

      else
      {
        v6 = *a2;
        v7 = *(a2 + 1);
        *(a1 + 25) = *(a2 + 25);
        *a1 = v6;
        *(a1 + 16) = v7;
      }

      *(a1 + 41) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = *(a2 + 81);
  v13 = *(a2 + 80);
  outlined copy of Environment<ToolbarItemMetrics?>.Content(v8, v9, v10, v11, v13, v12);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = *(a1 + 81);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  v19 = *(a1 + 80);
  *(a1 + 80) = v13;
  *(a1 + 81) = v12;
  outlined consume of Environment<ToolbarItemMetrics?>.Content(v14, v15, v16, v17, v19, v18);
  v20 = a2[11];
  LOBYTE(v9) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v20, v9);
  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  *(a1 + 88) = v20;
  *(a1 + 96) = v9;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = a2[13];
  LOBYTE(v9) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v23, v9);
  v24 = *(a1 + 104);
  v25 = *(a1 + 112);
  *(a1 + 104) = v23;
  *(a1 + 112) = v9;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  v26 = a2[15];
  LOBYTE(v9) = *(a2 + 128);
  outlined copy of Environment<Selector?>.Content(v26, v9);
  v27 = *(a1 + 120);
  v28 = *(a1 + 128);
  *(a1 + 120) = v26;
  *(a1 + 128) = v9;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = a2[17];
  v30 = *(a2 + 144);
  outlined copy of Environment<Selector?>.Content(v29, v30);
  v31 = *(a1 + 136);
  v32 = *(a1 + 144);
  *(a1 + 136) = v29;
  *(a1 + 144) = v30;
  outlined consume of Environment<Selector?>.Content(v31, v32);
  return a1;
}

uint64_t partial apply for closure #1 in OnScrollVisibilityChangeModifier.body(content:)(uint64_t result)
{
  if (*(v1 + 48))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Text.Sizing>();
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

Swift::Void __swiftcall ToolbarMakeEntries.updateValue()()
{
  v1 = v0;
  v90 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ToolbarViewListVisitor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*AGGraphGetValue())
  {
    v68 = MEMORY[0x1E69E7CC0];
    type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
    AGGraphSetOutputValue();
    return;
  }

  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v86);
  v6 = *(v0 + 72);
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  v87 = v6;
  v88 = v68;
  v89 = v69;
  v7 = *(v1 + 80);
  v8 = v6;
  v9 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v9, &v84);
  v82 = v84;
  v83[0] = v85[0];
  *(v83 + 9) = *(v85 + 9);
  v10 = *MEMORY[0x1E698D3F8];
  if (*(v1 + 64) == *MEMORY[0x1E698D3F8])
  {
    v11 = 5;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ToolbarDefaultItemKind?, &type metadata for ToolbarDefaultItemKind);
    v11 = *AGGraphGetValue();
  }

  v59 = v11;
  if (*(v1 + 40) == v10)
  {
    v57 = 0;
  }

  else
  {
    v57 = *AGGraphGetValue();
  }

  v12 = *(v1 + 44);
  v60 = v7;
  v61 = v8;
  if (v12 == v10)
  {
    v56 = 0;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v56 = *AGGraphGetValue();
  }

  v68 = *v1;
  v13 = *(v1 + 8);
  v14 = *(v1 + 12);
  v15 = *(v1 + 16);
  v63 = *(v1 + 20);
  v72 = *(v1 + 21);
  v73 = *(v1 + 23);
  v16 = *(v1 + 40);
  v17 = *(v1 + 44);
  v18 = *(v1 + 52);
  v19 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = *(v1 + 60);
  v81 = *(v1 + 80);
  v80 = v20;
  v69 = __PAIR64__(v14, v13);
  v58 = v15;
  v70 = v15;
  v71 = v63;
  v62 = *(v1 + 24);
  v74 = v62;
  LODWORD(v52) = v16;
  v75 = v16;
  v76 = v17;
  v77 = v18;
  v78 = v19;
  v79 = v21;
  v55 = ToolbarMakeEntries.resolvedDefaultVisibility.getter();
  if (v18 == v10)
  {
    v54 = 0;
    if (v19 != v10)
    {
LABEL_14:
      type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Visibility?, MEMORY[0x1E697DB50]);
      v22 = *AGGraphGetValue();
      goto LABEL_17;
    }
  }

  else
  {
    v54 = *AGGraphGetValue();
    if (v19 != v10)
    {
      goto LABEL_14;
    }
  }

  v22 = 3;
LABEL_17:
  v53 = v22;
  if (v21 == v10 || (v23 = AGGraphGetValue(), v62 == v10) || (v24 = *v23, type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]), AGGraphGetValue(), v52 != v10) && *AGGraphGetValue())
  {
    v24 = 0;
  }

  type metadata accessor for PreferenceBridge();
  AGGraphGetValue();
  swift_weakInit();
  swift_weakAssign();
  v25 = 0;
  v26 = 0;
  if (v62 != v10)
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
    v27 = AGGraphGetValue();
    v25 = *v27;
    v26 = v27[1];
  }

  if (DWORD1(v62) == v10)
  {
    v50 = 0;
    v28 = 0;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
    v29 = AGGraphGetValue();
    v28 = v29[1];
    v50 = *v29;
  }

  v51 = v26;
  v52 = v25;
  v30 = v24;
  if (DWORD2(v62) == v10)
  {
    v31 = 0;
    v32 = 0;
    v62 = 0u;
    v49 = 0u;
  }

  else
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier);
    v33 = AGGraphGetValue();
    outlined init with copy of MatchedTransitionIdentifier?(v33, v65);
    v49 = v65[1];
    v62 = v65[0];
    v31 = v66;
    v32 = v67;
  }

  v34 = v63;
  v35 = v2[18];
  v36 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  (*(*(v36 - 8) + 56))(&v4[v35], 1, 1, v36);
  *v4 = v60;
  v37 = v83[0];
  *(v4 + 8) = v82;
  *(v4 + 24) = v37;
  *(v4 + 33) = *(v83 + 9);
  v4[49] = v59;
  v4[50] = v57;
  *(v4 + 7) = v56;
  v38 = v54;
  v4[64] = v55;
  v4[65] = v38;
  v4[66] = v53;
  *(v4 + 9) = v30;
  outlined init with take of WeakBox<PreferenceBridge>(&v64, (v4 + 80));
  *(v4 + 11) = v61;
  v4[96] = v34;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  v39 = &v4[v2[19]];
  v40 = v51;
  *v39 = v52;
  *(v39 + 1) = v40;
  v41 = &v4[v2[20]];
  *v41 = v50;
  *(v41 + 1) = v28;
  v42 = &v4[v2[21]];
  v43 = v49;
  *v42 = v62;
  *(v42 + 1) = v43;
  *(v42 + 4) = v31;
  *(v42 + 5) = v32;
  v4[v2[22]] = 0;
  v44 = v2[23];
  *&v4[v44] = MEMORY[0x1E69E7CC0];
  outlined init with copy of _VariadicView_Children(v86, &v68);
  *&v65[0] = 0;
  lazy protocol witness table accessor for type ToolbarViewListVisitor and conformance ToolbarViewListVisitor();
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(&v68);
  ToolbarViewListVisitor.finalizeGroup()();
  LODWORD(v65[0]) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  v45 = *&v4[v44];
  v46 = v45[2];
  if (v46)
  {
    v47 = *(v1 + 88);

    for (i = 0; i != v46; ++i)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
      }

      if (i >= v45[2])
      {
        __break(1u);
      }

      type metadata accessor for ToolbarStorage.Entry(0);
      specialized ToolbarStorage.Entry.bindID<A>(_:)(v47);
    }
  }

  else
  {
  }

  v68 = v45;
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView_Children(v86);

  outlined destroy of ToolbarViewListVisitor(v4, type metadata accessor for ToolbarViewListVisitor);
}

void specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    outlined init with copy of ToolbarPlacement.Role(*(a1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    specialized Set._Variant.insert(_:)(v12, v10);
    outlined destroy of ToolbarPlacement.Role(v12);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + 48 * (v9 | (v8 << 6)));
      v11 = v10[1];
      v13[0] = *v10;
      v13[1] = v11;
      v13[2] = v10[2];
      specialized Set._Variant.insert(_:)(&v12, v13);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarModifier<A, B>.TransformSearch@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = a2(*v5, a1[2], a1[3], a1[4]);
  v10 = v9;
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 24) = v10;
  *a5 = a4;
  a5[1] = result;
  return result;
}

uint64_t sub_18BF55C1C()
{

  return swift_deallocObject();
}

uint64_t closure #1 in View.presentationCommon(_:onDismiss:id:)(void *a1, int *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  _ss11AnyHashableVSgWOhTm_0(a1, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
  v20 = *a2;
  v21 = a3[9];
  v36 = a3[8];
  v37 = v21;
  v38 = a3[10];
  v39 = *(a3 + 176);
  v22 = a3[5];
  v32 = a3[4];
  v33 = v22;
  v23 = a3[7];
  v34 = a3[6];
  v35 = v23;
  v24 = a3[1];
  v28 = *a3;
  v29 = v24;
  v25 = a3[3];
  v30 = a3[2];
  v31 = v25;
  if (getEnumTag for AccessibilityActionCategory.Category(&v28) == 1)
  {
    a1[34] = 0;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    _ss11AnyHashableVSgWOcTm_1(a6, &v27[13], &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    v27[8] = v48;
    v27[9] = v49;
    v27[10] = v50;
    LOBYTE(v27[11]) = v51;
    v27[4] = v44;
    v27[5] = v45;
    v27[6] = v46;
    v27[7] = v47;
    v27[0] = v40;
    v27[1] = v41;
    v27[2] = v42;
    v27[3] = v43;
    *(&v27[11] + 1) = a4;
    *&v27[12] = a5;
    DWORD2(v27[12]) = v20;
    *(&v27[15] + 1) = a7;
    *&v27[16] = a8;
    *(&v27[16] + 1) = a9;
    *&v27[17] = a10;
    memcpy(a1, v27, 0x118uLL);
    outlined copy of AppIntentExecutor?(a4, a5);
  }

  return _ss11AnyHashableVSgWOcTm_1(a3, v27, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
}

double ToolbarGraphUtilities.MakeToolbarEnvironment.value.getter@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v5 = Value[1];
  *&v7 = *Value;
  *(&v7 + 1) = v5;
  if (*MEMORY[0x1E698D3F8] == v3)
  {
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, MEMORY[0x1E69E62F8]);

    AGGraphGetValue();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  result = *&v7;
  *a2 = v7;
  return result;
}

uint64_t partial apply for closure #1 in ToolbarModifier.TransformSearch.value.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t closure #1 in ToolbarModifier.TransformSearch.value.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(a1, v6, type metadata accessor for ToolbarStorage.SearchItem?);
  v7 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(v6, type metadata accessor for ToolbarStorage.SearchItem?);
  }

  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(a1, type metadata accessor for ToolbarStorage.SearchItem?);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(v6, type metadata accessor for ToolbarStorage.SearchItem?);
  return _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(a2, a1, type metadata accessor for ToolbarStorage.SearchItem?);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: ToolbarStorage.Item)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall ToolbarViewListVisitor.finalizeGroup()()
{
  v1 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v85 = *(v1 - 8);
  v86 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolbarStorage.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Int, ToolbarStorage.Item)(0);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(0);
  v12 = v11;
  v84 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v68 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  v23 = *(v0 + 112);
  if (!v23)
  {
    return;
  }

  v75 = v3;
  v76 = v7;
  v77 = v4;
  v78 = v5;
  v81 = v0;
  v24 = *(v23 + 16);

  v26 = MEMORY[0x1E69E7CC0];
  v27 = v25;
  if (!v24)
  {
LABEL_13:
    v37 = *(v26 + 16);
    if (!v37)
    {

      return;
    }

    v74 = v27;
    if (v37 != 1)
    {

      v43 = v27;
      v24 = v81;
      goto LABEL_21;
    }

    outlined init with copy of ToolbarStorage.GroupItem(v26 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v16, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));

    v38 = *v16;
    v39 = *(v79 + 48);
    v40 = v80;
    outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v16 + *(v12 + 48), &v80[v39], type metadata accessor for ToolbarStorage.Item);
    _s7SwiftUI16CommandOperationVWOhTm_3(&v40[v39], type metadata accessor for ToolbarStorage.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v27;
    v24 = v81;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
      if ((v38 & 0x8000000000000000) == 0)
      {
LABEL_18:
        if (v38 < v43[2])
        {
          v42 = type metadata accessor for ToolbarStorage.Item(0);
          *(v43 + ((*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80)) + *(*(v42 - 8) + 72) * v38 + *(v42 + 80)) = 1;
LABEL_21:
          v44 = type metadata accessor for ToolbarViewListVisitor(0);
          v45 = (v24 + v44[19]);
          v47 = *v45;
          v46 = v45[1];
          v48 = (v24 + v44[20]);
          v49 = v48[1];
          v87 = *v48;
          _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v24 + v44[21], v91, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          outlined init with copy of ToolbarItemPlacement.Role(v24 + 8, &v89);
          LODWORD(v84) = *(v24 + 50);
          v50 = *(v24 + 56);
          LODWORD(v80) = *(v24 + 64);
          LODWORD(v79) = *(v24 + 65);
          v73 = *(v24 + 66);
          v72 = *(v24 + 72);
          v51 = v43[2];
          if (v51)
          {
            v69 = v47;
            v88 = MEMORY[0x1E69E7CC0];
            v71 = v46;

            v70 = v49;

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
            v52 = v88;
            v53 = *(type metadata accessor for ToolbarStorage.Item(0) - 8);
            v54 = v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
            v55 = *(v53 + 72);
            v56 = v75;
            do
            {
              outlined init with copy of ToolbarStorage.GroupItem(v54, v56, type metadata accessor for ToolbarStorage.Item);
              swift_storeEnumTagMultiPayload();
              v88 = v52;
              v58 = *(v52 + 16);
              v57 = *(v52 + 24);
              if (v58 >= v57 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
                v52 = v88;
              }

              *(v52 + 16) = v58 + 1;
              outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v56, v52 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v58, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
              v54 += v55;
              --v51;
            }

            while (v51);

            v24 = v81;
            v46 = v71;
            v49 = v70;
            v47 = v69;
          }

          else
          {

            v52 = MEMORY[0x1E69E7CC0];
          }

          v28 = v44[18];
          v59 = v83;
          _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v24 + v28, v83 + *(v76 + 15), &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], _s7SwiftUI16CommandOperationVSgMaTm_3);
          *&v60 = v47;
          *(&v60 + 1) = v46;
          *&v61 = v87;
          *(&v61 + 1) = v49;
          *v59 = v60;
          *(v59 + 16) = v61;
          v62 = v91[1];
          *(v59 + 32) = v91[0];
          *(v59 + 48) = v62;
          v63 = v89;
          v64 = v90[0];
          *(v59 + 64) = v91[2];
          *(v59 + 80) = v63;
          *(v59 + 96) = v64;
          *(v59 + 105) = *(v90 + 9);
          *(v59 + 121) = v84;
          *(v59 + 128) = v50;
          *(v59 + 136) = v80;
          *(v59 + 137) = v79;
          *(v59 + 138) = v73;
          *(v59 + 144) = v72;
          *(v59 + 152) = v52;
          v22 = v82;
          outlined init with copy of ToolbarStorage.GroupItem(v59, v82, type metadata accessor for ToolbarStorage.GroupItem);
          type metadata accessor for ToolbarStorage.Entry.Kind(0);
          swift_storeEnumTagMultiPayload();
          v22[*(v77 + 20)] = 2;
          v16 = v44[23];
          v7 = *(v24 + v16);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_29;
          }

          goto LABEL_34;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v28 = 0;
  while (v28 < v27[2])
  {
    v29 = (type metadata accessor for ToolbarStorage.Item(0) - 8);
    v7 = v27;
    v30 = v27 + ((*(*v29 + 80) + 32) & ~*(*v29 + 80)) + *(*v29 + 72) * v28;
    v31 = *(v12 + 48);
    *v19 = v28;
    outlined init with copy of ToolbarStorage.GroupItem(v30, v19 + v31, type metadata accessor for ToolbarStorage.Item);
    outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v19, v22, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    outlined init with copy of ToolbarStorage.GroupItem(v22, v16, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    v32 = v16 + *(v12 + 48);
    v33 = *(v32 + v29[21]);
    _s7SwiftUI16CommandOperationVWOhTm_3(v32, type metadata accessor for ToolbarStorage.Item);
    if (v33)
    {
      _s7SwiftUI16CommandOperationVWOhTm_3(v22, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    }

    else
    {
      outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v22, v87, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v91[0] = v26;
      if ((v34 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        v26 = *&v91[0];
      }

      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v26 = *&v91[0];
      }

      *(v26 + 16) = v36 + 1;
      outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v87, v26 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v36, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
    }

    ++v28;
    v27 = v7;
    if (v24 == v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
LABEL_29:
  v66 = v7[2];
  v65 = v7[3];
  if (v66 >= v65 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v7);
  }

  _s7SwiftUI16CommandOperationVWOhTm_3(v83, type metadata accessor for ToolbarStorage.GroupItem);
  v7[2] = v66 + 1;
  outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v22, v7 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v66, type metadata accessor for ToolbarStorage.Entry);

  *(v24 + v16) = v7;
  *(v24 + 112) = 0;
  outlined destroy of _ViewList_View?(v24 + v28, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], _s7SwiftUI16CommandOperationVSgMaTm_3);
  v67 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  (*(*(v67 - 8) + 56))(v24 + v28, 1, 1, v67);
}

void type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item))
  {
    type metadata accessor for ToolbarStorage.Item(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item));
    }
  }
}

char *initializeWithCopy for ToolbarStorage.Entry(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v16 = a1 + 8;
      if (a2[48] == 1)
      {
        v17 = *(a2 + 2);
        *(a1 + 2) = v17;
        (**(v17 - 8))(v16, a2 + 8);
        a1[48] = 1;
      }

      else
      {
        v18 = *(a2 + 24);
        *v16 = *(a2 + 8);
        *(a1 + 24) = v18;
        *(a1 + 33) = *(a2 + 33);
      }

      a1[49] = a2[49];
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 9) = *(a2 + 9);

      swift_storeEnumTagMultiPayload();
      goto LABEL_144;
    case 1:
      v12 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v12;
      v13 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v13;
      v14 = *(a2 + 7);

      if (v14)
      {
        v15 = *(a2 + 8);
        *(a1 + 7) = v14;
        *(a1 + 8) = v15;
        (**(v14 - 8))(a1 + 32, a2 + 32, v14);
        *(a1 + 9) = *(a2 + 9);
      }

      else
      {
        v19 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v19;
        *(a1 + 4) = *(a2 + 4);
      }

      v273 = a3;
      if (a2[120] == 1)
      {
        v20 = *(a2 + 104);
        *(a1 + 104) = v20;
        (**(v20 - 8))(a1 + 80, a2 + 80);
        a1[120] = 1;
      }

      else
      {
        v21 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v21;
        *(a1 + 105) = *(a2 + 105);
      }

      a1[121] = a2[121];
      *(a1 + 16) = *(a2 + 16);
      a1[136] = a2[136];
      *(a1 + 137) = *(a2 + 137);
      v22 = *(a2 + 19);
      *(a1 + 18) = *(a2 + 18);
      *(a1 + 19) = v22;
      v23 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v24 = &a1[v23];
      v25 = &a2[v23];
      v26 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);

      if (v28(v25, 1, v26))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v24, v25, *(*(v29 - 8) + 64));
LABEL_143:
        swift_storeEnumTagMultiPayload();
        a3 = v273;
        goto LABEL_144;
      }

      v271 = v24;
      v263 = v27;
      v265 = v26;
      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      v30 = v25;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v78 = *(v25 + 3);
        v79 = v24;
        *(v24 + 24) = v78;
        (**(v78 - 8))(v24, v25);
        v80 = v25[6];
        *(v24 + 5) = v25[5];
        *(v24 + 6) = v80;
        *(v24 + 7) = v25[7];
        *(v24 + 8) = v25[8];
        *(v24 + 72) = *(v25 + 9);
        v81 = v25[11];
        *(v24 + 11) = v81;

        v82 = v81;
        v83 = v265;
LABEL_142:
        swift_storeEnumTagMultiPayload();
        v239 = *(v83 + 20);
        v240 = *&v30[v239];
        *&v79[v239] = v240;
        v241 = *(v27 + 56);
        v242 = v240;
        v241(v79, 0, 1, v83);
        goto LABEL_143;
      }

      v269 = a1;
      v31 = *v25;
      v32 = v25[1];
      v33 = v24;
      *v24 = *v25;
      *(v24 + 1) = v32;
      v34 = v25[3];
      *(v24 + 2) = v25[2];
      *(v24 + 3) = v34;
      v24[32] = *(v25 + 32);
      v35 = v25[6];
      *(v24 + 5) = v25[5];
      *(v24 + 6) = v35;
      v24[56] = *(v25 + 56);
      v36 = v25[24];
      v37 = v31;
      v38 = v32;

      if (v36 >> 1 == 4294967294)
      {
        v39 = *(v25 + 13);
        *(v24 + 12) = *(v25 + 12);
        *(v24 + 13) = v39;
        *(v24 + 14) = *(v25 + 14);
        *(v24 + 235) = *(v25 + 235);
        v40 = *(v25 + 9);
        *(v24 + 8) = *(v25 + 8);
        *(v24 + 9) = v40;
        v41 = *(v25 + 11);
        *(v24 + 10) = *(v25 + 10);
        *(v24 + 11) = v41;
        v42 = *(v25 + 5);
        *(v24 + 4) = *(v25 + 4);
        *(v24 + 5) = v42;
        v43 = *(v25 + 7);
        *(v24 + 6) = *(v25 + 6);
        *(v24 + 7) = v43;
      }

      else
      {
        v86 = *(v25 + 72);
        if (v86 == 255)
        {
          *(v24 + 8) = v25[8];
          v24[72] = *(v25 + 72);
        }

        else
        {
          v87 = v25[8];
          outlined copy of GraphicsImage.Contents(v87, *(v25 + 72));
          *(v24 + 8) = v87;
          v24[72] = v86;
          v36 = v25[24];
        }

        *(v24 + 10) = v25[10];
        *(v24 + 88) = *(v25 + 11);
        v24[104] = *(v25 + 104);
        *(v24 + 108) = *(v25 + 108);
        *(v24 + 121) = *(v25 + 121);
        *(v24 + 136) = *(v25 + 17);
        *(v24 + 152) = *(v25 + 19);
        *(v24 + 84) = *(v25 + 84);
        v24[170] = *(v25 + 170);
        v24[171] = *(v25 + 171);
        if (v36 >> 1 == 0xFFFFFFFF)
        {
          v163 = *(v25 + 12);
          *(v24 + 11) = *(v25 + 11);
          *(v24 + 12) = v163;
        }

        else
        {
          v164 = v25[22];
          v165 = v25[23];
          v166 = v25[25];
          outlined copy of AccessibilityImageLabel(*(v30 + 22), *(v30 + 23), v36, *(v30 + 25));
          *(v24 + 22) = v164;
          *(v24 + 23) = v165;
          *(v24 + 24) = v36;
          *(v24 + 25) = v166;
        }

        v167 = *(v30 + 27);
        *(v24 + 26) = *(v30 + 26);
        *(v24 + 27) = v167;
        *(v24 + 112) = *(v30 + 112);
        *(v24 + 57) = *(v30 + 57);
        v24[232] = v30[232];
        v168 = *(v30 + 30);
        *(v24 + 30) = v168;
        *(v24 + 124) = *(v30 + 124);
        v24[250] = v30[250];
        swift_unknownObjectRetain();

        v169 = v168;
      }

      v170 = *(v30 + 33);
      if (v170)
      {
        *(v24 + 32) = *(v30 + 32);
        *(v24 + 33) = v170;
        v171 = *(v30 + 34);

        if (v171 >= 2)
        {
          v172 = v171;
        }

        *(v24 + 34) = v171;
        *(v24 + 70) = *(v30 + 70);
        v24[284] = v30[284];
        *(v24 + 285) = *(v30 + 285);
        v173 = *(v30 + 37);
        *(v24 + 36) = *(v30 + 36);
        *(v24 + 37) = v173;
      }

      else
      {
        v174 = *(v30 + 17);
        *(v24 + 16) = *(v30 + 16);
        *(v24 + 17) = v174;
        *(v24 + 18) = *(v30 + 18);
      }

      v175 = *(v30 + 42);
      v268 = v30;
      if (v175 >> 2 == 0xFFFFFFFF)
      {
        v176 = *(v30 + 24);
        *(v24 + 23) = *(v30 + 23);
        *(v24 + 24) = v176;
        *(v24 + 50) = *(v30 + 50);
        v177 = *(v30 + 20);
        *(v24 + 19) = *(v30 + 19);
        *(v24 + 20) = v177;
        v178 = *(v30 + 22);
        *(v24 + 21) = *(v30 + 21);
        *(v24 + 22) = v178;
      }

      else
      {
        v179 = *(v30 + 38);
        v180 = *(v30 + 39);
        v181 = *(v30 + 40);
        v182 = *(v30 + 41);
        v183 = v268[43];
        v184 = v268[44];
        v244 = v268[46];
        v246 = v268[47];
        v250 = v268[48];
        v256 = v268[49];
        __dstc = v268[50];
        v185 = v268[45];
        outlined copy of PlatformItemList.Item.SystemItem(v179, v180, v181, v268[41], v175, v183, v184, v185, v244, v246, v250, v256, __dstc);
        *(v271 + 38) = v179;
        *(v271 + 39) = v180;
        *(v271 + 40) = v181;
        *(v271 + 41) = v182;
        v30 = v268;
        *(v271 + 42) = v175;
        *(v271 + 43) = v183;
        v33 = v271;
        *(v271 + 44) = v184;
        *(v271 + 45) = v185;
        *(v271 + 46) = v244;
        *(v271 + 47) = v246;
        *(v271 + 48) = v250;
        *(v271 + 49) = v256;
        *(v271 + 50) = __dstc;
      }

      v186 = *(v30 + 52);
      if (v186 == 1)
      {
        v187 = *(v30 + 456);
        *(v33 + 440) = *(v30 + 440);
        *(v33 + 456) = v187;
        v33[472] = v30[472];
        v188 = *(v30 + 424);
        *(v33 + 408) = *(v30 + 408);
        *(v33 + 424) = v188;
      }

      else
      {
        *(v33 + 102) = *(v30 + 102);
        v33[412] = v30[412];
        if (v186)
        {
          v189 = *(v30 + 53);
          *(v33 + 52) = v186;
          *(v33 + 53) = v189;
        }

        else
        {
          *(v33 + 26) = *(v30 + 26);
        }

        v190 = *(v30 + 54);
        if (v190)
        {
          v191 = *(v30 + 55);
          *(v33 + 54) = v190;
          *(v33 + 55) = v191;
        }

        else
        {
          *(v33 + 27) = *(v30 + 27);
        }

        v192 = *(v30 + 56);
        if (v192)
        {
          v193 = *(v30 + 57);
          *(v33 + 56) = v192;
          *(v33 + 57) = v193;
        }

        else
        {
          *(v33 + 28) = *(v30 + 28);
        }

        *(v33 + 58) = *(v30 + 58);
        v33[472] = v30[472];
      }

      v194 = *(v30 + 61);
      *(v33 + 60) = *(v30 + 60);
      *(v33 + 61) = v194;
      *(v33 + 62) = *(v30 + 62);
      v33[504] = v30[504];
      v195 = *(v30 + 64);

      if (v195)
      {
        v196 = *(v30 + 65);
        *(v33 + 64) = v195;
        *(v33 + 65) = v196;
      }

      else
      {
        *(v33 + 32) = *(v30 + 32);
      }

      v33[528] = v30[528];
      if (!*(v30 + 102))
      {
        memcpy(v33 + 536, v30 + 536, 0x130uLL);
        goto LABEL_127;
      }

      *(v33 + 67) = *(v30 + 67);
      *(v33 + 68) = *(v30 + 68);
      v33[552] = v30[552];
      *(v33 + 70) = *(v30 + 70);
      v33[568] = v30[568];
      *(v33 + 36) = *(v30 + 36);
      v33[592] = v30[592];
      v197 = v33 + 600;
      v198 = v30 + 600;
      v199 = *(v30 + 78);

      if (v199)
      {
        if (v199 == 1)
        {
          v200 = *(v30 + 616);
          *v197 = *v198;
          *(v33 + 616) = v200;
          *(v33 + 632) = *(v30 + 632);
LABEL_123:
          *(v33 + 81) = *(v30 + 81);
          v33[656] = v30[656];
          v202 = v33 + 664;
          v203 = v30 + 664;
          v204 = *(v30 + 97);
          if (v204 == 1)
          {
            v205 = *(v30 + 776);
            *(v33 + 760) = *(v30 + 760);
            *(v33 + 776) = v205;
            *(v33 + 792) = *(v30 + 792);
            v33[808] = v30[808];
            v206 = *(v30 + 712);
            *(v33 + 696) = *(v30 + 696);
            *(v33 + 712) = v206;
            v207 = *(v30 + 744);
            *(v33 + 728) = *(v30 + 728);
            *(v33 + 744) = v207;
            v208 = *(v30 + 680);
            *v202 = *v203;
            *(v33 + 680) = v208;
          }

          else
          {
            *v202 = *v203;
            v33[672] = v30[672];
            *(v33 + 85) = *(v30 + 85);
            v33[688] = v30[688];
            *(v33 + 689) = *(v30 + 689);
            v33[691] = v30[691];
            v33[692] = v30[692];
            *(v33 + 87) = *(v30 + 87);
            v209 = *(v30 + 45);
            *(v33 + 44) = *(v30 + 44);
            *(v33 + 45) = v209;
            *(v33 + 92) = *(v30 + 92);
            *(v33 + 372) = *(v30 + 372);
            *(v33 + 47) = *(v30 + 47);
            v33[768] = v30[768];
            *(v33 + 97) = v204;
            *(v33 + 49) = *(v30 + 49);
            *(v33 + 100) = *(v30 + 100);
            v33[808] = v30[808];
          }

          *(v33 + 102) = *(v30 + 102);
          *(v33 + 103) = *(v30 + 103);
          *(v33 + 104) = *(v30 + 104);

LABEL_127:
          v210 = v33 + 840;
          v211 = v30 + 840;
          v212 = *(v30 + 108);
          if (v212)
          {
            if (v212 == 1)
            {
              v213 = *(v30 + 856);
              *v210 = *v211;
              *(v33 + 856) = v213;
              *(v33 + 872) = *(v30 + 872);
              *(v33 + 111) = *(v30 + 111);
LABEL_135:
              v217 = *(v30 + 112);
              *(v33 + 112) = v217;
              *(v33 + 113) = *(v30 + 113);
              *(v33 + 114) = *(v30 + 114);
              *(v33 + 115) = *(v30 + 115);
              *(v33 + 116) = *(v30 + 116);
              *(v33 + 117) = *(v30 + 117);
              *(v33 + 118) = *(v30 + 118);
              *(v33 + 476) = *(v30 + 476);
              v33[954] = v30[954];
              v218 = type metadata accessor for PlatformItemList.Item(0);
              v219 = *(v218 + 112);
              v257 = v218;
              __dsta = &v33[v219];
              v220 = &v30[v219];
              v221 = type metadata accessor for CommandOperation(0);
              v222 = *(v221 - 8);
              v251 = *(v222 + 48);
              v223 = v217;

              if (v251(v220, 1, v221))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(__dsta, v220, *(*(v224 - 8) + 64));
                v30 = v268;
                a1 = v269;
                v27 = v263;
                v83 = v265;
                v79 = v271;
              }

              else
              {
                v247 = v222;
                v252 = v221;
                v225 = v220;
                *__dsta = *v220;
                v226 = *(v221 + 20);
                v227 = &__dsta[v226];
                v228 = &v225[v226];
                v229 = *&v225[v226];
                v230 = *&v225[v226 + 8];
                v231 = v225[v226 + 16];
                outlined copy of Text.Storage(v229, v230, v231);
                *v227 = v229;
                *(v227 + 1) = v230;
                v227[16] = v231;
                *(v227 + 3) = *(v228 + 3);
                v232 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v233 = type metadata accessor for UUID();
                v234 = *(*(v233 - 8) + 16);

                v234(&v227[v232], &v228[v232], v233);
                v235 = *(v252 + 24);
                v236 = &__dsta[v235];
                v237 = &v225[v235];
                if (*v237)
                {
                  v238 = *(v237 + 1);
                  *v236 = *v237;
                  *(v236 + 1) = v238;
                }

                else
                {
                  *v236 = *v237;
                }

                v30 = v268;
                a1 = v269;
                v27 = v263;
                v83 = v265;
                v79 = v271;
                (*(v247 + 56))(__dsta, 0, 1, v252);
              }

              v79[v257[29]] = v30[v257[29]];
              v79[v257[30]] = v30[v257[30]];
              v79[v257[31]] = v30[v257[31]];
              v79[v257[32]] = v30[v257[32]];
              v79[v257[33]] = v30[v257[33]];
              *&v79[v257[34]] = *&v30[v257[34]];

              goto LABEL_142;
            }

            *(v33 + 108) = v212;
            *(v33 + 109) = *(v30 + 109);
            (**(v212 - 8))(v210, v211);
          }

          else
          {
            v214 = *(v30 + 856);
            *v210 = *v211;
            *(v33 + 856) = v214;
            *(v33 + 109) = *(v30 + 109);
          }

          v215 = *(v30 + 110);
          if (v215)
          {
            v216 = *(v30 + 111);
            *(v33 + 110) = v215;
            *(v33 + 111) = v216;
          }

          else
          {
            *(v33 + 55) = *(v30 + 55);
          }

          goto LABEL_135;
        }

        *(v33 + 78) = v199;
        *(v33 + 79) = *(v30 + 79);
        (**(v199 - 8))((v33 + 600), (v30 + 600), v199);
      }

      else
      {
        v201 = *(v30 + 616);
        *v197 = *v198;
        *(v33 + 616) = v201;
        *(v33 + 79) = *(v30 + 79);
      }

      *(v33 + 80) = *(v30 + 80);

      goto LABEL_123;
    case 0:
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 1) = *(a2 + 1);
      v8 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v8;
      v9 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v9;
      v10 = *(a2 + 11);

      if (v10)
      {
        v11 = *(a2 + 12);
        *(a1 + 11) = v10;
        *(a1 + 12) = v11;
        (**(v10 - 8))(a1 + 64, a2 + 64, v10);
        *(a1 + 13) = *(a2 + 13);
      }

      else
      {
        v44 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v44;
        *(a1 + 6) = *(a2 + 6);
      }

      v274 = a3;
      if (a2[152] == 1)
      {
        v45 = *(a2 + 136);
        *(a1 + 136) = v45;
        (**(v45 - 8))(a1 + 112, a2 + 112);
        a1[152] = 1;
      }

      else
      {
        v46 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v46;
        *(a1 + 137) = *(a2 + 137);
      }

      *(a1 + 153) = *(a2 + 153);
      *(a1 + 20) = *(a2 + 20);
      a1[168] = a2[168];
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 22) = *(a2 + 22);
      v47 = *(a2 + 13);
      *(a1 + 13) = v47;
      v48 = v47;
      v49 = **(v47 - 8);

      v49(a1 + 184, a2 + 184, v48);
      v50 = *(a2 + 29);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 29) = v50;
      *(a1 + 30) = *(a2 + 30);
      *(a1 + 31) = *(a2 + 31);
      *(a1 + 16) = *(a2 + 16);
      v51 = *(a2 + 34);
      v52 = *(a2 + 35);
      *(a1 + 34) = v51;
      *(a1 + 35) = v52;
      v267 = type metadata accessor for ToolbarStorage.Item(0);
      v270 = a1;
      v53 = v267[17];
      v272 = &a1[v53];
      v266 = a2;
      v54 = &a2[v53];
      v55 = type metadata accessor for PlatformItemList.Item(0);
      v56 = *(v55 - 8);
      v57 = *(v56 + 48);

      v58 = v51;
      v59 = v52;
      if (v57(v54, 1, v55))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v272, v54, *(*(v60 - 8) + 64));
        a3 = v274;
LABEL_86:
        a2 = v266;
        swift_weakCopyInit();
        a1[v267[19]] = v266[v267[19]];
        a1[v267[20]] = v266[v267[20]];
        a1[v267[21]] = v266[v267[21]];
        swift_storeEnumTagMultiPayload();
        goto LABEL_144;
      }

      v262 = v56;
      v264 = v55;
      v61 = *v54;
      v62 = *(v54 + 1);
      v63 = v272;
      *v272 = *v54;
      *(v272 + 1) = v62;
      v64 = *(v54 + 3);
      *(v272 + 2) = *(v54 + 2);
      *(v272 + 3) = v64;
      v272[32] = v54[32];
      v65 = *(v54 + 6);
      *(v272 + 5) = *(v54 + 5);
      *(v272 + 6) = v65;
      v272[56] = v54[56];
      v66 = *(v54 + 24);
      v67 = v61;
      v68 = v62;

      if (v66 >> 1 == 4294967294)
      {
        v69 = *(v54 + 13);
        *(v272 + 12) = *(v54 + 12);
        *(v272 + 13) = v69;
        *(v272 + 14) = *(v54 + 14);
        *(v272 + 235) = *(v54 + 235);
        v70 = *(v54 + 9);
        *(v272 + 8) = *(v54 + 8);
        *(v272 + 9) = v70;
        v71 = *(v54 + 11);
        *(v272 + 10) = *(v54 + 10);
        *(v272 + 11) = v71;
        v72 = *(v54 + 5);
        *(v272 + 4) = *(v54 + 4);
        *(v272 + 5) = v72;
        v73 = *(v54 + 7);
        *(v272 + 6) = *(v54 + 6);
        *(v272 + 7) = v73;
        v74 = *(v54 + 33);
        if (v74)
        {
LABEL_30:
          *(v272 + 32) = *(v54 + 32);
          *(v272 + 33) = v74;
          v75 = *(v54 + 34);

          if (v75 >= 2)
          {
            v76 = v75;
          }

          *(v272 + 34) = v75;
          *(v272 + 70) = *(v54 + 70);
          v272[284] = v54[284];
          *(v272 + 285) = *(v54 + 285);
          v77 = *(v54 + 37);
          *(v272 + 36) = *(v54 + 36);
          *(v272 + 37) = v77;

LABEL_44:
          v96 = *(v54 + 42);
          if (v96 >> 2 == 0xFFFFFFFF)
          {
            v97 = *(v54 + 24);
            *(v272 + 23) = *(v54 + 23);
            *(v272 + 24) = v97;
            *(v272 + 50) = *(v54 + 50);
            v98 = *(v54 + 20);
            *(v272 + 19) = *(v54 + 19);
            *(v272 + 20) = v98;
            v99 = *(v54 + 22);
            *(v272 + 21) = *(v54 + 21);
            *(v272 + 22) = v99;
          }

          else
          {
            v100 = *(v54 + 38);
            v101 = *(v54 + 39);
            v103 = *(v54 + 40);
            v102 = *(v54 + 41);
            v105 = *(v54 + 43);
            v104 = *(v54 + 44);
            v107 = *(v54 + 45);
            v106 = *(v54 + 46);
            v245 = *(v54 + 47);
            v248 = *(v54 + 48);
            v253 = *(v54 + 49);
            __dstb = *(v54 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v100, v101, v103, v102, v96, v105, v104, v107, v106, v245, v248, v253, __dstb);
            *(v272 + 38) = v100;
            *(v272 + 39) = v101;
            *(v272 + 40) = v103;
            *(v272 + 41) = v102;
            v63 = v272;
            *(v272 + 42) = v96;
            *(v272 + 43) = v105;
            *(v272 + 44) = v104;
            *(v272 + 45) = v107;
            *(v272 + 46) = v106;
            *(v272 + 47) = v245;
            *(v272 + 48) = v248;
            *(v272 + 49) = v253;
            *(v272 + 50) = __dstb;
          }

          v108 = *(v54 + 52);
          if (v108 == 1)
          {
            v109 = *(v54 + 456);
            *(v63 + 440) = *(v54 + 440);
            *(v63 + 456) = v109;
            v63[472] = v54[472];
            v110 = *(v54 + 424);
            *(v63 + 408) = *(v54 + 408);
            *(v63 + 424) = v110;
            goto LABEL_57;
          }

          *(v63 + 102) = *(v54 + 102);
          v63[412] = v54[412];
          if (v108)
          {
            v111 = *(v54 + 53);
            *(v63 + 52) = v108;
            *(v63 + 53) = v111;

            v112 = *(v54 + 54);
            if (v112)
            {
              goto LABEL_51;
            }
          }

          else
          {
            *(v63 + 26) = *(v54 + 26);
            v112 = *(v54 + 54);
            if (v112)
            {
LABEL_51:
              v113 = *(v54 + 55);
              *(v63 + 54) = v112;
              *(v63 + 55) = v113;

              v114 = *(v54 + 56);
              if (v114)
              {
LABEL_52:
                v115 = *(v54 + 57);
                *(v63 + 56) = v114;
                *(v63 + 57) = v115;

LABEL_56:
                *(v63 + 58) = *(v54 + 58);
                v63[472] = v54[472];
LABEL_57:
                v116 = *(v54 + 61);
                *(v63 + 60) = *(v54 + 60);
                *(v63 + 61) = v116;
                *(v63 + 62) = *(v54 + 62);
                v63[504] = v54[504];
                v117 = *(v54 + 64);

                if (v117)
                {
                  v118 = *(v54 + 65);
                  *(v63 + 64) = v117;
                  *(v63 + 65) = v118;
                }

                else
                {
                  *(v63 + 32) = *(v54 + 32);
                }

                v63[528] = v54[528];
                if (!*(v54 + 102))
                {
                  memcpy(v63 + 536, v54 + 536, 0x130uLL);
                  goto LABEL_72;
                }

                *(v63 + 67) = *(v54 + 67);
                *(v63 + 68) = *(v54 + 68);
                v63[552] = v54[552];
                *(v63 + 70) = *(v54 + 70);
                v63[568] = v54[568];
                *(v63 + 36) = *(v54 + 36);
                v63[592] = v54[592];
                v119 = v63 + 600;
                v120 = v54 + 600;
                v121 = *(v54 + 78);

                if (v121)
                {
                  if (v121 == 1)
                  {
                    v122 = *(v54 + 616);
                    *v119 = *v120;
                    *(v63 + 616) = v122;
                    *(v63 + 632) = *(v54 + 632);
LABEL_68:
                    *(v63 + 81) = *(v54 + 81);
                    v63[656] = v54[656];
                    v124 = v63 + 664;
                    v125 = v54 + 664;
                    v126 = *(v54 + 97);
                    if (v126 == 1)
                    {
                      v127 = *(v54 + 776);
                      *(v63 + 760) = *(v54 + 760);
                      *(v63 + 776) = v127;
                      *(v63 + 792) = *(v54 + 792);
                      v63[808] = v54[808];
                      v128 = *(v54 + 712);
                      *(v63 + 696) = *(v54 + 696);
                      *(v63 + 712) = v128;
                      v129 = *(v54 + 744);
                      *(v63 + 728) = *(v54 + 728);
                      *(v63 + 744) = v129;
                      v130 = *(v54 + 680);
                      *v124 = *v125;
                      *(v63 + 680) = v130;
                    }

                    else
                    {
                      *v124 = *v125;
                      v63[672] = v54[672];
                      *(v63 + 85) = *(v54 + 85);
                      v63[688] = v54[688];
                      *(v63 + 689) = *(v54 + 689);
                      v63[691] = v54[691];
                      v63[692] = v54[692];
                      *(v63 + 87) = *(v54 + 87);
                      v131 = *(v54 + 45);
                      *(v63 + 44) = *(v54 + 44);
                      *(v63 + 45) = v131;
                      *(v63 + 92) = *(v54 + 92);
                      *(v63 + 372) = *(v54 + 372);
                      *(v63 + 47) = *(v54 + 47);
                      v63[768] = v54[768];
                      *(v63 + 97) = v126;
                      *(v63 + 49) = *(v54 + 49);
                      *(v63 + 100) = *(v54 + 100);
                      v63[808] = v54[808];
                    }

                    *(v63 + 102) = *(v54 + 102);
                    *(v63 + 103) = *(v54 + 103);
                    *(v63 + 104) = *(v54 + 104);

LABEL_72:
                    v132 = v63 + 840;
                    v133 = v54 + 840;
                    v134 = *(v54 + 108);
                    if (v134)
                    {
                      if (v134 == 1)
                      {
                        v135 = *(v54 + 856);
                        *v132 = *v133;
                        *(v63 + 856) = v135;
                        *(v63 + 872) = *(v54 + 872);
                        *(v63 + 111) = *(v54 + 111);
LABEL_79:
                        v139 = *(v54 + 112);
                        *(v63 + 112) = v139;
                        *(v63 + 113) = *(v54 + 113);
                        *(v63 + 114) = *(v54 + 114);
                        *(v63 + 115) = *(v54 + 115);
                        *(v63 + 116) = *(v54 + 116);
                        *(v63 + 117) = *(v54 + 117);
                        *(v63 + 118) = *(v54 + 118);
                        *(v63 + 476) = *(v54 + 476);
                        v63[954] = v54[954];
                        v140 = v264[28];
                        __dst = &v63[v140];
                        v141 = &v54[v140];
                        v142 = type metadata accessor for CommandOperation(0);
                        v143 = *(v142 - 8);
                        v254 = *(v143 + 48);
                        v144 = v139;

                        if (v254(v141, 1, v142))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          memcpy(__dst, v141, *(*(v145 - 8) + 64));
                          a1 = v270;
                          a3 = v274;
                          v147 = v262;
                          v146 = v264;
                          v148 = v272;
                        }

                        else
                        {
                          v249 = v143;
                          v255 = v142;
                          *__dst = *v141;
                          v149 = *(v142 + 20);
                          v150 = &__dst[v149];
                          v151 = &v141[v149];
                          v152 = *&v141[v149];
                          v153 = *&v141[v149 + 8];
                          v154 = v141[v149 + 16];
                          outlined copy of Text.Storage(v152, v153, v154);
                          *v150 = v152;
                          *(v150 + 1) = v153;
                          v150[16] = v154;
                          *(v150 + 3) = *(v151 + 3);
                          v155 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v156 = type metadata accessor for UUID();
                          v157 = *(*(v156 - 8) + 16);

                          v157(&v150[v155], &v151[v155], v156);
                          v158 = *(v255 + 24);
                          v159 = &__dst[v158];
                          v160 = &v141[v158];
                          if (*v160)
                          {
                            v161 = *(v160 + 1);
                            *v159 = *v160;
                            *(v159 + 1) = v161;
                          }

                          else
                          {
                            *v159 = *v160;
                          }

                          a1 = v270;
                          a3 = v274;
                          v147 = v262;
                          v146 = v264;
                          v148 = v272;
                          (*(v249 + 56))(__dst, 0, 1, v255);
                        }

                        v148[v146[29]] = v54[v146[29]];
                        v148[v146[30]] = v54[v146[30]];
                        v148[v146[31]] = v54[v146[31]];
                        v148[v146[32]] = v54[v146[32]];
                        v148[v146[33]] = v54[v146[33]];
                        *&v148[v146[34]] = *&v54[v146[34]];
                        v162 = *(v147 + 56);

                        v162(v148, 0, 1, v146);
                        goto LABEL_86;
                      }

                      *(v63 + 108) = v134;
                      *(v63 + 109) = *(v54 + 109);
                      (**(v134 - 8))(v132, v133);
                      v137 = *(v54 + 110);
                      if (!v137)
                      {
LABEL_78:
                        *(v63 + 55) = *(v54 + 55);
                        goto LABEL_79;
                      }
                    }

                    else
                    {
                      v136 = *(v54 + 856);
                      *v132 = *v133;
                      *(v63 + 856) = v136;
                      *(v63 + 109) = *(v54 + 109);
                      v137 = *(v54 + 110);
                      if (!v137)
                      {
                        goto LABEL_78;
                      }
                    }

                    v138 = *(v54 + 111);
                    *(v63 + 110) = v137;
                    *(v63 + 111) = v138;

                    goto LABEL_79;
                  }

                  *(v63 + 78) = v121;
                  *(v63 + 79) = *(v54 + 79);
                  (**(v121 - 8))((v63 + 600), (v54 + 600), v121);
                }

                else
                {
                  v123 = *(v54 + 616);
                  *v119 = *v120;
                  *(v63 + 616) = v123;
                  *(v63 + 79) = *(v54 + 79);
                }

                *(v63 + 80) = *(v54 + 80);

                goto LABEL_68;
              }

LABEL_55:
              *(v63 + 28) = *(v54 + 28);
              goto LABEL_56;
            }
          }

          *(v63 + 27) = *(v54 + 27);
          v114 = *(v54 + 56);
          if (v114)
          {
            goto LABEL_52;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v84 = v54[72];
        if (v84 == 255)
        {
          *(v272 + 8) = *(v54 + 8);
          v272[72] = v54[72];
        }

        else
        {
          v85 = *(v54 + 8);
          outlined copy of GraphicsImage.Contents(v85, v54[72]);
          *(v272 + 8) = v85;
          v272[72] = v84;
          v66 = *(v54 + 24);
        }

        *(v272 + 10) = *(v54 + 10);
        *(v272 + 88) = *(v54 + 88);
        v272[104] = v54[104];
        *(v272 + 108) = *(v54 + 108);
        *(v272 + 121) = *(v54 + 121);
        *(v272 + 136) = *(v54 + 136);
        *(v272 + 152) = *(v54 + 152);
        *(v272 + 84) = *(v54 + 84);
        v272[170] = v54[170];
        v272[171] = v54[171];
        if (v66 >> 1 == 0xFFFFFFFF)
        {
          v88 = *(v54 + 12);
          *(v272 + 11) = *(v54 + 11);
          *(v272 + 12) = v88;
        }

        else
        {
          v89 = *(v54 + 22);
          v90 = *(v54 + 23);
          v91 = *(v54 + 25);
          outlined copy of AccessibilityImageLabel(v89, v90, v66, v91);
          *(v272 + 22) = v89;
          *(v272 + 23) = v90;
          *(v272 + 24) = v66;
          *(v272 + 25) = v91;
        }

        v92 = *(v54 + 27);
        *(v272 + 26) = *(v54 + 26);
        *(v272 + 27) = v92;
        *(v272 + 112) = *(v54 + 112);
        *(v272 + 57) = *(v54 + 57);
        v272[232] = v54[232];
        v93 = *(v54 + 30);
        *(v272 + 30) = v93;
        *(v272 + 124) = *(v54 + 124);
        v272[250] = v54[250];
        swift_unknownObjectRetain();

        v94 = v93;
        v74 = *(v54 + 33);
        if (v74)
        {
          goto LABEL_30;
        }
      }

      v95 = *(v54 + 17);
      *(v272 + 16) = *(v54 + 16);
      *(v272 + 17) = v95;
      *(v272 + 18) = *(v54 + 18);
      goto LABEL_44;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_144:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t destroy for ToolbarViewListVisitor(uint64_t a1, int *a2)
{
  if (*(a1 + 48) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }

  swift_weakDestroy();

  v4 = a1 + a2[18];
  v5 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v4);

LABEL_44:
      goto LABEL_45;
    }

    v6 = *(v4 + 192);
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v8 = *(v4 + 72);
      if (v8 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v4 + 64), v8);
        v6 = *(v4 + 192);
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v7 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v4 + 176), *(v4 + 184), v6, *(v4 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(v4 + 264))
    {

      v9 = *(v4 + 272);
      if (v9 >= 2)
      {
      }
    }

    v10 = *(v4 + 336);
    if (v10 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v4 + 304), *(v4 + 312), *(v4 + 320), *(v4 + 328), v10, *(v4 + 344), *(v4 + 352), *(v4 + 360), *(v4 + 368), *(v4 + 376), *(v4 + 384), *(v4 + 392), *(v4 + 400));
    }

    v11 = *(v4 + 416);
    if (v11)
    {
      if (v11 == 1)
      {
        goto LABEL_24;
      }
    }

    if (*(v4 + 432))
    {
    }

    if (*(v4 + 448))
    {
    }

LABEL_24:

    if (*(v4 + 512))
    {
    }

    if (!*(v4 + 816))
    {
LABEL_34:
      v13 = *(v4 + 864);
      if (v13)
      {
        if (v13 == 1)
        {
LABEL_39:

          v14 = v4 + *(type metadata accessor for PlatformItemList.Item(0) + 112);
          v15 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            v16 = v14 + *(v15 + 20);
            outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

            v17 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v18 = type metadata accessor for UUID();
            (*(*(v18 - 8) + 8))(v16 + v17, v18);
            if (*(v14 + *(v15 + 24)))
            {
            }
          }

          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_1((v4 + 840));
      }

      if (*(v4 + 880))
      {
      }

      goto LABEL_39;
    }

    v12 = *(v4 + 624);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_31:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_34;
      }

      __swift_destroy_boxed_opaque_existential_1((v4 + 600));
    }

    goto LABEL_31;
  }

LABEL_45:

  v19 = (a1 + a2[21]);
  if (v19[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
  }
}

void specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F00027A8, &unk_1F00027F8, partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:), qword_1F00027D0, partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

{
  specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F00029D8, &unk_1F0002A28, partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:), qword_1F0002A00, partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

uint64_t specialized $defer #2 <A>() in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, void *a2)
{
  outlined init with copy of NavigationState.StackContent?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] == 255)
  {
    return outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(v5, __src, 0x1C1uLL);
  v3 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xB0);
  swift_beginAccess();
  outlined assign with take of NavigationState.StackContent?(v5, a2 + v3, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  return swift_endAccess();
}

void type metadata accessor for _EnvironmentKeyTransformModifier<NavigationEventHandlers>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double destroy for PositionedNavigationDestination.Storage.SeededRequest(void *a1)
{
  switch(*(a1 + 96))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1(a1 + 2);
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1(a1);
      break;
    case 0xC:
    case 0xD:

      if (a1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 1);
      }

      if (a1[7] != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (a1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 1);
      }

      v2 = a1[7];
      goto LABEL_24;
    case 0x12:

      if (a1[5])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 2);
      }

      if (a1[8] != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (a1[3])
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v2 = a1[6];
LABEL_24:
      if (v2 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*a1)
      {
      }

      if (a1[2])
      {
LABEL_29:
      }

      break;
    default:
      break;
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 176 * v9;

    return outlined assign with take of PositionedNavigationDestination.Storage.SeededRequest(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t $defer #1 <A>() in PositionedNavigationDestinationProcessor.PollingRule.updateValue()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 64) = v8;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  *(a4[7] + 4 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t *))
{
  v37 = a3;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v40 = a5;
    v39 = a11;
    v38 = a9;
    static Log.navigation.getter();
    v22 = type metadata accessor for Logger();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v19, 1, v22) == 1)
    {
      outlined destroy of UINavigationPresentationAdaptor?(v19, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v35 = a4;
      v36 = a7;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v34 = a8;
        v27 = v26;
        *v26 = 0;
        _os_log_impl(&dword_18BD4A000, v24, v25, "Updating stack views in place", v26, 2u);
        v28 = v27;
        a8 = v34;
        MEMORY[0x18D0110E0](v28, -1, -1);
      }

      (*(v23 + 8))(v19, v22);
      a4 = v35;
      a7 = v36;
    }

    outlined init with copy of NavigationState.StackContent?(a2, v43, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    v29 = v40;
    if (v43[448] == 255)
    {
      outlined init with copy of NavigationState.StackContent(v37, v44);
      if (v43[448] != 255)
      {
        outlined destroy of PPTTestCase?(v43, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      }
    }

    else
    {
      memcpy(v44, v43, 0x1C1uLL);
    }

    outlined init with copy of NavigationState.Base(v44, v42);
    outlined init with copy of NavigationState.Base(v42, v41);
    v30 = swift_allocObject();
    v30[2] = a4;
    v30[3] = v29;
    v30[4] = a6;
    v41[57] = a10;
    v41[58] = v30;
    v41[59] = a6;
    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v41, v43, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

    swift_bridgeObjectRetain_n();

    specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
    v32 = v31;
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v41, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    outlined destroy of NavigationState.StackContent.Views(v42);
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(a7, v43, a8, v39);
    if (v32)
    {
      outlined init with copy of NavigationAuthority(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x68), v41);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v41);
      specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(v32);
    }

    else
    {
    }

    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v43, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    return outlined destroy of NavigationState.StackContent(v44);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 456);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BF59BF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier(255, *a1, v4, a4);
  swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.EffectApplicationModifier, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  v8 = type metadata accessor for PlaceholderContentView();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FEC8], v8);
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v7, v8, v5, WitnessTable, v4);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for _SetStorage<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform()
{
  result = lazy protocol witness table cache variable for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform;
  if (!lazy protocol witness table cache variable for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusableFillerBoundsTransform, &unk_1F0019608, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationDestinationScopeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

uint64_t View.accessibilityRespondsToUserInteraction(_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 21;
    return View.accessibilityAddTraits(_:)(&v4, a2, a3);
  }

  else
  {
    v5 = 21;
    return View.accessibilityRemoveTraits(_:)(&v5, a2, a3);
  }
}

uint64_t ScrollViewChildSafeAreaInsets.value.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  EdgeInsets.xFlipIfRightToLeft(layoutDirection:)();
  type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, MEMORY[0x1E697E490], MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_18CD63400;
    *(result + 32) = 1;
    *(result + 56) = v7;
    *(result + 40) = v6;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 1;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  a1[1] = result;
  a1[2] = 0;
  *a1 = v3;
  return result;
}

void ScrollTransitionModifier.StageProgress.updateValue()(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  ++*(v1 + 7);
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  LOBYTE(v40) = *MEMORY[0x1E698D3F8] == *(v1 + 6);
  GeometryProxy.init(owner:size:environment:transform:position:safeAreaInsets:seed:)();
  v28 = v4;
  ScrollTransitionModifier.StageProgress.container.getter(*(v1 + 3), v4, v5, &v31);
  if (v3)
  {
    v7 = *(&v36 + 1);
    v6 = v36;
    v9 = *(&v37 + 1);
    v8 = v37;
    v11 = *(&v38 + 1);
    v10 = v38;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    *&v27 = *(&v35 + 1);
  }

  else
  {
    v6 = *(&v32 + 1);
    v8 = *(&v33 + 1);
    v7 = v33;
    v10 = *(&v34 + 1);
    v9 = v34;
    v11 = v35;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    *&v27 = v32;
  }

  v40 = v31;
  v41 = v32;

  *(&v27 + 1) = v6;
  v12 = v7;
  v13 = v7;
  v29 = v10;
  v14 = v11;
  outlined copy of ScrollTransitionConfiguration.Mode(v6, v13, v8, v9, v10, v11);
  v16 = type metadata accessor for ScrollTransitionModifier(0, v4, v5, v15);
  (*(*(v16 - 8) + 8))(&v40, v16);
  v17 = *v1;
  v18 = *(v1 + 2);
  v26 = *(v1 + 1);
  v19 = *(v1 + 3);
  v20 = *(v1 + 1);
  v40 = v27;
  *&v41 = v12;
  *(&v41 + 1) = v8;
  *&v42 = v9;
  *(&v42 + 1) = v10;
  *&v43 = v14;

  outlined copy of ScrollTransitionConfiguration.Mode(*(&v27 + 1), v12, v8, v9, v10, v14);
  v21 = ScrollTransitionModifier.StageProgress.progress(for:geometryProxy:)(&v40, v30, v17 & 1 | (v20 << 32), v26, v18, v19, v28, v5);
  v22 = *(&v40 + 1);
  v23 = v41;
  v24 = v42;
  v25 = v43;

  outlined consume of ScrollTransitionConfiguration.Mode(v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
  *&v40 = v21;
  AGGraphSetOutputValue();

  outlined consume of ScrollTransitionConfiguration.Mode(*(&v27 + 1), v12, v8, v9, v29, v14);
}

uint64_t ScrollTransitionModifier.StageProgress.container.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for ScrollTransitionModifier(0, a3, a4, a2);
  Value = AGGraphGetValue();
  v20[0] = *Value;
  v8 = *(Value + 64);
  v10 = *(Value + 16);
  v9 = *(Value + 32);
  v20[3] = *(Value + 48);
  v20[4] = v8;
  v20[1] = v10;
  v20[2] = v9;
  v12 = *(Value + 96);
  v11 = *(Value + 112);
  v13 = *(Value + 80);
  v21 = *(Value + 128);
  v20[6] = v12;
  v20[7] = v11;
  v20[5] = v13;
  v14 = *(Value + 112);
  *(a5 + 96) = *(Value + 96);
  *(a5 + 112) = v14;
  *(a5 + 128) = *(Value + 128);
  v15 = *(Value + 48);
  *(a5 + 32) = *(Value + 32);
  *(a5 + 48) = v15;
  v16 = *(Value + 80);
  *(a5 + 64) = *(Value + 64);
  *(a5 + 80) = v16;
  v17 = *(Value + 16);
  *a5 = *Value;
  *(a5 + 16) = v17;
  return (*(*(v6 - 8) + 16))(v19, v20, v6);
}

uint64_t ScrollTransitionModifier.EffectApplicationModifier.effect(for:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v54 = a4;
  v10 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v40 - v12;
  v47 = *(a2 - 8);
  v14 = v47;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v48 = &v40 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v53 = &v40 - v22;
  v23 = (a1)(v21);
  v24 = a1(v23, 1);
  a1(v24, 2);
  (*(v14 + 16))(v54, v19, a2);
  v55 = *(v10 + 24);
  v51 = v10 + 24;
  v55(a2, v10);
  v25 = *(v10 + 40);
  v26 = v25(v57, a2, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v28 = *(v56 + 8);
  v56 += 8;
  v49 = v28;
  v28(v13, AssociatedTypeWitness);
  v26(v57, 0);
  v29 = v25(v57, a2, v10);
  v30 = *(AssociatedConformanceWitness + 16);
  v43 = v25;
  v44 = v30;
  v45 = AssociatedConformanceWitness;
  v46 = AssociatedConformanceWitness + 16;
  v30(AssociatedTypeWitness, AssociatedConformanceWitness, a5);
  v29(v57, 0);
  v55(a2, v10);
  v41 = v25(v57, a2, v10);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v31 = v49;
  v49(v13, AssociatedTypeWitness);
  v41(v57, 0);
  v42 = v10;
  v55(a2, v10);
  v32 = v10;
  v33 = v43;
  v41 = v43(v57, a2, v32);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v31(v13, AssociatedTypeWitness);
  v41(v57, 0);
  v34 = v42;
  v35 = v33(v57, a2, v42);
  v44(AssociatedTypeWitness, v45, a6);
  v35(v57, 0);
  v36 = v52;
  v55(a2, v34);
  v37 = v33(v57, a2, v34);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v49(v13, AssociatedTypeWitness);
  v37(v57, 0);
  v38 = *(v47 + 8);
  v38(v36, a2);
  v38(v48, a2);
  return (v38)(v53, a2);
}

uint64_t ScrollableProvider.value.getter@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v6 = HIDWORD(a2);
  v7 = AGCreateWeakAttribute();
  v8 = AGCreateWeakAttribute();
  v9 = AGCreateWeakAttribute();
  v10 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] != v6)
  {
    v14 = AGCreateWeakAttribute();
    v11 = v14;
    v18 = HIDWORD(v14);
    if (v10 != v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    LODWORD(v17) = 0;
    goto LABEL_6;
  }

  v11 = 0;
  LODWORD(v18) = 0;
  if (v10 == v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v17 = HIDWORD(v12);
LABEL_6:
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  a4[3] = &unk_1F0019578;
  a4[4] = lazy protocol witness table accessor for type ScrollViewScrollable and conformance ScrollViewScrollable();
  result = swift_allocObject();
  *a4 = result;
  *(result + 16) = v7;
  *(result + 24) = v8;
  *(result + 32) = v9;
  *(result + 40) = v11;
  *(result + 44) = v18;
  *(result + 48) = v13;
  *(result + 52) = v17;
  *(result + 56) = v15;
  return result;
}

uint64_t sub_18BF5ABB8()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ScrollViewScrollable and conformance ScrollViewScrollable()
{
  result = lazy protocol witness table cache variable for type ScrollViewScrollable and conformance ScrollViewScrollable;
  if (!lazy protocol witness table cache variable for type ScrollViewScrollable and conformance ScrollViewScrollable)
  {
    result = swift_getWitnessTable("U7\ab\bl\a", &unk_1F0019578, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewScrollable and conformance ScrollViewScrollable);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)(v16);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of ToolbarItemPlacement.Role(*(v6 + 48) + 48 * v9, v16);
      v11 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v16, a2);
      outlined destroy of ToolbarItemPlacement.Role(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of ToolbarItemPlacement.Role(a2);
    outlined init with copy of ToolbarItemPlacement.Role(*(v6 + 48) + 48 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of ToolbarItemPlacement.Role(a2, v16);
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = a2[1];
    *a1 = *a2;
    a1[1] = v13;
    *(a1 + 25) = *(a2 + 25);
    return 1;
  }
}

uint64_t ToolbarItemPlacement.Role.hash(into:)(uint64_t a1)
{
  outlined init with copy of ToolbarItemPlacement.Role(v1, &v8);
  v2 = v8;
  if (v11)
  {
    if (v11 == 1)
    {
      v6[0] = v8;
      v6[1] = v9;
      v7 = v10;
      MEMORY[0x18D00F6F0](18);
      AnyHashable.hash(into:)();
      return outlined destroy of AnyHashable(v6);
    }

    if (*(&v9 + 1) | v10 | v8 | v9 | *(&v8 + 1))
    {
      v5 = *(&v9 + 1) | v10 | v9 | *(&v8 + 1);
      if (v8 != 1 || v5)
      {
        if (v8 != 2 || v5)
        {
          if (v8 != 3 || v5)
          {
            if (v8 != 4 || v5)
            {
              if (v8 != 5 || v5)
              {
                if (v8 != 6 || v5)
                {
                  if (v8 != 7 || v5)
                  {
                    if (v8 != 8 || v5)
                    {
                      if (v8 != 9 || v5)
                      {
                        if (v8 != 10 || v5)
                        {
                          if (v8 != 11 || v5)
                          {
                            if (v8 != 12 || v5)
                            {
                              if (v8 != 13 || v5)
                              {
                                if (v8 != 14 || v5)
                                {
                                  if (v8 != 15 || v5)
                                  {
                                    if (v8 != 16 || v5)
                                    {
                                      if (v8 != 17 || v5)
                                      {
                                        if (v8 != 18 || v5)
                                        {
                                          if (v8 != 19 || v5)
                                          {
                                            if (v8 != 20 || v5)
                                            {
                                              if (v8 != 21 || v5)
                                              {
                                                if (v8 != 22 || v5)
                                                {
                                                  if (v8 != 23 || v5)
                                                  {
                                                    if (v8 != 24 || v5)
                                                    {
                                                      if (v8 != 25 || v5)
                                                      {
                                                        if (v8 != 26 || v5)
                                                        {
                                                          if (v8 != 27 || v5)
                                                          {
                                                            if (v8 != 28 || v5)
                                                            {
                                                              if (v8 != 29 || v5)
                                                              {
                                                                if (v8 != 30 || v5)
                                                                {
                                                                  if (v8 != 31 || v5)
                                                                  {
                                                                    v4 = 34;
                                                                  }

                                                                  else
                                                                  {
                                                                    v4 = 33;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v4 = 32;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v4 = 31;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v4 = 30;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v4 = 29;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v4 = 28;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v4 = 27;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v4 = 26;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v4 = 25;
                                                  }
                                                }

                                                else
                                                {
                                                  v4 = 24;
                                                }
                                              }

                                              else
                                              {
                                                v4 = 23;
                                              }
                                            }

                                            else
                                            {
                                              v4 = 22;
                                            }
                                          }

                                          else
                                          {
                                            v4 = 21;
                                          }
                                        }

                                        else
                                        {
                                          v4 = 20;
                                        }
                                      }

                                      else
                                      {
                                        v4 = 19;
                                      }
                                    }

                                    else
                                    {
                                      v4 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v4 = 16;
                                  }
                                }

                                else
                                {
                                  v4 = 15;
                                }
                              }

                              else
                              {
                                v4 = 14;
                              }
                            }

                            else
                            {
                              v4 = 13;
                            }
                          }

                          else
                          {
                            v4 = 12;
                          }
                        }

                        else
                        {
                          v4 = 11;
                        }
                      }

                      else
                      {
                        v4 = 10;
                      }
                    }

                    else
                    {
                      v4 = 9;
                    }
                  }

                  else
                  {
                    v4 = 8;
                  }
                }

                else
                {
                  v4 = 7;
                }
              }

              else
              {
                v4 = 6;
              }
            }

            else
            {
              v4 = 5;
            }
          }

          else
          {
            v4 = 4;
          }
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    MEMORY[0x18D00F6F0](3);
    v4 = v2;
  }

  return MEMORY[0x18D00F6F0](v4);
}

uint64_t outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Toolbar.BarLocation.priority(for:context:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  outlined init with copy of Toolbar.BarLocation(v2, &v49);
  result = 0;
  switch(*(&v50 + 1))
  {
    case 0:
      *v39 = 1;
      memset(&v39[8], 0, 32);
      LOBYTE(v40) = 2;
      v9 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(a1, v39);
      outlined destroy of ToolbarItemPlacement.Role(v39);
      if (v9)
      {
        return 1;
      }

      *v39 = 20;
      memset(&v39[8], 0, 32);
      LOBYTE(v40) = 2;
      v10 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(a1, v39);
      outlined destroy of ToolbarItemPlacement.Role(v39);
      if (v10)
      {
        return 1;
      }

      v11 = 11;
      goto LABEL_40;
    case 1:
      v11 = 12;
      goto LABEL_40;
    case 2:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      if (!(*&v39[24] | *&v39[32] | *v39 | *&v39[16] | *&v39[8]))
      {
        if (v4)
        {
          return 10;
        }

        else
        {
          return 0;
        }
      }

      if (*v39 == 3 && !(*&v39[24] | *&v39[32] | *&v39[16] | *&v39[8]))
      {
        return 20;
      }

      goto LABEL_58;
    case 3:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (!v40)
      {
        return 30;
      }

      if (v40 != 2)
      {
        goto LABEL_58;
      }

      if (!(*&v39[24] | *&v39[32] | *v39 | *&v39[16] | *&v39[8]))
      {
        return 0;
      }

      v18 = *&v39[24] | *&v39[32] | *&v39[16] | *&v39[8];
      if (*v39 == 2 && !v18)
      {
        if ((v6 ^ 1 | v5))
        {
          return 0;
        }

        else
        {
          return 20;
        }
      }

      if ((*v39 & 0xFFFFFFFFFFFFFFFDLL) == 5 && !v18)
      {
        return 40;
      }

      v35 = *v39 == 25 || *v39 == 10;
      if (v35 && !v18)
      {
        return 10;
      }

      if (*v39 == 29 && !v18)
      {
        return 35;
      }

      goto LABEL_58;
    case 4:
      v11 = 15;
      goto LABEL_40;
    case 5:
      v11 = 16;
      goto LABEL_40;
    case 6:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v15 = vorrq_s8(*&v39[8], *&v39[24]);
      v16 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
      if (*v39 == 2 && *&v16 == 0)
      {
        if (v5 & 1 | ((v6 & 1) == 0))
        {
          return 30;
        }

        return 0;
      }

      if (*v39 == 6 && !*&v16)
      {
        return 20;
      }

      if (*v39 != 9 || *&v16)
      {
        if (*v39 == 21 && !*&v16)
        {
          return (v7 & 1) == 0;
        }

        if (*v39 != 26 || *&v16)
        {
LABEL_58:
          outlined destroy of ToolbarItemPlacement.Role(v39);
          return 0;
        }
      }

      return 10;
    case 7:
    case 0xBLL:
    case 0xCLL:
    case 0xFLL:
    case 0x12:
    case 0x13:
    case 0x14:
      return result;
    case 8:
      v11 = 14;
LABEL_40:
      *v39 = v11;
      memset(&v39[8], 0, 32);
      LOBYTE(v40) = 2;
      v22 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(a1, v39);
      outlined destroy of ToolbarItemPlacement.Role(v39);
      return v22 & 1;
    case 9:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v12 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
      v14 = *v39 == 27;
      goto LABEL_54;
    case 0xALL:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v27 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      v14 = *v39 == 28;
      goto LABEL_54;
    case 0xDLL:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v19 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
      v14 = *v39 == 30;
      goto LABEL_54;
    case 0xELL:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v21 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
      v14 = *v39 == 31;
      goto LABEL_54;
    case 0x10:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v23 = *v39 == 13 || *v39 == 4;
      v24 = vorrq_s8(*&v39[8], *&v39[24]);
      v25 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
      if (!v23 || *&v25 != 0)
      {
        goto LABEL_58;
      }

      return 1;
    case 0x11:
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v20 = vorrq_s8(*&v39[8], *&v39[24]);
      v13 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v14 = *v39 == 8;
LABEL_54:
      if (!v14 || *&v13 != 0)
      {
        goto LABEL_58;
      }

      return 1;
    default:
      v47[0] = v49;
      v47[1] = v50;
      v48 = v51;
      outlined init with copy of ToolbarItemPlacement.Role(a1, v39);
      if (v40 == 1)
      {
        v44 = *v39;
        v45 = *&v39[16];
        v46 = *&v39[32];
      }

      else
      {
        outlined destroy of ToolbarItemPlacement.Role(v39);
        v44 = 0u;
        v45 = 0u;
        v46 = 0;
      }

      outlined init with copy of AnyHashable(v47, v43);
      v29 = MEMORY[0x1E69E69B8];
      v30 = MEMORY[0x1E69E6720];
      _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(&v44, v39, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
      _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v43, &v40, &lazy cache variable for type metadata for AnyHashable?, v29, v30, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
      if (*&v39[24])
      {
        _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v39, v38, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        if (*(&v41 + 1))
        {
          v36[0] = v40;
          v36[1] = v41;
          v37 = v42;
          v22 = MEMORY[0x18D00E7E0](v38, v36);
          outlined destroy of AnyHashable(v36);
          v31 = MEMORY[0x1E69E69B8];
          v32 = MEMORY[0x1E69E6720];
          outlined destroy of _ViewList_View?(v43, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          outlined destroy of _ViewList_View?(&v44, &lazy cache variable for type metadata for AnyHashable?, v31, v32, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          outlined destroy of AnyHashable(v47);
          outlined destroy of AnyHashable(v38);
          outlined destroy of _ViewList_View?(v39, &lazy cache variable for type metadata for AnyHashable?, v31, v32, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          return v22 & 1;
        }

        v34 = MEMORY[0x1E69E6720];
        outlined destroy of _ViewList_View?(v43, &lazy cache variable for type metadata for AnyHashable?, v29, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of _ViewList_View?(&v44, &lazy cache variable for type metadata for AnyHashable?, v29, v34, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of AnyHashable(v47);
        outlined destroy of AnyHashable(v38);
      }

      else
      {
        v33 = MEMORY[0x1E69E6720];
        outlined destroy of _ViewList_View?(v43, &lazy cache variable for type metadata for AnyHashable?, v29, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of _ViewList_View?(&v44, &lazy cache variable for type metadata for AnyHashable?, v29, v33, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
        outlined destroy of AnyHashable(v47);
        if (!*(&v41 + 1))
        {
          outlined destroy of _ViewList_View?(v39, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
          v22 = 1;
          return v22 & 1;
        }
      }

      _s7SwiftUI16CommandOperationVWOhTm_3(v39, type metadata accessor for (AnyHashable?, AnyHashable?));
      v22 = 0;
      return v22 & 1;
  }
}

void *ToolbarStorage.Entry.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry(v2, v16, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      result = _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v16, v10, type metadata accessor for ToolbarStorage.GroupItem);
      v29 = *(v10 + 19);
      if (!*(v29 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of ToolbarStorage.Entry(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      ToolbarStorage.GroupItem.GroupSubItem.id.getter(&v35);
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      v30 = v35;
      v31 = v36;
      v32 = v37;
      lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

      AnyHashable.init<A>(_:)();

      outlined init with copy of ToolbarItemPlacement.Role((v10 + 80), a1 + 40);
      v21 = type metadata accessor for ToolbarStorage.GroupItem;
      v22 = v10;
    }

    else
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v16, v13, type metadata accessor for ToolbarStorage.Item);
      v18 = *(v13 + 1);
      v19 = *(v13 + 4);
      v20 = *(v13 + 5);
      *&v35 = *v13;
      *(&v35 + 1) = v18;
      v36 = *(v13 + 1);
      *&v37 = v19;
      *(&v37 + 1) = v20;
      lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

      AnyHashable.init<A>(_:)();
      outlined init with copy of ToolbarItemPlacement.Role((v13 + 112), a1 + 40);
      v21 = type metadata accessor for ToolbarStorage.Item;
      v22 = v13;
    }

    return outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v22, v21);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v23 = v16[1];
    v35 = *v16;
    v36 = v23;
    v24 = v16[3];
    v37 = v16[2];
    v38 = v24;
    v39 = v16[4];
    if (v35)
    {
      v25 = 0xD000000000000017;
    }

    else
    {
      v25 = 0xD000000000000014;
    }

    if (v35)
    {
      v26 = "swiftui-fixed-spacer";
    }

    else
    {
      v26 = "@UIActivityViewController8@?0";
    }

    v33 = v25;
    v34 = v26 | 0x8000000000000000;
    AnyHashable.init<A>(_:)();
    outlined init with copy of ToolbarItemPlacement.Role(&v35 + 8, a1 + 40);
    result = outlined destroy of ToolbarStorage.SpacerItem(&v35);
    v28 = v31;
    *a1 = v30;
    *(a1 + 16) = v28;
    *(a1 + 32) = v32;
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      strcpy(&v35, "swiftui-search");
      HIBYTE(v35) = -18;
    }

    else
    {
      *&v35 = 0xD000000000000010;
      *(&v35 + 1) = 0x800000018CD4EDC0;
    }

    result = AnyHashable.init<A>(_:)();
    *(a1 + 72) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 80) = -1;
  }

  return result;
}

uint64_t initializeWithCopy for ToolbarStorage.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t destroy for ToolbarStorage.ID(uint64_t a1)
{
}

void type metadata accessor for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
    v7 = a3(a1, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6530], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI7BindingVySiGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t destroy for ToolbarStorage.Entry.ID(uint64_t a1)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (*(a1 + 80) == 1)
  {

    return __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  }

  return result;
}

BOOL specialized static ToolbarStorage.Entry.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x18D00E7E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69E6720];
  outlined init with copy of ToolbarItemPlacement.Role?(a1 + 40, v10, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  outlined init with copy of ToolbarItemPlacement.Role?(a2 + 40, &v11, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v4, _s7SwiftUI7BindingVySiGMaTm_0);
  if (v10[40] == 255)
  {
    if (v12[24] == 255)
    {
      outlined destroy of ToolbarItemPlacement.Role?(v10, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      return 1;
    }
  }

  else
  {
    outlined init with copy of ToolbarItemPlacement.Role?(v10, v9, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
    if (v12[24] != 255)
    {
      v7 = v11;
      v8[0] = *v12;
      *(v8 + 9) = *&v12[9];
      v5 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v9, &v7);
      outlined destroy of ToolbarItemPlacement.Role(&v7);
      outlined destroy of ToolbarItemPlacement.Role(v9);
      outlined destroy of ToolbarItemPlacement.Role?(v10, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      return (v5 & 1) != 0;
    }

    outlined destroy of ToolbarItemPlacement.Role(v9);
  }

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v10, type metadata accessor for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?));
  return 0;
}

uint64_t storeEnumTagSinglePayload for ToolbarStorage.ID(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ToolbarStorage.ID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t specialized static ToolbarStorage.ID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v8 = a2[3];
  v7 = a2[4];
  v9 = a2[5];

  v10 = static _ViewList_ID.== infix(_:_:)();

  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v4 == v8)
  {
    if (v5)
    {
      if (v9 && (v3 == v7 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for OnScrollVisibilityChangeModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for [TableColumnCustomizationID](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of ToolbarStorage.Entry.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in closure #1 in UIKitToolbarStrategy.makeBarItems()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v75 = a6;
  v78 = a5;
  v72 = a4;
  v71 = a3;
  v9 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v66 - v12;
  v69 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  v32 = *a2;
  v73 = a2;
  v33 = *(a2 + 8);
  if (v33 == 1)
  {
    type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_18CD69590;
    *(v34 + 32) = v32;
    v35 = v32;
    goto LABEL_36;
  }

  v74 = a1;
  outlined init with copy of ToolbarStorage.Entry.Kind(a1, v22, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ToolbarStorage.NavigationProperties(v22, type metadata accessor for ToolbarStorage.Entry.Kind);
    v36 = v74;
  }

  else
  {
    outlined init with take of ToolbarStorage.NavigationProperties(v22, v28, type metadata accessor for ToolbarStorage.Item);
    outlined init with take of ToolbarStorage.NavigationProperties(v28, v31, type metadata accessor for ToolbarStorage.Item);
    if (v31[153] == 3)
    {
      type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18CD69590;
      v37 = v71 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      *(v34 + 32) = [*(v37 + 8) searchBarPlacementBarButtonItem];
      outlined destroy of ToolbarStorage.NavigationProperties(v31, type metadata accessor for ToolbarStorage.Item);
      goto LABEL_36;
    }

    outlined destroy of ToolbarStorage.NavigationProperties(v31, type metadata accessor for ToolbarStorage.Item);
    v36 = v74;
  }

  outlined init with copy of ToolbarStorage.Entry.Kind(v36, v19, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ToolbarStorage.NavigationProperties(v19, type metadata accessor for ToolbarStorage.Entry.Kind);
    outlined init with copy of ToolbarStorage.Entry.Kind(v36, v16, type metadata accessor for ToolbarStorage.Entry.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined consume of OpenURLOptions?(v32, v33);
      v38 = v16[1];
      v81 = *v16;
      *v82 = v38;
      v39 = v16[3];
      *&v82[16] = v16[2];
      v83 = v39;
      v84 = v16[4];
      v40 = v81;
      v41 = objc_opt_self();
      if (v40 == 1)
      {
        v42 = [v41 flexibleSpaceItem];
      }

      else
      {
        v42 = [v41 fixedSpaceItemOfWidth_];
      }

      v50 = v42;
      v51 = v73;
      *v73 = v50;
      *(v51 + 8) = 0;
      type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18CD69590;
      *(v34 + 32) = v50;
      v52 = v50;
      outlined destroy of ToolbarStorage.SpacerItem(&v81);
    }

    else
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v16, type metadata accessor for ToolbarStorage.Entry.Kind);
      v49 = v70;
      ToolbarStorage.Entry.groupItem.getter(v70);
      if ((*(v68 + 48))(v49, 1, v69) == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties?(v49, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
        v34 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v53 = v49;
        v54 = v67;
        outlined init with take of ToolbarStorage.NavigationProperties(v53, v67, type metadata accessor for ToolbarStorage.GroupItem);
        if (!v72)
        {
          return outlined destroy of ToolbarStorage.NavigationProperties(v54, type metadata accessor for ToolbarStorage.GroupItem);
        }

        v55 = *(v54 + 152);
        v34 = MEMORY[0x1E69E7CC0];
        *&v81 = MEMORY[0x1E69E7CC0];
        v56 = *(v55 + 16);
        v57 = v72;
        if (v56)
        {
          v58 = 0;
          v79 = v56 - 1;
          do
          {
            v59 = v58;
            v60 = v71;
            while (1)
            {
              if (v59 >= *(v55 + 16))
              {
                __break(1u);

                outlined destroy of ToolbarStorage.NavigationProperties(v14, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);

                __break(1u);
                return result;
              }

              v61 = v76;
              outlined init with copy of ToolbarStorage.Entry.Kind(v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v59, v76, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
              closure #3 in closure #1 in closure #1 in UIKitToolbarStrategy.makeBarItems()(v61, v60, v57, v78, v80);
              v62 = outlined destroy of ToolbarStorage.NavigationProperties(v61, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
              v14 = *v80;
              if (*v80)
              {
                break;
              }

              if (v56 == ++v59)
              {
                goto LABEL_35;
              }
            }

            MEMORY[0x18D00CC30](v62);
            if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v58 = v59 + 1;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v34 = v81;
          }

          while (v79 != v59);
        }

LABEL_35:

        outlined destroy of ToolbarStorage.NavigationProperties(v67, type metadata accessor for ToolbarStorage.GroupItem);
      }
    }
  }

  else
  {
    outlined init with take of ToolbarStorage.NavigationProperties(v19, v25, type metadata accessor for ToolbarStorage.Item);
    if (!v72)
    {
      return outlined destroy of ToolbarStorage.NavigationProperties(v25, type metadata accessor for ToolbarStorage.Item);
    }

    v43 = v72;
    outlined consume of OpenURLOptions?(v32, v33);
    v44 = specialized static UIKitBarButtonItem.makeVended(item:context:)(v25, v43, v78);
    v46 = v73;
    *v73 = v44;
    *(v46 + 8) = v47;
    if (v45)
    {
      v48 = v45;
      type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18CD69590;
      *(v34 + 32) = v48;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of ToolbarStorage.NavigationProperties(v25, type metadata accessor for ToolbarStorage.Item);
  }

LABEL_36:
  ToolbarStorage.Entry.placement.getter(v80);
  if (v80[40] == 255)
  {
    outlined destroy of PushTarget?(v80, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  }

  else
  {
    v81 = *v80;
    *v82 = *&v80[16];
    *&v82[9] = *&v80[25];
    *v80 = 4;
    memset(&v80[8], 0, 32);
    v80[40] = 2;
    v64 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v81, v80);
    outlined destroy of ToolbarItemPlacement.Role(v80);
    if (v64)
    {

      specialized Array.append<A>(contentsOf:)(v65);
      outlined destroy of ToolbarItemPlacement.Role(&v81);
    }

    outlined destroy of ToolbarItemPlacement.Role(&v81);
  }

  return specialized Array.append<A>(contentsOf:)(v34);
}

id specialized static UIKitBarButtonItem.makeVended(item:context:)(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of _ViewList_View(a1 + 184, v54);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v54[96] = a3;
  v54[97] = 0;
  outlined init with copy of BarItemView(v54, &v50);
  v9 = *(a1 + 280);
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
  v11 = objc_allocWithZone(v10);
  v12 = MEMORY[0x1E69E7D40];
  v13 = &v11[*((*MEMORY[0x1E69E7D40] & *v11) + 0x710)];
  *v13 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v13[1] = 0;
  v14 = &v11[*((*v12 & *v11) + 0x720)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v11[*((*v12 & *v11) + 0x718)] = v9;
  outlined init with copy of BarItemView(&v50, v49);
  v15 = v9;
  v16 = specialized _UIHostingView.init(rootView:)(v49);
  v17 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  outlined destroy of BarItemView(&v50);
  UIHostingViewBase.viewGraph.getter();

  swift_weakLoadStrong();
  ViewGraph.preferenceBridge.setter();

  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, v8, type metadata accessor for ToolbarStorage.Item);
  v18 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
  v19 = v16;
  v20 = a2;
  v21 = specialized UIKitBarButtonItem.init(item:context:host:)(v8, v20, a3, v19);

  [v19 bounds];
  v23 = v22;
  v25 = v24;

  if (v23 == 0.0 && v25 == 0.0)
  {
    lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
    v26 = ViewRendererHost.idealSize()();
    [v19 setBounds_];
  }

  lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
  ViewRendererHost.updateViewGraph<A>(body:)();
  v27 = v50;
  outlined init with copy of ToolbarItemPlacement.Role(a1 + 112, &v50);
  if ((v53 != 2 || (v50 != 4 ? (v28 = v50 == 1) : (v28 = 1), !v28 ? (v29 = v50 == 11) : (v29 = 1), !v29 ? (v30 = (v50 - 25) > 1) : (v30 = 0), v30 || (v31 = vorrq_s8(v51, v52), *&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL))))) && (outlined destroy of ToolbarItemPlacement.Role(&v50), *(v27 + 16) == 1) && (v32 = *(type metadata accessor for PlatformItemList.Item(0) - 8), v33 = (v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80))), v34 = v33[42], v34 >> 62 == 3) && (v34 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL && v34 == 0xC000000000000000 && v33[38] == 1 && (v35 = v33[39], v36 = v33[40], v37 = v33[41], !(v36 | v35 | v37)) && (v38 = v33[43], v39 = v33[44], v40 = v33[45], v41 = v33[46], v42 = v33[47], v43 = v33[48], v45 = v33[49], v44 = v33[50], !(v39 | v38 | v40 | v41 | v42 | v43 | v45 | v44)))
  {
    outlined copy of PlatformItemList.Item.SystemItem(1, v35, v36, v37, 0xC000000000000000, v38, v39, v40, v41, v42, v43, v45, v44);

    v46 = [objc_opt_self() flexibleSpaceItem];

    v21 = v46;
  }

  else
  {
    UIKitBarButtonItem.initializePlatformItem(_:)(v27);
  }

  outlined destroy of BarItemView(v54);
  return v21;
}

unint64_t lazy protocol witness table accessor for type BarItemView and conformance BarItemView()
{
  result = lazy protocol witness table cache variable for type BarItemView and conformance BarItemView;
  if (!lazy protocol witness table cache variable for type BarItemView and conformance BarItemView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarItemView, &type metadata for BarItemView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemView and conformance BarItemView);
  }

  return result;
}

void type metadata accessor for _UIHostingView<BarItemView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t assignWithTake for BarItemView(uint64_t a1, uint64_t a2)
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
  *(a1 + 97) = *(a2 + 97);
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t PlatformItemListViewGraph.readAndUpdate(graph:)(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = *WeakValue;
  *(v1 + 8) = 1;
  swift_beginAccess();
  if (*(a1 + 41))
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (*(v1 + 9))
    {
      goto LABEL_8;
    }

LABEL_7:
    if ((v5 & 1) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  if ((*(v1 + 9) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(v1 + 8) = 0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(a1 + 208);
    ObjectType = swift_getObjectType();
    v9 = type metadata accessor for PlatformItemListHost();
    (*(v7 + 16))(v14, v9, v9, ObjectType, v7);
    swift_unknownObjectRelease();
    if (v14[0])
    {
      v10 = v14[1];
      v11 = swift_getObjectType();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(v10 + 8))(partial apply for closure #1 in PlatformItemListViewGraph.readAndUpdate(graph:), v12);
      swift_unknownObjectRelease();
    }
  }

  return v6;
}

uint64_t outlined assign with take of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.Accessibility(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t outlined init with take of PlatformItemList.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PlatformItemList.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for CGFloat?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _UIHostingView.platformItemListDidChange(list:)(uint64_t (*a1)(void))
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = v1 + v3[56];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = a1();
    (*(v6 + 48))(v1, v8, v3[10], v3[11], ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void UIKitBarButtonItem.updatePlatformItem(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for UIBarButtonItem.Badge?, MEMORY[0x1E69DC3E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v3);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  if (*(a1 + 16))
  {
    PlatformItemList.mergedContentItem.getter(a1, v9);
    v10 = type metadata accessor for PlatformItemList.Item(0);
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for PlatformItemList.Item(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = &v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem];
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v9, v11, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  swift_endAccess();
  UIKitBarButtonItem.updateRepresentation()();
  type metadata accessor for PlatformItemList.Item(0);
  if ((*(*(v10 - 8) + 48))(v11, 1, v10) || !*(v11 + 928))
  {
    v12 = type metadata accessor for UIBarButtonItem.Badge();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {

    static UIBarButtonItem.Badge.string(_:)();
    v13 = type metadata accessor for UIBarButtonItem.Badge();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  UIBarButtonItem.badge.setter();
  if (UIKitBarButtonItem.updateBridging()())
  {
    v14 = 0;
LABEL_13:
    [v1 setCustomView_];
    return;
  }

  v15 = [v1 customView];
  v16 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host;
  if (!v15 || (v17 = *&v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host], v18 = v15, v15, v18 != v17))
  {
    v14 = *&v1[v16];
    goto LABEL_13;
  }
}

uint64_t outlined init with take of PlatformItemList.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for BorderlessButtonStyleEnvironment.UpdateEnvironment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 14))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.SystemItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 2;
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

uint64_t assignWithTake for ToolbarButtonStyle(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(a1);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 26) = *(a2 + 26);
  }

  v5 = *(a2 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 72);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

_BYTE *initializeWithCopy for ToolbarButtonStyle.ResolvedBody(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v27 = v8[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v26, v27);
    *v7 = v25;
    *(v7 + 1) = v26;
    v7[16] = v27;
    v28 = *(v8 + 5);
    v29 = *(v8 + 24);
    *(v7 + 24) = v29;
    *(v7 + 5) = v28;
    v30 = v29;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v31;
    goto LABEL_6;
  }

  v38 = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[34];
  v15 = *(v8 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v13, v12, v15, v14);
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  *(v7 + 3) = v12;
  *(v7 + 16) = v15;
  v7[34] = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 6);
  v18 = *(v8 + 7);
  v19 = *(v8 + 8);
  LOBYTE(v11) = v8[74];
  LOWORD(v13) = *(v8 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v13, v11);
  *(v7 + 5) = v16;
  *(v7 + 6) = v17;
  *(v7 + 7) = v18;
  *(v7 + 8) = v19;
  *(v7 + 36) = v13;
  v7[74] = v11;
  a3 = v38;
  v20 = *(type metadata accessor for LinkDestination() + 24);
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 16))(v21, v22, v23);
  v24 = type metadata accessor for LinkDestination.Configuration();
  v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v32 = *(a3 + 24);
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *&a2[v32];
  v36 = v34[8];
  outlined copy of Environment<Selector?>.Content(v35, v36);
  *v33 = v35;
  v33[8] = v36;
  return a1;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ToolbarButtonContentModifier@<X0>(void (**a1)(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *a1 = partial apply for closure #1 in ToolbarButtonContentModifier.body(content:);
  a1[1] = v6;

  return outlined copy of Environment<Selector?>.Content(v4, v5);
}

uint64_t sub_18BF5EC18()
{
  outlined consume of Environment<Selector?>.Content(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

void type metadata accessor for ToolbarStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>);
    }
  }
}

uint64_t destroy for ToolbarButtonLabelModifier(void *a1, __n128 a2)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 40) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
  }

  outlined consume of Environment<ToolbarItemMetrics?>.Content(a1[6], a1[7], a1[8], a1[9], *(a1 + 80), *(a1 + 81));
  outlined consume of Environment<Selector?>.Content(a1[11], *(a1 + 96));
  outlined consume of Environment<Selector?>.Content(a1[13], *(a1 + 112));
  outlined consume of Environment<Selector?>.Content(a1[15], *(a1 + 128));
  v3 = a1[17];
  v4 = *(a1 + 144);

  return outlined consume of Environment<Selector?>.Content(v3, v4);
}

uint64_t closure #2 in BarAppearanceBridge.didUpdate(bar:barUpdates:)(uint64_t a1, unsigned int a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E69B8];
    while (1)
    {
      outlined init with copy of (String, TabEntry)(v4, v15, &lazy cache variable for type metadata for (AnyHashable, Any), v6, v5 + 8, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = outlined init with take of Any(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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

uint64_t assignWithCopy for ToolbarItemGroup(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1);
    if (*(a2 + 40) == 1)
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v7 = *a2;
      v8 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v7;
      *(a1 + 16) = v8;
    }
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v11 + 41 + a1) & ~v11;
  v13 = (a2 + v11 + 41) & ~v11;
  (*(v9 + 24))(v12, v13);
  *(*(v10 + 40) + v12) = *(*(v10 + 40) + v13);
  return a1;
}

double ReadDestinationsModifier.RequestsTransform.updateValue()(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - v4;
  if (*AGGraphGetValue() == 1)
  {
    v61 = a1;
    _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationStackViewPosition?, &type metadata for NavigationStackViewPosition, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    v60 = v7;
    v9 = *Value;
    v8 = *(Value + 8);
    v62 = *(Value + 16);
    v10 = *(Value + 24);
    v11 = *(Value + 32);
    v12 = *(Value + 40);
    v70 = *(v1 + 4);
    v13 = v1[1];
    v68 = *v1;
    v69 = v13;
    type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E69E62F8]);
    v14 = AGGraphGetValue();
    if (v12 == 2)
    {
      type metadata accessor for (_:)();
      if (!AGGraphGetOutputValue())
      {
        goto LABEL_6;
      }

      return result;
    }

    v17 = v15;
    v58 = v10;
    v59 = v5;
    v63 = *v14;
    *&v66 = v9;
    *(&v66 + 1) = v8;
    v57 = v8;
    v18 = v62;
    LOBYTE(v67[0]) = v62;
    *(&v67[0] + 1) = v10;
    *&v67[1] = v11;
    BYTE8(v67[1]) = v12 & 1;
    v19 = HIDWORD(v70);
    v20 = type metadata accessor for (_:)();
    if (!AGGraphGetOutputValue() || (v60 & 1) != 0)
    {
      if ((v17 & 1) == 0)
      {
LABEL_13:
        if (v18 == 4)
        {
          v21 = v11;
        }

        else
        {
          v21 = v9;
        }

        if ((v12 & 1) == 0)
        {
          v21 = -1;
        }

        v22 = v70;
        v23 = v63;
        v76[0] = v63;
        v76[1] = v21;
        v77 = v69;
        v78 = 3;
        v79 = v57;
        v80 = v18;
        v86 = 0;
        v81 = v58;
        v82 = 0;
        v84 = 0;
        v83 = 0;
        v85 = 0;
        v56 = *(&v69 + 1);
        v60 = v69;
        if (v70)
        {
          v24 = v61;
          v25 = v20;
          if (v70 != -1)
          {
            v22 = merge32(_:_:)(v70, v19);
          }
        }

        else
        {
          v25 = v20;
          v22 = v19;
          v24 = v61;
        }

        outlined init with copy of NavigationRequest(v76, v74);
        v75 = v22;
        swift_bridgeObjectRetain_n();
        v26 = *(v24 - 8);
        v27 = *(v26 + 16);
        v27(v72, &v68, v24);
        v28 = v59;
        static Log.navigation.getter();
        v29 = type metadata accessor for Logger();
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(v28, 1, v29) == 1)
        {

          _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(v28, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for Attribute<(_:)>);
        }

        else
        {

          v27(v72, &v68, v24);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v55 = v32;
            v57 = v31;
            v58 = v30;
            v62 = v25;
            v33 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v71 = v54;
            *v33 = 136315650;
            v34 = NavigationStackViewPosition.description.getter();
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v71);

            *(v33 + 4) = v36;
            *(v33 + 12) = 2080;
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v56, &v71);
            (*(v26 + 8))(&v68, v24);
            *(v33 + 14) = v31;
            v60 = v33;
            *(v33 + 22) = 2080;
            *&v72[0] = 91;
            *(&v72[0] + 1) = 0xE100000000000000;
            if (v23 >> 62)
            {
              goto LABEL_44;
            }

            v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
            v61 = v29;
            if (v30)
            {
              v24 = 0;
              v37 = v23 & 0xC000000000000001;
              v29 = v23 & 0xFFFFFFFFFFFFFF8;
              v28 = 0xE200000000000000;
              while (1)
              {
                if (v37)
                {
                  v38 = MEMORY[0x18D00E9C0](v24, v23);
                  v26 = v24 + 1;
                  if (__OFADD__(v24, 1))
                  {
LABEL_36:
                    __break(1u);
                    goto LABEL_37;
                  }
                }

                else
                {
                  if (v24 >= *(v29 + 16))
                  {
                    __break(1u);
LABEL_44:
                    v30 = __CocoaSet.count.getter();
                    goto LABEL_27;
                  }

                  v38 = *(v23 + 8 * v24 + 32);

                  v26 = v24 + 1;
                  if (__OFADD__(v24, 1))
                  {
                    goto LABEL_36;
                  }
                }

                v39 = (*(*v38 + 128))();
                v64 = 2314;
                v65 = 0xE200000000000000;
                MEMORY[0x18D00C9B0](v39);

                v31 = v72;
                MEMORY[0x18D00C9B0](v64, v65);

                ++v24;
                v23 = v63;
                if (v26 == v30)
                {
                  v41 = *(&v72[0] + 1);
                  v40 = *&v72[0];
                  v28 = v59;
                  goto LABEL_39;
                }
              }
            }

            v40 = 91;
            v41 = 0xE100000000000000;
LABEL_39:

            *&v72[0] = 93;
            *(&v72[0] + 1) = 0xE100000000000000;
            v64 = v40;
            v65 = v41;
            v64 = String.init<A>(_:)();
            v65 = v42;
            String.append<A>(contentsOf:)();
            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v71);

            v44 = v60;
            *(v60 + 24) = v43;
            v45 = v57;
            _os_log_impl(&dword_18BD4A000, v57, v55, "Reading navigation destinations at %s\nReader: %s\nDestinations: %s", v44, 0x20u);
            v46 = v54;
            swift_arrayDestroy();
            MEMORY[0x18D0110E0](v46, -1, -1);
            MEMORY[0x18D0110E0](v44, -1, -1);

            v29 = v61;
            v30 = v58;
          }

          else
          {
LABEL_37:

            (*(v26 + 8))(&v68, v24);
          }

          (*(v30 + 8))(v28, v29);
        }

        outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(v74, v72);
        v47 = swift_allocObject();
        v48 = v67[0];
        v47[1] = v66;
        v47[2] = v48;
        *(v47 + 41) = *(v67 + 9);
        v49 = v73[0];
        v47[12] = v72[8];
        v47[13] = v49;
        *(v47 + 220) = *(v73 + 12);
        v50 = v72[5];
        v47[8] = v72[4];
        v47[9] = v50;
        v51 = v72[7];
        v47[10] = v72[6];
        v47[11] = v51;
        v52 = v72[1];
        v47[4] = v72[0];
        v47[5] = v52;
        v53 = v72[3];
        v47[6] = v72[2];
        v47[7] = v53;
        v64 = partial apply for closure #4 in ReadDestinationsModifier.RequestsTransform.updateValue();
        v65 = v47;
        AGGraphSetOutputValue();
        outlined destroy of PositionedNavigationDestination.Storage.SeededRequest(v74);
        outlined destroy of NavigationRequest(v76);

        return result;
      }
    }

    else if ((v17 & 1) == 0)
    {
      return result;
    }

    *(v1 + 9) = ++v19;
    goto LABEL_13;
  }

  type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue())
  {
LABEL_6:
    v74[0] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    v74[1] = 0;
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t sub_18BF5FBE8()
{
  switch(*(v0 + 160))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1((v0 + 80));
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));
      break;
    case 0xC:
    case 0xD:

      if (*(v0 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 72));
      }

      if (*(v0 + 120) != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (*(v0 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 72));
      }

      v1 = *(v0 + 120);
      goto LABEL_24;
    case 0x12:

      if (*(v0 + 104))
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 80));
      }

      if (*(v0 + 128) != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (*(v0 + 88))
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 64));
      }

      v1 = *(v0 + 112);
LABEL_24:
      if (v1 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*(v0 + 64))
      {
      }

      if (*(v0 + 80))
      {
LABEL_29:
      }

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t View._onButtonGesture(pressing:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v13 = a3;
  *(&v13 + 1) = a4;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = 0;
  BYTE8(v15) = 1;
  *&v16 = a3;
  *(&v16 + 1) = a4;

  outlined copy of AppIntentExecutor?(a1, a2);
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for ButtonActionModifier<_ButtonGesture>, &type metadata for _ButtonGesture, &protocol witness table for _ButtonGesture, type metadata accessor for ButtonActionModifier);
  v11 = v10;

  MEMORY[0x18D00A570](&v13, a5, v11, a6);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;
  return outlined destroy of ButtonActionModifier<_ButtonGesture>(v17);
}

uint64_t outlined destroy of ButtonActionModifier<_ButtonGesture>(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for ButtonActionModifier<_ButtonGesture>, &type metadata for _ButtonGesture, &protocol witness table for _ButtonGesture, type metadata accessor for ButtonActionModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for OnScrollVisibilityGeometryAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

double closure #1 in OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder.enqueueAction(isVisible:)(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = a2;

  static Update.enqueueAction(reason:_:)();

  return result;
}

uint64_t sub_18BF6009C()
{

  return swift_deallocObject();
}

void *destructiveInjectEnumTag for ScrollTransitionConfiguration.Threshold.Storage(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

double ToolbarModifier.TransformToolbar.updateValue()(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  AGGraphClearUpdate();
  closure #1 in ToolbarModifier.TransformToolbar.updateValue()(&v17);
  AGGraphSetUpdate();
  v1 = v17;
  Value = AGGraphGetValue();
  v17 = *Value;
  v4 = *(Value + 32);
  v3 = *(Value + 48);
  v5 = *(Value + 16);
  v21 = *(Value + 64);
  v19 = v4;
  v20 = v3;
  v18 = v5;
  outlined init with copy of ToolbarStorage(&v17, v16);
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v6 = AGGraphGetValue();
  v7 = v6[1];
  v14 = *v6;
  type metadata accessor for Binding<Int>?(0);

  v8 = AGGraphGetValue();
  v15 = *v8;
  v9 = *(v8 + 16);
  v10 = swift_allocObject();
  v11 = v20;
  *(v10 + 48) = v19;
  *(v10 + 64) = v11;
  *(v10 + 80) = v21;
  v12 = v18;
  *(v10 + 16) = v17;
  *(v10 + 32) = v12;
  *&v12 = v14;
  *(&v12 + 1) = v7;
  *(v10 + 104) = v15;
  *(v10 + 88) = v12;
  *(v10 + 120) = v9;
  *(v10 + 128) = v1;
  v16[0] = partial apply for closure #2 in ToolbarModifier.TransformToolbar.updateValue();
  v16[1] = v10;
  type metadata accessor for (_:)();
  outlined copy of Binding<Int>?(v15, *(&v15 + 1));
  AGGraphSetOutputValue();

  return result;
}

uint64_t sub_18BF602D0()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t (*ToolbarModifier.TransformSearch.value.getter(uint64_t a1))(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  Value = AGGraphGetValue();
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(Value, v7, type metadata accessor for ToolbarStorage.SearchItem?);
  outlined init with take of ToolbarStorage.SearchItem?(v7, v4, type metadata accessor for ToolbarStorage.SearchItem?);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  outlined init with take of ToolbarStorage.SearchItem?(v4, v10 + v9, type metadata accessor for ToolbarStorage.SearchItem?);
  return partial apply for closure #1 in ToolbarModifier.TransformSearch.value.getter;
}

uint64_t sub_18BF604E0()
{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v5 = *(v4 + 32);
    v6 = v5 + *(type metadata accessor for SearchFieldState(0) + 36);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);

    v8 = v2 + v3[6];
    v9 = *(v8 + 8);
    if (v9 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
    }

    v10 = v2 + v3[7];
    v11 = *(v10 + 8);
    if (v11 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v10, v11 & 1);
    }

    outlined consume of Text.Storage(*(v2 + v3[8]), *(v2 + v3[8] + 8), *(v2 + v3[8] + 16));

    v12 = v2 + v3[10];
    if (*v12)
    {
    }

    v13 = v2 + v3[11];
    if (*v13)
    {
    }

    v14 = v2 + v3[13];
    if (*v14)
    {
    }
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform()
{
  result = lazy protocol witness table cache variable for type FocusableBoundsTransform and conformance FocusableBoundsTransform;
  if (!lazy protocol witness table cache variable for type FocusableBoundsTransform and conformance FocusableBoundsTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusableBoundsTransform, &type metadata for FocusableBoundsTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableBoundsTransform and conformance FocusableBoundsTransform);
  }

  return result;
}

void destroy for ToolbarStorage.Entry(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.Entry.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (*(a1 + 48) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 8));
    }

    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    if (*(a1 + 88))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 64));
    }

    if (*(a1 + 152) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 112));
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 184));

    v3 = a1 + *(type metadata accessor for ToolbarStorage.Item(0) + 68);
    v4 = type metadata accessor for PlatformItemList.Item(0);
    if ((*(*(v4 - 8) + 48))(v3, 1, v4))
    {
      goto LABEL_47;
    }

    v5 = *(v3 + 192);
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v7 = *(v3 + 72);
      if (v7 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v3 + 64), v7);
        v5 = *(v3 + 192);
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v6 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v3 + 176), *(v3 + 184), v5, *(v3 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(v3 + 264))
    {

      v8 = *(v3 + 272);
      if (v8 >= 2)
      {
      }
    }

    v9 = *(v3 + 336);
    if (v9 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v3 + 304), *(v3 + 312), *(v3 + 320), *(v3 + 328), v9, *(v3 + 344), *(v3 + 352), *(v3 + 360), *(v3 + 368), *(v3 + 376), *(v3 + 384), *(v3 + 392), *(v3 + 400));
    }

    v10 = *(v3 + 416);
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_28;
      }
    }

    if (*(v3 + 432))
    {
    }

    if (*(v3 + 448))
    {
    }

LABEL_28:

    if (*(v3 + 512))
    {
    }

    if (!*(v3 + 816))
    {
LABEL_38:
      v12 = *(v3 + 864);
      if (v12)
      {
        if (v12 == 1)
        {
LABEL_43:

          v13 = v3 + *(v4 + 112);
          v14 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            v15 = v13 + *(v14 + 20);
            outlined consume of Text.Storage(*v15, *(v15 + 8), *(v15 + 16));

            v16 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v17 = type metadata accessor for UUID();
            (*(*(v17 - 8) + 8))(v15 + v16, v17);
            if (*(v13 + *(v14 + 24)))
            {
            }
          }

LABEL_47:

          swift_weakDestroy();
          return;
        }

        __swift_destroy_boxed_opaque_existential_1((v3 + 840));
      }

      if (*(v3 + 880))
      {
      }

      goto LABEL_43;
    }

    v11 = *(v3 + 624);
    if (v11)
    {
      if (v11 == 1)
      {
LABEL_35:
        if (*(v3 + 776) != 1)
        {
        }

        goto LABEL_38;
      }

      __swift_destroy_boxed_opaque_existential_1((v3 + 600));
    }

    goto LABEL_35;
  }

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 32));
  }

  if (*(a1 + 120) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 80));
  }

  v18 = a1 + *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
  v19 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v18);

LABEL_101:
      v33 = *(v18 + *(v19 + 20));

      return;
    }

    v20 = *(v18 + 192);
    v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
    if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v22 = *(v18 + 72);
      if (v22 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v18 + 64), v22);
        v20 = *(v18 + 192);
        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v21 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v18 + 176), *(v18 + 184), v20, *(v18 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(v18 + 264))
    {

      v23 = *(v18 + 272);
      if (v23 >= 2)
      {
      }
    }

    v24 = *(v18 + 336);
    if (v24 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v18 + 304), *(v18 + 312), *(v18 + 320), *(v18 + 328), v24, *(v18 + 344), *(v18 + 352), *(v18 + 360), *(v18 + 368), *(v18 + 376), *(v18 + 384), *(v18 + 392), *(v18 + 400));
    }

    v25 = *(v18 + 416);
    if (v25)
    {
      if (v25 == 1)
      {
        goto LABEL_81;
      }
    }

    if (*(v18 + 432))
    {
    }

    if (*(v18 + 448))
    {
    }

LABEL_81:

    if (*(v18 + 512))
    {
    }

    if (!*(v18 + 816))
    {
LABEL_91:
      v27 = *(v18 + 864);
      if (v27)
      {
        if (v27 == 1)
        {
LABEL_96:

          v28 = v18 + *(type metadata accessor for PlatformItemList.Item(0) + 112);
          v29 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            v30 = v28 + *(v29 + 20);
            outlined consume of Text.Storage(*v30, *(v30 + 8), *(v30 + 16));

            v31 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v32 = type metadata accessor for UUID();
            (*(*(v32 - 8) + 8))(v30 + v31, v32);
            if (*(v28 + *(v29 + 24)))
            {
            }
          }

          goto LABEL_101;
        }

        __swift_destroy_boxed_opaque_existential_1((v18 + 840));
      }

      if (*(v18 + 880))
      {
      }

      goto LABEL_96;
    }

    v26 = *(v18 + 624);
    if (v26)
    {
      if (v26 == 1)
      {
LABEL_88:
        if (*(v18 + 776) != 1)
        {
        }

        goto LABEL_91;
      }

      __swift_destroy_boxed_opaque_existential_1((v18 + 600));
    }

    goto LABEL_88;
  }
}

uint64_t assignWithCopy for ContainerBackgroundValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of ContainerBackgroundValue.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of ContainerBackgroundValue.Content(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

Swift::Void __swiftcall UpdateNavigationEventHandlers.updateValue()()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<NavigationEventHandlers>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationAuthority?(Value, &v6);
  if (v7 == 1)
  {
    outlined destroy of NavigationAuthority?(&v6);
  }

  else
  {
    outlined init with take of NavigationAuthority(&v6, v16);
    if (*(v0 + 28) != *AGGraphGetValue() >> 1)
    {
      *(v0 + 28) = *AGGraphGetValue() >> 1;
      *(v0 + 16) = 0xFFFFFFFFLL;
      *(v0 + 24) = 0;
    }

    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      v2 = AGGraphGetValue();
      v3 = v2[1];
      v4 = v2[2];
      v5 = v2[3];
      v6 = *v2;
      v7 = v3;
      v8 = v4;
      v9 = v5;
      v10 = 21;
      v12 = 0u;
      v11 = 0u;
      v13 = xmmword_18CD68310;
      v14 = 0;
      v15 = 0;
      outlined copy of AppIntentExecutor?(v6, v3);
      outlined copy of AppIntentExecutor?(v4, v5);
      NavigationAuthority.enqueueRequest(_:)(&v6);
      outlined destroy of NavigationRequest(&v6);
    }

    outlined destroy of NavigationAuthority(v16);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  result = outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest((a1 + 6), a2 + 48);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

{
  v2 = *a1;
  v3 = *(a1 + 9);
  v5 = *(a1 + 13);
  v17 = *(a1 + 11);
  v4 = v17;
  v18 = v5;
  v19 = *(a1 + 120);
  v12 = *(a1 + 1);
  v6 = v12;
  v8 = *(a1 + 5);
  v13 = *(a1 + 3);
  v7 = v13;
  v14 = v8;
  v15 = *(a1 + 7);
  v9 = v15;
  v16 = v3;
  *(a2 + 120) = v19;
  *(a2 + 104) = v5;
  *(a2 + 88) = v4;
  *(a2 + 72) = v3;
  *(a2 + 56) = v9;
  *(a2 + 40) = v8;
  *(a2 + 24) = v7;
  *(a2 + 8) = v6;
  *a2 = v2;
  return outlined init with copy of OrnamentPresentation(&v12, v11);
}

uint64_t ToolbarInputFeature.needsUpdate(graph:)(uint64_t a1)
{
  type metadata accessor for ToolbarContentDescription?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = *(v1 + 1);
  if (v1[18] == 1 && (v10 = *v1, v11 = *(v1 + 2), v12 = *(v1 + 3), v13 = v1[16], v33 = v1[17], swift_beginAccess(), swift_unknownObjectWeakLoadStrong()) && (v14 = *(a1 + 208), ObjectType = swift_getObjectType(), v16 = type metadata accessor for ToolbarInputFeatureDelegate(), (*(v14 + 16))(&v34, v16, v16, ObjectType, v14), swift_unknownObjectRelease(), v34))
  {
    swift_unknownObjectRelease();
    v17 = *MEMORY[0x1E698D3F8];
    if (v9 != *MEMORY[0x1E698D3F8] && (type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription](0), Value = AGGraphGetValue(), v19 = *Value, *(*Value + 16)) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v21 & 1) != 0))
    {
      v22 = *(v19 + 56);
      v31 = v20;
      v32 = v22;
      v23 = type metadata accessor for ToolbarContentDescription(0);
      v24 = *(v23 - 8);
      outlined init with copy of ToolbarStorage.NavigationProperties?(v32 + *(v24 + 72) * v31, v8, type metadata accessor for ToolbarContentDescription);
      (*(v24 + 56))(v8, 0, 1, v23);
    }

    else
    {
      v23 = type metadata accessor for ToolbarContentDescription(0);
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    }

    outlined init with copy of ToolbarStorage.NavigationProperties?(v8, v5, type metadata accessor for ToolbarContentDescription?);
    type metadata accessor for ToolbarContentDescription(0);
    if ((*(*(v23 - 8) + 48))(v5, 1, v23) == 1)
    {
      outlined destroy of CommandOperation(v5, type metadata accessor for ToolbarContentDescription?);
      v25 = v13 ^ 1;
      if (v10 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v27 = *&v5[*(v23 + 28)];
      outlined destroy of CommandOperation(v5, type metadata accessor for ToolbarContentDescription);
      if (v13)
      {
        v25 = 1;
        if (v10 == 1)
        {
LABEL_28:
          outlined destroy of CommandOperation(v8, type metadata accessor for ToolbarContentDescription?);
          return v25 & 1;
        }
      }

      else
      {
        v25 = v27 == -1 || v12 == -1 || v27 != v12;
        if (v10 == 1)
        {
          goto LABEL_28;
        }
      }
    }

    if (v11 == v17)
    {
      outlined destroy of CommandOperation(v8, type metadata accessor for ToolbarContentDescription?);
      v25 |= v33 != 2;
    }

    else
    {
      v30 = *AGGraphGetValue();
      outlined destroy of CommandOperation(v8, type metadata accessor for ToolbarContentDescription?);
      if ((v33 == 2) | v25 & 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v30 ^ v33;
      }
    }
  }

  else
  {
    v25 = v9 != *MEMORY[0x1E698D3F8];
  }

  return v25 & 1;
}

double ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(unint64_t a1, double a2, double a3)
{
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    v4 = 0.0;
    if (v3 == 2)
    {
      v5 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v9 = ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), a2, a3);
      return v9 + v6 * (ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(v5, a2, a3) - v9);
    }
  }

  else if (v3)
  {
    v10 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), a2, a3) - v10;
    if (v4 <= 0.0)
    {
      return 0.0;
    }
  }

  else
  {
    return a2 * 0.5 + a3 * 0.5 - *(a1 + 16) * a2;
  }

  return v4;
}

double protocol witness for EventType.timestamp.getter in conformance TouchEvent@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t initializeWithCopy for ScrollTransitionModifier.EffectApplicationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void type metadata accessor for _DictionaryStorage<String, ToolbarStorage.Entry>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, ToolbarStorage.Entry>)
  {
    type metadata accessor for ToolbarStorage.Entry(255);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<String, ToolbarStorage.Entry>);
    }
  }
}

void outlined consume of OpenURLOptions?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

char *specialized _UIHostingView.init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v181 = a1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v175 = *(v4 - 8);
  v176 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v172 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v174 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v172 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v177 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v189.receiver = v21;
  v189.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v189, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v188.receiver = v26;
  v188.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v188, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v172 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v173 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of BarItemView(v181, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v192, v45);
  v46 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v190) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type BarItemView and conformance BarItemView();
  v178 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v178 + 88);

  v48 = v183;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v184;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v182;
  specialized OptionSet<>.insert(_:)(v182, v50);
  v53 = *(v175 + 8);
  v54 = v50;
  v55 = v176;
  v53(v54, v176);
  v53(v52, v55);
  v56 = v51(&v192, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v184;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v175 = UIHostingViewBase.Configuration.options.modify();
    v60 = v182;
    specialized OptionSet<>.insert(_:)(v182, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v175)(&v192, 0);
  }

  (*(v179 + 16))(v174, v58, v180);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v192 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v192 + 1) = v65;
  LOWORD(v193) = v66 & 0x101;
  BYTE2(v193) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v68;
    memset(&v191[8], 0, 64);
    *&v191[72] = v172;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.EnableVFDFeature, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v70 = *(v2 + v173);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
  v187.receiver = v2;
  v187.super_class = v77;
  v78 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.HostViewGraph, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BarItemView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = outlined destroy of _UIHostingView<BarItemView>.HostViewGraph(&aBlock);
  v182 = v78;
  (*((*v63 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  v184 = v47;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v204;
    v85 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v204 = v84;
    LOBYTE(v205) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
    v47 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *&v87[*((*v63 & *v87) + 0x150)];
  v89 = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  *(v88 + 40) = v89;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v177 = *((*v63 & *v87) + 0x188);
  *(*&v87[v177] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v90 = *&v87[*((*v63 & *v87) + 0x100)];
  *(v90 + *((*v90 & *v63) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = *&v87[*((*v63 & *v87) + 0x108)];
  *(v91 + *((*v91 & *v63) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  v92 = GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter(v92, v93);
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v89;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v63 & *v87;
  v97 = *&v87[*(v96 + 0x110)];
  if (v97)
  {
    v98 = *((*v97 & *v63) + 0x210);
    v99 = v97;
    v98(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v63 & *v87;
  }

  v100 = *&v87[*(v96 + 280)];
  v101 = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v63 & *v87) + 0x120);
  *(*&v87[v107] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v108 = *&v87[v107];
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v87[*((*v63 & *v87) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v114 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v63 & *v114) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v63 & *v114) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v63 & *v114) + 0x168);
  *(*&v114[v115] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();

  v116 = *&v114[v115];
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  if (v124 == 1 || (v125 = [v114 traitCollection], v126 = objc_msgSend(v125, sel_userInterfaceIdiom), v125, v126 == 6))
  {
    v127 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v127[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v89;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v128 = *((*MEMORY[0x1E69E7D40] & *v114) + 0x178);
    v129 = *&v114[v128];
    *&v114[v128] = v127;
  }

  v130 = *&v87[v177];
  v131 = &v130[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v133 = v181;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v134 = *(v131 + 1);
  v135 = swift_getObjectType();
  v136 = *(*(v134 + 16) + 8);
  v137 = v130;
  LOBYTE(v135) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, v136);
  swift_unknownObjectRelease();
  v138 = v184;
  if (v135)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v139 = MEMORY[0x1E69E7D40];
  v140 = *((*MEMORY[0x1E69E7D40] & *v114) + 0x1A0);
  *(*&v114[v140] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v89;
  v141 = swift_unknownObjectWeakAssign();
  v142 = *&v114[v140];
  MEMORY[0x1EEE9AC00](v141);
  *(&v172 - 2) = v142;
  *(&v172 - 1) = v138;
  v143 = v114;
  v144 = v142;
  static Update.ensure<A>(_:)();

  v145 = *((*v139 & *v143) + 0x78);
  v146 = *&v143[v145];
  v147 = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v146 + 24) = v147;
  swift_unknownObjectWeakAssign();

  v148 = *&v143[v145];
  v149 = *((*v139 & *v143) + 0xE0);
  swift_beginAccess();
  *(v148 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v150 = *&v143[v149];
  v151 = *(v150 + 32);
  v152 = v183;

  if (v151)
  {
    [v143 addGestureRecognizer_];
  }

  [v143 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v143 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v143)
          {
            v199 = 0;
            v186[0] = 0;
            v157 = getpid();
            LODWORD(v177) = v157;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_29;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();
            v152 = v183;

            notify_register_dispatch((v162 + 32), &v199, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v177;
            *(v165 + 24) = v164;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_36;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v163, v166);
            _Block_release(v166);

            v167 = &v143[*((*MEMORY[0x1E69E7D40] & *v143) + 0xE8)];
            *v167 = v199 | (v186[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v143 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v143;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v179 + 8))(v152, v180);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v179 + 8))(v152, v180);
  }

  static Update.end()();
  outlined destroy of BarItemView(v133);
  return v170;
}

{
  v2 = v1;
  v182 = a1;
  v208 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v176 = *(v4 - 8);
  v177 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v173 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v180 = *(v8 - 8);
  v181 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v173 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v178 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v190.receiver = v21;
  v190.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v190, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v189.receiver = v26;
  v189.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v189, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v174 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(v182, v2 + *((*v12 & *v2) + 0x60), &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v193, v45);
  v46 = v193;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  LOBYTE(v191) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
  v47 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v185 = *(v47 + 88);

  v48 = v183;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v184;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v179;
  specialized OptionSet<>.insert(_:)(v179, v50);
  v53 = *(v176 + 8);
  v54 = v50;
  v55 = v177;
  v53(v54, v177);
  v53(v52, v55);
  v56 = v51(&v193, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v184;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v179;
    specialized OptionSet<>.insert(_:)(v179, v59);
    v53(v59, v55);
    v53(v61, v55);
    v60(&v193, 0);
    v58 = v183;
  }

  (*(v180 + 16))(v175, v58, v181);
  v62 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v177 = v47;
  v63 = UIHostingViewBase.init(viewGraph:configuration:)();
  v64 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v63;
  v65 = v185;

  *&v193 = specialized FocusViewGraph.init(graph:)(v66);
  *(&v193 + 1) = v67;
  LOWORD(v194) = v68 & 0x101;
  BYTE2(v194) = v69 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v193 = 0;
  WORD4(v193) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v70 = *MEMORY[0x1E698D3F8];
    v191 = 0uLL;
    *v192 = v70;
    memset(&v192[8], 0, 64);
    *&v192[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v196 = *&v192[32];
    v197 = *&v192[48];
    v198 = *&v192[64];
    v199 = *&v192[80];
    v193 = v191;
    v194 = *v192;
    v195 = *&v192[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v193);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v71, &v191);
  aBlock = v191;
  v205 = *v192;
  v206 = *&v192[16];
  v207 = *&v192[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v193 = aBlock;
  v194 = v205;
  v195 = v206;
  *&v196 = v207;
  outlined destroy of AccessibilityViewGraph(&v193);
  v72 = *(v2 + v174);
  v73 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v74 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v72;
  DWORD2(aBlock) = v74;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v75 = MEMORY[0x1E69E7CC0];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v205 + 1) = &type metadata for HoverEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v75);
  *(&v205 + 1) = &type metadata for KeyEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v77;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v64 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v78);
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
  v188.receiver = v2;
  v188.super_class = v79;
  v80 = objc_msgSendSuper2(&v188, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v81 = v80;
  ViewGraph.append<A>(feature:)();
  v82 = outlined destroy of _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph(&aBlock);
  (*((*v64 & *v81) + 0x5C0))(v82);
  v83 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v84 = aBlock;
  v184 = v80;
  if (aBlock != 1)
  {
    v85 = *(&aBlock + 1);
    v86 = v205;
    v87 = v206;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v88);
    }

    *&aBlock = v84;
    *(&aBlock + 1) = v85;
    v205 = v86;
    LOBYTE(v206) = v87 & 1;
    RepresentableContextValues.environment.getter();
    v202 = v203;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v84, v85, v86, *(&v86 + 1), v87);
    v65 = v185;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v89 = v81;

  v90 = *&v89[*((*v64 & *v89) + 0x150)];
  v91 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>();
  *(v90 + 40) = v91;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v179 = *((*v64 & *v89) + 0x188);
  *(*&v89[v179] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v92 = *&v89[*((*v64 & *v89) + 0x100)];
  *(v92 + *((*v92 & *v64) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = *&v89[*((*v64 & *v89) + 0x108)];
  *(v93 + *((*v93 & *v64) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  v94 = GraphHost.addPreference<A>(_:)();
  v96 = specialized _UIHostingView.sheetBridge.getter(v94, v95);
  if (v96)
  {
    *&v96[direct field offset for SheetBridge.host + 8] = v91;
    v97 = v96;
    swift_unknownObjectWeakAssign();
  }

  v98 = *v64 & *v89;
  v99 = *&v89[*(v98 + 0x110)];
  if (v99)
  {
    v100 = *((*v99 & *v64) + 0x210);
    v101 = v99;
    v100(v65);
    outlined consume of SheetBridge<SheetPreference.Key>??(v99);
    v98 = *v64 & *v89;
  }

  v102 = *&v89[*(v98 + 280)];
  v103 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>();
  *(v102 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v102 + 40) = v103;
  swift_unknownObjectWeakAssign();

  v104 = FocusBridge.host.getter();
  if (v104)
  {
    v106 = v104;
    v107 = v105;
    v108 = swift_getObjectType();
    (*(*(*(v107 + 8) + 8) + 8))(v108);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v109 = *((*v64 & *v89) + 0x120);
  *(*&v89[v109] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v110 = *&v89[v109];
  v111 = &v110[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v112 = *(v111 + 1);
  v113 = swift_getObjectType();
  v114 = *(*(v112 + 16) + 8);
  v115 = v110;
  LOBYTE(v113) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v113, v114);
  swift_unknownObjectRelease();
  if (v113)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v89[*((*v64 & *v89) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v116 = v89;
  GraphHost.addPreference<A>(_:)();
  *(*&v116[*((*v64 & *v116) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v116[*((*v64 & *v116) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v117 = *((*v64 & *v116) + 0x168);
  *(*&v116[v117] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();

  v118 = *&v116[v117];
  v119 = &v118[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v120 = *(v119 + 1);
  v121 = swift_getObjectType();
  v122 = *(v120 + 8);
  v123 = *(v122 + 8);
  v124 = v118;
  v123(v121, v122);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v125 = [v116 traitCollection];

  v126 = [v125 userInterfaceIdiom];
  v127 = MEMORY[0x1E69E7D40];
  if (v126 == 1 || (v128 = [v116 traitCollection], v129 = objc_msgSend(v128, sel_userInterfaceIdiom), v128, v129 == 6))
  {
    v130 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v130[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v91;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v131 = *((*v127 & *v116) + 0x178);
    v132 = *&v116[v131];
    *&v116[v131] = v130;
  }

  v133 = *&v89[v179];
  v134 = &v133[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v136 = v182;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v137 = *(v134 + 1);
  v138 = swift_getObjectType();
  v139 = *(*(v137 + 16) + 8);
  v140 = v133;
  LOBYTE(v138) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v138, v139);
  swift_unknownObjectRelease();
  v141 = v185;
  if (v138)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v142 = *((*v127 & *v116) + 0x1A0);
  *(*&v116[v142] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v91;
  v143 = swift_unknownObjectWeakAssign();
  v144 = *&v116[v142];
  MEMORY[0x1EEE9AC00](v143);
  *(&v173 - 2) = v144;
  *(&v173 - 1) = v141;
  v145 = v116;
  v146 = v144;
  static Update.ensure<A>(_:)();

  v147 = *((*v127 & *v145) + 0x78);
  v148 = *&v145[v147];
  v149 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v148 + 24) = v149;
  swift_unknownObjectWeakAssign();

  v150 = *&v145[v147];
  v151 = *((*v127 & *v145) + 0xE0);
  swift_beginAccess();
  *(v150 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v152 = *&v145[v151];
  v153 = *(v152 + 32);

  if (v153)
  {
    [v145 addGestureRecognizer_];
  }

  [v145 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v154 = [v145 window];
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = [v156 viewIfLoaded];

        if (v157)
        {

          if (v157 == v145)
          {
            v200 = 0;
            v187[0] = 0;
            v158 = getpid();
            LODWORD(v179) = v158;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v186 = v158;
            v159 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v159);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v206 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v161;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_15;
            v162 = _Block_copy(&aBlock);

            v163 = String.utf8CString.getter();

            notify_register_dispatch((v163 + 32), &v200, v160, v162);

            _Block_release(v162);

            v164 = static OS_dispatch_queue.main.getter();
            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v166 = swift_allocObject();
            *(v166 + 16) = v179;
            *(v166 + 24) = v165;
            *&v206 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v166;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_22;
            v167 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v187, v164, v167);
            _Block_release(v167);

            v168 = &v145[*((*v127 & *v145) + 0xE8)];
            *v168 = v200 | (v187[0] << 32);
            v168[8] = 0;
          }
        }
      }
    }
  }

  v169 = [objc_opt_self() defaultCenter];
  [v169 addObserver:v145 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v170 = one-time initialization token for didUpdateListLayout;
  v171 = v145;
  if (v170 != -1)
  {
    swift_once();
  }

  [v169 addObserver:v171 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v201 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v200, v171);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v180 + 8))(v183, v181);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v180 + 8))(v183, v181);
  }

  static Update.end()();
  outlined destroy of ModifiedContent<TableRowView, CollectionViewCellModifier>(v136);
  return v171;
}

{
  v2 = v1;
  v183 = a1;
  v209 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v177 = *(v4 - 8);
  v178 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v185 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v180 = &v174 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v181 = *(v8 - 8);
  v182 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v174 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v179 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v191.receiver = v21;
  v191.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v191, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v190.receiver = v26;
  v190.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v190, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v174 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v175 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = sub_18C0A9F94(v183, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v194, v45);
  v46 = v194;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  LOBYTE(v192) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, MEMORY[0x1E697DB30]);
  v47 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v186 = *(v47 + 88);

  v48 = v184;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v185;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v180;
  specialized OptionSet<>.insert(_:)(v180, v50);
  v53 = *(v177 + 8);
  v54 = v50;
  v55 = v178;
  v53(v54, v178);
  v53(v52, v55);
  v56 = v51(&v194, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v185;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v180;
    specialized OptionSet<>.insert(_:)(v180, v59);
    v53(v59, v55);
    v53(v61, v55);
    v60(&v194, 0);
    v58 = v184;
  }

  (*(v181 + 16))(v176, v58, v182);
  v62 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v178 = v47;
  v63 = UIHostingViewBase.init(viewGraph:configuration:)();
  v64 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v63;
  v65 = v186;

  *&v194 = specialized FocusViewGraph.init(graph:)(v66);
  *(&v194 + 1) = v67;
  LOWORD(v195) = v68 & 0x101;
  BYTE2(v195) = v69 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v194 = 0;
  WORD4(v194) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v70 = *MEMORY[0x1E698D3F8];
    v192 = 0uLL;
    *v193 = v70;
    memset(&v193[8], 0, 64);
    *&v193[72] = v174;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v197 = *&v193[32];
    v198 = *&v193[48];
    v199 = *&v193[64];
    v200 = *&v193[80];
    v194 = v192;
    v195 = *v193;
    v196 = *&v193[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v194);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v71, &v192);
  aBlock = v192;
  v206 = *v193;
  v207 = *&v193[16];
  v208 = *&v193[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v194 = aBlock;
  v195 = v206;
  v196 = v207;
  *&v197 = v208;
  outlined destroy of AccessibilityViewGraph(&v194);
  v72 = *(v2 + v175);
  v73 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v74 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v72;
  DWORD2(aBlock) = v74;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v75 = MEMORY[0x1E69E7CC0];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v206 + 1) = &type metadata for HoverEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v75);
  *(&v206 + 1) = &type metadata for KeyEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v77;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v64 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v78);
  type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0);
  v189.receiver = v2;
  v189.super_class = v79;
  v80 = objc_msgSendSuper2(&v189, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v81 = v80;
  ViewGraph.append<A>(feature:)();
  v82 = outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph);
  (*((*v64 & *v81) + 0x5C0))(v82);
  v83 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v84 = aBlock;
  v185 = v80;
  if (aBlock != 1)
  {
    v85 = *(&aBlock + 1);
    v86 = v206;
    v87 = v207;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v88);
    }

    *&aBlock = v84;
    *(&aBlock + 1) = v85;
    v206 = v86;
    LOBYTE(v207) = v87 & 1;
    RepresentableContextValues.environment.getter();
    v203 = v204;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v84, v85, v86, *(&v86 + 1), v87);
    v65 = v186;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v89 = v81;

  v90 = *&v89[*((*v64 & *v89) + 0x150)];
  v91 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v90 + 40) = v91;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v180 = *((*v64 & *v89) + 0x188);
  *(*&v89[v180] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v92 = *&v89[*((*v64 & *v89) + 0x100)];
  *(v92 + *((*v92 & *v64) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = *&v89[*((*v64 & *v89) + 0x108)];
  *(v93 + *((*v93 & *v64) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  v94 = GraphHost.addPreference<A>(_:)();
  v96 = specialized _UIHostingView.sheetBridge.getter(v94, v95);
  if (v96)
  {
    *&v96[direct field offset for SheetBridge.host + 8] = v91;
    v97 = v96;
    swift_unknownObjectWeakAssign();
  }

  v98 = *v64 & *v89;
  v99 = *&v89[*(v98 + 0x110)];
  if (v99)
  {
    v100 = *((*v99 & *v64) + 0x210);
    v101 = v99;
    v100(v65);
    outlined consume of SheetBridge<SheetPreference.Key>??(v99);
    v98 = *v64 & *v89;
  }

  v102 = *&v89[*(v98 + 280)];
  v103 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v102 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v102 + 40) = v103;
  swift_unknownObjectWeakAssign();

  v104 = FocusBridge.host.getter();
  if (v104)
  {
    v106 = v104;
    v107 = v105;
    v108 = swift_getObjectType();
    (*(*(*(v107 + 8) + 8) + 8))(v108);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v109 = *((*v64 & *v89) + 0x120);
  *(*&v89[v109] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v110 = *&v89[v109];
  v111 = &v110[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v112 = *(v111 + 1);
  v113 = swift_getObjectType();
  v114 = *(*(v112 + 16) + 8);
  v115 = v110;
  LOBYTE(v113) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v113, v114);
  swift_unknownObjectRelease();
  if (v113)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v89[*((*v64 & *v89) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v116 = v89;
  GraphHost.addPreference<A>(_:)();
  *(*&v116[*((*v64 & *v116) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v116[*((*v64 & *v116) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v117 = *((*v64 & *v116) + 0x168);
  *(*&v116[v117] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();

  v118 = *&v116[v117];
  v119 = &v118[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v120 = *(v119 + 1);
  v121 = swift_getObjectType();
  v122 = *(v120 + 8);
  v123 = *(v122 + 8);
  v124 = v118;
  v123(v121, v122);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v125 = [v116 traitCollection];

  v126 = [v125 userInterfaceIdiom];
  if (v126 == 1 || (v127 = [v116 traitCollection], v128 = objc_msgSend(v127, sel_userInterfaceIdiom), v127, v128 == 6))
  {
    v129 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v129[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v91;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v130 = *((*MEMORY[0x1E69E7D40] & *v116) + 0x178);
    v131 = *&v116[v130];
    *&v116[v130] = v129;
  }

  v132 = *&v89[v180];
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v135 = v183;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v136 = *(v133 + 1);
  v137 = swift_getObjectType();
  v138 = *(*(v136 + 16) + 8);
  v139 = v132;
  LOBYTE(v137) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v137, v138);
  swift_unknownObjectRelease();
  v140 = v186;
  if (v137)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = MEMORY[0x1E69E7D40];
  v142 = *((*MEMORY[0x1E69E7D40] & *v116) + 0x1A0);
  *(*&v116[v142] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v91;
  v143 = swift_unknownObjectWeakAssign();
  v144 = *&v116[v142];
  MEMORY[0x1EEE9AC00](v143);
  *(&v174 - 2) = v144;
  *(&v174 - 1) = v140;
  v145 = v116;
  v146 = v144;
  static Update.ensure<A>(_:)();

  v147 = *((*v141 & *v145) + 0x78);
  v148 = *&v145[v147];
  v149 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v148 + 24) = v149;
  swift_unknownObjectWeakAssign();

  v150 = *&v145[v147];
  v151 = *((*v141 & *v145) + 0xE0);
  swift_beginAccess();
  *(v150 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v152 = *&v145[v151];
  v153 = *(v152 + 32);

  if (v153)
  {
    [v145 addGestureRecognizer_];
  }

  [v145 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v154 = [v145 window];
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = [v156 viewIfLoaded];

        if (v157)
        {

          if (v157 == v145)
          {
            v201 = 0;
            v188[0] = 0;
            v158 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v187 = v158;
            v159 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v159);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v207 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v161;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_270;
            v162 = _Block_copy(&aBlock);

            v163 = String.utf8CString.getter();

            notify_register_dispatch((v163 + 32), &v201, v160, v162);

            _Block_release(v162);

            v164 = static OS_dispatch_queue.main.getter();
            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v166 = swift_allocObject();
            *(v166 + 16) = v158;
            *(v166 + 24) = v165;
            *&v207 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v166;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_277;
            v167 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v188, v164, v167);
            _Block_release(v167);

            v168 = &v145[*((*MEMORY[0x1E69E7D40] & *v145) + 0xE8)];
            *v168 = v201 | (v188[0] << 32);
            v168[8] = 0;
          }
        }
      }
    }
  }

  v169 = [objc_opt_self() defaultCenter];
  [v169 addObserver:v145 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v170 = one-time initialization token for didUpdateListLayout;
  v171 = v145;
  if (v170 != -1)
  {
    swift_once();
  }

  [v169 addObserver:v171 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v172 = v184;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v202 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v201, v171);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v181 + 8))(v172, v182);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v181 + 8))(v172, v182);
  }

  static Update.end()();
  outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(v135, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
  return v171;
}

{
  v2 = v1;
  v213 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v190 = type metadata accessor for UIHostingViewBase.Options();
  v182 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v184 = &v177 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v187 = *(v8 - 8);
  v188 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v181 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v186 = &v177 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v183 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v195.receiver = v21;
  v195.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v195, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v194.receiver = v26;
  v194.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v194, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v177 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v179 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = v2 + *((*v12 & *v2) + 0x60);
  v45 = *(a1 + 16);
  *v44 = *a1;
  *(v44 + 1) = v45;
  *(v44 + 10) = *(a1 + 80);
  v46 = *(a1 + 64);
  *(v44 + 3) = *(a1 + 48);
  *(v44 + 4) = v46;
  *(v44 + 2) = *(a1 + 32);
  v178 = a1;
  v47 = outlined init with copy of BoundInputsView(a1, &v198);
  MEMORY[0x18D00ABE0](v47);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v48 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v49 = *(ObjectType + 1384);
  v180 = ObjectType;
  v49(&v198, v48);
  v50 = v198;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v196) = v50;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v185 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v51 = *(v185 + 88);

  v52 = v186;
  v53 = UIHostingViewBase.Configuration.init()();
  v54 = v189;
  MEMORY[0x18D001BC0](v53);
  v55 = UIHostingViewBase.Configuration.options.modify();
  v56 = v184;
  specialized OptionSet<>.insert(_:)(v184, v54);
  v57 = *(v182 + 8);
  v58 = v190;
  v57(v54, v190);
  v57(v56, v58);
  v59 = v55(&v198, 0);
  v60 = v52;
  if (((*(v180 + 1408))(v59) & 1) == 0)
  {
    v61 = v52;
    v62 = v189;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v63 = UIHostingViewBase.Configuration.options.modify();
    v64 = v184;
    specialized OptionSet<>.insert(_:)(v184, v62);
    v65 = v62;
    v60 = v61;
    v66 = v190;
    v57(v65, v190);
    v57(v64, v66);
    v63(&v198, 0);
  }

  (*(v187 + 16))(v181, v60, v188);
  v67 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v198 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v198 + 1) = v69;
  LOWORD(v199) = v70 & 0x101;
  BYTE2(v199) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v198 = 0;
  WORD4(v198) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v196 = 0uLL;
    *v197 = v72;
    memset(&v197[8], 0, 64);
    *&v197[72] = v177;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v201 = *&v197[32];
    v202 = *&v197[48];
    v203 = *&v197[64];
    v204 = *&v197[80];
    v198 = v196;
    v199 = *v197;
    v200 = *&v197[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v198);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.EnableVFDFeature, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v73, &v196);
  aBlock = v196;
  v210 = *v197;
  v211 = *&v197[16];
  v212 = *&v197[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v198 = aBlock;
  v199 = v210;
  v200 = v211;
  *&v201 = v212;
  outlined destroy of AccessibilityViewGraph(&v198);
  v74 = *(v2 + v179);
  v75 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v76 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v74;
  DWORD2(aBlock) = v76;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v77 = MEMORY[0x1E69E7CC0];
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v210 + 1) = &type metadata for HoverEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v78;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v210 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v210 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v77);
  *(&v210 + 1) = &type metadata for KeyEventDispatcher;
  *&v211 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v81 = UIKitEventBindingBridge.init(eventBindingManager:)(v80);
  v82 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v81;
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
  v193.receiver = v2;
  v193.super_class = v83;
  v84 = v82;
  v85 = objc_msgSendSuper2(&v193, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.HostViewGraph, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v86 = v85;
  ViewGraph.append<A>(feature:)();
  v87 = outlined destroy of _UIHostingView<BoundInputsView>.HostViewGraph(&aBlock);
  (*((*v84 & *v86) + 0x5C0))(v87);
  v88 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v89 = aBlock;
  v189 = v85;
  v190 = v51;
  if (aBlock != 1)
  {
    v90 = *(&aBlock + 1);
    v91 = v210;
    v92 = v211;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v93);
    }

    *&aBlock = v89;
    *(&aBlock + 1) = v90;
    v210 = v91;
    LOBYTE(v211) = v92 & 1;
    RepresentableContextValues.environment.getter();
    v207 = v208;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v89, v90, v91, *(&v91 + 1), v92);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v94 = v86;

  v95 = *&v94[*((*v84 & *v94) + 0x150)];
  v96 = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
  *(v95 + 40) = v96;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v184 = *((*v84 & *v94) + 0x188);
  *(*&v94[v184] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  v97 = *&v94[*((*v84 & *v94) + 0x100)];
  *(v97 + *((*v97 & *v84) + 0x60) + 8) = v96;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v98 = *&v94[*((*v84 & *v94) + 0x108)];
  *(v98 + *((*v98 & *v84) + 0x60) + 8) = v96;
  swift_unknownObjectWeakAssign();

  v99 = GraphHost.addPreference<A>(_:)();
  v101 = specialized _UIHostingView.sheetBridge.getter(v99, v100);
  if (v101)
  {
    *&v101[direct field offset for SheetBridge.host + 8] = v96;
    v102 = v101;
    swift_unknownObjectWeakAssign();
  }

  v103 = *v84 & *v94;
  v104 = *&v94[*(v103 + 0x110)];
  if (v104)
  {
    v105 = *((*v104 & *v84) + 0x210);
    v106 = v104;
    v105(v190);
    outlined consume of SheetBridge<SheetPreference.Key>??(v104);
    v103 = *v84 & *v94;
  }

  v107 = *&v94[*(v103 + 280)];
  v108 = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
  *(v107 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v107 + 40) = v108;
  swift_unknownObjectWeakAssign();

  v109 = FocusBridge.host.getter();
  if (v109)
  {
    v111 = v109;
    v112 = v110;
    v113 = swift_getObjectType();
    (*(*(*(v112 + 8) + 8) + 8))(v113);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v114 = *((*v84 & *v94) + 0x120);
  *(*&v94[v114] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  v115 = *&v94[v114];
  v116 = &v115[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v117 = *(v116 + 1);
  v118 = swift_getObjectType();
  v119 = *(*(v117 + 16) + 8);
  v120 = v115;
  LOBYTE(v118) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v118, v119);
  swift_unknownObjectRelease();
  if (v118)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v94[*((*v84 & *v94) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  v121 = v94;
  GraphHost.addPreference<A>(_:)();
  *(*&v121[*((*v84 & *v121) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v121[*((*v84 & *v121) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v122 = *((*v84 & *v121) + 0x168);
  *(*&v121[v122] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();

  v123 = *&v121[v122];
  v124 = &v123[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v125 = *(v124 + 1);
  v126 = swift_getObjectType();
  v127 = *(v125 + 8);
  v128 = *(v127 + 8);
  v129 = v123;
  v128(v126, v127);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v130 = [v121 traitCollection];

  v131 = [v130 userInterfaceIdiom];
  v132 = MEMORY[0x1E69E7D40];
  if (v131 == 1 || (v133 = [v121 traitCollection], v134 = objc_msgSend(v133, sel_userInterfaceIdiom), v133, v134 == 6))
  {
    v135 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v135[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v96;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v136 = *((*v132 & *v121) + 0x178);
    v137 = *&v121[v136];
    *&v121[v136] = v135;
  }

  v138 = *&v94[v184];
  v139 = &v138[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v140 = *(v139 + 1);
  v141 = v138;
  outlined destroy of BoundInputsView(v178);
  v142 = swift_getObjectType();
  v143 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v142, *(*(v140 + 16) + 8));
  swift_unknownObjectRelease();
  v144 = v190;
  if (v143)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v145 = *((*v132 & *v121) + 0x1A0);
  *(*&v121[v145] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v96;
  v146 = swift_unknownObjectWeakAssign();
  v147 = *&v121[v145];
  MEMORY[0x1EEE9AC00](v146);
  *(&v177 - 2) = v147;
  *(&v177 - 1) = v144;
  v148 = v121;
  v149 = v147;
  static Update.ensure<A>(_:)();

  v150 = *((*v132 & *v148) + 0x78);
  v151 = *&v148[v150];
  v152 = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v151 + 24) = v152;
  swift_unknownObjectWeakAssign();

  v153 = *&v148[v150];
  v154 = *((*v132 & *v148) + 0xE0);
  swift_beginAccess();
  *(v153 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v155 = *&v148[v154];
  v156 = *(v155 + 32);

  if (v156)
  {
    [v148 addGestureRecognizer_];
  }

  [v148 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v157 = [v148 window];
    if (v157)
    {
      v158 = v157;
      v159 = [v157 rootViewController];

      if (v159)
      {
        v160 = [v159 viewIfLoaded];

        if (v160)
        {

          if (v160 == v148)
          {
            v205 = 0;
            v192[0] = 0;
            v161 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v191 = v161;
            v162 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v162);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v211 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v211 + 1) = v164;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v210 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v210 + 1) = &block_descriptor_169;
            v165 = _Block_copy(&aBlock);

            v166 = String.utf8CString.getter();

            notify_register_dispatch((v166 + 32), &v205, v163, v165);

            _Block_release(v165);

            v167 = static OS_dispatch_queue.main.getter();
            v168 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v169 = swift_allocObject();
            *(v169 + 16) = v161;
            *(v169 + 24) = v168;
            *&v211 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v211 + 1) = v169;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v210 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v210 + 1) = &block_descriptor_176;
            v170 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v192, v167, v170);
            _Block_release(v170);

            v171 = &v148[*((*v132 & *v148) + 0xE8)];
            *v171 = v205 | (v192[0] << 32);
            v171[8] = 0;
          }
        }
      }
    }
  }

  v172 = [objc_opt_self() defaultCenter];
  [v172 addObserver:v148 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v173 = one-time initialization token for didUpdateListLayout;
  v174 = v148;
  if (v173 != -1)
  {
    swift_once();
  }

  [v172 addObserver:v174 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v175 = v186;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v206 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v205, v174);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v187 + 8))(v175, v188);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v187 + 8))(v175, v188);
  }

  static Update.end()();
  return v174;
}

{
  v2 = v1;
  v182 = a1;
  v208 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v176 = *(v4 - 8);
  v177 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v185 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v183 = &v173 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v180 = *(v8 - 8);
  v181 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v173 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v178 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v190.receiver = v21;
  v190.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v190, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v189.receiver = v26;
  v189.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v189, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v174 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of TabItem.RootView(v182, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v193, v45);
  v46 = v193;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v191) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView();
  v179 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v179 + 88);

  v48 = v184;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v185;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v183;
  specialized OptionSet<>.insert(_:)(v183, v50);
  v53 = *(v176 + 8);
  v54 = v50;
  v55 = v177;
  v53(v54, v177);
  v53(v52, v55);
  v56 = v51(&v193, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v185;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v176 = UIHostingViewBase.Configuration.options.modify();
    v60 = v183;
    specialized OptionSet<>.insert(_:)(v183, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v176)(&v193, 0);
  }

  (*(v180 + 16))(v175, v58, v181);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v193 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v193 + 1) = v65;
  LOWORD(v194) = v66 & 0x101;
  BYTE2(v194) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v193 = 0;
  WORD4(v193) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v191 = 0uLL;
    *v192 = v68;
    memset(&v192[8], 0, 64);
    *&v192[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v196 = *&v192[32];
    v197 = *&v192[48];
    v198 = *&v192[64];
    v199 = *&v192[80];
    v193 = v191;
    v194 = *v192;
    v195 = *&v192[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v193);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v191);
  aBlock = v191;
  v205 = *v192;
  v206 = *&v192[16];
  v207 = *&v192[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v193 = aBlock;
  v194 = v205;
  v195 = v206;
  *&v196 = v207;
  outlined destroy of AccessibilityViewGraph(&v193);
  v70 = *(v2 + v174);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v205 + 1) = &type metadata for HoverEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v205 + 1) = &type metadata for KeyEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
  v188.receiver = v2;
  v188.super_class = v77;
  v78 = objc_msgSendSuper2(&v188, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.HostViewGraph, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = outlined destroy of _UIHostingView<TabItem.RootView>.HostViewGraph(&aBlock);
  v183 = v78;
  (*((*v63 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  v185 = v47;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v205;
    v85 = v206;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v205 = v84;
    LOBYTE(v206) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v202 = v203;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
    v47 = v185;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *&v87[*((*v63 & *v87) + 0x150)];
  v90 = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>(v89);
  *(v88 + 40) = v90;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v178 = *((*v63 & *v87) + 0x188);
  *(*&v87[v178] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v91 = *&v87[*((*v63 & *v87) + 0x100)];
  *(v91 + *((*v91 & *v63) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v92 = *&v87[*((*v63 & *v87) + 0x108)];
  *(v92 + *((*v92 & *v63) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  v93 = GraphHost.addPreference<A>(_:)();
  v95 = specialized _UIHostingView.sheetBridge.getter(v93, v94);
  if (v95)
  {
    *&v95[direct field offset for SheetBridge.host + 8] = v90;
    v96 = v95;
    swift_unknownObjectWeakAssign();
  }

  v97 = *v63 & *v87;
  v98 = *&v87[*(v97 + 0x110)];
  if (v98)
  {
    v99 = *((*v98 & *v63) + 0x210);
    v100 = v98;
    v99(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v98);
    v97 = *v63 & *v87;
  }

  v101 = *&v87[*(v97 + 280)];
  v102 = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
  *(v101 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v101 + 40) = v102;
  swift_unknownObjectWeakAssign();

  v103 = FocusBridge.host.getter();
  if (v103)
  {
    v105 = v103;
    v106 = v104;
    v107 = swift_getObjectType();
    (*(*(*(v106 + 8) + 8) + 8))(v107);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v108 = *((*v63 & *v87) + 0x120);
  *(*&v87[v108] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v109 = *&v87[v108];
  v110 = &v109[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v111 = *(v110 + 1);
  v112 = swift_getObjectType();
  v113 = *(*(v111 + 16) + 8);
  v114 = v109;
  LOBYTE(v112) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v112, v113);
  swift_unknownObjectRelease();
  if (v112)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v87[*((*v63 & *v87) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v115 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*&v115[*((*v63 & *v115) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v115[*((*v63 & *v115) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v116 = *((*v63 & *v115) + 0x168);
  *(*&v115[v116] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();

  v117 = *&v115[v116];
  v118 = &v117[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v119 = *(v118 + 1);
  v120 = swift_getObjectType();
  v121 = *(v119 + 8);
  v122 = *(v121 + 8);
  v123 = v117;
  v122(v120, v121);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v124 = [v115 traitCollection];

  v125 = [v124 userInterfaceIdiom];
  if (v125 == 1 || (v126 = [v115 traitCollection], v127 = objc_msgSend(v126, sel_userInterfaceIdiom), v126, v127 == 6))
  {
    v128 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v128[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v90;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v129 = *((*MEMORY[0x1E69E7D40] & *v115) + 0x178);
    v130 = *&v115[v129];
    *&v115[v129] = v128;
  }

  v131 = *&v87[v178];
  v132 = &v131[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v134 = v182;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v135 = *(v132 + 1);
  v136 = swift_getObjectType();
  v137 = *(*(v135 + 16) + 8);
  v138 = v131;
  LOBYTE(v136) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v136, v137);
  swift_unknownObjectRelease();
  v139 = v185;
  if (v136)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v140 = MEMORY[0x1E69E7D40];
  v141 = *((*MEMORY[0x1E69E7D40] & *v115) + 0x1A0);
  *(*&v115[v141] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v90;
  v142 = swift_unknownObjectWeakAssign();
  v143 = *&v115[v141];
  MEMORY[0x1EEE9AC00](v142);
  *(&v173 - 2) = v143;
  *(&v173 - 1) = v139;
  v144 = v115;
  v145 = v143;
  static Update.ensure<A>(_:)();

  v146 = *((*v140 & *v144) + 0x78);
  v147 = *&v144[v146];
  v148 = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *&v144[v146];
  v150 = *((*v140 & *v144) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *&v144[v150];
  v152 = *(v151 + 32);
  v153 = v184;

  if (v152)
  {
    [v144 addGestureRecognizer_];
  }

  [v144 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v154 = [v144 window];
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = [v156 viewIfLoaded];

        if (v157)
        {

          if (v157 == v144)
          {
            v200 = 0;
            v187[0] = 0;
            v158 = getpid();
            LODWORD(v178) = v158;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v186 = v158;
            v159 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v159);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v206 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v161;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_141;
            v162 = _Block_copy(&aBlock);

            v163 = String.utf8CString.getter();
            v153 = v184;

            notify_register_dispatch((v163 + 32), &v200, v160, v162);

            _Block_release(v162);

            v164 = static OS_dispatch_queue.main.getter();
            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v166 = swift_allocObject();
            *(v166 + 16) = v178;
            *(v166 + 24) = v165;
            *&v206 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v166;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_148;
            v167 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v187, v164, v167);
            _Block_release(v167);

            v168 = &v144[*((*MEMORY[0x1E69E7D40] & *v144) + 0xE8)];
            *v168 = v200 | (v187[0] << 32);
            v168[8] = 0;
          }
        }
      }
    }
  }

  v169 = [objc_opt_self() defaultCenter];
  [v169 addObserver:v144 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v170 = one-time initialization token for didUpdateListLayout;
  v171 = v144;
  if (v170 != -1)
  {
    swift_once();
  }

  [v169 addObserver:v171 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v201 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v200, v171);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v180 + 8))(v153, v181);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v180 + 8))(v153, v181);
  }

  static Update.end()();
  outlined destroy of TabItem.RootView(v134);
  return v171;
}

{
  v2 = v1;
  v181 = a1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v175 = *(v4 - 8);
  v176 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v172 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v174 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v172 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v177 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v189.receiver = v21;
  v189.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v189, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v188.receiver = v26;
  v188.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v188, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v172 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v173 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of DocumentGroupsIntroRootView(v181, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v192, v45);
  v46 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v190) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView();
  v178 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v178 + 88);

  v48 = v183;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v184;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v182;
  specialized OptionSet<>.insert(_:)(v182, v50);
  v53 = *(v175 + 8);
  v54 = v50;
  v55 = v176;
  v53(v54, v176);
  v53(v52, v55);
  v56 = v51(&v192, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v184;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v175 = UIHostingViewBase.Configuration.options.modify();
    v60 = v182;
    specialized OptionSet<>.insert(_:)(v182, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v175)(&v192, 0);
  }

  (*(v179 + 16))(v174, v58, v180);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v192 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v192 + 1) = v65;
  LOWORD(v193) = v66 & 0x101;
  BYTE2(v193) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v68;
    memset(&v191[8], 0, 64);
    *&v191[72] = v172;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v70 = *(v2 + v173);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
  v187.receiver = v2;
  v187.super_class = v77;
  v78 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = outlined destroy of _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph(&aBlock);
  v182 = v78;
  (*((*v63 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  v184 = v47;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v204;
    v85 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v204 = v84;
    LOBYTE(v205) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
    v47 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *&v87[*((*v63 & *v87) + 0x150)];
  v89 = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>();
  *(v88 + 40) = v89;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v177 = *((*v63 & *v87) + 0x188);
  *(*&v87[v177] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v90 = *&v87[*((*v63 & *v87) + 0x100)];
  *(v90 + *((*v90 & *v63) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = *&v87[*((*v63 & *v87) + 0x108)];
  *(v91 + *((*v91 & *v63) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  v92 = GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter(v92, v93);
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v89;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v63 & *v87;
  v97 = *&v87[*(v96 + 0x110)];
  if (v97)
  {
    v98 = *((*v97 & *v63) + 0x210);
    v99 = v97;
    v98(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v63 & *v87;
  }

  v100 = *&v87[*(v96 + 280)];
  v101 = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>();
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v63 & *v87) + 0x120);
  *(*&v87[v107] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v108 = *&v87[v107];
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v87[*((*v63 & *v87) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v114 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v63 & *v114) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v63 & *v114) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v63 & *v114) + 0x168);
  *(*&v114[v115] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();

  v116 = *&v114[v115];
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  if (v124 == 1 || (v125 = [v114 traitCollection], v126 = objc_msgSend(v125, sel_userInterfaceIdiom), v125, v126 == 6))
  {
    v127 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v127[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v89;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v128 = *((*MEMORY[0x1E69E7D40] & *v114) + 0x178);
    v129 = *&v114[v128];
    *&v114[v128] = v127;
  }

  v130 = *&v87[v177];
  v131 = &v130[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v133 = v181;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v134 = *(v131 + 1);
  v135 = swift_getObjectType();
  v136 = *(*(v134 + 16) + 8);
  v137 = v130;
  LOBYTE(v135) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, v136);
  swift_unknownObjectRelease();
  v138 = v184;
  if (v135)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v139 = MEMORY[0x1E69E7D40];
  v140 = *((*MEMORY[0x1E69E7D40] & *v114) + 0x1A0);
  *(*&v114[v140] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v89;
  v141 = swift_unknownObjectWeakAssign();
  v142 = *&v114[v140];
  MEMORY[0x1EEE9AC00](v141);
  *(&v172 - 2) = v142;
  *(&v172 - 1) = v138;
  v143 = v114;
  v144 = v142;
  static Update.ensure<A>(_:)();

  v145 = *((*v139 & *v143) + 0x78);
  v146 = *&v143[v145];
  v147 = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v146 + 24) = v147;
  swift_unknownObjectWeakAssign();

  v148 = *&v143[v145];
  v149 = *((*v139 & *v143) + 0xE0);
  swift_beginAccess();
  *(v148 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v150 = *&v143[v149];
  v151 = *(v150 + 32);
  v152 = v183;

  if (v151)
  {
    [v143 addGestureRecognizer_];
  }

  [v143 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v143 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v143)
          {
            v199 = 0;
            v186[0] = 0;
            v157 = getpid();
            LODWORD(v177) = v157;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_85;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();
            v152 = v183;

            notify_register_dispatch((v162 + 32), &v199, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v177;
            *(v165 + 24) = v164;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_92;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v163, v166);
            _Block_release(v166);

            v167 = &v143[*((*MEMORY[0x1E69E7D40] & *v143) + 0xE8)];
            *v167 = v199 | (v186[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v143 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v143;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v179 + 8))(v152, v180);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v179 + 8))(v152, v180);
  }

  static Update.end()();
  outlined destroy of DocumentGroupsIntroRootView(v133);
  return v170;
}

{
  v2 = v1;
  v183 = a1;
  v209 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v177 = *(v4 - 8);
  v178 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v186 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v184 = &v174 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v181 = *(v8 - 8);
  v182 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v185 = &v174 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v179 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v191.receiver = v21;
  v191.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v191, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v190.receiver = v26;
  v190.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v190, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v174 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v175 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of _ViewList_View(v183, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v194, v45);
  v46 = v194;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v192) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v180 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v180 + 88);

  v48 = v185;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v186;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v184;
  specialized OptionSet<>.insert(_:)(v184, v50);
  v53 = *(v177 + 8);
  v54 = v50;
  v55 = v178;
  v53(v54, v178);
  v53(v52, v55);
  v56 = v51(&v194, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v186;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v177 = UIHostingViewBase.Configuration.options.modify();
    v60 = v184;
    specialized OptionSet<>.insert(_:)(v184, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v177)(&v194, 0);
  }

  (*(v181 + 16))(v176, v58, v182);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v194 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v194 + 1) = v65;
  LOWORD(v195) = v66 & 0x101;
  BYTE2(v195) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v194 = 0;
  WORD4(v194) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v192 = 0uLL;
    *v193 = v68;
    memset(&v193[8], 0, 64);
    *&v193[72] = v174;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v197 = *&v193[32];
    v198 = *&v193[48];
    v199 = *&v193[64];
    v200 = *&v193[80];
    v194 = v192;
    v195 = *v193;
    v196 = *&v193[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v194);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.EnableVFDFeature, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v192);
  aBlock = v192;
  v206 = *v193;
  v207 = *&v193[16];
  v208 = *&v193[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v194 = aBlock;
  v195 = v206;
  v196 = v207;
  *&v197 = v208;
  outlined destroy of AccessibilityViewGraph(&v194);
  v70 = *(v2 + v175);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v206 + 1) = &type metadata for HoverEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v206 + 1) = &type metadata for KeyEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  v77 = MEMORY[0x1E697D9F0];
  v78 = MEMORY[0x1E697D9E8];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
  v189.receiver = v2;
  v189.super_class = v79;
  v80 = objc_msgSendSuper2(&v189, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.HostViewGraph, v77, v78, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v81 = v80;
  ViewGraph.append<A>(feature:)();
  v82 = outlined destroy of _UIHostingView<_ViewList_View>.HostViewGraph(&aBlock);
  v184 = v80;
  (*((*v63 & *v81) + 0x5C0))(v82);
  v83 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v84 = aBlock;
  v186 = v47;
  if (aBlock != 1)
  {
    v85 = *(&aBlock + 1);
    v86 = v206;
    v87 = v207;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v88);
    }

    *&aBlock = v84;
    *(&aBlock + 1) = v85;
    v206 = v86;
    LOBYTE(v207) = v87 & 1;
    RepresentableContextValues.environment.getter();
    v203 = v204;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v84, v85, v86, *(&v86 + 1), v87);
    v47 = v186;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v89 = v81;

  v90 = *&v89[*((*v63 & *v89) + 0x150)];
  v91 = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>();
  *(v90 + 40) = v91;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v179 = *((*v63 & *v89) + 0x188);
  *(*&v89[v179] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v92 = *&v89[*((*v63 & *v89) + 0x100)];
  *(v92 + *((*v92 & *v63) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = *&v89[*((*v63 & *v89) + 0x108)];
  *(v93 + *((*v93 & *v63) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  v94 = GraphHost.addPreference<A>(_:)();
  v96 = specialized _UIHostingView.sheetBridge.getter(v94, v95);
  if (v96)
  {
    *&v96[direct field offset for SheetBridge.host + 8] = v91;
    v97 = v96;
    swift_unknownObjectWeakAssign();
  }

  v98 = *v63 & *v89;
  v99 = *&v89[*(v98 + 0x110)];
  if (v99)
  {
    v100 = *((*v99 & *v63) + 0x210);
    v101 = v99;
    v100(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v99);
    v98 = *v63 & *v89;
  }

  v102 = *&v89[*(v98 + 280)];
  v103 = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>();
  *(v102 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v102 + 40) = v103;
  swift_unknownObjectWeakAssign();

  v104 = FocusBridge.host.getter();
  if (v104)
  {
    v106 = v104;
    v107 = v105;
    v108 = swift_getObjectType();
    (*(*(*(v107 + 8) + 8) + 8))(v108);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v109 = *((*v63 & *v89) + 0x120);
  *(*&v89[v109] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v110 = *&v89[v109];
  v111 = &v110[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v112 = *(v111 + 1);
  v113 = swift_getObjectType();
  v114 = *(*(v112 + 16) + 8);
  v115 = v110;
  LOBYTE(v113) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v113, v114);
  swift_unknownObjectRelease();
  if (v113)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v89[*((*v63 & *v89) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v116 = v89;
  GraphHost.addPreference<A>(_:)();
  *(*&v116[*((*v63 & *v116) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v116[*((*v63 & *v116) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v117 = *((*v63 & *v116) + 0x168);
  *(*&v116[v117] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();

  v118 = *&v116[v117];
  v119 = &v118[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v120 = *(v119 + 1);
  v121 = swift_getObjectType();
  v122 = *(v120 + 8);
  v123 = *(v122 + 8);
  v124 = v118;
  v123(v121, v122);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v125 = [v116 traitCollection];

  v126 = [v125 userInterfaceIdiom];
  if (v126 == 1 || (v127 = [v116 traitCollection], v128 = objc_msgSend(v127, sel_userInterfaceIdiom), v127, v128 == 6))
  {
    v129 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v129[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v91;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v130 = *((*MEMORY[0x1E69E7D40] & *v116) + 0x178);
    v131 = *&v116[v130];
    *&v116[v130] = v129;
  }

  v132 = *&v89[v179];
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v135 = v183;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v136 = *(v133 + 1);
  v137 = swift_getObjectType();
  v138 = *(*(v136 + 16) + 8);
  v139 = v132;
  LOBYTE(v137) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v137, v138);
  swift_unknownObjectRelease();
  v140 = v186;
  if (v137)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = MEMORY[0x1E69E7D40];
  v142 = *((*MEMORY[0x1E69E7D40] & *v116) + 0x1A0);
  *(*&v116[v142] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v91;
  v143 = swift_unknownObjectWeakAssign();
  v144 = *&v116[v142];
  MEMORY[0x1EEE9AC00](v143);
  *(&v174 - 2) = v144;
  *(&v174 - 1) = v140;
  v145 = v116;
  v146 = v144;
  static Update.ensure<A>(_:)();

  v147 = *((*v141 & *v145) + 0x78);
  v148 = *&v145[v147];
  v149 = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v148 + 24) = v149;
  swift_unknownObjectWeakAssign();

  v150 = *&v145[v147];
  v151 = *((*v141 & *v145) + 0xE0);
  swift_beginAccess();
  *(v150 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v152 = *&v145[v151];
  v153 = *(v152 + 32);
  v154 = v185;

  if (v153)
  {
    [v145 addGestureRecognizer_];
  }

  [v145 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v155 = [v145 window];
    if (v155)
    {
      v156 = v155;
      v157 = [v155 rootViewController];

      if (v157)
      {
        v158 = [v157 viewIfLoaded];

        if (v158)
        {

          if (v158 == v145)
          {
            v201 = 0;
            v188[0] = 0;
            v159 = getpid();
            LODWORD(v179) = v159;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v187 = v159;
            v160 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v160);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v161 = static OS_dispatch_queue.main.getter();
            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v207 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_183;
            v163 = _Block_copy(&aBlock);

            v164 = String.utf8CString.getter();
            v154 = v185;

            notify_register_dispatch((v164 + 32), &v201, v161, v163);

            _Block_release(v163);

            v165 = static OS_dispatch_queue.main.getter();
            v166 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v167 = swift_allocObject();
            *(v167 + 16) = v179;
            *(v167 + 24) = v166;
            *&v207 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v167;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_190;
            v168 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v188, v165, v168);
            _Block_release(v168);

            v169 = &v145[*((*MEMORY[0x1E69E7D40] & *v145) + 0xE8)];
            *v169 = v201 | (v188[0] << 32);
            v169[8] = 0;
          }
        }
      }
    }
  }

  v170 = [objc_opt_self() defaultCenter];
  [v170 addObserver:v145 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v171 = one-time initialization token for didUpdateListLayout;
  v172 = v145;
  if (v171 != -1)
  {
    swift_once();
  }

  [v170 addObserver:v172 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v202 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v201, v172);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v181 + 8))(v154, v182);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v181 + 8))(v154, v182);
  }

  static Update.end()();
  outlined destroy of _ViewList_View(v135);
  return v172;
}

{
  v2 = v1;
  v181 = a1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingViewBase.Options();
  v175 = *(v4 - 8);
  v176 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v172 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v174 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v172 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v177 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v189.receiver = v21;
  v189.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v189, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v188.receiver = v26;
  v188.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v188, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v172 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v173 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = outlined init with copy of BridgedNavigationView.RootView(v181, v2 + *((*v12 & *v2) + 0x60));
  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v192, v45);
  v46 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v190) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView();
  v178 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v178 + 88);

  v48 = v183;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v184;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v182;
  specialized OptionSet<>.insert(_:)(v182, v50);
  v53 = *(v175 + 8);
  v54 = v50;
  v55 = v176;
  v53(v54, v176);
  v53(v52, v55);
  v56 = v51(&v192, 0);
  v57 = (*(ObjectType + 1408))(v56);
  v58 = v48;
  if ((v57 & 1) == 0)
  {
    v59 = v184;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v175 = UIHostingViewBase.Configuration.options.modify();
    v60 = v182;
    specialized OptionSet<>.insert(_:)(v182, v59);
    v53(v59, v55);
    v53(v60, v55);
    (v175)(&v192, 0);
  }

  (*(v179 + 16))(v174, v58, v180);
  v61 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v62 = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v62;

  *&v192 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v192 + 1) = v65;
  LOWORD(v193) = v66 & 0x101;
  BYTE2(v193) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v68;
    memset(&v191[8], 0, 64);
    *&v191[72] = v172;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v70 = *(v2 + v173);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v63 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
  v187.receiver = v2;
  v187.super_class = v77;
  v78 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = outlined destroy of _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph(&aBlock);
  v182 = v78;
  (*((*v63 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  v184 = v47;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v204;
    v85 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v204 = v84;
    LOBYTE(v205) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
    v47 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *&v87[*((*v63 & *v87) + 0x150)];
  v89 = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>();
  *(v88 + 40) = v89;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v177 = *((*v63 & *v87) + 0x188);
  *(*&v87[v177] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v90 = *&v87[*((*v63 & *v87) + 0x100)];
  *(v90 + *((*v90 & *v63) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = *&v87[*((*v63 & *v87) + 0x108)];
  *(v91 + *((*v91 & *v63) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  v92 = GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter(v92, v93);
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v89;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v63 & *v87;
  v97 = *&v87[*(v96 + 0x110)];
  if (v97)
  {
    v98 = *((*v97 & *v63) + 0x210);
    v99 = v97;
    v98(v47);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v63 & *v87;
  }

  v100 = *&v87[*(v96 + 280)];
  v101 = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>();
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v63 & *v87) + 0x120);
  *(*&v87[v107] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v108 = *&v87[v107];
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v87[*((*v63 & *v87) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v114 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v63 & *v114) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v63 & *v114) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v63 & *v114) + 0x168);
  *(*&v114[v115] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();

  v116 = *&v114[v115];
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  if (v124 == 1 || (v125 = [v114 traitCollection], v126 = objc_msgSend(v125, sel_userInterfaceIdiom), v125, v126 == 6))
  {
    v127 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v127[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v89;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v128 = *((*MEMORY[0x1E69E7D40] & *v114) + 0x178);
    v129 = *&v114[v128];
    *&v114[v128] = v127;
  }

  v130 = *&v87[v177];
  v131 = &v130[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v133 = v181;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v134 = *(v131 + 1);
  v135 = swift_getObjectType();
  v136 = *(*(v134 + 16) + 8);
  v137 = v130;
  LOBYTE(v135) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, v136);
  swift_unknownObjectRelease();
  v138 = v184;
  if (v135)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v139 = MEMORY[0x1E69E7D40];
  v140 = *((*MEMORY[0x1E69E7D40] & *v114) + 0x1A0);
  *(*&v114[v140] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v89;
  v141 = swift_unknownObjectWeakAssign();
  v142 = *&v114[v140];
  MEMORY[0x1EEE9AC00](v141);
  *(&v172 - 2) = v142;
  *(&v172 - 1) = v138;
  v143 = v114;
  v144 = v142;
  static Update.ensure<A>(_:)();

  v145 = *((*v139 & *v143) + 0x78);
  v146 = *&v143[v145];
  v147 = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v146 + 24) = v147;
  swift_unknownObjectWeakAssign();

  v148 = *&v143[v145];
  v149 = *((*v139 & *v143) + 0xE0);
  swift_beginAccess();
  *(v148 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v150 = *&v143[v149];
  v151 = *(v150 + 32);
  v152 = v183;

  if (v151)
  {
    [v143 addGestureRecognizer_];
  }

  [v143 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v143 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v143)
          {
            v199 = 0;
            v186[0] = 0;
            v157 = getpid();
            LODWORD(v177) = v157;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_284;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();
            v152 = v183;

            notify_register_dispatch((v162 + 32), &v199, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v177;
            *(v165 + 24) = v164;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_291;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v163, v166);
            _Block_release(v166);

            v167 = &v143[*((*MEMORY[0x1E69E7D40] & *v143) + 0xE8)];
            *v167 = v199 | (v186[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v143 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v143;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v179 + 8))(v152, v180);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v179 + 8))(v152, v180);
  }

  static Update.end()();
  outlined destroy of BridgedNavigationView.RootView(v133);
  return v170;
}

{
  v2 = v1;
  v210 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v187 = type metadata accessor for UIHostingViewBase.Options();
  v179 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v181 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v186 = &v174 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v184 = *(v8 - 8);
  v185 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v178 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v174 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v180 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v192.receiver = v21;
  v192.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v192, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v191.receiver = v26;
  v191.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v191, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v174 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v176 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v175 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v177 = ObjectType;
  v46(&v195, v45);
  v47 = v195;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
  LOBYTE(v193) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
  v182 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v48 = *(v182 + 88);

  v49 = v183;
  v50 = UIHostingViewBase.Configuration.init()();
  v51 = v181;
  MEMORY[0x18D001BC0](v50);
  v52 = UIHostingViewBase.Configuration.options.modify();
  v53 = v186;
  specialized OptionSet<>.insert(_:)(v186, v51);
  v54 = *(v179 + 8);
  v55 = v187;
  v54(v51, v187);
  v54(v53, v55);
  v56 = v52(&v195, 0);
  v57 = v49;
  if (((*(v177 + 1408))(v56) & 1) == 0)
  {
    v58 = v181;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v59 = UIHostingViewBase.Configuration.options.modify();
    v60 = v57;
    v61 = v186;
    specialized OptionSet<>.insert(_:)(v186, v58);
    v62 = v187;
    v54(v58, v187);
    v63 = v61;
    v57 = v60;
    v54(v63, v62);
    v59(&v195, 0);
  }

  (*(v184 + 16))(v178, v57, v185);
  v64 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v195 = specialized FocusViewGraph.init(graph:)(v65);
  *(&v195 + 1) = v66;
  LOWORD(v196) = v67 & 0x101;
  BYTE2(v196) = v68 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v195 = 0;
  WORD4(v195) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v69 = *MEMORY[0x1E698D3F8];
    v193 = 0uLL;
    *v194 = v69;
    memset(&v194[8], 0, 64);
    *&v194[72] = v174;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v198 = *&v194[32];
    v199 = *&v194[48];
    v200 = *&v194[64];
    v201 = *&v194[80];
    v195 = v193;
    v196 = *v194;
    v197 = *&v194[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v195);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v70, &v193);
  aBlock = v193;
  v207 = *v194;
  v208 = *&v194[16];
  v209 = *&v194[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v195 = aBlock;
  v196 = v207;
  v197 = v208;
  *&v198 = v209;
  outlined destroy of AccessibilityViewGraph(&v195);
  v71 = *(v2 + v176);
  v72 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v73 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v71;
  DWORD2(aBlock) = v73;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v74 = MEMORY[0x1E69E7CC0];
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v207 + 1) = &type metadata for HoverEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v74);
  *(&v207 + 1) = &type metadata for KeyEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v78 = UIKitEventBindingBridge.init(eventBindingManager:)(v77);
  v79 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v78;
  type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0);
  v190.receiver = v2;
  v190.super_class = v80;
  v81 = v79;
  v82 = objc_msgSendSuper2(&v190, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v83 = v82;
  ViewGraph.append<A>(feature:)();
  v84 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph);
  (*((*v79 & *v83) + 0x5C0))(v84);
  v85 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v86 = aBlock;
  v186 = v82;
  v187 = v48;
  if (aBlock != 1)
  {
    v87 = *(&aBlock + 1);
    v88 = v207;
    v89 = v208;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v90);
    }

    *&aBlock = v86;
    *(&aBlock + 1) = v87;
    v207 = v88;
    LOBYTE(v208) = v89 & 1;
    RepresentableContextValues.environment.getter();
    v204 = v205;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v86, v87, v88, *(&v88 + 1), v89);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v91 = v83;

  v92 = *&v91[*((*v81 & *v91) + 0x150)];
  v93 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v92 + 40) = v93;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v181 = *((*v81 & *v91) + 0x188);
  *(*&v181[v91] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v94 = *&v91[*((*v81 & *v91) + 0x100)];
  *(v94 + *((*v94 & *v81) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = *&v91[*((*v81 & *v91) + 0x108)];
  *(v95 + *((*v95 & *v81) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  v96 = GraphHost.addPreference<A>(_:)();
  v98 = specialized _UIHostingView.sheetBridge.getter(v96, v97);
  if (v98)
  {
    *&v98[direct field offset for SheetBridge.host + 8] = v93;
    v99 = v98;
    swift_unknownObjectWeakAssign();
  }

  v100 = *v81 & *v91;
  v101 = *&v91[*(v100 + 0x110)];
  if (v101)
  {
    v102 = *((*v101 & *v81) + 0x210);
    v103 = v101;
    v102(v187);
    outlined consume of SheetBridge<SheetPreference.Key>??(v101);
    v100 = *v81 & *v91;
  }

  v104 = *&v91[*(v100 + 280)];
  v105 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v104 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v104 + 40) = v105;
  swift_unknownObjectWeakAssign();

  v106 = FocusBridge.host.getter();
  if (v106)
  {
    v108 = v106;
    v109 = v107;
    v110 = swift_getObjectType();
    (*(*(*(v109 + 8) + 8) + 8))(v110);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v111 = *((*v81 & *v91) + 0x120);
  *(*&v91[v111] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v112 = *&v91[v111];
  v113 = &v112[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v114 = *(v113 + 1);
  v115 = swift_getObjectType();
  v116 = *(*(v114 + 16) + 8);
  v117 = v112;
  LOBYTE(v115) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v115, v116);
  swift_unknownObjectRelease();
  if (v115)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v91[*((*v81 & *v91) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v118 = v91;
  GraphHost.addPreference<A>(_:)();
  *(*&v118[*((*v81 & *v118) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v118[*((*v81 & *v118) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v119 = *((*v81 & *v118) + 0x168);
  *(*&v118[v119] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();

  v120 = *&v118[v119];
  v121 = &v120[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v122 = *(v121 + 1);
  v123 = swift_getObjectType();
  v124 = *(v122 + 8);
  v125 = *(v124 + 8);
  v126 = v120;
  v125(v123, v124);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v127 = [v118 traitCollection];

  v128 = [v127 userInterfaceIdiom];
  v129 = MEMORY[0x1E69E7D40];
  if (v128 == 1 || (v130 = [v118 traitCollection], v131 = objc_msgSend(v130, sel_userInterfaceIdiom), v130, v131 == 6))
  {
    v132 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v132[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v93;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v133 = *((*v129 & *v118) + 0x178);
    v134 = *&v118[v133];
    *&v118[v133] = v132;
  }

  v135 = *&v181[v91];
  v136 = &v135[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v137 = *(v136 + 1);
  v138 = v135;

  v139 = swift_getObjectType();
  v140 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v139, *(*(v137 + 16) + 8));
  swift_unknownObjectRelease();
  v141 = v187;
  if (v140)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v142 = *((*v129 & *v118) + 0x1A0);
  *(*&v118[v142] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v93;
  v143 = swift_unknownObjectWeakAssign();
  v144 = *&v118[v142];
  MEMORY[0x1EEE9AC00](v143);
  *(&v174 - 2) = v144;
  *(&v174 - 1) = v141;
  v145 = v118;
  v146 = v144;
  static Update.ensure<A>(_:)();

  v147 = *((*v129 & *v145) + 0x78);
  v148 = *&v145[v147];
  v149 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v148 + 24) = v149;
  swift_unknownObjectWeakAssign();

  v150 = *&v145[v147];
  v151 = *((*v129 & *v145) + 0xE0);
  swift_beginAccess();
  *(v150 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v152 = *&v145[v151];
  v153 = *(v152 + 32);

  if (v153)
  {
    [v145 addGestureRecognizer_];
  }

  [v145 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v154 = [v145 window];
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = [v156 viewIfLoaded];

        if (v157)
        {

          if (v157 == v145)
          {
            v202 = 0;
            v189[0] = 0;
            v158 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v188 = v158;
            v159 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v159);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v208 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v161;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_326;
            v162 = _Block_copy(&aBlock);

            v163 = String.utf8CString.getter();

            notify_register_dispatch((v163 + 32), &v202, v160, v162);

            _Block_release(v162);

            v164 = static OS_dispatch_queue.main.getter();
            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v166 = swift_allocObject();
            *(v166 + 16) = v158;
            *(v166 + 24) = v165;
            *&v208 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v166;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_333;
            v167 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v189, v164, v167);
            _Block_release(v167);

            v168 = &v145[*((*v129 & *v145) + 0xE8)];
            *v168 = v202 | (v189[0] << 32);
            v168[8] = 0;
          }
        }
      }
    }
  }

  v169 = [objc_opt_self() defaultCenter];
  [v169 addObserver:v145 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v170 = one-time initialization token for didUpdateListLayout;
  v171 = v145;
  if (v170 != -1)
  {
    swift_once();
  }

  [v169 addObserver:v171 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v172 = v183;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v203 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v202, v171);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v184 + 8))(v172, v185);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v184 + 8))(v172, v185);
  }

  static Update.end()();
  return v171;
}