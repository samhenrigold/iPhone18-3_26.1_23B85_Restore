void *NavigationColumnState.applyPendingDeselections(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 48))
  {
    v5 = NavigationListState.applyPendingDeselections()();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[25];
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v7 = a1 + 13;
    v8 = a1 + 14;
    v9 = a1 + 15;
    v10 = a1 + 16;
    v6 = a1[17];
    v11 = a1 + 18;
  }

  else
  {
    v7 = a1 + 21;
    v8 = a1 + 22;
    v9 = a1 + 23;
    v10 = a1 + 24;
    v11 = a1 + 26;
  }

  v12 = *v11;
  v13 = *v10;
  v14 = *v9;
  v15 = *v8;
  v28 = *v7;
  v29 = v15;
  v30 = v14;
  v31 = v13;
  v32 = v6;
  v33 = v12;
  NavigationRequest.KeyKind.previous.getter(v26);
  if (v27 >> 1 == 0xFFFFFFFF)
  {
    memset(__src, 0, 136);
    *(&__src[8] + 1) = 0x1FFFFFFFCLL;
    memset(&__src[9], 0, 169);
  }

  else
  {
    v17 = 4;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = 22;
    NavigationRequest.TargetedRequest.targeted(to:action:)(v26, &v17, __src);
    outlined destroy of NavigationRequest.Action?(&v17, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  }

  *a2 = xmmword_18CD6A6D0;
  *(a2 + 16) = 2;
  result = memcpy((a2 + 24), __src, 0x139uLL);
  *(a2 + 340) = v5;
  *(a2 + 344) = 0;
  return result;
}

