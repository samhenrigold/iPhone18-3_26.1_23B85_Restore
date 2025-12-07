uint64_t outlined init with copy of NavigationRequest.Action?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySiGMaTm_0(0, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for InsetListLabelStyle.StyleView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

void NavigationColumnState.updateListState(_:splitViewState:)(void *result@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (*(v3 + 48))
  {
    v5 = a2[3];
    v19 = a2[2];
    v20 = v5;
    v21 = *(a2 + 32);
    v6 = a2[1];
    v17 = *a2;
    v18 = v6;
LABEL_4:
    NavigationListState.update(for:splitViewState:)(result, &v17, a3);
    return;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v8 = result;
  v9 = a3;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC0egF0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SayAC7BindingVySbGGTt0g5Tf4g_n(v7);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC03AnyG9SelectionVTt0g5Tf4g_n(v7);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SbTt0g5Tf4g_n(v7);
  outlined consume of NavigationListState?(*(v3 + 40), *(v3 + 48));
  a3 = v9;
  result = v8;
  *(v3 + 40) = 0;
  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  *(v3 + 64) = v12;
  v14 = MEMORY[0x1E69E7CD0];
  *(v3 + 72) = v13;
  *(v3 + 80) = v14;
  *(v3 + 88) = 0;
  v15 = a2[3];
  v19 = a2[2];
  v20 = v15;
  v21 = *(a2 + 32);
  v16 = a2[1];
  v17 = *a2;
  v18 = v16;
  if (v10)
  {
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t storeEnumTagSinglePayload for InsetListLabelStyle.StyleView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC0egF0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, NavigationListState.Selection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey, &type metadata for NavigationListState.Selection);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 120)
    {
      outlined init with copy of (String, TabEntry)(i, v17, &lazy cache variable for type metadata for (NavigationState.ListKey, NavigationListState.Selection), &type metadata for NavigationState.ListKey, &type metadata for NavigationListState.Selection, type metadata accessor for (Badge, Spacer));
      v19 = v17[0];
      v20 = v17[1];
      v21 = v17[2];
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v19);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v20;
      v9 = v21;
      *v7 = v19;
      v7[1] = v8;
      v7[2] = v9;
      v10 = v3[7] + 72 * result;
      v11 = v17[4];
      v12 = v17[5];
      v13 = v17[6];
      *(v10 + 64) = v18;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      *v10 = v17[3];
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SayAC7BindingVySbGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>, type metadata accessor for [Binding<Bool>], lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 2);
      v16 = *(i - 3);
      v17 = v8;
      LOBYTE(v18) = v5;
      *(&v18 + 1) = v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 48 * result);
      v12 = v17;
      *v11 = v16;
      v11[1] = v12;
      v11[2] = v18;
      *(v3[7] + 8 * result) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;

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

void NavigationListState.update(for:splitViewState:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a2[3];
  v68 = a2[2];
  v69 = v7;
  v70 = *(a2 + 32);
  v8 = a2[1];
  v66 = *a2;
  v67 = v8;
  outlined init with copy of NavigationRequest.Action(a1, &v55);
  if (v60 > 7u)
  {
    if (v60 == 8)
    {
      v21 = v55;
      v22 = *(&v55 + 1);
      v23 = *(a1 + 120);
      v65[0] = *(a1 + 104);
      v65[1] = v23;
      v65[2] = *(a1 + 136);
      v24 = *(v3 + 8);
      if (!*(v24 + 16))
      {
        goto LABEL_22;
      }

      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v65);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      outlined init with copy of NavigationListState.Selection(*(v24 + 56) + 72 * v25, __dst);
      if (*&__dst[4] == v22)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&__src[0] = *(v4 + 32);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v65, isUniquelyReferenced_nonNull_native);
        outlined destroy of NavigationListState.Selection(__dst);
        *(v4 + 32) = *&__src[0];
        v27 = 0uLL;
        *(a3 + 136) = 0u;
        *(a3 + 120) = 0u;
        *(a3 + 104) = 0u;
        *(a3 + 88) = 0u;
        *(a3 + 72) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 24) = 0u;
        v28 = 0x1FFFFFFFCLL;
        goto LABEL_23;
      }

      v15 = __dst;
      goto LABEL_21;
    }

    if (v60 == 10)
    {
      __src[0] = v55;
      __src[1] = v56;
      *&__src[2] = v57;
      __dst[2] = v68;
      __dst[3] = v69;
      LOWORD(__dst[4]) = v70;
      __dst[0] = v66;
      __dst[1] = v67;
      NavigationListState.presentValue(_:activeBinding:selectionPopsSubsequentColumn:request:splitViewState:)(__src, *(&v57 + 1), v58, v59, SBYTE1(v59), a1, a3);
      outlined destroy of AnyNavigationLinkPresentedValue(__src);

      return;
    }

LABEL_11:
    outlined destroy of NavigationRequest.Action(&v55);
LABEL_22:
    v27 = 0uLL;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    v28 = 0x1FFFFFFFELL;
LABEL_23:
    *(a3 + 152) = 0;
    *(a3 + 160) = v28;
    *(a3 + 184) = v27;
    *(a3 + 200) = v27;
    *(a3 + 216) = v27;
    *(a3 + 232) = v27;
    *(a3 + 248) = v27;
    *(a3 + 168) = v27;
    *(a3 + 264) = v27;
    *(a3 + 280) = v27;
    *(a3 + 296) = v27;
    *(a3 + 312) = v27;
    *(a3 + 321) = v27;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    *(a3 + 340) = 0;
    return;
  }

  if (v60 == 2)
  {
    v47 = v59;
    __src[0] = v55;
    __src[1] = v56;
    __src[2] = v57;
    *&__src[3] = v58;
    v16 = *(a1 + 120);
    v61[0] = *(a1 + 104);
    v61[1] = v16;
    v61[2] = *(a1 + 136);
    v17 = *(v3 + 8);
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v61), (v19 & 1) != 0))
    {
      outlined init with copy of NavigationListState.Selection(*(v17 + 56) + 72 * v18, __dst);
      if (*(&__dst[0] + 1))
      {
        v20 = *(&__dst[3] + 1);
        outlined destroy of NavigationRequest.TargetedRequest?(__dst, &lazy cache variable for type metadata for NavigationListState.Selection?, &type metadata for NavigationListState.Selection, MEMORY[0x1E69E6720]);
        if (v20 == v47)
        {
          outlined destroy of NavigationRequest.TargetedRequest?(__src, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 72) = 0u;
          *(a3 + 88) = 0u;
          *(a3 + 104) = 0u;
          *(a3 + 120) = 0u;
          *(a3 + 136) = 0u;
          *(a3 + 152) = 0;
          *(a3 + 160) = 0x1FFFFFFFCLL;
          *(a3 + 184) = 0u;
          *(a3 + 200) = 0u;
          *(a3 + 216) = 0u;
          *(a3 + 232) = 0u;
          *(a3 + 168) = 0u;
          *(a3 + 248) = 0u;
          *(a3 + 264) = 0u;
          *(a3 + 280) = 0u;
          *(a3 + 296) = 0u;
          *(a3 + 312) = 0u;
          *(a3 + 321) = 0u;
          *a3 = xmmword_18CD6A6D0;
          *(a3 + 16) = 2;
          *(a3 + 340) = 0;
LABEL_27:
          *(a3 + 344) = 0;
          return;
        }

LABEL_26:
        v29 = MEMORY[0x1E6981948];
        outlined init with copy of NavigationSplitViewState?(__src, __dst, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
        *(&__dst[3] + 8) = v47;
        specialized Dictionary.subscript.setter(__dst, v61);
        type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v29);
        MEMORY[0x18D00ACC0](__dst);
        v30 = NavigationListState.updateSelection(_:for:)(__dst, v61);
        outlined destroy of AnyListSelection(__dst);
        outlined destroy of NavigationRequest.TargetedRequest?(__src, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v29);
        *a3 = xmmword_18CD6A6D0;
        *(a3 + 16) = 2;
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 72) = 0u;
        *(a3 + 88) = 0u;
        *(a3 + 104) = 0u;
        *(a3 + 120) = 0u;
        *(a3 + 136) = 0u;
        *(a3 + 152) = 0;
        *(a3 + 160) = 0x1FFFFFFFCLL;
        *(a3 + 184) = 0u;
        *(a3 + 200) = 0u;
        *(a3 + 216) = 0u;
        *(a3 + 232) = 0u;
        *(a3 + 248) = 0u;
        *(a3 + 168) = 0u;
        *(a3 + 264) = 0u;
        *(a3 + 280) = 0u;
        *(a3 + 296) = 0u;
        *(a3 + 312) = 0u;
        *(a3 + 321) = 0u;
        *(a3 + 340) = v30 & 1;
        goto LABEL_27;
      }
    }

    else
    {
      memset(__dst, 0, 72);
    }

    outlined destroy of NavigationRequest.TargetedRequest?(__dst, &lazy cache variable for type metadata for NavigationListState.Selection?, &type metadata for NavigationListState.Selection, MEMORY[0x1E69E6720]);
    goto LABEL_26;
  }

  if (v60 != 7)
  {
    goto LABEL_11;
  }

  v9 = v55;
  v10 = BYTE8(v55);
  v11 = *(a1 + 120);
  v62 = *(a1 + 104);
  v63 = v11;
  v64 = *(a1 + 136);
  v12 = *(v3 + 8);
  if (!*(v12 + 16))
  {
    goto LABEL_22;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v62);
  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

  outlined init with copy of NavigationListState.Selection(*(v12 + 56) + 72 * v13, v54);
  if (v54[8] != v9)
  {
    v15 = v54;
LABEL_21:
    outlined destroy of NavigationListState.Selection(v15);
    goto LABEL_22;
  }

  NavigationListState.removePendingDeselections()();
  type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](__dst);
  v31 = NavigationListState.updateSelection(_:for:)(__dst, &v62);
  outlined destroy of AnyListSelection(__dst);
  if ((v31 & 1) == 0)
  {
    if (v10)
    {
      outlined destroy of NavigationListState.Selection(v54);
      v39 = 0;
LABEL_46:
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 152) = 0;
      *(a3 + 160) = 0x1FFFFFFFCLL;
      *(a3 + 184) = 0u;
      *(a3 + 200) = 0u;
      *(a3 + 216) = 0u;
      *(a3 + 232) = 0u;
      *(a3 + 248) = 0u;
      *(a3 + 168) = 0u;
      *(a3 + 264) = 0u;
      *(a3 + 280) = 0u;
      *(a3 + 296) = 0u;
      *(a3 + 312) = 0u;
      *(a3 + 321) = 0u;
      *a3 = xmmword_18CD6A6D0;
      *(a3 + 16) = 2;
      *(a3 + 340) = v39;
      goto LABEL_27;
    }

    v39 = 0;
LABEL_45:
    outlined destroy of NavigationListState.Selection(v54);
    goto LABEL_46;
  }

  if (v67 != 1)
  {
    v32 = v68;
    if (v68)
    {
      v33 = *(&v68 + 1);
      v34 = v63;
      if (v63 >= 3u)
      {
        v34 = 3;
      }

      memset(&__src[1], 0, 40);
      if (v63 == 6)
      {
        v34 = 3;
      }

      __src[0] = 0uLL;
      BYTE8(__src[3]) = 4;
      BYTE9(__src[3]) = v34;
      v51 = 17;
      outlined init with copy of NavigationUpdateEvent(__src, &v48);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      *(v35 + 24) = v33;
      v36 = v49;
      *(v35 + 32) = v48;
      *(v35 + 48) = v36;
      *(v35 + 64) = *v50;
      *(v35 + 74) = *&v50[10];
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v32, v33);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v32, v33);
      v37 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationSplitViewState?(&v66, __dst, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationRequest.TargetedRequest?(&v66, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v37);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v32, v33);
      outlined destroy of NavigationUpdateEvent(__src);
      outlined destroy of NavigationListState.Selection(v54);
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 152) = 0;
      *(a3 + 160) = 0x1FFFFFFFCLL;
      *(a3 + 184) = 0u;
      *(a3 + 200) = 0u;
      *(a3 + 216) = 0u;
      *(a3 + 232) = 0u;
      *(a3 + 248) = 0u;
      *(a3 + 168) = 0u;
      *(a3 + 264) = 0u;
      *(a3 + 280) = 0u;
      *(a3 + 296) = 0u;
      *(a3 + 312) = 0u;
      *(a3 + 321) = 0u;
      goto LABEL_36;
    }
  }

  if ((v10 & 1) == 0)
  {
    v39 = 1;
    goto LABEL_45;
  }

  v40 = (v31 >> 8) & 1;
  v41 = *(v4 + 8);
  v42 = *(v4 + 16);
  v43 = *(v4 + 24);
  v44 = *(v4 + 32);
  v45 = *(v4 + 40);
  v46 = *(v4 + 48);
  LODWORD(v48) = *v4;
  *(&v48 + 1) = v41;
  *&v49 = v42;
  *(&v49 + 1) = v43;
  *v50 = v44;
  *&v50[8] = v45;
  *&v50[16] = v46;

  NavigationListState.requestToPopSubsequentColumn(original:popReplacedRoots:)(a1, v40, __src);
  outlined destroy of NavigationListState.Selection(v54);

  if (*(&__src[8] + 1) >> 1 == 0xFFFFFFFFLL)
  {
    outlined destroy of NavigationRequest.TargetedRequest?(__src, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
    v39 = 1;
    goto LABEL_46;
  }

  memcpy(__dst, __src, 0x139uLL);
  memcpy((a3 + 24), __dst, 0x139uLL);
LABEL_36:
  *a3 = xmmword_18CD6A6D0;
  *(a3 + 16) = 2;
  *(a3 + 340) = 1;
}

uint64_t sub_18BFB5CAC()
{

  if (*(v0 + 88) - 1 <= 2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return swift_deallocObject();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC03AnyG9SelectionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, AnyListSelection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey, &type metadata for AnyListSelection);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 88)
    {
      outlined init with copy of (String, TabEntry)(i, v15, &lazy cache variable for type metadata for (NavigationState.ListKey, AnyListSelection), &type metadata for NavigationState.ListKey, &type metadata for AnyListSelection, type metadata accessor for (Badge, Spacer));
      v17 = v15[0];
      v18 = v15[1];
      v19 = v15[2];
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v17);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v18;
      *v7 = v17;
      v7[1] = v8;
      v7[2] = v19;
      v9 = v3[7] + 40 * result;
      v11 = v15[3];
      v10 = v15[4];
      *(v9 + 32) = v16;
      *v9 = v11;
      *(v9 + 16) = v10;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, Bool>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6370]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 2);
      v14 = *(i - 3);
      v15 = v5;
      v16 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v15;
      *v9 = v14;
      v9[1] = v10;
      v9[2] = v16;
      *(v3[7] + result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t outlined consume of NavigationListState?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of NavigationRequest.TargetedRequest?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<AnyListSelection>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for Binding<AnyListSelection>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of NavigationSplitViewState?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for Binding<AnyListSelection>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t getEnumTagSinglePayload for UIKitSearchBarCoordinator.SearchToken(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t *a2, char a3)
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
    v20 = v19[7] + 72 * v9;

    return outlined assign with take of NavigationListState.Selection(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

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
    v20 = v19[7] + 40 * v9;

    return outlined assign with take of AnyListSelection(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

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
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(a1 + 32);
    do
    {
      v12 = *(v2 + 48) + 48 * result;
      if (*v12 == v7)
      {
        v13 = *(v12 + 16);
        v14 = *(v12 + 32);
        if (v13 == 6)
        {
          if (v9 == 6)
          {
            goto LABEL_4;
          }
        }

        else if (v9 != 6)
        {
          v15 = *(v12 + 8);
          v16 = *(v12 + 24);
          v17 = (v13 ^ v9);
          v18 = v15 == v8 && v17 == 0;
          if (v18 && v16 == v10)
          {
LABEL_4:
            if (((v14 ^ v11) & 1) == 0)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    v20 = a1[3];
    v21 = a1[2];
    v9 = *(a1 + 32);
    v10 = *(v2 + 48);
    do
    {
      v11 = (v10 + 40 * v5);
      v12 = *v11;
      v13 = v11[1];
      if (v11[4])
      {
        if (v9)
        {
          v14 = v11[2];
          v15 = v11[3];
          v16 = v12 == v8 && v13 == v7;
          if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            if (v14 == v21 && v15 == v20)
            {
              return v5;
            }

LABEL_3:
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              return v5;
            }
          }
        }
      }

      else if ((v9 & 1) == 0)
      {
        if (v12 == v8 && v13 == v7)
        {
          return v5;
        }

        goto LABEL_3;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey()
{
  result = lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey;
  if (!lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationState.ListKey, &type metadata for NavigationState.ListKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey;
  if (!lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationState.ListKey, &type metadata for NavigationState.ListKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationState.ListKey and conformance NavigationState.ListKey);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  v6 = a4[7] + 72 * result;
  *(v6 + 64) = *(a3 + 64);
  v7 = *(a3 + 48);
  *(v6 + 32) = *(a3 + 32);
  *(v6 + 48) = v7;
  v8 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v8;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  v6 = a4[7] + 40 * result;
  v7 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a3 + 32);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
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

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + (result << 6));
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v6 = a2[3];
  v4[2] = a2[2];
  v4[3] = v6;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(a3 + 48);
  a4[(result >> 6) + 8] |= 1 << result;
  v7 = (a4[6] + 48 * result);
  v8 = a2[1];
  *v7 = *a2;
  v7[1] = v8;
  *(v7 + 25) = *(a2 + 25);
  v9 = a4[7] + 56 * result;
  *v9 = *a3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = *(a3 + 32);
  *(v9 + 48) = v6;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + (result << 7));
  v5 = a2[5];
  v4[4] = a2[4];
  v4[5] = v5;
  v4[6] = a2[6];
  *(v4 + 105) = *(a2 + 105);
  v6 = a2[1];
  *v4 = *a2;
  v4[1] = v6;
  v7 = a2[3];
  v4[2] = a2[2];
  v4[3] = v7;
  *(a4[7] + 8 * result) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t NavigationListState.updateSelection(_:for:)(void *a1, uint64_t *a2)
{
  outlined init with copy of AnyListSelection(a1, v14);
  specialized Dictionary._Variant.updateValue(_:forKey:)(v14, a2, &v15);
  if (*(&v16 + 1))
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 64))(&v18, v4, v5);
    v7 = *(&v19 + 1);
    v8 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v9 = (*(v8 + 16))(v7, v8);
    outlined destroy of AnyListSelection(&v18);
    if (v9)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    outlined destroy of NavigationRequest.TargetedRequest?(&v15, &lazy cache variable for type metadata for AnyListSelection?, &type metadata for AnyListSelection, MEMORY[0x1E69E6720]);
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v6 = (*(v12 + 16))(v11, v12);
    v10 = 256;
  }

  return v10 | ((v6 & 1) == 0);
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    specialized _NativeDictionary.copy()();
    result = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v10);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v10[7] + 40 * result;
  v19 = *(v18 + 16);
  *a3 = *v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = *(v18 + 32);
  v20 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 16) = v20;
  *(v18 + 32) = *(a1 + 32);
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t AnyListSelection.Storage.isEmpty.getter(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for SelectionManagerBox(0, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v6 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v10, v4 + v11, v7);
  LOBYTE(a1) = a1(v7);
  (*(v8 + 8))(v10, v7);
  return a1 & 1;
}

uint64_t SelectionManagerBox.isEmpty.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = *(a1 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, v2, a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v8, v13, v5);
      v15 = (*(*(v4 - 8) + 48))(v8, 1, v4) == 1;
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v9 + 8))(v13, a1);
      v15 = 0;
    }
  }

  else
  {
    v15 = Set.isEmpty.getter();
  }

  return v15 & 1;
}

