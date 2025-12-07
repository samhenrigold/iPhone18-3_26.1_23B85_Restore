unint64_t lazy protocol witness table accessor for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone()
{
  result = lazy protocol witness table cache variable for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone;
  if (!lazy protocol witness table cache variable for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollapsedSplitNavigationStrategy_Phone, &type metadata for CollapsedSplitNavigationStrategy_Phone, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for List(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v4 + 80);
  if (*(v4 + 84))
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = v5 + 1;
  }

  if (v10 > v5)
  {
    v5 = v10;
  }

  v11 = *(v6 + 80);
  if (v5 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v12 + (((v9 & 0xF8) + 23) & ~(v9 & 0xF8) & 0x1F8) + v11 + 1;
  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v14 = ((((*(*(*(a3 + 24) - 8) + 64) + (v13 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v15 = (a2 - v8 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
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
      v19 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (!v19)
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    v21 = (v19 - 1) << (8 * v14);
    if (v14 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v8 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v14];
    if (a1[v14])
    {
      goto LABEL_32;
    }
  }

LABEL_36:
  if (v7 > 0x7FFFFFFE)
  {
    return (*(v6 + 48))(&a1[v13] & ~v11);
  }

  v23 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  if ((v23 + 1) >= 2)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t NavigationSplitCoordinator.allRoots.getter()
{
  v1 = v0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v11[3] = *(v0 + 256);
  v11[4] = v2;
  v12 = v3;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v5 = v4;

  MEMORY[0x18D00ACC0](v11, v5);
  v6 = LOWORD(v11[0]) >> 14;
  if (v6 < 2 || v6 != 2 && LOWORD(v11[0]) == 49152)
  {

    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63410;
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v1 + 16, v7 + 32);
    swift_beginAccess();
    v8 = v1 + 144;
    v9 = v7 + 96;
  }

  else
  {

    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CDD3F30;
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v1 + 16, v7 + 32);
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v1 + 80, v7 + 96);
    swift_beginAccess();
    v8 = v1 + 144;
    v9 = v7 + 160;
  }

  outlined init with copy of _VariadicView_Children(v8, v9);
  return v7;
}

uint64_t NavigationState.mergedStackContent(for:columnCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 24);
  v9 = *(v4 + 88);
  v30 = *(v4 + 152);
  v10 = *(v4 + 136);
  v28 = *(v4 + 120);
  v29 = v10;
  v11 = *(v4 + 104);
  v26 = v9;
  v27 = v11;
  v12 = &unk_1EFF8C6C0;
  if (a2 == 2)
  {
    v12 = &unk_1EFF8C698;
  }

  v13 = *v12;
  if (*v12)
  {
    if (a2 == 2)
    {
      v14 = &unk_1EFF8C6A8;
    }

    else
    {
      v14 = &unk_1EFF8C6D0;
    }

    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v17 = *v14++;
      v16 = v17;
      if (*(v8 + 16))
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v16, a2);
        if (v19)
        {
          outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v18, __src);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          }

          v21 = *(v15 + 2);
          v20 = *(v15 + 3);
          if (v21 >= v20 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
          }

          *(v15 + 2) = v21 + 1;
          memcpy(&v15[360 * v21 + 32], __src, 0x163uLL);
        }
      }

      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  if (*(v15 + 2) == a2)
  {
    *a3 = v15;
    v22 = v26;
    *(a3 + 24) = v27;
    v23 = v29;
    *(a3 + 40) = v28;
    *(a3 + 56) = v23;
    *(a3 + 72) = v30;
    *(a3 + 8) = v22;
    *(a3 + 448) = 2;
    return outlined init with copy of NavigationState.Base?(&v26, __src, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
  }

  else
  {
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 448) = -1;
  }
}

void *UISplitViewControllerVisibilityEngine.visibility.getter@<X0>(__int16 *a1@<X8>)
{
  if (v1[6] > 1)
  {
    v2 = 512;
  }

  else
  {
    v2 = *(v1 + 9);
    if ((v2 & 0xFF00) == 0x200)
    {
      v3 = a1;
      v4 = v1[1];
      v5 = *(v1 + 8);
      v11 = *v1;
      v12 = v4;
      v13 = v5;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
      result = MEMORY[0x18D00ACC0](&v10);
      v7 = v10 >> 14;
      if (v7 == 2)
      {
        v8 = v10 & 0x1FF;
      }

      else
      {
        v8 = 512;
      }

      v9 = 0x10200uLL >> (16 * v10);
      if (v7)
      {
        LOWORD(v9) = v10 & 0x1FF;
      }

      if (v10 >> 14 <= 1u)
      {
        v2 = v9;
      }

      else
      {
        v2 = v8;
      }

      a1 = v3;
    }
  }

  *a1 = v2;
  return result;
}

_BYTE *partial apply for specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(void *a1)
{
  return specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(a1, *(v1 + 16));
}

{
  return specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(a1, *(v1 + 16));
}

_BYTE *specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(void *a1, uint64_t a2)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = AGGraphGetValue();
    if ((result[8] & 8) == 0)
    {

      return PreferenceKeys.init()();
    }
  }

  return result;
}