uint64_t NavigationColumnState.popAllForSelectionChange(popReplacedRoots:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v12 = v6 && (v7 = *(v2 + 56), v8 = *(v3 + 64), v9 = *(v3 + 72), v10 = *(v3 + 80), v11 = *(v3 + 88), LODWORD(v37) = *(v3 + 40), v38 = v6, v39 = v7, v40 = v8, v41 = v9, v42 = v10, v43 = v11, , , , , , LOBYTE(v7) = NavigationListState.isAnyEditing()(), , , , , , (v7 & 1) != 0) && *(v3 + 48) && NavigationListState.clearAllSelections()();
  if (!NavigationColumnState.isRootReplaced.getter())
  {
    outlined init with copy of NavigationColumnState(v3, &v37);
    outlined init with copy of NavigationColumnState.ColumnContent(v46, v33);
    outlined destroy of NavigationColumnState(&v37);
    if (v36)
    {
      outlined destroy of NavigationColumnState.ColumnContent(v33);
    }

    else
    {

      v13 = v35;
      outlined destroy of NavigationRequest.Action?(v33, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v14 = *(v13 + 16);

      if (v14)
      {
        goto LABEL_14;
      }
    }

    outlined init with copy of NavigationColumnState(v3, &v37);
    outlined init with copy of NavigationColumnState.ColumnContent(v46, v33);
    if (v36)
    {
      outlined destroy of NavigationColumnState(&v37);
      result = outlined destroy of NavigationColumnState.ColumnContent(v33);
LABEL_13:
      *a2 = xmmword_18CD6A6D0;
      *(a2 + 16) = 2;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      *(a2 + 120) = 0u;
      *(a2 + 136) = 0u;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0x1FFFFFFFCLL;
      *(a2 + 184) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 216) = 0u;
      *(a2 + 232) = 0u;
      *(a2 + 248) = 0u;
      *(a2 + 168) = 0u;
      *(a2 + 264) = 0u;
      *(a2 + 280) = 0u;
      *(a2 + 296) = 0u;
      *(a2 + 312) = 0u;
      *(a2 + 321) = 0u;
LABEL_33:
      *(a2 + 340) = v12;
      *(a2 + 344) = 0;
      return result;
    }

    v16 = v34;

    v17 = outlined destroy of NavigationRequest.Action?(v33, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v18 = (*(*v16 + 80))(v17);

    result = outlined destroy of NavigationColumnState(&v37);
    if (v18)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  outlined init with copy of NavigationColumnState(v3, &v37);
  outlined init with copy of NavigationColumnState.ColumnContent(v46, v33);
  outlined destroy of NavigationColumnState(&v37);
  if (v36)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v33);
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v19 = v35;
  outlined destroy of NavigationRequest.Action?(v33, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v20 = *(v19 + 16);

  if (!v20)
  {
    goto LABEL_20;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v3 + 120, &v37);
  if ((v46[0] & 1) == 0)
  {

    specialized Collection<>.dismiss(from:)(0, v44, v45);
  }

  outlined destroy of NavigationRequest.Action?(&v37, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v21 = 1;
LABEL_21:
  outlined init with copy of NavigationColumnState(v3, &v37);
  outlined init with copy of NavigationColumnState.ColumnContent(v46, v33);
  if (v36)
  {
    outlined destroy of NavigationColumnState(&v37);
    outlined destroy of NavigationColumnState.ColumnContent(v33);
    goto LABEL_24;
  }

  v22 = v34;

  v23 = outlined destroy of NavigationRequest.Action?(v33, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v24 = (*(*v22 + 80))(v23);

  result = outlined destroy of NavigationColumnState(&v37);
  if (v24)
  {
LABEL_24:
    v12 += v21;
    v25 = 2;
    v26 = 1;
    if ((a1 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v28 = *(v3 + 104);
  if (v28)
  {
    v29 = *(v3 + 112);
    v37 = *(v3 + 96);
    v30 = v37;
    v38 = v28;
    v39 = v29;
    type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
    v31 = MEMORY[0x18D00ACC0](v33);
    v26 = (*(*v33[0] + 88))(v31);

    LOBYTE(v37) = 17;
    v32 = swift_allocObject();
    v32[2] = v30;
    v32[3] = v28;
    v32[4] = v29;

    static Update.enqueueAction(reason:_:)();

    v12 = v21 + 1;
    v25 = 1;
    if ((a1 & 1) == 0)
    {
LABEL_26:
      NavigationColumnState.ColumnContent.clearAll(popReplacedRoots:)(a1 & 1);
      result = NavigationColumnState.ColumnContent.isShowingOriginalRoot.getter();
      if (*(v3 + 352))
      {
        if (result)
        {
          v27 = 0;
LABEL_31:
          *(v3 + 352) = v27;
        }
      }

      else if ((result & 1) == 0)
      {
        v27 = 2;
        goto LABEL_31;
      }

      *(a2 + 136) = 0u;
      *(a2 + 120) = 0u;
      *(a2 + 104) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0x1FFFFFFFCLL;
      *(a2 + 184) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 216) = 0u;
      *(a2 + 232) = 0u;
      *(a2 + 248) = 0u;
      *(a2 + 168) = 0u;
      *(a2 + 264) = 0u;
      *(a2 + 280) = 0u;
      *(a2 + 296) = 0u;
      *(a2 + 312) = 0u;
      *(a2 + 321) = 0u;
      *a2 = v26;
      *(a2 + 8) = 0;
      *(a2 + 16) = v25;
      goto LABEL_33;
    }

LABEL_25:
    NavigationColumnState.ColumnContent.dismissReplacedRootView()();
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void NavigationColumnState.presentValue(_:request:splitViewState:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 + 48);
  v109 = *(a3 + 32);
  v110 = v9;
  v111 = *(a3 + 64);
  v10 = *(a3 + 16);
  v107 = *a3;
  v108 = v10;
  if (v10 != 1)
  {
    v11 = v109;
    if (v109)
    {
      v12 = *(&v109 + 1);
      v14 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v14);
      v15 = *(v13 + 32);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v109, *(&v109 + 1));
      v112 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationRequest.Action?(&v107, &v72, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v15(&v104, v14, v13);
      v16 = *(v4 + 24);
      if (v16 >= 3)
      {
        LOBYTE(v16) = 3;
      }

      v72 = v104;
      *v73 = v105;
      *&v73[16] = v106[0];
      *&v73[25] = *(v106 + 9);
      v73[41] = v16;
      LOBYTE(v102[0]) = 17;
      outlined init with copy of NavigationUpdateEvent(&v72, &v104);
      v17 = swift_allocObject();
      *(v17 + 16) = v11;
      *(v17 + 24) = v12;
      v18 = v105;
      *(v17 + 32) = v104;
      *(v17 + 48) = v18;
      *(v17 + 64) = v106[0];
      *(v17 + 74) = *(v106 + 10);

      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationRequest.Action?(&v107, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v112);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11, v12);
      outlined destroy of NavigationUpdateEvent(&v72);
      v19 = 0uLL;
      *(a4 + 136) = 0u;
      *(a4 + 120) = 0u;
      *(a4 + 104) = 0u;
      *(a4 + 88) = 0u;
      *(a4 + 72) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 24) = 0u;
      v20 = 0x1FFFFFFFCLL;
      goto LABEL_17;
    }
  }

  outlined init with copy of NavigationRequest.TargetedRequest(a2, &v72);
  NavigationRequest.ListRequest.init(_:)(&v72, &v104);
  outlined init with copy of NavigationRequest.Action?(&v104, &v72, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
  if (*&v73[128] == 1)
  {
    outlined destroy of NavigationRequest.Action?(&v72, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
  }

  else
  {
    v102[8] = *&v73[112];
    v102[9] = *&v73[128];
    v102[10] = *v74;
    v103 = *&v74[16];
    v102[4] = *&v73[48];
    v102[5] = *&v73[64];
    v102[6] = *&v73[80];
    v102[7] = *&v73[96];
    v102[0] = v72;
    v102[1] = *v73;
    v102[2] = *&v73[16];
    v102[3] = *&v73[32];
    if (v74[8] == 6)
    {
      *&v73[16] = v109;
      *&v73[32] = v110;
      *&v73[48] = v111;
      v72 = v107;
      *v73 = v108;
      NavigationColumnState.updateListState(_:splitViewState:)(v102, &v72, a4);
      outlined destroy of NavigationRequest.ListRequest(v102);
LABEL_35:
      outlined destroy of NavigationRequest.Action?(&v104, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
      return;
    }

    outlined destroy of NavigationRequest.ListRequest(v102);
  }

  v21 = *(v4 + 248);
  v22 = *(v4 + 296);
  v23 = *(v4 + 264);
  v98 = *(v4 + 280);
  v99 = v22;
  v24 = *(v4 + 296);
  v100 = *(v4 + 312);
  v25 = *(v4 + 264);
  v97[0] = v21;
  v97[1] = v25;
  v101 = *(v4 + 328);
  v93 = v98;
  v94 = v24;
  v95 = *(v4 + 312);
  v96 = *(v4 + 328);
  v26 = v4;
  v91 = *(v4 + 248);
  v92 = v23;
  outlined init with copy of ResolvedNavigationDestinations(v97, &v72);
  v27 = ResolvedNavigationDestinations.validateValue(_:)(a1);
  if (v5)
  {
    *&v73[16] = v93;
    *&v73[32] = v94;
    *&v73[48] = v95;
    *&v73[64] = v96;
    v72 = v91;
    *v73 = v92;
    outlined destroy of ResolvedNavigationDestinations(&v72);
    *&v87[0] = v5;
    v28 = v5;
    type metadata accessor for Error();
    if (swift_dynamicCast())
    {
      v29 = v72;
      if (!(*(&v72 + 1) >> 62))
      {

        *&v85[0] = *(&v29 + 1);
        type metadata accessor for Any.Type();
        v40 = String.init<A>(describing:)();
        v42 = v41;
        *&v85[0] = v29;
        v43 = String.init<A>(describing:)();
        v45 = v44;
        lazy protocol witness table accessor for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError();
        swift_allocError();
        *v46 = v40;
        *(v46 + 8) = v42;
        *(v46 + 16) = v43;
        *(v46 + 24) = v45;
        *(v46 + 32) = 0;
        goto LABEL_25;
      }

      if (*(&v72 + 1) >> 62 == 1)
      {

        *&v85[0] = v29;
        type metadata accessor for Any.Type();
        v30 = String.init<A>(describing:)();
        v32 = v31;
        lazy protocol witness table accessor for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError();
        swift_allocError();
        *v33 = v30;
        *(v33 + 8) = v32;
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        *(v33 + 32) = 2;
LABEL_25:
        swift_willThrow();
        outlined destroy of NavigationRequest.Action?(&v104, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);

        return;
      }
    }

    outlined destroy of NavigationRequest.Action?(&v104, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);

    v19 = 0uLL;
    *(a4 + 136) = 0u;
    *(a4 + 120) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    v20 = 0x1FFFFFFFELL;
LABEL_17:
    *(a4 + 152) = 0;
    *(a4 + 160) = v20;
    *(a4 + 184) = v19;
    *(a4 + 200) = v19;
    *(a4 + 216) = v19;
    *(a4 + 232) = v19;
    *(a4 + 248) = v19;
    *(a4 + 168) = v19;
    *(a4 + 264) = v19;
    *(a4 + 280) = v19;
    *(a4 + 296) = v19;
    *(a4 + 312) = v19;
    *(a4 + 321) = v19;
    *a4 = xmmword_18CD6A6D0;
    *(a4 + 16) = 2;
    *(a4 + 340) = 0;
    return;
  }

  v34 = v27;
  v89[2] = v93;
  v89[3] = v94;
  v89[4] = v95;
  v90 = v96;
  v89[0] = v91;
  v89[1] = v92;
  outlined destroy of ResolvedNavigationDestinations(v89);
  if (v34)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v26 + 120, &v72);
    if (v73[104] != 1)
    {

      outlined destroy of NavigationRequest.Action?(&v72, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      LOBYTE(v87[0]) = 15;
      v47 = v26;
      v48 = *(v26 + 96);
      v49 = *(v26 + 104);
      v50 = *(v47 + 112);
      outlined init with copy of AnyNavigationLinkPresentedValue(a1, &v72);
      v51 = swift_allocObject();
      v52 = *v73;
      *(v51 + 16) = v72;
      *(v51 + 32) = v52;
      *(v51 + 48) = *&v73[16];
      *(v51 + 56) = v48;
      *(v51 + 64) = v49;
      *(v51 + 72) = v50;
      outlined copy of Binding<AnyNavigationPath>?(v48, v49, v50);
      static Update.enqueueAction(reason:_:)();

      MEMORY[0x1EEE9AC00](v53);
      specialized NavigationColumnState.ColumnContent.mutatePath<A>(transform:)(partial apply for closure #2 in NavigationColumnState.presentValue(_:request:splitViewState:));
      outlined destroy of NavigationRequest.Action?(&v104, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
      if (*(v47 + 352) >= 2u)
      {
        *(v47 + 352) = 0;
      }

      v72 = xmmword_18CD6A6D0;
      v73[0] = 2;
      memset(&v73[8], 0, 136);
      *v74 = 0x1FFFFFFFCLL;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      memset(v83, 0, sizeof(v83));
      *&v74[8] = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v84 = 0;
      outlined destroy of NavigationState.RequestResults(&v72);
      *(a4 + 136) = 0u;
      *(a4 + 120) = 0u;
      *(a4 + 104) = 0u;
      *(a4 + 88) = 0u;
      *(a4 + 72) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0x1FFFFFFFCLL;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 184) = 0u;
      *(a4 + 200) = 0u;
      *(a4 + 216) = 0u;
      *(a4 + 232) = 0u;
      *(a4 + 248) = 0u;
      *(a4 + 168) = 0u;
      *(a4 + 264) = 0u;
      *(a4 + 280) = 0u;
      *(a4 + 296) = 0u;
      *(a4 + 312) = 0u;
      *(a4 + 321) = 0u;
      *(a4 + 16) = 2;
      *(a4 + 340) = 1;
      return;
    }

    outlined destroy of NavigationRequest.Action?(&v72, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  }

  if (*(v26 + 24) > 1u)
  {
    goto LABEL_34;
  }

  v35 = a2[25];
  if (v35 >> 1 == 0xFFFFFFFF)
  {
    v36 = a2 + 13;
    v37 = a2 + 14;
    v38 = a2 + 15;
    v39 = a2 + 16;
    v35 = a2[17];
  }

  else
  {
    v36 = a2 + 21;
    v37 = a2 + 22;
    v38 = a2 + 23;
    v39 = a2 + 24;
  }

  v54 = *v38;
  v55 = *v37;
  v56 = v35 >> 62;
  if (v56)
  {
    if (v56 != 1 || *v38 == 6)
    {
      goto LABEL_34;
    }

    v57 = v55;
    v55 = *v38;
    v54 = *v39;
  }

  else
  {
    v57 = *v36;
  }

  if (v55 - 2 < 4)
  {
LABEL_34:
    v58 = a1[3];
    v59 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v58);
    *&v72 = (*(v59 + 16))(v58, v59);
    type metadata accessor for Any.Type();
    v60 = String.init<A>(describing:)();
    v62 = v61;
    lazy protocol witness table accessor for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError();
    swift_allocError();
    *v63 = v60;
    *(v63 + 8) = v62;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 32) = 3;
    swift_willThrow();
    goto LABEL_35;
  }

  v64 = a4;
  if (v55)
  {
    outlined destroy of NavigationRequest.Action?(&v104, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    v65 = 2;
  }

  else
  {
    outlined destroy of NavigationRequest.Action?(&v104, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    if (v54 == 3)
    {
      v65 = 1;
    }

    else
    {
      v65 = 2;
    }
  }

  v72 = xmmword_18CD6A6D0;
  v73[0] = 2;
  memset(&v73[8], 0, 136);
  *v74 = 0x1FFFFFFFCLL;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(v83, 0, sizeof(v83));
  *&v74[8] = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v84 = 0;
  outlined destroy of NavigationState.RequestResults(&v72);
  outlined init with copy of AnyNavigationLinkPresentedValue(a1, v87);
  v88 = 11;
  outlined init with copy of NavigationRequest(a2, &v72);
  if (v88 == 255)
  {
    outlined init with copy of NavigationRequest.Action?((a2 + 27), v85, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  }

  else
  {
    v85[4] = v87[4];
    v85[5] = v87[5];
    v86 = v88;
    v85[0] = v87[0];
    v85[1] = v87[1];
    v85[2] = v87[2];
    v85[3] = v87[3];
  }

  *(v64 + 304) = 0u;
  *(v64 + 320) = 0u;
  *(v64 + 272) = 0u;
  *(v64 + 288) = 0u;
  *(v64 + 256) = 0u;
  *(v64 + 240) = 0u;
  v66 = *&v73[80];
  *(v64 + 136) = *&v73[96];
  v67 = *&v73[128];
  *(v64 + 152) = *&v73[112];
  *(v64 + 168) = v67;
  v68 = *&v73[16];
  *(v64 + 72) = *&v73[32];
  v69 = *&v73[64];
  *(v64 + 88) = *&v73[48];
  *(v64 + 104) = v69;
  *(v64 + 120) = v66;
  v70 = *v73;
  *(v64 + 24) = v72;
  *(v64 + 40) = v70;
  *(v64 + 336) = -1;
  v71 = *v74;
  *(v64 + 56) = v68;
  *(v64 + 184) = v71;
  *(v64 + 192) = v57;
  *(v64 + 200) = v65;
  *(v64 + 208) = v54;
  *(v64 + 224) = 0;
  *(v64 + 232) = 0;
  *(v64 + 216) = 0;
  outlined assign with take of NavigationRequest.Action?(v85, v64 + 240, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
  *v64 = xmmword_18CD6A6D0;
  *(v64 + 16) = 2;
  *(v64 + 340) = 0;
}

void NavigationColumnState.programmaticallyDismissView(identifier:request:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (NavigationColumnState.ColumnContent.replacedRootMatchesView(identifiedBy:)(a1))
  {
    NavigationColumnState.ejectAll()();
    *(v3 + 352) = 0;
    v6 = 0uLL;
    *(a3 + 168) = 0u;
    v7 = (a3 + 168);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
LABEL_30:
    *(v7 - 2) = 0;
    *(v7 - 1) = 0x1FFFFFFFCLL;
    v7[1] = v6;
    v7[2] = v6;
    v7[3] = v6;
    v7[4] = v6;
    v7[5] = v6;
    v7[6] = v6;
    v7[7] = v6;
    v7[8] = v6;
    v7[9] = v6;
    v30 = 1;
LABEL_39:
    *(v7 + 153) = v6;
LABEL_40:
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    *(a3 + 340) = v30;
    *(a3 + 344) = 0;
    return;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v3 + 120, &v50);
  v42[0] = a2;
  if (BYTE8(v55[1]))
  {
    outlined destroy of NavigationColumnState.ColumnContent(&v50);
    v8 = MEMORY[0x1E69E7CC0];
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *&v43 = v9;
  }

  else
  {

    v8 = *(&v55[0] + 1);
    *&v43 = *&v55[1];
    v9 = outlined destroy of NavigationRequest.Action?(&v50, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  }

  v42[1] = v42;
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    while (1)
    {
      v13 = partial apply for closure #1 in NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)();
      if (v13)
      {
        break;
      }

      ++v11;
      v12 += 88;
      if (v10 == v11)
      {
        v11 = 0;
        break;
      }
    }

    v14 = v13 ^ 1;
  }

  else
  {
    v11 = 0;
    v14 = 1;
  }

  v15 = v14 & 1;

  if (v15)
  {
    v16 = v42[0];
    if (*(v3 + 24) <= 1u)
    {
      v17 = *(v42[0] + 200);
      if (v17 >> 1 == 0xFFFFFFFF)
      {
        v18 = (v42[0] + 104);
        v19 = (v42[0] + 112);
        v20 = (v42[0] + 120);
        v21 = (v42[0] + 128);
        v17 = *(v42[0] + 136);
      }

      else
      {
        v18 = (v42[0] + 168);
        v19 = (v42[0] + 176);
        v20 = (v42[0] + 184);
        v21 = (v42[0] + 192);
      }

      v31 = *v20;
      v32 = *v19;
      v33 = v17 >> 62;
      if (!v33)
      {
        v34 = *v18;
LABEL_37:
        if (v32 - 2 >= 4)
        {
          if (v32)
          {
            v35 = 2;
          }

          else if (v31 == 3)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          outlined init with copy of NavigationRequest(v42[0], &v50);
          outlined init with copy of NavigationRequest.Action?(v16 + 216, &v45, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
          *(a3 + 240) = 0u;
          *(a3 + 256) = 0u;
          *(a3 + 272) = 0u;
          *(a3 + 288) = 0u;
          *(a3 + 304) = 0u;
          *(a3 + 320) = 0u;
          v36 = v55[0];
          *(a3 + 136) = v55[1];
          v37 = v55[3];
          *(a3 + 152) = v55[2];
          *(a3 + 168) = v37;
          v38 = v52;
          *(a3 + 72) = v53;
          v39 = v54[1];
          *(a3 + 88) = v54[0];
          *(a3 + 104) = v39;
          *(a3 + 120) = v36;
          v40 = v51;
          *(a3 + 24) = v50;
          *(a3 + 40) = v40;
          *(a3 + 336) = -1;
          v41 = v56;
          *(a3 + 56) = v38;
          *(a3 + 184) = v41;
          *(a3 + 192) = v34;
          *(a3 + 200) = v35;
          *(a3 + 208) = v31;
          *(a3 + 224) = 0;
          *(a3 + 232) = 0;
          *(a3 + 216) = 0;
          outlined assign with take of NavigationRequest.Action?(&v45, a3 + 240, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
          v30 = 0;
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      if (v33 == 1 && *v20 != 6)
      {
        v34 = v32;
        v32 = *v20;
        v31 = *v21;
        goto LABEL_37;
      }
    }

LABEL_38:
    v30 = 0;
    v6 = 0uLL;
    *(a3 + 168) = 0u;
    v7 = (a3 + 168);
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFELL;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    goto LABEL_39;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v3 + 120, &v50);
  if ((BYTE8(v55[1]) & 1) == 0)
  {

    specialized Collection<>.dismiss(from:)((v11 + 1), *(&v55[0] + 1), *&v55[1]);
  }

  outlined destroy of NavigationRequest.Action?(&v50, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  outlined init with copy of NavigationColumnState.ColumnContent(v3 + 120, &v50);
  if (BYTE8(v55[1]))
  {
    outlined destroy of NavigationColumnState.ColumnContent(&v50);
LABEL_29:
    v6 = 0uLL;
    *(a3 + 168) = 0u;
    v7 = (a3 + 168);
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    goto LABEL_30;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v3 + 120);
  v22 = *&v55[0];
  v43 = *(v55 + 8);
  v44 = *(v55 + 8);
  v47 = v52;
  v48 = v53;
  v49[0] = v54[0];
  *(v49 + 9) = *(v54 + 9);
  v45 = v50;
  v46 = v51;
  *(v3 + 200) = 0;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 208) = -1;
  *(v3 + 240) = 1;
  outlined destroy of NavigationColumnState.ColumnContent(v3 + 120);
  v23 = v43;
  v24 = *(v43 + 16);
  v25 = v24 - v11;
  if (__OFSUB__(v24, v11))
  {
    goto LABEL_48;
  }

  if (!v25)
  {
LABEL_28:
    v28 = v48;
    *(v3 + 152) = v47;
    *(v3 + 168) = v28;
    *(v3 + 184) = v49[0];
    *(v3 + 193) = *(v49 + 9);
    v29 = v46;
    *(v3 + 120) = v45;
    *(v3 + 136) = v29;
    *(v3 + 216) = v22;
    *(v3 + 224) = v23;
    *(v3 + 240) = 0;
    goto LABEL_29;
  }

  if (v25 < 0)
  {
    goto LABEL_49;
  }

  v26 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*(v43 + 16), v11 - v24, 0, v43);
  if ((v27 & 1) == 0)
  {
    if (v24 >= v26)
    {
      specialized IdentifiedArray.replaceSubrange<A>(_:with:)(v26, v24);
      v23 = v44;
      goto LABEL_28;
    }

    goto LABEL_50;
  }

LABEL_51:
  __break(1u);
}

uint64_t NavigationColumnState.updateView(_:identifier:request:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NavigationColumnState.ColumnContent.replaceViewDestinationView(_:identifier:)(a1, a2);
  if (result)
  {
    *(a4 + 136) = 0u;
    *(a4 + 120) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 152) = 0;
    *(a4 + 160) = 0x1FFFFFFFCLL;
    *(a4 + 184) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 232) = 0u;
    *(a4 + 248) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 264) = 0u;
    *(a4 + 280) = 0u;
    *(a4 + 296) = 0u;
    *(a4 + 312) = 0u;
    *(a4 + 321) = 0u;
    *a4 = xmmword_18CD6A6D0;
    *(a4 + 16) = 2;
    *(a4 + 340) = 0x100000000;
    return result;
  }

  if (*(v4 + 24) > 1u)
  {
    goto LABEL_13;
  }

  v13 = a3[25];
  if (v13 >> 1 == 0xFFFFFFFF)
  {
    v14 = a3 + 13;
    v15 = a3 + 14;
    v16 = a3 + 15;
    v17 = a3 + 16;
    v13 = a3[17];
  }

  else
  {
    v14 = a3 + 21;
    v15 = a3 + 22;
    v16 = a3 + 23;
    v17 = a3 + 24;
  }

  v18 = *v16;
  v19 = *v15;
  v20 = v13 >> 62;
  if (v20)
  {
    if (v20 != 1 || *v16 == 6)
    {
      goto LABEL_13;
    }

    v21 = v19;
    v19 = *v16;
    v18 = *v17;
  }

  else
  {
    v21 = *v14;
  }

  if (v19 - 2 >= 4)
  {
    if (v19)
    {
      v32 = 2;
    }

    else if (v18 == 3)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    outlined init with copy of NavigationRequest.Action?((a3 + 27), v46, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    if (LOBYTE(v46[6]) == 255)
    {
      outlined init with copy of NavigationRequest.Action(a3, &v39);
      if (LOBYTE(v46[6]) != 255)
      {
        outlined destroy of NavigationRequest.Action?(v46, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v43 = v46[4];
      v44 = v46[5];
      v45 = v46[6];
      v39 = v46[0];
      v40 = v46[1];
      v41 = v46[2];
      v42 = v46[3];
    }

    outlined init with copy of NavigationRequest(a3, v37);
    if (v45 == 255)
    {
      outlined init with copy of NavigationRequest.Action?((a3 + 27), v35, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    }

    else
    {
      v35[4] = v43;
      v35[5] = v44;
      v36 = v45;
      v35[0] = v39;
      v35[1] = v40;
      v35[2] = v41;
      v35[3] = v42;
    }

    BYTE8(v46[19]) = -1;
    v46[8] = v37[8];
    v46[9] = v37[9];
    v46[4] = v37[4];
    v46[5] = v37[5];
    v46[6] = v37[6];
    v46[7] = v37[7];
    v46[0] = v37[0];
    v46[1] = v37[1];
    v46[2] = v37[2];
    v46[3] = v37[3];
    *&v46[10] = v38;
    *(&v46[10] + 1) = v21;
    *&v46[11] = v32;
    *(&v46[11] + 1) = v18;
    memset(&v46[12], 0, 120);
    outlined assign with take of NavigationRequest.Action?(v35, &v46[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
    *a4 = xmmword_18CD6A6D0;
    *(a4 + 16) = 2;
    result = memcpy((a4 + 24), v46, 0x139uLL);
    goto LABEL_20;
  }

LABEL_13:
  static Log.navigation.getter();
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    result = outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v11, type metadata accessor for Logger?);
  }

  else
  {
    outlined init with copy of NavigationLinkSelectionIdentifier(a2, v46);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v37[0] = v34;
      *v26 = 136315138;
      v27 = NavigationLinkSelectionIdentifier.description.getter();
      v29 = v28;
      outlined destroy of NavigationLinkSelectionIdentifier(v46);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v37);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_18BD4A000, v24, v25, "Failed to update view destination view with ID: %s", v26, 0xCu);
      v31 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x18D0110E0](v31, -1, -1);
      MEMORY[0x18D0110E0](v26, -1, -1);
    }

    else
    {

      outlined destroy of NavigationLinkSelectionIdentifier(v46);
    }

    result = (*(v23 + 8))(v11, v22);
  }

  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0x1FFFFFFFELL;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 321) = 0u;
  *a4 = xmmword_18CD6A6D0;
  *(a4 + 16) = 2;
LABEL_20:
  *(a4 + 340) = 0;
  return result;
}

void *NavigationColumnState.dismissSplitViewColumn(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NavigationColumnState.ColumnContent.count.getter();
  v5 = v4;
  outlined init with copy of NavigationRequest(a1, v9);
  v7[0] = v5;
  v8 = 15;
  *(&__src[16] + 8) = 0u;
  *(&__src[17] + 8) = 0u;
  *(&__src[18] + 8) = 0u;
  *(&__src[13] + 8) = 0u;
  *(&__src[14] + 8) = 0u;
  *(&__src[15] + 8) = 0u;
  BYTE8(__src[19]) = -1;
  __src[8] = v9[8];
  __src[9] = v9[9];
  *&__src[10] = v10;
  __src[4] = v9[4];
  __src[5] = v9[5];
  __src[6] = v9[6];
  __src[7] = v9[7];
  __src[0] = v9[0];
  __src[1] = v9[1];
  __src[2] = v9[2];
  __src[3] = v9[3];
  *(&__src[10] + 8) = *(a1 + 168);
  *(&__src[11] + 8) = *(a1 + 184);
  *(&__src[12] + 8) = *(a1 + 200);
  outlined assign with take of NavigationRequest.Action?(v7, &__src[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
  *a2 = xmmword_18CD6A6D0;
  *(a2 + 16) = 2;
  result = memcpy((a2 + 24), __src, 0x139uLL);
  *(a2 + 340) = 0;
  return result;
}

void NavigationColumnState.accumulatedDismiss(count:request:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!(*(a2 + 136) >> 62))
  {
    v7 = *(v3 + 24);
    v8 = *(v3 + 16) == *(a2 + 104) && v7 == *(a2 + 112);
    if (v8 && *(v3 + 32) == *(a2 + 120))
    {
LABEL_11:
      if (v7 == 2)
      {
        outlined init with copy of NavigationRequest(a2, &v18);
        v15 = a1;
        v16 = 0;
        v17 = 9;
        *(&__src[16] + 8) = 0u;
        *(&__src[17] + 8) = 0u;
        *(&__src[18] + 8) = 0u;
        *(&__src[13] + 8) = 0u;
        *(&__src[14] + 8) = 0u;
        *(&__src[15] + 8) = 0u;
        BYTE8(__src[19]) = -1;
        __src[8] = v26;
        __src[9] = v27;
        *&__src[10] = v28;
        __src[4] = v22;
        __src[5] = v23;
        __src[6] = v24;
        __src[7] = v25;
        __src[0] = v18;
        __src[1] = v19;
        __src[2] = v20;
        __src[3] = v21;
        *(&__src[10] + 8) = *(a2 + 168);
        *(&__src[11] + 8) = *(a2 + 184);
        *(&__src[12] + 8) = *(a2 + 200);
      }

      else
      {
        v12 = 2;
        if ((v7 - 3) < 3)
        {
          *(a3 + 136) = 0u;
          *(a3 + 120) = 0u;
          *(a3 + 104) = 0u;
          *(a3 + 88) = 0u;
          *(a3 + 72) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 24) = 0u;
          *(a3 + 152) = 0;
          *(a3 + 160) = 0x1FFFFFFFELL;
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
LABEL_21:
          *(a3 + 340) = 0;
          return;
        }

        v13 = *(v3 + 16);
        v14 = *(v3 + 32);
        if (!v7)
        {
          if (v14 == 3)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }
        }

        outlined init with copy of NavigationRequest(a2, &v18);
        v15 = a1;
        v17 = 15;
        BYTE8(__src[19]) = -1;
        __src[8] = v26;
        __src[9] = v27;
        __src[4] = v22;
        __src[5] = v23;
        __src[6] = v24;
        __src[7] = v25;
        __src[0] = v18;
        __src[1] = v19;
        __src[2] = v20;
        __src[3] = v21;
        *&__src[10] = v28;
        *(&__src[10] + 1) = v13;
        *&__src[11] = v12;
        *(&__src[11] + 1) = v14;
        memset(&__src[12], 0, 120);
      }

      outlined assign with take of NavigationRequest.Action?(&v15, &__src[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
      *a3 = xmmword_18CD6A6D0;
      *(a3 + 16) = 2;
      memcpy((a3 + 24), __src, 0x139uLL);
      goto LABEL_21;
    }
  }

  NavigationColumnState.ColumnContent.count.getter();
  v11 = __OFADD__(a1, v10);
  a1 += v10;
  if (!v11)
  {
    v7 = *(v3 + 24);
    goto LABEL_11;
  }

  __break(1u);
}

void closure #2 in NavigationColumnState.update(for:shouldAnimate:splitViewState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.navigation.getter();
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v8, type metadata accessor for Logger?);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_18BD4A000, v11, v12, "<Navigation clientBoundPath>: Enqueueing replacement", v13, 2u);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v14[1] = a4;

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized IdentifiedArray.popLast(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = result;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = -result;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(v4, -result, 0, *v1);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  if (v4 < v7)
  {
    goto LABEL_14;
  }

  if (v7 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {

    return v7;
  }

  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(v4, v5, 0, v3);
  if ((v8 & 1) == 0)
  {
    v9 = result;
    if (v4 >= result)
    {

      specialized IdentifiedArray.replaceSubrange<A>(_:with:)(v9, v4);
      return v7;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in NavigationColumnState.pop(_:writesSelectionAt:request:splitViewState:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != result)
  {
    v4 = result;
    v5 = a3 + 32;
    v6 = *(a3 + 16);
    v7 = a2;
    while (!__OFSUB__(v7--, 1))
    {
      if (v7 < v4 || v7 >= a2)
      {
        goto LABEL_11;
      }

      if (v7 < 0)
      {
        goto LABEL_12;
      }

      if (v7 >= v6)
      {
        goto LABEL_13;
      }

      v9 = outlined init with copy of NavigationViewDestinationView(v5 + 88 * v7, v10);
      v11(v9);
      result = outlined destroy of NavigationViewDestinationView(v10);
      if (v7 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void closure #3 in NavigationColumnState.pop(_:writesSelectionAt:request:splitViewState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.navigation.getter();
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v8, type metadata accessor for Logger?);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_18BD4A000, v11, v12, "<Navigation clientBoundPath>: Enqueueing replacement", v13, 2u);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    if (a4)
    {
      v14[1] = a4;

      dispatch thunk of AnyLocation.set(_:transaction:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in NavigationColumnState.popAllForSelectionChange(popReplacedRoots:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.navigation.getter();
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v8, type metadata accessor for Logger?);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_18BD4A000, v11, v12, "<Navigation clientBoundPath>: Enqueueing removeAll", v13, 2u);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
    v14 = MEMORY[0x18D00ACC0](&v20);
    v15 = (*(*v20 + 88))(v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = (*(*v20 + 104))();

      v20 = v18;
      v17 = v18;
    }

    (*(*v17 + 128))(v15);
    v19[1] = v17;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in NavigationColumnState.presentValue(_:request:splitViewState:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.navigation.getter();
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v10, type metadata accessor for Logger?);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_18BD4A000, v14, v15, "<Navigation clientBoundPath>: Enqueueing push", v16, 2u);
      MEMORY[0x18D0110E0](v16, -1, -1);
    }

    result = (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    return (*(v18 + 64))(a2, a3, a4, v17, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void NavigationColumnState.ejectAll()()
{
  v1 = v0;
  v6[0] = 17;
  v2 = v0[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  outlined copy of Binding<AnyNavigationPath>?(v2, v3, v4);
  static Update.enqueueAction(reason:_:)();

  if (v1[6])
  {
    NavigationListState.removePendingDeselections()();
  }

  outlined init with copy of NavigationColumnState.ColumnContent((v1 + 15), v6);
  if ((v9 & 1) == 0)
  {

    specialized Collection<>.dismiss(from:)(0, v7, v8);
  }

  outlined destroy of NavigationRequest.Action?(v6, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  NavigationColumnState.ColumnContent.dismissReplacedRootView()();
  NavigationColumnState.ColumnContent.clearAll(popReplacedRoots:)(1);
}

void *NavigationColumnState.requestPreviousColumnSelectionSeedBump(_:)@<X0>(void *result@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (v5 > 2)
  {
    if ((v5 - 3) >= 2)
    {
      v7 = 2;
      goto LABEL_9;
    }

LABEL_7:
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    *(a2 + 16) = 0;
    *(a2 + 17) = 0x1FFFFFFFCLL;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[13] = 0u;
    a2[14] = 0u;
    a2[15] = 0u;
    a2[16] = 0u;
    a2[17] = 0u;
    a2[18] = 0u;
    a2[9] = 0u;
    *(a2 + 297) = 0u;
    return result;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = v5 != 1 && v6 == 3;
LABEL_9:
  outlined init with copy of NavigationRequest.Action?(result, __src, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
  if (__src[17] >> 1 == 0xFFFFFFFFLL)
  {
    outlined destroy of NavigationRequest.Action?(__src, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
    memset(&__src[1], 0, 88);
    __src[0] = 5;
    LOBYTE(__src[12]) = 22;
    __src[13] = v4;
    __src[14] = v5;
    __src[15] = v6;
    memset(&__src[16], 0, 25);
    memset(__dst, 0, 96);
    LOBYTE(__dst[6]) = -1;
    LOBYTE(__src[39]) = -1;
    __src[20] = 0;
    __src[21] = v4;
    __src[22] = v7;
    __src[23] = v6;
    memset(&__src[24], 0, 120);
    v8 = __dst;
  }

  else
  {
    memcpy(__dst, __src, 0x139uLL);
    outlined init with copy of NavigationRequest(__dst, __src);
    outlined destroy of NavigationRequest.TargetedRequest(__dst);
    v9 = 5;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    v16 = 22;
    LOBYTE(__src[39]) = -1;
    __src[21] = v4;
    __src[22] = v7;
    __src[23] = v6;
    memset(&__src[24], 0, 120);
    v8 = &v9;
  }

  outlined assign with take of NavigationRequest.Action?(v8, &__src[27], &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
  return memcpy(a2, __src, 0x139uLL);
}

void closure #1 in NavigationColumnState.programmaticallyPresentView(_:fromDepth:identifier:dismiss:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.navigation.getter();
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v10, type metadata accessor for Logger?);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a1;
      _os_log_impl(&dword_18BD4A000, v13, v14, "<Navigation clientBoundPath>: Enqueueing pop %ld", v15, 0xCu);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = (*(*v20 + 104))();

      v20 = v18;
      v17 = v18;
    }

    (*(*v17 + 128))(a1);
    v19[1] = v17;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in NavigationColumnState.presentView(_:identifier:dismiss:request:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  outlined init with copy of NavigationViewDestinationView(a2, v4);
  specialized IdentifiedArray.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of NavigationRequest.Action?(v4, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6BC0]);
}

double closure #1 in NavigationColumnState.ejectAll()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.navigation.getter();
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v8, type metadata accessor for Logger?);
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_18BD4A000, v12, v13, "<Navigation clientBoundPath>: Enqueueing removeAll", v14, 2u);
    MEMORY[0x18D0110E0](v14, -1, -1);
  }

  (*(v10 + 8))(v8, v9);
  if (a2)
  {
LABEL_7:
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a3;
    type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
    v15 = MEMORY[0x18D00ACC0](&v21);
    v16 = (*(*v21 + 88))(v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = (*(*v21 + 104))();

      v21 = v19;
      v18 = v19;
    }

    (*(*v18 + 128))(v16);
    v20[1] = v18;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

void closure #1 in NavigationColumnState.change(from:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a1 + 120, v12);
  if (v16)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v12);
    v3 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    v3 = v15;
    outlined destroy of NavigationRequest.Action?(v12, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  }

  outlined init with copy of NavigationColumnState.ColumnContent(a2 + 120, v12);
  if (v16)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v12);
    v4 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    v4 = v15;
    outlined destroy of NavigationRequest.Action?(v12, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  }

  v5 = *(v3 + 16);

  v6 = 0;
  v7 = 32;
  while (1)
  {
    if (v5 == v6)
    {
LABEL_13:

LABEL_16:

      return;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    outlined init with copy of NavigationViewDestinationView(v3 + v7, v10);
    v8 = *(v4 + 16);
    if (v6 == v8)
    {

      outlined destroy of NavigationViewDestinationView(v10);
      goto LABEL_16;
    }

    if (v6++ >= v8)
    {
      goto LABEL_18;
    }

    v12[3] = v10[3];
    v12[4] = v10[4];
    v13 = v11;
    v12[0] = v10[0];
    v12[1] = v10[1];
    v12[2] = v10[2];
    outlined init with copy of NavigationViewDestinationView(v4 + v7, &v14);
    v9 = (*(**&v12[0] + 112))(v14);
    outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(v12, type metadata accessor for (NavigationViewDestinationView, NavigationViewDestinationView));
    v7 += 88;
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t specialized IdentifiedArray.replaceSubrange<A>(_:with:)(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 != a2)
  {
    if (a2 < a1)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (a1 >= a2)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v28 = *v3;
    v29 = *v3 + 88 * a1 + 32;
    v30 = a1;
    while ((v30 & 0x8000000000000000) == 0)
    {
      if (v30 >= *(v28 + 16))
      {
        goto LABEL_53;
      }

      outlined init with copy of NavigationViewDestinationView(v29, &v69);
      outlined init with copy of NavigationLinkSelectionIdentifier(&v70, v62);
      outlined destroy of NavigationViewDestinationView(&v69);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
      if (v32)
      {
        v33 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v4[1];
        *&v56 = v35;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v35 = v56;
        }

        outlined destroy of NavigationLinkSelectionIdentifier(*(v35 + 48) + (v33 << 6));
        specialized _NativeDictionary._delete(at:)(v33, v35);
        outlined destroy of NavigationLinkSelectionIdentifier(v62);
        v4[1] = v35;
      }

      else
      {
        outlined destroy of NavigationLinkSelectionIdentifier(v62);
      }

      ++v30;
      v29 += 88;
      if (a2 == v30)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_52;
  }

LABEL_2:
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v8 = 1 - v7;
  if (__OFSUB__(1, v7))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v54 = a1;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v52 = a2;
  if (v10 < a2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v10 == a2)
  {
LABEL_6:
    outlined init with copy of NavigationRequest.Action?(a3, &v63, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6BC0]);
    v58 = v65;
    v59 = v66;
    v60 = v67;
    v61 = v68;
    v56 = v63;
    v57 = v64;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    outlined assign with take of NavigationRequest.Action?(&v56, &v70, &lazy cache variable for type metadata for NavigationViewDestinationView?, &type metadata for NavigationViewDestinationView);
    v11 = v54 + 1;
    if (!__OFADD__(v54, 1))
    {
      v12 = v54;
      while (1)
      {
        v69 = v11;
        v58 = v72;
        v59 = v73;
        v60 = v74;
        v61 = v75;
        v56 = v70;
        v57 = v71;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0;
        if (!v56)
        {
          outlined destroy of NavigationRequest.Action?(&v56, &lazy cache variable for type metadata for NavigationViewDestinationView?, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6720]);
          v76 = 1;
          outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(&v69, type metadata accessor for Zip2Sequence<PartialRangeFrom<Int>, CollectionOfOne<NavigationViewDestinationView>>.Iterator);
          outlined init with copy of NavigationRequest.Action?(a3, &v69, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6BC0]);
          return specialized Array.replaceSubrange<A>(_:with:)(v54, v52, &v69);
        }

        v65 = v58;
        v66 = v59;
        v67 = v60;
        v68 = v61;
        v63 = v56;
        v64 = v57;
        outlined init with copy of NavigationLinkSelectionIdentifier(&v56 + 8, v55);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v15 = v4[1];
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
        v18 = v15[2];
        v19 = (v17 & 1) == 0;
        v13 = __OFADD__(v18, v19);
        v20 = v18 + v19;
        if (v13)
        {
          goto LABEL_51;
        }

        v21 = v17;
        if (v15[3] < v20)
        {
          break;
        }

        if (v14)
        {
          goto LABEL_16;
        }

        v26 = v16;
        specialized _NativeDictionary.copy()();
        v16 = v26;
        if (v21)
        {
LABEL_8:
          *(v15[7] + 8 * v16) = v12;
          outlined destroy of NavigationLinkSelectionIdentifier(v55);
          outlined destroy of NavigationViewDestinationView(&v56);
          goto LABEL_9;
        }

LABEL_17:
        v15[(v16 >> 6) + 8] |= 1 << v16;
        v23 = v16;
        outlined init with copy of NavigationLinkSelectionIdentifier(v55, v15[6] + (v16 << 6));
        *(v15[7] + 8 * v23) = v12;
        outlined destroy of NavigationLinkSelectionIdentifier(v55);
        outlined destroy of NavigationViewDestinationView(&v56);
        v24 = v15[2];
        v13 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v13)
        {
          goto LABEL_58;
        }

        v15[2] = v25;
LABEL_9:
        v12 = v11;
        v4[1] = v15;
        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_50;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, v14);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_66;
      }

LABEL_16:
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v36 = a2;
  if (v10 > a2)
  {
    v37 = v9 + 88 * a2 + 32;
    while (1)
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (v36 >= *(v9 + 16))
      {
        goto LABEL_55;
      }

      outlined init with copy of NavigationViewDestinationView(v37, &v69);
      outlined init with copy of NavigationLinkSelectionIdentifier(&v70, v62);
      outlined destroy of NavigationViewDestinationView(&v69);
      v38 = v36 + v8;
      if (__OFADD__(v36, v8))
      {
        goto LABEL_56;
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v56 = v4[1];
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
      v42 = *(v56 + 16);
      v43 = (v41 & 1) == 0;
      v13 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v13)
      {
        goto LABEL_57;
      }

      v45 = v41;
      if (*(v56 + 24) < v44)
      {
        break;
      }

      if (v39)
      {
        goto LABEL_45;
      }

      v51 = v40;
      specialized _NativeDictionary.copy()();
      v40 = v51;
      v47 = v56;
      if (v45)
      {
LABEL_35:
        *(v47[7] + 8 * v40) = v38;
        outlined destroy of NavigationLinkSelectionIdentifier(v62);
        goto LABEL_36;
      }

LABEL_46:
      v47[(v40 >> 6) + 8] |= 1 << v40;
      v48 = v40;
      outlined init with copy of NavigationLinkSelectionIdentifier(v62, v47[6] + (v40 << 6));
      *(v47[7] + 8 * v48) = v38;
      outlined destroy of NavigationLinkSelectionIdentifier(v62);
      v49 = v47[2];
      v13 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v13)
      {
        goto LABEL_59;
      }

      v47[2] = v50;
LABEL_36:
      ++v36;
      v4[1] = v47;
      v37 += 88;
      if (v10 == v36)
      {
        goto LABEL_6;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v39);
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
    if ((v45 & 1) != (v46 & 1))
    {
      goto LABEL_66;
    }

LABEL_45:
    v47 = v56;
    if (v45)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + a5;
  if (__OFADD__(a4, a5))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 < a3 || a3 < a4 || result < a4 || v5 < result)
  {
    goto LABEL_19;
  }

  v6 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_14:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (result < a4 || v5 < result)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized IdentifiedArray.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 != a2)
  {
    if (a2 < a1)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (a1 >= a2)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v11 = *v2;
    v12 = *v2 + 88 * a1 + 32;
    v13 = a1;
    while ((v13 & 0x8000000000000000) == 0)
    {
      if (v13 >= *(v11 + 16))
      {
        goto LABEL_36;
      }

      outlined init with copy of NavigationViewDestinationView(v12, v39);
      outlined init with copy of NavigationLinkSelectionIdentifier(v40, v38);
      outlined destroy of NavigationViewDestinationView(v39);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      if (v15)
      {
        v16 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v3[1];
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
        }

        outlined destroy of NavigationLinkSelectionIdentifier(*(v18 + 48) + (v16 << 6));
        specialized _NativeDictionary._delete(at:)(v16, v18);
        outlined destroy of NavigationLinkSelectionIdentifier(v38);
        v3[1] = v18;
      }

      else
      {
        outlined destroy of NavigationLinkSelectionIdentifier(v38);
      }

      ++v13;
      v12 += 88;
      if (a2 == v13)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_2:
  if (__OFSUB__(a2, a1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = a1 - a2;
  if (__OFSUB__(0, a2 - a1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v36 = a1;
  v7 = a2;
  v8 = *v3;
  v9 = *(*v3 + 16);
  v37 = v7;
  if (v9 < v7)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v9 == v7)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(v36, v37);
  }

  v19 = v7;
  if (v9 > v7)
  {
    for (i = v8 + 88 * v7 + 32; ; i += 88)
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v19 >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      outlined init with copy of NavigationViewDestinationView(i, v39);
      outlined init with copy of NavigationLinkSelectionIdentifier(v40, v38);
      outlined destroy of NavigationViewDestinationView(v39);
      v21 = v19 + v6;
      if (__OFADD__(v19, v6))
      {
        goto LABEL_39;
      }

      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = v3[1];
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      v26 = v23[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_40;
      }

      v30 = v25;
      if (v23[3] < v29)
      {
        break;
      }

      if (v22)
      {
        goto LABEL_30;
      }

      v35 = v24;
      specialized _NativeDictionary.copy()();
      v24 = v35;
      if (v30)
      {
LABEL_20:
        *(v23[7] + 8 * v24) = v21;
        outlined destroy of NavigationLinkSelectionIdentifier(v38);
        goto LABEL_21;
      }

LABEL_31:
      v23[(v24 >> 6) + 8] |= 1 << v24;
      v32 = v24;
      outlined init with copy of NavigationLinkSelectionIdentifier(v38, v23[6] + (v24 << 6));
      *(v23[7] + 8 * v32) = v21;
      outlined destroy of NavigationLinkSelectionIdentifier(v38);
      v33 = v23[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_41;
      }

      v23[2] = v34;
LABEL_21:
      ++v19;
      v3[1] = v23;
      if (v9 == v19)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(v36, v37);
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v22);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
    if ((v30 & 1) != (v31 & 1))
    {
      goto LABEL_48;
    }

LABEL_30:
    if (v30)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double outlined copy of Binding<AnyNavigationPath>?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.RequestError, &type metadata for NavigationAuthority.RequestError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError);
  }

  return result;
}

uint64_t objectdestroy_2Tm_2()
{

  if (*(v0 + 88) - 1 <= 2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t outlined destroy of (NavigationViewDestinationView, NavigationViewDestinationView)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #2 in NavigationColumnState.presentValue(_:request:splitViewState:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 56))(a1, v4, v5);
}

uint64_t outlined assign with take of NavigationRequest.Action?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationRequest.Action?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void type metadata accessor for Zip2Sequence<PartialRangeFrom<Int>, CollectionOfOne<NavigationViewDestinationView>>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Zip2Sequence<PartialRangeFrom<Int>, CollectionOfOne<NavigationViewDestinationView>>.Iterator)
  {
    type metadata accessor for PartialRangeFrom<Int>();
    type metadata accessor for NavigationRequest.Action?(255, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6BC0]);
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>();
    lazy protocol witness table accessor for type CollectionOfOne<NavigationViewDestinationView> and conformance CollectionOfOne<A>();
    v1 = type metadata accessor for Zip2Sequence.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Zip2Sequence<PartialRangeFrom<Int>, CollectionOfOne<NavigationViewDestinationView>>.Iterator);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CollectionOfOne<NavigationViewDestinationView> and conformance CollectionOfOne<A>()
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<NavigationViewDestinationView> and conformance CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<NavigationViewDestinationView> and conformance CollectionOfOne<A>)
  {
    type metadata accessor for NavigationRequest.Action?(255, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6BD0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<NavigationViewDestinationView> and conformance CollectionOfOne<A>);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

double destroy for NavigationViewDestinationView(void *a1)
{

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 1);
  }

  if (a1[7] != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for NavigationViewDestinationView(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = a2[4];

  if (v5)
  {
    v6 = a2[5];
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    (**(v5 - 8))(a1 + 8, a2 + 1, v5);
  }

  else
  {
    v7 = *(a2 + 3);
    *v4 = *(a2 + 1);
    *(a1 + 24) = v7;
    *(a1 + 40) = a2[5];
  }

  v8 = a2[7];
  if (v8 == 1)
  {
    *(a1 + 48) = *(a2 + 3);
  }

  else
  {
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v8;
  }

  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;

  return a1;
}

uint64_t assignWithCopy for NavigationViewDestinationView(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[4];
  if (*(a1 + 32))
  {
    v5 = (a1 + 8);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, a2 + 1);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v5);
      v6 = a2[5];
      v7 = *(a2 + 3);
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 24) = v7;
      *(a1 + 40) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 32) = v4;
    *(a1 + 40) = a2[5];
    (**(v4 - 8))(a1 + 8, a2 + 1);
  }

  else
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 3);
    *(a1 + 40) = a2[5];
    *(a1 + 24) = v9;
    *(a1 + 8) = v8;
  }

  v10 = a2[7];
  if (*(a1 + 56) != 1)
  {
    if (v10 != 1)
    {
      *(a1 + 48) = *(a2 + 12);
      *(a1 + 52) = *(a2 + 13);
      *(a1 + 56) = a2[7];

      goto LABEL_15;
    }

    outlined destroy of _ViewList_ID.Canonical(a1 + 48);
    goto LABEL_13;
  }

  if (v10 == 1)
  {
LABEL_13:
    *(a1 + 48) = *(a2 + 3);
    goto LABEL_15;
  }

  *(a1 + 48) = *(a2 + 12);
  *(a1 + 52) = *(a2 + 13);
  *(a1 + 56) = a2[7];

LABEL_15:
  *(a1 + 64) = a2[8];
  v11 = a2[10];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v11;

  return a1;
}

uint64_t assignWithTake for NavigationViewDestinationView(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 8;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 8));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1 + 8);
    }
  }

  v5 = *(v4 + 16);
  *(a1 + 8) = *v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = *(v4 + 32);
  if (*(a1 + 56) != 1)
  {
    v6 = *(a2 + 56);
    if (v6 != 1)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v6;

      goto LABEL_10;
    }

    outlined destroy of _ViewList_ID.Canonical(a1 + 48);
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_10:
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