double destroy for NavigationSplitViewState(void *a1)
{
  if (a1[2])
  {
  }

  if (a1[4])
  {
  }

  if (a1[7])
  {
  }

  return result;
}

uint64_t NavigationColumnState.boundSelectionChange(request:splitViewState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of NavigationRequest.TargetedRequest(a1, v8);
  NavigationRequest.ListRequest.init(_:)(v8, v10);
  if (v11 == 1)
  {
    outlined destroy of NavigationRequest.Action?(v10, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14[8] = v10[8];
    v14[9] = v11;
    v14[10] = v12;
    v15 = v13;
    v14[4] = v10[4];
    v14[5] = v10[5];
    v14[6] = v10[6];
    v14[7] = v10[7];
    v14[0] = v10[0];
    v14[1] = v10[1];
    v14[2] = v10[2];
    v14[3] = v10[3];
    v5 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v5;
    v9 = *(a2 + 64);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    NavigationColumnState.updateListState(_:splitViewState:)(v14, v8, a3);
    return outlined destroy of NavigationRequest.ListRequest(v14);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationListState.Selection(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 5);
  *(a1 + 40) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 16, a2 + 2, v6);
  *(a1 + 56) = *(a2 + 7);
  return a1;
}

uint64_t AnyListSelection.Storage.equals(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for SelectionManagerBox(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  outlined init with copy of _Benchmark(a1, v25);
  type metadata accessor for AnyListSelection.StorageProtocol();
  if (swift_dynamicCast())
  {
    v15 = v24;
    v16 = *(*v4 + 96);
    swift_beginAccess();
    v23 = v6;
    v17 = *(v9 + 16);
    v17(v14, v4 + v16, v8);
    v18 = *(*v15 + 96);
    swift_beginAccess();
    v17(v11, v15 + v18, v8);
    v19 = static SelectionManagerBox.== infix(_:_:)(v14, v11, v23, v7);

    v20 = *(v9 + 8);
    v20(v11, v8);
    v20(v14, v8);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

unint64_t type metadata accessor for AnyListSelection.StorageProtocol()
{
  result = lazy cache variable for type metadata for AnyListSelection.StorageProtocol;
  if (!lazy cache variable for type metadata for AnyListSelection.StorageProtocol)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyListSelection.StorageProtocol);
  }

  return result;
}

uint64_t static SelectionManagerBox.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v80 = a2;
  v77 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - v8;
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v68 = &v65 - v10;
  v75 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v65 - v16;
  v73 = a4;
  v78 = a3;
  v18 = type metadata accessor for SelectionManagerBox(0, a3, a4, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v65 - v26;
  v28 = swift_getTupleTypeMetadata2();
  v76 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v65 - v30;
  v33 = *(v32 + 48);
  v74 = v19;
  v34 = *(v19 + 16);
  v34(&v65 - v30, v79, v18, v29);
  (v34)(&v31[v33], v80, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (v34)(v27, v31, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      v48 = static Set.== infix(_:_:)();

      v47 = v74;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (v34)(v21, v31, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v50 = v77;
      v49 = v78;
      v51 = *(v77 + 32);
      v52 = v69;
      v51(v69, v21, v78);
      v53 = &v31[v33];
      v54 = v67;
      v51(v67, v53, v49);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = *(v50 + 8);
      v55(v54, v49);
      v55(v52, v49);
      v47 = v74;
      goto LABEL_14;
    }

    (*(v77 + 8))(v21, v78);
LABEL_13:
    v48 = 0;
    v47 = v76;
    v18 = v28;
    goto LABEL_14;
  }

  (v34)(v24, v31, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v75 + 8))(v24, v9);
    goto LABEL_13;
  }

  v36 = v75;
  v37 = *(v75 + 32);
  v38 = v72;
  v37(v72, v24, v9);
  v39 = &v31[v33];
  v40 = v70;
  v37(v70, v39, v9);
  v41 = *(TupleTypeMetadata2 + 48);
  v42 = *(v36 + 16);
  v43 = v68;
  v42(v68, v38, v9);
  v80 = v41;
  v42(&v43[v41], v40, v9);
  v44 = *(v77 + 48);
  if (v44(v43, 1, v78) != 1)
  {
    v57 = v66;
    v42(v66, v43, v9);
    v58 = v80;
    v59 = v78;
    if (v44(&v43[v80], 1, v78) != 1)
    {
      v61 = v77;
      v62 = v69;
      (*(v77 + 32))(v69, &v43[v58], v59);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = *(v61 + 8);
      v63(v62, v59);
      v64 = *(v75 + 8);
      v64(v70, v9);
      v64(v72, v9);
      v63(v66, v59);
      v64(v43, v9);
      v47 = v74;
      goto LABEL_14;
    }

    v60 = *(v75 + 8);
    v60(v70, v9);
    v60(v72, v9);
    (*(v77 + 8))(v57, v59);
    v47 = v74;
    goto LABEL_18;
  }

  v45 = *(v75 + 8);
  v45(v40, v9);
  v45(v72, v9);
  v46 = v44(&v43[v80], 1, v78);
  v47 = v74;
  if (v46 != 1)
  {
LABEL_18:
    (*(v65 + 8))(v43, TupleTypeMetadata2);
    v48 = 0;
    goto LABEL_14;
  }

  v45(v43, v9);
  v48 = 1;
LABEL_14:
  (*(v47 + 8))(v31, v18);
  return v48 & 1;
}

uint64_t AnyListSelection.Storage.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = type metadata accessor for SelectionManagerBox(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  return v4;
}

uint64_t AnyListSelection.Storage.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AnyListSelection.Storage.deinit(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t destroy for NavigationListState.Selection(void *a1)
{

  return __swift_destroy_boxed_opaque_existential_1(a1 + 2);
}

double partial apply for closure #1 in NavigationSeedHost.seeds.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t assignWithCopy for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v8, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  outlined consume of Environment<CGFloat?>.Content(v12, v13, v14);
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t *assignWithCopy for PopoverConditionalStateProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v4 = a2[4];
  a1[3] = a2[3];
  a1[4] = v4;

  v5 = a2[8];
  if (a1[8])
  {
    v6 = a1 + 5;
    if (v5)
    {
      __swift_assign_boxed_opaque_existential_1(v6, a2 + 5);
    }

    else
    {
      outlined destroy of AnyHashable(v6);
      v7 = a2[9];
      v8 = *(a2 + 7);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 7) = v8;
      a1[9] = v7;
    }
  }

  else if (v5)
  {
    a1[8] = v5;
    a1[9] = a2[9];
    (**(v5 - 8))(a1 + 5, a2 + 5);
  }

  else
  {
    v9 = *(a2 + 5);
    v10 = *(a2 + 7);
    a1[9] = a2[9];
    *(a1 + 7) = v10;
    *(a1 + 5) = v9;
  }

  return a1;
}

uint64_t assignWithCopy for ToolbarStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      outlined destroy of ToolbarItemPlacement.Role?(a1 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
      v5 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v6;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind()
{
  result = lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind;
  if (!lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarDefaultItemKind.Kind, &type metadata for ToolbarDefaultItemKind.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind;
  if (!lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarDefaultItemKind.Kind, &type metadata for ToolbarDefaultItemKind.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind);
  }

  return result;
}

uint64_t InsettableGroupedListBodyRule.value.getter@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = a1[7];
  v26 = a1[4];
  v27 = v5;
  v6 = v5;
  v28 = type metadata accessor for SelectionManagerBox(255, v26, v5, a2);
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v12 = a1[5];
  *&v36 = a1[2];
  v11 = v36;
  *(&v36 + 1) = v26;
  *&v37 = v12;
  *(&v37 + 1) = v6;
  v13 = type metadata accessor for _ListValue(0, &v36);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  InsettableGroupedListBodyRule.base.getter(a1, &v26 - v15);
  (*(v8 + 16))(v10, &v16[*(v13 + 52)], v7);
  (*(v14 + 8))(v16, v13);
  v17 = *(v3 + 24);
  v36 = *(v3 + 8);
  v37 = v17;
  v38 = *(v3 + 40);
  *&v18 = v11;
  *(&v18 + 1) = a1[3];
  *&v17 = v26;
  *(&v17 + 1) = v12;
  v30 = v18;
  v31 = v17;
  v32 = a1[6];
  v33 = v27;
  v34 = v3;
  v19 = type metadata accessor for StyleContextWriter();
  v20 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F4D0], v19);
  v35[0] = &protocol witness table for ListStyleContent;
  v35[1] = WitnessTable;
  v22 = swift_getWitnessTable(MEMORY[0x1E697E858], v20, v35);
  v23 = v28;
  v24 = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v28);
  return InsettableGroupedListBody.init(selection:insetMode:content:)(v10, &v36, partial apply for closure #1 in InsettableGroupedListBodyRule.value.getter, v20, v23, v22, v24, v29);
}

uint64_t InsettableGroupedListBodyRule.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = type metadata accessor for _ListValue(0, &v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

double View.defaultScrollAnchor(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  View.transformEnvironment<A>(_:transform:)();

  return result;
}

double sub_18BFB8CC8@<D0>(uint64_t a2@<X8>)
{
  EnvironmentValues.scrollAnchors.getter();
  *a2 = v4;
  result = *&v5;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t assignWithCopy for SystemScrollLayoutState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(v4);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v5);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t InsettableGroupedListBody.init(selection:insetMode:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v17 = a8 + *(type metadata accessor for InsettableGroupedListBody(0, v20) + 52);
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(a2 + 32);
  return a3();
}

uint64_t closure #1 in InsettableGroupedListBodyRule.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23[1] = a8;
  v25 = a2;
  v26 = a4;
  v27 = a5;
  v28 = a7;
  v14 = type metadata accessor for _ListValue(0, &v25);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v18 = type metadata accessor for InsettableGroupedListBodyRule(0, &v25);
  InsettableGroupedListBodyRule.base.getter(v18, v17);
  (*(v15 + 8))(v17, v14);
  View.styleContext<A>(_:)();
  v19 = type metadata accessor for StyleContextWriter();
  v20 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F4D0], v19);
  v24[0] = &protocol witness table for ListStyleContent;
  v24[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E858], v20, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  return static ViewBuilder.buildExpression<A>(_:)();
}

void ScrollViewProxy.scrollTo<A>(_:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = static Transaction.current.getter();
  v6 = v5;
  if ((a4 & 1) == 0)
  {
    Transaction.scrollTargetAnchor.setter();
    v5 = v6;
  }

  MEMORY[0x1EEE9AC00](v5);
  withTransaction<A>(_:_:)();
}

uint64_t *initializeWithCopy for InsettableGroupedListBody(uint64_t *__dst, uint64_t *__src, uint64_t a3)
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
    v23 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v23 & v9, (v12 + v8 + 8) & v9, v6);
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
  v17 = (__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  v21 = *(*(a3 + 16) - 8);
  (*(v21 + 16))((*(v21 + 80) + 34 + v17) & ~*(v21 + 80), (*(v21 + 80) + 34 + v18) & ~*(v21 + 80));
  return __dst;
}

uint64_t closure #1 in ScrollViewProxy.scrollTo<A>(_:anchor:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewGraph();
  v4 = static GraphHost.isUpdating.getter();
  if (v4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t destroy for InsettableGroupedListBody(void *a1, uint64_t a2)
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

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (((a1 + v8 + ((v6 + 16) & v7) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 34) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t partial apply for closure #1 in ScrollViewProxy.apply(to:)(uint64_t a1)
{
  return partial apply for closure #1 in ScrollViewProxy.apply(to:)(a1);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  AGGraphClearUpdate();
  closure #1 in closure #1 in ScrollViewProxy.apply(to:)(v2, v3);
  return AGGraphSetUpdate();
}

uint64_t InsettableGroupedListBody.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v38 = a1[2];
  v3 = v38;
  v39 = v2;
  v40 = v4;
  v41 = v5;
  type metadata accessor for InsettableGroupedListBody.CollectionViewBody(255, &v38);
  v38 = v3;
  v39 = v2;
  v40 = v4;
  v41 = v5;
  v6 = type metadata accessor for InsettableGroupedListBody.TableViewRoot(255, &v38);
  v21 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>(255);
  v23 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for StaticIf();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v30 = v3;
  v31 = v2;
  v32 = v4;
  v33 = v5;
  v34 = v22;
  v25 = v3;
  v26 = v2;
  v27 = v4;
  v28 = v5;
  v29 = v22;
  v14 = lazy protocol witness table accessor for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled();
  WitnessTable = swift_getWitnessTable("%E\tb(/\b", *&v21);
  v37[0] = swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>.TableViewRoot, v6);
  v37[1] = v4;
  v16 = swift_getWitnessTable(MEMORY[0x1E697E308], v21, v37);
  v17 = lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>, MEMORY[0x1E697FD30]);
  v36[0] = v16;
  v36[1] = v17;
  v20 = swift_getWitnessTable(MEMORY[0x1E697E858], v23, v36);
  StaticIf<>.init(_:then:else:)();
  v35[0] = v14;
  v35[1] = WitnessTable;
  v35[2] = v20;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v7, v35);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v8 + 8);
  v18(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v13, v7);
}

uint64_t closure #1 in InsettableGroupedListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v34 = a4;
  *(&v34 + 1) = a5;
  v37 = a6;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  *&v38 = a2;
  *(&v38 + 1) = a3;
  *&v39 = a4;
  *(&v39 + 1) = a5;
  v16 = type metadata accessor for InsettableGroupedListBody.CollectionViewBody(0, &v38);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  (*(v13 + 16))(v15, a1, v12, v21);
  *&v38 = a2;
  *(&v38 + 1) = a3;
  v24 = v34;
  v39 = v34;
  v25 = type metadata accessor for InsettableGroupedListBody(0, &v38);
  v26 = *(v25 + 56);
  v27 = (a1 + *(v25 + 52));
  v28 = v27[1];
  v38 = *v27;
  v39 = v28;
  v40 = *(v27 + 16);
  v29 = a1 + v26;
  v30 = v35;
  (*(v36 + 16))(v35, v29, a2);
  InsettableGroupedListBody.CollectionViewBody.init(selection:insetMode:content:)(v15, &v38, v30, a2, a3, v24, *(&v24 + 1), v19);
  swift_getWitnessTable("%E\tb(/\b", v33);
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v17 + 8);
  v31(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v23, v16);
}

uint64_t closure #1 in closure #1 in ScrollViewProxy.apply(to:)(uint64_t a1, uint64_t (*a2)(void *))
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  result = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v8 = result + 40;
    outlined init with copy of _Benchmark(result, v10);
    v9 = a2(v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v8;
    if (v9)
    {
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t InsettableGroupedListBody.CollectionViewBody.init(selection:insetMode:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  *(a8 + 16) = swift_getKeyPath();
  *(a8 + 24) = 0;
  v23 = 0;
  *(a8 + 32) = swift_getKeyPath();
  *(a8 + 97) = 0;
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v16 = type metadata accessor for InsettableGroupedListBody.CollectionViewBody(0, v22);
  v17 = v16[15];
  type metadata accessor for Binding();
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(a8 + v17, a1, v18);
  v19 = a8 + v16[16];
  v20 = *(a2 + 16);
  *v19 = *a2;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a2 + 32);
  return (*(*(a4 - 8) + 32))(a8 + v16[17], a3, a4);
}

uint64_t initializeWithCopy for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v5;
  *(a1 + 8) = v6;
  v45 = a1;
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
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  v19 = *(v12 + 48);
  v20 = *(v12 + 56);
  v43 = *(v12 + 64);
  v44 = *(v12 + 65);
  v21.n128_f64[0] = outlined copy of Environment<ListPadding>.Content(*v12, v14, v15, v16, v17, v18, v19, v20, v43, v44);
  *v11 = v13;
  *(v11 + 8) = v14;
  *(v11 + 16) = v15;
  *(v11 + 24) = v16;
  *(v11 + 32) = v17;
  *(v11 + 40) = v18;
  *(v11 + 48) = v19;
  *(v11 + 56) = v20;
  *(v11 + 64) = v43;
  *(v11 + 65) = v44;
  v22 = *(a3 + 24);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = (v24 | 7) + 66;
  v26 = ((v25 + v11) & ~(v24 | 7));
  v27 = ((v25 + v12) & ~(v24 | 7));
  v28 = ~v24;
  v29 = (v24 + 16) & ~v24;
  v30 = *(v23 + 64);
  v31 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v23 + 84) & 0x80000000) == 0)
  {
    v32 = *v31;
    if (*v31 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    v33 = v29 + v30;
    if (v32 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v26 = *v27;
    v34 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v31;
    v35 = v34 + v24 + 8;
    v36 = *(v23 + 16);

    v36(v35 & v28, (v31 + v24 + 8) & v28, v22);
    goto LABEL_8;
  }

  v33 = v29 + v30;
  if (!(*(v23 + 48))((v31 + v24 + 8) & v28, v21))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v26, v27, v33);
LABEL_8:
  v37 = (v26 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  v40 = *(v38 + 16);
  *(v37 + 32) = *(v38 + 32);
  *v37 = v39;
  *(v37 + 16) = v40;
  v41 = *(*(a3 + 16) - 8);
  (*(v41 + 16))((*(v41 + 80) + 34 + v37) & ~*(v41 + 80), (*(v41 + 80) + 34 + v38) & ~*(v41 + 80));
  return v45;
}

uint64_t destroy for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  v4 = (v3 + 33) & 0xFFFFFFFFFFFFFFF8;
  v5.n128_f64[0] = outlined consume of Environment<ListPadding>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 65));
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + (v8 | 7) + 66) & ~(v8 | 7);
  v10 = ~v8;
  v11 = *(v7 + 64);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    if (!(*(v7 + 48))((v12 + v8 + 8) & v10, v5))
    {
LABEL_5:

      (*(v7 + 8))((v12 + v8 + 8) & v10, v6);
    }
  }

  else
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    if (v13 == -1)
    {
      goto LABEL_5;
    }
  }

  v14 = *(*(a2 + 16) - 8);
  v15 = *(v14 + 8);
  v16 = (((v11 + ((v8 + 16) & v10) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 34) & ~*(v14 + 80);

  return v15(v16, v5);
}

uint64_t partial apply for closure #1 in closure #1 in ScrollViewProxy.scrollTo<A>(_:anchor:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 8))(v4, v2, v3, v5, v6) & 1;
}