{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = AGGraphGetValue();
    if ((result[8] & 4) == 0)
    {

      result = static ViewRespondersKey.defaultValue.getter();
      *a1 = result;
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance FocusStateBindingModifier<A>.ListTransform@<X0>(uint64_t (**a2)()@<X8>)
{
  v4 = FocusStateBindingModifier.ListTransform.value.getter(*v2);
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18BF7A8B8()
{

  return swift_deallocObject();
}

uint64_t (*FocusStateBindingModifier.ListTransform.value.getter(uint64_t a1))()
{
  v1 = *AGGraphGetValue();
  *(swift_allocObject() + 16) = v1;

  return partial apply for closure #1 in FocusStateBindingModifier.ListTransform.value.getter;
}

uint64_t sub_18BF7A968()
{

  return swift_deallocObject();
}

double FocusStateBindingModifier.ListItemFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v80[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v73 = type metadata accessor for FocusState.Binding(0, v3, v6, v7);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v55 - v8;
  v10 = type metadata accessor for FocusStateBindingModifier(0, v3, v6, v9);
  v74 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v55 - v13;
  v14 = *v1;
  v15 = *(v1 + 1);
  v16 = v1[4];
  v17 = *(v1 + 28);
  v64 = v1[5];
  v18 = v16 | (v64 << 32);
  AGGraphGetValue();
  v70 = v19;
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for [Namespace.ID], MEMORY[0x1E6981EA0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v61 = v21;
  v68 = *Value;

  v69 = v15;
  v63 = v3;
  v71 = v6;
  FocusStateBindingModifier.ListItemFilter.focusItem.getter(v18, v80);
  if (v80[5] == 1 && v80[6] == 1)
  {
    outlined destroy of FocusItem??(v80);
    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  outlined init with take of FocusItem?(v80, v76);
  if (v77 || v78 != 1)
  {
    if (swift_weakLoadStrong())
    {
      v22 = dispatch thunk of ResponderNode.isDescendant(of:)();

      outlined destroy of FocusItem(v76);
      if (v17 == (v22 & 1))
      {
        goto LABEL_15;
      }

LABEL_14:
      *(v2 + 28) = v22 & 1;
      LOBYTE(v17) = v22;
      goto LABEL_18;
    }

    outlined destroy of FocusItem(v76);
    if (v17)
    {
LABEL_13:
      v22 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    outlined destroy of FocusItem?(v76, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    if (v17)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (((v70 | v61) & 1) == 0 && AGGraphGetOutputValue())
  {

    return result;
  }

LABEL_18:
  LODWORD(v61) = v17 & 1;
  v24 = AGGraphGetValue();
  v25 = v74;
  v26 = *(v74 + 16);
  v27 = v66;
  v26(v66, v24, v10);
  v28 = v26;
  v29 = *(v72 + 16);
  v59 = v72 + 16;
  v60 = v29;
  v29(v75, v27, v73);
  v70 = *(v25 + 8);
  v74 = v25 + 8;
  v70(v27, v10);
  v57 = v14;
  v30 = AGGraphGetValue();
  v31 = v62;
  v26(v62, v30, v10);
  v58 = v25 + 16;
  v32 = *(v10 + 36);
  v56 = *(v65 + 2);
  v33 = v67;
  v34 = v63;
  v56(v67, &v31[v32], v63);
  v35 = v31;
  v36 = v70;
  v70(v35, v10);
  v65 = FocusStateBindingUpdateAction.init<A>(binding:value:)(v75, v33, v34, v71);
  v62 = v37;
  v38 = AGGraphGetValue();
  v26(v27, v38, v10);
  v56(v33, &v27[*(v10 + 36)], v34);
  v36(v27, v10);
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for FocusBridge?, type metadata accessor for FocusBridge, MEMORY[0x1E69E6720]);
  v39 = v69;

  v40 = AGGraphGetValue();
  v41 = specialized FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:)(v33, v39, *v40, v68, v34, v71);
  v43 = v42;
  DisplayList.Version.init(forUpdate:)();
  v44 = v72;
  v45 = v80[0];
  v46 = AGGraphGetValue();
  v28(v27, v46, v10);
  v47 = v75;
  v48 = v73;
  v60(v75, v27, v73);
  v70(v27, v10);
  v49 = v47;
  v53 = FocusState.Binding.propertyID.getter(v48, v50, v51, v52);
  (*(v44 + 8))(v49, v48);
  v76[0] = v45;
  v76[1] = v53;
  v76[2] = v65;
  v76[3] = v62;
  v76[4] = v41;
  v77 = v43;
  swift_weakInit();

  outlined copy of AppIntentExecutor?(v41, v43);

  swift_weakInit();
  v79 = v61;
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6F90]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_18CD63400;
  outlined init with take of FocusStoreList.Item(v76, v54 + 32);
  v76[0] = v54;
  AGGraphSetOutputValue();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v41, v43);

  return result;
}

uint64_t _NavigationSplitReader.UpdateRequiredCompactColumn.updateValue()()
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationAuthority?(Value, &v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v9 == 1)
  {
    return outlined destroy of _VariadicView_Children.Element?(&v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  outlined init with take of NavigationAuthority(&v8, v18);
  type metadata accessor for Binding<NavigationSplitViewColumn>?(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>?, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  v3 = AGGraphGetValue();
  v4 = *(v3 + 8);
  if (!v4)
  {
    return outlined destroy of NavigationAuthority(v18);
  }

  v5 = *v3;
  v6 = *(v3 + 16);

  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
  }

  if (dispatch thunk of AnyLocation.update()())
  {
    v7 = v8;
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      v8 = v5;
      v9 = v4;
      v10 = v6;
      v11 = v7;
      v12 = 5;
      v13 = 0u;
      v14 = 0u;
      v15 = xmmword_18CD68310;
      v16 = 0;
      v17 = 0;
      NavigationAuthority.enqueueRequest(_:)(&v8);
      outlined destroy of NavigationRequest(&v8);
      return outlined destroy of NavigationAuthority(v18);
    }
  }

  outlined destroy of NavigationAuthority(v18);
  return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
}

void FocusStateBindingModifier.ListItemFilter.focusItem.getter(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = vdupq_n_s64(1uLL);
    *(a2 + 56) = 0;
  }

  else
  {
    v3 = MEMORY[0x1E69E6720];
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    outlined init with copy of FocusItem?(Value, a2, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v3);
  }
}

void protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ShouldExpandAllTraitKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t _NavigationSplitReader.UpdatePreferredCompactColumn.updateValue()()
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationAuthority?(Value, &v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v9 == 1)
  {
    return outlined destroy of _VariadicView_Children.Element?(&v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  outlined init with take of NavigationAuthority(&v8, v18);
  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
  AGGraphGetValue();

  v3 = dispatch thunk of AnyLocation.update()();

  if (v3)
  {
    v4 = v8;
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      v5 = AGGraphGetValue();
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *v5;
      v9 = v6;
      v10 = v7;
      v11 = v4;
      v12 = 4;
      v14 = 0u;
      v13 = 0u;
      v15 = xmmword_18CD68310;
      v16 = 0;
      v17 = 0;

      NavigationAuthority.enqueueRequest(_:)(&v8);
      outlined destroy of NavigationRequest(&v8);
    }
  }

  return outlined destroy of NavigationAuthority(v18);
}

double (*specialized FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(a5 - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = a5;
  *(v15 + 3) = a6;
  *(v15 + 4) = v10;
  *(v15 + 5) = v11;
  (*(v12 + 32))(&v15[v13], a1, a5);
  *&v15[v14] = a4;
  return partial apply for closure #1 in FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:);
}

uint64_t sub_18BF7B83C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BF7B874()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t destroy for FocusState.Binding(void *a1, uint64_t a2)
{
  v3 = a1 + 15;

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = ((v3 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithTake for FocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void **closure #1 in FocusStateBindingModifier.ListTransform.value.getter(void **result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = a2 + 32;
    v5 = *result;
    do
    {
      v7 = v5[2];
      outlined init with copy of FocusStoreList.Item(v4, v10);
      outlined init with copy of FocusItem?(v10, v9, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6BC0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 >= v5[3] >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v7 + 1, 1, v5);
      }

      swift_arrayDestroy();
      if ((v5[2] - v7) > 1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      ++v5[2];
      outlined init with copy of FocusStoreList.Item(v9, &v5[9 * v7 + 4]);
      v6 = MEMORY[0x1E69E6BC0];
      outlined destroy of FocusItem?(v9, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6BC0]);
      result = outlined destroy of FocusItem?(v10, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, v6);
      v4 += 72;
      --v2;
    }

    while (v2);
    *v3 = v5;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance MakeRepresentable<A, B>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0x100000000;
  if (!*(v2 + 4))
  {
    v3 = 0;
  }

  return MakeRepresentable.value.getter(v3 | *v2, *(v2 + 1), v2[4], a1[2], a1[3], a1[4], a1[5], a2);
}

uint64_t MakeRepresentable.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a3;
  v38 = a2;
  v14 = type metadata accessor for Binding();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v31 - v16;
  v33 = type metadata accessor for Optional();
  v17 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v31 - v18;
  v34 = a4;
  v35 = a6;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v36 = a7;
  type metadata accessor for UICollectionViewListCoordinator(0, &v40);
  v37 = a1;
  Value = AGGraphGetValue();
  v21 = *Value;
  v22 = *((*MEMORY[0x1E69E7D40] & **Value) + 0x110);
  swift_beginAccess();
  v23 = 1;
  if (!(*(v15 + 48))(&v21[v22], 1, v14))
  {
    v24 = v32;
    (*(v15 + 16))(v32, &v21[v22], v14);
    MEMORY[0x18D00ACC0](v14);
    (*(v15 + 8))(v24, v14);
    v23 = 0;
  }

  (*(*(a5 - 8) + 56))(v19, v23, 1, a5);
  (*(v17 + 8))(v19, v33);
  v25 = HIDWORD(v37) & 1;
  v40 = v34;
  v41 = a5;
  v42 = v35;
  v43 = v36;
  type metadata accessor for UICollectionViewListCoordinator(0, &v40);
  v26 = *AGGraphGetValue();
  v27 = AGCreateWeakAttribute();
  v28 = AGCreateWeakAttribute();
  v29 = AGCreateWeakAttribute();
  result = AGCreateWeakAttribute();
  *a8 = v26;
  *(a8 + 8) = v25;
  *(a8 + 9) = v40;
  *(a8 + 11) = BYTE2(v40);
  *(a8 + 12) = v27;
  *(a8 + 20) = v28;
  *(a8 + 28) = v29;
  *(a8 + 36) = result;
  return result;
}

Swift::Void __swiftcall UpdateCollectionViewListCoordinator.updateValue()()
{
  v2 = v1;
  v225[5] = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v203 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v186 = AssociatedTypeWitness;
  v7 = type metadata accessor for CollectionViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = type metadata accessor for Optional();
  v194 = *(v8 - 8);
  v195 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v176 - v9;
  v178 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Binding();
  v183 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v176 - v13;
  v184 = v14;
  v15 = type metadata accessor for Optional();
  v197 = *(v15 - 8);
  v198 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v191 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v181 = &v176 - v18;
  v201 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v187 = &v176 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v199 = &v176 - v25;
  v26 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v182 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v176 - v30;
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ViewList, MEMORY[0x1E6981D10]);
  Value = AGGraphGetValue();
  v34 = v33;
  outlined init with copy of _Benchmark(Value, v225);
  v202 = v2;
  v35 = AGGraphGetValue();
  v37 = v36;
  v190 = v27;
  v38 = *(v27 + 16);
  v192 = v31;
  v193 = v26;
  v180 = v38;
  v38(v31, v35, v26);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListDataSource<A>, v7);
  v200 = v7;
  *&v210 = v7;
  v188 = v4;
  v189 = v3;
  *(&v210 + 1) = v4;
  *&v211 = WitnessTable;
  *(&v211 + 1) = v3;
  v40 = type metadata accessor for UICollectionViewListCoordinator(0, &v210);
  OutputValue = AGGraphGetOutputValue();
  v196 = v40;
  if (!OutputValue || (v34 & 1) != 0 || (v37 & 1) != 0)
  {
    v47 = v202;
    v48 = v203;
    v49 = *(v203 + 116);

    outlined init with copy of _Benchmark(v225, &v204);
    v50 = *(v47 + *(v48 + 120));
    *(&v218[1] + 1) = 0;
    *(&v219 + 1) = MEMORY[0x1E69E7CC0];
    v220 = MEMORY[0x1E69E7CC0];
    outlined init with copy of _Benchmark(&v204, &v216);
    *(&v218[0] + 1) = AGCreateWeakAttribute();
    *&v218[1] = v50;
    LOBYTE(v210) = 1;
    v51 = v50;
    v52 = MEMORY[0x18D0072D0](&v204, 0, &v210);
    if (v52)
    {
      *&v219 = v52;

      *(&v218[1] + 1) = 0;
    }

    else
    {
      v209 = 1;
      v208 = 1;
      SectionAccumulator.init(contentSubgraph:options:accumulationStrategy:)();
      v209 = 0;
      SectionAccumulator.formResult(from:listAttribute:)();
      v53 = v215;
      *&v219 = v214;

      outlined destroy of SectionAccumulator(&v210);

      *(&v218[1] + 1) = v53;
    }

    v54 = v201;
    v55 = v183;
    v56 = v181;
    ListSectionInfo.updateItemDerivedState()();
    __swift_destroy_boxed_opaque_existential_1(&v204);
    v223[0] = v218[0];
    v223[1] = v218[1];
    v223[2] = v219;
    v224 = v220;
    v221 = v216;
    v222 = v217;
    UpdateCollectionViewListCoordinator.selection.getter(v56);
    v57 = v184;
    if ((*(v55 + 48))(v56, 1, v184))
    {
      v58 = *(v197 + 8);
      v58(v56, v198);
      v59 = 0;
    }

    else
    {
      v60 = v176;
      (*(v55 + 16))(v176, v56, v57);
      v58 = *(v197 + 8);
      v58(v56, v198);
      v61 = v177;
      MEMORY[0x18D00ACC0](v57);
      (*(v55 + 8))(v60, v57);
      v62 = v188;
      v59 = (*(v189 + 72))(v188);
      (*(v178 + 8))(v61, v62);
    }

    outlined init with copy of ListSectionInfo(&v221, &v210);
    v63 = v182;
    v180(v182, v192, v193);
    v42 = v202;
    v64 = *AGGraphGetValue();
    v65 = *AGGraphGetValue();
    UpdateCollectionViewListCoordinator.environment.getter(&v216);
    v204 = v216;
    v66 = v187;
    CollectionViewListDataSource.init(sectionInfo:style:allowsMultipleSelection:minRowHeight:minHeaderHeight:environment:)(&v210, v63, v59 & 1, &v204, v186, AssociatedConformanceWitness, v187, v64, v65);
    if (*(&v223[1] + 1))
    {
      *&v210 = *(&v223[1] + 1);

      v67 = _ViewList_SublistSubgraphStorage.retain()();
    }

    else
    {
      v67 = 0;
    }

    *(v42 + v49) = v67;
    v68 = v54;
    v69 = *(v54 + 16);
    v70 = v199;
    v71 = v200;
    v69(v199, v66, v200);
    v72 = v196;
    v73 = AGGraphGetOutputValue();
    LODWORD(v186) = v73 != 0;
    if (v73)
    {
      (*(v68 + 8))(v66, v71);
    }

    else
    {
      v74 = v191;
      v75 = v203;
      UpdateCollectionViewListCoordinator.selection.getter(v191);
      UpdateCollectionViewListCoordinator.editMode.getter(&v210);
      v216 = v210;
      LOBYTE(v217) = v211;
      v76 = specialized UICollectionViewListCoordinator.__allocating_init(dataSource:selection:editMode:transaction:)(v70, v74, &v216, 1);
      v77 = (v58)(v74, v198);
      *&v210 = v76;
      v78 = MEMORY[0x1EEE9AC00](v77);
      *(&v176 - 2) = v75;
      *(&v176 - 1) = swift_getWitnessTable(protocol conformance descriptor for UpdateCollectionViewListCoordinator<A>, v75, v78);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v210, partial apply for closure #1 in StatefulRule.value.setter, (&v176 - 4), v72, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v79);

      (*(v201 + 8))(v187, v71);
    }

    outlined destroy of ListSectionInfo(&v221);
  }

  else
  {
    v42 = v202;
    v43 = v179;
    (*(v194 + 16))(v179, v202 + *(v203 + 112), v195);
    v45 = v200;
    v44 = v201;
    if ((*(v201 + 48))(v43, 1, v200) == 1)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v46 = *(v44 + 32);
    v46(v21, v43, v45);
    *&v21[*(v45 + 52)] = *AGGraphGetValue();
    *&v21[*(v45 + 56)] = *AGGraphGetValue();
    v46(v199, v21, v45);
    LODWORD(v186) = 0;
  }

  v80 = AGGraphGetOutputValue();
  if (!v80)
  {
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v81 = MEMORY[0x1E69E7D40];
  v82 = (*v80 + *((*MEMORY[0x1E69E7D40] & **v80) + 0x120));
  swift_beginAccess();
  v83 = *v82;
  v221 = *(v82 + 8);
  v222 = *(v82 + 24);
  v223[0] = *(v82 + 40);
  *(v223 + 9) = *(v82 + 49);
  v84 = AGGraphGetValue();
  if (v83 == *v84 && (v210 = v221, v211 = v222, v212[0] = v223[0], *(v212 + 9) = *(v223 + 9), v216 = *(v84 + 8), v217 = *(v84 + 24), v218[0] = *(v84 + 40), *(v218 + 9) = *(v84 + 49), (MEMORY[0x18D006FC0](&v210, &v216) & 1) != 0))
  {
    v85 = 0;
  }

  else
  {
    v86 = AGGraphGetOutputValue();
    if (!v86)
    {
      __break(1u);
      goto LABEL_105;
    }

    v87 = *v86;
    v88 = AGGraphGetValue();
    v211 = *(v88 + 16);
    v212[0] = *(v88 + 32);
    v212[1] = *(v88 + 48);
    v213 = *(v88 + 64);
    v210 = *v88;
    v89 = v87 + *((*v81 & *v87) + 0x120);
    v85 = 1;
    swift_beginAccess();
    *(v89 + 1) = v211;
    *(v89 + 2) = v212[0];
    *(v89 + 3) = v212[1];
    v89[64] = v213;
    *v89 = v210;
  }

  v90 = AGGraphGetOutputValue();
  if (!v90)
  {
    goto LABEL_92;
  }

  v91 = *v90;
  v92 = v191;
  UpdateCollectionViewListCoordinator.selection.getter(v191);
  v93 = *((*v81 & *v91) + 0x110);
  swift_beginAccess();
  (*(v197 + 40))(&v91[v93], v92, v198);
  swift_endAccess();

  v94 = AGGraphGetOutputValue();
  if (!v94)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v95 = *v94;
  UpdateCollectionViewListCoordinator.editMode.getter(&v210);
  v96 = v211;
  v97 = v95 + *((*v81 & *v95) + 0x128);
  v98 = *v97;
  v99 = *(v97 + 1);
  *v97 = v210;
  v97[16] = v96;
  outlined consume of Binding<NavigationSplitViewColumn>?(v98, v99);

  v100 = AGGraphGetOutputValue();
  if (!v100)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v101 = *v100;
  v102 = AGGraphGetValue();
  v103 = *(v102 + 8);
  v104 = *(v102 + 9);
  v105 = v101 + *((*v81 & *v101) + 0xF0);
  *v105 = *v102;
  v105[8] = v103;
  v105[9] = v104;

  v106 = AGGraphGetOutputValue();
  if (!v106)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v107 = *v106;
  UpdateCollectionViewListCoordinator.appIntentsDataSourcePayloadProvider.getter(&v210);
  UICollectionViewListCoordinatorBase.appIntentsDataSourcePayloadProvider.setter(&v210);

  v108 = AGGraphGetOutputValue();
  if (!v108)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v109 = *v108 + *((*v81 & **v108) + 0x150);
  v110 = *v109;
  v111 = *(v109 + 8);
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v112 = AGGraphGetValue();
  v113 = *(v112 + 8);
  if (v111)
  {
    if (*(v112 + 8))
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v110 != *v112)
    {
      v113 = 1;
    }

    if ((v113 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v114 = AGGraphGetOutputValue();
  if (!v114)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v115 = *v114;
  v116 = AGGraphGetValue();
  v117 = *(v116 + 8);
  v118 = v115 + *((*v81 & *v115) + 0x150);
  *v118 = *v116;
  v118[8] = v117;

  v85 = 1;
LABEL_38:
  v119 = AGGraphGetOutputValue();
  if (!v119)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v120 = *v119 + *((*v81 & **v119) + 0x148);
  if (*(v120 + 9))
  {
    v121 = 1;
    v122 = 0.0;
  }

  else
  {
    v123 = *v120;
    if (*(v120 + 8))
    {
      v121 = *&v123 == 0;
      if (v123 == 0.0)
      {
        v122 = 0.0;
      }

      else
      {
        v122 = 12.0;
      }
    }

    else
    {
      v121 = 0;
      v122 = *v120;
    }
  }

  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for ListSectionSpacing?, &type metadata for ListSectionSpacing, MEMORY[0x1E69E6720]);
  v124 = AGGraphGetValue();
  if (*(v124 + 9))
  {
    if (v121)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v125 = *v124;
  if (*(v124 + 8))
  {
    v126 = *&v125 == 0;
    v127 = 12.0;
    if (v125 == 0.0)
    {
      v127 = 0.0;
    }

    if (v121)
    {
      if (v125 == 0.0)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_57:
    if (!v126 && v122 == v127)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (!v121)
  {
    v126 = 0;
    v127 = *v124;
    goto LABEL_57;
  }

LABEL_59:
  v128 = AGGraphGetOutputValue();
  if (!v128)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v129 = *v128;
  v130 = AGGraphGetValue();
  v131 = *(v130 + 8);
  v132 = *(v130 + 9);
  v133 = v129 + *((*v81 & *v129) + 0x148);
  *v133 = *v130;
  v133[8] = v131;
  v133[9] = v132;

  v85 = 1;
LABEL_61:
  v134 = AGGraphGetOutputValue();
  if (!v134)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v135 = *v134 + *((*v81 & **v134) + 0x158);
  v136 = *v135;
  v137 = *(v135 + 8);
  v138 = AGGraphGetValue();
  v139 = *(v138 + 8);
  if (v137)
  {
    if (*(v138 + 8))
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v136 != *v138)
    {
      v139 = 1;
    }

    if ((v139 & 1) == 0)
    {
LABEL_70:
      v145 = AGGraphGetOutputValue();
      if (v145)
      {
        v146 = *v145;
        *(v146 + *((*v81 & *v146) + 0x138)) = *AGGraphGetValue();

        if (AGGraphGetOutputValue())
        {
          UICollectionViewListCoordinatorBase.selectionStorage.setter(*(v42 + 52), *(v42 + 60), *(v42 + 68), *(v42 + 76));
          v147 = AGGraphGetOutputValue();
          if (v147)
          {
            v148 = *v147;
            *(v148 + *((*v81 & *v148) + 0x160)) = *AGGraphGetValue();

            v149 = AGGraphGetOutputValue();
            if (v149)
            {
              v198 = v85;
              v150 = *v149;
              *(v150 + *((*v81 & *v150) + 0x168)) = *AGGraphGetValue();

              v151 = AGGraphGetOutputValue();
              if (v151)
              {
                v152 = (*v151 + *((*v81 & **v151) + 0x100));
                v153 = *v152;
                v154 = v152[1];
                v156 = v152[2];
                v155 = v152[3];
                v158 = v152[4];
                v157 = v152[5];
                v159 = v152[6];
                outlined copy of ResolvedSubviewsSizingOptions?(*v152, v154, v156, v155, v158, v157, v159);
                UpdateCollectionViewListCoordinator.subviewSizingOptions.getter(&v210);
                v160 = v211;
                if (v156 >> 1 == 4294967293)
                {
                  v184 = *(&v212[0] + 1);
                  AssociatedConformanceWitness = *&v212[1];
                  v187 = *(&v210 + 1);
                  v161 = v210;
                  v191 = *(&v211 + 1);
                  v197 = *&v212[0];
                  if ((v211 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
                  {
                    outlined consume of ResolvedSubviewsSizingOptions?(v153, v154, v156, v155, v158, v157, v159);
                    v163 = v201;
                    v162 = v202;
                    v165 = v199;
                    v164 = v200;
LABEL_83:
                    Strong = swift_unknownObjectWeakLoadStrong();
                    if (!Strong)
                    {
LABEL_88:
                      (*(v190 + 8))(v192, v193);
                      __swift_destroy_boxed_opaque_existential_1(v225);
                      v174 = *(v203 + 112);
                      (*(v194 + 8))(v162 + v174, v195);
                      (*(v163 + 32))(v162 + v174, v165, v164);
                      (*(v163 + 56))(v162 + v174, 0, 1, v164);
                      return;
                    }

                    v169 = Strong;
                    if (v198)
                    {
                      v170 = [Strong collectionViewLayout];
                      [v170 invalidateLayout];
                    }

                    v171 = AGGraphGetOutputValue();
                    if (v171)
                    {
                      v172 = *v171;
                      AGGraphClearUpdate();
                      closure #1 in UpdateCollectionViewListCoordinator.updateValue()(v162, v188, v189, v173, &v210);
                      AGGraphSetUpdate();
                      UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(v169, v165, v210, v186);

                      goto LABEL_88;
                    }

                    goto LABEL_106;
                  }
                }

                else
                {
                  *&v216 = v153;
                  *(&v216 + 1) = v154;
                  *&v217 = v156;
                  *(&v217 + 1) = v155;
                  *&v218[0] = v158;
                  *(&v218[0] + 1) = v157;
                  *&v218[1] = v159;
                  if ((v211 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFALL)
                  {
                    v204 = v210;
                    v205 = v211;
                    v206 = v212[0];
                    v207 = *&v212[1];
                    outlined copy of ResolvedSubviewsSizingOptions?(v153, v154, v156, v155, v158, v157, v159);
                    v175 = specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(&v216, &v204);
                    outlined consume of ResolvedSubviewsSizingOptions(v204, *(&v204 + 1), v205, *(&v205 + 1), v206, *(&v206 + 1), v207);
                    outlined consume of ResolvedSubviewsSizingOptions(v216, *(&v216 + 1), v217, *(&v217 + 1), *&v218[0], *(&v218[0] + 1), *&v218[1]);
                    outlined consume of ResolvedSubviewsSizingOptions?(v153, v154, v156, v155, v158, v157, v159);
                    v163 = v201;
                    v162 = v202;
                    v165 = v199;
                    v164 = v200;
                    if (v175)
                    {
                      goto LABEL_83;
                    }

LABEL_81:
                    v166 = AGGraphGetOutputValue();
                    if (v166)
                    {
                      v167 = *v166;
                      UpdateCollectionViewListCoordinator.subviewSizingOptions.getter(&v210);
                      v216 = v210;
                      v217 = v211;
                      v218[0] = v212[0];
                      *&v218[1] = *&v212[1];
                      UICollectionViewListCoordinatorBase.subviewsSizingOptions.setter(&v216);

                      goto LABEL_83;
                    }

LABEL_105:
                    __break(1u);
LABEL_106:
                    __break(1u);
                    goto LABEL_107;
                  }

                  v184 = *(&v212[0] + 1);
                  AssociatedConformanceWitness = *&v212[1];
                  v187 = *(&v210 + 1);
                  v161 = v210;
                  v191 = *(&v211 + 1);
                  v197 = *&v212[0];
                  outlined copy of ResolvedSubviewsSizingOptions?(v153, v154, v156, v155, v158, v157, v159);
                  outlined consume of ResolvedSubviewsSizingOptions(v153, v154, v156, v155, v158, v157, v159);
                }

                outlined consume of ResolvedSubviewsSizingOptions?(v153, v154, v156, v155, v158, v157, v159);
                outlined consume of ResolvedSubviewsSizingOptions?(v161, v187, v160, v191, v197, v184, AssociatedConformanceWitness);
                v163 = v201;
                v162 = v202;
                v165 = v199;
                v164 = v200;
                goto LABEL_81;
              }

LABEL_103:
              __break(1u);
            }

LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }
  }

  v140 = AGGraphGetOutputValue();
  if (v140)
  {
    v141 = *v140;
    v142 = AGGraphGetValue();
    v143 = *(v142 + 8);
    v144 = v141 + *((*v81 & *v141) + 0x158);
    *v144 = *v142;
    v144[8] = v143;

    v85 = 1;
    goto LABEL_70;
  }

LABEL_110:
  __break(1u);
}

uint64_t SidebarListStyle.Body.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v9 = HIDWORD(a1);
  v10 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  type metadata accessor for Binding();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24[-v13];
  v29[0] = &type metadata for SidebarListStyle;
  v29[1] = a2;
  v29[2] = &protocol witness table for SidebarListStyle;
  v29[3] = a3;
  v15 = type metadata accessor for _ListValue(0, v29);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24[-v16];
  SidebarListStyle.Body.base.getter(a2, a3, &v24[-v16]);
  (*(v12 + 32))(v14, v17, v11);
  if (*AGGraphGetValue())
  {
    v18 = 11;
  }

  else
  {
    v18 = 3;
  }

  v25 = a2;
  v26 = a3;
  v27 = v7;
  v28 = v9;
  type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>(0);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v10);
  return SidebarListBody.init(selection:options:content:)(v14, v18, partial apply for closure #1 in SidebarListStyle.Body.value.getter, v20, v10, v21, WitnessTable, a5);
}

uint64_t SidebarListStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for SidebarListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for SidebarListStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t _ListValue.Init2.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v28 = a4;
  v9 = type metadata accessor for SelectionManagerBox(255, a3, a5, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v9);
  v12 = type metadata accessor for _ListStyleConfiguration(0, v9, WitnessTable, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v17 = type metadata accessor for ResolvedList(0, a3, a5, v16);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v27 - v18;
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v20 + 16))(v23, Value, a2);
  _ListValue.Init2.base.getter(a3, v25, a5, v19);
  (*(v13 + 32))(v15, v19, v12);
  return _ListValue.init(style:configuration:)(v23, v15, a2, a3, v28, a5, v27);
}

uint64_t DefaultListStyle.Body.value.getter@<X0>(unsigned int a1@<W0>, ValueMetadata *a2@<X1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a1;
  v71 = a5;
  v7 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v59 = type metadata accessor for _ListStyleConfiguration(0, v7, WitnessTable, v9);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v55 - v10;
  v77 = &type metadata for DefaultListStyle;
  v78 = a2;
  v79 = &protocol witness table for DefaultListStyle;
  v80 = a3;
  v11 = type metadata accessor for _ListValue(0, &v77);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v77 = a2;
  v78 = &type metadata for ListStyleContent;
  v79 = a3;
  v80 = &protocol witness table for ListStyleContent;
  v14 = type metadata accessor for List(0, &v77);
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>(255);
  v17 = type metadata accessor for ModifiedContent();
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v55 - v18;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>(255);
  v19 = type metadata accessor for ModifiedContent();
  v64 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v55 - v20;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>(255);
  v21 = type metadata accessor for ModifiedContent();
  v65 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v55 - v22;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>(255);
  v23 = type metadata accessor for ModifiedContent();
  v67 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v55 - v24;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(255);
  v25 = type metadata accessor for ModifiedContent();
  v69 = *(v25 - 8);
  v70 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v68 = &v55 - v26;
  DefaultListStyle.Body.base.getter(a2, a3, v13);
  v27 = v55;
  (*(v58 + 32))(v55, v13, v59);
  List<>.init(_:)(v27, a2, a3, v28, v16);
  if (one-time initialization token for defaultGridCellMinWidth != -1)
  {
    swift_once();
  }

  LOBYTE(v77) = 2;
  v78 = 0;
  LOBYTE(v79) = 1;
  v80 = static ClarityUIMetrics.defaultGridCellMinWidth;
  v29 = swift_getWitnessTable(protocol conformance descriptor for List<A, B>, v14);
  v30 = v56;
  View.listStyle<A, B>(_:idiom:)(&v77, v31, v14, &type metadata for MultimodalListStyle, v29, MEMORY[0x1E6980150], v56);
  (*(v60 + 8))(v16, v14);
  v32 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  v76[0] = v29;
  v76[1] = v32;
  v33 = MEMORY[0x1E697E858];
  v34 = swift_getWitnessTable(MEMORY[0x1E697E858], v17, v76);
  v35 = lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();
  v36 = v57;
  View.listStyle<A, B>(_:in:)(v35, v37, v17, &type metadata for InlineListStyle, &type metadata for GroupedFormStyleContext, v34, v35, v57);
  (*(v62 + 8))(v30, v17);
  v38 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v75[0] = v34;
  v75[1] = v38;
  v39 = swift_getWitnessTable(v33, v19, v75);
  v40 = v63;
  View.listStyle<A, B>(_:in:)(v39, v41, v19, &type metadata for SidebarListStyle, MEMORY[0x1E697F808], v39, MEMORY[0x1E697F800], v63);
  (*(v64 + 8))(v36, v19);
  v77 = 3;
  v42 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v74[0] = v39;
  v74[1] = v42;
  v43 = swift_getWitnessTable(v33, v21, v74);
  v44 = v66;
  View.listStyle<A, B>(_:in:)(&v77, v45, v21, &type metadata for InsetListStyle, MEMORY[0x1E6980190], v43, MEMORY[0x1E6980188], v66);
  (*(v65 + 8))(v40, v21);
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  v46 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v73[0] = v43;
  v73[1] = v46;
  v47 = swift_getWitnessTable(v33, v23, v73);
  v48 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  v49 = v68;
  View.listStyle<A, B>(_:if:)(v48, v23, &type metadata for InsetGroupedListStyle, v47, v48, v68);
  (*(v67 + 8))(v44, v23);
  LOBYTE(v77) = 2;
  v50 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  v72[0] = v47;
  v72[1] = v50;
  v51 = v33;
  v52 = v70;
  v53 = swift_getWitnessTable(v51, v70, v72);
  View.listStyle<A>(_:)(&v77, v52, &type metadata for PlainListStyle, v53);
  return (*(v69 + 8))(v49, v52);
}

uint64_t DefaultListStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for DefaultListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for DefaultListStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t _ListValue.Init1.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for SelectionManagerBox(255, v5, v6, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v10 = type metadata accessor for _ListStyleConfiguration(0, v7, WitnessTable, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v15 = type metadata accessor for ResolvedList(0, v5, v6, v14);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  v18 = *(a1 + 16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v3 + *(a1 + 52), v18, v20);
  _ListValue.Init1.base.getter(a1, v24, v17);
  (*(v11 + 32))(v13, v17, v10);
  return _ListValue.init(style:configuration:)(v22, v13, v18, v5, *(a1 + 32), v6, v27);
}

uint64_t _ListValue.Init1.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for ResolvedList(0, *(a1 + 24), *(a1 + 40), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t List.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v178 = a3;
  v4 = a1[2];
  v5 = a1[4];
  v183 = type metadata accessor for NavigableListModifier(0, v4, v5, a2);
  v177 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v176 = &v115 - v6;
  v151 = v4;
  v171 = v5;
  v8 = type metadata accessor for SelectionManagerBox(255, v4, v5, v7);
  v174 = v8;
  type metadata accessor for Binding();
  v182 = type metadata accessor for Optional();
  v184 = *(v182 - 8);
  v9 = MEMORY[0x1EEE9AC00](v182);
  v181 = &v115 - v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v8, v9);
  v12 = type metadata accessor for _ListStyleConfiguration(0, v8, WitnessTable, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = &v115 - v13;
  v168 = type metadata accessor for ResolvedList(0, v4, v5, v14);
  v172 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v115 - v15;
  type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>(255);
  v16 = type metadata accessor for ModifiedContent();
  v169 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v165 = &v115 - v17;
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  v158 = v16;
  v18 = type metadata accessor for ModifiedContent();
  v167 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v115 - v19;
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>, &type metadata for AutomaticTextFieldLabelDisplayMode, &protocol witness table for AutomaticTextFieldLabelDisplayMode, type metadata accessor for TextFieldLabelDisplayModeModifier);
  v155 = v18;
  v20 = type metadata accessor for ModifiedContent();
  v164 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v115 - v21;
  v156 = v20;
  v22 = type metadata accessor for ModifiedContent();
  v162 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v160 = &v115 - v23;
  HasLazyStackBehaviorInScrollableAxis = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v205[0] = &protocol witness table for ResolvedList<A>;
  v205[1] = HasLazyStackBehaviorInScrollableAxis;
  v25 = MEMORY[0x1E697E858];
  v26 = swift_getWitnessTable(MEMORY[0x1E697E858], v16, v205);
  v152 = v26;
  v27 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>, lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  v204[0] = v26;
  v204[1] = v27;
  v153 = swift_getWitnessTable(v25, v18, v204);
  v203[0] = v153;
  v203[1] = &protocol witness table for TextFieldLabelDisplayModeModifier<A>;
  v154 = swift_getWitnessTable(v25, v20, v203);
  v202[0] = v154;
  v202[1] = &protocol witness table for Fix_53164375;
  *&v179 = v22;
  *&v180 = swift_getWitnessTable(v25, v22, v202);
  v198 = v22;
  v199 = v180;
  v141 = MEMORY[0x1E69813B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v159 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v150 = &v115 - v28;
  v157 = a1;
  v29 = a1[5];
  v198 = a1[3];
  v199 = v29;
  v30 = v198;
  v148 = v198;
  v149 = v29;
  v31 = v29;
  v32 = swift_getOpaqueTypeMetadata2();
  v198 = v30;
  v199 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  v198 = v32;
  v199 = &type metadata for ListContainerContext;
  v200 = OpaqueTypeConformance2;
  v201 = v34;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>(255);
  v35 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v36 = type metadata accessor for ModifiedContent();
  v198 = v32;
  v199 = &type metadata for ListContainerContext;
  v200 = OpaqueTypeConformance2;
  v201 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v197[0] = v37;
  v197[1] = refreshed;
  v39 = swift_getWitnessTable(v25, v35, v197);
  v40 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v196[0] = v39;
  v196[1] = v40;
  v41 = swift_getWitnessTable(v25, v36, v196);
  v198 = v36;
  v199 = v41;
  swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for ModifiedContent();
  v144 = v42;
  v43 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  v145 = v43;
  v198 = v36;
  v199 = v41;
  v195[0] = swift_getOpaqueTypeConformance2();
  v195[1] = &protocol witness table for ResetContentMarginModifier;
  v131 = swift_getWitnessTable(v25, v42, v195);
  v198 = &type metadata for ListStyleContent;
  v199 = v42;
  v200 = v43;
  v201 = v131;
  type metadata accessor for StaticSourceWriter(255, &v198);
  v44 = type metadata accessor for ModifiedContent();
  v147 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v138 = &v115 - v45;
  v139 = v44;
  v46 = type metadata accessor for ModifiedContent();
  v146 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v142 = &v115 - v47;
  v198 = v179;
  v199 = v180;
  v133 = swift_getOpaqueTypeConformance2();
  v194[0] = v133;
  v194[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v137 = swift_getWitnessTable(v25, v44, v194);
  v193[0] = v137;
  v193[1] = &protocol witness table for NavigableListModifier<A>;
  v48 = swift_getWitnessTable(v25, v46, v193);
  v198 = v46;
  v199 = v48;
  v121 = v46;
  v49 = v48;
  v123 = v48;
  v136 = swift_getOpaqueTypeMetadata2();
  v140 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v115 - v50;
  type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>(255);
  v51 = type metadata accessor for ModifiedContent();
  v141 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v132 = &v115 - v52;
  v53 = v151;
  v54 = type metadata accessor for TypesMatch();
  swift_getWitnessTable(MEMORY[0x1E697DB48], v54);
  v55 = type metadata accessor for InvertedViewInputPredicate();
  v56 = type metadata accessor for ModifiedContent();
  v128 = v51;
  v129 = v55;
  v126 = v56;
  v57 = type metadata accessor for StaticIf();
  v120 = v57;
  v134 = *(v57 - 8);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v130 = &v115 - v59;
  v60 = swift_getWitnessTable(MEMORY[0x1E6980688], v55, v58);
  v125 = v60;
  v198 = v46;
  v199 = v49;
  v61 = swift_getOpaqueTypeConformance2();
  v119 = v61;
  v62 = _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesContextMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>, MEMORY[0x1E697FD30]);
  v192[0] = v61;
  v192[1] = v62;
  v191[0] = swift_getWitnessTable(v25, v51, v192);
  v63 = v191[0];
  v124 = v191[0];
  v191[1] = &protocol witness table for PrimitiveSelectionContainerModifier;
  v117 = swift_getWitnessTable(v25, v56, v191);
  v190[0] = v60;
  v190[1] = v117;
  v190[2] = v63;
  v122 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v57, v190);
  v64 = type metadata accessor for ResettableLazyLayoutRoot();
  v127 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v116 = &v115 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v66);
  v118 = &v115 - v68;
  v69 = *(v184 + 16);
  v184 += 16;
  v115 = v69;
  v70 = v181;
  v71 = v175;
  (v69)(v181, v175, v182, v67);
  v72 = v170;
  _ListStyleConfiguration.init(selection:)(v70, v170);
  v73 = v166;
  v74 = v53;
  v75 = v53;
  v76 = v171;
  ResolvedList.init(configuration:)(v72, v74, v171, v77, v166);
  v78 = v165;
  v79 = v168;
  View.listHasLazyStackBehaviorInVerticalScrollView<A>(requiring:)(MEMORY[0x1E697E690], v168, MEMORY[0x1E697E690], &protocol witness table for ResolvedList<A>, MEMORY[0x1E697E680]);
  (*(v172 + 8))(v73, v79);
  v80 = v163;
  v81 = v158;
  View.listPresentationSizing()(v158, v152);
  v82 = (*(v169 + 8))(v78, v81);
  v83 = v161;
  v84 = v155;
  View.textFieldLabelDisplayMode<A>(_:)(v82, v155, &type metadata for AutomaticTextFieldLabelDisplayMode, v153, &protocol witness table for AutomaticTextFieldLabelDisplayMode);
  v85 = (*(v167 + 8))(v80, v84);
  v86 = v160;
  v87 = v156;
  MEMORY[0x18D00A570](v85, v156, &unk_1EFFB72B0, v154);
  (*(v164 + 8))(v83, v87);
  v88 = v150;
  v89 = v179;
  View.configuresScrollPhaseState()();
  (*(v162 + 8))(v86, v89);
  v90 = v75;
  *&v91 = v75;
  *(&v91 + 1) = v148;
  *&v92 = v76;
  v93 = v76;
  *(&v92 + 1) = v149;
  v179 = v92;
  v180 = v91;
  v188[1] = v91;
  v188[2] = v92;
  v189 = v71;
  v94 = v138;
  v95 = OpaqueTypeMetadata2;
  View.viewAlias<A, B>(_:_:)(&type metadata for ListStyleContent, partial apply for closure #1 in List.body.getter, v188, OpaqueTypeMetadata2, &type metadata for ListStyleContent, v144, v133);
  (*(v159 + 8))(v88, v95);
  v96 = v157;
  v97 = Namespace.wrappedValue.getter();
  v98 = v181;
  v115(v181, v71, v182);
  v99 = List.stateHost.getter(v96);
  v100 = v176;
  NavigableListModifier.init(id:selection:stateHost:)(v97, v98, v99, v90, v93, v176);
  v101 = v142;
  v102 = v139;
  v103 = v183;
  MEMORY[0x18D00A570](v100, v139, v183, v137);
  (*(v177 + 8))(v100, v103);
  (*(v147 + 8))(v94, v102);
  v104 = v135;
  v105 = v121;
  View.configureForLazyContainer()();
  (*(v146 + 8))(v101, v105);
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  v106 = v132;
  v107 = v136;
  View.input<A>(_:)();
  (*(v140 + 8))(v104, v107);
  v185 = v180;
  v186 = v179;
  v187 = v71;
  v108 = v130;
  v109 = v128;
  View.staticIf<A, B>(_:then:)();
  (*(v141 + 8))(v106, v109);
  v110 = v116;
  v111 = v120;
  View.resettableLazyLayoutRoot()();
  (*(v134 + 8))(v108, v111);
  swift_getWitnessTable(MEMORY[0x1E6980408], v64);
  v112 = v118;
  static ViewBuilder.buildExpression<A>(_:)();
  v113 = *(v127 + 8);
  v113(v110, v64);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v113)(v112, v64);
}

void *initializeWithCopy for SelectionManagerBox(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
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
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_24:
  if (v10 == 2)
  {
    (*(v5 + 16))(a1);
    v16 = 2;
LABEL_32:
    *(a1 + v9) = v16;
    return a1;
  }

  if (v10 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
    }

    v16 = 1;
    goto LABEL_32;
  }

  *a1 = *a2;
  *(a1 + v9) = 0;

  return a1;
}

uint64_t _ListStyleConfiguration.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Binding();
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 40);

  return v7(a3, a1, v6);
}

uint64_t ResolvedList.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v10 = type metadata accessor for _ListStyleConfiguration(0, v7, WitnessTable, v9);
  v11 = *(*(v10 - 8) + 32);

  return v11(a5, a1, v10);
}

uint64_t View.listHasLazyStackBehaviorInVerticalScrollView<A>(requiring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E69808E8]);
  v8 = v7;
  lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v9 = type metadata accessor for AndOperationViewInputPredicate();
  swift_getWitnessTable(MEMORY[0x1E69809A0], v9);
  ViewModifier.requiring<A>(_:)(v9, &type metadata for ListHasLazyStackBehaviorInScrollableAxisModifier, v9);
  v12 = v8;
  v10 = type metadata accessor for StaticIf();
  return MEMORY[0x18D00A570](&v12, a2, v10, a4);
}

uint64_t *initializeWithCopy for ResolvedList(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v11 = v5 == 0;
    *a1 = *a2;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = v10;
    v14 = ((v13 + v7 + 8) & v8);
    v15 = ((v9 + v7 + 8) & v8);
    if (v11)
    {
      v16 = v6 + 1;
    }

    else
    {
      v16 = v6;
    }

    if (v16 > v6)
    {
      v6 = v16;
    }

    if (v6 <= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v6;
    }

    v18 = v15[v17];

    if (v18 >= 3)
    {
      if (v17 <= 3)
      {
        v19 = v17;
      }

      else
      {
        v19 = 4;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          goto LABEL_35;
        }

        v20 = *v15;
      }

      else if (v19 == 2)
      {
        v20 = *v15;
      }

      else if (v19 == 3)
      {
        v20 = *v15 | (v15[2] << 16);
      }

      else
      {
        v20 = *v15;
      }

      v24 = (v20 | ((v18 - 3) << (8 * v17))) + 3;
      v25 = v20 + 3;
      if (v17 >= 4)
      {
        v18 = v25;
      }

      else
      {
        v18 = v24;
      }
    }

LABEL_35:
    if (v18 == 2)
    {
      (*(v4 + 16))(v14, v15, v3);
      v26 = 2;
    }

    else
    {
      if (v18 != 1)
      {
        *v14 = *v15;
        *(v14 + v17) = 0;

        return a1;
      }

      if ((*(v4 + 48))(v15, 1, v3))
      {
        memcpy(v14, v15, v16);
      }

      else
      {
        (*(v4 + 16))(v14, v15, v3);
        (*(v4 + 56))(v14, 0, 1, v3);
      }

      v26 = 1;
    }

    *(v14 + v17) = v26;
    return a1;
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

  return memcpy(a1, a2, v6 + v21 + 1);
}

void *destroy for ResolvedList(void *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v4 < 0xFFFFFFFFuLL)
  {
    return result;
  }

  v5 = *(v3 + 84);
  v6 = *(v3 + 80) & 0xF8 | 7;
  v17 = *(*(a2 + 16) - 8);
  v7 = *(v3 + 64);

  v8 = ((v4 + v6 + 8) & ~v6);
  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v8[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *v8;
    }

    else if (v12 == 2)
    {
      v13 = *v8;
    }

    else if (v12 == 3)
    {
      v13 = *v8 | (v8[2] << 16);
    }

    else
    {
      v13 = *v8;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_23:
  if (v10 == 2)
  {
    v15 = v17;
LABEL_28:
    v16 = *(v15 + 8);

    return v16(v8, v2);
  }

  if (v10 == 1)
  {
    result = (*(v17 + 48))(v8, 1, v2);
    v15 = v17;
    if (result)
    {
      return result;
    }

    goto LABEL_28;
  }
}

uint64_t View.listPresentationSizing()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v8 = 0;
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  MEMORY[0x18D00A570](&KeyPath, a1, v4, a2);
  return outlined consume of Environment<CGSize?>.Content(KeyPath, v7, v8, HIBYTE(v8));
}