void destroy for NavigationColumnState.ReplacedRoot(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {

    if (*(a1 + 32))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 8));
    }

    if (*(a1 + 56) != 1)
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for NavigationColumnState.ReplacedRoot(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 88);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    v5 = (a1 + 8);
    v6 = a2[4];

    if (v6)
    {
      v7 = a2[5];
      *(a1 + 32) = v6;
      *(a1 + 40) = v7;
      (**(v6 - 8))(a1 + 8, a2 + 1, v6);
    }

    else
    {
      v9 = *(a2 + 3);
      *v5 = *(a2 + 1);
      *(a1 + 24) = v9;
      *(a1 + 40) = a2[5];
    }

    v10 = a2[7];
    if (v10 == 1)
    {
      *(a1 + 48) = *(a2 + 3);
    }

    else
    {
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v10;
    }

    v11 = a2[9];
    v12 = a2[10];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = 1;
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1, a2);
    *(a1 + 88) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for NavigationColumnState.ReplacedRoot(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 88);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 8));
      }

      if (*(a1 + 56) != 1)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 88);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      v6 = a2[4];

      if (v6)
      {
        *(a1 + 32) = v6;
        *(a1 + 40) = a2[5];
        (**(v6 - 8))(a1 + 8, a2 + 1, v6);
      }

      else
      {
        v8 = *(a2 + 1);
        v9 = *(a2 + 3);
        *(a1 + 40) = a2[5];
        *(a1 + 8) = v8;
        *(a1 + 24) = v9;
      }

      if (a2[7] == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = *(a2 + 12);
        *(a1 + 52) = *(a2 + 13);
        *(a1 + 56) = a2[7];
      }

      *(a1 + 64) = a2[8];
      v10 = a2[10];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v10;
      *(a1 + 88) = 1;
    }

    else
    {
      v7 = a2[3];
      *(a1 + 24) = v7;
      *(a1 + 32) = a2[4];
      (**(v7 - 8))(a1, a2);
      *(a1 + 88) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for NavigationColumnState.ReplacedRoot(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 88);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 8));
      }

      if (*(a1 + 56) != 1)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 88);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v6;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      v7 = *(a2 + 16);
      v8 = 1;
      *a1 = *a2;
      *(a1 + 16) = v7;
    }

    else
    {
      v8 = 0;
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 88) = v8;
  }

  return a1;
}