uint64_t ScrollViewScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for [Scrollable](0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v6 = *WeakValue;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  result = v6 + 32;
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    v10 = v8 + v9;
    if (v8 + v9 == -1)
    {
LABEL_8:

      return v10 != -1;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v11 = result + 40;
    outlined init with copy of _Benchmark(result, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = (*(v13 + 8))(a1, a2, a3, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = v11;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in InsettableGroupedListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a4;
  v44 = a6;
  type metadata accessor for Binding();
  v39 = type metadata accessor for Optional();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v35 - v12;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  *&v53 = a4;
  *(&v53 + 1) = a5;
  v40 = type metadata accessor for InsettableGroupedListBody.TableViewRoot(0, &v52);
  MEMORY[0x1EEE9AC00](v40);
  v15 = &v35 - v14;
  v16 = type metadata accessor for _VariadicView.Tree();
  v42 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>(255);
  v19 = type metadata accessor for ModifiedContent();
  v43 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v41 = &v35 - v23;
  (*(v11 + 16))(v13, a1, v39, v22);
  *&v52 = a2;
  *(&v52 + 1) = a3;
  v24 = v37;
  v25 = v36;
  *&v53 = v37;
  *(&v53 + 1) = v36;
  v26 = (a1 + *(type metadata accessor for InsettableGroupedListBody(0, &v52) + 52));
  v27 = v26[1];
  v52 = *v26;
  v53 = v27;
  v54 = *(v26 + 16);
  InsettableGroupedListBody.TableViewRoot.init(selection:insetMode:)(v13, &v52, a2, a3, v24, v25, v15);
  v45 = a2;
  v46 = a3;
  v47 = v24;
  v48 = v25;
  v49 = a1;
  v28 = v40;
  _VariadicView.Tree.init(_:content:)();
  v51[0] = swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>.TableViewRoot, v28);
  v51[1] = v24;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E308], v16, v51);
  lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders();
  v30 = v38;
  View.input<A>(_:)();
  (*(v42 + 8))(v18, v16);
  v31 = lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>, MEMORY[0x1E697FD30]);
  v50[0] = WitnessTable;
  v50[1] = v31;
  swift_getWitnessTable(MEMORY[0x1E697E858], v19, v50);
  v32 = v41;
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v43 + 8);
  v33(v30, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v32, v19);
}

BOOL ScrollViewScrollable.setContentTarget(_:)(uint64_t (*a1)(), uint64_t a2)
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return WeakValue != 0;
  }

  v6 = *WeakValue;
  v7 = WeakValue[2];
  v83[1] = WeakValue[1];
  v83[2] = v7;
  v83[0] = v6;
  v8 = WeakValue[3];
  v9 = WeakValue[4];
  v10 = WeakValue[5];
  *&v84[12] = *(WeakValue + 92);
  v83[4] = v9;
  *v84 = v10;
  v83[3] = v8;
  v11 = WeakValue[1];
  v85 = *WeakValue;
  v86 = v11;
  v12 = WeakValue[2];
  v13 = WeakValue[3];
  v14 = WeakValue[5];
  v89 = WeakValue[4];
  v90 = v14;
  v87 = v12;
  v88 = v13;
  v39 = WeakValue;
  v40 = *&v84[16];
  v15 = *&v84[24];
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  outlined init with copy of SystemScrollLayoutState(v83, &v58);
  v16 = AGGraphGetWeakValue();
  if (!v16)
  {
    goto LABEL_6;
  }

  outlined init with copy of ScrollPosition?(v16, &v58, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  v46 = v59;
  v47 = v60;
  v48 = v61;
  *&v49 = v62;
  v45 = v58;
  if (!*(&v59 + 1))
  {
    outlined destroy of ResolvedScrollBehavior?(&v45, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
LABEL_6:
    v17 = a2;
    goto LABEL_7;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = v61;
  *(v17 + 64) = v60;
  *(v17 + 80) = v18;
  *(v17 + 96) = v62;
  v19 = v59;
  *(v17 + 32) = v58;
  *(v17 + 48) = v19;
  a1 = partial apply for closure #1 in ScrollViewScrollable.setContentTarget(_:);
LABEL_7:
  v20 = *v84;
  v21 = *&v84[8];
  v38 = v15;
  if (*v84 != 0.0 || *&v84[8] != 0.0)
  {
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = v17;
    v22[4] = v20;
    v22[5] = v21;
    v17 = v22;
    a1 = partial apply for closure #2 in ScrollViewScrollable.setContentTarget(_:);
  }

  v23 = *&v84[24];

  static Transaction.current.getter();

  ScrollTargetConfiguration.init(transaction:)();
  v24 = v58;
  v25 = BYTE8(v58);
  v26 = BYTE9(v58);
  v27 = *(v2 + 5);
  swift_beginAccess();
  v28 = (*(v27 + 16) + 1);
  *(v27 + 16) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v17;
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  v41 = v29 | 0x4000000000000000;
  *(v29 + 41) = v26;

  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v40);
  if (v23)
  {
    LODWORD(v30) = v38;
    if (v23 == -1)
    {
      goto LABEL_18;
    }

    v30 = merge32(_:_:)(v23, v28);
    if (v30 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v30 = v28;
  if (v28 != -1)
  {
LABEL_15:
    if (v30)
    {
      LODWORD(v30) = merge32(_:_:)(v30, 5u);
    }

    else
    {
      LODWORD(v30) = 5;
    }
  }

LABEL_18:

  v70[2] = v87;
  v70[3] = v88;
  v70[4] = v89;
  *v71 = v90;
  v70[0] = v85;
  v70[1] = v86;
  *&v71[16] = v41;
  *&v71[24] = v30;
  v31 = *v2;
  v32 = v2[1];
  v72[0] = v85;
  v72[1] = v86;
  *&v73[12] = *&v71[12];
  v72[4] = v89;
  *v73 = v90;
  v72[2] = v87;
  v72[3] = v88;
  *&v73[28] = v31;
  v74 = v32;
  v77 = v87;
  v78 = v88;
  v75 = v85;
  v76 = v86;
  v82 = v32;
  v80 = v90;
  v81 = *&v73[16];
  v79 = v89;
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    outlined init with copy of SystemScrollLayoutState(v70, &v58);

    outlined destroy of SystemScrollLayoutState(v70);

    v60 = v87;
    v61 = v88;
    v62 = v89;
    v63 = v90;
    v58 = v85;
    v59 = v86;
    *&v64 = v41;
    DWORD2(v64) = v30;
    outlined destroy of SystemScrollLayoutState(&v58);
  }

  else
  {
    v33 = AGGraphGetAttributeGraph();

    outlined init with copy of SystemScrollLayoutState(v70, &v58);
    v34 = AGGraphRef.viewGraph()();

    v57 = v42;

    Transaction.fromScrollView.setter();
    v62 = v79;
    v63 = v80;
    v64 = v81;
    LODWORD(v65) = v82;
    v58 = v75;
    v59 = v76;
    v60 = v77;
    v61 = v78;
    *(&v65 + 1) = 5;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v54 = 0u;
    v55 = 0u;
    v50 = v80;
    v51 = v81;
    v52 = v65;
    v53 = 0u;
    v45 = v75;
    v46 = v76;
    v47 = v77;
    v69 = 257;
    v56 = 257;
    v48 = v78;
    v49 = v79;
    v44 = 1;
    outlined init with copy of ScrollEnvironmentTransform?(v72, v43, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
    lazy protocol witness table accessor for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    if (*&v71[16] == 0x8000000000000000)
    {
      outlined init with copy of SystemScrollLayoutState(v70, &v45);
      outlined init with copy of SystemScrollLayoutState(v70, &v45);
      static Semantics.v6.getter();
      v35 = isLinkedOnOrAfter(_:)();
    }

    else
    {
      outlined init with copy of SystemScrollLayoutState(v70, &v45);
      v35 = 0;
    }

    v43[0] = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = v35 & 1;
    *(v36 + 24) = v34;

    static Update.enqueueAction(reason:_:)();
    outlined destroy of ScrollViewCommitMutation(&v58);

    outlined destroy of SystemScrollLayoutState(v70);

    outlined destroy of SystemScrollLayoutState(v70);

    v48 = v88;
    v49 = v89;
    v50 = v90;
    v45 = v85;
    v46 = v86;
    v47 = v87;
    *&v51 = v41;
    DWORD2(v51) = v30;
    outlined destroy of SystemScrollLayoutState(&v45);
  }

  WeakValue = v39;
  return WeakValue != 0;
}

uint64_t sub_18BFBB27C()
{

  return swift_deallocObject();
}

uint64_t sub_18BFBB2B4()
{

  return swift_deallocObject();
}

uint64_t sub_18BFBB2F4()
{

  return swift_deallocObject();
}

uint64_t sub_18BFBB32C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

__n128 InsettableGroupedListBody.TableViewRoot.init(selection:insetMode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 24) = 0;
  v21 = 0;
  *(a7 + 32) = swift_getKeyPath();
  *(a7 + 97) = 0;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v14 = type metadata accessor for InsettableGroupedListBody.TableViewRoot(0, v20);
  v15 = *(v14 + 60);
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 32))(a7 + v15, a1, v16);
  v17 = a7 + *(v14 + 64);
  result = *a2;
  v19 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v19;
  *(v17 + 32) = *(a2 + 32);
  return result;
}

double ScrollViewAdjustedBehavior.value.getter@<D0>(uint64_t a2@<X8>)
{
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior();
  MEMORY[0x18D000B90](&unk_1F0019D80, v4, v5);
  Rule.withObservation<A>(observationCenter:do:)();

  if (*AGGraphGetValue())
  {
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    *(a2 + 64) = v10;
    v7 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v7;
  }

  else
  {
    outlined destroy of ResolvedScrollBehavior?(v9, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    *&v7 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
  }

  return *&v7;
}

uint64_t initializeWithCopy for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 9);
  v7 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v7, v6);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 9) = v6;
  v46 = a1;
  v8 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  LOBYTE(v5) = *(v9 + 9);
  v11 = *(v9 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v9, v11, v5);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 9) = v5;
  v12 = (v8 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v9 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  v18 = *(v13 + 32);
  v19 = *(v13 + 40);
  v20 = *(v13 + 48);
  v21 = *(v13 + 56);
  v43 = *(v13 + 64);
  v44 = *(v13 + 65);
  v22.n128_f64[0] = outlined copy of Environment<ListPadding>.Content(*v13, v15, v16, v17, v18, v19, v20, v21, v43, v44);
  *v12 = v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = v16;
  *(v12 + 24) = v17;
  *(v12 + 32) = v18;
  *(v12 + 40) = v19;
  *(v12 + 48) = v20;
  *(v12 + 56) = v21;
  *(v12 + 64) = v43;
  *(v12 + 65) = v44;
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = (v25 | 7) + 66;
  v27 = ((v26 + v12) & ~(v25 | 7));
  v28 = ((v26 + v13) & ~(v25 | 7));
  v29 = ~v25;
  v30 = (v25 + 16) & ~v25;
  v31 = *(v24 + 64);
  v32 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v24 + 84) & 0x80000000) == 0)
  {
    v33 = *v32;
    if (*v32 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    v34 = v30 + v31;
    if (v33 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v27 = *v28;
    v35 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v32;
    v36 = v35 + v25 + 8;
    v37 = *(v24 + 16);

    v37(v36 & v29, (v32 + v25 + 8) & v29, v23);
    goto LABEL_8;
  }

  v34 = v30 + v31;
  if (!(*(v24 + 48))((v32 + v25 + 8) & v29, v22))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v27, v28, v34);
LABEL_8:
  v38 = (v28 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v27 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v38;
  v41 = *(v38 + 16);
  *(v39 + 32) = *(v38 + 32);
  *v39 = v40;
  *(v39 + 16) = v41;
  return v46;
}

uint64_t closure #1 in closure #2 in InsettableGroupedListBody.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for InsettableGroupedListBody(0, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t destroy for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*v4, *(v4 + 8), *(v4 + 9));
  v5 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6.n128_f64[0] = outlined consume of Environment<ListPadding>.Content(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 65));
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + (v9 | 7) + 66) & ~(v9 | 7);
  v11 = ~v9;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = v8;
  if ((*(v8 + 84) & 0x80000000) != 0)
  {
    result = (*(v8 + 48))((v12 + v9 + 8) & v11, v6);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v13 = *v12;
  if (*v12 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  result = (v13 + 1);
  if (v13 == -1)
  {
LABEL_7:

    v15 = *(v16 + 8);

    return v15((v12 + v9 + 8) & v11, v7);
  }

  return result;
}

uint64_t closure #1 in ScrollViewAdjustedBehavior.value.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ScrollEnvironmentStorage(0);
  v3 = *AGGraphGetValue();
  swift_getKeyPath();
  v12 = v3;
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v3 + 16, &v12);
  swift_getKeyPath();
  *&v10 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v10, type metadata accessor for ScrollEnvironmentTransform?);
  if (v11)
  {
    outlined init with take of ScrollEnvironmentTransform(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(&v12, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  outlined init with copy of ScrollPosition?(&v13, a2, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  return outlined destroy of ScrollEnvironmentProperties(&v12);
}

uint64_t assignWithCopy for OnModifierKeysChangedModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t InsettableGroupedListBody.CollectionViewBody.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v16[0] = *(a1 + 16);
  v16[1] = v6;
  v7 = type metadata accessor for CollectionViewListRoot(0, v16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  InsettableGroupedListBody.CollectionViewBody.style.getter(a1, v5);
  InsettableGroupedListBody.CollectionViewBody.collectionViewListRoot(style:)(v5, a1, v10);
  (*(v3 + 8))(v5, v2);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v13, v7);
}

uint64_t InsettableGroupedListBody.CollectionViewBody.style.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 64);
  if (*(v4 + 33) == 1 && ((v5 = *(v4 + 32), v6 = *(v4 + 16) | *(v4 + 24) | *v4 | *(v4 + 8), !v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v20 = *MEMORY[0x1E69DC250];
    v21 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v22 = *(*(v21 - 8) + 104);

    return v22(a2, v20, v21);
  }

  else
  {
    v8 = *(v2 + 80);
    v32[0] = *(v2 + 64);
    v32[1] = v8;
    v33 = *(v2 + 96);
    v9 = *(v2 + 48);
    v30 = *(v2 + 32);
    v31 = v9;
    specialized Environment.wrappedValue.getter(v23);
    *&v29[9] = *&v26[9];
    v28 = v25;
    *v29 = *v26;
    v27 = v24;
    v30 = v24;
    v31 = v25;
    v32[0] = *v26;
    *(v32 + 9) = *&v29[9];
    v10 = OptionalEdgeInsets.leading.getter();
    if (v11 & 1) != 0 || (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v30 = v27, v31 = v28, v32[0] = *v29, *(v32 + 9) = *&v29[9], v12 = OptionalEdgeInsets.trailing.getter(), (v13) || (v12 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v14 = *(v2 + 80), v32[0] = *(v2 + 64), v32[1] = v14, v33 = *(v2 + 96), v15 = *(v2 + 48), v30 = *(v2 + 32), v31 = v15, specialized Environment.wrappedValue.getter(v23), v23[0]))
    {
      v16 = MEMORY[0x1E69DC238];
    }

    else
    {
      v16 = MEMORY[0x1E69DC250];
    }

    v17 = *v16;
    v18 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    return (*(*(v18 - 8) + 104))(a2, v17, v18);
  }
}

void InsettableGroupedListBody.CollectionViewBody.collectionViewListRoot(style:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v27 = *(a2 + 24);
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3 + *(a2 + 68), v13, v15);
  (*(v10 + 16))(v12, v25, v9);
  v19 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8));
  v20 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v21)
  {
    v22 = 28.0;
  }

  else
  {
    v22 = v20;
  }

  (*(v6 + 16))(v8, v3 + *(a2 + 60), v5);
  v23 = *(v3 + 80);
  *&v28[13] = *(v3 + 64);
  *&v28[15] = v23;
  v29 = *(v3 + 96);
  v24 = *(v3 + 48);
  *&v28[9] = *(v3 + 32);
  *&v28[11] = v24;
  specialized Environment.wrappedValue.getter(v28);
  CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)(v17, v12, v8, v28, v13, v27, *(a2 + 32), *(a2 + 40), v26, v19, v22);
}

uint64_t assignWithCopy for HelpView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(v7 + 24) = *(v8 + 24);

  return a1;
}