uint64_t ToolbarItem.MakeView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v6 + 16))(v8, Value, a3);
  View.defaultToolbarBarPocket()(a3, a4);
  return (*(v6 + 8))(v8, a3);
}

void type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ListPresentationSizingModifier(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<PlaybackButton._StyleStorage>.Content(*a2, v4, v6, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return a1;
}

double outlined copy of Environment<PlaybackButton._StyleStorage>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

double sub_18BF80400(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void View.textFieldLabelDisplayMode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TextFieldLabelDisplayModeModifier(0, a3, a5, a4);

  JUMPOUT(0x18D00A570);
}

uint64_t List.stateHost.getter(uint64_t a1)
{
  type metadata accessor for NavigationStateHost();
  _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type NavigationStateHost and conformance NavigationStateHost, type metadata accessor for NavigationStateHost, "=M\tbTv\b");

  return StateObject.wrappedValue.getter();
}

uint64_t NavigableListModifier.init(id:selection:stateHost:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for NavigableListModifier(0, a4, a5, a4);
  v12 = *(v11 + 36);
  type metadata accessor for SelectionManagerBox(255, a4, a5, v13);
  type metadata accessor for Binding();
  v14 = type metadata accessor for Optional();
  result = (*(*(v14 - 8) + 32))(&a6[v12], a2, v14);
  *&a6[*(v11 + 40)] = a3;
  return result;
}

void *initializeWithCopy for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 + 15;
  v8 = ~v6 & 0xFFFFFFFFFFFFFFF8;
  v9 = ((a1 + v6 + 15) & v8);
  v10 = ((a2 + v6 + 15) & v8);
  v11 = *(v4 + 64);
  v12 = (v6 + 23) & v8;
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    v29 = *(a3 + 16);
    v30 = (v6 + 23) & v8;
    v14 = v5 == 0;
    *v9 = *v10;
    v15 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v13;
    v16 = ((v15 + v7) & v8);
    v17 = ((v13 + v7) & v8);
    if (v14)
    {
      v18 = v11 + 1;
    }

    else
    {
      v18 = v11;
    }

    if (v18 > v11)
    {
      v11 = v18;
    }

    if (v11 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v11;
    }

    v20 = v17[v19];

    if (v20 < 3)
    {
      v24 = v16;
      goto LABEL_36;
    }

    if (v19 <= 3)
    {
      v21 = v19;
    }

    else
    {
      v21 = 4;
    }

    if (v21 <= 1)
    {
      v24 = v16;
      if (!v21)
      {
        goto LABEL_36;
      }

      v22 = *v17;
    }

    else
    {
      if (v21 == 2)
      {
        v22 = *v17;
      }

      else if (v21 == 3)
      {
        v22 = *v17 | (v17[2] << 16);
      }

      else
      {
        v22 = *v17;
      }

      v24 = v16;
    }

    v25 = (v22 | ((v20 - 3) << (8 * v19))) + 3;
    v26 = v22 + 3;
    if (v19 >= 4)
    {
      v20 = v26;
    }

    else
    {
      v20 = v25;
    }

LABEL_36:
    if (v20 == 2)
    {
      (*(v4 + 16))(v24, v17, v29);
      v27 = 2;
    }

    else
    {
      if (v20 != 1)
      {
        *v24 = *v17;
        *(v24 + v19) = 0;

LABEL_45:
        v12 = v30;
        goto LABEL_46;
      }

      if ((*(v4 + 48))(v17, 1, v29))
      {
        memcpy(v24, v17, v18);
      }

      else
      {
        (*(v4 + 16))(v24, v17, v29);
        (*(v4 + 56))(v24, 0, 1, v29);
      }

      v27 = 1;
    }

    *(v24 + v19) = v27;
    goto LABEL_45;
  }

  if (v5)
  {
    v23 = *(v4 + 64);
  }

  else
  {
    v23 = v11 + 1;
  }

  if (v23 > v11)
  {
    v11 = v23;
  }

  if (v11 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v11;
  }

  memcpy(v9, v10, v19 + v12 + 1);
LABEL_46:
  *((v9 + v19 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v19 + v12 + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

double destroy for NavigableListModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 80) & 0xF8;
  v6 = v5 + 15;
  v7 = ~(v5 | 7);
  v8 = *(v3 + 64);
  v9 = ((((v5 + 15 + a1) & v7) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v9 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_30;
  }

  v10 = v4 == 0;
  v11 = ((v9 + v6) & v7);
  if (v10)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= v8)
  {
    v12 = v8;
  }

  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v11 + v13);
  v15 = v14 - 3;
  if (v14 >= 3)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *v11;
      }

      else if (v16 == 3)
      {
        v17 = *v11 | (*(((v9 + v6) & v7) + 2) << 16);
      }

      else
      {
        v17 = *v11;
      }

LABEL_23:
      v18 = (v17 | (v15 << (8 * v13))) + 3;
      v14 = v17 + 3;
      if (v13 < 4)
      {
        v14 = v18;
      }

      goto LABEL_25;
    }

    if (v16)
    {
      v17 = *v11;
      goto LABEL_23;
    }
  }

LABEL_25:
  if (v14 == 2)
  {
LABEL_28:
    (*(v3 + 8))((v9 + v6) & v7, v2);
    goto LABEL_30;
  }

  if (v14 == 1)
  {
    if ((*(v3 + 48))((v9 + v6) & v7, 1, v2))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:

  return result;
}

uint64_t ToAnyListSelection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for SelectionManagerBox(0, a2, a3, a4);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v13 + 16))(&v16 - v11, a1, v10);
  return AnyListSelection.init<A>(_:)(v12, a2, a3, v14, a5);
}

uint64_t AnyListSelection.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for SelectionManagerBox(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v14 = type metadata accessor for AnyListSelection.Storage(0, a2, a3, v13);
  (*(v10 + 16))(v12, a1, v9);
  swift_allocObject();
  v18 = AnyListSelection.Storage.init(box:)(v12, v15, v16, v17);
  a5[3] = v14;
  a5[4] = swift_getWitnessTable("̩\b", v14);
  *a5 = v18;
  return (*(v10 + 8))(a1, v9);
}

uint64_t type metadata completion function for AnyListSelection.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SelectionManagerBox(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AnyListSelection.Storage.init(box:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 96);
  v7 = type metadata accessor for SelectionManagerBox(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v7 - 8) + 32))(v4 + v6, a1, v7);
  return v4;
}