uint64_t storeEnumTagSinglePayload for NavigationColumnState.ReplacedRoot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationColumnState.ReplacedRoot(uint64_t a1)
{
  result = *(a1 + 88);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationColumnState.ReplacedRoot(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t assignWithCopy for NavigationColumnState.ColumnContent(uint64_t a1, uint64_t *a2, __n128 a3)
{
  if (a1 != a2)
  {
    v5 = *(a1 + 120);
    if (v5 >= 2)
    {
      v5 = *a1 + 2;
    }

    v6 = *(a1 + 88);
    if (v5 == 1)
    {
      if (v6 != 255)
      {
        if (v6)
        {

          if (*(a1 + 32))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 8));
          }

          if (*(a1 + 56) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    else
    {
      if (v6 != 255)
      {
        if (v6)
        {

          if (*(a1 + 32))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 8));
          }

          if (*(a1 + 56) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    v7 = *(a2 + 120);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    v8 = *(a2 + 88);
    if (v7 == 1)
    {
      if (v8 == 255)
      {
        v11 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v11;
        v12 = *(a2 + 2);
        v13 = *(a2 + 3);
        v14 = *(a2 + 4);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 48) = v13;
        *(a1 + 64) = v14;
        *(a1 + 32) = v12;
      }

      else if (v8)
      {
        *a1 = *a2;
        v9 = a2[4];

        if (v9)
        {
          *(a1 + 32) = v9;
          *(a1 + 40) = a2[5];
          (**(v9 - 8))(a1 + 8, a2 + 1, v9);
        }

        else
        {
          v21 = *(a2 + 1);
          v22 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v21;
          *(a1 + 24) = v22;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v23 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v23;
        *(a1 + 88) = 1;
      }

      else
      {
        v19 = a2[3];
        *(a1 + 24) = v19;
        *(a1 + 32) = a2[4];
        (**(v19 - 8))(a1, a2);
        *(a1 + 88) = 0;
      }

      *(a1 + 120) = 1;
    }

    else
    {
      if (v8 == 255)
      {
        v15 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v15;
        v16 = *(a2 + 2);
        v17 = *(a2 + 3);
        v18 = *(a2 + 4);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 48) = v17;
        *(a1 + 64) = v18;
        *(a1 + 32) = v16;
      }

      else if (v8)
      {
        *a1 = *a2;
        v10 = a2[4];

        if (v10)
        {
          *(a1 + 32) = v10;
          *(a1 + 40) = a2[5];
          (**(v10 - 8))(a1 + 8, a2 + 1, v10);
        }

        else
        {
          v24 = *(a2 + 1);
          v25 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v24;
          *(a1 + 24) = v25;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v26 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v26;
        *(a1 + 88) = 1;
      }

      else
      {
        v20 = a2[3];
        *(a1 + 24) = v20;
        *(a1 + 32) = a2[4];
        (**(v20 - 8))(a1, a2);
        *(a1 + 88) = 0;
      }

      *(a1 + 96) = a2[12];
      *(a1 + 104) = a2[13];
      *(a1 + 112) = a2[14];
      *(a1 + 120) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for NavigationColumnState.ColumnContent(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 120);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    v5 = *(a1 + 88);
    if (v4 == 1)
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(a1 + 32))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 8));
          }

          if (*(a1 + 56) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    else
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(a1 + 32))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 8));
          }

          if (*(a1 + 56) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    v6 = *(a2 + 120);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v7;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
    }

    else
    {
      LOBYTE(v6) = 0;
      *(a1 + 112) = *(a2 + 112);
      v9 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v9;
      *(a1 + 96) = *(a2 + 96);
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      v11 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v11;
    }

    *(a1 + 120) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationColumnState.ColumnContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationColumnState.ColumnContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 105) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationColumnState.ColumnContent(uint64_t a1)
{
  result = *(a1 + 120);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationColumnState.ColumnContent(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 120) = a2;
  return result;
}

uint64_t assignWithCopy for NavigationColumnState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v4)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);

      *(a1 + 72) = *(a2 + 72);

      *(a1 + 80) = *(a2 + 80);

      *(a1 + 88) = *(a2 + 88);
    }

    else
    {
      outlined destroy of NavigationListState(a1 + 40);
      v5 = *(a2 + 56);
      v6 = *(a2 + 72);
      v7 = *(a2 + 88);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 88) = v7;
      *(a1 + 72) = v6;
      *(a1 + 56) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 56);
    v10 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v10;
    *(a1 + 56) = v9;
    *(a1 + 40) = v8;
  }

  *(a1 + 92) = *(a2 + 92);
  v11 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v11)
    {
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);

      *(a1 + 112) = *(a2 + 112);

      if (a1 == a2)
      {
        goto LABEL_43;
      }
    }

    else
    {
      outlined destroy of NavigationRequest.Action?(a1 + 96, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
      v12 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v12;
      if (a1 == a2)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v11)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);

    if (a1 == a2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v13 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v13;
    if (a1 == a2)
    {
      goto LABEL_43;
    }
  }

  outlined destroy of NavigationColumnState.ColumnContent(a1 + 120);
  v14 = *(a2 + 208);
  if (*(a2 + 240))
  {
    if (v14 == 255)
    {
      v17 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v17;
      v18 = *(a2 + 152);
      v19 = *(a2 + 168);
      v20 = *(a2 + 184);
      *(a1 + 193) = *(a2 + 193);
      *(a1 + 184) = v20;
      *(a1 + 168) = v19;
      *(a1 + 152) = v18;
    }

    else if (v14)
    {
      *(a1 + 120) = *(a2 + 120);
      v15 = *(a2 + 152);

      if (v15)
      {
        *(a1 + 152) = v15;
        *(a1 + 160) = *(a2 + 160);
        (**(v15 - 8))(a1 + 128, a2 + 128, v15);
      }

      else
      {
        v27 = *(a2 + 128);
        v28 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v27;
        *(a1 + 144) = v28;
      }

      if (*(a2 + 176) == 1)
      {
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 172) = *(a2 + 172);
        *(a1 + 176) = *(a2 + 176);
      }

      *(a1 + 184) = *(a2 + 184);
      v29 = *(a2 + 200);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = v29;
      *(a1 + 208) = 1;
    }

    else
    {
      v25 = *(a2 + 144);
      *(a1 + 144) = v25;
      *(a1 + 152) = *(a2 + 152);
      (**(v25 - 8))(a1 + 120, a2 + 120);
      *(a1 + 208) = 0;
    }

    *(a1 + 240) = 1;
  }

  else
  {
    if (v14 == 255)
    {
      v21 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v21;
      v22 = *(a2 + 152);
      v23 = *(a2 + 168);
      v24 = *(a2 + 184);
      *(a1 + 193) = *(a2 + 193);
      *(a1 + 184) = v24;
      *(a1 + 168) = v23;
      *(a1 + 152) = v22;
    }

    else if (v14)
    {
      *(a1 + 120) = *(a2 + 120);
      v16 = *(a2 + 152);

      if (v16)
      {
        *(a1 + 152) = v16;
        *(a1 + 160) = *(a2 + 160);
        (**(v16 - 8))(a1 + 128, a2 + 128, v16);
      }

      else
      {
        v30 = *(a2 + 128);
        v31 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v30;
        *(a1 + 144) = v31;
      }

      if (*(a2 + 176) == 1)
      {
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 172) = *(a2 + 172);
        *(a1 + 176) = *(a2 + 176);
      }

      *(a1 + 184) = *(a2 + 184);
      v32 = *(a2 + 200);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = v32;
      *(a1 + 208) = 1;
    }

    else
    {
      v26 = *(a2 + 144);
      *(a1 + 144) = v26;
      *(a1 + 152) = *(a2 + 152);
      (**(v26 - 8))(a1 + 120, a2 + 120);
      *(a1 + 208) = 0;
    }

    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = 0;
  }

LABEL_43:
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);

  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);
  return a1;
}

uint64_t assignWithTake for NavigationColumnState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 48))
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v4;

      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);

      *(a1 + 72) = *(a2 + 72);

      *(a1 + 80) = *(a2 + 80);

      *(a1 + 88) = *(a2 + 88);
      goto LABEL_6;
    }

    outlined destroy of NavigationListState(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
LABEL_6:
  *(a1 + 92) = *(a2 + 92);
  if (*(a1 + 104))
  {
    v5 = *(a2 + 104);
    if (v5)
    {
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = v5;

      *(a1 + 112) = *(a2 + 112);

      if (a1 == a2)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    outlined destroy of NavigationRequest.Action?(a1 + 96, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  if (a1 != a2)
  {
LABEL_12:
    outlined destroy of NavigationColumnState.ColumnContent(a1 + 120);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
  }

LABEL_13:
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);

  v6 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v6;

  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);

  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);
  return a1;
}

unint64_t lazy protocol witness table accessor for type HysteresisState and conformance HysteresisState()
{
  result = lazy protocol witness table cache variable for type HysteresisState and conformance HysteresisState;
  if (!lazy protocol witness table cache variable for type HysteresisState and conformance HysteresisState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HysteresisState, &unk_1EFFCEFC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HysteresisState and conformance HysteresisState);
  }

  return result;
}

void type metadata accessor for (Int, Int, NavigationState.StackContent.ChangeKind)()
{
  if (!lazy cache variable for type metadata for (Int, Int, NavigationState.StackContent.ChangeKind))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Int, Int, NavigationState.StackContent.ChangeKind));
    }
  }
}

void type metadata accessor for (NavigationViewDestinationView, NavigationViewDestinationView)()
{
  if (!lazy cache variable for type metadata for (NavigationViewDestinationView, NavigationViewDestinationView))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationViewDestinationView, NavigationViewDestinationView));
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for PlainListBody(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v6 - 8);
  v11 = *(v10 + 80);
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-2 - v11 - v9) | v11) - *(*(v6 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      v17 = ~v11;
      if ((*(v7 + 48))(v15 + 1))
      {
LABEL_13:
        memcpy(__dst, __src, v9);
LABEL_16:
        *(__dst + v9) = *(__src + v9);
        (*(v10 + 16))((__dst + v9 + v11 + 1) & v17, (__src + v9 + v11 + 1) & v17, v6);
        return __dst;
      }
    }

    else
    {
      v16 = *v15;
      if (*v15 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      v17 = ~v11;
      if (v16 != -1)
      {
        goto LABEL_13;
      }
    }

    *__dst = *__src;
    v22 = v6;
    v18 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v15;
    v19 = *(v7 + 16);

    v20 = v18 + 1;
    v6 = v22;
    v19(v20, v15 + 1, v5);
    goto LABEL_16;
  }

  v14 = *__src;
  *__dst = *__src;
  __dst = (v14 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

void *assignWithCopy for PlainListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v29 = ((v9 + 16) & ~v9) + v10;
    v17 = *(v7 + 48);
    v27 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v5 = a1;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v11 = v29;
    v3 = a3;
    if (!v27)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v31, (v13 + v9 + 8) & v31, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v31, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    v18 = v9 + 8;
    v19 = v12 + v9 + 8;
    v20 = v11;
    v21 = v4;
    v22 = v13 + v18;
    v23 = *(v7 + 16);

    v24 = v22 & v31;
    v4 = v21;
    v11 = v20;
    v23(v19 & v31, v24, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  *(v5 + v11) = *(v4 + v11);
  v25 = *(*(v3 + 16) - 8);
  (*(v25 + 24))((v5 + v11 + *(v25 + 80) + 1) & ~*(v25 + 80), (v4 + v11 + *(v25 + 80) + 1) & ~*(v25 + 80));
  return v5;
}

void *initializeWithTake for PlainListBody(void *__dst, void *__src, uint64_t a3)
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
    (*(v7 + 32))((v15 + v8 + 8) & v9, (v12 + v8 + 8) & v9, v6);
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
  *(__dst + v14) = *(__src + v14);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 32))((__dst + v14 + *(v16 + 80) + 1) & ~*(v16 + 80), (__src + v14 + *(v16 + 80) + 1) & ~*(v16 + 80));
  return __dst;
}

void *assignWithTake for PlainListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v9 + 16) & ~v9) + v10;
    v16 = *(v7 + 48);
    v19 = v16((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v5 = a1;
    v15 = v16((v13 + v9 + 8) & ~v9, v8, v6);
    v3 = a3;
    v4 = a2;
    v11 = v21;
    if (!v19)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 40))((v12 + v9 + 8) & v24, (v13 + v9 + 8) & v24, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v24, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    (*(v7 + 32))((v12 + v9 + 8) & v24, (v13 + v9 + 8) & v24, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  *(v5 + v11) = *(v4 + v11);
  v17 = *(*(v3 + 16) - 8);
  (*(v17 + 40))((v5 + v11 + *(v17 + 80) + 1) & ~*(v17 + 80), (v4 + v11 + *(v17 + 80) + 1) & ~*(v17 + 80));
  return v5;
}

uint64_t getEnumTagSinglePayload for PlainListBody(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v8 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64);
  v16 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v17 = ((v13 + v15 + 1) & ~v13) + *(*(v9 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      if (v8 >= v11)
      {
        v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v30 = (*(v5 + 48))((v28 + v12 + 8) & ~v12);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          v30 = v29 + 1;
        }

        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v25 = ~v13;
        v26 = a1 + v13 + v15 + 1;
        v27 = *(v10 + 48);

        return v27(v26 & v25, v11, v9);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = v17;
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

  return v14 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for PlainListBody(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(*(*(a4 + 24) - 8) + 64);
  v13 = *(v9 + 80);
  v14 = v8 - 1;
  if (v8 - 1 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = v8 - 1;
  }

  v16 = ((v11 + 16) & ~v11) + v12;
  v17 = ((v13 + v16 + 1) & ~v13) + *(v9 + 64);
  v18 = a3 >= v15;
  v19 = a3 - v15;
  if (v19 != 0 && v18)
  {
    if (v17 <= 3)
    {
      v23 = ((v19 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
      if (HIWORD(v23))
      {
        v20 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v20 = v24;
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v15 < a2)
  {
    v21 = ~v15 + a2;
    if (v17 >= 4)
    {
      bzero(a1, v17);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v22 = (v21 >> (8 * v17)) + 1;
    if (v17)
    {
      v25 = v21 & ~(-1 << (8 * v17));
      bzero(a1, v17);
      if (v17 != 3)
      {
        if (v17 == 2)
        {
          *a1 = v25;
          if (v20 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v21;
          if (v20 > 1)
          {
LABEL_14:
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

LABEL_60:
        if (v20)
        {
          a1[v17] = v22;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v20 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
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

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v14 < v10)
  {
    v26 = *(v9 + 56);

    v26(&a1[v13 + 1 + v16] & ~v13);
    return;
  }

  if (v14 < a2)
  {
    if (v16 <= 3)
    {
      v27 = ~(-1 << (8 * v16));
    }

    else
    {
      v27 = -1;
    }

    if (!v16)
    {
      return;
    }

    v28 = v27 & (a2 - v8);
    if (v16 <= 3)
    {
      v29 = ((v11 + 16) & ~v11) + v12;
    }

    else
    {
      v29 = 4;
    }

    bzero(a1, ((v11 + 16) & ~v11) + v12);
    if (v29 <= 2)
    {
      if (v29 == 1)
      {
LABEL_49:
        *a1 = v28;
        return;
      }

LABEL_74:
      *a1 = v28;
      return;
    }

    goto LABEL_75;
  }

  if (a2 >= v8)
  {
    if (v16 <= 3)
    {
      v31 = ~(-1 << (8 * v16));
    }

    else
    {
      v31 = -1;
    }

    if (!v16)
    {
      return;
    }

    v28 = v31 & (a2 - v8);
    if (v16 <= 3)
    {
      v29 = ((v11 + 16) & ~v11) + v12;
    }

    else
    {
      v29 = 4;
    }

    bzero(a1, ((v11 + 16) & ~v11) + v12);
    if (v29 <= 2)
    {
      if (v29 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }

LABEL_75:
    if (v29 == 3)
    {
      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    else
    {
      *a1 = v28;
    }

    return;
  }

  v30 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v32 = *(v6 + 56);
    v33 = a2 + 1;

    v32((v30 + v11 + 8) & ~v11, v33);
  }

  else if (((a2 + 1) & 0x80000000) != 0)
  {
    *v30 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v30 = a2;
  }
}

uint64_t PlainListBody.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v44 = a1[2];
  v4 = v44;
  v45 = v3;
  v46 = v6;
  v47 = v5;
  v7 = type metadata accessor for PlainListBody.CollectionViewBody(255, &v44);
  v44 = v4;
  v45 = v3;
  v46 = v6;
  v47 = v5;
  v25 = type metadata accessor for PlainListBody.TableViewRoot(255, &v44);
  v26 = type metadata accessor for _VariadicView.Tree();
  v8 = type metadata accessor for StaticIf();
  v9 = type metadata accessor for ModifiedContent();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v25 - v12;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v36 = v4;
  v37 = v3;
  v38 = v6;
  v39 = v5;
  v40 = v2;
  v31 = v4;
  v32 = v3;
  v33 = v6;
  v34 = v5;
  v35 = v2;
  v17 = lazy protocol witness table accessor for type CollectionViewPlainListsEnabled and conformance CollectionViewPlainListsEnabled();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>.CollectionViewBody, v7);
  v43[0] = swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>.TableViewRoot, v25);
  v43[1] = v6;
  v24 = swift_getWitnessTable(MEMORY[0x1E697E308], v26, v43);
  StaticIf<>.init(_:then:else:)();
  v42[0] = v17;
  v42[1] = WitnessTable;
  v42[2] = v24;
  v19 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v8, v42);
  v20 = v27;
  MEMORY[0x18D00A570](v19, v8, &type metadata for PlainListScrollContentBackgroundModifier, v19);
  (*(v13 + 8))(v16, v8);
  v41[0] = v19;
  v41[1] = &protocol witness table for PlainListScrollContentBackgroundModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v41);
  v21 = v28;
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v29 + 8);
  v22(v20, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v21, v9);
}

uint64_t closure #1 in PlainListBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v9 = type metadata accessor for PlainListBody.CollectionViewBody(0, &v19);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v16 = type metadata accessor for PlainListBody(0, &v19);
  PlainListBody.collectionViewBody.getter(v16, v12);
  swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>.CollectionViewBody, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v10 + 8);
  v17(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v9);
}

uint64_t PlainListBody.collectionViewBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3 + *(a1 + 56), v11, v13);
  (*(v8 + 16))(v10, v3, v7);
  return PlainListBody.CollectionViewBody.init(content:selection:)(v15, v10, v11, v6, *(a1 + 32), *(a1 + 40), a2);
}

uint64_t closure #2 in PlainListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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
  v13 = type metadata accessor for PlainListBody.TableViewRoot(0, v44);
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
  PlainListBody.TableViewRoot.init(selection:)(v24, a2, v31, v32, v33, v15);
  v38 = a2;
  v39 = v26;
  v40 = v25;
  v41 = v27;
  v42 = v23;
  _VariadicView.Tree.init(_:content:)();
  v43[0] = swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>.TableViewRoot, v13);
  v43[1] = v25;
  swift_getWitnessTable(MEMORY[0x1E697E308], v16, v43);
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v35 + 8);
  v28(v18, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v22, v16);
}

uint64_t PlainListBody.TableViewRoot.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v12 = *(type metadata accessor for PlainListBody.TableViewRoot(0, v15) + 56);
  type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  return (*(*(v13 - 8) + 32))(a6 + v12, a1, v13);
}

uint64_t closure #1 in closure #2 in PlainListBody.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for PlainListBody(0, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t PlainListBody.CollectionViewBody.init(content:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 24) = 0;
  v19 = 0;
  *(a7 + 32) = swift_getKeyPath();
  *(a7 + 97) = 0;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v14 = type metadata accessor for PlainListBody.CollectionViewBody(0, v18);
  (*(*(a3 - 8) + 32))(a7 + *(v14 + 60), a1, a3);
  v15 = *(v14 + 64);
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  return (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
}

uint64_t PlainListBody.CollectionViewBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v53 = *(a1 + 24);
  v5 = v53;
  type metadata accessor for Binding();
  v57 = type metadata accessor for Optional();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v41 - v6;
  v48 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v43 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 16);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(a1 + 32);
  v10 = lazy protocol witness table accessor for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier();
  v62[0] = v9;
  v62[1] = v10;
  v58 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v62);
  v51 = *(a1 + 40);
  *&v63 = v8;
  *(&v63 + 1) = v5;
  *&v64 = WitnessTable;
  *(&v64 + 1) = v51;
  v46 = type metadata accessor for CollectionViewListRoot(0, &v63);
  v50 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v41 - v11;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier>(255);
  v47 = v13;
  v14 = type metadata accessor for ModifiedContent();
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v41 - v17;
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  View.scrollContentBackground(_:)(0, v42, v9);
  (*(v18 + 16))(v21, v24, v8);
  v25 = v45;
  (*(v43 + 104))(v45, *MEMORY[0x1E69DC248], v48);
  v26 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8));
  v27 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v28)
  {
    v29 = 26.0;
  }

  else
  {
    v29 = v27;
  }

  v30 = v2 + *(a1 + 64);
  v31 = v55;
  (*(v56 + 16))(v55, v30, v57);
  v32 = *(v2 + 80);
  v65 = *(v2 + 64);
  v66 = v32;
  v67 = *(v2 + 96);
  v33 = *(v2 + 48);
  v63 = *(v2 + 32);
  v64 = v33;
  specialized Environment.wrappedValue.getter(v61);
  v34 = CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)(v21, v25, v31, v61, v8, v53, WitnessTable, v51, v12, v26, v29);
  v35 = v44;
  v36 = v46;
  MEMORY[0x18D00A570](v34);
  (*(v50 + 8))(v12, v36);
  (*(v18 + 8))(v24, v8);
  v37 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v60[0] = &protocol witness table for CollectionViewListRoot<A, B>;
  v60[1] = v37;
  swift_getWitnessTable(v58, v14, v60);
  v38 = v49;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v54 + 8);
  v39(v35, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v39)(v38, v14);
}