uint64_t assignWithCopy for TooltipModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t specialized static ContentScrollViewBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8);
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v5)
  {
    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v6 = v8;
  if (Strong)
  {
    if (v8)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v9 = static NSObject.== infix(_:_:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

LABEL_10:

    goto LABEL_13;
  }

  if (v8)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
  if (*(a1 + 16) == *(a2 + 16))
  {
    type metadata accessor for CGPoint(0);
    if (static WeakAttribute.== infix(_:_:)() & 1) != 0 && (static WeakAttribute.== infix(_:_:)() & 1) != 0 && (static WeakAttribute.== infix(_:_:)())
    {
      v10 = *(a1 + 44) ^ *(a2 + 44) ^ 1;
      return v10 & 1;
    }
  }

LABEL_13:
  v10 = 0;
  return v10 & 1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIKitMenuButton<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for UIKitMenuButton<A, B>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

double static UIKitMenuButton._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v57 = a7;
  v85 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v81 = a2[2];
  v82 = v12;
  v83 = a2[4];
  v84 = *(a2 + 20);
  v13 = a2[1];
  v79 = *a2;
  v80 = v13;
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WeakBox<UIButton>?(0);
  lazy protocol witness table accessor for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedPopUpButtonProvider(&v73);
  v59 = v11;
  v66 = v11;
  *&v73 = a3;
  *(&v73 + 1) = a4;
  *&v74 = a5;
  *(&v74 + 1) = a6;
  v53 = type metadata accessor for UIKitMenuButton(255, &v73);
  v58 = type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v15 = *(*(a4 - 8) + 64);
  v55 = v14;
  if (v15)
  {
    closure #1 in static UIKitMenuButton._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v75 = v81;
  v76 = v82;
  v77 = v83;
  LODWORD(v78[0]) = v84;
  v73 = v79;
  v74 = v80;
  v17 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v73, 1, &v67);
  MEMORY[0x1EEE9AC00](v17);
  *&v73 = &type metadata for AllPlatformItemListFlags;
  *(&v73 + 1) = a4;
  *&v74 = &protocol witness table for AllPlatformItemListFlags;
  *(&v74 + 1) = a6;
  v18 = type metadata accessor for PlatformItemListGenerator(0, &v73);
  v50 = v18;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v18);
  outlined init with copy of _ViewInputs(&v79, &v73);
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v67, closure #1 in Attribute.init<A>(_:)partial apply, &v48, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  v52 = 0;
  v77 = v71;
  v78[0] = v72[0];
  *(v78 + 12) = *(v72 + 12);
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v76 = v70;
  (*(*(v18 - 8) + 8))(&v73, v18);
  v60 = v63;
  v21 = v59;
  LODWORD(v67) = v59;
  v22 = _GraphValue.value.getter();
  LODWORD(v63) = v21;
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #2 in static UIKitMenuButton._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  v23 = a4;
  v24 = a6;
  v25 = AGGraphCreateOffsetAttribute2();
  v26 = *MEMORY[0x1E698D3F8];
  v28 = type metadata accessor for UIKitButton(0, a3, a5, v27);
  v63 = __PAIR64__(v60, v22);
  v29 = v55;
  v64 = COERCE_DOUBLE(__PAIR64__(v55, v25));
  v65 = v26;
  v56 = a3;
  *&v67 = a3;
  *(&v67 + 1) = v23;
  v54 = v23;
  *&v68 = a5;
  *(&v68 + 1) = v24;
  v30 = type metadata accessor for UIKitMenuButton.Child(0, &v67);
  swift_getWitnessTable(protocol conformance descriptor for UIKitMenuButton<A, B>.Child, v30);
  _GraphValue.init<A>(_:)();
  v69 = v81;
  v70 = v82;
  v71 = v83;
  LODWORD(v72[0]) = v84;
  v67 = v79;
  v68 = v80;
  swift_getWitnessTable(protocol conformance descriptor for UIKitButton<A>, v28);
  static View.makeDebuggableView(view:inputs:)();
  lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton();
  PropertyList.subscript.getter();
  v31 = v24;
  if (v67 == 1)
  {
    *&v67 = v82;
    DWORD2(v67) = DWORD2(v82);
    MEMORY[0x1EEE9AC00](v82);
    LODWORD(v50) = v29;

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    v31 = v24;
  }

  v67 = v79;
  v68 = v80;
  v69 = v81;
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v32 = v59;
    LODWORD(v67) = v59;
    _GraphValue.value.getter();
    v33 = v56;
    v34 = v54;
    closure #3 in static UIKitMenuButton._makeView(view:inputs:)(1, v56, v54, a5, v31);
    v55 = AGGraphCreateOffsetAttribute2();
    LODWORD(v61) = v32;
    v35 = _GraphValue.value.getter();
    v36 = v35;
    MEMORY[0x1EEE9AC00](v35);
    v48 = v33;
    v49 = v34;
    v50 = a5;
    WitnessTable = v31;
    KeyPath = swift_getKeyPath();
    LODWORD(v67) = v36;
    *(&v67 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
    *&v68 = KeyPath;
    MEMORY[0x1EEE9AC00](KeyPath);
    type metadata accessor for (())?(255);
    v38 = type metadata accessor for Map();
    v50 = v38;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v38);
    type metadata accessor for WeakBox<UIButton>?(0, &lazy cache variable for type metadata for Attribute<(())?>, type metadata accessor for (())?, MEMORY[0x1E698D388]);
    v40 = v39;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v67, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_22, &v48, v38, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);

    v42 = v62;
    outlined init with copy of _GraphInputs(&v79, &v67);
    if (one-time initialization token for menuIndicatorVisibility != -1)
    {
      swift_once();
    }

    v61 = static CachedEnvironment.ID.menuIndicatorVisibility;
    swift_beginAccess();
    v43 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    outlined destroy of _GraphInputs(&v79);
    outlined init with copy of _GraphInputs(&v79, &v67);
    if (one-time initialization token for menuOrder != -1)
    {
      swift_once();
    }

    v61 = static CachedEnvironment.ID.menuOrder;
    swift_beginAccess();
    v44 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    v45 = outlined destroy of _GraphInputs(&v79);
    MEMORY[0x1EEE9AC00](v45);
    v48 = __PAIR64__(v55, v60);
    v49 = __PAIR64__(v43, v42);
    LODWORD(v50) = v44;
    *&v67 = v82;
    DWORD2(v67) = DWORD2(v82);
    MEMORY[0x1EEE9AC00](v82);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v46 = v57;
  *v57 = v63;
  result = v64;
  *(v46 + 1) = v64;
  return result;
}

__n128 sub_18BFBD158(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider()
{
  result = lazy protocol witness table cache variable for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider;
  if (!lazy protocol witness table cache variable for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedPopUpButtonProvider, &type metadata for BridgedPopUpButtonProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedPopUpButtonProvider and conformance BridgedPopUpButtonProvider);
  }

  return result;
}

uint64_t closure #2 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for UIKitMenuButton(0, v13);
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t type metadata completion function for UIKitButton(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UIKitButtonConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label;
  if (!lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonConfiguration.Label, &type metadata for UIKitButtonConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label;
  if (!lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonConfiguration.Label, &type metadata for UIKitButtonConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label);
  }

  return result;
}

uint64_t sub_18BFBD430(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v6[0] = &type metadata for UIKitButtonConfiguration.Label;
  v6[1] = v1;
  v6[2] = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
  v6[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();
  v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

unint64_t lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody()
{
  result = lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody;
  if (!lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedUIKitButtonBody, &unk_1EFF93510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody;
  if (!lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedUIKitButtonBody, &unk_1EFF93510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedUIKitButtonBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t type metadata completion function for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI11ButtonStyleRzlAA05UIKitcD8ModifierV12ResolvedBody33_64A26C7A8406856A733B1A7B593971F7LLVyx_GAA4ViewHPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a2(255, *a1, a1[1]);

  return swift_getWitnessTable(a3, v4);
}

uint64_t type metadata completion function for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BFBD8E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat(255, *a1, v5, a4);
  v8 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Nested(255, v4, v5, v7);
  v9 = type metadata accessor for StaticIf();
  type metadata accessor for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>(255);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<ActionPlatformItemListFlags>, &type metadata for ActionPlatformItemListFlags, &protocol witness table for ActionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v11 = type metadata accessor for ModifiedContent();
  v16[0] = lazy protocol witness table accessor for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton();
  v16[1] = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonStyleModifier<A>.ResolvedBody_Flat, v6);
  v16[2] = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonStyleModifier<A>.ResolvedBody_Nested, v8);
  v15[0] = swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, v16);
  v15[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v12 = MEMORY[0x1E697E858];
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v15);
  v14[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  return swift_getWitnessTable(v12, v11, v14);
}

unint64_t lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>);
  }

  return result;
}

void type metadata accessor for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
    v5[0] = &type metadata for ButtonStyleConfiguration.Label;
    v5[1] = v2;
    v5[2] = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
    v5[3] = lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>();
    v3 = type metadata accessor for StaticSourceWriter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton()
{
  result = lazy protocol witness table cache variable for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton;
  if (!lazy protocol witness table cache variable for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseFlattenedUIKitButton, &type metadata for UseFlattenedUIKitButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton);
  }

  return result;
}

uint64_t specialized static ViewInputPredicate.evaluate(listInputs:)(_OWORD *a1)
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)())
  {
    v1 = 0;
  }

  else
  {
    static Semantics.v7.getter();
    v2 = isLinkedOnOrAfter(_:)();
    if (one-time initialization token for userDefaultsValue != -1)
    {
      v4 = v2;
      swift_once();
      v2 = v4;
    }

    v1 = static UseFlattenedUIKitButtonFeature.userDefaultsValue;
    if (static UseFlattenedUIKitButtonFeature.userDefaultsValue == 2)
    {
      v1 = v2;
    }
  }

  return v1 & 1;
}

uint64_t one-time initialization function for userDefaultsValue()
{
  result = closure #1 in variable initialization expression of static UseFlattenedUIKitButtonFeature.userDefaultsValue();
  static UseFlattenedUIKitButtonFeature.userDefaultsValue = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static UseFlattenedUIKitButtonFeature.userDefaultsValue()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x18D00C850](0xD000000000000029, 0x800000018CD56D20);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v8, v9);
    _s7SwiftUI7BindingVySbGWOhTm_2(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x18D00C850](0xD000000000000029, 0x800000018CD56D20);
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    _s7SwiftUI7BindingVySbGWOhTm_2(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    return 2;
  }

  return v6;
}

uint64_t type metadata completion function for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for UIKitFlattenedButtonAdaptor(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for UIKitFlattenedButtonAdaptorStorage(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIKitFlattenedButtonAdaptorStorage;
  if (!type metadata singleton initialization cache for UIKitFlattenedButtonAdaptorStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for UIButton.Configuration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for UIKitFlattenedButtonAdaptorStorage(uint64_t a1)
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(319, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

id static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v43 = *a1;
  v7 = *(a2 + 48);
  v73 = *(a2 + 32);
  v74 = v7;
  v75 = *(a2 + 64);
  v76 = *(a2 + 80);
  v8 = *(a2 + 16);
  v71 = *a2;
  v72 = v8;
  v78 = v8;
  v79 = v73;
  v77 = v71;
  v9 = BYTE4(v73);
  v47 = *(a2 + 56);
  v46 = *(a2 + 48);
  v40 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v10 = _ViewInputs.animatedPosition()();
  v11 = v78;
  swift_beginAccess();
  v41 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v65 = v71;
  v66 = v72;
  outlined init with copy of _ViewInputs(&v71, v63);
  lazy protocol witness table accessor for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization();
  PropertyList.subscript.getter();
  if (LOBYTE(v63[0]) == 1)
  {
    _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA04TextfghM0V_Ttg5(2u);
  }

  v12 = *MEMORY[0x1E698D3F8];
  if ((v9 & 0x20) != 0)
  {
    HIDWORD(v69) = *MEMORY[0x1E698D3F8];
    *&v63[0] = __PAIR64__(v10, HIDWORD(v68));
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.transform.setter();
  }

  v42 = v10;
  _ViewInputs.containerPosition.setter();
  LODWORD(v63[0]) = v12;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WeakBox<UIView>(0);
  lazy protocol witness table accessor for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider();
  LODWORD(v63[0]) = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput();
  PropertyList.subscript.setter();
  LOBYTE(v63[0]) = 1;
  lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag();
  PropertyList.subscript.setter();
  type metadata accessor for UIKitFlattenedButtonAdaptor(255, a3, a4, v13);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(1, a3, a4, v14);
  }

  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v61[2] = v67;
  v61[3] = v68;
  v61[4] = v69;
  v62 = v70;
  v61[0] = v65;
  v61[1] = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v55 = v65;
  v56 = v66;
  outlined init with copy of _ViewInputs(v61, v63);
  static View.makeDebuggableView(view:inputs:)();
  v63[2] = v57;
  v63[3] = v58;
  v63[4] = v59;
  v64 = v60;
  v63[0] = v55;
  v63[1] = v56;
  outlined destroy of _ViewInputs(v63);
  LODWORD(v49) = v43;
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0) - 8) + 64))
  {
    closure #2 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(1, a3, a4, v15);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v39 = *(v11 + 16);
  lazy protocol witness table accessor for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput();
  PropertyList.subscript.getter();
  v44 = v55;
  outlined init with copy of _GraphInputs(&v77, &v55);
  lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(&v77);
  v17 = v55;
  v18 = _ViewOutputs.layoutComputer.getter();
  if ((v18 & 0x100000000) != 0)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  *&v55 = v45;
  DWORD2(v55) = DWORD2(v45);
  v20 = PreferencesOutputs.subscript.getter();
  if ((v20 & 0x100000000) != 0)
  {
    v21 = v12;
  }

  else
  {
    v21 = v20;
  }

  specialized static ViewGraph.eventGraphHost.getter();
  v23 = v22;
  *&v55 = __PAIR64__(v39, OffsetAttribute2);
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  *(&v55 + 1) = PropertyList.Tracker.init()();
  v56 = v44;
  LOBYTE(v57) = v17;
  *&v58 = v23;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(&v58 + 1) = __PAIR64__(v21, v19);
  v59 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for HostingUIButton();
  lazy protocol witness table accessor for type UpdateUIButton and conformance UpdateUIButton();
  v24 = Attribute.init<A>(body:value:flags:update:)();
  updated = outlined destroy of UpdateUIButton(&v55);
  MEMORY[0x1EEE9AC00](updated);
  MEMORY[0x1EEE9AC00](v26);
  AGGraphMutateAttribute();
  if (v40)
  {
    _DisplayList_Identity.init()();
    v27 = v55;
    v57 = v73;
    v58 = v74;
    v59 = v75;
    v60 = v76;
    v55 = v71;
    v56 = v72;
    LODWORD(v49) = v27;
    _ViewInputs.pushIdentity(_:)();
    *&v55 = v45;
    DWORD2(v55) = DWORD2(v45);
    v28 = PreferencesOutputs.subscript.getter();
    if ((v28 & 0x100000000) != 0)
    {
      v29 = v12;
    }

    else
    {
      v29 = v28;
    }

    v57 = v73;
    v58 = v74;
    v59 = v75;
    v60 = v76;
    v55 = v71;
    v56 = v72;
    v30 = _ViewInputs.containerPosition.getter();
    v49 = v77;
    v50 = v78;
    v51 = v79;
    v31 = _GraphInputs.layoutDirection.getter();
    *&v55 = __PAIR64__(v24, v27);
    *(&v55 + 1) = __PAIR64__(v41, v42);
    *&v56 = __PAIR64__(v29, v30);
    DWORD2(v56) = v31;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for ButtonDisplayList<HostingUIButton>, type metadata accessor for HostingUIButton, type metadata accessor for ButtonDisplayList);
    lazy protocol witness table accessor for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v55) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *&v55 = v46;
  DWORD2(v55) = v47;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v32 = HIDWORD(v74);
    v55 = v45;

    v33 = _ViewOutputs.viewResponders()();

    v57 = v67;
    v58 = v68;
    v59 = v69;
    v60 = v70;
    v55 = v65;
    v56 = v66;
    v52 = v68;
    v53 = v69;
    v54 = v70;
    v49 = v65;
    v50 = v66;
    v51 = v67;
    type metadata accessor for DefaultLayoutViewResponder();
    swift_allocObject();
    outlined init with copy of _ViewInputs(&v55, &v48);
    v34 = DefaultLayoutViewResponder.init(inputs:)();
    *&v49 = __PAIR64__(v42, v24);
    *(&v49 + 1) = __PAIR64__(v32, v41);
    LODWORD(v50) = v33;
    *(&v50 + 1) = v34;
    *&v51 = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type ButtonResponder and conformance ButtonResponder();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v49) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *&v55 = v46;
  DWORD2(v55) = v47;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  *&v55 = v46;
  DWORD2(v55) = v47;
  v35 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((v35 & 1) == 0)
  {
LABEL_26:
    LOBYTE(v55) = (v35 & 1) == 0;
    PreferencesOutputs.subscript.setter();
LABEL_27:
    v57 = v67;
    v58 = v68;
    v59 = v69;
    v60 = v70;
    v55 = v65;
    v56 = v66;
    result = outlined destroy of _ViewInputs(&v55);
    *a5 = v45;
    return result;
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    v37 = result;
    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c8PlatformdE0V_Tt5B5(v12, &v71, v45, SDWORD2(v45), 1, result, v24, &type metadata for ButtonAccessibilityModifier, &protocol witness table for ButtonAccessibilityModifier, 0);

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization()
{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasMenuTitleVisibilityCustomization, &type metadata for HasMenuTitleVisibilityCustomization, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasMenuTitleVisibilityCustomization, &type metadata for HasMenuTitleVisibilityCustomization, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasMenuTitleVisibilityCustomization, &type metadata for HasMenuTitleVisibilityCustomization, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasMenuTitleVisibilityCustomization, &type metadata for HasMenuTitleVisibilityCustomization, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization;
  if (!lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasMenuTitleVisibilityCustomization, &type metadata for HasMenuTitleVisibilityCustomization, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization);
  }

  return result;
}

uint64_t closure #1 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for UIKitFlattenedButtonAdaptor(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t static ResolvedButtonStyleBody._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = a2[3];
  v35 = a2[2];
  v36 = v8;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v9 = a2[1];
  v33 = *a2;
  v34 = v9;
  static DynamicPropertyCache.fields(of:)();
  v10 = v45;
  v11 = v46;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  LODWORD(v21) = v7;
  v39 = v45;
  LOBYTE(v40) = v46;
  DWORD1(v40) = DWORD1(v46);
  outlined init with copy of _ViewInputs(&v33, &v45);
  static ResolvedButtonStyleBody.makeStyleBody(view:inputs:fields:)(v20, &v45, &v21, &v27, &v39, a3, a4);
  v12 = *(&v45 + 1);
  v16 = v45;
  v13 = v46;
  swift_getAssociatedTypeWitness();
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v39 = v27;
  v40 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  outlined init with copy of _ViewInputs(&v39, &v45);
  swift_getAssociatedConformanceWitness();
  static View.makeDebuggableView(view:inputs:)();
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v45 = v21;
  v46 = v22;
  outlined destroy of _ViewInputs(&v45);
  if ((v13 & 1) == 0)
  {
    v20[0] = v16;
    v20[1] = v12;
    type metadata accessor for ResolvedButtonStyleBody(0, a3, a4, v14);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  outlined destroy of _ViewInputs(&v21);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v10, *(&v10 + 1), v11);
  *a5 = v18;
  a5[1] = v19;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIKitButtonConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<UIKitButtonConfiguration.Label>, lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label, &type metadata for UIKitButtonConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t specialized ResolvedNavigationDestinations.updatePossibilities<A>(for:over:)(unint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    if ((a2 + 1) < 2)
    {
LABEL_4:
      v6 = *(v3 + 16);
      v7 = a1;
      v8 = a2;

      ResolvedNavigationDestinations.ejectDestinations(at:)(v8);

      ResolvedNavigationDestinations.setPossibilities(_:depth:)(v7, v8);

      v9 = *(v3 + 48);
      v10 = *(v3 + 16);
      v27 = *(v3 + 32);
      v28 = v9;
      v11 = *(v3 + 48);
      v29 = *(v3 + 64);
      v12 = *(v3 + 16);
      v26[0] = *v3;
      v26[1] = v12;
      v22 = v27;
      v23 = v11;
      v24 = *(v3 + 64);
      v30 = *(v3 + 80);
      v25 = *(v3 + 80);
      v20 = v26[0];
      v21 = v10;
      outlined init with copy of ResolvedNavigationDestinations(v26, v31);
      v14 = ResolvedNavigationDestinations.domainDiffers(from:)(v6, v13);

      v31[2] = v22;
      v31[3] = v23;
      v31[4] = v24;
      v32 = v25;
      v31[0] = v20;
      v31[1] = v21;
      outlined destroy of ResolvedNavigationDestinations(v31);
      v4 = v14 & 1;
      v5 = 0x100000000;
      return v5 | v4;
    }

    if (a1 >> 62)
    {
      v16 = a1;
      v17 = a2;
      v18 = __CocoaSet.count.getter();
      a2 = v17;
      v19 = v18;
      a1 = v16;
      if (!v19)
      {
        goto LABEL_4;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    MEMORY[0x18D009810](0xD000000000000065, 0x800000018CD3DFA0);
    v4 = 0;
    v5 = 0;
    return v5 | v4;
  }

  v4 = 0;
  v5 = 0;
  return v5 | v4;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MenuStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Label>, lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label, &type metadata for MenuStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t ResolvedNavigationDestinations.domainDiffers(from:)(uint64_t a1, __n128 a2)
{
  v4 = 0;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E69E5FE0];
  v7 = MEMORY[0x1E69E5FE8];
  do
  {
    while (1)
    {
      if (*(a1 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v12 & 1) != 0))
      {
        v13 = *(*(a1 + 56) + 8 * v11);

        if (!*(v5 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = 0;
        if (!*(v5 + 16))
        {
          goto LABEL_14;
        }
      }

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      if (v15)
      {
        v16 = *(*(v5 + 56) + 8 * v14);

        if (!v13)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }

LABEL_14:
      v16 = 0;
      if (!v13)
      {
LABEL_12:
        if (!v16)
        {
          return 0;
        }

        v8 = *(v16 + 16);
        goto LABEL_3;
      }

LABEL_15:
      if (!v16)
      {
        v8 = *(v13 + 16);
LABEL_3:

        if (v8)
        {
          return 1;
        }

        goto LABEL_4;
      }

      v17 = *(v13 + 16);
      v18 = *(v16 + 16);
      if (v17)
      {
        break;
      }

      if (v18)
      {
        return 1;
      }

      v10 = __OFADD__(v4++, 1);
      if (v10)
      {
        __break(1u);
        return 0;
      }
    }

    if (v17 != v18)
    {

      return 1;
    }

    v19 = 0;
    v25 = MEMORY[0x18D00D140](*(v13 + 16), v6, v7);
    do
    {
      v20 = *(v13 + 8 * v19++ + 32);
      specialized Set._Variant.insert(_:)(&v24, v20);
    }

    while (v17 != v19);

    v21 = v25;
    v25 = MEMORY[0x18D00D140](v17, v6, v7);
    v22 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v24, *(v16 + v22));
      v22 += 8;
      --v17;
    }

    while (v17);

    v23 = _sSh2eeoiySbShyxG_ABtFZSO_Tt1g5(v21, v25);

    if ((v23 & 1) == 0)
    {
      return 1;
    }

LABEL_4:
    v10 = __OFADD__(v4++, 1);
  }

  while (!v10);
  __break(1u);
  return result;
}