uint64_t instantiation function for generic protocol witness table for AnyListSelection.Storage<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyListSelection.Storage<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for SelectionManagerBox(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
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

  v6 = a1[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    v6 = v9 + 3;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_22:
  if (v6 == 2)
  {
    v13 = *(v3 + 8);
LABEL_31:

    return v13(a1, v2);
  }

  if (v6 == 1)
  {
    v11 = a1;
    v14 = *(*(a2 + 16) - 8);
    result = (*(v3 + 48))();
    if (result)
    {
      return result;
    }

    v13 = *(v14 + 8);
    a1 = v11;
    goto LABEL_31;
  }
}

uint64_t View.optionalSelectionContainer<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v32 = a4;
  v33 = a6;
  v9 = type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v31 = a2;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(v11 + 16))(v13, a1, v10, v19);
  v22 = *(v9 - 8);
  if ((*(v22 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v36 = 0;
    memset(v35, 0, sizeof(v35));
  }

  else
  {
    v23 = v30;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v25 = type metadata accessor for AsAnySelection(0, a3, v23, v24);
    swift_getWitnessTable(protocol conformance descriptor for AsAnySelection<A>, v25);
    Binding.projecting<A>(_:)();
    (*(v22 + 8))(v13, v9);
  }

  v38 = 0;
  memset(v37, 0, sizeof(v37));
  outlined assign with take of Binding<Selection>?(v35, v37);
  v26 = v32;
  MEMORY[0x18D00A570](v37, v31, &type metadata for PrimitiveSelectionContainerModifier, v32);
  outlined destroy of PrimitiveSelectionContainerModifier(v37);
  v34[0] = v26;
  v34[1] = &protocol witness table for PrimitiveSelectionContainerModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v14, v34);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v15 + 8);
  v27(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v21, v14);
}

uint64_t initializeWithCopy for ZoomPresentationTransitionStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t Picker.init<A>(selection:content:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a6;
  v41 = a8;
  v37 = a5;
  v38 = a4;
  v35 = a3;
  v36 = a2;
  v33[1] = a11;
  v39 = a9;
  v33[0] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v34 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42[0] = v15;
  v42[1] = v16;
  v42[2] = v17;
  v42[3] = v18;
  v19 = type metadata accessor for PickerBuilder.Content(0, v42);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  v22 = type metadata accessor for Binding();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v33 - v25;
  v27 = (*(v23 + 16))(v33 - v25, a1, v22, v24);
  v36(v27);
  v28 = v33[0];
  v29 = PickerBuilder.Content.init(_:)();
  v30 = v34;
  v38(v29);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerBuilder<A>.Content<A1>, v19);
  Picker.init(selection:content:label:)(v26, v21, v30, v40, a7, v19, v39, v28, v41, WitnessTable);
  return (*(v23 + 8))(a1, v22);
}

uint64_t getEnumTagSinglePayload for Toggle(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
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

uint64_t AsAnySelection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 16);

  return v7(boxed_opaque_existential_1, a1, a2);
}

void type metadata accessor for Binding<Selection>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<Selection>?)
  {
    _sSay7SwiftUI10Selectable_pGMaTm_0(255, &lazy cache variable for type metadata for Binding<Selection>, &lazy cache variable for type metadata for Selection, &protocol descriptor for Selection, MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<Selection>?);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for PopoverAttachmentAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<CGFloat?>.Content(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t outlined assign with take of Binding<Selection>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Selection>?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for [Selectable](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI10Selectable_pGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 initializeWithCopy for PrimitiveSelectionContainerModifier(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 5);
    *(a1 + 40) = v3;
    v4 = v3;
    v5 = **(v3 - 8);

    v5(a1 + 16, a2 + 2, v4);
  }

  else
  {
    v9 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 2);
    *(a1 + 32) = result;
    *(a1 + 48) = a2[6];
  }

  return result;
}

void type metadata accessor for StyleContextWriter<MenuStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t *destroy for PrimitiveSelectionContainerModifier(uint64_t *result)
{
  if (result[1])
  {
    v1 = result + 2;

    return __swift_destroy_boxed_opaque_existential_1(v1);
  }

  return result;
}

void type metadata accessor for Binding<AnyListSelection>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<AnyListSelection>?)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<AnyListSelection>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of Binding<AnyListSelection>?(uint64_t a1)
{
  type metadata accessor for Binding<AnyListSelection>?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ListValue.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v13 = *(type metadata accessor for _ListValue(0, v20) + 52);
  v15 = type metadata accessor for SelectionManagerBox(255, a4, a6, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v15);
  v18 = type metadata accessor for _ListStyleConfiguration(0, v15, WitnessTable, v17);
  return (*(*(v18 - 8) + 32))(a7 + v13, a2, v18);
}

uint64_t initializeWithCopy for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) & 0xF8 | 7;
  v11 = *(v6 + 48) + v10;
  v12 = ~v10;
  v13 = ((v11 + a1) & ~v10);
  v14 = ((v11 + a2) & ~v10);
  v15 = *(v8 + 64);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v16 < 0xFFFFFFFFuLL)
  {
    v26 = (v10 + 16) & v12;
    if (v9)
    {
      v27 = *(*(v7 - 8) + 64);
    }

    else
    {
      v27 = v15 + 1;
    }

    if (v27 > v15)
    {
      v15 = v27;
    }

    if (v15 <= 8)
    {
      v15 = 8;
    }

    memcpy(v13, v14, v15 + v26 + 1);
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

  if (v23 >= 3)
  {
    if (v22 <= 3)
    {
      v24 = v22;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *v20;
      }

      else if (v24 == 3)
      {
        v25 = *v20 | (*(v20 + 2) << 16);
      }

      else
      {
        v25 = *v20;
      }

      goto LABEL_30;
    }

    if (v24)
    {
      v25 = *v20;
LABEL_30:
      v28 = (v25 | ((v23 - 3) << (8 * v22))) + 3;
      v29 = v25 + 3;
      if (v22 >= 4)
      {
        v23 = v29;
      }

      else
      {
        v23 = v28;
      }
    }
  }

  if (v23 == 2)
  {
    (*(v8 + 16))(v19, v20, v7);
    v30 = 2;
LABEL_41:
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
      (*(v8 + 16))(v19, v20, v7);
      (*(v8 + 56))(v19, 0, 1, v7);
    }

    v30 = 1;
    goto LABEL_41;
  }

  *v19 = *v20;
  *(v19 + v22) = 0;

  return a1;
}

uint64_t destroy for _ListValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  result = (*v4)();
  v6 = *(v4 + 56);
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((((v6 + a1 + v9) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v10 < 0xFFFFFFFFuLL)
  {
    return result;
  }

  v11 = *(v8 + 84);
  v22 = *(v7 - 8);
  v12 = *(v8 + 64);

  v13 = ((v10 + v9 + 8) & ~v9);
  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v14 <= 8)
  {
    v14 = 8;
  }

  v15 = v13[v14];
  v16 = v15 - 3;
  if (v15 < 3)
  {
    v19 = v22;
    goto LABEL_25;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    v19 = v22;
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = *v13;
  }

  else
  {
    if (v17 == 2)
    {
      v18 = *v13;
    }

    else if (v17 == 3)
    {
      v18 = *v13 | (v13[2] << 16);
    }

    else
    {
      v18 = *v13;
    }

    v19 = v22;
  }

  v20 = (v18 | (v16 << (8 * v14))) + 3;
  v15 = v18 + 3;
  if (v14 < 4)
  {
    v15 = v20;
  }

LABEL_25:
  if (v15 == 2)
  {
LABEL_29:
    v21 = *(v19 + 8);

    return v21(v13, v7);
  }

  if (v15 == 1)
  {
    result = (*(v19 + 48))(v13, 1, v7);
    v19 = v22;
    if (result)
    {
      return result;
    }

    goto LABEL_29;
  }
}

uint64_t List<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  v10 = type metadata accessor for Binding();
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v18[0] = a2;
  v18[1] = &type metadata for ListStyleContent;
  v18[2] = a3;
  v18[3] = &protocol witness table for ListStyleContent;
  v11 = type metadata accessor for List(0, v18);
  *(a5 + *(v11 + 56)) = 0;
  v12 = a5 + *(v11 + 60);
  *v12 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = type metadata accessor for Optional();
  (*(*(v13 - 8) + 24))(a5, a1, v13);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v9);
  v16 = type metadata accessor for _ListStyleConfiguration(0, v9, WitnessTable, v15);
  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t destroy for _ListStyleConfiguration(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~v4;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = v3;
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    result = (*(v3 + 48))((v6 + v4 + 8) & v5);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *v6;
  if (*v6 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = *(v10 + 8);

    return v9((v6 + v4 + 8) & v5, v2);
  }

  return result;
}

uint64_t View.listStyle<A, B>(_:idiom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v29 = a6;
  v24[1] = a7;
  v25 = a1;
  v27 = a8;
  v28 = a3;
  v26 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ListStyleWriter(0, v12, v13, v12);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - v16;
  type metadata accessor for InterfaceIdiomPredicate();
  v18 = type metadata accessor for StaticIf();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v24 - v21;
  (*(v9 + 16))(v11, v25, a4, v20);
  (*(v9 + 32))(v17, v11, a4);
  ViewModifier.requiring<A>(_:)();
  (*(v15 + 8))(v17, v14);
  MEMORY[0x18D00A570](v22, v28, v18, v29);
  return (*(v19 + 8))(v22, v18);
}

uint64_t View.popover<A>(isPresented:attachmentAnchor:arrowEdges:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *(a4 + 16);
  v23[0] = a1;
  v23[1] = a2;
  v24 = a3;
  v25 = a6;
  v26 = a7;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v21[0] = v12;
  v21[1] = v13;
  v22 = v14;
  v15 = type metadata accessor for PopoverConditionalStateProvider(0, a9, a11, a4);
  WitnessTable = swift_getWitnessTable("tM\t", v15);
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v23, v21, a5, 0, 1, 0, v15, WitnessTable, v30);

  outlined copy of Environment<CGFloat?>.Content(v12, v13, v14);
  v18 = type metadata accessor for PopoverPresentationModifier(0, v15, WitnessTable, v17);
  MEMORY[0x18D00A570](v30, a8, v18, a10);
  return (*(*(v18 - 8) + 8))(v30, v18);
}

unint64_t lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext()
{
  result = lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupedFormStyleContext, &type metadata for GroupedFormStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext;
  if (!lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext)
  {
    result = swift_getWitnessTable("!q\x1BcD\b\t", &type metadata for GroupedFormStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormStyleContext and conformance GroupedFormStyleContext);
  }

  return result;
}

uint64_t View.listStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v38 = a6;
  v34 = a2;
  v35 = a7;
  v36 = a8;
  v37 = a3;
  v10 = *(a5 - 8);
  v32 = a1;
  v33 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ListStyleWriter(0, v17, v18, v17);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  type metadata accessor for StyleContextAcceptsPredicate();
  v23 = type metadata accessor for StaticIf();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v31 - v26;
  (*(v13 + 16))(v16, v32, a4, v25);
  (*(v13 + 32))(v22, v16, a4);
  v28 = v33;
  v29 = v31;
  (*(v33 + 16))(v31, v34, a5);
  v40 = a5;
  v41 = v29;
  v39 = v35;
  ViewModifier.requiring<A>(_:)();
  (*(v20 + 8))(v22, v19);
  (*(v28 + 8))(v29, a5);
  MEMORY[0x18D00A570](v27, v37, v23, v38);
  return (*(v24 + 8))(v27, v23);
}

uint64_t View.listStyle<A, B>(_:if:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a5;
  v24[2] = a6;
  v25 = a2;
  v24[1] = a7;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ListStyleWriter(0, v13, v14, v12);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - v16;
  v18 = type metadata accessor for StaticIf();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v24 - v21;
  (*(v9 + 16))(v11, a1, a4, v20);
  (*(v9 + 32))(v17, v11, a4);
  StaticIf<>.init<>(_:then:)();
  MEMORY[0x18D00A570](v22, v25, v18, v26);
  return (*(v19 + 8))(v22, v18);
}

uint64_t initializeWithCopy for PopoverConditionalStateProvider(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v5;
  v6 = a2[8];

  if (v6)
  {
    v7 = a2[9];
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
    (**(v6 - 8))(a1 + 40, a2 + 5, v6);
  }

  else
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = a2[9];
  }

  return a1;
}

void destroy for PopoverConditionalStateProvider(void *a1)
{

  if (a1[8])
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 5);
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PopoverPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PopoverPresentationModifier<A>, a5);

  return MEMORY[0x1EEDE1608](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t _ListValue.Init2.base.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for ResolvedList(0, a2, a4, a3);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t SidebarListBody.init(selection:options:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v17 = type metadata accessor for SidebarListBody(0, v20);
  *(a8 + *(v17 + 52)) = a2;
  a3();
  v18 = a8 + *(v17 + 60);
  result = swift_getKeyPath();
  *v18 = result;
  *(v18 + 8) = 0;
  return result;
}

void *closure #1 in SidebarListStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = closure #1 in closure #1 in SidebarListStyle.Body.value.getter(a1, a2, a3);
  *a4 = 0;
  *(a4 + 8) = KeyPath;
  *(a4 + 16) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in SidebarListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for SidebarListStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for SidebarListStyle;
  v10[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  SidebarListStyle.Body.base.getter(a2, a3, v10 - v7);
  return (*(v6 + 8))(v8, v5);
}

uint64_t *initializeWithCopy for SidebarListBody(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    v29 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v29 & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v17 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 16;
  v21 = *(v19 + 80);
  v22 = (v17 + v21 + 8) & ~v21;
  v23 = (v18 + v21 + 8) & ~v21;
  (*(v19 + 16))(v22, v23);
  v24 = *(v20 + 48) + 7;
  v25 = (v24 + v22) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + v23) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  LOBYTE(v23) = *(v26 + 8);
  outlined copy of Environment<Selector?>.Content(*v26, v23);
  *v25 = v27;
  *(v25 + 8) = v23;
  return __dst;
}

uint64_t *NavigationStackReader.ExtractedRoot.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v30[1] = a2;
  v32 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[2] = v10;
  v41 = v10;
  v42 = v11;
  v30[3] = v12;
  v43 = v12;
  v44 = v13;
  v14 = type metadata accessor for NavigationStackReader.ExtractedRoot(255, &v41);
  type metadata accessor for ReadDestinationsModifier(255, v14, &protocol witness table for NavigationStackReader<A, B>.ExtractedRoot, v15);
  v16 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
  v31 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v30 - v19;
  Value = AGGraphGetValue();
  (*(v7 + 16))(v9, Value, a3);
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  v23 = *(result + 8);
  if (v23 == 6)
  {
    __break(1u);
  }

  else
  {
    v24 = result[2];
    v25 = *result;
    v41 = 0;
    v42 = v25;
    v43 = v23;
    v44 = v24;
    v45 = 0;
    v46 = 1;
    View.readNavigationDestinations<A>(position:isActive:reader:)(&v41, 1, v14, a3, v14, a4, &protocol witness table for NavigationStackReader<A, B>.ExtractedRoot);
    (*(v7 + 8))(v9, a3);
    NavigationStackReader.ExtractedRoot.authority.getter(v37);
    if (v38 == 2)
    {
      outlined destroy of NavigationAuthority??(v37);
      v39 = xmmword_18CD633F0;
      v40 = 0;
    }

    else
    {
      outlined init with copy of NavigationAuthority?(v37, v33);
      if (v34 == 1)
      {
        v39 = xmmword_18CD633F0;
        v40 = 0;
      }

      else
      {
        outlined init with take of NavigationAuthority(v33, &v39);
      }

      outlined destroy of NavigationAuthority?(v37);
    }

    v36[0] = a4;
    v36[1] = &protocol witness table for ReadDestinationsModifier<A>;
    v26 = MEMORY[0x1E697E858];
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v31, v36);
    v28 = lazy protocol witness table accessor for type _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey);
    v35[0] = WitnessTable;
    v35[1] = v28;
    v29 = swift_getWitnessTable(v26, v17, v35);
    View.processNavigationDestinations<A>(authority:processor:)(&v39, v14, v17, v14, v29, &protocol witness table for NavigationStackReader<A, B>.ExtractedRoot);
    outlined destroy of NavigationAuthority?(&v39);
    return (*(v18 + 8))(v20, v17);
  }

  return result;
}

unint64_t initializeWithCopy for SidebarListStyle.BodyContent(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  v9 = *(*(a3 + 16) - 8);
  (*(v9 + 16))((*(v9 + 80) + 17 + v5) & ~*(v9 + 80), (*(v9 + 80) + 17 + v6) & ~*(v9 + 80));
  return a1;
}

uint64_t destroy for SidebarListBody(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = (a1 + v8 + ((v6 + 16) & v7) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(*(a2 + 16) - 8);
  v13 = v12 + 8;
  v14 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  (*(v12 + 8))(v14);
  v15 = (*(v13 + 56) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 8);

  return outlined consume of Environment<Selector?>.Content(v16, v17);
}

uint64_t destroy for SidebarListStyle.BodyContent(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Bool>.Content(*((a1 & 0xFFFFFFFFFFFFFFF8) + 8), *((a1 & 0xFFFFFFFFFFFFFFF8) + 16));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 17) & ~*(v4 + 80);

  return v5(v6);
}

double protocol witness for Projection.get(base:) in conformance AnyNavigationPath.ToHeterogeneous@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for AnyNavigationPath.HeterogeneousBoxBase();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  *a2 = v9;
  outlined copy of NavigationPath.Representation(v3, v4, v5, v6);

  return result;
}

uint64_t SidebarListBody.CollectionViewBody.init(content:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 24) = 0;
  *(a7 + 32) = swift_getKeyPath();
  *(a7 + 40) = 0;
  v19 = 0;
  *(a7 + 48) = swift_getKeyPath();
  *(a7 + 113) = 0;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v14 = type metadata accessor for SidebarListBody.CollectionViewBody(0, v18);
  (*(*(a3 - 8) + 32))(a7 + *(v14 + 64), a1, a3);
  v15 = *(v14 + 68);
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  return (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
}

uint64_t SidebarListBody.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  v24 = v4;
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v38 = a1[2];
  v6 = v38;
  v39 = v5;
  v40 = v8;
  v41 = v7;
  v22 = type metadata accessor for SidebarListBody.CollectionViewBody(255, &v38);
  v38 = v6;
  v39 = v5;
  v40 = v8;
  v41 = v7;
  v9 = type metadata accessor for SidebarListBody.TableViewRoot(255, &v38);
  v23 = type metadata accessor for _VariadicView.Tree();
  v10 = type metadata accessor for StaticIf();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v31 = v6;
  v32 = v5;
  v33 = v8;
  v34 = v7;
  v35 = v2;
  v26 = v6;
  v27 = v5;
  v28 = v8;
  v29 = v7;
  v30 = v2;
  v17 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.CollectionViewBody, v22);
  v37[0] = swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.TableViewRoot, v9);
  v37[1] = v8;
  v21 = swift_getWitnessTable(MEMORY[0x1E697E308], v23, v37);
  StaticIf<>.init(_:then:else:)();
  v36[0] = v17;
  v36[1] = WitnessTable;
  v36[2] = v21;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v10, v36);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v16, v10);
}

uint64_t closure #1 in SidebarListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a1;
  v33 = a6;
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - v11;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v28 = a4;
  v16 = type metadata accessor for SidebarListBody.CollectionViewBody(0, &v34);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v23 = type metadata accessor for SidebarListBody(0, &v34);
  v24 = v30;
  (*(v12 + 16))(v15, v30 + *(v23 + 56), a2);
  v25 = v29;
  (*(v31 + 16))(v29, v24, v32);
  SidebarListBody.CollectionViewBody.init(content:selection:)(v15, v25, a2, a3, v28, a5, v19);
  swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.CollectionViewBody, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v17 + 8);
  v26(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v22, v16);
}