uint64_t PlainListBody.TableViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = *(a2 + 24);
  v34 = a2;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - v8;
  v9 = *(a2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for TableViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableViewListDataSource<A>, v12);
  v41[0] = v12;
  v41[1] = v5;
  v41[2] = WitnessTable;
  v41[3] = v9;
  v13 = type metadata accessor for TableViewListCore(0, v41);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  outlined init with copy of _VariadicView_Children(a1, v40);
  v19 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8) | (*(v3 + 9) << 8));
  v21 = v20;
  v22 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v23)
  {
    v22 = 26.0;
  }

  TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)(v40, 0, v19, v21 & 1, v41, v22);
  v24 = v3 + *(v34 + 56);
  v25 = v35;
  (*(v36 + 16))(v35, v24, v37);
  v26 = WitnessTable;
  TableViewListCore.Configuration.init()(v39);
  TableViewListCore.init(dataSource:selection:configuration:)(v41, v25, v39, v12, v5, v26, v9, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v33 + 8);
  v27(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v18, v13);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance PlainListBody<A, B>.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>.TableViewRoot, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type CollectionViewPlainListsEnabled and conformance CollectionViewPlainListsEnabled()
{
  result = lazy protocol witness table cache variable for type CollectionViewPlainListsEnabled and conformance CollectionViewPlainListsEnabled;
  if (!lazy protocol witness table cache variable for type CollectionViewPlainListsEnabled and conformance CollectionViewPlainListsEnabled)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionViewPlainListsEnabled, &unk_1EFFCF108, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionViewPlainListsEnabled and conformance CollectionViewPlainListsEnabled);
  }

  return result;
}

uint64_t type metadata completion function for PlainListBody.TableViewRoot(uint64_t a1)
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

uint64_t initializeBufferWithCopyOfBuffer for PlainListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-27 - (v7 | 7)) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = *a2;
    v13 = *(a2 + 9);
    v14 = *(a2 + 8);
    outlined copy of Environment<CGFloat?>.Content(*a2, v14, v13);
    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 9) = v13;
    v16 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 9);
    v20 = *(v17 + 8);
    outlined copy of Environment<CGFloat?>.Content(*v17, v20, v19);
    *v16 = v18;
    *(v16 + 8) = v20;
    *(v16 + 9) = v19;
    v21 = v16 + 17;
    v22 = ((v17 + 17) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v26 = (*(v5 + 48))(v23 + 1, v6, v4);
      v25 = (v21 & 0xFFFFFFFFFFFFFFF8);
      if (v26)
      {
LABEL_13:
        memcpy(v25, ((v17 + 17) & 0xFFFFFFFFFFFFFFF8), v8);
        return a1;
      }
    }

    else
    {
      v24 = *v23;
      if (*v23 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      v25 = (v21 & 0xFFFFFFFFFFFFFFF8);
      if (v24 != -1)
      {
        goto LABEL_13;
      }
    }

    *v25 = *v22;
    v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v23;
    v28 = *(v5 + 16);

    v28(v27 + 1, v23 + 1, v4);
    return a1;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = v11 + ((v7 + 16) & ~(v7 | 7));

  return a1;
}

uint64_t destroy for PlainListBody.TableViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5.n128_f64[0] = outlined consume of Environment<CGFloat?>.Content(*v4, *(v4 + 8), *(v4 + 9));
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + (v8 | 7) + 10) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10, v5);
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

uint64_t initializeWithCopy for PlainListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v13 = *(a3 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = (v15 | 7) + 10;
  v17 = ((v16 + v9) & ~(v15 | 7));
  v18 = ((v16 + v10) & ~(v15 | 7));
  v19 = ~v15;
  v20 = *(v14 + 64);
  v21 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v14 + 84) & 0x80000000) == 0)
  {
    v22 = *v21;
    if (*v21 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    if (v22 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v17 = *v18;
    v23 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v21;
    v24 = v23 + v15 + 8;
    v25 = *(v14 + 16);

    v25(v24 & v19, (v21 + v15 + 8) & v19, v13);
    return a1;
  }

  if (!(*(v14 + 48))((v21 + v15 + 8) & v19))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v17, v18, ((v15 + 16) & ~v15) + v20);
  return a1;
}

uint64_t assignWithCopy for PlainListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 9);
  v8 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v8, v7);
  v9 = *a1;
  v10 = *(a1 + 9);
  *a1 = v6;
  v11 = *(a1 + 8);
  *(a1 + 8) = v8;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v9, v11, v10);
  v12 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v6) = *(v13 + 9);
  v15 = *(v13 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v13, v15, v6);
  v16 = *v12;
  v17 = *(v12 + 9);
  *v12 = v14;
  v18 = *(v12 + 8);
  *(v12 + 8) = v15;
  *(v12 + 9) = v6;
  v19.n128_f64[0] = outlined consume of Environment<CGFloat?>.Content(v16, v18, v17);
  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = (v22 | 7) + 10;
  v24 = ((v23 + v12) & ~(v22 | 7));
  v25 = v23 + v13;
  v26 = (v25 & ~(v22 | 7));
  v27 = *(v21 + 84);
  v28 = ~v22;
  v29 = (v22 + 16) & ~v22;
  v30 = *(v21 + 64);
  v31 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v27 & 0x80000000) != 0)
  {
    v47 = v24;
    v48 = v25 & ~(v22 | 7);
    v39 = *(v21 + 48);
    v46 = v31;
    v45 = *(*(v20 - 8) + 64);
    v44 = v39((v31 + v22 + 8) & ~v22, v27, v20, v19);
    v32 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v28 = ~v22;
    v34 = (v39)((v32 + v22 + 8) & ~v22, v27, v20);
    v30 = v45;
    v29 = (v22 + 16) & ~v22;
    v31 = v46;
    v24 = v47;
    v26 = v48;
    if (!v44)
    {
LABEL_5:
      v35 = v31;
      if (!v34)
      {
        *v24 = *v26;

        *v35 = *v32;

        (*(v21 + 24))((v35 + v22 + 8) & v28, (v32 + v22 + 8) & v28, v20);
        return a1;
      }

      v36 = v29;
      v37 = v30;

      (*(v21 + 8))((v35 + v22 + 8) & v28, v20);
      v38 = v36 + v37;
      goto LABEL_10;
    }
  }

  else
  {
    v32 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = *v32;
    if (*v32 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v33) = -1;
    }

    v34 = v33 + 1;
    if (*v31 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v34)
  {
    *v24 = *v26;
    *v31 = *v32;
    v40 = v20;
    v41 = v31 + v22 + 8;
    v42 = *(v21 + 16);

    v42(v41 & v28, (v32 + v22 + 8) & v28, v40);
    return a1;
  }

  v38 = v29 + v30;
LABEL_10:
  memcpy(v24, v26, v38);
  return a1;
}

uint64_t initializeWithTake for PlainListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + 10;
  v11 = ((v10 + v4) & ~(v9 | 7));
  v12 = ((v10 + v5) & ~(v9 | 7));
  v13 = ~v9;
  v14 = *(v8 + 64);
  v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v16 = *v15;
    if (*v15 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    if (v16 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v17 = (v11 + 15);
    *(v17 & 0xFFFFFFFFFFFFFFF8) = *v15;
    (*(v8 + 32))((v9 + 8 + (v17 & 0xFFFFFFFFFFFFFFF8)) & v13, (v15 + v9 + 8) & v13, v7);
    return a1;
  }

  if (!(*(v8 + 48))((v15 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, ((v9 + 16) & ~v9) + v14);
  return a1;
}

uint64_t assignWithTake for PlainListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *a1;
  v9 = *(a1 + 9);
  *a1 = *a2;
  v10 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  v14 = *(v12 + 9);
  v15 = *v11;
  v16 = *(v11 + 9);
  *v11 = *v12;
  v17 = *(v11 + 8);
  *(v11 + 8) = v13;
  *(v11 + 9) = v14;
  v18.n128_f64[0] = outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v19 = *(a3 + 24);
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = (v21 | 7) + 10;
  v23 = ((v22 + v11) & ~(v21 | 7));
  v24 = v22 + v12;
  v25 = (v24 & ~(v21 | 7));
  v26 = *(v20 + 84);
  v27 = ~v21;
  v28 = (v21 + 16) & ~v21;
  v29 = *(v20 + 64);
  v30 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v26 & 0x80000000) != 0)
  {
    v42 = v24 & ~(v21 | 7);
    v41 = v23;
    v37 = *(v20 + 48);
    v40 = *(v20 + 64);
    v39 = v37((v30 + v21 + 8) & ~v21, v26, v19, v18);
    v31 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
    v27 = ~v21;
    v33 = (v37)((v31 + v21 + 8) & ~v21, v26, v19);
    v29 = v40;
    v28 = (v21 + 16) & ~v21;
    v23 = v41;
    v25 = v42;
    if (!v39)
    {
LABEL_5:
      if (!v33)
      {
        *v23 = *v25;

        *v30 = *v31;

        (*(v20 + 40))((v30 + v21 + 8) & v27, (v31 + v21 + 8) & v27, v19);
        return a1;
      }

      v34 = v28;
      v35 = v29;

      (*(v20 + 8))((v30 + v21 + 8) & v27, v19);
      v36 = v34 + v35;
      goto LABEL_10;
    }
  }

  else
  {
    v31 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = *v31;
    if (*v31 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v32) = -1;
    }

    v33 = v32 + 1;
    if (*v30 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v33)
  {
    *v23 = *v25;
    *v30 = *v31;
    (*(v20 + 32))((v30 + v21 + 8) & v27, (v31 + v21 + 8) & v27, v19);
    return a1;
  }

  v36 = v28 + v29;
LABEL_10:
  memcpy(v23, v25, v36);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlainListBody.TableViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-27 - v8) | v8) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + v8 + 10) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-27 - v8) | v8) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-27 - v8) | v8) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void storeEnumTagSinglePayload for PlainListBody.TableViewRoot(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v11 = -2 - (((-27 - (v10 | 7)) | v10 | 7) + ((-17 - v10) | v10) - *(*(*(a4 + 24) - 8) + 64));
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
      v18 = ((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + (v10 | 7) + 10) & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
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

uint64_t type metadata completion function for PlainListBody.CollectionViewBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlainListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  if ((v8 | v6) <= 7 && ((*(v7 + 80) | *(v5 + 80)) & 0x100000) == 0 && ((((-99 - v6) | v6) - (*(*(*(a3 + 16) - 8) + 64) + (v8 | 7))) | v8 | 7) - (((v8 + 16) & ~v8) + *(*(v4 - 8) + 64)) >= 0xFFFFFFFFFFFFFFE7)
  {
    __n = ((v8 + 16) & ~v8) + *(*(v4 - 8) + 64);
    v50 = *(v4 - 8);
    v51 = *(a3 + 24);
    v13 = *a2;
    v14 = *(a2 + 8);
    v46 = *(*(a3 + 16) - 8);
    v47 = *(a3 + 16);
    v15 = a2;
    v49 = *(v7 + 84);
    v48 = *(v46 + 64);
    outlined copy of Environment<Bool>.Content();
    *a1 = v13;
    *(a1 + 8) = v14;
    v52 = a1;
    v16 = a1 & 0xFFFFFFFFFFFFFFF8;
    v15 &= 0xFFFFFFFFFFFFFFF8;
    v17 = *(v15 + 16);
    v18 = *(v15 + 25);
    v19 = *(v15 + 24);
    outlined copy of Environment<CGFloat?>.Content(v17, v19, v18);
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 25) = v18;
    v20 = (v16 + 33) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v15 + 33) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v27 = *(v21 + 32);
    v26 = *(v21 + 40);
    v28 = *(v21 + 56);
    v43 = *(v21 + 48);
    v44 = *(v21 + 64);
    v45 = *(v21 + 65);
    v29 = outlined copy of Environment<ListPadding>.Content(*v21, v23, v24, v25, v27, v26, v43, v28, v44, v45);
    *v20 = v22;
    *(v20 + 8) = v23;
    *(v20 + 16) = v24;
    *(v20 + 24) = v25;
    *(v20 + 32) = v27;
    *(v20 + 40) = v26;
    *(v20 + 48) = v43;
    *(v20 + 56) = v28;
    *(v20 + 64) = v44;
    *(v20 + 65) = v45;
    v30 = (v21 + v6 + 66) & ~v6;
    (*(v46 + 16))((v20 + v6 + 66) & ~v6, v30, v47, v29);
    v31 = v48 + 7 + ((v20 + v6 + 66) & ~v6);
    v32 = ((v48 + 7 + v30) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v49 < 0)
    {
      v36 = v50;
      v35 = v51;
      v38 = (*(v50 + 48))(v33 + 1);
      v37 = (v31 & 0xFFFFFFFFFFFFFFF8);
      if (v38)
      {
LABEL_13:
        memcpy(v37, v32, __n);
        return v52;
      }
    }

    else
    {
      v34 = *v33;
      if (*v33 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      v36 = v50;
      v35 = v51;
      v37 = (v31 & 0xFFFFFFFFFFFFFFF8);
      if (v34 != -1)
      {
        goto LABEL_13;
      }
    }

    *v37 = *v32;
    v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v33;
    v40 = *(v36 + 16);

    v40(v39 + 1, v33 + 1, v35);
    return v52;
  }

  v11 = *a2;
  *a1 = *a2;
  v12 = v11 + (((v8 | v6) & 0xF8 ^ 0x1F8) & ((v8 | v6) + 16));

  return v12;
}

uint64_t destroy for PlainListBody.CollectionViewBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  v4 = (v3 + 33) & 0xFFFFFFFFFFFFFFF8;
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

uint64_t initializeWithCopy for PlainListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v42 = *(v12 + 64);
  v43 = *(v12 + 65);
  v21 = outlined copy of Environment<ListPadding>.Content(*v12, v14, v15, v16, v17, v18, v19, v20, v42, v43);
  *v11 = v13;
  *(v11 + 8) = v14;
  *(v11 + 16) = v15;
  *(v11 + 24) = v16;
  *(v11 + 32) = v17;
  *(v11 + 40) = v18;
  *(v11 + 48) = v19;
  *(v11 + 56) = v20;
  *(v11 + 64) = v42;
  *(v11 + 65) = v43;
  v22 = *(*(a3 + 16) - 8);
  v23 = v22 + 16;
  v24 = *(v22 + 80);
  v25 = (v24 + 66 + v11) & ~v24;
  v26 = (v24 + 66 + v12) & ~v24;
  (*(v22 + 16))(v25, v26, v21);
  v27 = *(a3 + 24);
  v28 = *(v23 + 48);
  v29 = *(v27 - 8);
  v30 = *(v29 + 80);
  v31 = (v30 | 7) + v28;
  v32 = ((v31 + v25) & ~(v30 | 7));
  v33 = ((v31 + v26) & ~(v30 | 7));
  v34 = ~v30;
  v35 = *(v29 + 64);
  v36 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v29 + 84) & 0x80000000) == 0)
  {
    v37 = *v36;
    if (*v36 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    if (v37 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v32 = *v33;
    v38 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v38 = *v36;
    v39 = v38 + v30 + 8;
    v40 = *(v29 + 16);

    v40(v39 & v34, (v36 + v30 + 8) & v34, v27);
    return v45;
  }

  if (!(*(v29 + 48))((v36 + v30 + 8) & v34))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v32, v33, ((v30 + 16) & ~v30) + v35);
  return v45;
}

uint64_t assignWithCopy for PlainListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Bool>.Content(v7, v8);
  v64 = a1;
  a1 &= 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v9 + 25);
  v11 = *(v9 + 24);
  outlined copy of Environment<CGFloat?>.Content(v10, v11, v5);
  v12 = *(a1 + 16);
  v13 = *(a1 + 25);
  *(a1 + 16) = v10;
  v14 = *(a1 + 24);
  *(a1 + 24) = v11;
  *(a1 + 25) = v5;
  outlined consume of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = (v9 + 33) & 0xFFFFFFFFFFFFFFF8;
  v61 = *(v15 + 8);
  v62 = *v15;
  v16 = (a1 + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 16);
  v18 = *(v15 + 24);
  v19 = *(v15 + 32);
  v20 = *(v15 + 40);
  v21 = *(v15 + 48);
  v22 = *(v15 + 56);
  LOBYTE(v10) = *(v15 + 64);
  LOBYTE(v5) = *(v15 + 65);
  outlined copy of Environment<ListPadding>.Content(*v15, v61, v17, v18, v19, v20, v21, v22, v10, v5);
  v23 = *v16;
  v24 = *(v16 + 8);
  v25 = *(v16 + 16);
  v26 = *(v16 + 24);
  v27 = *(v16 + 32);
  v28 = *(v16 + 40);
  v29 = *(v16 + 48);
  v30 = *(v16 + 56);
  v31 = *(v16 + 64);
  v32 = *(v16 + 65);
  *v16 = v62;
  *(v16 + 8) = v61;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v19;
  *(v16 + 40) = v20;
  *(v16 + 48) = v21;
  *(v16 + 56) = v22;
  *(v16 + 64) = v10;
  *(v16 + 65) = v5;
  v33 = outlined consume of Environment<ListPadding>.Content(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v34 = *(*(a3 + 16) - 8);
  v35 = v34 + 24;
  v36 = *(v34 + 80);
  v37 = (v36 + 66 + v16) & ~v36;
  v38 = (v36 + 66 + v15) & ~v36;
  (*(v34 + 24))(v37, v38, v33);
  v39 = *(a3 + 24);
  v40 = *(v39 - 8);
  v41 = *(v40 + 80);
  v42 = (v41 | 7) + *(v35 + 40);
  v43 = ((v42 + v37) & ~(v41 | 7));
  v44 = ((v42 + v38) & ~(v41 | 7));
  v45 = *(v40 + 84);
  v46 = ~v41;
  v47 = (v41 + 16) & ~v41;
  v48 = *(v40 + 64);
  v49 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v45 & 0x80000000) != 0)
  {
    v60 = *(v40 + 64);
    v55 = v44;
    v56 = *(v40 + 48);
    v59 = v56((v49 + v41 + 8) & ~v41, v45, v39);
    v50 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
    v46 = ~v41;
    v52 = v56((v50 + v41 + 8) & ~v41, v45, v39);
    v49 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
    v44 = v55;
    v48 = v60;
    v47 = (v41 + 16) & ~v41;
    if (!v59)
    {
LABEL_5:
      if (!v52)
      {
        *v43 = *v44;

        *v49 = *v50;

        (*(v40 + 24))((v49 + v41 + 8) & v46, (v50 + v41 + 8) & v46, v39);
        return v64;
      }

      v53 = v48;

      (*(v40 + 8))((v49 + v41 + 8) & v46, v39);
      v54 = v47 + v53;
      goto LABEL_10;
    }
  }

  else
  {
    v50 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
    v51 = *v50;
    if (*v50 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v51) = -1;
    }

    v52 = v51 + 1;
    if (*v49 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v52)
  {
    *v43 = *v44;
    *v49 = *v50;
    v57 = *(v40 + 16);

    v57((v49 + v41 + 8) & v46, (v50 + v41 + 8) & v46, v39);
    return v64;
  }

  v54 = v47 + v48;