double destroy for ResolvedNavigationDestinations(void *a1)
{

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.equals(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*(v4 + 200) + 8);
  v6 = *(v4 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = v81 - v10;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = v81 - v15;
  v101 = v6;
  v100 = swift_getAssociatedTypeWitness();
  v16 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v89 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v81 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v96 = v81 - v22;
  v88 = v4;
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v104 = v5;

    v26 = AnyNavigationPath.HomogeneousBoxBase.count.getter(v25);
    if (v26 == AnyNavigationPath.HomogeneousBoxBase.count.getter(v26))
    {
      v81[0] = a1;
      v27 = *(*v2 + 232);
      swift_beginAccess();
      v97 = v7;
      v28 = *(v11 + 16);
      v94 = v27;
      v29 = v2 + v27;
      v30 = v102;
      v91 = v16;
      v31 = v101;
      v28(v102, v29, v101);
      v99 = v20;
      dispatch thunk of Collection.startIndex.getter();
      v93 = v2;
      v32 = *(v11 + 8);
      v32(v30, v31);
      v33 = *(*v24 + 232);
      swift_beginAccess();
      v98 = v33;
      v34 = v24;
      v35 = (v24 + v33);
      v36 = v11 + 8;
      v37 = v90;
      v106 = v11 + 16;
      v103 = v28;
      v28(v90, v35, v31);
      dispatch thunk of Collection.startIndex.getter();
      v105 = v32;
      v32(v37, v31);
      v38 = (v91 + 8);
      v84 = (v97 + 16);
      v83 = (v97 + 8);
      v82 = (v91 + 32);
      v39 = v89;
      v85 = (v91 + 8);
      v92 = v34;
      v81[1] = v36;
      while (1)
      {
        v40 = v93;
        v41 = v94;
        v42 = v101;
        v43 = v102;
        v103(v102, v93 + v94, v101);
        dispatch thunk of Collection.endIndex.getter();
        v105(v43, v42);
        v44 = v100;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v43) = dispatch thunk of static Comparable.< infix(_:_:)();
        v45 = *v38;
        (*v38)(v39, v44);
        if ((v43 & 1) == 0)
        {
          break;
        }

        v47 = v101;
        v46 = v102;
        v103(v102, (v34 + v98), v101);
        dispatch thunk of Collection.endIndex.getter();
        v105(v46, v47);
        v48 = v100;
        LOBYTE(v47) = dispatch thunk of static Comparable.< infix(_:_:)();
        v45(v39, v48);
        if ((v47 & 1) == 0)
        {
          break;
        }

        v97 = v45;
        v49 = v40 + v41;
        v50 = v101;
        v51 = v102;
        v52 = v103;
        v103(v102, v49, v101);
        v53 = dispatch thunk of Collection.subscript.read();
        v91 = *v84;
        v54 = AssociatedTypeWitness;
        v91(v95);
        v53(v107, 0);
        v55 = v105;
        v105(v51, v50);
        v56 = v90;
        v52(v90, v34 + v98, v50);
        v57 = dispatch thunk of Collection.subscript.read();
        v58 = v86;
        v91(v86);
        v57(v107, 0);
        v55(v56, v50);
        v59 = v95;
        LOBYTE(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
        v60 = *v83;
        (*v83)(v58, v54);
        v60(v59, v54);
        if ((v56 & 1) == 0)
        {

          v78 = v100;
          v79 = v97;
          (v97)(v99, v100);
          v79(v96, v78);
          goto LABEL_13;
        }

        v61 = v103;
        v103(v51, v93 + v94, v50);
        v39 = v89;
        v62 = v96;
        dispatch thunk of Collection.index(after:)();
        v105(v51, v50);
        v63 = v100;
        v64 = v85;
        (v97)(v62, v100);
        v91 = *v82;
        (v91)(v62, v39, v63);
        v61(v51, v92 + v98, v50);
        v65 = v99;
        dispatch thunk of Collection.index(after:)();
        v105(v51, v50);
        (v97)(v65, v63);
        (v91)(v65, v39, v63);
        v38 = v64;
        v34 = v92;
      }

      v66 = v40 + v41;
      v68 = v101;
      v67 = v102;
      v103(v102, v66, v101);
      dispatch thunk of Collection.endIndex.getter();
      v105(v67, v68);
      v69 = v39;
      v70 = v96;
      v71 = v100;
      LOBYTE(v67) = dispatch thunk of static Equatable.== infix(_:_:)();
      v45(v69, v71);
      if (v67)
      {
        v73 = v101;
        v72 = v102;
        v103(v102, (v92 + v98), v101);
        dispatch thunk of Collection.endIndex.getter();
        v105(v72, v73);
        v74 = v99;
        v75 = v100;
        v76 = dispatch thunk of static Equatable.== infix(_:_:)();

        v45(v69, v75);
        v45(v74, v75);
        v45(v70, v75);
        return v76 & 1;
      }

      v77 = v100;
      v45(v99, v100);
      v45(v70, v77);
    }

    else
    {
    }
  }

LABEL_13:
  v76 = 0;
  return v76 & 1;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 232);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = dispatch thunk of Collection.count.getter();
  (*(v4 + 8))(v6, v3);
  return v8;
}

unsigned __int8 NavigationSplitSidebarStateMachine.dependenciesDidChange(visibilityEngine:splitController:isAnimated:)(__int128 *a1, UISplitViewController *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v54 = a1[2];
  v55 = v11;
  v56 = a1[4];
  v57 = *(a1 + 80);
  v12 = a1[1];
  v52 = *a1;
  v53 = v12;
  static Log.splitViewVisibility.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    outlined destroy of Logger?(v10);
  }

  else
  {
    v38 = v5;
    outlined init with copy of UISplitViewControllerVisibilityEngine(&v52, &v46);
    v5 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    outlined destroy of UISplitViewControllerVisibilityEngine(&v52);
    if (os_log_type_enabled(v5, v15))
    {
      v16 = swift_slowAlloc();
      v36 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v37 = v4;
      v19 = v18;
      v45 = v18;
      *v17 = 136315138;
      v41 = v54;
      v42 = v55;
      v43 = v56;
      v44 = v57;
      v39 = v52;
      v40 = v53;
      outlined init with copy of UISplitViewControllerVisibilityEngine(&v52, &v46);
      v20 = UISplitViewControllerVisibilityEngine.description.getter();
      v22 = v21;
      v48 = v41;
      v49 = v42;
      v50 = v43;
      v51 = v44;
      v46 = v39;
      v47 = v40;
      outlined destroy of UISplitViewControllerVisibilityEngine(&v46);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v45);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_18BD4A000, v5, v15, "updated from dependencies, %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v24 = v19;
      v4 = v37;
      MEMORY[0x18D0110E0](v24, -1, -1);
      v25 = v17;
      a2 = v36;
      MEMORY[0x18D0110E0](v25, -1, -1);
    }

    (*(v14 + 8))(v10, v13);
    LOBYTE(v5) = v38;
  }

  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  result = UISplitViewControllerVisibilityEngine.visibility.getter(&v39);
  v27 = *(v4 + 24);
  v28 = v39 & 0xFF00;
  v29 = (v27 & 0xFF00) == 0x200 && v28 == 512;
  if (v28 != 512 && (v27 & 0xFF00) != 0x200)
  {
    v29 = (v27 ^ v39) == 0;
  }

  if (!v54)
  {
    v31 = (v4 + 40);
    if (*(v4 + 40) == 2)
    {
      if (v29)
      {
        return result;
      }

      v33 = 1;
      goto LABEL_27;
    }

LABEL_20:
    if (v29)
    {
LABEL_23:
      v48 = v54;
      v49 = v55;
      v50 = v56;
      v51 = v57;
      v46 = v52;
      v47 = v53;
      result = UISplitViewControllerVisibilityEngine.updateSplitViewControllerInspectorIfNeeded(_:isAnimated:)(a2, v5 & 1).value;
      *v31 = result;
LABEL_24:
      if (v5)
      {
        return NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(a2);
      }

      return result;
    }

    [(UISplitViewController *)a2 isCollapsed];
    v34 = 0;
LABEL_22:
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v46 = v52;
    v47 = v53;
    result = UISplitViewControllerVisibilityEngine.updateSplitViewController(_:isAnimated:)(a2, v5 & 1).value.kind;
    *(v4 + 24) = v39;
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v46 = __PAIR128__(v54, *(&v53 + 1));
  LOBYTE(v47) = BYTE8(v54) & 1;
  type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  result = MEMORY[0x18D00ACC0](&v39);
  v31 = (v4 + 40);
  v30 = *(v4 + 40);
  if (v30 == 2)
  {
    goto LABEL_20;
  }

  v32 = v39 ^ v30;
  if (v29)
  {
    if ((v32 & 1) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  v33 = v32 ^ 1;
LABEL_27:
  result = [(UISplitViewController *)a2 isCollapsed];
  v34 = (result ^ 1) & v33;
  if (((result ^ 1) & 1) != 0 || (v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

void WithCurrentHostingControllerAction.callAsFunction(_:)(void (*a1)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

uint64_t sub_18BFC09C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[3];
  v6 = a1[4];
  type metadata accessor for MergePlatformItemsView(255, a1[2], a1[5], a4);
  v7 = type metadata accessor for ModifiedContent();
  v18[0] = v6;
  v18[1] = lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
  v8 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v18);
  v17[0] = v4;
  v17[1] = type metadata accessor for MergePlatformItemsView(255, v7, WitnessTable, v10);
  v17[2] = v5;
  v17[3] = &protocol witness table for MergePlatformItemsView<A>;
  type metadata accessor for PlatformItemListGeneratingViewModifier(255, v17);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier(255, v4, v5, v12);
  v13 = type metadata accessor for ModifiedContent();
  v16[0] = &protocol witness table for MergePlatformItemsView<A>;
  v16[1] = &protocol witness table for PlatformItemListGeneratingViewModifier<A, B>;
  v15[0] = swift_getWitnessTable(v8, v11, v16);
  v15[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  return swift_getWitnessTable(v8, v13, v15);
}

unint64_t lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier()
{
  result = lazy protocol witness table cache variable for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier;
  if (!lazy protocol witness table cache variable for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListContentModifier, &type metadata for PlatformItemListContentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PlatformItemListGeneratingViewModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGeneratingViewModifier<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void closure #1 in UpdateCoalescingCollectionView.bridgedState.didset(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UpdateCoalescingCollectionView.updateContent()();
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MergePlatformItemsView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for MergePlatformItemsView<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t UpdateCoalescingCollectionView.updateContent()()
{
  v1 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24[-v3];
  v5 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState, v1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  v12 = type metadata accessor for BridgedListState(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = v0;
  static Update.ensure<A>(_:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = &lazy cache variable for type metadata for BridgedListState?;
    v17 = type metadata accessor for BridgedListState;
    v18 = v11;
LABEL_7:
    result = _s10Foundation9IndexPathVSgWOhTm_2(v18, v16, v17);
LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v11, v15, type metadata accessor for BridgedListState);
  v19 = *&v15[*(v12 + 28)];
  if (*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed] == v19 && v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget] != 1)
  {
LABEL_17:
    result = outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v15, type metadata accessor for BridgedListState);
    goto LABEL_18;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed] = v19;
  outlined init with copy of BridgedListState.ScrollTarget?(&v15[*(v12 + 20)], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v15, type metadata accessor for BridgedListState);
    v16 = &lazy cache variable for type metadata for BridgedListState.ScrollTarget?;
    v17 = type metadata accessor for BridgedListState.ScrollTarget;
    v18 = v4;
    goto LABEL_7;
  }

  outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v4, v8, type metadata accessor for BridgedListState.ScrollTarget);
  [v0 bounds];
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 0.0;
  v27.size.height = 0.0;
  if (!CGRectEqualToRect(v26, v27))
  {
    v22.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    if (v8[*(v5 + 20) + 16])
    {
      v23 = 0;
    }

    else
    {
      static UnitPoint.bottom.getter();
      if (static UnitPoint.== infix(_:_:)() & 1) != 0 || (static UnitPoint.bottomLeading.getter(), (static UnitPoint.== infix(_:_:)()) || (static UnitPoint.bottomTrailing.getter(), (static UnitPoint.== infix(_:_:)()))
      {
        v23 = 4;
      }

      else
      {
        static UnitPoint.top.getter();
        if (static UnitPoint.== infix(_:_:)() & 1) != 0 || (static UnitPoint.topLeading.getter(), (static UnitPoint.== infix(_:_:)()))
        {
          v23 = 1;
        }

        else
        {
          static UnitPoint.topTrailing.getter();
          if (static UnitPoint.== infix(_:_:)())
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }
        }
      }
    }

    [v0 scrollToItemAtIndexPath:v22.super.isa atScrollPosition:v23 animated:v8[*(v5 + 24)]];

    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v8, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_17;
  }

  outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v8, type metadata accessor for BridgedListState.ScrollTarget);
  result = outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v15, type metadata accessor for BridgedListState);
  v21 = 1;
LABEL_19:
  v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget] = v21;
  return result;
}

uint64_t closure #1 in UpdateCoalescingCollectionView.updateContent()@<X0>(uint64_t a2@<X8>)
{
  AGGraphClearUpdate();
  v3 = type metadata accessor for BridgedListState(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(WeakValue, a2, type metadata accessor for BridgedListState);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  (*(*(v3 - 8) + 56))(a2, v5, 1, v3);
  return AGGraphSetUpdate();
}

uint64_t static PlatformItemListGeneratingViewModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a7;
  v13 = a2[3];
  v14 = a2[1];
  v72 = a2[2];
  v73 = v13;
  v15 = a2[3];
  v74 = a2[4];
  v16 = a2[1];
  v70 = *a2;
  v71 = v16;
  v66 = v72;
  v67 = v15;
  v68 = a2[4];
  v17 = *a1;
  v75 = *(a2 + 20);
  v69 = *(a2 + 20);
  v64 = v70;
  v65 = v14;
  outlined init with copy of _ViewInputs(&v70, v78);
  _GraphInputs.pushStableIndex(_:)(0);
  v76[2] = v66;
  v76[3] = v67;
  v76[4] = v68;
  v77 = v69;
  v76[0] = v64;
  v76[1] = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v58 = v64;
  v59 = v65;
  v18 = outlined init with copy of _ViewInputs(v76, v78);
  a3(v56, v18, &v58);
  v78[2] = v60;
  v78[3] = v61;
  v78[4] = v62;
  v79 = v63;
  v78[0] = v58;
  v78[1] = v59;
  outlined destroy of _ViewInputs(v78);
  v19 = *&v56[0];
  v20 = DWORD2(v56[0]);
  v37 = HIDWORD(v56[0]);
  v21 = v73;
  *&v58 = v73;
  DWORD2(v58) = DWORD2(v73);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput(), PropertyList.subscript.getter(), v36 = v19, v22 = v58, v23 = (*(a6 + 8))(a4, a6), v24 = (v23 & ~v22) == 0, v19 = v36, v24))
  {
    v33[1] = v33;
    v34 = a8;
    MEMORY[0x1EEE9AC00](v23);
    LODWORD(v56[0]) = v17;
    *&v58 = a4;
    *(&v58 + 1) = a5;
    *&v59 = a6;
    *(&v59 + 1) = v35;
    type metadata accessor for PlatformItemListGeneratingViewModifier(255, &v58);
    type metadata accessor for _GraphValue();
    _GraphValue.subscript.getter();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v58 = v70;
    v59 = v71;
    _ViewInputs.withoutGeometryDependencies.getter();
    _GraphInputs.pushStableIndex(_:)(1);
    PreferenceKeys.remove(_:)();
    _GraphValue.init(_:)();
    v56[2] = v52;
    v56[3] = v53;
    v56[4] = v54;
    v57 = v55;
    v56[0] = v50;
    v56[1] = v51;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v44 = v50;
    v45 = v51;
    outlined init with copy of _ViewInputs(v56, &v58);
    static View.makeDebuggableView(view:inputs:)();
    v60 = v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v58 = v44;
    v59 = v45;
    outlined destroy of _ViewInputs(&v58);
    *&v44 = v19;
    DWORD2(v44) = v20;

    PairwisePreferenceCombinerVisitor.init(outputs:)();
    v40 = v21;
    v41 = 0;
    v25 = *(v21 + 16);
    if (v25)
    {
      lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

      v26 = 1;
      do
      {
        v27 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
        v27(&v44, 0);
        v41 = v26;
        static PreferenceKey.visitKey<A>(_:)();
        ++v26;
      }

      while (v26 - v25 != 1);
    }

    else
    {
    }

    v38[2] = v52;
    v38[3] = v53;
    v38[4] = v54;
    v39 = v55;
    v38[0] = v50;
    v38[1] = v51;
    outlined destroy of _ViewInputs(v38);
    v46 = v66;
    v47 = v67;
    v48 = v68;
    v49 = v69;
    v44 = v64;
    v45 = v65;
    outlined destroy of _ViewInputs(&v44);

    v30 = v34;
    *(v34 + 12) = v37;
    v31 = v42;
    v32 = v43;

    *v30 = v31;
    *(v30 + 8) = v32;
  }

  else
  {
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v58 = v64;
    v59 = v65;
    result = outlined destroy of _ViewInputs(&v58);
    *a8 = v19;
    v29 = v37;
    *(a8 + 8) = v20;
    *(a8 + 12) = v29;
  }

  return result;
}