uint64_t initializeWithCopy for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  *a1 = v5;
  *(a1 + 8) = v6;
  v48 = a1;
  v7 = a1 & 0xFFFFFFFFFFFFFFF8;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v8 + 25);
  v10 = *(v8 + 24);
  outlined copy of Environment<CGFloat?>.Content(v9, v10, v5);
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 25) = v5;
  v11 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 33) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  LOBYTE(v5) = *(v12 + 8);
  outlined copy of Environment<Selector?>.Content(*v12, v5);
  *v11 = v13;
  *(v11 + 8) = v5;
  v14 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 49) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  v22 = *(v15 + 48);
  v23 = *(v15 + 56);
  v45 = *(v15 + 64);
  v46 = *(v15 + 65);
  v24 = outlined copy of Environment<ListPadding>.Content(*v15, v17, v18, v19, v20, v21, v22, v23, v45, v46);
  *v14 = v16;
  *(v14 + 8) = v17;
  *(v14 + 16) = v18;
  *(v14 + 24) = v19;
  *(v14 + 32) = v20;
  *(v14 + 40) = v21;
  *(v14 + 48) = v22;
  *(v14 + 56) = v23;
  *(v14 + 64) = v45;
  *(v14 + 65) = v46;
  v25 = *(*(a3 + 16) - 8);
  v26 = v25 + 16;
  v27 = *(v25 + 80);
  v28 = (v27 + 66 + v14) & ~v27;
  v29 = (v27 + 66 + v15) & ~v27;
  (*(v25 + 16))(v28, v29, v24);
  v30 = *(a3 + 24);
  v31 = *(v26 + 48);
  v32 = *(v30 - 8);
  v33 = *(v32 + 80);
  v34 = (v33 | 7) + v31;
  v35 = ((v34 + v28) & ~(v33 | 7));
  v36 = ((v34 + v29) & ~(v33 | 7));
  v37 = ~v33;
  v38 = *(v32 + 64);
  v39 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v32 + 84) & 0x80000000) == 0)
  {
    v40 = *v39;
    if (*v39 >= 0xFFFFFFFF)
    {
      LODWORD(v40) = -1;
    }

    if (v40 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v35 = *v36;
    v41 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v39;
    v42 = v41 + v33 + 8;
    v43 = *(v32 + 16);

    v43(v42 & v37, (v39 + v33 + 8) & v37, v30);
    return v48;
  }

  if (!(*(v32 + 48))((v39 + v33 + 8) & v37))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v35, v36, ((v33 + 16) & ~v33) + v38);
  return v48;
}

double outlined copy of Environment<ListPadding>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  return result;
}

uint64_t PopoverConditionalStateProvider.isPresented.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  _ss11AnyHashableVSgMaTm_3(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

uint64_t destroy for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  outlined consume of Environment<Selector?>.Content(*((v3 + 33) & 0xFFFFFFFFFFFFFFF8), *(((v3 + 33) & 0xFFFFFFFFFFFFFFF8) + 8));
  v4 = (v3 + 49) & 0xFFFFFFFFFFFFFFF8;
  v5 = outlined consume of Environment<ListPadding>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 65));
  v6 = *(*(a2 + 16) - 8);
  v7 = v6 + 8;
  v8 = (v4 + *(v6 + 80) + 66) & ~*(v6 + 80);
  (*(v6 + 8))(v8, v5);
  v9 = *(v7 + 56);
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + (v12 | 7)) & ~(v12 | 7);
  v14 = ~v12;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = v11;
  if ((*(v11 + 84) & 0x80000000) != 0)
  {
    result = (*(v11 + 48))((v15 + v12 + 8) & v14);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v16 = *v15;
  if (*v15 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_7:

    v18 = *(v19 + 8);

    return v18((v15 + v12 + 8) & v14, v10);
  }

  return result;
}

uint64_t View.readNavigationDestinations<A>(position:isActive:reader:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DestinationsModifier = type metadata accessor for ReadDestinationsModifier(255, a5, a7, a4);
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v18;
  v22 = v16;
  v23 = v17;
  v24 = a2;
  MEMORY[0x18D00A570](v21, a4, DestinationsModifier, a6);
  *(swift_allocObject() + 16) = a2;
  v20[0] = a6;
  v20[1] = &protocol witness table for ReadDestinationsModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v12, v20);
  View.transformPreference<A>(_:_:)();

  return (*(v13 + 8))(v15, v12);
}

double NavigationStackReader.ExtractedRoot.authority.getter@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for Binding<AnyNavigationPath>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a2);
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_18CD874C0;
    *(a2 + 16) = 0;
  }

  return result;
}

double outlined consume of Environment<ListPadding>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MenuStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #2 in SidebarListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v36 = a1;
  v37 = a6;
  v31 = a3;
  type metadata accessor for Binding();
  v34 = type metadata accessor for Optional();
  v10 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v30 - v11;
  v44[0] = a2;
  v44[1] = a3;
  v44[2] = a4;
  v44[3] = a5;
  v13 = type metadata accessor for SidebarListBody.TableViewRoot(0, v44);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for _VariadicView.Tree();
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  v23 = v36;
  (*(v10 + 16))(v12, v36, v34, v20);
  v24 = v12;
  v26 = v31;
  v25 = v32;
  v27 = v33;
  SidebarListBody.TableViewRoot.init(selection:)(v24, a2, v31, v32, v33, v15);
  v38 = a2;
  v39 = v26;
  v40 = v25;
  v41 = v27;
  v42 = v23;
  _VariadicView.Tree.init(_:content:)();
  v43[0] = swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.TableViewRoot, v13);
  v43[1] = v25;
  swift_getWitnessTable(MEMORY[0x1E697E308], v16, v43);
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v35 + 8);
  v28(v18, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v22, v16);
}

uint64_t SidebarListBody.TableViewRoot.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = swift_getKeyPath();
  *(a6 + 40) = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v12 = *(type metadata accessor for SidebarListBody.TableViewRoot(0, v15) + 60);
  type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  return (*(*(v13 - 8) + 32))(a6 + v12, a1, v13);
}

unint64_t lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuStyleConfiguration.Label, &type metadata for MenuStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuStyleConfiguration.Label, &type metadata for MenuStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label);
  }

  return result;
}

uint64_t initializeWithCopy for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 9);
  v8 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v8, v7);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 9) = v7;
  v9 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v10 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v6) = *(v10 + 9);
  v12 = *(v10 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v10, v12, v6);
  *v9 = v11;
  *(v9 + 8) = v12;
  *(v9 + 9) = v6;
  v13 = (v9 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v10 + 17) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  LOBYTE(v6) = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(*v14, v6);
  *v13 = v15;
  *(v13 + 8) = v6;
  v16 = *(a3 + 24);
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = (v18 | 7) + 9;
  v20 = ((v19 + v13) & ~(v18 | 7));
  v21 = ((v19 + v14) & ~(v18 | 7));
  v22 = ~v18;
  v23 = *(v17 + 64);
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v17 + 84) & 0x80000000) == 0)
  {
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    if (v25 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v20 = *v21;
    v26 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v26 = *v24;
    v27 = v26 + v18 + 8;
    v28 = *(v17 + 16);

    v28(v27 & v22, (v24 + v18 + 8) & v22, v16);
    return a1;
  }

  if (!(*(v17 + 48))((v24 + v18 + 8) & v22))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v20, v21, ((v18 + 16) & ~v18) + v23);
  return a1;
}

uint64_t closure #1 in closure #2 in SidebarListBody.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for SidebarListBody(0, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

unint64_t instantiation function for generic protocol witness table for MenuStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*v4, *(v4 + 8), *(v4 + 9));
  v5 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v5, *(v5 + 8));
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + (v8 | 7) + 9) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuStyleConfiguration.Content, &type metadata for MenuStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuStyleConfiguration.Content, &type metadata for MenuStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content);
  }

  return result;
}

double EnvironmentValues.defaultMinListRowHeight.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (v3 == 1)
  {
    return EnvironmentValues.systemDefaultMinListRowHeight.getter();
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t sub_18BF85A5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v16 = &type metadata for MenuStyleConfiguration.Label;
  v17 = v1;
  v18 = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
  v19 = v2;
  type metadata accessor for StaticSourceWriter(255, &v16);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  v15[0] = v3;
  v15[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v7 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  v16 = &type metadata for MenuStyleConfiguration.Content;
  v17 = v5;
  v18 = v6;
  v19 = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v16);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  v14[0] = lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle();
  v14[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v13[0] = swift_getWitnessTable(v7, v4, v14);
  v13[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v12[0] = swift_getWitnessTable(v7, v9, v13);
  v12[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(v7, v10, v12);
}

double EnvironmentValues.systemDefaultMinListRowHeight.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>, &type metadata for SystemDefaultMinListRowHeightKey, &protocol witness table for SystemDefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v6 != 1)
  {
    return v5;
  }

  v5 = v1;
  v6 = v2;
  EnvironmentValues.dynamicTypeSize.getter();
  specialized static ListMetrics.Row.scaledTextOnlyRowHeight(dynamicTypeSize:)(&v4);
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>, &type metadata for SystemDefaultMinListRowHeightKey, &protocol witness table for SystemDefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void specialized static ListMetrics.Row.scaledTextOnlyRowHeight(dynamicTypeSize:)(unsigned __int8 *a1)
{
  v1 = *a1;
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    if (v1 > 5)
    {
      v3 = MEMORY[0x1E69DDC50];
    }

    else
    {
      v3 = qword_1E7238660[v1];
    }

    v4 = *v3;
    v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v6 = [v2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

    if (v6)
    {
      static _GraphInputs.defaultInterfaceIdiom.getter();
      static Solarium.isEnabled(for:)();
      [v6 _bodyLeading];

      return;
    }
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for MenuStyleModifier<PlatformItemListMenuStyle>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>)
  {
    v0 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for MenuStyleModifier<PlatformItemListMenuStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MenuStyleModifier<PlatformItemListMenuStyle>)
  {
    v2 = lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle();
    v4 = type metadata accessor for MenuStyleModifier(a1, &type metadata for PlatformItemListMenuStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for MenuStyleModifier<PlatformItemListMenuStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListMenuStyle, &type metadata for PlatformItemListMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle);
  }

  return result;
}

double EnvironmentValues.listPadding.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  LOBYTE(v17[0]) = 0;
  MEMORY[0x18D007050](v17 + 1);
  *v23 = *(v17 + 1);
  *&v23[16] = *(&v17[1] + 1);
  *&v23[32] = *(&v17[2] + 1);
  *&v23[48] = *(&v17[3] + 1);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListPaddingAnchorKey>, &unk_1EFFE4F98, &protocol witness table for ListPaddingAnchorKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListPaddingAnchorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListPaddingAnchorKey>, &unk_1EFFE4F98, &protocol witness table for ListPaddingAnchorKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = v22;
  v20 = v4;
  v21 = v3;
  v6 = EnvironmentValues.contentMarginProxy.getter(v17);
  v7 = MEMORY[0x18D007050](&v14, v6);
  v14 = v17[4];
  v15 = v18;
  v16[0] = v19[0];
  *(v16 + 9) = *(v19 + 9);
  v12[0] = v17[4];
  v12[1] = v18;
  v13[0] = v19[0];
  *(v13 + 9) = *(v19 + 9);
  MEMORY[0x18D007000](v11, v7);
  if (MEMORY[0x18D006FC0](v12, v11))
  {
    v14 = v17[0];
    v15 = v17[1];
    v16[0] = v17[2];
    *(v16 + 9) = *(&v17[2] + 9);
  }

  *&v23[7] = v14;
  *&v23[23] = v15;
  *&v23[39] = v16[0];
  *&v23[48] = *(v16 + 9);
  v8 = *&v23[16];
  *(a1 + 1) = *v23;
  *(a1 + 17) = v8;
  result = *&v23[32];
  v10 = *&v23[48];
  *(a1 + 33) = *&v23[32];
  *a1 = v5;
  *(a1 + 49) = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle;
  if (!lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedMenuStyle, &type metadata for ResolvedMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle;
  if (!lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedMenuStyle, &type metadata for ResolvedMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedMenuStyle and conformance ResolvedMenuStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E69808F0]);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedMenuStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t assignWithCopy for ToolbarAppearanceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

double static ToolbarAppearanceModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *v26 = *a2;
  *&v26[12] = *(a2 + 12);
  v5 = *(a2 + 28);
  v28 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v31 = *(a2 + 60);
  v32 = *(a2 + 76);
  v27 = v5;
  v29 = v6;
  v30 = v7;
  a3(&v17);
  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>, &type metadata for NavigationBarAppearanceKey, &protocol witness table for NavigationBarAppearanceKey);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>, &type metadata for NavigationBarAppearanceKey, &protocol witness table for NavigationBarAppearanceKey);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v25 = v8;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<TabBarAppearanceKey>, &type metadata for TabBarAppearanceKey, &protocol witness table for TabBarAppearanceKey);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<TabBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<TabBarAppearanceKey>, &type metadata for TabBarAppearanceKey, &protocol witness table for TabBarAppearanceKey);
  v9 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v24 = v9;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomBarAppearanceKey>, &type metadata for BottomBarAppearanceKey, &protocol witness table for BottomBarAppearanceKey);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<BottomBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomBarAppearanceKey>, &type metadata for BottomBarAppearanceKey, &protocol witness table for BottomBarAppearanceKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v23 = v10;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarAppearanceKey>, &type metadata for WindowToolbarAppearanceKey, &protocol witness table for WindowToolbarAppearanceKey);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<WindowToolbarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarAppearanceKey>, &type metadata for WindowToolbarAppearanceKey, &protocol witness table for WindowToolbarAppearanceKey);
  v11 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v22 = v11;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarItemsAppearanceKey>, &type metadata for WindowToolbarItemsAppearanceKey, &protocol witness table for WindowToolbarItemsAppearanceKey);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<WindowToolbarItemsAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<WindowToolbarItemsAppearanceKey>, &type metadata for WindowToolbarItemsAppearanceKey, &protocol witness table for WindowToolbarItemsAppearanceKey);
  v12 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v21 = v12;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<AccessoryBarAppearanceKey>, &type metadata for AccessoryBarAppearanceKey, &protocol witness table for AccessoryBarAppearanceKey);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<AccessoryBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<AccessoryBarAppearanceKey>, &type metadata for AccessoryBarAppearanceKey, &protocol witness table for AccessoryBarAppearanceKey);
  v13 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v20 = v13;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *v26 = v4;
  *&v26[4] = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(0, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomOrnamentAppearanceKey>, &type metadata for BottomOrnamentAppearanceKey, &protocol witness table for BottomOrnamentAppearanceKey);
  lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(&lazy protocol witness table cache variable for type ToolbarAppearanceModifier.PreferenceValue<BottomOrnamentAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>, &lazy cache variable for type metadata for ToolbarAppearanceModifier.PreferenceValue<BottomOrnamentAppearanceKey>, &type metadata for BottomOrnamentAppearanceKey, &protocol witness table for BottomOrnamentAppearanceKey);
  v14 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v19 = v14;
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  *a4 = v17;
  result = v18;
  a4[1] = v18;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t SidebarListBody.CollectionViewBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v75 = *(a1 + 24);
  v4 = v75;
  type metadata accessor for Binding();
  v76 = type metadata accessor for Optional();
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v58[-v5];
  v61 = *(a1 + 16);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = v8;
  *(&v9 + 1) = v4;
  v84 = *(a1 + 32);
  v92 = v9;
  v93 = v84;
  v10 = type metadata accessor for CollectionViewListRoot(0, &v92);
  v80 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v58[-v11];
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
  v71 = v12;
  type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
  v70 = v10;
  v68 = type metadata accessor for ModifiedContent();
  v74 = type metadata accessor for StaticIf();
  v82 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v58[-v13];
  v78 = type metadata accessor for ModifiedContent();
  v81 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v58[-v16];
  v17 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58[-v22];
  v25 = *(v2 + 40);
  v60 = *(v2 + 32);
  v24 = v60;
  v59 = v25;
  v26 = specialized Environment.wrappedValue.getter(v60, v25);
  v66 = v18;
  v27 = *(v18 + 104);
  v28 = MEMORY[0x1E69DC258];
  if ((v26 & 1) == 0)
  {
    v28 = MEMORY[0x1E69DC238];
  }

  v29 = *v28;
  v30 = v23;
  v64 = v17;
  v65 = v23;
  v27(v23, v29, v17);
  if (specialized Environment.wrappedValue.getter(v24, v25))
  {
    v31 = 44.0;
  }

  else
  {
    v31 = 28.0;
  }

  v32 = v63;
  v33 = v61;
  (*(v62 + 16))(v63, v2 + *(a1 + 64), v61);
  (*(v18 + 16))(v20, v30, v17);
  v34 = specialized Environment.wrappedValue.getter(*v2, *(v2 + 8));
  v35 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24) | (*(v2 + 25) << 8)));
  if ((v36 & 1) == 0)
  {
    v31 = v35;
  }

  v37 = v72;
  (*(v73 + 16))(v72, v2 + *(a1 + 68), v76);
  v38 = *(v2 + 96);
  v94 = *(v2 + 80);
  v95 = v38;
  v96 = *(v2 + 112);
  v39 = *(v2 + 64);
  v92 = *(v2 + 48);
  v93 = v39;
  specialized Environment.wrappedValue.getter(v91);
  v40 = v69;
  v41 = v75;
  CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)(v32, v20, v37, v91, v33, v75, v84, *(&v84 + 1), v69, v34, v31);
  v85 = v33;
  v86 = v41;
  v87 = v84;
  v42 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
  v43 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  v90[0] = &protocol witness table for CollectionViewListRoot<A, B>;
  v90[1] = v43;
  v44 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v68, v90);
  v45 = v67;
  v46 = v70;
  View.staticIf<A, B>(_:then:)();
  (*(v80 + 8))(v40, v46);
  LOBYTE(v41) = specialized Environment.wrappedValue.getter(v60, v59);
  v89[0] = v42;
  v89[1] = WitnessTable;
  v89[2] = &protocol witness table for CollectionViewListRoot<A, B>;
  v47 = v74;
  v48 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v74, v89);
  LOBYTE(v91[0]) = AccessibilitySidebarListModifier.init(isInExpandedSplitView:)(v41 & 1) & 1;
  v50 = type metadata accessor for AccessibilitySidebarListModifier(0, v47, v48, v49);
  v51 = swift_getWitnessTable(protocol conformance descriptor for AccessibilitySidebarListModifier<A>, v50);
  v88[0] = v48;
  v88[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v52 = v78;
  swift_getWitnessTable(v44, v78, v88);
  v53 = v77;
  View.accessibilityConfiguration<A>(_:)(v91, v47, v50, v48, v51);
  (*(v82 + 8))(v45, v47);
  (*(v66 + 8))(v65, v64);
  v54 = v79;
  static ViewBuilder.buildExpression<A>(_:)();
  v55 = *(v81 + 8);
  v55(v53, v52);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v55)(v54, v52);
}

void type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for ToolbarAppearanceModifier.PreferenceValue(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v20 = a4[3];
  v33 = a4[2];
  v34 = v20;
  v35 = *(a4 + 64);
  v21 = a4[1];
  v31 = *a4;
  v32 = v21;
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v30[0] = a5;
  v30[1] = a6;
  v30[2] = a7;
  v30[3] = a8;
  v22 = type metadata accessor for CollectionViewListRoot(0, v30);
  v23 = v22[13];
  v24 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  *(a9 + v22[14]) = a10;
  *(a9 + v22[15]) = a11;
  v25 = v22[16];
  type metadata accessor for Binding();
  v26 = type metadata accessor for Optional();
  (*(*(v26 - 8) + 32))(a9 + v25, a3, v26);
  v27 = a9 + v22[17];
  v28 = v34;
  *(v27 + 32) = v33;
  *(v27 + 48) = v28;
  *(v27 + 64) = v35;
  result = v32;
  *v27 = v31;
  *(v27 + 16) = result;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for MenuStyleConfiguration.Label;
    v4[1] = &type metadata for MenuStyleConfiguration.Content;
    v4[2] = &protocol witness table for MenuStyleConfiguration.Label;
    v4[3] = &protocol witness table for MenuStyleConfiguration.Content;
    v2 = type metadata accessor for Menu(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey> and conformance ToolbarAppearanceModifier.PreferenceValue<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ToolbarAppearanceModifier.PreferenceValue<NavigationBarAppearanceKey>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarAppearanceModifier.PreferenceValue<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>, StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for PlaceholderLargeContentView;
    v4[1] = &type metadata for MenuStyleConfiguration.Label;
    v4[2] = &protocol witness table for PlaceholderLargeContentView;
    v4[3] = &protocol witness table for MenuStyleConfiguration.Label;
    v2 = type metadata accessor for AccessibilityLargeContentViewModifier(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>);
    }
  }
}