LABEL_10:
  memcpy(v43, v44, v54);
  return v64;
}

uint64_t initializeWithTake for PlainListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 16) = v6;
  v7 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 32);
  v9 = *(v8 + 48);
  v11 = *(v8 + 16);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  *(v7 + 16) = v11;
  *v7 = *v8;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v14 + 66 + v7) & ~v14;
  v16 = (v14 + 66 + v8) & ~v14;
  (*(v12 + 32))(v15, v16);
  v17 = *(a3 + 24);
  v18 = *(v13 + 32);
  v19 = *(v17 - 8);
  v20 = *(v19 + 80);
  v21 = (v20 | 7) + v18;
  v22 = ((v21 + v15) & ~(v20 | 7));
  v23 = ((v21 + v16) & ~(v20 | 7));
  v24 = ~v20;
  v25 = *(v19 + 64);
  v26 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v19 + 84) & 0x80000000) == 0)
  {
    v27 = *v26;
    if (*v26 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    if (v27 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v22 = *v23;
    v28 = (v22 + 15);
    *(v28 & 0xFFFFFFFFFFFFFFF8) = *v26;
    (*(v19 + 32))((v20 + 8 + (v28 & 0xFFFFFFFFFFFFFFF8)) & v24, (v26 + v20 + 8) & v24, v17);
    return a1;
  }

  if (!(*(v19 + 48))((v26 + v20 + 8) & v24))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v22, v23, ((v20 + 16) & ~v20) + v25);
  return a1;
}

uint64_t assignWithTake for PlainListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 &= 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + 24);
  v12 = *(v4 + 25);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v10 + 16) = *(v4 + 16);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 24) = v11;
  *(v10 + 25) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = (v4 + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 64);
  v18 = *(v16 + 65);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = *(v19 + 32);
  v25 = *(v19 + 40);
  v26 = *(v19 + 48);
  v27 = *(v19 + 56);
  v28 = *(v19 + 64);
  v29 = *(v19 + 65);
  v30 = *(v16 + 16);
  v31 = *(v16 + 32);
  v32 = *(v16 + 48);
  *v19 = *v16;
  *(v19 + 16) = v30;
  *(v19 + 32) = v31;
  *(v19 + 48) = v32;
  *(v19 + 64) = v17;
  *(v19 + 65) = v18;
  v33 = outlined consume of Environment<ListPadding>.Content(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v34 = *(*(a3 + 16) - 8);
  v35 = v34 + 40;
  v36 = *(v34 + 80);
  v37 = (v36 + 66 + v19) & ~v36;
  v38 = (v36 + 66 + v16) & ~v36;
  (*(v34 + 40))(v37, v38, v33);
  v39 = *(a3 + 24);
  v40 = *(v39 - 8);
  v41 = *(v40 + 80);
  v42 = (v41 | 7) + *(v35 + 24);
  v43 = ((v42 + v37) & ~(v41 | 7));
  v44 = ((v42 + v38) & ~(v41 | 7));
  v45 = *(v40 + 84);
  v46 = (v41 + 16) & ~v41;
  v47 = *(v40 + 64);
  v48 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v59 = ~v41;
  if ((v45 & 0x80000000) != 0)
  {
    v58 = v44;
    v54 = *(v40 + 48);
    v57 = *(v40 + 64);
    v56 = v54((v48 + v41 + 8) & ~v41, v45, v39);
    v49 = ((v58 + 15) & 0xFFFFFFFFFFFFFFF8);
    v51 = v54((v49 + v41 + 8) & ~v41, v45, v39);
    v47 = v57;
    v46 = (v41 + 16) & ~v41;
    v44 = v58;
    if (!v56)
    {
LABEL_5:
      if (!v51)
      {
        *v43 = *v44;

        *v48 = *v49;

        (*(v40 + 40))((v48 + v41 + 8) & v59, (v49 + v41 + 8) & v59, v39);
        return a1;
      }

      v52 = v47;

      (*(v40 + 8))((v48 + v41 + 8) & v59, v39);
      v53 = v46 + v52;
      goto LABEL_10;
    }
  }

  else
  {
    v49 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
    v50 = *v49;
    if (*v49 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v50) = -1;
    }

    v51 = v50 + 1;
    if (*v48 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v51)
  {
    *v43 = *v44;
    *v48 = *v49;
    (*(v40 + 32))((v48 + v41 + 8) & v59, (v49 + v41 + 8) & v59, v39);
    return a1;
  }

  v53 = v46 + v47;
LABEL_10:
  memcpy(v43, v44, v53);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlainListBody.CollectionViewBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v6 + 80);
  v14 = *(*(v5 - 8) + 64);
  v15 = *(v8 + 80);
  if (v7 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-99 - v13) | v13) - (v14 + v17)) | v17) - 2;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_31:
      v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + v13 + 66) & ~v13;
      if (v7 >= v12)
      {
        v31 = *(v6 + 48);

        return v31(v27, v7, v5);
      }

      else
      {
        v28 = ((((v27 + v14 + v17) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) != 0)
        {
          v30 = (*(v9 + 48))((v28 + v15 + 8) & ~v15);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          v30 = v29 + 1;
        }

        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_31;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-99 - v13) | v13) - (v14 + v17)) | v17) == 2)
  {
    v26 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v25 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-99 - v13) | v13) - (v14 + v17)) | v17) - 2;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  return v16 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for PlainListBody.CollectionViewBody(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = v13 - 1;
  if (v7 <= v13 - 1)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + *(v8 + 64);
  v18 = (((v12 | 7) + v11 + ((v10 + 98) & ~v10)) & ~(v12 | 7)) + v17;
  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v24 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
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

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v23 = (v22 >> (8 * v18)) + 1;
    if (v18)
    {
      v26 = v22 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_14:
            if (v21 == 2)
            {
              *(a1 + v18) = v23;
            }

            else
            {
              *(a1 + v18) = v23;
            }

            return;
          }
        }

LABEL_60:
        if (v21)
        {
          *(a1 + v18) = v23;
        }

        return;
      }

      *a1 = v26;
      *(a1 + 2) = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v18) = 0;
  }

  else if (v21)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + v10 + 66) & ~v10;
  if (v7 >= v14)
  {
    v32 = *(v6 + 56);

    v32(v27);
  }

  else
  {
    v28 = (v27 + v11 + v16) & ~v16;
    if (v14 >= a2)
    {
      if (a2 >= v13)
      {
        if (v17 <= 3)
        {
          v34 = ~(-1 << (8 * v17));
        }

        else
        {
          v34 = -1;
        }

        if (v17)
        {
          v30 = v34 & (a2 - v13);
          if (v17 <= 3)
          {
            v31 = v17;
          }

          else
          {
            v31 = 4;
          }

          bzero(((v27 + v11 + v16) & ~v16), v17);
          if (v31 <= 2)
          {
            if (v31 == 1)
            {
              goto LABEL_46;
            }

            goto LABEL_74;
          }

LABEL_75:
          if (v31 == 3)
          {
            *v28 = v30;
            *(v28 + 2) = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }
      }

      else
      {
        v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v35 = *(v8 + 56);
          v36 = a2 + 1;

          v35((v33 + v12 + 8) & ~v12, v36);
        }

        else if (((a2 + 1) & 0x80000000) != 0)
        {
          *v33 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v33 = a2;
        }
      }
    }

    else
    {
      if (v17 <= 3)
      {
        v29 = ~(-1 << (8 * v17));
      }

      else
      {
        v29 = -1;
      }

      if (v17)
      {
        v30 = v29 & (a2 - v13);
        if (v17 <= 3)
        {
          v31 = v17;
        }

        else
        {
          v31 = 4;
        }

        bzero(((v27 + v11 + v16) & ~v16), v17);
        if (v31 <= 2)
        {
          if (v31 == 1)
          {
LABEL_46:
            *v28 = v30;
            return;
          }

LABEL_74:
          *v28 = v30;
          return;
        }

        goto LABEL_75;
      }
    }
  }
}

uint64_t instantiation function for generic protocol witness table for PlainListBody<A, B>.TableViewRoot(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>.TableViewRoot);
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PlainListScrollContentBackgroundModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PlainListScrollContentBackgroundModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance PlainListScrollContentBackgroundModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance PlainListScrollContentBackgroundModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type PlainListScrollContentBackgroundModifier and conformance PlainListScrollContentBackgroundModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance CollectionViewPlainListsEnabled(uint64_t *a1)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (v3 == 1 && (static InterfaceIdiomPredicate.evaluate(inputs:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature();
    v1 = static UserDefaultKeyedFeature.isEnabled.getter() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance CollectionViewPlainListsEnabled(__int128 *a1)
{
  v1 = a1[1];
  v6 = *a1;
  v7 = v1;
  v8 = a1[2];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  outlined init with copy of _GraphInputs(&v6, v5);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (LOBYTE(v5[0]) == 1 && (v5[0] = v6, v5[1] = v7, v5[2] = v8, (static InterfaceIdiomPredicate.evaluate(inputs:)() & 1) == 0))
  {
    lazy protocol witness table accessor for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature();
    v3 = static UserDefaultKeyedFeature.isEnabled.getter();
    outlined destroy of _GraphInputs(&v6);
    v2 = v3 ^ 1;
  }

  else
  {
    outlined destroy of _GraphInputs(&v6);
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t lazy protocol witness table accessor for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature()
{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewPlainListsFeature, &type metadata for DisableCollectionViewPlainListsFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature);
  }

  return result;
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(255);
    type metadata accessor for ViewInputFlagModifier<ListConcatenatesFooters>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<ListConcatenatesFooters>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ListConcatenatesFooters>)
  {
    lazy protocol witness table accessor for type ListConcatenatesFooters and conformance ListConcatenatesFooters();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<ListConcatenatesFooters>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ViewInputFlagModifier<ListConcatenatesFooters> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, MEMORY[0x1E6980688]);
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<ListConcatenatesFooters> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ListConcatenatesFooters> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ListConcatenatesFooters>, MEMORY[0x1E697FD30]);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ViewInputFlagModifier<ListConcatenatesFooters>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ListConcatenatesFooters> and conformance ViewInputFlagModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for static Feature.isEnabled.getter in conformance DisableCollectionViewPlainListsFeature(uint64_t a1)
{
  lazy protocol witness table accessor for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DisableCollectionViewPlainListsFeature(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance DisableCollectionViewPlainListsFeature@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type DisableCollectionViewPlainListsFeature and conformance DisableCollectionViewPlainListsFeature();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

double specialized static PlainListScrollContentBackgroundModifier.makeEnvironment(modifier:environment:)(void *a1)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    v3 = a1[1];
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();
    if (v3)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if (!v4)
    {
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();
      if (v3)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.setter();
      if (v3)
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }
    }
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlainListScrollContentBackgroundModifier and conformance PlainListScrollContentBackgroundModifier()
{
  result = lazy protocol witness table cache variable for type PlainListScrollContentBackgroundModifier and conformance PlainListScrollContentBackgroundModifier;
  if (!lazy protocol witness table cache variable for type PlainListScrollContentBackgroundModifier and conformance PlainListScrollContentBackgroundModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainListScrollContentBackgroundModifier, &type metadata for PlainListScrollContentBackgroundModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainListScrollContentBackgroundModifier and conformance PlainListScrollContentBackgroundModifier);
  }

  return result;
}

uint64_t SharePreview.init(_:image:icon:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v29[0] = a7;
  v29[1] = a8;
  v29[2] = a10;
  v29[3] = a11;
  v14 = type metadata accessor for SharePreview(0, v29);
  v15 = *(v14 + 56);
  v16 = *(a7 - 8);
  v26 = *(v16 + 56);
  v26(a9 + v15, 1, 1, a7);
  v17 = *(v14 + 60);
  v18 = *(a8 - 8);
  v19 = *(v18 + 56);
  v19(a9 + v17, 1, 1, a8);
  *(a9 + 32) = Text.init(_:tableName:bundle:comment:)();
  *(a9 + 40) = v20;
  *(a9 + 48) = v21 & 1;
  *(a9 + 56) = v22;
  v23 = type metadata accessor for Optional();
  (*(*(v23 - 8) + 8))(a9 + v15, v23);
  (*(v16 + 32))(a9 + v15, a5, a7);
  v26(a9 + v15, 0, 1, a7);
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 8))(a9 + v17, v24);
  (*(v18 + 32))(a9 + v17, a6, a8);
  return (v19)(a9 + v17, 0, 1, a8);
}

uint64_t SharePreview.init(_:image:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v30[0] = a7;
  v30[1] = a8;
  v30[2] = a10;
  v30[3] = a11;
  v14 = type metadata accessor for SharePreview(0, v30);
  v15 = *(v14 + 56);
  v16 = *(a7 - 8);
  v23 = *(v16 + 56);
  v23(a9 + v15, 1, 1, a7);
  v17 = *(v14 + 60);
  v18 = *(a8 - 8);
  v19 = *(v18 + 56);
  v19(a9 + v17, 1, 1, a8);
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3 & 1;
  *(a9 + 56) = a4;
  v20 = type metadata accessor for Optional();
  (*(*(v20 - 8) + 8))(a9 + v15, v20);
  (*(v16 + 32))(a9 + v15, a5, a7);
  v23(a9 + v15, 0, 1, a7);
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 8))(a9 + v17, v21);
  (*(v18 + 32))(a9 + v17, a6, a8);
  return (v19)(a9 + v17, 0, 1, a8);
}

uint64_t SharePreview.init<A>(_:image:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8)
{
  v50 = a2;
  v51 = a3;
  v13 = *(a6 - 8);
  v44 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = 0u;
  *(a7 + 16) = 0u;
  v52[0] = v16;
  v52[1] = v17;
  v52[2] = v18;
  v52[3] = v19;
  v20 = type metadata accessor for SharePreview(0, v52);
  v21 = *(v20 + 56);
  v41 = a4;
  v42 = v21;
  v22 = a4;
  v23 = *(a4 - 8);
  v45 = *(v23 + 56);
  v45(a7 + v21, 1, 1, v22);
  v24 = *(v20 + 60);
  v43 = a5;
  v25 = *(a5 - 8);
  v46 = v24;
  v47 = v25;
  v26 = *(v25 + 56);
  v48 = v25 + 56;
  v49 = v26;
  v26(a7 + v24, 1, 1, a5);
  (*(v13 + 16))(v15, a1, a6);
  v27 = Text.init<A>(_:)();
  v29 = v28;
  LOBYTE(v20) = v30;
  v32 = v31;
  (*(v13 + 8))(a1, a6);
  *(a7 + 32) = v27;
  *(a7 + 40) = v29;
  *(a7 + 48) = v20 & 1;
  *(a7 + 56) = v32;
  v33 = v41;
  v34 = type metadata accessor for Optional();
  v35 = v42;
  (*(*(v34 - 8) + 8))(a7 + v42, v34);
  (*(v23 + 32))(a7 + v35, v50, v33);
  v45(a7 + v35, 0, 1, v33);
  v36 = v43;
  v37 = type metadata accessor for Optional();
  v38 = v46;
  (*(*(v37 - 8) + 8))(a7 + v46, v37);
  (*(v47 + 32))(a7 + v38, v51, v36);
  return v49(a7 + v38, 0, 1, v36);
}

uint64_t SharePreview<>.init(_:icon:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 64) = 1;
  v19[0] = MEMORY[0x1E69E73E0];
  v19[1] = a6;
  v19[2] = MEMORY[0x1E6965C48];
  v19[3] = a7;
  v10 = *(type metadata accessor for SharePreview(0, v19) + 60);
  v11 = *(a6 - 8);
  v12 = *(v11 + 56);
  v12(a8 + v10, 1, 1, a6);
  *(a8 + 32) = Text.init(_:tableName:bundle:comment:)();
  *(a8 + 40) = v13;
  *(a8 + 48) = v14 & 1;
  *(a8 + 56) = v15;
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 8))(a8 + v10, v16);
  (*(v11 + 32))(a8 + v10, a5, a6);
  return (v12)(a8 + v10, 0, 1, a6);
}

uint64_t SharePreview<>.init(_:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 64) = 1;
  v20[0] = MEMORY[0x1E69E73E0];
  v20[1] = a6;
  v20[2] = MEMORY[0x1E6965C48];
  v20[3] = a7;
  v14 = *(type metadata accessor for SharePreview(0, v20) + 60);
  v15 = *(a6 - 8);
  v16 = *(v15 + 56);
  v16(a8 + v14, 1, 1, a6);
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  *(a8 + 48) = a3 & 1;
  *(a8 + 56) = a4;
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 8))(a8 + v14, v17);
  (*(v15 + 32))(a8 + v14, a5, a6);
  return (v16)(a8 + v14, 0, 1, a6);
}

uint64_t SharePreview<>.init<A>(_:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v30 = a2;
  v8 = a1;
  v27 = a1;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 64) = 1;
  v31[0] = MEMORY[0x1E69E73E0];
  v31[1] = v13;
  v31[2] = MEMORY[0x1E6965C48];
  v31[3] = v14;
  v15 = *(type metadata accessor for SharePreview(0, v31) + 60);
  v16 = *(a3 - 8);
  v17 = *(v16 + 56);
  v28 = a3;
  v29 = v17;
  v17(a6 + v15, 1, 1, a3);
  (*(v10 + 16))(v12, v8, a4);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  LOBYTE(v8) = v21;
  v23 = v22;
  (*(v10 + 8))(v27, a4);
  *(a6 + 32) = v18;
  *(a6 + 40) = v20;
  *(a6 + 48) = v8 & 1;
  *(a6 + 56) = v23;
  v24 = v28;
  v25 = type metadata accessor for Optional();
  (*(*(v25 - 8) + 8))(a6 + v15, v25);
  (*(v16 + 32))(a6 + v15, v30, v24);
  return v29(a6 + v15, 0, 1, v24);
}

uint64_t SharePreview<>.init(_:image:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = 0u;
  *(a8 + 16) = 0u;
  v20[0] = a6;
  v20[1] = MEMORY[0x1E69E73E0];
  v20[2] = a7;
  v20[3] = MEMORY[0x1E6965C48];
  v10 = type metadata accessor for SharePreview(0, v20);
  v11 = *(v10 + 56);
  v12 = *(a6 - 8);
  v13 = *(v12 + 56);
  v13(a8 + v11, 1, 1, a6);
  *(a8 + *(v10 + 60)) = 1;
  *(a8 + 32) = Text.init(_:tableName:bundle:comment:)();
  *(a8 + 40) = v14;
  *(a8 + 48) = v15 & 1;
  *(a8 + 56) = v16;
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 8))(a8 + v11, v17);
  (*(v12 + 32))(a8 + v11, a5, a6);
  return (v13)(a8 + v11, 0, 1, a6);
}