uint64_t outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BFC18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

double static MergePlatformItemsView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[1];
  v38 = *a2;
  v39 = v9;
  v40 = a2[2];
  v10 = *(a2 + 6);
  v11 = *(a2 + 14);
  v25 = *(a2 + 60);
  v26 = *(a2 + 76);
  v27 = a3;
  v28 = a4;
  v22 = v8;
  type metadata accessor for MergePlatformItemsView(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v31 = HIDWORD(v38);
  v32 = v39;
  v33 = v40;
  v34 = v10;
  v35 = v11;
  v36 = v25;
  v37 = v26;
  static View.makeDebuggableView(view:inputs:)();
  v29 = v10;
  v30 = v11;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v22 = v8;
    v12 = _GraphValue.value.getter();
    v29 = v23;
    v30 = LODWORD(v24);
    v13 = PreferencesOutputs.subscript.getter();
    v14 = *MEMORY[0x1E698D3F8];
    if ((v13 & 0x100000000) == 0)
    {
      v14 = v13;
    }

    v29 = __PAIR64__(v14, v12);
    MEMORY[0x1EEE9AC00](v13);
    v20 = type metadata accessor for MergePlatformItemsView.Transform(0, a3, a4, v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MergePlatformItemsView<A>.Transform, v20);
    _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v29, closure #1 in Attribute.init<A>(_:)partial apply, &v19, v20, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
    LOBYTE(v29) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a5 = v23;
  result = v24;
  a5[1] = v24;
  return result;
}

uint64_t sub_18BFC1C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 464);
  if (v1 == 2)
  {

    v3 = *(v0 + 40);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 56))
    {
    }

    if (*(v0 + 80))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 64))
    {
    }

    if (*(v0 + 120))
    {
    }

    v2 = *(v0 + 224);
    if (*(v0 + 256))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 168))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 144));
          }

          if (*(v0 + 192) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 168))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 144));
          }

          if (*(v0 + 192) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        }
      }
    }

    if (*(v0 + 376))
    {

      goto LABEL_34;
    }
  }

LABEL_35:

  v4 = *(v0 + 928);
  if (v4 == 2)
  {

    v6 = *(v0 + 504);
    if (v6)
    {
      if (v6 == 1)
      {
        goto LABEL_69;
      }
    }

    if (*(v0 + 520))
    {
    }

    if (*(v0 + 544))
    {

LABEL_68:
    }
  }

  else if (v4 == 1)
  {
    if (*(v0 + 528))
    {
    }

    if (*(v0 + 584))
    {
    }

    v5 = *(v0 + 688);
    if (*(v0 + 720))
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(v0 + 632))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 608));
          }

          if (*(v0 + 656) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 600));
        }
      }
    }

    else
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(v0 + 632))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 608));
          }

          if (*(v0 + 656) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 600));
        }
      }
    }

    if (*(v0 + 840))
    {

      goto LABEL_68;
    }
  }

LABEL_69:

  return swift_deallocObject();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IncludesStyledTextModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedLabelStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabelStyle and conformance ResolvedLabelStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

void type metadata accessor for LabelStyleModifier<DefaultLabelStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabelStyleModifier<DefaultLabelStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultLabelStyle and conformance DefaultLabelStyle();
    v4 = type metadata accessor for LabelStyleModifier(a1, &type metadata for DefaultLabelStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LabelStyleModifier<DefaultLabelStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultLabelStyle and conformance DefaultLabelStyle()
{
  result = lazy protocol witness table cache variable for type DefaultLabelStyle and conformance DefaultLabelStyle;
  if (!lazy protocol witness table cache variable for type DefaultLabelStyle and conformance DefaultLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultLabelStyle, &type metadata for DefaultLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultLabelStyle and conformance DefaultLabelStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LabelStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabelStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t assignWithCopy for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + a1) & ~v11;
  v13 = (v7 + v11 + a2) & ~v11;
  (*(v9 + 24))(v12, v13, v8);
  v14 = *(v10 + 40) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(a3 + 24);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  v22 = *(v20 + 80);
  v23 = v22 + 8;
  v24 = *(v20 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v17 + v22 + 8) & v24);
  v26 = ((v18 + v22 + 8) & v24);
  v27 = ((v22 + 16) & ~v22) + *(v20 + 64);
  v28 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v47 = ~v22;
  if ((v21 & 0x80000000) != 0)
  {
    v46 = ((v22 + 16) & ~v22) + *(*(v19 - 8) + 64);
    v32 = *(v20 + 48);
    v45 = (v17 + v22 + 8) & v24;
    v33 = (v18 + v22 + 8) & v24;
    v34 = ~v22;
    v44 = v32((v28 + v23) & ~v22, v21, v19);
    v29 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = (v29 + v23) & v34;
    v26 = v33;
    v25 = v45;
    v31 = v32(v35, v21, v19);
    v27 = v46;
    if (!v44)
    {
LABEL_5:
      if (!v31)
      {
        *v25 = *v26;

        *v28 = *v29;

        (*(v20 + 24))((v28 + v23) & v47, (v29 + v23) & v47, v19);
        goto LABEL_12;
      }

      (*(v20 + 8))((v28 + v23) & v47, v19);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 + 1;
    if (*v28 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v31)
  {
    *v25 = *v26;
    *v28 = *v29;
    v36 = *(v20 + 16);

    v36((v28 + v23) & v47, (v29 + v23) & v47, v19);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v25, v26, v27);
LABEL_12:
  v37 = (v25 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  v39 = *(v38 + 8);
  *(v37 + 16) = *(v38 + 16);
  *(v37 + 8) = v39;
  v40 = *(v38 + 24);
  *(v37 + 32) = *(v38 + 32);
  *(v37 + 24) = v40;
  v41 = *(v38 + 40);
  *(v37 + 48) = *(v38 + 48);
  *(v37 + 40) = v41;
  v42 = *(v38 + 56);
  *(v37 + 64) = *(v38 + 64);
  *(v37 + 56) = v42;
  return a1;
}

unint64_t assignWithCopy for SidebarListStyle.BodyContent(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 24))((*(v11 + 80) + 17 + v5) & ~*(v11 + 80), (*(v11 + 80) + 17 + v6) & ~*(v11 + 80));
  return a1;
}

unsigned __int16 *assignWithCopy for SelectionManagerBox(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7)
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + v10);
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_25:
  if (v11 == 2)
  {
LABEL_28:
    (*(v6 + 8))(a1, v5);
    goto LABEL_30;
  }

  if (v11 == 1)
  {
    if ((*(v6 + 48))(a1, 1, v5))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:
  v16 = *(a2 + v10);
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v10 <= 3)
    {
      v18 = v10;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *a2;
      }

      else if (v18 == 3)
      {
        v19 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v19 = *a2;
      }

LABEL_42:
      v20 = (v19 | (v17 << (8 * v10))) + 3;
      v16 = v19 + 3;
      if (v10 < 4)
      {
        v16 = v20;
      }

      goto LABEL_44;
    }

    if (v18)
    {
      v19 = *a2;
      goto LABEL_42;
    }
  }

LABEL_44:
  if (v16 == 2)
  {
    (*(v6 + 16))(a1, a2, v5);
    v21 = 2;
LABEL_52:
    *(a1 + v10) = v21;
    return a1;
  }

  if (v16 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v21 = 1;
    goto LABEL_52;
  }

  *a1 = *a2;
  *(a1 + v10) = 0;

  return a1;
}

uint64_t specialized UICollectionViewListCoordinatorBase.dataSource.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  v7 = type metadata accessor for ShadowListDataSource(0, *((v4 & v3) + 0x60), *(*((v4 & v3) + 0x70) + 8), v6);
  (*(*(v7 - 8) + 24))(&v1[v5], a1, v7);
  return swift_endAccess();
}

uint64_t assignWithCopy for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v6 = *(a2 + 48);
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
  v8 = v6;

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v9 = a3[9];
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = a1 + v11;
  v13 = (a2 + v11);
  v14 = *(a1 + v11 + 8);
  v15 = *(a2 + v11 + 8);
  if (v14 != 1)
  {
    if (v15 == 1)
    {
      outlined destroy of TableHeaderView(v12);
      *v12 = *v13;
      v20 = v13[2];
      v19 = v13[3];
      v21 = v13[1];
      *(v12 + 63) = *(v13 + 63);
      *(v12 + 32) = v20;
      *(v12 + 48) = v19;
      *(v12 + 16) = v21;
      goto LABEL_25;
    }

    if (v14)
    {
      if (v15)
      {
        *v12 = *v13;

        *(v12 + 8) = *(v13 + 1);

        *(v12 + 16) = *(v13 + 2);

        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v12);
        v25 = *(v13 + 2);
        *v12 = *v13;
        *(v12 + 16) = v25;
        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v15)
    {
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 1);
      *(v12 + 16) = *(v13 + 2);

      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = *v13;
      *(v12 + 16) = *(v13 + 2);
      *v12 = v26;
      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    outlined destroy of TableColumnCollection.Backing(v12 + 24);
    if (v13[4])
    {
      *(v12 + 24) = *(v13 + 3);
      *(v12 + 64) = 1;
    }

    else
    {
      v27 = *(v13 + 6);
      *(v12 + 48) = v27;
      *(v12 + 56) = *(v13 + 7);
      (**(v27 - 8))(v12 + 24, v13 + 24);
      *(v12 + 64) = 0;
    }

    goto LABEL_24;
  }

  if (!v15)
  {
    v22 = *v13;
    *(v12 + 16) = *(v13 + 2);
    *v12 = v22;
    v23 = *(v13 + 64);
    if ((v23 & 1) == 0)
    {
LABEL_14:
      v24 = *(v13 + 6);
      *(v12 + 48) = v24;
      *(v12 + 56) = *(v13 + 7);
      (**(v24 - 8))(v12 + 24, v13 + 24);
      *(v12 + 64) = v23;
      goto LABEL_24;
    }

LABEL_12:
    *(v12 + 24) = *(v13 + 3);

    *(v12 + 64) = v23;
LABEL_24:
    *(v12 + 65) = *(v13 + 65);
    *(v12 + 66) = *(v13 + 66);
    goto LABEL_25;
  }

  if (v15 != 1)
  {
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 1);
    *(v12 + 16) = *(v13 + 2);

    v23 = *(v13 + 64);
    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  *v12 = *v13;
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  *(v12 + 63) = *(v13 + 63);
  *(v12 + 32) = v17;
  *(v12 + 48) = v18;
  *(v12 + 16) = v16;
LABEL_25:
  v28 = a3[11];
  v29 = a1 + v28;
  v30 = a2 + v28;
  *(a1 + v28) = *(a2 + v28);

  *(v29 + 8) = *(v30 + 8);

  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t assignWithCopy for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithTake for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v8 = a3[9];
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = a3[10];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a1 + v10 + 8);
  if (v13 == 1)
  {
    goto LABEL_4;
  }

  v14 = *(v12 + 8);
  if (v14 != 1)
  {
    if (v13)
    {
      if (v14)
      {
        *v11 = *v12;

        *(v11 + 8) = *(v12 + 8);

        *(v11 + 16) = *(v12 + 16);

        if (a1 == a2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v11);
    }

    *v11 = *v12;
    *(v11 + 16) = *(v12 + 16);
    if (a1 == a2)
    {
LABEL_12:
      *(v11 + 65) = *(v12 + 65);
      *(v11 + 66) = *(v12 + 66);
      goto LABEL_13;
    }

LABEL_11:
    outlined destroy of TableColumnCollection.Backing(v11 + 24);
    *(v11 + 24) = *(v12 + 24);
    *(v11 + 40) = *(v12 + 40);
    *(v11 + 49) = *(v12 + 49);
    goto LABEL_12;
  }

  outlined destroy of TableHeaderView(v11);
LABEL_4:
  v15 = *(v12 + 48);
  *(v11 + 32) = *(v12 + 32);
  *(v11 + 48) = v15;
  *(v11 + 63) = *(v12 + 63);
  v16 = *(v12 + 16);
  *v11 = *v12;
  *(v11 + 16) = v16;
LABEL_13:
  v17 = a3[11];
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);

  *(v18 + 8) = *(v19 + 8);

  v20 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v20) = *(a2 + v20);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t assignWithTake for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t FocusState.Binding.wrappedValue.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t UICollectionViewListCoordinatorBase.isAnimated.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    swift_endAccess();
  }

  else
  {
    v2 = Transaction.animation.getter();
    swift_endAccess();
    if (v2)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t specialized SceneStorage.wrappedValue.setter(uint64_t result, uint64_t a2)
{
  if (*(v2 + *(a2 + 36)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleCo()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListS;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListS)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleW(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelSty( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, La,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<L,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifie,  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<FallbackLabelStyle>, lazy protocol witness table accessor for type FallbackLabelStyle and conformance FallbackLabelStyle, &type metadata for FallbackLabelStyle);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListS);
  }

  return result;
}

double specialized FocusStoreLocation.set(_:transaction:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + 5;
  v5 = *v1;
  v6 = *(*v1 + class metadata base offset for FocusStoreLocation);
  v7 = *(*(v5 + class metadata base offset for FocusStoreLocation) - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = swift_allocObject();
    v32 = v5;
    v17 = v16;
    swift_weakInit();
    v18 = *v2;
    v33 = v15;
    v19 = *(v18 + class metadata base offset for FocusStoreLocation + 32);
    v20 = *(v7 + 16);
    v20(v12, a1, v6);
    v20(v9, v2 + v19, v6);
    v21 = *(v7 + 80);
    v22 = (v21 + 40) & ~v21;
    v23 = (v8 + v21 + v22) & ~v21;
    v24 = swift_allocObject();
    *(v24 + 2) = v6;
    *(v24 + 3) = *(v32 + class metadata base offset for FocusStoreLocation + 8);
    *(v24 + 4) = v17;
    v25 = *(v7 + 32);
    v25(&v24[v22], v12, v6);
    v25(&v24[v23], v9, v6);

    default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
    GraphHost.asyncTransaction(_:id:_:)();

    type metadata accessor for ViewGraph();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v27 + 208);
        ObjectType = swift_getObjectType();
        v30 = *(v28 + 24);

        v30(ObjectType, v28, 0.0);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_18BFC3A98()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BFC3AD0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleW(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContex)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<L(255);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<FallbackLabelStyle>, lazy protocol witness table accessor for type FallbackLabelStyle and conformance FallbackLabelStyle, &type metadata for FallbackLabelStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContex);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_toolbarTransitionIdentifier(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<PlainListStyleContext>, &type metadata for PlainListStyleContext);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle()
{
  result = lazy protocol witness table cache variable for type ListLabelStyle and conformance ListLabelStyle;
  if (!lazy protocol witness table cache variable for type ListLabelStyle and conformance ListLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabelStyle, &type metadata for ListLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStyle and conformance ListLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<SidebarLabelStyle>, lazy protocol witness table accessor for type SidebarLabelStyle and conformance SidebarLabelStyle, &type metadata for SidebarLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarLabelStyle and conformance SidebarLabelStyle()
{
  result = lazy protocol witness table cache variable for type SidebarLabelStyle and conformance SidebarLabelStyle;
  if (!lazy protocol witness table cache variable for type SidebarLabelStyle and conformance SidebarLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarLabelStyle, &type metadata for SidebarLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarLabelStyle and conformance SidebarLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetListStyleContext>, &type metadata for InsetListStyleContext);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<InsetListLabelStyle>, lazy protocol witness table accessor for type InsetListLabelStyle and conformance InsetListLabelStyle, &type metadata for InsetListLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InsetListLabelStyle and conformance InsetListLabelStyle()
{
  result = lazy protocol witness table cache variable for type InsetListLabelStyle and conformance InsetListLabelStyle;
  if (!lazy protocol witness table cache variable for type InsetListLabelStyle and conformance InsetListLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InsetListLabelStyle, &type metadata for InsetListLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InsetListLabelStyle and conformance InsetListLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>, &type metadata for GroupedListStyleContext);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, &type metadata for InsetGroupedListStyleContext);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ToolbarItemLabelStyle>, lazy protocol witness table accessor for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle, &type metadata for ToolbarItemLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle;
  if (!lazy protocol witness table cache variable for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemLabelStyle, &type metadata for ToolbarItemLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MEMORY[0x1E6980428]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<AccessibilityLabelStyle>, lazy protocol witness table accessor for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle, &type metadata for AccessibilityLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabelStyle, &type metadata for AccessibilityLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListGridContext>, MEMORY[0x1E6980550]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListGridLabelStyle>, lazy protocol witness table accessor for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle, &type metadata for MultimodalListGridLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle;
  if (!lazy protocol witness table cache variable for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListGridLabelStyle, &type metadata for MultimodalListGridLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListStackContext>, MEMORY[0x1E69806E0]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListStackLabelStyle>, lazy protocol witness table accessor for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle, &type metadata for MultimodalListStackLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle;
  if (!lazy protocol witness table cache variable for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListStackLabelStyle, &type metadata for MultimodalListStackLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<WrappingLabelStyle>, lazy protocol witness table accessor for type WrappingLabelStyle and conformance WrappingLabelStyle, &type metadata for WrappingLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WrappingLabelStyle and conformance WrappingLabelStyle()
{
  result = lazy protocol witness table cache variable for type WrappingLabelStyle and conformance WrappingLabelStyle;
  if (!lazy protocol witness table cache variable for type WrappingLabelStyle and conformance WrappingLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WrappingLabelStyle, &type metadata for WrappingLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WrappingLabelStyle and conformance WrappingLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FallbackLabelStyle and conformance FallbackLabelStyle()
{
  result = lazy protocol witness table cache variable for type FallbackLabelStyle and conformance FallbackLabelStyle;
  if (!lazy protocol witness table cache variable for type FallbackLabelStyle and conformance FallbackLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FallbackLabelStyle, &type metadata for FallbackLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FallbackLabelStyle and conformance FallbackLabelStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelSty(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>()
{
  result = lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>;
  if (!lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>)
  {
    type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>();
    result = swift_getWitnessTable(protocol conformance descriptor for Label<A, B>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<PlainListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<PlainListStyleContext>, &type metadata for PlainListStyleContext);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<SidebarLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<SidebarLabelStyle>, lazy protocol witness table accessor for type SidebarLabelStyle and conformance SidebarLabelStyle, &type metadata for SidebarLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetListStyleContext>, &type metadata for InsetListStyleContext);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<InsetListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<InsetListLabelStyle>, lazy protocol witness table accessor for type InsetListLabelStyle and conformance InsetListLabelStyle, &type metadata for InsetListLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>, &type metadata for GroupedListStyleContext);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetGroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, &type metadata for InsetGroupedListStyleContext);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchFocusContext(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x18D00E7E0);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ToolbarItemLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ToolbarItemLabelStyle>, lazy protocol witness table accessor for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle, &type metadata for ToolbarItemLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SwipeActionsStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MEMORY[0x1E6980428]);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8]);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<AccessibilityLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<AccessibilityLabelStyle>, lazy protocol witness table accessor for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle, &type metadata for AccessibilityLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListGridContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListGridContext>, MEMORY[0x1E6980550]);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalListGridLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListGridLabelStyle>, lazy protocol witness table accessor for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle, &type metadata for MultimodalListGridLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListStackContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListStackContext>, MEMORY[0x1E69806E0]);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalListStackLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListStackLabelStyle>, lazy protocol witness table accessor for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle, &type metadata for MultimodalListStackLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<WrappingLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<WrappingLabelStyle>, lazy protocol witness table accessor for type WrappingLabelStyle and conformance WrappingLabelStyle, &type metadata for WrappingLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = (a4)(0, &type metadata for LabelStyleConfiguration.Title, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>(255);
    type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(255, &lazy cache variable for type metadata for AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>, &protocol witness table for LabelStyleConfiguration.Title, type metadata accessor for AccessibilityRepresentationModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>)
  {
    type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(255, &lazy cache variable for type metadata for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, type metadata accessor for LabeledContent);
    type metadata accessor for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

void type metadata accessor for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>)
  {
    v2 = lazy protocol witness table accessor for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle();
    v4 = type metadata accessor for _LabeledContentStyleModifier(a1, &type metadata for ToolbarLabeledContentStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarLabeledContentStyle, &type metadata for ToolbarLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(255, &lazy cache variable for type metadata for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, type metadata accessor for LabeledContent);
    v4[0] = &protocol witness table for LabelStyleConfiguration.Title;
    v4[1] = &protocol witness table for LabelStyleConfiguration.Icon;
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for FocusedValueList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI12ViewIdentityV3key_AA18ConfirmationDialogV5valuetWObTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with copy of BoundInputsView?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

id partial apply for closure #1 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setAllowsMultipleSelection_];

  return [v1 setAllowsMultipleSelectionDuringEditing_];
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

id closure #1 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1, char a2)
{
  [a1 setAllowsMultipleSelection_];

  return [a1 setAllowsMultipleSelectionDuringEditing_];
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for AccessibilityNode();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

void type metadata accessor for (Range<Int>, Range<Int>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Range<Int>, Range<Int>))
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Range<Int>, Range<Int>));
    }
  }
}

void destroy for ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 32));
  }

  if (*(a1 + 120) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 80));
  }

  v4 = a1 + *(a2 + 60);
  v5 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v4);