uint64_t AccessibilitySidebarListModifier.body(content:)(double a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-1] - v13;
  if (one-time initialization token for sidebar != -1)
  {
    swift_once();
  }

  View.accessibilityLabel(_:isEnabled:)(static Text.Accessibility.sidebar, unk_1EAB09680, byte_1EAB09688, qword_1EAB09690, a3 & 1, a4, a5);
  v18[0] = a5;
  v18[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v14, v8);
}

uint64_t one-time initialization function for sidebar()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = Text.init(_:tableName:bundle:comment:)();
  static Text.Accessibility.sidebar = result;
  unk_1EAB09680 = v3;
  byte_1EAB09688 = v4 & 1;
  qword_1EAB09690 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>()
{
  result = lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>;
  if (!lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    result = swift_getWitnessTable(protocol conformance descriptor for Menu<A, B>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>);
  }

  return result;
}

uint64_t View.accessibilityLabel(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a1;
  v8[3] = a2;
  v9 = a3 & 1;
  v10 = a4;
  return View.accessibility(isEnabled:body:)(a5, partial apply for closure #1 in View.accessibilityLabel(_:isEnabled:), v8, a6, a7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>();
    v5[1] = &protocol witness table for AccessibilityLargeContentViewModifier<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 16))(v13, v14, v8);
  v15 = *(v10 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v22 + 8;
  v24 = *(v21 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v18 + v22 + 8) & v24);
  v26 = ((v19 + v22 + 8) & v24);
  v27 = ~v22;
  v28 = (v22 + 16) & ~v22;
  v29 = *(v21 + 64);
  v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v21 + 84) & 0x80000000) == 0)
  {
    v31 = *v30;
    if (*v30 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v28 + v29;
    if (v31 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v33 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v30;
    v41 = v33 + v23;
    v34 = *(v21 + 16);

    v34(v41 & v27, (v30 + v23) & v27, v20);
    goto LABEL_8;
  }

  v32 = v28 + v29;
  if (!(*(v21 + 48))((v30 + v23) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, v32);
LABEL_8:
  v35 = (v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v35 = *v36;
  v37 = *(v36 + 16);
  v38 = *(v36 + 32);
  v39 = *(v36 + 48);
  *(v35 + 64) = *(v36 + 64);
  *(v35 + 32) = v38;
  *(v35 + 48) = v39;
  *(v35 + 16) = v37;
  return a1;
}

char *specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(uint64_t a1)
{
  v1 = *(AGGraphGetValue() + 64);
  v2 = *(v1 + 2);
  if (v2)
  {
  }

  else
  {
    v22 = 0uLL;
    *v23 = 0;
    *&v23[8] = xmmword_18CD9F780;

    AGGraphGetValue();
    outlined init with copy of ToolbarPlacement.Storage(&v22, &v19);
    if (*(&v20 + 1) == 7)
    {
      outlined destroy of ToolbarPlacement(&v22);
      v3 = 0;
      v15 = 0u;
      v16 = 0u;
    }

    else
    {
      outlined destroy of ToolbarPlacement.Storage(&v19);
      v15 = *v23;
      v16 = v22;
      v3 = *&v23[16];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    v2 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v2;
    v6 = &v1[40 * v5];
    *(v6 + 2) = v16;
    *(v6 + 3) = v15;
    *(v6 + 8) = v3;
  }

  v7 = (v1 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of ToolbarPlacement(v7, &v22);
    v17[0] = v22;
    v17[1] = *v23;
    v18 = *&v23[16];
    if (*&v23[8] == 7)
    {
      outlined destroy of ToolbarPlacement.Storage(v17);
    }

    else
    {
      v19 = v22;
      v20 = *v23;
      v21 = *&v23[16];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      if (v10 >= v9 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
      }

      *(v8 + 2) = v10 + 1;
      v11 = &v8[40 * v10];
      v12 = v19;
      v13 = v20;
      *(v11 + 8) = v21;
      *(v11 + 2) = v12;
      *(v11 + 3) = v13;
    }

    v7 += 40;
    --v2;
  }

  while (v2);

  return v8;
}

unint64_t lazy protocol witness table accessor for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>)
  {
    type metadata accessor for MenuStyleModifier<DefaultMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<DefaultMenuStyle>, lazy protocol witness table accessor for type DefaultMenuStyle and conformance DefaultMenuStyle, &type metadata for DefaultMenuStyle, type metadata accessor for MenuStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for MenuStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleModifier<DefaultMenuStyle> and conformance MenuStyleModifier<A>);
  }

  return result;
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = a2 + 32; ; i += 40)
  {
    outlined init with copy of ToolbarPlacement.Role(i, v15);
    outlined init with copy of ToolbarPlacement.Role(v15, v10);
    outlined init with copy of ToolbarPlacement.Role(a1, &v12);
    if (v11 > 2)
    {
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          if (*(&v13 + 1) == 3)
          {
            goto LABEL_32;
          }
        }

        else if (*(&v13 + 1) == 4)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if (v11 == 5)
      {
        if (*(&v13 + 1) == 5)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if (v11 == 6)
      {
        if (*(&v13 + 1) == 6)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if (!v11)
    {
      if (!*(&v13 + 1))
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (*(&v13 + 1) == 2)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_19:
    outlined init with copy of ToolbarPlacement.Role(v10, v9);
    if (*(&v13 + 1) < 7uLL)
    {
      outlined destroy of AnyHashable(v9);
LABEL_26:
      outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v10, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
      goto LABEL_27;
    }

    v7[0] = v12;
    v7[1] = v13;
    v8 = v14;
    v5 = MEMORY[0x18D00E7E0](v9, v7);
    outlined destroy of AnyHashable(v7);
    outlined destroy of AnyHashable(v9);
    outlined destroy of ToolbarPlacement.Role(v10);
    if (v5)
    {
      goto LABEL_33;
    }

LABEL_27:
    outlined destroy of ToolbarPlacement.Role(v15);
    if (!--v2)
    {
      return 0;
    }
  }

  if (*(&v13 + 1) != 1)
  {
    goto LABEL_26;
  }

LABEL_32:
  outlined destroy of ToolbarPlacement.Role(v10);
LABEL_33:
  outlined destroy of ToolbarPlacement.Role(v15);
  return 1;
}

uint64_t destroy for CollectionViewListRoot(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  v8 = v7 + 8;
  v9 = (v5 + a1 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v7 + 8))(v9, v6);
  v10 = (((*(v8 + 56) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a2 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = ~v13;
  v15 = ((((v10 + (v13 | 7) + 8) & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = v12;
  if ((*(v12 + 84) & 0x80000000) != 0)
  {
    result = (*(v12 + 48))((v15 + v13 + 8) & v14);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v16 = *v15;
  if (*v15 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_7:

    v18 = *(v19 + 8);

    return v18((v15 + v13 + 8) & v14, v11);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultMenuStyle and conformance DefaultMenuStyle()
{
  result = lazy protocol witness table cache variable for type DefaultMenuStyle and conformance DefaultMenuStyle;
  if (!lazy protocol witness table cache variable for type DefaultMenuStyle and conformance DefaultMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultMenuStyle, &type metadata for DefaultMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultMenuStyle and conformance DefaultMenuStyle);
  }

  return result;
}

double CollectionViewListRoot.TransformContentEnvironment.value.getter@<D0>(void *a2@<X8>)
{
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(a2);
  EnvironmentValues.systemDefaultMinListRowHeight.getter();
  type metadata accessor for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>();
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  *&v103 = 0;
  v101 = 0u;
  v102 = 0u;
  outlined init with copy of ViewGraphBridgeProperties?(&v101, &v96, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
  if (*(&v97 + 1) == 7)
  {
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(&v101, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
    v16 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a2);
    v17 = *(v16 + 2);
    if (!v17)
    {
    }
  }

  else
  {
    type metadata accessor for [ContentScrollViewBox](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    v19 = v96;
    v20 = v97;
    *(v18 + 16) = xmmword_18CD63400;
    *(v18 + 32) = v19;
    *(v18 + 48) = v20;
    *(v18 + 64) = v98;
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(&v101, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
    v16 = v18;
    v17 = *(v18 + 16);
    if (!v17)
    {
    }
  }

  v21 = 0;
  v22 = (v16 + 32);
  v79 = v17 - 1;
  v81 = a4;
  v80 = v16;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(v22, v113);
    v23 = *a1;
    if (*(*a1 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v113), (v25 & 1) != 0))
    {
      v26 = *(v23 + 56) + 80 * v24;
      v28 = *(v26 + 32);
      v27 = *(v26 + 48);
      v29 = *(v26 + 16);
      *&v104[9] = *(v26 + 57);
      v101 = *v26;
      v102 = v29;
      v103 = v28;
      *v104 = v27;
      v30 = *&v104[16];
      v32 = *(&v101 + 1);
      v31 = v29;
      v90 = v101;
      v33 = BYTE1(v101);
      v34 = *(v26 + 2);
      v112 = *(v26 + 6);
      v111 = v34;
      v35 = BYTE8(v29);
      v36 = *(v26 + 25);
      *(v110 + 3) = *(v26 + 28);
      v110[0] = v36;
      v88 = v28;
      v109 = BYTE8(v28);
      v37 = *(v26 + 41);
      *(v108 + 3) = *(v26 + 44);
      v108[0] = v37;
      v92 = v27;
      v107 = BYTE8(v27);
      v38 = BYTE9(v27);
      v39 = BYTE10(v27);
      v40 = *(v26 + 59);
      v106 = *(v26 + 63);
      v105 = v40;
      v85 = v104[24];
      outlined init with copy of ToolbarAppearanceConfiguration(&v101, &v96);
      v94 = v32;
      v95 = v30;
      v93 = v31;
      v41 = v88;
    }

    else
    {
      v85 = 0;
      v94 = 0;
      v95 = 0;
      v39 = 0;
      v92 = 0;
      v93 = 0;
      v41 = 0;
      v35 = 0;
      v33 = 0;
      v109 = 1;
      v90 = 1;
      v107 = 1;
      v38 = 2;
    }

    if (a3 == 3)
    {
      v42 = v33;
    }

    else
    {
      v42 = a3;
    }

    v89 = v42;
    if (v81)
    {

      v93 = v81;
    }

    if (a5 == 4)
    {
      v43 = v35;
    }

    else
    {
      v43 = a5;
    }

    if ((a7 & 1) == 0)
    {
      v109 = 0;
      v41 = a6;
    }

    if ((a9 & 1) == 0)
    {
      v107 = 0;
      v92 = a8;
    }

    if (a10 == 2)
    {
      v44 = v38;
    }

    else
    {
      v44 = a10;
    }

    if (a11 == 3)
    {
      v45 = v39;
    }

    else
    {
      v45 = a11;
    }

    v86 = v45;
    v87 = v44;
    if (a12)
    {

      v94 = a12;
    }

    if (a13)
    {

      v95 = a13;
    }

    v46 = a14 == 3 ? v85 : a14;
    outlined init with copy of ToolbarPlacement.Role(v113, v100);
    LOBYTE(v101) = v90;
    BYTE1(v101) = v89;
    *(&v101 + 2) = v111;
    WORD3(v101) = v112;
    *(&v101 + 1) = v94;
    *&v102 = v93;
    v47 = v43;
    BYTE8(v102) = v43;
    *(&v102 + 9) = v110[0];
    HIDWORD(v102) = *(v110 + 3);
    v48 = v41;
    *&v103 = v41;
    v49 = v109;
    BYTE8(v103) = v109;
    HIDWORD(v103) = *(v108 + 3);
    *(&v103 + 9) = v108[0];
    *v104 = v92;
    v50 = v107;
    v104[8] = v107;
    v104[9] = v87;
    v104[10] = v86;
    *&v104[11] = v105;
    v104[15] = v106;
    *&v104[16] = v95;
    v104[24] = v46;
    outlined init with copy of ToolbarAppearanceConfiguration(&v101, &v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *a1;
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
    v55 = v52[2];
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      break;
    }

    v59 = v54;
    if (v52[3] < v58)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, isUniquelyReferenced_nonNull_native);
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_51;
      }

LABEL_40:
      if (v59)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v68 = v53;
    specialized _NativeDictionary.copy()();
    v53 = v68;
    if (v59)
    {
LABEL_41:
      v61 = (v52[7] + 80 * v53);
      v96 = *v61;
      v62 = v61[1];
      v63 = v61[2];
      v64 = v61[3];
      *&v99[9] = *(v61 + 57);
      v98 = v63;
      *v99 = v64;
      v97 = v62;
      v66 = v103;
      v65 = *v104;
      v67 = v102;
      *(v61 + 57) = *&v104[9];
      v61[2] = v66;
      v61[3] = v65;
      v61[1] = v67;
      *v61 = v101;
      outlined destroy of ToolbarAppearanceConfiguration(&v96);
      outlined destroy of ToolbarPlacement.Role(v100);
      outlined destroy of ToolbarPlacement.Role(v113);
      goto LABEL_45;
    }

LABEL_43:
    v52[(v53 >> 6) + 8] |= 1 << v53;
    v69 = v53;
    outlined init with copy of ToolbarPlacement.Role(v100, v52[6] + 40 * v53);
    v70 = (v52[7] + 80 * v69);
    v71 = *&v104[9];
    v73 = v103;
    v72 = *v104;
    v70[1] = v102;
    v70[2] = v73;
    v70[3] = v72;
    *(v70 + 57) = v71;
    *v70 = v101;
    outlined destroy of ToolbarPlacement.Role(v100);
    outlined destroy of ToolbarPlacement.Role(v113);
    v74 = v52[2];
    v57 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v57)
    {
      goto LABEL_50;
    }

    v52[2] = v75;
LABEL_45:
    *a1 = v52;
    LOBYTE(v96) = v90;
    BYTE1(v96) = v89;
    *(&v96 + 2) = v111;
    WORD3(v96) = v112;
    *(&v96 + 1) = v94;
    *&v97 = v93;
    BYTE8(v97) = v47;
    *(&v97 + 9) = v110[0];
    HIDWORD(v97) = *(v110 + 3);
    *&v98 = v48;
    BYTE8(v98) = v49;
    HIDWORD(v98) = *(v108 + 3);
    *(&v98 + 9) = v108[0];
    *v99 = v92;
    v99[8] = v50;
    v99[9] = v87;
    v99[10] = v86;
    v99[15] = v106;
    *&v99[11] = v105;
    *&v99[16] = v95;
    v99[24] = v46;
    outlined destroy of ToolbarAppearanceConfiguration(&v96);
    if (v79 == v21)
    {
    }

    ++v21;
    v22 += 40;
    if (v21 >= *(v80 + 2))
    {
      __break(1u);
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(void *a1)
{
  return specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 73), HIBYTE(*(v1 + 73)), *(v1 + 80), *(v1 + 88), *(v1 + 96));
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD90770);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD9F780);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD6A6D0);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD79D60);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD7DD20);
}

{
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(a1, xmmword_18CD79540);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance MenuStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MenuStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemDefaultMinListRowHeightKey>);
    }
  }
}

uint64_t SidebarListStyle.BodyContent.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  if (*v1 == 1)
  {
    specialized Environment.wrappedValue.getter(*(v1 + 8), *(v1 + 16));
  }

  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(a1 + 24);
  static ViewBuilder.buildExpression<A>(_:)();
  sub_18BF89A3C(v16, v13);
  v23[0] = v13;
  (*(v4 + 16))(v6, v9, v3);
  v23[1] = v6;
  v22[0] = v11;
  v22[1] = v3;
  v21[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?();
  v21[1] = v18;
  static ViewBuilder.buildBlock<each A>(_:)(v23, 2uLL, v22);
  v19 = *(v4 + 8);
  v19(v9, v3);
  sub_18BF89AA0(v16);
  v19(v6, v3);
  return sub_18BF89AA0(v13);
}

uint64_t sub_18BF89A3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BF89AA0(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[8] = v0;
    v5[9] = v1;
    type metadata accessor for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>(255);
    v4 = v3;
    v5[2] = &type metadata for EnvironmentValues.SearchField;
    v5[3] = &type metadata for IsSearchImplementedPreferenceKey;
    v5[4] = &protocol witness table for EnvironmentValues.SearchField;
    v5[5] = &protocol witness table for IsSearchImplementedPreferenceKey;
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_18BF89C18(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListRowInsetsTraitKey>, &type metadata for ListRowInsetsTraitKey, &protocol witness table for ListRowInsetsTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<PlatformFallbackMenuStyle>, lazy protocol witness table accessor for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle, &type metadata for PlatformFallbackMenuStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>>);
    }
  }
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t NavigationLink<>.init<A>(value:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a7@<X8>)
{
  v22 = a7;
  v23 = a5;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v16);
  (*(v12 + 16))(v14, a1, v11);
  NavigationLinkPresentedValue.init<A>(_:)(v14, a4, v24);
  v19 = NavigationLink.init<>(label:presentedValue:)(v18, v24, a3, v23, v22);
  return (*(v12 + 8))(a1, v11, v19);
}

uint64_t NavigationLinkPresentedValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(v8 + 16))(v10, a1, v7, v16);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    v19 = *(v8 + 8);
    v19(a1, v7);
    result = (v19)(v10, v7);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    (*(v11 + 32))(v18, v10, a2);
    (*(v11 + 16))(v14, v18, a2);
    AnyNavigationLinkPresentedValue.init<A>(_:)(v14, a2, a4);
    (*(v8 + 8))(a1, v7);
    return (*(v11 + 8))(v18, a2);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ToolbarMenuStyle>, lazy protocol witness table accessor for type ToolbarMenuStyle and conformance ToolbarMenuStyle, &type metadata for ToolbarMenuStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for MenuStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t AnyNavigationLinkPresentedValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnyNavigationLinkPresentedValueStorage(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v13 = AnyNavigationLinkPresentedValueStorage.__allocating_init(_:)(v8);
  a3[3] = v12;
  a3[4] = swift_getWitnessTable("\\s\n", v12);
  *a3 = v13;
  return (*(v6 + 8))(a1, a2);
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for AnyNavigationLinkCodablePresentedValueStorage(0, v16);
  (*(v6 + 16))(v8, a1, a2);
  v14 = AnyNavigationLinkCodablePresentedValueStorage.__allocating_init(_:)(v8);
  a3[3] = v13;
  a3[4] = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationLinkCodablePresentedValueStorage<A>, v13);
  *a3 = v14;
  return (*(v6 + 8))(a1, a2);
}

unint64_t lazy protocol witness table accessor for type ToolbarMenuStyle and conformance ToolbarMenuStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarMenuStyle and conformance ToolbarMenuStyle;
  if (!lazy protocol witness table cache variable for type ToolbarMenuStyle and conformance ToolbarMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarMenuStyle, &type metadata for ToolbarMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarMenuStyle and conformance ToolbarMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MEMORY[0x1E6980428]);
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<PlatformItemListMenuStyle>, lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle, &type metadata for PlatformItemListMenuStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    }
  }
}

uint64_t type metadata completion function for AnyNavigationLinkPresentedValueStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
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

unint64_t lazy protocol witness table accessor for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle()
{
  result = lazy protocol witness table cache variable for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle;
  if (!lazy protocol witness table cache variable for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformFallbackMenuStyle, &type metadata for PlatformFallbackMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformFallbackMenuStyle and conformance PlatformFallbackMenuStyle);
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedValueStorage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnyNavigationLinkPresentedValueStorage<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationLinkPresentedValueStorage<A>);
  *(a1 + 8) = result;
  return result;
}

__n128 NavigationLink.init<>(label:presentedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v16[0] = a3;
  v16[1] = MEMORY[0x1E69E73E0];
  v16[2] = a4;
  v16[3] = MEMORY[0x1E6982070];
  v9 = type metadata accessor for NavigationLink(0, v16);
  v10 = v9[14];
  *(a5 + v9[15]) = 1;
  v11 = a5 + v9[16];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = xmmword_18CD6A6D0;
  v12 = a5 + v9[17];
  *v12 = 0;
  *(v12 + 8) = 0;
  *(a5 + v9[18]) = 0;
  v13 = a5 + v9[19];
  *v13 = 0;
  *(v13 + 8) = 0;
  (*(*(a3 - 8) + 32))(a5 + v9[13], a1, a3);
  *(a5 + v10) = 1;
  outlined destroy of NavigationLinkPresentedValue?(v11);
  result = *a2;
  v15 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v15;
  *(v11 + 32) = *(a2 + 32);
  return result;
}