uint64_t SharePreview<>.init(_:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = 0u;
  *(a8 + 16) = 0u;
  v21[0] = a6;
  v21[1] = MEMORY[0x1E69E73E0];
  v21[2] = a7;
  v21[3] = MEMORY[0x1E6965C48];
  v12 = type metadata accessor for SharePreview(0, v21);
  v13 = *(v12 + 56);
  v14 = *(a6 - 8);
  v15 = *(v14 + 56);
  v15(a8 + v13, 1, 1, a6);
  *(a8 + *(v12 + 60)) = 1;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  *(a8 + 48) = a3 & 1;
  *(a8 + 56) = a4;
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 8))(a8 + v13, v16);
  (*(v14 + 32))(a8 + v13, a5, a6);
  return (v15)(a8 + v13, 0, 1, a6);
}

uint64_t SharePreview<>.init<A>(_:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32 = a5;
  v33 = a2;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v34[0] = v13;
  v34[1] = MEMORY[0x1E69E73E0];
  v34[2] = v14;
  v34[3] = MEMORY[0x1E6965C48];
  v15 = type metadata accessor for SharePreview(0, v34);
  v16 = *(v15 + 56);
  v29 = a3;
  v30 = v16;
  v17 = *(a3 - 8);
  v31 = *(v17 + 56);
  v31(a6 + v16, 1, 1, a3);
  *(a6 + *(v15 + 60)) = 1;
  (*(v10 + 16))(v12, a1, a4);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  LOBYTE(v15) = v21;
  v23 = v22;
  (*(v10 + 8))(a1, a4);
  *(a6 + 32) = v18;
  *(a6 + 40) = v20;
  *(a6 + 48) = v15 & 1;
  *(a6 + 56) = v23;
  v24 = v29;
  v25 = type metadata accessor for Optional();
  v26 = v30;
  (*(*(v25 - 8) + 8))(a6 + v30, v25);
  (*(v17 + 32))(a6 + v26, v33, v24);
  return (v31)(a6 + v26, 0, 1, v24);
}

uint64_t SharePreview<>.init(_:)@<X0>(uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 64) = 257;
  result = Text.init(_:tableName:bundle:comment:)();
  *(a5 + 32) = result;
  *(a5 + 40) = v7;
  *(a5 + 48) = v8 & 1;
  *(a5 + 56) = v9;
  return result;
}

double SharePreview<>.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 64) = 257;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3 & 1;
  *(a5 + 56) = a4;
  return result;
}

uint64_t SharePreview<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 64) = 257;
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = (*(v7 + 8))(a1, a2);
  *(a4 + 32) = v9;
  *(a4 + 40) = v11;
  *(a4 + 48) = v13 & 1;
  *(a4 + 56) = v15;
  return result;
}

_OWORD *SharePreview<>.init(metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = 257;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _bridgeAnythingToObjectiveC<A>(_:)();
  _AssertIsLPLinkMetadata();
  swift_unknownObjectRelease();
  outlined destroy of Any?(a2);

  return outlined init with take of Any(a1, a2);
}

uint64_t type metadata completion function for SharePreview(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

void *initializeBufferWithCopyOfBuffer for SharePreview(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = *(v5 + 64) + 1;
  }

  v8 = *(v4 - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(*(v4 - 8) + 64);
  }

  else
  {
    v10 = *(*(v4 - 8) + 64) + 1;
  }

  v11 = v7 + v9;
  if ((v9 | v6) <= 7 && ((*(v8 + 80) | *(v5 + 80)) & 0x100000) == 0 && ((((-65 - v6) | v6) - (v7 + v9)) | v9) - v10 >= 0xFFFFFFFFFFFFFFE7)
  {
    v31 = v10;
    v32 = *(a3 + 16);
    v15 = a2[3];
    __n = v7;
    if (v15 < 0xFFFFFFFF)
    {
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v17;
    }

    else
    {
      *(a1 + 24) = v15;
      v16 = a2;
      (**(v15 - 8))(a1);
      a2 = v16;
    }

    v18 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
    v19 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*(v19 + 24) < 0xFFFFFFFFuLL)
    {
      v23 = *(v19 + 16);
      *v18 = *v19;
      *(v18 + 16) = v23;
    }

    else
    {
      v20 = *v19;
      v21 = *(v19 + 8);
      v29 = v4;
      v22 = *(v19 + 16);
      outlined copy of Text.Storage(*v19, v21, v22);
      *v18 = v20;
      *(v18 + 8) = v21;
      *(v18 + 16) = v22;
      v4 = v29;
      *(v18 + 24) = *(v19 + 24);
    }

    v24 = ~v9;
    v25 = (v19 + 32);
    if ((*(v5 + 48))(v19 + 32, 1, v32))
    {
      memcpy((v18 + 32), v25, __n);
    }

    else
    {
      (*(v5 + 16))(v18 + 32, v25, v32);
      (*(v5 + 56))(v18 + 32, 0, 1, v32);
    }

    v26 = v11 + v18 + 32;
    v27 = &v25[v11];
    if ((*(v8 + 48))(v27 & v24, 1, v4))
    {
      memcpy((v26 & v24), (v27 & v24), v31);
    }

    else
    {
      (*(v8 + 16))(v26 & v24, v27 & v24, v4);
      (*(v8 + 56))(v26 & v24, 0, 1, v4);
    }
  }

  else
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (((v9 | v6) & 0xF8 ^ 0x1F8) & ((v9 | v6) + 16)));
  }

  return v3;
}

uint64_t destroy for SharePreview(void *a1, uint64_t a2)
{
  if (a1[3] >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v4 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 32) & ~*(v6 + 80);
  if (!(*(v6 + 48))(v7, 1, v5))
  {
    (*(v6 + 8))(v7, v5);
  }

  v8 = *(a2 + 24);
  v14 = *(v8 - 8);
  v9 = *(v14 + 80);
  v10 = *(v6 + 64) + v7;
  if (!*(v6 + 84))
  {
    ++v10;
  }

  v11 = v10 + v9;
  result = (*(*(v8 - 8) + 48))((v10 + v9) & ~v9, 1, v8);
  if (!result)
  {
    v13 = *(v14 + 8);

    return v13(v11 & ~v9, v8);
  }

  return result;
}

uint64_t initializeWithCopy for SharePreview(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (v6 < 0xFFFFFFFF)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  else
  {
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
  }

  v8 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v9 + 24) < 0xFFFFFFFFuLL)
  {
    v13 = *(v9 + 16);
    *v8 = *v9;
    *(v8 + 16) = v13;
  }

  else
  {
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    outlined copy of Text.Storage(*v9, v11, v12);
    *v8 = v10;
    *(v8 + 8) = v11;
    *(v8 + 16) = v12;
    *(v8 + 24) = *(v9 + 24);
  }

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = ((v8 + v16 + 32) & ~v16);
  v18 = ((v9 + v16 + 32) & ~v16);
  if ((*(v15 + 48))(v18, 1, v14))
  {
    v19 = *(v15 + 84);
    v20 = *(v15 + 64);
    if (v19)
    {
      v21 = *(v15 + 64);
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v17, v18, v21);
  }

  else
  {
    (*(v15 + 16))(v17, v18, v14);
    v23 = *(v15 + 56);
    v22 = v15 + 56;
    v23(v17, 0, 1, v14);
    v19 = *(v22 + 28);
    v20 = *(v22 + 8);
  }

  v24 = *(a3 + 24);
  v25 = *(v24 - 8);
  if (v19)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20 + 1;
  }

  v27 = *(v24 - 8);
  v28 = *(v25 + 80);
  v29 = v26 + v28;
  v30 = &v17[v29];
  v31 = &v18[v29];
  if ((*(v25 + 48))(v31 & ~v28, 1, v24))
  {
    if (*(v27 + 84))
    {
      v32 = *(v27 + 64);
    }

    else
    {
      v32 = *(v27 + 64) + 1;
    }

    memcpy((v30 & ~v28), (v31 & ~v28), v32);
  }

  else
  {
    (*(v27 + 16))(v30 & ~v28, v31 & ~v28, v24);
    (*(v27 + 56))(v30 & ~v28, 0, 1, v24);
  }

  return a1;
}

uint64_t assignWithCopy for SharePreview(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v7 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2, a4.n128_f64[0]);
      goto LABEL_8;
    }
  }

  else
  {
    if (v7 >= 0xFFFFFFFF)
    {
      __swift_assign_boxed_opaque_existential_0(a1, a2, a4);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
LABEL_8:
  v9 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v10 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);
  if (*(v9 + 24) < 0xFFFFFFFFuLL)
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v18 = *v10;
      v19 = *(v10 + 8);
      v20 = *(v10 + 16);
      outlined copy of Text.Storage(*v10, v19, v20);
      *v9 = v18;
      *(v9 + 8) = v19;
      *(v9 + 16) = v20;
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_15;
    }
  }

  else
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      outlined copy of Text.Storage(*v10, v13, v14);
      v15 = *v9;
      v16 = *(v9 + 8);
      v17 = *(v9 + 16);
      *v9 = v12;
      *(v9 + 8) = v13;
      *(v9 + 16) = v14;
      outlined consume of Text.Storage(v15, v16, v17);
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_15;
    }

    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v21 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v21;
LABEL_15:
  v22 = *(a3 + 16);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = ((v9 + v24 + 32) & ~v24);
  v26 = ((v10 + v24 + 32) & ~v24);
  v27 = *(v23 + 48);
  v28 = v27(v25, 1, v22);
  v29 = v27(v26, 1, v22);
  if (v28)
  {
    if (!v29)
    {
      (*(v23 + 16))(v25, v26, v22);
      (*(v23 + 56))(v25, 0, 1, v22);
      goto LABEL_26;
    }

    v30 = *(v23 + 84);
    v31 = *(v23 + 64);
  }

  else
  {
    if (!v29)
    {
      (*(v23 + 24))(v25, v26, v22);
      goto LABEL_26;
    }

    (*(v23 + 8))(v25, v22);
    v30 = *(v23 + 84);
    v31 = *(v23 + 64);
  }

  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = v31 + 1;
  }

  memcpy(v25, v26, v32);
LABEL_26:
  v33 = *(v23 + 64);
  v34 = *(a3 + 24);
  v35 = *(v34 - 8);
  if (!*(v23 + 84))
  {
    ++v33;
  }

  v36 = *(v34 - 8);
  v37 = *(v35 + 80);
  v38 = v33 + v37;
  v39 = &v25[v38];
  v40 = &v26[v38];
  v41 = *(v35 + 48);
  v42 = v41(&v25[v38] & ~v37, 1, v34);
  v43 = v41(v40 & ~v37, 1, v34);
  if (v42)
  {
    if (!v43)
    {
      (*(v36 + 16))(v39 & ~v37, v40 & ~v37, v34);
      (*(v36 + 56))(v39 & ~v37, 0, 1, v34);
      return a1;
    }

    v44 = *(v36 + 84);
    v45 = *(v36 + 64);
  }

  else
  {
    if (!v43)
    {
      (*(v36 + 24))(v39 & ~v37, v40 & ~v37, v34);
      return a1;
    }

    v47 = *(v36 + 8);
    v46 = v36 + 8;
    v47(v39 & ~v37, v34);
    v44 = *(v46 + 76);
    v45 = *(v46 + 56);
  }

  if (v44)
  {
    v48 = v45;
  }

  else
  {
    v48 = v45 + 1;
  }

  memcpy((v39 & ~v37), (v40 & ~v37), v48);
  return a1;
}

_OWORD *initializeWithTake for SharePreview(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v6 + v11 + 32) & ~v11);
  v13 = ((v7 + v11 + 32) & ~v11);
  if ((*(v10 + 48))(v13, 1, v9))
  {
    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
    if (v14)
    {
      v16 = *(v10 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v10 + 32))(v12, v13, v9);
    v18 = *(v10 + 56);
    v17 = v10 + 56;
    v18(v12, 0, 1, v9);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  v19 = *(a3 + 24);
  v20 = *(v19 - 8);
  if (v14)
  {
    v21 = v15;
  }

  else
  {
    v21 = v15 + 1;
  }

  v22 = *(v19 - 8);
  v23 = *(v20 + 80);
  v24 = v21 + v23;
  v25 = &v12[v24];
  v26 = &v13[v24];
  if ((*(v20 + 48))(v26 & ~v23, 1, v19))
  {
    if (*(v22 + 84))
    {
      v27 = *(v22 + 64);
    }

    else
    {
      v27 = *(v22 + 64) + 1;
    }

    memcpy((v25 & ~v23), (v26 & ~v23), v27);
  }

  else
  {
    (*(v22 + 32))(v25 & ~v23, v26 & ~v23, v19);
    (*(v22 + 56))(v25 & ~v23, 0, 1, v19);
  }

  return a1;
}

uint64_t assignWithTake for SharePreview(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v8 + 24) >= 0xFFFFFFFFuLL)
    {
      v9 = *(v8 + 16);
      v10 = *v7;
      v11 = *(v7 + 8);
      v12 = *(v7 + 16);
      *v7 = *v8;
      *(v7 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(v7 + 24) = *(v8 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  v13 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v13;
LABEL_8:
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v8 + v16;
  v18 = ((v7 + v16 + 32) & ~v16);
  v19 = ((v17 + 32) & ~v16);
  v20 = *(v15 + 48);
  v21 = v20(v18, 1, v14);
  v22 = v20(v19, 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(v15 + 32))(v18, v19, v14);
      (*(v15 + 56))(v18, 0, 1, v14);
      goto LABEL_19;
    }

    v23 = *(v15 + 84);
    v24 = *(v15 + 64);
  }

  else
  {
    if (!v22)
    {
      (*(v15 + 40))(v18, v19, v14);
      goto LABEL_19;
    }

    (*(v15 + 8))(v18, v14);
    v23 = *(v15 + 84);
    v24 = *(v15 + 64);
  }

  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  memcpy(v18, v19, v25);
LABEL_19:
  v26 = *(v15 + 64);
  v27 = *(a3 + 24);
  v28 = *(v27 - 8);
  if (!*(v15 + 84))
  {
    ++v26;
  }

  v29 = *(v27 - 8);
  v30 = *(v28 + 80);
  v31 = v26 + v30;
  v32 = &v18[v31];
  v33 = &v19[v31];
  v34 = *(v28 + 48);
  v35 = v34(&v18[v31] & ~v30, 1, v27);
  v36 = v34(v33 & ~v30, 1, v27);
  if (v35)
  {
    if (!v36)
    {
      (*(v29 + 32))(v32 & ~v30, v33 & ~v30, v27);
      (*(v29 + 56))(v32 & ~v30, 0, 1, v27);
      return a1;
    }

    v37 = *(v29 + 84);
    v38 = *(v29 + 64);
  }

  else
  {
    if (!v36)
    {
      (*(v29 + 40))(v32 & ~v30, v33 & ~v30, v27);
      return a1;
    }

    v40 = *(v29 + 8);
    v39 = v29 + 8;
    v40(v32 & ~v30, v27);
    v37 = *(v39 + 76);
    v38 = *(v39 + 56);
  }

  if (v37)
  {
    v41 = v38;
  }

  else
  {
    v41 = v38 + 1;
  }

  memcpy((v32 & ~v30), (v33 & ~v30), v41);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharePreview(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v13;
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_39;
  }

  v18 = v16 + ((v13 + v15 + ((v14 + 64) & ~v14)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 < 2)
    {
LABEL_39:
      if (v11 <= 0x7FFFFFFE)
      {
        v25 = *(a1 + 3);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }

      v27 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v14 + 32) & ~v14;
      if (v6 == v12)
      {
        if (v5 < 2)
        {
          return 0;
        }

        v28 = (*(v4 + 48))(v27);
      }

      else
      {
        v28 = (*(v8 + 48))((v27 + v13 + v15) & ~v15, v9, v7);
      }

      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_39;
  }

LABEL_26:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
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

  return v12 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for SharePreview(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v20 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  if (v13)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + 1;
  }

  v22 = ((v20 + v15 + ((v14 + 64) & ~v14)) & ~v15) + v21;
  v23 = a3 >= v19;
  v24 = a3 - v19;
  if (v24 == 0 || !v23)
  {
LABEL_30:
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v22 > 3)
  {
    v6 = 1;
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v25 = ((v24 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v25))
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
      v6 = v26;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v19 < a2)
  {
LABEL_31:
    v27 = ~v19 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> (8 * v22)) + 1;
      if (v22)
      {
        v29 = v27 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v29;
            if (v6 > 1)
            {
LABEL_66:
              if (v6 == 2)
              {
                *&a1[v22] = v28;
              }

              else
              {
                *&a1[v22] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v6 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v6)
    {
      a1[v22] = v28;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v22] = 0;
  }

  else if (v6)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v18 > 0x7FFFFFFE)
  {
    v30 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v14 + 32) & ~v14;
    if (v11 == v19)
    {
      if (v8 >= 2)
      {
        v31 = *(v7 + 56);
        v32 = a2 + 1;

        v31(v30, v32);
      }
    }

    else
    {
      v33 = *(v12 + 56);
      v34 = (v30 + v20 + v15) & ~v15;
      v35 = a2 + 1;

      v33(v34, v35, v13, v9);
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2;
  }
}

uint64_t static UIKitTextSelectionRepresentation.makeSelectableTextChildView<A>(_:resolvedText:inputs:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for SelectableTextChildView(0, a4, a5, a4);
  v9 = type metadata accessor for UIKitTextSelectionRepresentation.SelectableTextChildQuery(0, a4, a5, v8);
  swift_getWitnessTable(protocol conformance descriptor for UIKitTextSelectionRepresentation.SelectableTextChildQuery<A>, v9);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for SelectableTextChildView<A>, v7);
  return static View.makeDebuggableView(view:inputs:)();
}

double UIKitTextSelectionRepresentation.SelectableTextChildQuery.value.getter(uint64_t a1, __n128 a2)
{
  type metadata accessor for ResolvedStyledText();
  AGGraphGetValue();

  return result;
}

void protocol witness for Rule.value.getter in conformance UIKitTextSelectionRepresentation.SelectableTextChildQuery<A>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  UIKitTextSelectionRepresentation.SelectableTextChildQuery.value.getter(*v2, a2);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UIKitTextSelectionRepresentation.SelectableTextChildQuery<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitTextSelectionRepresentation.SelectableTextChildQuery<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static PlatformTextSelectionRepresentation.makeSelectableText(resolvedText:inputs:) in conformance UIKitTextSelectionRepresentation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v17 = *(a2 + 32);
  v18 = v9;
  v11 = *(a2 + 48);
  v19 = *(a2 + 64);
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v12;
  v23 = v17;
  v24 = v11;
  v25 = *(a2 + 64);
  v20 = *(a2 + 80);
  v26 = *(a2 + 80);
  v21 = v16[0];
  v22 = v10;
  v13 = _ViewInputs.textAccessibilityProvider.getter();
  return static UIKitTextSelectionRepresentation.makeSelectableTextChildView<A>(_:resolvedText:inputs:)(v13, v8, v16, v13, v14);
}

uint64_t initializeBufferWithCopyOfBuffer for SelectableTextChildView(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];

  return a1;
}

uint64_t assignWithCopy for SelectableTextChildView(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];

  return a1;
}