LABEL_46:
      v19 = *(v4 + *(v5 + 20));

      return;
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
        goto LABEL_26;
      }
    }

    if (*(v4 + 432))
    {
    }

    if (*(v4 + 448))
    {
    }

LABEL_26:

    if (*(v4 + 512))
    {
    }

    if (!*(v4 + 816))
    {
LABEL_36:
      v13 = *(v4 + 864);
      if (v13)
      {
        if (v13 == 1)
        {
LABEL_41:

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

          goto LABEL_46;
        }

        __swift_destroy_boxed_opaque_existential_1((v4 + 840));
      }

      if (*(v4 + 880))
      {
      }

      goto LABEL_41;
    }

    v12 = *(v4 + 624);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_33:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1((v4 + 600));
    }

    goto LABEL_33;
  }
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.layoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  v2 = v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  if (v2 == 2 || (v2 & 1) == 0 || ![v0 dataSource])
  {
    v13 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  v3 = *(v1 + 1);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 1) = v5;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in UpdateCoalescingCollectionView.layoutSubviews();
  *(v8 + 24) = v7;
  v14[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_91;
  v9 = _Block_copy(v14);
  v10 = v0;

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(v1 + 1);
  v4 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (!v4)
  {
    *(v1 + 1) = v12;
    v13 = partial apply for closure #1 in UpdateCoalescingCollectionView.layoutSubviews();
LABEL_9:
    UpdateCoalescingCollectionView.updateContent()();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13, v7);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_18BFC6A0C()
{

  return swift_deallocObject();
}

uint64_t specialized UICollectionViewListCoordinatorBase.numberOfSections(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v8 = *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8);
  v9 = type metadata accessor for ShadowSectionCollection(0, v7, *(v8 + 8), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v14 = type metadata accessor for ShadowListDataSource(0, v7, v8, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v18 = *((v6 & v5) + 0x88);
  swift_beginAccess();
  (*(v15 + 16))(v17, &v4[v18], v14);
  ShadowListDataSource.sectionIDs.getter(v14, v19, v12);
  (*(v15 + 8))(v17, v14);
  v20 = specialized ViewLeafView.platformView.getter(v9);
  (*(v10 + 8))(v12, v9);
  return v20;
}

uint64_t @objc UICollectionViewListCoordinatorBase.numberOfSections(in:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v9 = specialized UICollectionViewListCoordinatorBase.numberOfSections(in:)(v5, v6, v7, v8);

  return v9;
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v9 = *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8);
  v10 = type metadata accessor for ShadowListDataSource(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v15 = type metadata accessor for ShadowRowCollection(0, v8, *(v9 + 8), v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = *((v7 & v6) + 0x88);
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v19], v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  ListDiffable.rowIDs(forSectionAtOffset:)(a1, v10, WitnessTable);
  (*(v11 + 8))(v13, v10);
  v21 = ShadowRowCollection.count.getter(v15);
  (*(v16 + 8))(v18, v15);
  return v21;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v11 = specialized UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(a4, v8, v9, v10);

  return v11;
}

uint64_t ListDiffable.rowIDs(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, a3);
  (*(a3 + 80))(v9, a2, a3);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t ListDiffable.sectionIndex(atOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(a3 + 56))(a2, a3, v7);
  swift_getAssociatedConformanceWitness();
  Collection.index(atOffset:)();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance ShadowSectionCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, a3);

  return BidirectionalCollection.index(_:offsetBy:)();
}

void UpdateCoalescingCollectionView.contentSize.didset(double a1, double a2)
{
  v3 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates;
  v4 = *&v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  *&v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v6;
  [v2 contentSize];
  if (v10 != a1 || v9 != a2)
  {
    UpdateCoalescingCollectionView.invalidateStackBehaviorLayoutIfNeeded()();
    specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }

  v12 = *&v2[v3];
  v5 = v12 != 0;
  v13 = v12 - 1;
  if (!v5)
  {
    goto LABEL_16;
  }

  *&v2[v3] = v13;
  if (!v13 && v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
  {

    specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }
}

void UICollectionViewListCoordinatorBase.updateListContents(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8);
  v128 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v127 = v7;
  v131 = type metadata accessor for ShadowListDataSource(0, v128, v7, a4);
  v114 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v132 = v113 - v8;
  v9 = type metadata accessor for IndexPath();
  v123 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v116 = v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v113 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v125 = v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v113 - v17;
  UICollectionViewListCoordinatorBase.clearDataSourceUpdates()();
  v19 = *((*v6 & *v4) + 0xD8);
  v133 = v4;
  *(v4 + v19) = 0;
  v20 = [a1 preparedCells];
  if (!v20)
  {
    goto LABEL_52;
  }

  v21 = v20;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v124 = a1;
  v130 = v9;
  v129 = v13;
  if (v23)
  {
    if (v23 < 1)
    {
      __break(1u);
      goto LABEL_50;
    }

    v24 = v22 & 0xC000000000000001;
    v119 = *((*MEMORY[0x1E69E7D40] & *v133) + 0x88);
    swift_beginAccess();
    v25 = 0;
    v122 = (v123 + 32);
    v118 = (v114 + 16);
    v117 = (v114 + 8);
    v121 = (v123 + 8);
    v120 = v22;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x18D00E9C0](v25, v22);
      }

      else
      {
        v26 = *(v22 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = [a1 indexPathForCell_];
      if (v28)
      {
        v29 = v125;
        v30 = v28;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*v122)(v18, v29, v9);
        swift_getAssociatedTypeWitness();
        v31 = swift_dynamicCastUnknownClass();
        if (v31)
        {
          v32 = v31;
          v33 = v133;
          v34 = v132;
          v35 = v131;
          v36 = (*v118)(v132, v119 + v133, v131);
          v126 = v113;
          v37 = MEMORY[0x1EEE9AC00](v36);
          v113[-2] = v33;
          v113[-1] = v32;
          WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v35, v37);
          ListCoreDataSource.visitContent<A>(atRow:visitor:)(v18, partial apply for closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:), &v113[-4], v35, MEMORY[0x1E69E7CA8] + 8, WitnessTable, &v134);
          v22 = v120;
          v39 = v34;
          v9 = v130;
          (*v117)(v39, v35);
          a1 = v124;
          UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(v124, v18);
        }

        (*v121)(v18, v9);
      }

      else
      {
      }

      ++v25;
    }

    while (v23 != v25);

    v13 = v129;
  }

  else
  {
  }

  v40 = &selRef_bundleIdentifier;
  v118 = *MEMORY[0x1E69DDC08];
  v41 = [a1 indexPathsForVisibleSupplementaryElementsOfKind_];
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v42;
  v44 = *(v42 + 16);
  if (v44)
  {
    v45 = *((*MEMORY[0x1E69E7D40] & *v133) + 0x88);
    v46 = *((*MEMORY[0x1E69E7D40] & *v133) + 0xA0);
    v47 = v123;
    v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v113[1] = v43;
    v49 = v43 + v48;
    v126 = v45;
    swift_beginAccess();
    v115 = v46;
    swift_beginAccess();
    v50 = *(v47 + 16);
    v47 += 16;
    v121 = v50;
    v120 = *(v47 + 56);
    v125 = (v114 + 16);
    v51 = (v114 + 8);
    v122 = v47;
    v119 = (v47 - 8);
    v50(v13, v49, v9);
    while (1)
    {
      v61 = *v125;
      v62 = v132;
      v63 = v131;
      (*v125)(v132, &v126[v133], v131);
      v64 = IndexPath.section.getter();
      swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v63);
      LOBYTE(v64) = ListDiffable.hasHeader(forSectionAtOffset:)(v64);
      v65 = *v51;
      (*v51)(v62, v63);
      if (v64)
      {
        v66 = v118;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v68 = [a1 supplementaryViewForElementKind:v66 atIndexPath:isa];

        v13 = v129;
        if (v68)
        {
          swift_getAssociatedTypeWitness();
          v69 = swift_dynamicCastUnknownClass();
          if (v69)
          {
            v52 = v69;
            v53 = v133;
            v54 = v132;
            v55 = v131;
            v61(v132, &v126[v133], v131);
            v56 = *(v53 + v115);
            outlined copy of Transaction?(v56);
            v57 = v129;
            v117 = IndexPath.section.getter();
            v58 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v55);
            v59 = v52;
            v13 = v57;
            ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(v59, v56, v117, v55, v58);
            outlined consume of ListItemTint?(v56);

            v60 = v55;
            a1 = v124;
            v65(v54, v60);
          }

          else
          {

            v13 = v129;
          }
        }
      }

      v9 = v130;
      (*v119)(v13, v130);
      v49 += v120;
      if (!--v44)
      {
        break;
      }

      v121(v13, v49, v9);
    }

    v40 = &selRef_bundleIdentifier;
  }

  else
  {
  }

  v70 = v40[407];
  v119 = *MEMORY[0x1E69DDC00];
  v71 = [a1 v70];
  v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = v72;
  v74 = *(v72 + 16);
  if (v74)
  {
    v75 = *((*MEMORY[0x1E69E7D40] & *v133) + 0x88);
    v76 = *((*MEMORY[0x1E69E7D40] & *v133) + 0xA0);
    v77 = v123;
    v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v117 = v73;
    v79 = v73 + v78;
    v129 = v75;
    swift_beginAccess();
    v118 = v76;
    swift_beginAccess();
    v80 = *(v77 + 16);
    v77 += 16;
    v122 = v80;
    v121 = *(v77 + 56);
    v126 = (v114 + 16);
    v125 = (v114 + 8);
    v123 = v77;
    v120 = v77 - 8;
    v81 = v116;
    (v80)(v116, v79, v9);
    while (1)
    {
      v90 = *v126;
      v91 = v132;
      v92 = v131;
      (*v126)(v132, &v129[v133], v131);
      v93 = IndexPath.section.getter();
      swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v92);
      LOBYTE(v93) = ListDiffable.hasFooter(forSectionAtOffset:)(v93);
      v94 = *v125;
      (*v125)(v91, v92);
      if (v93)
      {
        v95 = v119;
        v96 = IndexPath._bridgeToObjectiveC()().super.isa;
        v97 = [a1 supplementaryViewForElementKind:v95 atIndexPath:v96];

        v9 = v130;
        if (v97)
        {
          swift_getAssociatedTypeWitness();
          v98 = swift_dynamicCastUnknownClass();
          if (v98)
          {
            v82 = v98;
            v83 = v133;
            v84 = v132;
            v85 = v131;
            v90(v132, &v129[v133], v131);
            v86 = *(v118 + v83);
            outlined copy of Transaction?(v86);
            v81 = v116;
            v87 = IndexPath.section.getter();
            v88 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v85);
            ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(v82, v86, v87, v85, v88);
            outlined consume of ListItemTint?(v86);

            v89 = v85;
            a1 = v124;
            v94(v84, v89);
            v9 = v130;
          }

          else
          {

            v9 = v130;
            v81 = v116;
          }
        }
      }

      (*v120)(v81, v9);
      v79 = v121 + v79;
      if (!--v74)
      {
        break;
      }

      (v122)(v81, v79, v9);
    }
  }

  v99 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);

  v100 = [a1 visibleSupplementaryViewsOfKind_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x1E69DC7E8);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_48:

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_48;
  }

LABEL_40:
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v101 = *(v21 + 32);
      goto LABEL_43;
    }

    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

LABEL_50:
  v101 = MEMORY[0x18D00E9C0](0, v21);
LABEL_43:
  v102 = v101;

  type metadata accessor for TableGlobalHeader();
  v103 = swift_dynamicCastClass();
  if (v103)
  {
    v104 = v103;
    v105 = v133;
    v106 = MEMORY[0x1E69E7D40];
    v107 = *((*MEMORY[0x1E69E7D40] & *v133) + 0x88);
    swift_beginAccess();
    v108 = v114;
    v109 = v132;
    v110 = v131;
    (*(v114 + 16))(v132, &v105[v107], v131);
    v111 = *((*v106 & *v105) + 0xA0);
    swift_beginAccess();
    v112 = *&v105[v111];
    outlined copy of Transaction?(v112);
    ShadowListDataSource.configureGlobalHeader(_:transaction:)(v104, v112, v110);
    outlined consume of ListItemTint?(v112);

    (*(v108 + 8))(v109, v110);
  }

  else
  {
  }
}

uint64_t UICollectionViewListCoordinatorBase.clearDataSourceUpdates()()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  swift_beginAccess();
  type metadata accessor for ListCoreBatchUpdates(0, v5, *(*(*((v4 & v2) + 0x70) + 8) + 8), v10);
  ListCoreBatchUpdates.resetAll()();
  swift_endAccess();
  (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
  v11 = *((*v3 & *v1) + 0xD0);
  swift_beginAccess();
  (*(v7 + 40))(&v1[v11], v9, v6);
  return swift_endAccess();
}

Swift::Void __swiftcall ListCoreBatchUpdates.resetAll()()
{
  v2 = v1;
  v3 = v0;
  IndexSet.removeAll()();
  IndexSet.removeAll()();
  v4 = v3[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
  }

  else
  {
    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Sit_Tt1g5(0, *(v6 + 24) >> 1);

    *(v2 + v4) = v7;
  }

  v8 = v3[11];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v8);
  if (v9)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v10 + 16));
  }

  else
  {
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v10 + 24) >> 1);

    *(v2 + v8) = v11;
  }

  v12 = v3[12];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v12);
  if (v13)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
  }

  else
  {
    v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v14 + 24) >> 1);

    *(v2 + v12) = v15;
  }

  v16 = v3[13];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v2 + v16);
  if (v17)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v18 + 16));
  }

  else
  {
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV6source_AH11destinationt_Tt1g5(0, *(v18 + 24) >> 1);

    *(v2 + v16) = v19;
  }

  IndexSet.removeAll()();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Sit_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(Int, Int)>(0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16PlatformItemListV0K0V_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>)
  {
    v4[6] = v0;
    v4[7] = v1;
    v4[0] = &type metadata for ToolbarPlatformItemListFlags;
    v4[1] = &type metadata for LabeledContentStyleConfiguration.Label;
    v4[2] = &type metadata for LabeledContentStyleConfiguration.Content;
    v4[3] = &protocol witness table for ToolbarPlatformItemListFlags;
    v4[4] = &protocol witness table for LabeledContentStyleConfiguration.Label;
    v4[5] = &protocol witness table for LabeledContentStyleConfiguration.Content;
    v2 = type metadata accessor for PlatformItemLabelView(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>);
    }
  }
}