void type metadata accessor for NavigationLinkPresentedValue?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SwipeActionsStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MEMORY[0x1E6980428]);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t outlined destroy of NavigationLinkPresentedValue?(uint64_t a1)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PresentationTransitionOutputs.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for NavigationLink(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 17);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);

    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a1 = *a2;
    v7 = a2[1];
  }

  *(a1 + 8) = v7;
  *(a1 + 17) = v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 18 + a1) & ~v11;
  v13 = (a2 + v11 + 18) & ~v11;
  (*(v9 + 16))(v12, v13);
  v14 = *(v10 + 48);
  v15 = *(a3 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v18 + v12) & ~v17);
  v20 = ((v18 + v13) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = *(v16 + 64);
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 16))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = &v19[v26];
  v28 = &v20[v26];
  *v27 = *v28;
  v29 = v27 & 0xFFFFFFFFFFFFFFF8;
  v30 = v28 & 0xFFFFFFFFFFFFFFF8;
  v31 = *((v28 & 0xFFFFFFFFFFFFFFF8) + 32);
  v32 = -1;
  if (v31 < 0xFFFFFFFF)
  {
    v32 = v31;
  }

  v33 = v32 + 1;
  if (v31)
  {
    v34 = v33 > 1;
  }

  else
  {
    v34 = 0;
  }

  if (v34 || v33)
  {
    v35 = *(v30 + 8);
    v36 = *(v30 + 24);
    *(v29 + 40) = *(v30 + 40);
    *(v29 + 24) = v36;
    *(v29 + 8) = v35;
  }

  else
  {
    *(v29 + 32) = v31;
    *(v29 + 40) = *(v30 + 40);
    (**(v31 - 8))(v29 + 8, v30 + 8);
  }

  v37 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  *(v37 + 8) = *(v38 + 8);
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v41 = *v42;
  *(v41 + 8) = *(v42 + 8);

  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>(255);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>(255);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

uint64_t type metadata completion function for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_checkMetadataState();
  if (v9 <= 0x3F)
  {
    result = type metadata accessor for NavigationDestinationPayload(319, *(a1 + 24), v7, v8);
    if (v10 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(255);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ButtonMenuStyle>, lazy protocol witness table accessor for type ButtonMenuStyle and conformance ButtonMenuStyle, &type metadata for ButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>);
    }
  }
}

uint64_t type metadata completion function for NavigationDestinationPayload(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ButtonMenuStyle and conformance ButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type ButtonMenuStyle and conformance ButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type ButtonMenuStyle and conformance ButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonMenuStyle, &type metadata for ButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonMenuStyle and conformance ButtonMenuStyle);
  }

  return result;
}

uint64_t type metadata completion function for SecondaryNavigationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, MenuStyleModifier<ButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t type metadata completion function for RelationshipModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BF8BEF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = type metadata accessor for Optional();
  v29 = v3;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v5, &v29);
  v28[0] = v2;
  v28[1] = v5;
  v28[2] = v4;
  v28[3] = WitnessTable;
  type metadata accessor for PrimitiveNavigationLink(255, v28);
  v7 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for NavigationSelectionModifier(255, v1, v8, v9);
  v11 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for SecondaryNavigationModifier(255, v5, WitnessTable, v12);
  v14 = type metadata accessor for StaticIf();
  v15 = type metadata accessor for ModifiedContent();
  type metadata accessor for RelationshipModifier<String>(255, v16, v17, v18);
  v19 = type metadata accessor for ModifiedContent();
  v27[0] = &protocol witness table for PrimitiveNavigationLink<A, B>;
  v27[1] = lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier();
  v20 = MEMORY[0x1E697E858];
  v26[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v27);
  v26[1] = swift_getWitnessTable(protocol conformance descriptor for NavigationSelectionModifier<A>, v10);
  v21 = swift_getWitnessTable(v20, v11, v26);
  v25[0] = lazy protocol witness table accessor for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation();
  v25[1] = swift_getWitnessTable(protocol conformance descriptor for SecondaryNavigationModifier<A>, v13);
  v25[2] = MEMORY[0x1E697E100];
  v24[0] = v21;
  v24[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v14, v25);
  v23[0] = swift_getWitnessTable(v20, v15, v24);
  v23[1] = &protocol witness table for RelationshipModifier<A>;
  return swift_getWitnessTable(v20, v19, v23);
}

void type metadata accessor for RelationshipModifier<String>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for RelationshipModifier<String>)
  {
    v4 = type metadata accessor for RelationshipModifier(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for RelationshipModifier<String>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier()
{
  result = lazy protocol witness table cache variable for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier;
  if (!lazy protocol witness table cache variable for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkTraitValueModifier, &type metadata for NavigationLinkTraitValueModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation()
{
  result = lazy protocol witness table cache variable for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation;
  if (!lazy protocol witness table cache variable for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WantsSecondaryNavigation, &type metadata for WantsSecondaryNavigation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RelationshipModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RelationshipModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance WantsSecondaryNavigation(_OWORD *a1)
{
  lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
  lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();
  return static StyleContextAcceptsAnyPredicate.evaluate(inputs:)() & 1;
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance SidebarListStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

uint64_t sub_18BF8C5BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for NavigationSelectionModifier(255, *a1, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for NavigationSelectionModifier<A>, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  ShouldUseNavigationLinkV4 = type metadata accessor for ShouldUseNavigationLinkV4(255, v4, v7, v8);
  v10 = type metadata accessor for StaticIf();
  v11 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  v15[0] = swift_getWitnessTable(protocol conformance descriptor for ShouldUseNavigationLinkV4<A>, ShouldUseNavigationLinkV4);
  v15[1] = &protocol witness table for BaseModifier;
  v15[2] = &protocol witness table for LegacyBaseModifier;
  v14[0] = WitnessTable;
  v14[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v10, v15);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v11, v14);
}

BOOL static ShouldUseNavigationLinkV4.evaluate(inputs:)(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.getter();
  result = 1;
  if ((v5 & 1) == 0 && a2 != MEMORY[0x1E69E73E0])
  {
    type metadata accessor for Never?(0, &lazy cache variable for type metadata for Never?, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6720]);
    return v4 == a2;
  }

  return result;
}

void type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>)
  {
    type metadata accessor for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>(255);
    v5[0] = &type metadata for MenuStyleConfiguration.Label;
    v5[1] = v2;
    v5[2] = &protocol witness table for MenuStyleConfiguration.Label;
    v5[3] = lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>();
    v3 = type metadata accessor for Menu(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for MenuStyleConfiguration.Content;
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<NavigationLinkTraitValueModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LinkValueTraitKey> and conformance _TraitWritingModifier<A>, type metadata accessor for _TraitWritingModifier<LinkValueTraitKey>, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<NavigationLinkTraitValueModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<NavigationLinkTraitValueModifier>)
  {
    lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationLinkTraitValueModifier>);
    }
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_PlainButtonMenuStyle>, lazy protocol witness table accessor for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle, &type metadata for _PlainButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationLinkTraitValueModifier>(255);
    type metadata accessor for _TraitWritingModifier<LinkValueTraitKey>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationLinkTraitValueModifier>, _TraitWritingModifier<LinkValueTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _PlainButtonMenuStyle, &type metadata for _PlainButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PlainButtonMenuStyle and conformance _PlainButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<BorderlessButtonMenuStyle>, lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, &type metadata for BorderlessButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<NavigationLinkTraitValueModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderlessButtonMenuStyle, &type metadata for BorderlessButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<LinkValueTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<LinkValueTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<LinkValueTraitKey>);
    }
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle);
  }

  return result;
}

uint64_t static PrimitiveNavigationLink._makeViewList(view:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (v12 = a2[1], v36 = *a2, v37 = v12, v38 = a2[2], (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0))
  {
    *&v36 = a3;
    *(&v36 + 1) = a4;
    *&v37 = a5;
    *(&v37 + 1) = a6;
    type metadata accessor for PrimitiveNavigationLink(0, &v36);
    return static _ViewListOutputs.unaryViewList<A>(view:inputs:)();
  }

  else
  {
    v13 = a2[1];
    v35[0] = *a2;
    v35[1] = v13;
    v15 = *a2;
    v14 = a2[1];
    v35[2] = a2[2];
    v32 = v15;
    v33 = v14;
    v34 = a2[2];
    outlined init with copy of _GraphInputs(v35, v31);
    v16 = static ShouldUseNavigationLinkV4.evaluate(inputs:)(&v32, a4);
    v36 = v32;
    v37 = v33;
    v38 = v34;
    outlined destroy of _GraphInputs(&v36);
    LODWORD(v25) = v11;
    v17 = a2[1];
    v31[0] = *a2;
    v31[1] = v17;
    v19 = *a2;
    v18 = a2[1];
    v31[2] = a2[2];
    v29 = v19;
    *v30 = v18;
    *&v30[16] = a2[2];
    outlined init with copy of _GraphInputs(v31, &v32);
    if (v16)
    {
      static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(&v25, a3, a4, a5, a6, &v39);
      v32 = v29;
      v33 = *v30;
      v34 = *&v30[16];
      outlined destroy of _GraphInputs(&v32);
      *&v29 = a3;
      *(&v29 + 1) = a4;
      *v30 = a5;
      *&v30[8] = a6;
      v20 = type metadata accessor for StyledNavigationLinkButton(0, &v29);
      v29 = v39;
      *v30 = *v40;
      *&v30[9] = *&v40[9];
      v25 = a3;
      v26 = a4;
      v27 = a5;
      v28 = a6;
      v21 = type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule(0, &v25);
      swift_getWitnessTable(protocol conformance descriptor for PrimitiveNavigationLink<A, B>.NavigationLinkViewRule, v21);
      _GraphValue.init<A>(_:)();
      swift_getWitnessTable(protocol conformance descriptor for StyledNavigationLinkButton<A, B>, v20);
    }

    else
    {
      static PrimitiveNavigationLink.makeLegacyNavigationLinkViewRule(view:inputs:)(&v25, a3, a4, a5, a6, &v39);
      v32 = v29;
      v33 = *v30;
      v34 = *&v30[16];
      outlined destroy of _GraphInputs(&v32);
      *&v29 = a3;
      *(&v29 + 1) = a4;
      *v30 = a5;
      *&v30[8] = a6;
      v22 = type metadata accessor for LegacyNavigationLinkButton(0, &v29);
      v29 = v39;
      *v30 = *v40;
      *&v30[16] = *&v40[16];
      v25 = a3;
      v26 = a4;
      v27 = a5;
      v28 = a6;
      v23 = type metadata accessor for PrimitiveNavigationLink.LegacyNavigationLinkViewRule(0, &v25);
      swift_getWitnessTable(protocol conformance descriptor for PrimitiveNavigationLink<A, B>.LegacyNavigationLinkViewRule, v23);
      _GraphValue.init<A>(_:)();
      swift_getWitnessTable(protocol conformance descriptor for LegacyNavigationLinkButton<A, B>, v22);
    }

    return static View.makeViewList(view:inputs:)();
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>);
    }
  }
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance SidebarListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

unint64_t instantiation function for generic protocol witness table for SidebarListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomButtonMenuStyle, &type metadata for CustomButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double destroy for NavigationLink(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 17);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 18) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = *(a2 + 24);
  v9 = *(v8 - 8);
  v10 = (v7 + *(v6 + 56) + *(v9 + 80)) & ~*(v9 + 80);
  if (!(*(v9 + 48))(v10, 1, v8))
  {
    (*(v9 + 8))(v10, v8);
  }

  v11 = *(v9 + 64) + v10;
  if (!*(v9 + 84))
  {
    ++v11;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFFF8) + 32) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(((v11 & 0xFFFFFFFFFFFFFFF8) + 8));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t *assignWithCopy for NavigationLink(uint64_t *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  if (a1 != a2)
  {
    v7 = *(a1 + 17);
    if (v7 >= 2)
    {
      v7 = *a1 + 2;
    }

    if (v7 == 1)
    {
    }

    v8 = *(a2 + 17);
    if (v8 >= 2)
    {
      v8 = *a2 + 2;
    }

    if (v8 == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = 1;
    }

    else
    {
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 17) = 0;
    }
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (a1 + v11 + 18) & ~v11;
  v13 = (a2 + v11 + 18) & ~v11;
  (*(v9 + 24))(v12, v13);
  v14 = *(v10 + 40);
  v15 = *(a3 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v18 + v12) & ~v17);
  v20 = ((v18 + v13) & ~v17);
  v21 = *(v16 + 48);
  LODWORD(v13) = v21(v19, 1, v15);
  v22 = v21(v20, 1, v15);
  if (v13)
  {
    if (!v22)
    {
      (*(v16 + 16))(v19, v20, v15);
      (*(v16 + 56))(v19, 0, 1, v15);
      goto LABEL_23;
    }

    v23 = *(v16 + 84);
    v24 = *(v16 + 64);
  }

  else
  {
    if (!v22)
    {
      (*(v16 + 24))(v19, v20, v15);
      goto LABEL_23;
    }

    (*(v16 + 8))(v19, v15);
    v23 = *(v16 + 84);
    v24 = *(v16 + 64);
  }

  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  memcpy(v19, v20, v25);