uint64_t assignWithTake for SelectableTextChildView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t SelectableTextChildView.body.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a3;
  v53 = a2;
  v65 = a6;
  type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(0);
  v63 = v9;
  v64 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v48 - v11;
  v56 = type metadata accessor for ModifiedContent();
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v66 = &v48 - v12;
  type metadata accessor for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>(255);
  v61 = type metadata accessor for ModifiedContent();
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v48 - v15;

  v49 = a1;
  ResolvedStyledText.accessibilityText.getter();
  v16 = a4;
  AccessibilityStyledTextContentView.init(text:unresolvedText:renderer:needsDrawingGroup:)();
  v17 = v80;
  v18 = v81;
  LOBYTE(a4) = v82;
  v72 = v79;
  v73 = v80;
  v74 = v81;
  v75 = v82;
  v76 = v83;
  v77 = v84;
  v78 = v85;
  v48 = a5;
  type metadata accessor for AccessibilityStyledTextContentView();
  v19 = v52;
  AccessibilityStyledTextContentView.body.getter();

  outlined consume of Text.Storage(v17, v18, a4);

  LOBYTE(v17) = v53;
  v70 = v53;
  v20 = v54;
  v71 = v54;
  _s7SwiftUI5StateVySbGMaTm_1(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v21 = v68[2];
  v22 = v68[3];
  v23 = v69;
  v24 = static Anchor.Source<A>.bounds.getter();
  v25 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v49;
  View.textSelectionMenu(text:isPresented:anchor:)(v49, v21, v22, v23, v24, v25, AssociatedConformanceWitness);

  (*(v55 + 8))(v19, v25);
  v27 = swift_allocObject();
  v28 = v48;
  *(v27 + 16) = v16;
  *(v27 + 24) = v28;
  *(v27 + 32) = v26;
  *(v27 + 40) = v17;
  *(v27 + 48) = v20;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for closure #1 in SelectableTextChildView.body.getter;
  *(v29 + 24) = v27;
  v79 = 0;
  v80 = 0;
  v81 = partial apply for closure #1 in Gesture<>.callbacks(pressing:pressed:);
  v82 = v29;
  type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>(0);
  v31 = v30;
  v32 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>, MEMORY[0x1E697E860]);

  v33 = v58;
  Gesture.cancellable()();
  v34 = v81;
  v35 = v82;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v79, v80);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v34, v35);
  v36 = lazy protocol witness table accessor for type TextSelectionMenuModifier and conformance TextSelectionMenuModifier();
  v68[0] = AssociatedConformanceWitness;
  v68[1] = v36;
  v37 = MEMORY[0x1E697E858];
  v38 = v56;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v56, v68);
  v79 = v31;
  v80 = MEMORY[0x1E69801F8];
  v81 = v32;
  v82 = MEMORY[0x1E69801F0];
  swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = v63;
  v42 = v66;
  View.gesture<A>(_:including:)();
  (*(v64 + 8))(v33, v41);
  (*(v60 + 8))(v42, v38);
  v43 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
  v67[0] = WitnessTable;
  v67[1] = v43;
  v44 = v61;
  swift_getWitnessTable(v37, v61, v67);
  v45 = v59;
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v62 + 8);
  v46(v40, v44);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v46)(v45, v44);
}

uint64_t TextSelectionGesture.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(0);
  v2 = v1;
  v30 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(0);
  v31 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>();
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>>(0);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  default argument 0 of DistanceGesture.init(minimumDistance:maximumDistance:)();
  DistanceGesture.init(minimumDistance:maximumDistance:)();
  v43 = 0;
  memset(&v42[1], 0, 32);
  v44 = 2;
  v42[0] = *v36;
  v39 = 0;
  v40 = specialized closure #1 in Gesture.longPressPhase();
  v41 = 0;
  v36[0] = 0;
  *&v36[8] = xmmword_18CDAFB60;
  LOBYTE(v37) = 0;
  type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>(0);
  v13 = v12;
  type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>(0);
  v15 = v14;
  v16 = MEMORY[0x1E697E860];
  v17 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>, MEMORY[0x1E697E860]);
  v18 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>, v16);
  Gesture.enabled<A>(by:)();

  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(0);
  v20 = v19;
  *v36 = v13;
  *&v36[8] = v15;
  v21 = MEMORY[0x1E69E6370];
  *&v36[16] = MEMORY[0x1E69E6370];
  v37 = v17;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, v16);
  Gesture.gated<A>(by:)();
  (*(v30 + 8))(v4, v2);
  *v36 = v2;
  *&v36[8] = v20;
  *&v36[16] = v21;
  v37 = OpaqueTypeConformance2;
  v38 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  v25 = v31;
  Gesture.eventFilter<A>(forType:_:)();
  (*(v32 + 8))(v7, v25);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>, v16);
  v26 = v29;
  Gesture.eventFilter<A>(forType:_:)();
  outlined destroy of ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>(v24, type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>);
  v36[0] = 2;
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>>, v16);
  Gesture.dependency(_:)();
  outlined destroy of ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>(v26, type metadata accessor for ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>>);
  return outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(v42);
}

uint64_t specialized closure #1 in Gesture.longPressPhase()@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (HIBYTE(*(result + 80)) == 1)
  {
    *a2 = 513;
  }

  else
  {
    _s7SwiftUI5StateVySbGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DE58]);
    return GesturePhase.withValue<A>(_:)();
  }

  return result;
}

{
  if (*(result + 33) == 1)
  {
    *a2 = 513;
  }

  else
  {
    type metadata accessor for DurationGesture<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, MEMORY[0x1E697E1D0], MEMORY[0x1E697DE58]);
    return GesturePhase.withValue<A>(_:)();
  }

  return result;
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<Bool>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>, MEMORY[0x1E697E958]);
    lazy protocol witness table accessor for type TextSelectionGesture and conformance TextSelectionGesture();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type TextSelectionGesture and conformance TextSelectionGesture()
{
  result = lazy protocol witness table cache variable for type TextSelectionGesture and conformance TextSelectionGesture;
  if (!lazy protocol witness table cache variable for type TextSelectionGesture and conformance TextSelectionGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSelectionGesture, &unk_1EFFCF2A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextSelectionGesture and conformance TextSelectionGesture);
  }

  return result;
}

uint64_t partial apply for closure #1 in SelectableTextChildView.body.getter()
{
  if (*(v0 + 48))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextSelectionMenuModifier and conformance TextSelectionMenuModifier()
{
  result = lazy protocol witness table cache variable for type TextSelectionMenuModifier and conformance TextSelectionMenuModifier;
  if (!lazy protocol witness table cache variable for type TextSelectionMenuModifier and conformance TextSelectionMenuModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSelectionMenuModifier, &type metadata for TextSelectionMenuModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextSelectionMenuModifier and conformance TextSelectionMenuModifier);
  }

  return result;
}

void type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>)
  {
    v1 = MEMORY[0x1E697DF80];
    _s7SwiftUI25PressableGestureCallbacks33_C70334A42970E36EF599A57E69899EA7LLVySbGMaTm_0(255, &lazy cache variable for type metadata for MapGesture<SpatialEvent, Bool>, MEMORY[0x1E697DF80], MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    _s7SwiftUI25PressableGestureCallbacks33_C70334A42970E36EF599A57E69899EA7LLVySbGMaTm_0(255, &lazy cache variable for type metadata for EventListener<SpatialEvent>, v1, MEMORY[0x1E697DF78], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type MapGesture<SpatialEvent, Bool> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type EventListener<SpatialEvent> and conformance EventListener<A>();
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>);
    }
  }
}

void _s7SwiftUI25PressableGestureCallbacks33_C70334A42970E36EF599A57E69899EA7LLVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type MapGesture<SpatialEvent, Bool> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<SpatialEvent, Bool> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<SpatialEvent, Bool> and conformance MapGesture<A, B>)
  {
    _s7SwiftUI25PressableGestureCallbacks33_C70334A42970E36EF599A57E69899EA7LLVySbGMaTm_0(255, &lazy cache variable for type metadata for MapGesture<SpatialEvent, Bool>, MEMORY[0x1E697DF80], MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable(MEMORY[0x1E697DAA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<SpatialEvent, Bool> and conformance MapGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventListener<SpatialEvent> and conformance EventListener<A>()
{
  result = lazy protocol witness table cache variable for type EventListener<SpatialEvent> and conformance EventListener<A>;
  if (!lazy protocol witness table cache variable for type EventListener<SpatialEvent> and conformance EventListener<A>)
  {
    _s7SwiftUI25PressableGestureCallbacks33_C70334A42970E36EF599A57E69899EA7LLVySbGMaTm_0(255, &lazy cache variable for type metadata for EventListener<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DF78], MEMORY[0x1E697E120]);
    result = swift_getWitnessTable(MEMORY[0x1E697E128], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventListener<SpatialEvent> and conformance EventListener<A>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>)
  {
    v1 = MEMORY[0x1E697DF80];
    _s7SwiftUI5StateVySbGMaTm_1(255, &lazy cache variable for type metadata for DurationGesture<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697E6A8]);
    _s7SwiftUI25PressableGestureCallbacks33_C70334A42970E36EF599A57E69899EA7LLVySbGMaTm_0(255, &lazy cache variable for type metadata for EventListener<SpatialEvent>, v1, MEMORY[0x1E697DF78], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type DurationGesture<SpatialEvent> and conformance DurationGesture<A>();
    lazy protocol witness table accessor for type EventListener<SpatialEvent> and conformance EventListener<A>();
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DurationGesture<SpatialEvent> and conformance DurationGesture<A>()
{
  result = lazy protocol witness table cache variable for type DurationGesture<SpatialEvent> and conformance DurationGesture<A>;
  if (!lazy protocol witness table cache variable for type DurationGesture<SpatialEvent> and conformance DurationGesture<A>)
  {
    _s7SwiftUI5StateVySbGMaTm_1(255, &lazy cache variable for type metadata for DurationGesture<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697E6A8]);
    result = swift_getWitnessTable(MEMORY[0x1E697E6B0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DurationGesture<SpatialEvent> and conformance DurationGesture<A>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>)
  {
    _s7SwiftUI5StateVySbGMaTm_1(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E697FE18]);
    lazy protocol witness table accessor for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>();
    lazy protocol witness table accessor for type DistanceGesture and conformance DistanceGesture();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>)
  {
    _s7SwiftUI5StateVySbGMaTm_1(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E697FE18]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE20], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceGesture and conformance DistanceGesture()
{
  result = lazy protocol witness table cache variable for type DistanceGesture and conformance DistanceGesture;
  if (!lazy protocol witness table cache variable for type DistanceGesture and conformance DistanceGesture)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E698], MEMORY[0x1E697E6A0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceGesture and conformance DistanceGesture);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>)
  {
    _s7SwiftUI5StateVySbGMaTm_1(255, &lazy cache variable for type metadata for EventFilter<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    lazy protocol witness table accessor for type EventFilter<Bool> and conformance EventFilter<A>();
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(255);
    type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>(255);
    type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>(255);
    v0 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>, v0);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, v0);
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>)
  {
    v0 = MEMORY[0x1E697DCD8];
    type metadata accessor for DurationGesture<TappableEvent>(255, &lazy cache variable for type metadata for EventFilter<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    lazy protocol witness table accessor for type CategoryGesture<Bool> and conformance CategoryGesture<A>(&lazy protocol witness table cache variable for type EventFilter<Bool> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<Bool>, v0, MEMORY[0x1E697DCE0]);
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(255);
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0(255);
    type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(255);
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>(255);
    v1 = MEMORY[0x1E697E860];
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>, MEMORY[0x1E697E860]);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, v1);
    swift_getOpaqueTypeConformance2();
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>);
    }
  }
}

void type metadata accessor for ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>>)
  {
    _s7SwiftUI5StateVySbGMaTm_1(255, &lazy cache variable for type metadata for EventFilter<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCD8]);
    type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>();
    lazy protocol witness table accessor for type EventFilter<Bool> and conformance EventFilter<A>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>>);
    }
  }
}

uint64_t outlined destroy of ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(uint64_t a1)
{
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NavigationLinkPresentedValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22[0] = a3;
  v22[1] = a4;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v22 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    v20 = *(v9 + 8);
    v20(a1, v8);
    result = (v20)(v11, v8);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    (*(v12 + 32))(v19, v11, a2);
    (*(v12 + 16))(v15, v19, a2);
    AnyNavigationLinkPresentedValue.init<A>(_:)(v15, a2, a5);
    (*(v9 + 8))(a1, v8);
    return (*(v12 + 8))(v19, a2);
  }

  return result;
}

uint64_t NavigationLink<>.init<A>(presenting:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19[1] = a6;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v19 - v16;
  (*(v14 + 16))(v19 - v16, a1, v13, v15);
  NavigationLink<>.init<A>(value:label:)(v17, a2, a3, a4, a5, a7);
  return (*(v14 + 8))(a1, v13);
}

uint64_t NavigationLink<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21[1] = a7;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v21 - v18;
  (*(v16 + 16))(v21 - v18, a5, v15, v17);
  v21[4] = a1;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  NavigationLink<>.init<A>(value:label:)(v19, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), MEMORY[0x1E6981148], a6, MEMORY[0x1E6981138], a8);

  return (*(v16 + 8))(a5, v15);
}

uint64_t NavigationLink<>.init<A>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(v16 + 16))(&v21 - v18, a5, v15, v17);
  NavigationLink<>.init<A>(_:value:)(a1, a2, a3, a4, v19, a6, v22, a8);
  return (*(v16 + 8))(a5, v15);
}

uint64_t NavigationLink<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20[-v17];
  (*(v15 + 16))(&v20[-v17], a2, v14, v16);
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a1;
  NavigationLink<>.init<A>(value:label:)(v18, partial apply for closure #1 in NavigationLink<>.init<A, B>(_:value:), MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], a7);
  (*(v15 + 8))(a2, v14);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t closure #1 in NavigationLink<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t partial apply for closure #1 in NavigationLink<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X8>)
{
  return closure #1 in NavigationLink<>.init<A, B>(_:value:)(*(v1 + 48), a1);
}

{
  return closure #1 in NavigationLink<>.init<A, B>(_:value:)(*(v1 + 64), a1);
}

uint64_t NavigationLink<>.init<A, B>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a5;
  v23 = a6;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, a3, v18);
  (*(v13 + 16))(v15, a2, v12);
  NavigationLink<>.init<A, B>(_:value:)(v20, v15, a3, a4, v22, v23, a7);
  (*(v13 + 8))(a2, v12);
  return (*(v16 + 8))(a1, a3);
}

uint64_t NavigationLink<>.init<A>(value:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v23[1] = a6;
  v24 = a7;
  v25 = a8;
  v26 = a5;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v18);
  (*(v14 + 16))(v16, a1, v13);
  NavigationLinkPresentedValue.init<A>(_:)(v16, a4, v24, a9, v27);
  v21 = NavigationLink.init<>(label:presentedValue:)(v20, v27, a3, v26, v25);
  return (*(v14 + 8))(a1, v13, v21);
}

uint64_t NavigationLink<>.init<A>(presenting:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v22 = a6;
  v23 = a7;
  v21 = a5;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v15 + 16))(&v20 - v17, a1, v14, v16);
  NavigationLink<>.init<A>(value:label:)(v18, a2, a3, a4, v21, v22, v23, a8, a9);
  return (*(v15 + 8))(a1, v14);
}

uint64_t NavigationLink<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a7;
  v25 = a8;
  v23 = a9;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a5, v16, v18);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  NavigationLink<>.init<A>(value:label:)(v20, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), MEMORY[0x1E6981148], a6, MEMORY[0x1E6981138], v24, v25, v23, a10);

  return (*(v17 + 8))(a5, v16);
}

uint64_t NavigationLink<>.init<A>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a7;
  v25 = a8;
  v23 = a4;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a5, v16, v18);
  NavigationLink<>.init<A>(_:value:)(a1, a2, a3, v23, v20, a6, v24, v25, a9, a10);
  return (*(v17 + 8))(a5, v16);
}

uint64_t NavigationLink<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = a5;
  v23 = a9;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a2, v16, v18);
  v24 = a3;
  v25 = a4;
  v26 = v22;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a1;
  NavigationLink<>.init<A>(value:label:)(v20, partial apply for closure #1 in NavigationLink<>.init<A, B>(_:value:), MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], a6, a7, v23, a8);
  (*(v17 + 8))(a2, v16);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t NavigationLink<>.init<A, B>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a7;
  v27 = a8;
  v24 = a5;
  v25 = a6;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v18 = *(a3 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, a3, v20);
  (*(v15 + 16))(v17, a2, v14);
  NavigationLink<>.init<A, B>(_:value:)(v22, v17, a3, a4, v24, v25, v26, v27, a9);
  (*(v15 + 8))(a2, v14);
  return (*(v18 + 8))(a1, a3);
}

void specialized AccessibilityCollectionViewTableDataSource.visitNodes<A>(applying:at:)(void *a1, unint64_t a2)
{
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v2, v43);
  if (!v43[3])
  {
    outlined destroy of ImageResolutionContext(v43, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>?);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_13;
  }

  outlined init with copy of TableDataSourceAdaptor(v43, v45);
  outlined destroy of AccessibilityTextLayoutProperties?(v43, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  if (AccessibilityCollectionViewTableDataSource.hasGlobalHeader.getter() && __OFSUB__(a2--, 1))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

  TableSections.firstIndexPath(from:)(a2, v7);
  outlined destroy of TableDataSourceAdaptor(v45);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_13:
    _s10Foundation9IndexPathVSgWOhTm_0(v7, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = v2[24];
  if (!v13)
  {
    goto LABEL_41;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [v13 cellForItemAtIndexPath_];

  if (!v15)
  {
    goto LABEL_41;
  }

  type metadata accessor for TableCollectionViewCell(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    goto LABEL_41;
  }

  v17 = *(v16 + direct field offset for ListCollectionViewCellBase.host);
  v18 = v17;

  if (!v17)
  {
LABEL_41:
    (*(v9 + 8))(v11, v8);
    return;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0);
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  v33 = v18;
  ViewRendererHost.updateViewGraph<A>(body:)();
  a2 = specialized static AccessibilityCore.queryFilter(elements:options:)(v43[0], 4);

  v2 = a1;
  if (a2 >> 62)
  {
    goto LABEL_39;
  }

  v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_11:
  v20 = 0;
  v21 = v2[1];
  v35 = *v2;
  v36 = v21;
  v32 = v2;
  v37 = a2 & 0xFFFFFFFFFFFFFF8;
  v38 = a2 & 0xC000000000000001;
  while (1)
  {
    if (v38)
    {
      v22 = MEMORY[0x18D00E9C0](v20, a2);
    }

    else
    {
      if (v20 >= *(v37 + 16))
      {
        goto LABEL_38;
      }

      v22 = *(a2 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    AccessibilityNode.attachment.getter(v43);
    outlined init with copy of AccessibilityProperties(v43, v45);
    outlined destroy of AccessibilityAttachment(v43);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
    v2 = v45;
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v45);
    if (v44 == 255)
    {
      goto LABEL_15;
    }

    outlined init with copy of AccessibilityValueStorage?(v43, &v39, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    if (v41 == 1)
    {
      break;
    }

    if (v41 != 2)
    {
      outlined destroy of AccessibilityTableContext(&v39);
LABEL_15:
      outlined destroy of AccessibilityTextLayoutProperties?(v43, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
      goto LABEL_16;
    }

    if (v36 < 0 || v36 >= v40)
    {
      goto LABEL_15;
    }

    v2 = v39;
    outlined destroy of AccessibilityTextLayoutProperties?(v43, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    if (v2 == v35)
    {
      goto LABEL_32;
    }

LABEL_16:

    ++v20;
    if (v24 == v19)
    {
      goto LABEL_40;
    }
  }

  v2 = a2;
  v25 = v19;
  v26 = v39;
  v34 = v40;
  outlined destroy of AccessibilityTextLayoutProperties?(v43, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  v27 = v26 == v35;
  v19 = v25;
  a2 = v2;
  if (!v27 || v34 != v36)
  {
    goto LABEL_16;
  }

LABEL_32:

  AccessibilityNode.representedElement.getter();
  v29 = v28;

  (*(v9 + 8))(v11, v8);
  v42 = &unk_1F009EDE8;
  v30 = swift_dynamicCastObjCProtocolConditional();
  if (!v30)
  {
  }

  v31 = v32;
  swift_unknownObjectRelease();
  v31[2] = v30;
}