void NavigationListState.hasNonEmptySelection.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = *(v1 + 48) + 48 * v9;
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v15 = *(v10 + 16);
    v16 = *v10;
    outlined init with copy of AnyListSelection(*(v1 + 56) + 40 * v9, &v26);
    v24 = v15;
    v23 = v16;
    LOBYTE(v25) = v11;
    *(&v25 + 1) = v12;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v16;
    v18 = v15;
    v19 = v25;
    v35[0] = v16;
    v35[1] = v15;
    v35[2] = v25;
    v13 = *(&v27 + 1);
    v14 = v28;
    __swift_project_boxed_opaque_existential_1(&v20, *(&v27 + 1));
    if (((*(v14 + 16))(v13, v14) & 1) == 0 && (specialized Set.contains(_:)(v35, v2) & 1) == 0)
    {

      v31 = v19;
      v32 = v20;
      v33 = v21;
      v34 = v22;
      v29 = v17;
      v30 = v18;
LABEL_14:
      outlined destroy of (key: NavigationState.ListKey, value: AnyListSelection)(&v29, type metadata accessor for (key: NavigationState.ListKey, value: AnyListSelection)?);
      return;
    }

    v5 &= v5 - 1;
    outlined destroy of (key: NavigationState.ListKey, value: AnyListSelection)(&v17, type metadata accessor for (key: NavigationState.ListKey, value: AnyListSelection));
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      goto LABEL_14;
    }

    v5 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>()
{
  result = lazy protocol witness table cache variable for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>;
  if (!lazy protocol witness table cache variable for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>)
  {
    type metadata accessor for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>();
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemLabelView<A, B, C>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabeledContentStyleConfiguration.Content(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV0M0V_Tt2B5(v2, v6);
}

unint64_t NavigationPath.count.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if ((*(v0 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = v0 + 8;
  v0 = *(v0 + 8);
  v3 = *(v4 + 8);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = *(v0 + 16);
    v0 = i + v6;
    if (__OFADD__(i, v6))
    {
      __break(1u);
LABEL_19:
      v3 = __CocoaSet.count.getter();
      goto LABEL_11;
    }

    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      v3 = v0 + v12;
      if (__OFADD__(v0, v12))
      {
LABEL_8:
        __break(1u);
LABEL_9:
        if (!(v1 >> 62))
        {
          v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = v0 + v7;
      if (__OFADD__(v0, v7))
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    if (v2 >> 62)
    {
      break;
    }

    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v3, v8);
    result = v3 + v8;
    if (!v9)
    {
      return result;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = __CocoaSet.count.getter();
  v9 = __OFADD__(v3, v11);
  result = v3 + v11;
  if (v9)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV0M0V_Tt2B5(int a1, __int128 *a2)
{
  v5 = a2[3];
  v31 = a2[2];
  v32 = v5;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Content>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content, &type metadata for LabeledContentStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v27);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Content>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content, &type metadata for LabeledContentStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v25[0])
  {
    *&v27[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v7 = *(*&v25[0] + 48);
  v8 = *(*&v25[0] + 16);
  v9 = *(*&v25[0] + 24);
  v15 = *(*&v25[0] + 32);
  v10 = *(*&v25[0] + 40);
  v11 = *(*&v25[0] + 44);

  *&v25[0] = v7;
  *&v27[0] = v7;
  PropertyList.subscript.setter();
  if (!v8)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v22 = a1;
  v23[2] = v31;
  v23[3] = v32;
  v23[4] = v33;
  v24 = v34;
  v23[0] = v29;
  v23[1] = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v16 = v29;
  v17 = v30;
  v12 = *(v9 + 8);
  outlined init with copy of _ViewInputs(v23, v27);
  v13 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content();
  LOBYTE(v27[0]) = v11;
  v12(&v22, v8, v9, v15, v10 | (v11 << 32), &v16, &type metadata for LabeledContentStyleConfiguration.Content, v13, v8, v9);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
LABEL_6:
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v28 = v34;
  v27[0] = v29;
  v27[1] = v30;
  return outlined destroy of _ViewInputs(v27);
}

uint64_t static AccessibilityLabeledContentContentModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v48 = *(a2 + 32);
  v49 = v9;
  v11 = *(a2 + 48);
  v50 = *(a2 + 64);
  v12 = *(a2 + 16);
  v46 = *a2;
  v47 = v12;
  v33 = v48;
  v34 = v11;
  v35 = *(a2 + 64);
  v31 = v46;
  v13 = *a1;
  v51 = *(a2 + 80);
  LODWORD(v36) = *(a2 + 80);
  v32 = v10;
  a3(&v27);
  *&v31 = v49;
  DWORD2(v31) = DWORD2(v49);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type AccessibilityPresentation and conformance AccessibilityPresentation();
  result = PropertyList.subscript.getter();
  v16 = v31;
  v17 = *MEMORY[0x1E698D3F8];
  if (v31 == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_7;
  }

  v26 = v13;
  type metadata accessor for AccessibilityLabeledContentContentModifier(255, a4, a5, v15);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static AccessibilityLabeledContentContentModifier._makeView(modifier:inputs:body:)(1, a4, a5, v18);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v41 = v48;
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v39 = v46;
  v40 = v47;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v45[68] = v43;
    *&v45[52] = v42;
    *&v45[36] = v41;
    *&v45[20] = v40;
    *&v45[84] = v44;
    *&v45[4] = v39;
    *&v29[0] = __PAIR64__(v16, OffsetAttribute2);
    DWORD2(v29[0]) = v17;
    *(&v29[2] + 12) = *&v45[32];
    *(&v29[3] + 12) = *&v45[48];
    *(&v29[4] + 12) = *&v45[64];
    *(&v29[5] + 12) = *&v45[80];
    *(v29 + 12) = *v45;
    *(&v29[1] + 12) = *&v45[16];
    *(&v29[6] + 1) = result;
    v30 = 0;
    MEMORY[0x1EEE9AC00](result);
    v21 = type metadata accessor for AccessibilityLabeledContentContentModifier.Attachment(0, a4, a5, v20);
    v24[2] = v21;
    v24[3] = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabeledContentContentModifier<A>.Attachment, v21);
    outlined init with copy of _ViewInputs(&v46, &v31);
    type metadata accessor for AccessibilityLabelPresentation?(0, &lazy cache variable for type metadata for Attribute<AccessibilityAttachmentModifier>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_18, v24, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
    v35 = v29[4];
    v36 = v29[5];
    v37 = v29[6];
    v31 = v29[0];
    v32 = v29[1];
    v33 = v29[2];
    v38 = v30;
    v34 = v29[3];
    (*(*(v21 - 8) + 8))(&v31, v21);
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v25, &v46, v27, v28);
    result = PreferencesOutputs.subscript.setter();
LABEL_7:
    *a6 = v27;
    a6[1] = v28;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV4IconV_Tt2B5(int a1, __int128 *a2)
{
  v5 = a2[3];
  v31 = a2[2];
  v32 = v5;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Icon>, lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon, &type metadata for LabelStyleConfiguration.Icon);
  outlined init with copy of _ViewInputs(a2, v27);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Icon>, lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon, &type metadata for LabelStyleConfiguration.Icon);
  PropertyList.subscript.getter();
  if (!*&v25[0])
  {
    *&v27[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v7 = *(*&v25[0] + 48);
  v8 = *(*&v25[0] + 16);
  v9 = *(*&v25[0] + 24);
  v15 = *(*&v25[0] + 32);
  v10 = *(*&v25[0] + 40);
  v11 = *(*&v25[0] + 44);

  *&v25[0] = v7;
  *&v27[0] = v7;
  PropertyList.subscript.setter();
  if (!v8)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v22 = a1;
  v23[2] = v31;
  v23[3] = v32;
  v23[4] = v33;
  v24 = v34;
  v23[0] = v29;
  v23[1] = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v16 = v29;
  v17 = v30;
  v12 = *(v9 + 8);
  outlined init with copy of _ViewInputs(v23, v27);
  v13 = lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon();
  LOBYTE(v27[0]) = v11;
  v12(&v22, v8, v9, v15, v10 | (v11 << 32), &v16, &type metadata for LabelStyleConfiguration.Icon, v13, v8, v9);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
LABEL_6:
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v28 = v34;
  v27[0] = v29;
  v27[1] = v30;
  return outlined destroy of _ViewInputs(v27);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabelStyleConfiguration.Icon(int *a1, uint64_t a2)
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
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV4IconV_Tt2B5(v3, v7);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityHidesLabelIcon(uint64_t *a1)
{
  lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon();
  PropertyList.subscript.getter();
  if (v4)
  {
    v1 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
    PropertyList.subscript.getter();
    v1 = v3 ^ 1;
  }

  return v1 & 1;
}

uint64_t NavigationState.StackContent.pathSeed.getter@<X0>(_DWORD *a1@<X8>)
{
  result = outlined init with copy of NavigationState.Base(v1, __src);
  if (v15)
  {
    if (v15 == 1)
    {
      outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
      memcpy(__dst, __src, 0x163uLL);
      v4 = __dst[23];
      result = outlined destroy of NavigationColumnState(__dst);
      *a1 = v4;
    }

    else
    {
      v5 = __src[0];
      outlined consume of NavigationSplitViewState?(__src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 32;
        do
        {
          outlined init with copy of NavigationColumnState(v8, __dst);
          v9 = __dst[23];
          outlined destroy of NavigationColumnState(__dst);
          if (v7 != 0xFFFFFFFFLL && v9)
          {
            if (!v7 || v9 == 0xFFFFFFFFLL)
            {
              v7 = v9;
            }

            else
            {
              v10 = (v9 | (v7 << 32)) + ~(v9 << 32);
              v11 = (v10 ^ (v10 >> 22)) + ~((v10 ^ (v10 >> 22)) << 13);
              v12 = (9 * (v11 ^ (v11 >> 8))) ^ ((9 * (v11 ^ (v11 >> 8))) >> 15);
              v7 = ((v12 + ~(v12 << 27)) >> 31) ^ (v12 + ~(v12 << 27));
            }
          }

          v8 += 360;
          --v6;
        }

        while (v6);
      }

      else
      {

        LODWORD(v7) = 0;
      }

      *a1 = v7;
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void outlined consume of NavigationSplitViewState?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != 1)
  {
    outlined consume of Binding<NavigationSplitViewColumn>?(a2, a3);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a5, a6);

    outlined consume of Binding<NavigationSplitViewColumn>?(a7, a8);
  }
}

double @objc NavigationSplitCoordinator.splitViewController(_:willChangeTo:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, __int128 *))
{
  v7 = a3;

  NavigationSplitCoordinator.splitViewController(_:willChangeTo:)(v7, a4, a5);

  return result;
}

void NavigationSplitSidebarStateMachine.splitViewController(_:willChangeTo:visibilityEngine:)(void *a1, uint64_t a2, __int128 *a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3[2];
  v11 = a3[4];
  v45 = a3[3];
  v46 = v11;
  v47 = *(a3 + 80);
  v12 = a3[1];
  v42 = *a3;
  v43 = v12;
  v44 = v10;
  static Log.splitViewVisibility.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    outlined destroy of Logger?(v9);
  }

  else
  {
    v39 = v3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40[0] = v18;
      *v17 = 136315138;
      v19 = UISplitViewControllerDisplayMode.description.getter(a2);
      v38 = a1;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v40);
      a1 = v38;

      *(v17 + 4) = v21;
      _os_log_impl(&dword_18BD4A000, v15, v16, "willChangeTo %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x18D0110E0](v18, -1, -1);
      MEMORY[0x18D0110E0](v17, -1, -1);
    }

    (*(v14 + 8))(v9, v13);
    v3 = v39;
  }

  v41 = 17;
  v22 = swift_allocObject();
  v23 = v45;
  v24 = v46;
  *(v22 + 48) = v44;
  *(v22 + 64) = v23;
  *(v22 + 80) = v24;
  *(v22 + 96) = v47;
  v25 = v43;
  *(v22 + 16) = v42;
  *(v22 + 32) = v25;
  *(v22 + 104) = a1;
  *(v22 + 112) = a2;
  *(v22 + 120) = v3;
  outlined init with copy of UISplitViewControllerVisibilityEngine(&v42, v40);
  v26 = a1;

  static Update.enqueueAction(reason:_:)();

  if ([v26 style])
  {
    v27 = [v26 viewControllerForColumn_];
    if (v27)
    {
      v28 = v27;
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
        v35 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v30 = [v29 topViewController];

      if (v30)
      {
        type metadata accessor for UIHostingController<AnyView>(0, v31, v32, v33);
        v34 = swift_dynamicCastClass();
        if (v34)
        {
          v35 = *(v34 + direct field offset for UIHostingController.host);
        }

        else
        {
          v35 = 0;
        }

        v28 = v30;
        goto LABEL_16;
      }
    }
  }

  v35 = 0;
LABEL_17:
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
}

uint64_t sub_18BFC9D50()
{

  if (*(v0 + 48))
  {
  }

  v1 = *(v0 + 64);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_8;
    }
  }

  if (*(v0 + 80))
  {
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t initializeWithCopy for UISplitViewControllerVisibilityEngine(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 4);
  v5 = a2[4];

  if (v5)
  {
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v5;
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 40);
  }

  v6 = a2 + 6;
  v7 = a2[6];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = *(a2 + 4);
      *(a1 + 48) = *v6;
      *(a1 + 64) = v8;
      goto LABEL_12;
    }

    v9 = a2[7];
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;
  }

  else
  {
    *(a1 + 48) = *v6;
  }

  v10 = a2[8];
  if (v10)
  {
    v11 = a2[9];
    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
  }

  else
  {
    *(a1 + 64) = *(a2 + 4);
  }

LABEL_12:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t closure #1 in NavigationSplitSidebarStateMachine.splitViewController(_:willChangeTo:visibilityEngine:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a1;
  v28 = a2;
  v29 = a3;
  *&v37 = 0;
  LOBYTE(v30) = 1;
  Transaction.subscript.setter();
  withTransaction<A>(_:_:)();

  v11 = a1[3];
  v39 = a1[2];
  v40 = v11;
  v41 = a1[4];
  v42 = *(a1 + 80);
  v12 = a1[1];
  v37 = *a1;
  v38 = v12;
  UISplitViewControllerVisibilityEngine.visibility.getter(&v30);
  *(a4 + 24) = v30;
  static Log.splitViewVisibility.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    return outlined destroy of Logger?(v10);
  }

  outlined init with copy of UISplitViewControllerVisibilityEngine(a1, &v37);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined destroy of UISplitViewControllerVisibilityEngine(a1);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315138;
    v20 = a1[3];
    v32 = a1[2];
    v33 = v20;
    v34 = a1[4];
    v35 = *(a1 + 80);
    v21 = a1[1];
    v30 = *a1;
    v31 = v21;
    outlined init with copy of UISplitViewControllerVisibilityEngine(a1, &v37);
    v22 = UISplitViewControllerVisibilityEngine.description.getter();
    v24 = v23;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v37 = v30;
    v38 = v31;
    outlined destroy of UISplitViewControllerVisibilityEngine(&v37);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v36);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_18BD4A000, v16, v17, "wrote visibility back to bindings, %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x18D0110E0](v19, -1, -1);
    MEMORY[0x18D0110E0](v18, -1, -1);
  }

  return (*(v14 + 8))(v10, v13);
}

unsigned __int8 *closure #1 in closure #1 in NavigationSplitSidebarStateMachine.splitViewController(_:willChangeTo:visibilityEngine:)(unsigned __int8 *result, id a2, uint64_t a3)
{
  if (result[19] << 8 == 512)
  {
    result = [a2 isCollapsed];
    if (!result)
    {
      type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v6);
      v4 = 0;
      if ((a3 - 2) <= 4)
      {
        v4 = qword_18CDD51E8[a3 - 2];
      }

      AnyNavigationSplitVisibility.Kind.adoptingVisibleLeadingColumnCount(_:)(v4, &v5);
      LOWORD(v6) = v5;
      return dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);

  v5 = v4;
  return a1;
}

void type metadata accessor for UIHostingController<AnyView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for UIHostingController<AnyView>)
  {
    v4 = type metadata accessor for UIHostingController(0, MEMORY[0x1E6981910], MEMORY[0x1E6981900], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UIHostingController<AnyView>);
    }
  }
}

void NavigationSplitSidebarStateMachine.coordinatedHost.didset(void *a1)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    if (v11 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  static Log.splitViewVisibility.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Logger?(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = swift_unknownObjectWeakLoadStrong();
    v13 = v12;
    v37[1] = v1;
    if (v12)
    {
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37[0] = v13;
      v18 = v17;
      v38 = a1;
      v39 = v17;
      *v16 = 136315138;
      type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for ObjectIdentifier?, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6720]);
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_18BD4A000, v14, v15, "old coordinatedHost: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v22 = v18;
      v13 = v37[0];
      MEMORY[0x18D0110E0](v22, -1, -1);
      MEMORY[0x18D0110E0](v16, -1, -1);
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v13;
      v39 = v26;
      *v25 = 136315138;
      type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for ObjectIdentifier?, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6720]);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v39);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_18BD4A000, v23, v24, "new coordinatedHost: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x18D0110E0](v26, -1, -1);
      MEMORY[0x18D0110E0](v25, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  v30 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v31 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x80);
    v32 = *(a1 + v31);
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v33)
    {
      __break(1u);
      return;
    }

    *(a1 + v31) = v34 & ~(v34 >> 31);
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = *((*v30 & *v35) + 0x80);
    ++*(v35 + v36);
  }
}

void destroy for AccessibilityLabeledContentContentModifier.Attachment(void *a1)
{

  v2 = a1[13];
}

void UINavigationItem.updateTrailingItemsIfNeeded(_:isFromSwiftUI:)(void *a1, char a2, SEL *a3, SEL *a4, SEL *a5)
{
  v9 = v5;
  v11 = [a1 *a3];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a2)
  {
LABEL_52:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 *a5];

    return;
  }

  v12 = [v9 *a3];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = a4;
  v44 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v15 = MEMORY[0x1E69E7CC0];
    v40 = v9;
    v41 = a5;
    if (i)
    {
      v16 = 0;
      a5 = (v13 & 0xC000000000000001);
      v9 = (v13 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (a5)
        {
          v17 = MEMORY[0x18D00E9C0](v16, v13);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v21 = v44;
            v9 = v40;
            a5 = v41;
            goto LABEL_18;
          }
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v17 = *(v13 + 8 * v16 + 32);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_15;
          }
        }

        v19 = v17;
        v20 = UIBarButtonItemGroup.isNotFromSwiftUI.getter();

        if (v20)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v16;
        if (v18 == i)
        {
          goto LABEL_16;
        }
      }
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_18:

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v21);

    v22 = [v9 *v42];
    if (!v22)
    {
      goto LABEL_52;
    }

    v23 = v22;
    v42 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v15;
    v13 = v24 >> 62 ? __CocoaSet.count.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = MEMORY[0x1E69E7CC0];
    if (!v13)
    {
      break;
    }

    v26 = 0;
    a5 = (v24 & 0xC000000000000001);
    v9 = (v24 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (a5)
      {
        v27 = MEMORY[0x18D00E9C0](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      swift_getObjectType();
      if ([swift_getObjCClassFromMetadata() _isFromSwiftUI])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v26;
      if (v29 == v13)
      {
        v30 = v15;
        v9 = v40;
        a5 = v41;
        v25 = MEMORY[0x1E69E7CC0];
        goto LABEL_34;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_34:

  if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    v31 = __CocoaSet.count.getter();
    if (v31)
    {
      goto LABEL_37;
    }

LABEL_50:

    v39 = MEMORY[0x1E69E7CC0];
LABEL_51:
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v39);

    goto LABEL_52;
  }

  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_50;
  }

LABEL_37:
  v45 = v25;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x18D00E9C0](v32, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      ++v32;
      _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_18CD69590;
      *(v35 + 32) = v34;
      v36 = objc_allocWithZone(MEMORY[0x1E69DC720]);
      v37 = v34;
      v38 = Array._bridgeToObjectiveC()().super.isa;

      [v36 initWithBarButtonItems:v38 representativeItem:0];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v31 != v32);

    v39 = v45;
    v9 = v40;
    a5 = v41;
    goto LABEL_51;
  }

  __break(1u);
}