LABEL_23:
  if (*(v16 + 84))
  {
    v26 = *(v16 + 64);
  }

  else
  {
    v26 = *(v16 + 64) + 1;
  }

  v27 = &v19[v26];
  v31 = &v20[v26];
  *v27 = *v31;
  v28 = v27 & 0xFFFFFFFFFFFFFFF8;
  v29 = v31 & 0xFFFFFFFFFFFFFFF8;
  v30 = *((v27 & 0xFFFFFFFFFFFFFFF8) + 32);
  LODWORD(v31) = -1;
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  else
  {
    v32 = *((v27 & 0xFFFFFFFFFFFFFFF8) + 32);
  }

  v33 = v32 + 1;
  v34 = *(v29 + 32);
  if (v34 < 0xFFFFFFFF)
  {
    v31 = *(v29 + 32);
  }

  v35 = v31 + 1;
  if (v34)
  {
    v36 = v35 >= 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = !v36;
  if (v30)
  {
    v38 = v33 > 1;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    if (!v37)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  if (!v37)
  {
    if (!v33)
    {
      v39 = (v28 + 8);
      goto LABEL_50;
    }

LABEL_51:
    v40 = *(v29 + 8);
    v41 = *(v29 + 24);
    *(v28 + 40) = *(v29 + 40);
    *(v28 + 24) = v41;
    *(v28 + 8) = v40;
    goto LABEL_52;
  }

  if (v33)
  {
LABEL_46:
    if (!v35)
    {
      *(v28 + 32) = v34;
      *(v28 + 40) = *(v29 + 40);
      (**(v34 - 8))(v28 + 8, v29 + 8);
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v39 = (v28 + 8);
  if (v35)
  {
LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v39);
    goto LABEL_51;
  }

  __swift_assign_boxed_opaque_existential_1(v39, (v29 + 8));
LABEL_52:
  v42 = (v28 + 55) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v29 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v42 = *v43;
  *(v42 + 8) = *(v43 + 8);

  v44 = ((v42 + 23) & 0xFFFFFFFFFFFFFFF8);
  v45 = ((v43 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v44 = *v45;
  v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v46 = *v47;
  *(v46 + 8) = *(v47 + 8);

  return a1;
}

uint64_t DeferredFetchRequest.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedValueStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>> and conformance Menu<A, B>, type metadata accessor for Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t NavigationLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v128 = a2;
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v148 = *(a1 + 40);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v6, &v148);
  v132 = WitnessTable;
  v9 = type metadata accessor for SecondaryNavigationModifier(0, v6, WitnessTable, v8);
  v123 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v97 - v10;
  v126 = v11;
  v12 = type metadata accessor for StaticIf();
  v125 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v97 - v13;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v97 - v16;
  v17 = *(a1 + 16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v21;
  v124 = *(a1 + 32);
  v143[0] = v17;
  v143[1] = v6;
  v98 = v17;
  v144 = v124;
  v145 = WitnessTable;
  v22 = type metadata accessor for PrimitiveNavigationLink(0, v143);
  v103 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v97 - v23;
  v104 = v24;
  v25 = type metadata accessor for ModifiedContent();
  v106 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v97 - v26;
  v120 = v5;
  v29 = type metadata accessor for NavigationSelectionModifier(255, v5, v27, v28);
  v107 = v25;
  v108 = v29;
  v30 = type metadata accessor for ModifiedContent();
  v110 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v97 - v31;
  v111 = v32;
  v127 = v12;
  v33 = type metadata accessor for ModifiedContent();
  v116 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v114 = &v97 - v34;
  type metadata accessor for RelationshipModifier<String>(255, v35, v36, v37);
  v117 = v33;
  v119 = type metadata accessor for ModifiedContent();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v112 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v113 = &v97 - v41;
  (*(v18 + 16))(v21, v3 + *(a1 + 52), v17, v40);
  v42 = *(v14 + 16);
  v43 = v129;
  v102 = v3 + *(a1 + 56);
  v115 = v14 + 16;
  v101 = v42;
  (v42)(v129);
  v44 = v3 + *(a1 + 64);
  outlined init with copy of NavigationLinkPresentedValue?(v44, v143);
  v97 = Namespace.wrappedValue.getter();
  v45 = *(v3 + 8);
  v46 = *(v3 + 17);
  v47 = *(v3 + 16);
  v138 = *v3;
  v139 = v45;
  LOBYTE(v140) = v47;
  BYTE1(v140) = v46;
  LOBYTE(v25) = *(v3 + *(a1 + 60));
  outlined copy of StateOrBinding<Bool>(v138, v45, v47, v46);
  updated = NavigationLink.$triggerUpdateSeed.getter(a1);
  v50 = v49;
  LODWORD(v14) = v51;
  v130 = a1;
  v52 = a1;
  v53 = v100;
  v131 = v3;
  v54 = NavigationLink.$isPresentingViewDestinationView.getter(v52);
  v96 = v124;
  v124 = v6;
  v56 = updated;
  v57 = v44;
  PrimitiveNavigationLink.init(label:destination:presentedValue:id:deprecated_isActive:isDetail:legacy_updateSeed:isPresentingViewDestinationView:)(v99, v43, v143, v97, &v138, v25, v56, v50, v53, v14, v54, v58, v55 & 1, v98, v6, v96, v132);
  outlined init with copy of NavigationLinkPresentedValue?(v44, v143);
  if (v145 == 1)
  {
    outlined destroy of NavigationLinkPresentedValue?(v143);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(v143, &v138);
    v59 = v141;
    if (v141)
    {
      v62 = v138;
      v61 = v139;
      v60 = v140;
      v63 = v142;
    }

    else
    {
      v63 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
    }

    outlined destroy of NavigationLinkPresentedValue(v143);
  }

  v64 = Namespace.wrappedValue.getter();
  v143[0] = v62;
  v143[1] = v61;
  v144 = v60;
  v145 = v59;
  v146 = v63;
  v147 = v64;
  v65 = v105;
  v66 = v104;
  MEMORY[0x18D00A570](v143, v104, &type metadata for NavigationLinkTraitValueModifier, &protocol witness table for PrimitiveNavigationLink<A, B>);
  outlined destroy of NavigationLinkTraitValueModifier(v143);
  (*(v103 + 8))(v53, v66);
  v67 = NavigationLink.deprecated_isActive.getter();
  outlined init with copy of NavigationLinkPresentedValue?(v57, &v138);
  NavigationSelectionModifier.init(isActive:presentedValue:)(v67 & 1, &v138, v143);
  v68 = lazy protocol witness table accessor for type NavigationLinkTraitValueModifier and conformance NavigationLinkTraitValueModifier();
  v137[0] = &protocol witness table for PrimitiveNavigationLink<A, B>;
  v137[1] = v68;
  v69 = MEMORY[0x1E697E858];
  v70 = v107;
  v71 = swift_getWitnessTable(MEMORY[0x1E697E858], v107, v137);
  v72 = v109;
  v73 = v108;
  MEMORY[0x18D00A570](v143, v70, v108, v71);
  (*(*(v73 - 8) + 8))(v143, v73);
  (*(v106 + 8))(v65, v70);
  v74 = v129;
  v75 = v124;
  v101(v129, v102, v124);
  outlined init with copy of NavigationLinkPresentedValue?(v57, v143);
  v76 = v121;
  *&v77 = SecondaryNavigationModifier.init(destination:presentedValue:)(v74, v143, v75, v132, v121).n128_u64[0];
  v78 = v126;
  v79 = swift_getWitnessTable(protocol conformance descriptor for SecondaryNavigationModifier<A>, v126, v77);
  v80 = lazy protocol witness table accessor for type WantsSecondaryNavigation and conformance WantsSecondaryNavigation();
  v81 = v122;
  ViewModifier.requiring<A>(_:)(&type metadata for WantsSecondaryNavigation, v78, &type metadata for WantsSecondaryNavigation);
  (*(v123 + 8))(v76, v78);
  v82 = swift_getWitnessTable(protocol conformance descriptor for NavigationSelectionModifier<A>, v73);
  v136[0] = v71;
  v136[1] = v82;
  v83 = v111;
  v84 = swift_getWitnessTable(v69, v111, v136);
  v85 = v114;
  v86 = v127;
  MEMORY[0x18D00A570](v81, v83, v127, v84);
  (*(v125 + 8))(v81, v86);
  (*(v110 + 8))(v72, v83);
  strcpy(v143, "navigationLink");
  HIBYTE(v143[1]) = -18;
  v87 = Namespace.wrappedValue.getter();
  v135[0] = v80;
  v135[1] = v79;
  v135[2] = MEMORY[0x1E697E100];
  v88 = swift_getWitnessTable(MEMORY[0x1E6981CE0], v86, v135);
  v134[0] = v84;
  v134[1] = v88;
  v89 = v117;
  v90 = swift_getWitnessTable(v69, v117, v134);
  v91 = v112;
  View.accessibilityLinkedGroup<A>(id:in:)(v143, v87, v89, MEMORY[0x1E69E6158], v90);
  (*(v116 + 8))(v85, v89);
  v133[0] = v90;
  v133[1] = &protocol witness table for RelationshipModifier<A>;
  v92 = v119;
  swift_getWitnessTable(v69, v119, v133);
  v93 = v113;
  static ViewBuilder.buildExpression<A>(_:)();
  v94 = *(v118 + 8);
  v94(v91, v92);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v94)(v93, v92);
}

uint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined init with copy of NavigationLinkPresentedValue?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t storeEnumTagSinglePayload for _PresentationTransitionOutputs.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for MenuStyleModifier<A>;
    v7[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

double outlined copy of StateOrBinding<Bool>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStylePredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<PlainButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

double Observer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v81 = v69 - v5;
  v85 = *(v4 - 8);
  v6 = v85;
  MEMORY[0x1EEE9AC00](v7);
  v84 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v69 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v69 - v13;
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v71 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[1] = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v69 - v19;
  v21 = Observer.modifier.getter(a1, type metadata accessor for EnvironmentChangeModifier);
  v77 = v22;
  v86 = v23;
  WindowSceneList.MakeList.environment.getter(&v93);
  v92 = v93;
  v87 = v21;
  swift_getAtKeyPath();

  v78 = v1;
  v79 = a1;
  v24 = *(a1 + 44);
  v76 = v6;
  v25 = *(v6 + 16);
  v74 = v24;
  v25(v14, v1 + v24, v4);
  v26 = v15[2];
  v88 = v20;
  v89 = v26;
  v26(v11, v20, v3);
  v27 = v15[7];
  v73 = v15 + 7;
  v72 = v27;
  v27(v11, 0, 1, v3);
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v81;
  v83 = v14;
  v25(v81, v14, v4);
  v80 = v28;
  v30 = &v29[v28];
  v31 = v29;
  v32 = v4;
  v25(v30, v11, v4);
  v90 = v15;
  v33 = v15[6];
  v34 = v31;
  v82 = v3;
  v35 = v33(v31, 1, v3);
  v75 = v15 + 2;
  if (v35 == 1)
  {
    v36 = *(v85 + 8);
    v36(v11, v32);
    v36(v83, v32);
    v37 = &v31[v80];
    v38 = v82;
    v39 = v34;
    if (v33(v37, 1, v82) == 1)
    {
      v36(v34, v32);
      (v90[1])(v88, v38);
LABEL_13:

      goto LABEL_14;
    }

    v43 = v32;
    v44 = v87;
    v45 = v89;
    goto LABEL_7;
  }

  v69[0] = v11;
  v39 = v31;
  v40 = v32;
  v25(v84, v31, v32);
  v41 = v80;
  v42 = v82;
  if (v33(&v31[v80], 1, v82) == 1)
  {
    v36 = *(v85 + 8);
    v36(v69[0], v32);
    v43 = v32;
    v36(v83, v32);
    (v90[1])(v84, v42);
    v44 = v87;
    v45 = v89;
    v38 = v42;
LABEL_7:
    (*(v70 + 8))(v39, TupleTypeMetadata2);
    goto LABEL_8;
  }

  v63 = v90;
  v64 = v71;
  (v90[4])(v71, &v39[v41], v42);
  v65 = v84;
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = v63;
  v38 = v42;
  v68 = v67[1];
  v68(v64, v38);
  v36 = *(v85 + 8);
  v36(v69[0], v40);
  v36(v83, v40);
  v68(v65, v38);
  v43 = v40;
  v36(v39, v40);
  v44 = v87;
  v45 = v89;
  if (v66)
  {
    v68(v88, v38);
    goto LABEL_13;
  }

LABEL_8:
  v46 = v44;
  v47 = v78;
  v48 = v74;
  v49 = v43;
  v50 = v46;
  v36((v78 + v74), v49);
  v51 = v88;
  v45(v47 + v48, v88, v38);
  v52 = v72(v47 + v48, 0, 1, v38);
  MEMORY[0x1EEE9AC00](v52);
  v53 = *(v79 + 24);
  v69[-6] = v38;
  v69[-5] = v53;
  v54 = v77;
  v69[-4] = v50;
  v69[-3] = v54;
  v55 = v86;
  v69[-2] = v86;
  if (UpdateCycleDetector.dispatch(label:isDebug:)())
  {
    AGGraphClearUpdate();
    v56 = swift_allocObject();
    v56[2] = v38;
    v56[3] = v53;
    v56[4] = v54;
    v56[5] = v55;

    AGGraphSetUpdate();
    v57 = swift_allocObject();
    v57[2] = v38;
    v57[3] = v53;
    v57[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
    v57[5] = v56;
    LOBYTE(v93) = 17;
    v58 = v71;
    v89(v71, v51, v38);
    v59 = v90;
    v60 = (*(v90 + 80) + 48) & ~*(v90 + 80);
    v61 = swift_allocObject();
    *(v61 + 2) = v38;
    *(v61 + 3) = v53;
    *(v61 + 4) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
    *(v61 + 5) = v57;
    (v59[4])(&v61[v60], v58, v38);

    static Update.enqueueAction(reason:_:)();

    (v59[1])(v51, v38);
    return result;
  }

  (v90[1])(v51, v38);

LABEL_14:

  return result;
}

uint64_t sub_18BF8F674()
{

  return swift_deallocObject();
}

uint64_t sub_18BF8F6AC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t Observer.modifier.getter(uint64_t a1, uint64_t (*a2)(void, void, void))
{
  a2(0, *(a1 + 16), *(a1 + 24));
  v2 = *AGGraphGetValue();

  return v2;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStylePredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<BorderlessButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

uint64_t NavigationLink.$triggerUpdateSeed.getter(uint64_t a1)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for State<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  return v2;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStylePredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

uint64_t NavigationLink.$isPresentingViewDestinationView.getter(uint64_t a1)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  return v2;
}

void PrimitiveNavigationLink.init(label:destination:presentedValue:id:deprecated_isActive:isDetail:legacy_updateSeed:isPresentingViewDestinationView:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *a5;
  v20 = a5[1];
  v21 = *(a5 + 16);
  v22 = *(a5 + 17);
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v34[0] = v19;
  v34[1] = v20;
  v35 = v21;
  v36 = v22;
  v32 = xmmword_18CD633F0;
  v33 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v39 = 1;
  v31[0] = a14;
  v31[1] = a15;
  v31[2] = a16;
  v31[3] = a17;
  v23 = type metadata accessor for PrimitiveNavigationLink(0, v31);
  NavigationDestinationPayload.init(destination:presentedValue:linkID:isDetail:deprecated_isActiveStateOrBinding:authority:listKey:stackKey:)(a2, a3, a4, a6, v34, &v32, v37, 0, a9 + v23[13], 6, 0, a15);
  v24 = a9 + v23[14];
  *v24 = a11;
  *(v24 + 8) = a12;
  *(v24 + 16) = a13;
  v25 = a9 + v23[15];
  *v25 = a7;
  *(v25 + 8) = a8;
  *(v25 + 16) = a10;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStylePredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<BorderedProminentButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

__n128 NavigationDestinationPayload.init(destination:presentedValue:linkID:isDetail:deprecated_isActiveStateOrBinding:authority:listKey:stackKey:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a5;
  v18 = a5[1];
  v19 = *(a5 + 16);
  v20 = *(a5 + 17);
  (*(*(a12 - 8) + 32))(a9, a1, a12);
  v23 = type metadata accessor for NavigationDestinationPayload(0, a12, v21, v22);
  v24 = a9 + v23[7];
  v25 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a2 + 32);
  *(a9 + v23[8]) = a3;
  *(a9 + v23[9]) = a4;
  v26 = a9 + v23[10];
  *v26 = v17;
  *(v26 + 8) = v18;
  *(v26 + 16) = v19;
  *(v26 + 17) = v20;
  outlined init with take of NavigationAuthority?(a6, a9 + v23[11]);
  v27 = a9 + v23[12];
  v28 = *(a7 + 16);
  *v27 = *a7;
  *(v27 + 16) = v28;
  result = *(a7 + 32);
  *(v27 + 32) = result;
  v30 = (a9 + v23[13]);
  *v30 = a8;
  v30[1] = a10;
  v30[2] = a11;
  return result;
}

BOOL static ButtonStylePredicate.evaluate(inputs:)(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ButtonStyleInput and conformance ButtonStyleInput();
  PropertyList.subscript.getter();
  return v4 == a2;
}

uint64_t initializeWithCopy for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 48);
  v9 = v7 + 16;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 24);
  LODWORD(v18) = -1;
  if (v17 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v19 = v18 + 1;
  if (v17)
  {
    v20 = v19 > 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 || v19)
  {
    v21 = *v16;
    v22 = *(v16 + 16);
    *(v15 + 32) = *(v16 + 32);
    *v15 = v21;
    *(v15 + 16) = v22;
  }

  else
  {
    *(v15 + 24) = v17;
    *(v15 + 32) = *(v16 + 32);
    (**(v17 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  v23 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  v25 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 17);
  if (v27 >= 2)
  {
    v27 = *v26 + 2;
  }

  if (v27 == 1)
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);

    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  *(v25 + 17) = v28;
  v29 = (v25 + 25) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v26 + 25) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  if (v31 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v29 + 8) = *(v30 + 8);
    *(v29 + 16) = *(v30 + 16);
  }

  else
  {
    v32 = *v30;
    *(v29 + 16) = *(v30 + 16);
    *v29 = v32;
  }

  v33 = ((v29 + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  v37 = (v33 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  *(v37 + 16) = *(v38 + 16);
  *v37 = v39;
  v40 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v41 = v40 + v12;
  v42 = v40 + v13;
  *v41 = *v42;
  *(v41 + 8) = *(v42 + 8);
  *(v41 + 16) = *(v42 + 16);
  *(v41 + 24) = *(v42 + 24);
  *(v41 + 32) = *(v42 + 32);
  *(v41 + 40) = *(v42 + 40);

  return a1;
}

uint64_t initializeWithCopy for NavigationLinkTraitValueModifier(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    *(result + 24) = v3;
    *(result + 32) = v4;
    v5 = result;
    (**(v3 - 8))();
    result = v5;
  }

  else
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
  }

  *(result + 40) = *(a2 + 40);
  return result;
}

uint64_t initializeWithTake for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 17);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
    v25 = 1;
  }

  else
  {
    v25 = 0;
    *v21 = *v22;
  }

  *(v21 + 17) = v25;
  v26 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  if (*(v27 + 8) >= 0xFFFFFFFFuLL)
  {
    v28 = -1;
  }

  if (v28 - 1 < 0)
  {
    v26 = swift_weakTakeInit();
    *(v26 + 8) = *(v27 + 8);
  }

  else
  {
    v29 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v29;
  }

  v30 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;
  v33 = v31[2];
  v30[1] = v31[1];
  v30[2] = v33;
  *v30 = v32;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 55) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v38 = v37 + v12;
  v39 = v37 + v13;
  v40 = *v39;
  *(v38 + 16) = *(v39 + 16);
  *v38 = v40;
  v41 = *(v39 + 24);
  *(v38 + 40) = *(v39 + 40);
  *(v38 + 24) = v41;
  return a1;
}

uint64_t type metadata completion function for UIKitMenuButton(uint64_t a1)
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

double destroy for PrimitiveNavigationLink(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = (v5 + v8) & ~v8;
  (*(v6 + 8))(v9);
  v10 = *(v7 + 56) + 7;
  v11 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(((v10 + v9) & 0xFFFFFFFFFFFFFFF8));
  }

  v12 = (v11 + 63) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 17);
  if (v13 >= 2)
  {
    v13 = *v12 + 2;
  }

  if (v13 == 1)
  {
  }

  v14 = *(((v12 + 25) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if (v14 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

uint64_t NavigationLink.deprecated_isActive.getter()
{
  if (*(v0 + 17))
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v2);
  }

  else
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_1(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  return v2;
}

__n128 NavigationSelectionModifier.init(isActive:presentedValue:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t initializeWithCopy for NavigationSelectionModifier(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 32);
  if (v2 > 1)
  {
    v4 = *(a2 + 40);
    *(result + 32) = v2;
    *(result + 40) = v4;
    v5 = result;
    (**(v2 - 8))(result + 8, a2 + 8);
    return v5;
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v3;
    *(result + 40) = *(a2 + 40);
  }

  return result;
}

uint64_t sub_18BF9089C(uint64_t result)
{
  if (*(result + 32) >= 2uLL)
  {
    return __swift_destroy_boxed_opaque_existential_1((result + 8));
  }

  return result;
}

__n128 SecondaryNavigationModifier.init(destination:presentedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for SecondaryNavigationModifier(0, a3, a4, v9) + 36);
  result = *a2;
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v12;
  *(v10 + 32) = *(a2 + 32);
  return result;
}

uint64_t initializeWithCopy for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v9 = *(v5 + 48) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 24);
  LODWORD(v9) = -1;
  if (v8 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v10 = v9 + 1;
  if (v8)
  {
    v11 = v10 > 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || v10)
  {
    v12 = *v7;
    v13 = *(v7 + 16);
    *(v6 + 32) = *(v7 + 32);
    *v6 = v12;
    *(v6 + 16) = v13;
  }

  else
  {
    *(v6 + 24) = v8;
    *(v6 + 32) = *(v7 + 32);
    (**(v8 - 8))(v6);
  }

  return a1;
}

void type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>)
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v1 = type metadata accessor for InvertedViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>);
    }
  }
}

void *destroy for SecondaryNavigationModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  result = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (result[3] >= 0xFFFFFFFFuLL)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t View.accessibilityRelationship<A>(_:id:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v23 = a4;
  v9 = a1;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RelationshipModifier(0, v14, v15, v13);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v10 + 16))(v12, a2, a5, v18);
  *v20 = v9;
  (*(v10 + 32))(&v20[*(v16 + 36)], v12, a5);
  *&v20[*(v16 + 40)] = a3;
  MEMORY[0x18D00A570](v20, v23, v16, v24);
  return (*(v17 + 8))(v20, v16);
}

_BYTE *initializeWithCopy for RelationshipModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 16))(v7, v8);
  *((*(v5 + 48) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t outlined init with copy of AnyNavigationLinkPresentedValue?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyNavigationLinkPresentedValue?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double protocol witness for ViewModifier.body(content:) in conformance NavigationLinkTraitValueModifier@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of AnyNavigationLinkPresentedValue?(v1, a1);
  v3 = *(v1 + 40);
  result = 0.0;
  *(a1 + 40) = xmmword_18CD633F0;
  *(a1 + 56) = v3;
  return result;
}

void type metadata accessor for AnyNavigationLinkPresentedValue?()
{
  if (!lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?);
    }
  }
}

uint64_t initializeWithTake for SubscriptionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *((*(v9 + 32) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t getEnumTagSinglePayload for ZoomPresentationTransitionStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ZoomPresentationTransitionStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationLinkSelectionIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 48);
  if (v7 == 1)
  {
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v7;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for SceneStorage.Box(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for SceneStorage.Box(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double destroy for NavigationLinkSelectionIdentifier(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (a1[6] != 1)
  {
  }

  return result;
}

void ListSectionInfo.updateItemDerivedState()()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      outlined init with copy of SectionAccumulator.Item(v3, &v40);
      v5 = v42;

      outlined destroy of SectionAccumulator.Item(&v40);
      v6 = *(v5 + 16);
      v7 = *(v4 + 2);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_46;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
      {
        if (*(v5 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v10 = v7 + v6;
        }

        else
        {
          v10 = v7;
        }

        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
        if (*(v5 + 16))
        {
LABEL_14:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v6)
          {
            v11 = *(v4 + 2);
            v12 = __OFADD__(v11, v6);
            v13 = v11 + v6;
            if (v12)
            {
              goto LABEL_51;
            }

            *(v4 + 2) = v13;
          }

          goto LABEL_4;
        }
      }

      if (v6)
      {
        goto LABEL_47;
      }

LABEL_4:
      v3 += 152;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v14 = 0;
  v15 = *(v4 + 2);
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 == v14)
    {

      *(v39 + 72) = v16;
      v23 = MEMORY[0x1E69E7CC0];
      v43 = MEMORY[0x1E69E7CC0];
      v24 = *(v1 + 16);
      if (!v24)
      {
LABEL_44:

        *(v39 + 80) = v23;
        return;
      }

      v25 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v25 >= *(v1 + 16))
        {
          goto LABEL_48;
        }

        *&v40 = v25;
        outlined init with copy of SectionAccumulator.Item(v1 + 32 + 152 * v25, &v40 + 8);
        SectionAccumulator.Item.numberOfIndexLabels.getter();
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v29 = v28;
        if (v28)
        {
          v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v27 = v30;
          *(v30 + 16) = v29;
          v31 = (v30 + 32);
          if (v29 > 3)
          {
            v32 = v29 & 0x7FFFFFFFFFFFFFFCLL;
            v31 += v29 & 0x7FFFFFFFFFFFFFFCLL;
            v33 = vdupq_n_s64(v25);
            v34 = (v30 + 48);
            v35 = v29 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v34[-1] = v33;
              *v34 = v33;
              v34 += 2;
              v35 -= 4;
            }

            while (v35);
            if (v29 == v32)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v32 = 0;
          }

          v36 = v29 - v32;
          do
          {
            *v31++ = v25;
            --v36;
          }

          while (v36);
        }

        else
        {
          v27 = v26;
        }

LABEL_31:
        ++v25;
        outlined destroy of (offset: Int, element: SectionAccumulator.Item)(&v40);
        specialized Array.append<A>(contentsOf:)(v27);
        if (v25 == v24)
        {
          v23 = v43;
          goto LABEL_44;
        }
      }
    }

    if (v14 >= *(v4 + 2))
    {
      break;
    }

    v46 = *&v4[8 * v14 + 32];
    v17 = v14 + 1;
    v43 = 0;
    v44 = 0;
    v45 = xmmword_18CD67BD0;
    swift_bridgeObjectRetain_n();
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of SectionIndexLabel?(v43, v44, v45, *(&v45 + 1));
    swift_bridgeObjectRelease_n();
    v14 = v17;
    if (v41 >> 1 != 0xFFFFFFFF)
    {
      v38 = v41;
      v37 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      v20 = v38;
      if (v19 >= v18 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
        v20 = v38;
        v16 = v22;
      }

      *(v16 + 2) = v19 + 1;
      v21 = &v16[32 * v19];
      *(v21 + 2) = v37;
      *(v21 + 3) = v20;
      v14 = v17;
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
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}