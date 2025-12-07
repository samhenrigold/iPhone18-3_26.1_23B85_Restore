uint64_t _FlexFrameLayout.childProposal(myProposal:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(result + 8) & *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    if (!*(result + 8))
    {
      v3 = *result;
    }

    v5 = *(v2 + 32);
    v6 = *v2;
    if (*(v2 + 8))
    {
      v6 = -INFINITY;
    }

    if (v6 <= v3)
    {
      v6 = v3;
    }

    if (*(v2 + 40))
    {
      v5 = INFINITY;
    }

    if (v5 >= v6)
    {
      v5 = v6;
    }

    v3 = v5;
  }

  v7 = *(v2 + 64);
  v8 = *(result + 24) & *(v2 + 72);
  if ((v8 & 1) == 0)
  {
    if (*(result + 24))
    {
      v9 = *(v2 + 64);
    }

    else
    {
      v9 = *(result + 16);
    }

    v10 = *(v2 + 80);
    v11 = *(v2 + 48);
    if (*(v2 + 56))
    {
      v11 = -INFINITY;
    }

    if (v11 <= v9)
    {
      v11 = v9;
    }

    if (*(v2 + 88))
    {
      v10 = INFINITY;
    }

    if (v10 >= v11)
    {
      v10 = v11;
    }

    v7 = v10;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t specialized UnaryLayoutComputer.updateValue()(uint64_t a1)
{
  result = AGGraphGetCurrentAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = *(v1 + 4);
    v5 = *(v1 + 8);
    Value = AGGraphGetValue();
    LOBYTE(__src[0]) = 1;
    v8 = Value[1];
    __src[0] = *Value;
    __src[1] = v8;
    v9 = Value[2];
    v10 = Value[3];
    v11 = Value[6];
    __src[5] = Value[5];
    __src[6] = v11;
    v12 = Value[4];
    __src[3] = v10;
    __src[4] = v12;
    __src[2] = v9;
    v14 = v4;
    v15 = v4;
    v16 = v6;
    v17 = v4;
    v18 = v5;
    v19 = v3;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v23 = 1;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v27 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v31 = 1;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v52 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = *(v1 + 4);
    v5 = *(v1 + 8);
    Value = AGGraphGetValue();
    v8 = *(Value + 40);
    __src[0] = *Value;
    v10 = *(Value + 8);
    v11 = *(Value + 24);
    v12 = v8;
    v13 = v4;
    v14 = v4;
    v15 = v6;
    v16 = v4;
    v17 = v5;
    v18 = v3;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v22 = 1;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v26 = 1;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v30 = 1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v37 = 1;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v44 = 1;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v51 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = *(v1 + 4);
    v5 = *(v1 + 8);
    Value = AGGraphGetValue();
    v8 = *(Value + 16);
    v10 = *(Value + 8);
    v9 = *(Value + 24);
    __src = *Value;
    v12 = v10;
    v13 = v8;
    v14 = v9;
    v15 = *(Value + 32);
    v16 = v4;
    v17 = v4;
    v18 = v6;
    v19 = v4;
    v20 = v5;
    v21 = v3;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v25 = 1;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v29 = 1;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v33 = 1;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v40 = 1;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v47 = 1;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v54 = 1;
    return specialized StatefulRule<>.update<A>(to:)(&__src);
  }

  return result;
}

uint64_t specialized StatefulRule<>.update<A>(to:)(void *__src)
{
  v11[77] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x261uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x261uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA010_FlexFrameC0VG_Tt1B5(v11, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[69] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x221uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x221uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[69] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x221uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x221uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA010_FlexFrameC0VG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>(0);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 628) = v7;
    *(v4 + 632) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>(0);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x261uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>);
    }
  }
}

uint64_t type metadata completion function for UnaryLayoutEngine(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for LayoutSubviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 17) = *(a2 + 17);

  return a1;
}

unint64_t LayoutSubviews.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 17);
  if (*(v2 + 16))
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (*(v3 + 16) > result)
      {
        v5 = v3 + 12 * result;
        v6 = (v5 + 32);
        result = *(v5 + 40);
LABEL_8:
        *a2 = *v2;
        *(a2 + 4) = *v6;
        *(a2 + 12) = result;
        *(a2 + 16) = v4;
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if (*(v3 + 16) > result)
  {
    v6 = (v3 + 8 * result + 32);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>);
    }
  }
}

double _PaddingLayout.effectiveInsets(in:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 40))
  {
    v6 = *(a1 + 8);
    swift_getKeyPath();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentFetch<EdgeInsets>, &type metadata for EdgeInsets, v3);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v6);
    _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, EdgeInsets>, &type metadata for EdgeInsets);

    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<EdgeInsets> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<EdgeInsets>, &type metadata for EdgeInsets, protocol conformance descriptor for EnvironmentFetch<A>);
    lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<EdgeInsets> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<EdgeInsets>, &type metadata for EdgeInsets, protocol conformance descriptor for EnvironmentFetch<A>);
    v4 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    v4 = 0.0;
  }

  Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  return v4;
}

void _PaddingLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 2);
  v17 = *a2;
  v18 = v7;
  v11 = _PaddingLayout.effectiveInsets(in:)(&v17, a2);
  v14 = v3 - (v12 + v13);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v4)
  {
    v14 = v3;
  }

  v15 = v5 - (v11 + v10);
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v21 = v8;
  v22 = v9;
  v17 = v14;
  LOBYTE(v18) = v4;
  if (v6)
  {
    v16 = v5;
  }

  else
  {
    v16 = v15;
  }

  v19 = v16;
  v20 = v6;
  LayoutProxy.size(in:)(&v17);
}

uint64_t LayoutEngineBox.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v3 = *v2;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return (*(*(v3 + 184) + 48))(&v8, a2 & 1, *(v3 + 176));
}

double LayoutEngine.lengthThatFits(_:in:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v10 = *a1;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  (*(a4 + 40))(&v10, a3, a4);
  if (a2)
  {
    return v9;
  }

  return result;
}

double _FrameLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = a3[1];
  v7 = a3[2];
  v8 = *v3;
  v9 = *(v3 + 8);
  if ((v9 & 1) == 0)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      return v8;
    }

    v10 = 0;
    v21 = *a3;
    v22 = v6;
    v13 = 1;
    v11 = *&v8;
    v23 = v7;
    goto LABEL_6;
  }

  v10 = *(a1 + 8);
  v11 = *a1;
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v21 = *a3;
  v22 = v6;
  v23 = v7;
  v14 = v12;
  if (v13)
  {
LABEL_6:
    v14 = v4;
  }

  v17 = v11;
  v18 = v10;
  v19 = v14;
  v20 = v13 & v5 & 1;
  LayoutProxy.size(in:)(&v17);
  if (v9)
  {
    return v15;
  }

  return v8;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm@<X0>(const void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a2(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 564) = v11;
    *(v8 + 568) = v10;
  }

  else
  {
    a3(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x221uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>);
    }
  }
}

char *StackLayout.makeChildren()()
{
  v1 = v0;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = specialized Collection.count.getter(*(v0 + 80), v2);
  v5 = *(v1 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v4 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 0, v5);
    v5 = result;
  }

  *(v1 + 104) = v5;
  *(v1 + 24) = 0;
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v2 + 32);
    v44 = *MEMORY[0x1E698D3F8];
    v43 = v8 - 1;
    v11 = 0.0;
    v41 = v2;
    v42 = v2 + 32;
    v40 = v3;
LABEL_14:
    v25 = 0.0;
    v26 = *(v2 + 16);
    if (v3)
    {
      while (1)
      {
        v27 = v10;
        if (v9 >= v26)
        {
          break;
        }

LABEL_22:
        if (*v27 == v44)
        {
          InputValue = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            InputValue = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          InputValue = AGGraphGetInputValue();
        }

        v29 = *InputValue;
        v30 = one-time initialization token for lockAssertionsAreEnabled;

        if (v30 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_43;
          }
        }

        v31 = (*(*v29 + 88))();

        if (one-time initialization token for invalidValue != -1)
        {
          swift_once();
        }

        v47 = static ViewGeometry.invalidValue;
        v48 = xmmword_1ED53A0F8;
        v49 = xmmword_1ED53A108;
        v50 = unk_1ED53A118;
        LOBYTE(v59) = 1;
        LOBYTE(v63) = 1;
        v51 = static ViewGeometry.invalidValue;
        v52 = xmmword_1ED53A0F8;
        v53 = xmmword_1ED53A108;
        v54 = unk_1ED53A118;
        result = outlined init with copy of ViewGeometry(&v47, &v45);
        v33 = *(v5 + 2);
        v32 = *(v5 + 3);
        if (v33 >= v32 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v5);
          v5 = result;
        }

        *(v5 + 2) = v33 + 1;
        v34 = &v5[120 * v33];
        *(v34 + 4) = v31;
        *(v34 + 5) = 0;
        v34[48] = 1;
        v35 = *(&v65 + 3);
        *(v34 + 49) = v65;
        *(v34 + 13) = v35;
        *(v34 + 7) = 0;
        v34[64] = 1;
        v36 = v61;
        *(v34 + 17) = *(&v61 + 3);
        *(v34 + 65) = v36;
        *(v34 + 9) = v25;
        *(v34 + 10) = v9;
        v37 = v51;
        v38 = v52;
        v39 = v53;
        *(v34 + 136) = v54;
        *(v34 + 120) = v39;
        *(v34 + 104) = v38;
        *(v34 + 88) = v37;
        if (v43 == v9)
        {
          *(v1 + 104) = v5;
          return result;
        }

        v10 += 3;
        if (!++v9)
        {
          goto LABEL_14;
        }

        if (*(v1 + 16))
        {
          v12 = *(v1 + 97);
          v13 = *(v1 + 96);
          v14 = *(v1 + 88);
          LODWORD(v51) = *(v1 + 80);
          *(&v51 + 1) = v14;
          LOBYTE(v52) = v13;
          BYTE1(v52) = v12;
          LayoutSubviews.subscript.getter(v9 - 1, &v45);
          v65 = v45;
          v66 = v46;
          LayoutSubview.spacing.getter(&v63);
          v15 = v63;
          v16 = v64;
          v17 = *(v1 + 88);
          v18 = *(v1 + 96);
          v19 = *(v1 + 97);
          LODWORD(v47) = *(v1 + 80);
          *(&v47 + 1) = v17;
          LOBYTE(v48) = v18;
          BYTE1(v48) = v19;
          LayoutSubviews.subscript.getter(v9, &v61);
          v59 = v61;
          v60 = v62;
          LayoutSubview.spacing.getter(&v58);
          v20 = *(v1 + 17);
          v57 = v15;
          v56 = v16 & 1;
          v55 = v58;

          *&v21 = COERCE_DOUBLE(Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v20, &v56, &v55));
          v23 = v22;

          if (v23)
          {
            swift_beginAccess();
            v24 = &dbl_1EAB21528;
            if (!v20)
            {
              v24 = static Spacing.defaultValue;
            }

            v25 = *v24;
          }

          else
          {

            v25 = *&v21;
          }

          v2 = v41;
          v3 = v40;
        }

        else
        {
          v25 = *(v1 + 8);
        }

        v11 = v11 + v25;
        *(v1 + 24) = v11;
        v26 = *(v2 + 16);
        if ((v3 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      if (v9 < v26)
      {
        v27 = (v42 + 8 * v9);
        goto LABEL_22;
      }

      __break(1u);
    }

    __break(1u);
LABEL_43:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t initializeWithCopy for _StackLayoutCache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

void specialized StackLayout.UnmanagedImplementation.sizeChildrenGenerallyWithConcreteMajorProposal(in:minorProposalForChild:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a5 + 17);
  if (*(a5 + 17))
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  if ((v10 & 1) == 0)
  {
    v11 = a7;
    v13 = a5;
    v16 = *(a5 + 24);
    LOBYTE(v87) = a2 & 1;
    v91 = a4 & 1;
    StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(a6, a7, a1, a2 & 1, a3, a4 & 1, a5, a6, a7);
    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = -8;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {
        return;
      }

      v18 = 0;
      v19 = (v17 + 48);
      if (v9)
      {
        v20 = a3;
      }

      else
      {
        v20 = a1;
      }

      v21 = *&v20 - v16;
      v81 = *MEMORY[0x1E698D3F8];
      v79 = v19;
      v80 = a6;
      v76 = v11;
      v86 = v13;
      while (v18 < v11)
      {
        v24 = 15 * v18;
        if ((v18 * 120) >> 64 != (120 * v18) >> 63)
        {
          goto LABEL_140;
        }

        v25 = v19[15 * v18];
        v23 = v18 == v11;
        if (v18 != v11)
        {
          v22 = v18;
          while ((v22 * 120) >> 64 == (120 * v22) >> 63)
          {
            if (*(a6 + 120 * v19[15 * v22]) != *(a6 + 120 * v25))
            {
              goto LABEL_25;
            }

            if (v18 < 0)
            {
              goto LABEL_128;
            }

            v23 = v11 == ++v22;
            if (v11 == v22)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_127;
        }

LABEL_24:
        v22 = v11;
LABEL_25:
        if (v22 < v18)
        {
          goto LABEL_141;
        }

        if (v22 > v11)
        {
          goto LABEL_142;
        }

        v26 = 0.0;
        if (v25 == *v19)
        {
          if (v22 != v11)
          {
            v27 = v22;
            while ((v27 * 120) >> 64 == (120 * v27) >> 63)
            {
              if (v22 < 0)
              {
                goto LABEL_131;
              }

              v28 = a6 + 120 * v19[15 * v27];
              if (*(v28 + 16))
              {
                goto LABEL_145;
              }

              ++v27;
              v26 = v26 + *(v28 + 8);
              if (v11 == v27)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_129;
          }

LABEL_34:
          v21 = v21 - v26;
          v29 = v22 - v18;
          if (v22 != v18)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v22 != v18)
          {
            if (v18 <= v11)
            {
              v30 = v11;
            }

            else
            {
              v30 = v18;
            }

            v31 = v18;
            while ((v31 * 120) >> 64 == (120 * v31) >> 63)
            {
              if (v30 == v31)
              {
                goto LABEL_132;
              }

              v32 = a6 + 120 * v19[15 * v31];
              if (*(v32 + 16))
              {
                goto LABEL_146;
              }

              ++v31;
              v26 = v26 + *(v32 + 8);
              if (v22 == v31)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_130;
          }

LABEL_45:
          v21 = v21 + v26;
          v29 = v22 - v18;
          if (v22 != v18)
          {
LABEL_46:
            if (v22 < 0)
            {
              goto LABEL_143;
            }

            v78 = v22;
            v77 = v23;
            if (v18 <= v11)
            {
              v33 = v11;
            }

            else
            {
              v33 = v18;
            }

            if ((v18 * 120) >> 64 == (v24 * 8) >> 63)
            {
              v34 = v18 + 1;
              v83 = -v22;
              v84 = -v33;
              while (v84 + v34 != 1)
              {
                v35 = v19[v24];
                v36 = v21 / v29;
                if (v36 <= 0.0)
                {
                  v36 = 0.0;
                }

                if (*(v13 + 17) == 1)
                {
                  v37 = a8;
                }

                else
                {
                  *&v37 = v36;
                }

                if (*(v13 + 17) == 1)
                {
                  v38 = a9;
                }

                else
                {
                  v38 = 0;
                }

                if (*(v13 + 17) == 1)
                {
                  *&v39 = v36;
                }

                else
                {
                  v39 = a8;
                }

                if (*(v13 + 17) == 1)
                {
                  v40 = 0;
                }

                else
                {
                  v40 = a9;
                }

                v41 = *(v13 + 88);
                if (*(v13 + 96))
                {
                  if ((v35 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_134;
                  }

                  if (v35 >= *(v41 + 16))
                  {
                    goto LABEL_136;
                  }

                  v42 = v41 + 12 * v35;
                }

                else
                {
                  if ((v35 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_133;
                  }

                  if (v35 >= *(v41 + 16))
                  {
                    goto LABEL_135;
                  }

                  v42 = v41 + 8 * v35;
                }

                if (*(v42 + 32) == v81)
                {
                  InputValue = &static LayoutComputer.defaultValue;
                  if (one-time initialization token for defaultValue != -1)
                  {
                    swift_once();
                    InputValue = &static LayoutComputer.defaultValue;
                  }
                }

                else
                {
                  InputValue = AGGraphGetInputValue();
                }

                v45 = *InputValue;
                v44 = *(InputValue + 1);
                v46 = one-time initialization token for lockAssertionsAreEnabled;

                if (v46 != -1)
                {
                  swift_once();
                }

                v47 = lockAssertionsAreEnabled;
                if (lockAssertionsAreEnabled)
                {
                  if (one-time initialization token for _lock != -1)
                  {
                    swift_once();
                  }

                  if (!_MovableLockIsOwner(static Update._lock))
                  {
                    goto LABEL_148;
                  }
                }

                *&v87 = v37;
                if (v40)
                {
                  v48 = NAN;
                }

                else
                {
                  v48 = *&v39;
                }

                BYTE8(v87) = v38 & 1;
                *&v88 = v39;
                BYTE8(v88) = v40 & 1;
                if (v38)
                {
                  v49 = NAN;
                }

                else
                {
                  v49 = *&v37;
                }

                v50 = (*(*v45 + 120))(&v87);
                v52 = v51;
                v53 = *v86;
                if (v47)
                {
                  v54 = one-time initialization token for _lock;

                  if (v54 != -1)
                  {
                    swift_once();
                  }

                  if (!_MovableLockIsOwner(static Update._lock))
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
                }

                *&v87 = v50;
                *(&v87 + 1) = v52;
                *&v88 = v49;
                *(&v88 + 1) = v48;
                *&v55 = COERCE_DOUBLE((*(*v45 + 144))(v53, &v87));
                v57 = v56;

                v85 = v29;
                if (v57)
                {
                  if (one-time initialization token for typeCache != -1)
                  {
                    swift_once();
                  }

                  os_unfair_lock_lock(&static AlignmentKey.typeCache);
                  if (v53 < 2)
                  {
                    goto LABEL_137;
                  }

                  if (v53 >> 1 > *(off_1ED537F58 + 2))
                  {
                    goto LABEL_138;
                  }

                  v58 = (off_1ED537F58 + 16 * (v53 >> 1) + 16);
                  v59 = *v58;
                  v60 = v58[1];
                  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
                  *&v87 = v45;
                  *(&v87 + 1) = v44;
                  v61 = v44;
                  *&v88 = v50;
                  *(&v88 + 1) = v52;
                  *&v89 = v49;
                  *(&v89 + 1) = v48;
                  (*(v60 + 8))(&v87, v59, v60);
                }

                else
                {
                  v62 = *&v55;
                  v61 = v44;
                }

                v63 = INFINITY;
                if ((*&v62 & 0xFFFFFFFFFFFFFLL) == 0)
                {
                  v63 = v62;
                }

                a6 = v80;
                v64 = v80 + 120 * v35;
                v65 = *(v64 + 56);
                v66 = *(v64 + 72);
                if ((~*&v62 & 0x7FF0000000000000) == 0)
                {
                  v62 = v63;
                }

                v67 = -v62;
                v68 = *(v64 + 104);
                if (*(v86 + 17))
                {
                  v69 = v67;
                }

                else
                {
                  v69 = 0.0;
                }

                if (*(v86 + 17))
                {
                  v67 = 0.0;
                }

                v89 = *(v64 + 88);
                v90 = v68;
                v87 = v65;
                v88 = v66;
                v70 = (v64 + 88);
                *(v64 + 56) = v69;
                *(v64 + 72) = v45;
                v13 = v86;
                *(v64 + 88) = v50;
                *(v64 + 104) = v49;
                *(v64 + 96) = v52;
                v71 = (v64 + 96);
                *(v64 + 64) = v67;
                *(v64 + 80) = v61;
                *(v64 + 112) = v48;
                outlined destroy of ViewGeometry(&v87);
                if (*(v86 + 17))
                {
                  v72 = v71;
                }

                else
                {
                  v72 = v70;
                }

                v73 = v21 - *v72;
                if ((*&v73 & 0xFFFFFFFFFFFFFLL) != 0)
                {
                  v74 = v21;
                }

                else
                {
                  v74 = v73;
                }

                if ((~*&v73 & 0x7FF0000000000000) != 0)
                {
                  v21 = v73;
                }

                else
                {
                  v21 = v74;
                }

                if (!(v83 + v34))
                {
                  v11 = v76;
                  v22 = v78;
                  v19 = v79;
                  v23 = v77;
                  goto LABEL_15;
                }

                v24 = 15 * v34;
                v75 = (v34 * 120) >> 64 == (120 * v34) >> 63;
                ++v34;
                v29 = v85 - 1;
                v19 = v79;
                if (!v75)
                {
                  goto LABEL_125;
                }
              }
            }

            else
            {
LABEL_125:
              __break(1u);
            }

            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            break;
          }
        }

LABEL_15:
        v18 = v22;
        if (v23)
        {
          return;
        }
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
  }

  __break(1u);
LABEL_148:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  v11 = a2;
  v12 = 40;
  if (!*(a7 + 17))
  {
    v12 = 56;
  }

  if (*(a7 + 17))
  {
    v13 = a4;
  }

  else
  {
    v13 = a6;
  }

  if (*(a7 + v12))
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 48;
    if (*(a7 + 17))
    {
      v14 = 32;
      v15 = a3;
    }

    else
    {
      v15 = a5;
    }

    if (v13 & 1 | (*(a7 + v14) != *&v15))
    {
      goto LABEL_16;
    }
  }

  v16 = 40;
  if (*(a7 + 17))
  {
    v16 = 56;
  }

  if (*(a7 + v16) != 1)
  {
    return;
  }

LABEL_16:
  v104 = a3;
  if (!a2)
  {
    if (result)
    {
      v19 = result;
    }

    else
    {
      v19 = -8;
    }

    v114 = v19 + 48;
    v115 = 0;
    if (a9 <= 32)
    {
      if ((*(v19 + 48) - 0x111111111111112) >= 0xFDDDDDDDDDDDDDDDLL)
      {
        return;
      }

      goto LABEL_231;
    }

    v108 = (v19 + 48);
    v20 = v19 + 8;
    goto LABEL_164;
  }

  if (a2 < 0)
  {
    goto LABEL_232;
  }

  v17 = (result + 32);
  v18 = a2;
  do
  {
    *(v17 - 3) = 0;
    *(v17 - 16) = 1;
    *(v17 - 1) = 0;
    *v17 = 1;
    v17 += 120;
    --v18;
  }

  while (v18);
  if (result)
  {
    v19 = result;
  }

  else
  {
    v19 = -8;
  }

  v20 = v19 + 8;
  v21 = (v19 + 48);
  v114 = v19 + 48;
  v115 = a2;
  v108 = (v19 + 48);
  if (a9 > 32)
  {
LABEL_164:
    LOBYTE(v110) = a4 & 1;
    v76 = a3;
    slowPath #1 (_:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(&v114, v19, a2, v20, a2, a7, a8, a9, a3, a4 & 1, a5, a6 & 1);
    a3 = v76;
    v21 = v108;
    goto LABEL_165;
  }

  if (a2 != 1)
  {
    v98 = *MEMORY[0x1E698D3F8];
    v22 = 1;
    v23 = 48;
    v99 = v19;
    v96 = v19 + 8;
    do
    {
      if (v22 == 0x111111111111112)
      {
        goto LABEL_228;
      }

      v26 = v21[15 * v22];
      v27 = 120 * v26;
      v97 = v26;
      if ((v26 * 120) >> 64 != (120 * v26) >> 63)
      {
        goto LABEL_229;
      }

      v28 = 0;
      v29 = v20 + v27;
      v94 = v23;
      v101 = 120 * v26;
      v102 = v22;
      v100 = v20 + v27;
      while (1)
      {
        v30 = *(v19 + v23);
        if ((v30 * 120) >> 64 != (120 * v30) >> 63)
        {
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v31 = *(v19 + v27);
        v32 = *(v19 + 120 * v30);
        if (v32 < v31)
        {
          goto LABEL_154;
        }

        if (v31 < v32)
        {
          goto LABEL_157;
        }

        if (*(v29 + 8))
        {
          v33 = *(a7 + 17);
          if (*(a7 + 17))
          {
            v34 = a3;
          }

          else
          {
            v34 = 0;
          }

          if (*(a7 + 17))
          {
            v35 = 0;
          }

          else
          {
            v35 = v10;
          }

          v36 = *(a7 + 88);
          if (*(a7 + 96))
          {
            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_212;
            }

            if (v97 >= *(v36 + 16))
            {
              goto LABEL_217;
            }

            v37 = v36 + 12 * v97;
          }

          else
          {
            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_213;
            }

            if (v97 >= *(v36 + 16))
            {
              goto LABEL_216;
            }

            v37 = v36 + 8 * v97;
          }

          if (*(v37 + 32) == v98)
          {
            InputValue = &static LayoutComputer.defaultValue;
            if (one-time initialization token for defaultValue != -1)
            {
              swift_once();
              InputValue = &static LayoutComputer.defaultValue;
            }
          }

          else
          {
            InputValue = AGGraphGetInputValue();
          }

          v46 = *InputValue;
          v47 = one-time initialization token for lockAssertionsAreEnabled;

          if (v47 != -1)
          {
            swift_once();
          }

          v10 = a5;
          if (lockAssertionsAreEnabled)
          {
            if (one-time initialization token for _lock != -1)
            {
              swift_once();
            }

            if (!_MovableLockIsOwner(static Update._lock))
            {
              goto LABEL_233;
            }
          }

          v110 = v34;
          v111 = v33 & a4;
          v112 = v35;
          v113 = (v33 ^ 1) & a6;
          v38 = (*(*v46 + 128))(&v110, v33);

          v19 = v99;
          v29 = v100;
          *v100 = v38;
          *(v100 + 8) = 0;
          v22 = v102;
          a3 = v104;
          v21 = v108;
          v27 = v101;
          if ((*(v100 + 24) & 1) == 0)
          {
LABEL_77:
            v48 = *(v29 + 16);
            goto LABEL_86;
          }
        }

        else
        {
          v38 = *v29;
          if ((*(v29 + 24) & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        v39 = *(a7 + 17);
        v40 = *(a7 + 17) ? a3 : 0x7FF0000000000000;
        v41 = *(a7 + 17) ? 0x7FF0000000000000 : v10;
        v42 = *(a7 + 88);
        if (*(a7 + 96))
        {
          if ((v97 & 0x8000000000000000) != 0)
          {
            goto LABEL_214;
          }

          if (v97 >= *(v42 + 16))
          {
            goto LABEL_221;
          }

          v43 = v42 + 12 * v97;
        }

        else
        {
          if ((v97 & 0x8000000000000000) != 0)
          {
            goto LABEL_215;
          }

          if (v97 >= *(v42 + 16))
          {
            goto LABEL_219;
          }

          v43 = v42 + 8 * v97;
        }

        if (*(v43 + 32) == v98)
        {
          v45 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v45 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v45 = AGGraphGetInputValue();
        }

        v49 = *v45;
        v50 = one-time initialization token for lockAssertionsAreEnabled;

        if (v50 != -1)
        {
          swift_once();
        }

        v10 = a5;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_233;
          }
        }

        v110 = v40;
        v111 = v39 & a4;
        v112 = v41;
        v113 = (v39 ^ 1) & a6;
        v48 = (*(*v49 + 128))(&v110, v39);

        v19 = v99;
        v29 = v100;
        *(v100 + 16) = v48;
        *(v100 + 24) = 0;
        v22 = v102;
        a3 = v104;
        v21 = v108;
        v27 = v101;
LABEL_86:
        v51 = v96 + 120 * v30;
        if (*(v51 + 8))
        {
          v52 = *(a7 + 17);
          if (*(a7 + 17))
          {
            v53 = a3;
          }

          else
          {
            v53 = 0;
          }

          if (*(a7 + 17))
          {
            v54 = 0;
          }

          else
          {
            v54 = v10;
          }

          v55 = *(a7 + 88);
          if (*(a7 + 96))
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_218;
            }

            if (v30 >= *(v55 + 16))
            {
              goto LABEL_225;
            }

            v56 = v55 + 12 * v30;
          }

          else
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_220;
            }

            if (v30 >= *(v55 + 16))
            {
              goto LABEL_223;
            }

            v56 = v55 + 8 * v30;
          }

          if (*(v56 + 32) == v98)
          {
            v63 = &static LayoutComputer.defaultValue;
            if (one-time initialization token for defaultValue != -1)
            {
              swift_once();
              v63 = &static LayoutComputer.defaultValue;
            }
          }

          else
          {
            v63 = AGGraphGetInputValue();
          }

          v65 = *v63;
          v66 = one-time initialization token for lockAssertionsAreEnabled;

          if (v66 != -1)
          {
            swift_once();
          }

          v10 = a5;
          if (lockAssertionsAreEnabled)
          {
            if (one-time initialization token for _lock != -1)
            {
              swift_once();
            }

            if (!_MovableLockIsOwner(static Update._lock))
            {
              goto LABEL_233;
            }
          }

          v110 = v53;
          v111 = v52 & a4;
          v112 = v54;
          v113 = (v52 ^ 1) & a6;
          v57 = (*(*v65 + 128))(&v110, v52);

          *v51 = v57;
          *(v51 + 8) = 0;
          v22 = v102;
          a3 = v104;
          v19 = v99;
          v29 = v100;
          v21 = v108;
          v27 = v101;
          if ((*(v51 + 24) & 1) == 0)
          {
LABEL_128:
            v67 = *(v51 + 16);
            goto LABEL_137;
          }
        }

        else
        {
          v57 = *v51;
          if ((*(v51 + 24) & 1) == 0)
          {
            goto LABEL_128;
          }
        }

        v58 = *(a7 + 17);
        v59 = *(a7 + 17) ? a3 : 0x7FF0000000000000;
        v60 = *(a7 + 17) ? 0x7FF0000000000000 : v10;
        v61 = *(a7 + 88);
        if (*(a7 + 96))
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_222;
          }

          if (v30 >= *(v61 + 16))
          {
            goto LABEL_227;
          }

          v62 = v61 + 12 * v30;
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_224;
          }

          if (v30 >= *(v61 + 16))
          {
            goto LABEL_226;
          }

          v62 = v61 + 8 * v30;
        }

        if (*(v62 + 32) == v98)
        {
          v64 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v64 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v64 = AGGraphGetInputValue();
        }

        v68 = *v64;
        v69 = one-time initialization token for lockAssertionsAreEnabled;

        if (v69 != -1)
        {
          swift_once();
        }

        v10 = a5;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_233;
          }
        }

        v110 = v59;
        v111 = v58 & a4;
        v112 = v60;
        v113 = (v58 ^ 1) & a6;
        v67 = (*(*v68 + 128))(&v110, v58);

        *(v51 + 16) = v67;
        *(v51 + 24) = 0;
        v22 = v102;
        a3 = v104;
        v19 = v99;
        v29 = v100;
        v21 = v108;
        v27 = v101;
LABEL_137:
        v70 = v48 - v38;
        v71 = v67 - v57;
        if (v48 - v38 == INFINITY)
        {
          v72 = v67 - v57;
          if (v71 == INFINITY)
          {
            if (v38 > v57)
            {
              goto LABEL_154;
            }

LABEL_147:
            v73 = -v57;
            v74 = -v38;
LABEL_150:
            if (v73 < v74)
            {
              goto LABEL_157;
            }

            goto LABEL_153;
          }
        }

        else
        {
          v72 = INFINITY;
          if (v71 != INFINITY)
          {
            v72 = v67 - v57;
            if (v70 == v71)
            {
              goto LABEL_149;
            }
          }
        }

        if (v70 >= v72)
        {
          break;
        }

LABEL_154:
        v75 = 15 * (v22 + v28);
        if (((v22 + v28) * 120) >> 64 != (v75 * 8) >> 63)
        {
          goto LABEL_203;
        }

        v23 -= 120;
        v21[v75] = v30;
        --v28;
        if (v23 == -72)
        {
          v24 = 0;
          v25 = v94;
          goto LABEL_26;
        }
      }

      if (v71 != INFINITY)
      {
        if (v70 == INFINITY)
        {
          goto LABEL_152;
        }

LABEL_149:
        v74 = 0.0;
        v73 = 0.0;
        if (v71 != v70)
        {
          goto LABEL_152;
        }

        goto LABEL_150;
      }

      v71 = INFINITY;
      if (v70 == INFINITY)
      {
        goto LABEL_147;
      }

LABEL_152:
      if (v71 < v70)
      {
        goto LABEL_157;
      }

LABEL_153:
      if (v97 < v30)
      {
        goto LABEL_154;
      }

LABEL_157:
      v25 = v94;
      if (!v28)
      {
        goto LABEL_28;
      }

      v24 = v22 + v28;
LABEL_26:
      if ((v24 * 120) >> 64 != (120 * v24) >> 63)
      {
        goto LABEL_230;
      }

      v21[15 * v24] = v97;
LABEL_28:
      ++v22;
      v23 = v25 + 120;
      v11 = a2;
      v20 = v96;
    }

    while (v22 != a2);
  }

LABEL_165:
  v77 = 120 * *v21;
  if ((*v21 * 120) >> 64 == v77 >> 63)
  {
    if (!v11)
    {
      return;
    }

    v78 = *(v19 + v77);
    v103 = *MEMORY[0x1E698D3F8];
    v79 = v11;
    v109 = v21;
    while (!__OFSUB__(v79--, 1))
    {
      if (v79 < 0 || v79 >= v11)
      {
        goto LABEL_205;
      }

      if ((v79 * 120) >> 64 != (120 * v79) >> 63)
      {
        goto LABEL_206;
      }

      v82 = v21[15 * v79];
      v83 = 120 * v82;
      if ((v82 * 120) >> 64 != (120 * v82) >> 63)
      {
        goto LABEL_207;
      }

      if (*(v19 + 120 * v82) == v78)
      {
        return;
      }

      v84 = v20 + v83;
      if (*(v20 + v83 + 8) == 1)
      {
        v85 = v19;
        v86 = *(a7 + 17);
        if (*(a7 + 17))
        {
          v87 = a3;
        }

        else
        {
          v87 = 0;
        }

        if (*(a7 + 17))
        {
          v88 = 0;
        }

        else
        {
          v88 = v10;
        }

        v89 = *(a7 + 88);
        if (*(a7 + 96))
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_208;
          }

          if (v82 >= *(v89 + 16))
          {
            goto LABEL_210;
          }

          v90 = v89 + 12 * v82;
        }

        else
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_209;
          }

          if (v82 >= *(v89 + 16))
          {
            goto LABEL_211;
          }

          v90 = v89 + 8 * v82;
        }

        if (*(v90 + 32) == v103)
        {
          v91 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v91 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v91 = AGGraphGetInputValue();
        }

        v92 = *v91;
        v93 = one-time initialization token for lockAssertionsAreEnabled;

        if (v93 != -1)
        {
          swift_once();
        }

        v10 = a5;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_233;
          }
        }

        v110 = v87;
        v111 = v86 & a4;
        v112 = v88;
        v113 = (v86 ^ 1) & a6;
        v80 = (*(*v92 + 128))(&v110, v86);

        *v84 = v80;
        *(v84 + 8) = 0;
        a3 = v104;
        v11 = a2;
        v19 = v85;
        v21 = v109;
      }

      if (!v79)
      {
        return;
      }
    }

LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
  }

LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized DynamicLayoutMap.attributes(info:)(uint64_t *a1)
{
  v2 = v1;
  LODWORD(v3) = *(a1 + 11);
  if (*(v1 + 16) == v3)
  {
    return *(v2 + 8);
  }

  v4 = *a1;
  v5 = a1[3];
  v6 = a1[4];
  v35 = *(a1 + 40);
  v7 = v1 + 8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v9 + 2));
  }

  else
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI21LayoutProxyAttributesV_Tt1g5(0, *(v9 + 3) >> 1);

    *v7 = v10;
  }

  if (v4 >> 62)
  {
LABEL_58:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v6 + v5;
  v12 = v11 - (v6 + v5);
  v13 = v12 - 1;
  if ((v12 < 1) | v35 & 1)
  {
    goto LABEL_12;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

  if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    {
      v15 = *(i + 76);
      v16 = *(i + 28);

      v12 = v16 + v15;
LABEL_12:
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_60:
      ;
    }

    if (v12)
    {
      v33 = v12;
      v34 = v2;
      v31 = v3;
      v6 = 0;
      v30 = v7;
      v17 = *v7;
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      v18 = v4 & 0xC000000000000001;
      while (1)
      {
        v7 = v6;
        if ((v35 & 1) == 0)
        {
          break;
        }

LABEL_30:
        if (v18)
        {
          v22 = MEMORY[0x193AC03C0](v7, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
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
            goto LABEL_58;
          }

          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }
        }

        v23 = *(v22 + 76);

        v3 = v6 - v23;
        if (__OFSUB__(v6, v23))
        {
          goto LABEL_53;
        }

        if (v18)
        {
          v24 = MEMORY[0x193AC03C0](v7, v4);
        }

        else
        {
        }

        v25 = *(v24 + 24);

        if (v3 < 0xFFFFFFFF80000000)
        {
          goto LABEL_55;
        }

        if (v3 > 0x7FFFFFFF)
        {
          goto LABEL_56;
        }

        v36[0] = v25;
        v36[1] = v3;
        DynamicLayoutMap.subscript.getter(v36, &v37);
        v26 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v28 = *(v17 + 2);
        v27 = *(v17 + 3);
        if (v28 >= v27 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v17);
        }

        v6 = (v6 + 1);
        *(v17 + 2) = v28 + 1;
        *&v17[8 * v28 + 32] = v26;
        if (v6 == v33)
        {
          *v30 = v17;
          v2 = v34;
          LODWORD(v3) = v31;
          goto LABEL_47;
        }
      }

      if (v4 >> 62)
      {
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = v19 - v32;
      if (v19 - v32 < 0)
      {
        goto LABEL_57;
      }

      v7 = 0;
      while (v3 != v7)
      {
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v18)
        {
          v20 = *(MEMORY[0x193AC03C0](v7, v4) + 76);

          v21 = MEMORY[0x193AC03C0](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v20 = *(*(v4 + 8 * v7 + 32) + 76);
        }

        v2 = *(v21 + 28);

        if (__OFADD__(v20, v2))
        {
          goto LABEL_50;
        }

        ++v7;
        if (v6 < v20 + v2)
        {
          --v7;
          goto LABEL_30;
        }
      }

      goto LABEL_62;
    }

LABEL_47:
    *(v2 + 16) = v3;
    return *(v2 + 8);
  }

  __break(1u);
LABEL_62:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double LayoutEngineBox.layoutPriority()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v1 + *(v2 + 192), v3, v5);
  v8 = (*(*(v2 + 184) + 8))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

void type metadata accessor for Axis?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double closure #1 in ViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, __int16 a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v14 = *(a10 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v17, v15);
  v18 = *(a11 + 56);
  v21[16] = a3 & 1;
  v21[8] = a5 & 1;
  v19 = v18(a2);
  (*(v14 + 8))(v17, a10);
  return v19;
}

void specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a7;
  v10 = a6;
  if (*(a5 + 17))
  {
    v12 = a4;
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    specialized StackLayout.UnmanagedImplementation.sizeChildrenIdeally(in:minorProposalForChild:)(a5, a6, a7, a8, a9 & 1);
  }

  else
  {
    LOBYTE(v48[0]) = a2 & 1;
    v47[0] = a4 & 1;
    specialized StackLayout.UnmanagedImplementation.sizeChildrenGenerallyWithConcreteMajorProposal(in:minorProposalForChild:)(a1, a2 & 1, a3, a4 & 1, a5, a6, a7, a8, a9 & 1);
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v10)
  {
    if (v9)
    {
      v16 = 120 * v9;
      v17 = v10;
      while (1)
      {
        v18 = *v17;
        v19 = *(v17 + 16);
        v20 = *(v17 + 32);
        v49 = *(v17 + 48);
        v21 = *(v17 + 112);
        v23 = *(v17 + 80);
        v22 = *(v17 + 96);
        v50 = *(v17 + 64);
        v51 = v23;
        v52 = v22;
        v48[1] = v19;
        v48[2] = v20;
        v48[0] = v18;
        v53 = v21;
        v24 = *(a5 + 17);
        v25 = *(&v49 + 1);
        v26 = *&v50;
        v27 = *(&v23 + 1);
        v28 = *&v22;
        outlined init with copy of StackLayout.Child(v48, v47);
        v54.origin.x = v25;
        v54.origin.y = v26;
        v54.size.width = v27;
        v54.size.height = v28;
        IsNull = CGRectIsNull(v54);
        outlined destroy of StackLayout.Child(v48);
        v30 = 0.0;
        v31 = 0.0;
        if (!IsNull)
        {
          if (v24)
          {
            v32 = v27;
          }

          else
          {
            v32 = v28;
          }

          if (v24)
          {
            v33 = v25;
          }

          else
          {
            v33 = v26;
          }

          v31 = v33 + v32;
          if (v31 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v31;
          }

          if (v33 > v31)
          {
            v31 = v33;
          }

          if (v34 <= v31)
          {
            v30 = v34;
          }

          else
          {
            v31 = 0.0;
            v30 = 0.0;
          }
        }

        if (v30 < v14)
        {
          v14 = v30;
        }

        if (v15 <= v31)
        {
          v15 = v31;
        }

        if (v14 > v15)
        {
          break;
        }

        v17 += 120;
        v16 -= 120;
        if (!v16)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
LABEL_31:
    if (v9)
    {
      if (v9 < 0)
      {
LABEL_62:
        __break(1u);
        return;
      }

      v35 = *(a5 + 17);
      v36 = 56;
      if (*(a5 + 17))
      {
        v37 = 64;
      }

      else
      {
        v37 = 56;
      }

      if (!*(a5 + 17))
      {
        v36 = 64;
      }

      v13 = 0.0;
      do
      {
        v39 = v13 + *(v10 + 40);
        if ((~*&v39 & 0x7FF0000000000000) != 0 || (*&v39 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          *(v10 + v37) = v39;
        }

        v41 = *(v10 + v36) - v14;
        v42 = ~*&v41 & 0x7FF0000000000000;
        v43 = *&v41 & 0xFFFFFFFFFFFFFLL;
        if (v42)
        {
          v44 = 1;
        }

        else
        {
          v44 = v43 == 0;
        }

        if (v44)
        {
          *(v10 + v36) = *(v10 + v36) - v14;
        }

        if (v35)
        {
          v38 = 96;
        }

        else
        {
          v38 = 88;
        }

        v13 = v39 + *(v10 + v38);
        v10 += 120;
        --v9;
      }

      while (v9);
    }
  }

  v45 = v15 - v14;
  if (*(a5 + 17))
  {
    v46 = v15 - v14;
  }

  else
  {
    v46 = v13;
  }

  if (*(a5 + 17))
  {
    v45 = v13;
  }

  *(a5 + 64) = v46;
  *(a5 + 72) = v45;
}

void lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  }
}

double UnaryLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  (*(v19 + 16))(v6, v3, a2, v11);
  v20 = *(v9 + 32);
  v68 = v13;
  v69 = v8;
  v20(v13, v6, v8);
  v21 = (v3 + *(a2 + 36));
  v22 = *v21;
  v23 = *(v21 + 2);
  v24 = (v3 + *(a2 + 40));
  v25 = *v24;
  v26 = *(v24 + 2);
  v27 = v3 + *(a2 + 44);
  v28 = v15;
  v29 = *v27;
  v30 = *(v27 + 8);
  v32 = *(v27 + 16);
  v31 = *(v27 + 24);
  v34 = *(v27 + 32);
  v33 = *(v27 + 40);
  v35 = *(v27 + 48);
  v36 = *(v27 + 72);
  v37 = *(v27 + 56);
  v39 = *(v27 + 88);
  v38 = *(v27 + 96);
  v40 = *(v27 + 144);
  if ((v35 & 1) == 0)
  {
    if (v16)
    {
      if ((v30 & 1) == 0)
      {
        if (*(v27 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((*(v27 + 64) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v30 & 1) != 0 || v15 != v29)
    {
      goto LABEL_2;
    }

    if (v18)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v31 & 1) != 0 || v17 != v32)
    {
      goto LABEL_2;
    }

    v40 = *(v27 + 32);
    goto LABEL_39;
  }

LABEL_2:
  if (*(v27 + 104))
  {
    goto LABEL_22;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  if ((*(v27 + 64) & 1) != 0 || *&v37 != v15)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v18)
  {
    if (*(v27 + 80))
    {
LABEL_21:
      v40 = *(v27 + 88);
      goto LABEL_39;
    }
  }

  else if ((*(v27 + 80) & 1) == 0 && *&v36 == v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v27 + 160))
  {
LABEL_23:
    v57 = *(v27 + 104);
    v58 = v36;
    v59 = v37;
    v56 = v39;
    v60 = v38;
    v62 = v35;
    v63 = v31;
    v64 = v32;
    v65 = v30;
    v61 = v29;
    v67 = v9;
    v41 = v34;
    v66 = v33;
    v42 = v17;
    v43 = v28;
    swift_beginAccess();
    v44 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v44[4] = v43;
      *(v44 + 5) = v16;
      v44[6] = v42;
      *(v44 + 28) = v18;
    }

    v45 = *(a2 + 24);
    v74 = v43;
    v75 = v16;
    v76 = v42;
    v77 = v18;
    v72 = v22;
    v73 = v23;
    v70 = v25;
    v71 = v26;
    v46 = v68;
    v47 = v69;
    v40 = (*(v45 + 56))(&v74, &v72, &v70, v69);
    v48 = v58;
    *(v27 + 112) = v59;
    *(v27 + 128) = v48;
    v49 = v60;
    *(v27 + 144) = v56;
    *(v27 + 152) = v49;
    *(v27 + 160) = v57;
    v50 = v65;
    *(v27 + 56) = v61;
    *(v27 + 64) = v50;
    v51 = v63;
    *(v27 + 72) = v64;
    *(v27 + 80) = v51;
    v52 = v66;
    *(v27 + 88) = v41;
    *(v27 + 96) = v52;
    *(v27 + 104) = v62;
    *v27 = v43;
    *(v27 + 8) = v16;
    *(v27 + 16) = v42;
    *(v27 + 24) = v18;
    *(v27 + 32) = v40;
    *(v27 + 40) = v53;
    *(v27 + 48) = 0;
    v9 = v67;
    goto LABEL_42;
  }

  if (v16)
  {
    if ((*(v27 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v27 + 120) & 1) != 0 || *(v27 + 112) != v15)
  {
    goto LABEL_23;
  }

  if (v18)
  {
    if ((*(v27 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v27 + 136) & 1) != 0 || *(v27 + 128) != v17)
  {
    goto LABEL_23;
  }

LABEL_39:
  swift_beginAccess();
  v54 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v54[4] = v15;
    *(v54 + 5) = v16;
    v54[6] = v17;
    *(v54 + 28) = v18 | 0x100;
  }

  v46 = v68;
  v47 = v69;
LABEL_42:
  (*(v9 + 8))(v46, v47);
  return v40;
}

uint64_t LayoutProxy.size(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  if (*(v1 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v7 = *InputValue;
  v8 = one-time initialization token for lockAssertionsAreEnabled;

  if (v8 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    (*(*v7 + 120))(&v10);
  }

  return result;
}

double ViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v57 = *(a2 + 16);
  v58 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v46 - v8;
  v65 = *a1;
  v10 = *(a1 + 8);
  v62 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a2 + 36);
  v13 = v2 + *(a2 + 40);
  v14 = *v13;
  v15 = *(v13 + 8);
  v55 = *(v2 + *(a2 + 44));
  v56 = v14;
  v59 = v7;
  v16 = *(v7 + 16);

  v60 = v12;
  v61 = AssociatedTypeWitness;
  v64 = v9;
  v16(v9, v2 + v12, AssociatedTypeWitness);
  v17 = *(a2 + 48);
  v63 = v2;
  v18 = v2 + v17;
  v20 = *(v2 + v17);
  v19 = *(v2 + v17 + 8);
  v21 = *(v2 + v17 + 16);
  v22 = *(v2 + v17 + 24);
  v23 = *(v2 + v17 + 32);
  v24 = *(v2 + v17 + 40);
  v25 = *(v2 + v17 + 48);
  v26 = *(v2 + v17 + 64);
  v27 = *(v2 + v17 + 80);
  v28 = *(v2 + v17 + 72);
  v29 = *(v2 + v17 + 56);
  v31 = *(v2 + v17 + 88);
  v30 = *(v18 + 96);
  v32 = *(v18 + 104);
  v33 = *(v18 + 144);
  if ((v25 & 1) == 0)
  {
    if (v10)
    {
      if ((v19 & 1) == 0)
      {
        if (*(v18 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v19 & 1) != 0 || v65 != v20)
    {
      goto LABEL_2;
    }

    if (v11)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v22 & 1) != 0 || v62 != v21)
    {
      goto LABEL_2;
    }

    v33 = v23;
    goto LABEL_43;
  }

LABEL_2:
  if (*(v18 + 104))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    goto LABEL_10;
  }

  if ((v26 & 1) != 0 || *&v29 != v65)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v11)
  {
    if (v27)
    {
LABEL_21:

      v33 = v31;
      goto LABEL_43;
    }
  }

  else if ((v27 & 1) == 0 && *&v28 == v62)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v18 + 160))
  {
LABEL_23:
    v48 = v28;
    v49 = v29;
    v52 = v25;
    v51 = v22;
    v50 = v21;
    v47 = v19;
    v53 = v23;
    v54 = v24;
    swift_beginAccess();
    v34 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v34[4] = v65;
      *(v34 + 5) = v10;
      v34[6] = v62;
      *(v34 + 28) = v11;
    }

    v67 = v10;
    v66 = v11;
    if (v55)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    v36 = v62;
    v37 = v65;
    v33 = closure #1 in ViewLayoutEngine.sizeThatFits(_:)(v63, *&v65, v10, *&v62, v11, v56, v15, v35, v64, v57, v58);
    v39 = v38;

    v40 = v48;
    *(v18 + 112) = v49;
    *(v18 + 128) = v40;
    *(v18 + 144) = v31;
    *(v18 + 152) = v30;
    *(v18 + 160) = v32;
    v41 = v47;
    *(v18 + 56) = v20;
    *(v18 + 64) = v41;
    v42 = v51;
    *(v18 + 72) = v50;
    *(v18 + 80) = v42;
    v43 = v54;
    *(v18 + 88) = v53;
    *(v18 + 96) = v43;
    *(v18 + 104) = v52;
    *v18 = v37;
    *(v18 + 8) = v10;
    *(v18 + 16) = v36;
    *(v18 + 24) = v11;
    *(v18 + 32) = v33;
    *(v18 + 40) = v39;
    *(v18 + 48) = 0;
    goto LABEL_45;
  }

  if (v10)
  {
    if ((*(v18 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v18 + 120) & 1) != 0 || *(v18 + 112) != v65)
  {
    goto LABEL_23;
  }

  if (v11)
  {
    if ((*(v18 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v18 + 136) & 1) != 0 || *(v18 + 128) != v62)
  {
    goto LABEL_23;
  }

LABEL_43:
  swift_beginAccess();
  v44 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v44[4] = v65;
    *(v44 + 5) = v10;
    v44[6] = v62;
    *(v44 + 28) = v11 | 0x100;
  }

LABEL_45:
  (*(v59 + 40))(v63 + v60, v64, v61);
  return v33;
}

uint64_t initializeWithCopy for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 48);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v19 + 16);
  v20 = *(v19 + 32);
  *v18 = *v19;
  *(v18 + 16) = v21;
  *(v18 + 32) = v20;
  v22 = *(v19 + 96);
  v24 = *(v19 + 48);
  v23 = *(v19 + 64);
  *(v18 + 80) = *(v19 + 80);
  *(v18 + 96) = v22;
  *(v18 + 48) = v24;
  *(v18 + 64) = v23;
  v25 = *(v19 + 160);
  v27 = *(v19 + 128);
  v26 = *(v19 + 144);
  *(v18 + 112) = *(v19 + 112);
  *(v18 + 128) = v27;
  *(v18 + 144) = v26;
  *(v18 + 160) = v25;
  v28 = ((v14 + 199) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;
  v31 = ((v28 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v33 = *v34;
  v35 = *(v34 + 64);
  v37 = *(v34 + 32);
  v36 = *(v34 + 48);
  *(v33 + 16) = *(v34 + 16);
  *(v33 + 32) = v37;
  *(v33 + 48) = v36;
  *(v33 + 64) = v35;
  *((v31 + 87) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 87) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for ViewLayoutEngine(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))((v4 + *(*(AssociatedTypeWitness - 8) + 80)) & ~*(*(AssociatedTypeWitness - 8) + 80), AssociatedTypeWitness);
}

uint64_t LayoutEngineBox.explicitAlignment(_:at:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return (*(*(v3 + 184) + 64))(a1, v6, *(v3 + 176));
}

uint64_t LayoutChildGeometries.value.getter()
{
  v0 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = Value[1];
  type metadata accessor for CGPoint(0);
  v2 = AGGraphGetValue();
  v3 = *v2;
  v4 = v2[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v9[0] = v7;
    v9[1] = v8;
    v5 = (*(*v0 + 136))(v9, v3, v4);

    return v5;
  }

  return result;
}

uint64_t outlined init with copy of StackLayout.Child(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 17) = *(a1 + 17);
  *(a2 + 8) = v3;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  v4 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v4;
  v5 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v5;

  return a2;
}

uint64_t assignWithTake for _StackLayoutCache(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  LOBYTE(v4) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t ColorBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 176) - 8) + 32))(v2 + *(*v2 + 192), a1);
  return v2;
}

uint64_t LayoutComputer.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = (v8 + 16);
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox(0, a2, a3, v11);
    (*v12)(v10, a1, a2);
    swift_allocObject();
    v13 = TracingLayoutEngineBox.init(_:)(v10);
  }

  else
  {
    type metadata accessor for LayoutEngineBox(0, a2, a3, v11);
    (*v12)(v10, a1, a2);
    v13 = ColorBox.__allocating_init(_:)(v10);
  }

  v14 = v13;
  result = (*(v8 + 8))(a1, a2);
  *a4 = v14;
  a4[1] = 0;
  return result;
}

uint64_t _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, Swift::UInt32 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, char w7_0@<W7>)
{
  v10 = a6;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 1;
  *(a8 + 216) = 0u;
  *(a8 + 232) = 0u;
  *(a8 + 248) = 0u;
  *(a8 + 264) = 1;
  *(a8 + 272) = 0u;
  *(a8 + 288) = 0u;
  *(a8 + 304) = 0u;
  *(a8 + 320) = 1;
  v14 = (a8 + 328);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = MEMORY[0x1E69E7CC0];
  *(a8 + 440) = 0;
  *(a8 + 368) = 0;
  *(a8 + 376) = 0;
  *(a8 + 360) = v15;
  *(a8 + 384) = 0;
  *(a8 + 392) = 0;
  *(a8 + 400) = 0;
  *(a8 + 408) = 0;
  *(a8 + 416) = 0;
  *(a8 + 424) = 0;
  *(a8 + 432) = 0;
  *(a8 + 136) = a6;
  *(a8 + 144) = a7;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a5);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v16 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a8 + 152) = v16;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  if (v16)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  specialized HVStack.makeCache(subviews:)(v10, a7, v17, a1, a2, a3 & 1, w7_0, (a8 + 24));
}

__n128 closure #1 in StackLayout.sizeThatFits(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, __n128 *a8@<X8>)
{
  if (a1[2].n128_u8[8])
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((a5 & 1) != 0 || a1[2].n128_f64[0] != a4)
  {
    goto LABEL_10;
  }

  if (a1[3].n128_u8[8])
  {
    if (a7)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (a7)
  {
    goto LABEL_10;
  }

  if (a1[3].n128_f64[0] != a6 && a3 != 0)
  {
LABEL_11:
    if (a1[1].n128_u8[1])
    {
      v14 = *&a4;
    }

    else
    {
      v14 = *&a6;
    }

    if (a1[1].n128_u8[1])
    {
      v15 = a5;
    }

    else
    {
      v15 = a7;
    }

    v16 = a5 & 1;
    v17 = a7 & 1;
    specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(*&a4, a5 & 1, *&a6, a7 & 1, a1, a2, a3, v14, v15 & 1);
    if (a1[6].n128_u8[2] == 1)
    {
      StackLayout.UnmanagedImplementation.resizeAnyChildrenWithTrailingOverflow(in:)(*&a4, v16, *&a6, v17, a1, a2, a3);
    }

    a1[2].n128_f64[0] = a4;
    a1[2].n128_u8[8] = v16;
    a1[3].n128_f64[0] = a6;
    a1[3].n128_u8[8] = v17;
  }

LABEL_20:
  result = a1[4];
  *a8 = result;
  return result;
}

__n128 specialized HVStack.makeCache(subviews:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, _OWORD *a8@<X8>)
{
  *&v10 = a4;
  *(&v10 + 1) = a5;
  LOBYTE(v11) = a6 & 1;
  BYTE1(v11) = a7;
  *&v12 = 0xFFF0000000000000;
  BYTE8(v12) = 0;
  v13.n128_u64[0] = 0xFFF0000000000000;
  v13.n128_u8[8] = 0;
  LODWORD(v14) = a1;
  *(&v14 + 1) = a2;
  LOBYTE(v15) = a3 & 1;
  *(&v15 + 1) = HIBYTE(a3) & 1;
  *(&v15 + 1) = MEMORY[0x1E69E7CC0];

  StackLayout.makeChildren()();
  a8[4] = 0uLL;
  a8[5] = v14;
  a8[6] = v15;
  *a8 = v10;
  a8[1] = v11;
  result = v13;
  a8[2] = v12;
  a8[3] = v13;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm@<X0>(const void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a2(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 464) = v11;
    *(v8 + 468) = v10;
  }

  else
  {
    a3(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x1C0uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

double _s7SwiftUI7HVStackPAAE12sizeThatFits8proposal8subviews5cacheSo6CGSizeVAA16ProposedViewSizeV_AA14LayoutSubviewsVAA06_StackN5CacheVztFAA07_HStackN0V_Tt0t2g5Tm(uint64_t a1, char a2, uint64_t a3, char a4, __n128 *a5)
{
  v10 = a5[6].n128_u64[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v11 = *(v10 + 2);
  v13.n128_u8[0] = a2 & 1;
  closure #1 in StackLayout.sizeThatFits(_:)(a5, (v10 + 32), v11, *&a1, a2 & 1, *&a3, a4 & 1, &v13);
  result = v13.n128_f64[0];
  a5[6].n128_u64[1] = v10;
  return result;
}

uint64_t initializeWithCopy for StackLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v3;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v27[56] = *MEMORY[0x1E69E9840];
  v25[0] = a6;
  v25[1] = a7;
  v13 = a8 & 1;
  v26 = a8 & 1;
  v21[4] = v25;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v27[0] = v15;
      v27[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, v27, 1);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v27, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_VStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>);
    }
  }
}

uint64_t one-time initialization function for invalidValue()
{
  static ViewGeometry.invalidValue = vdupq_n_s64(0x7FF8000000000000uLL);
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  xmmword_1ED53A0F8 = static ViewDimensions.invalidValue;
  xmmword_1ED53A108 = xmmword_1ED539E28;
  unk_1ED53A118 = unk_1ED539E38;
}

double one-time initialization function for invalidValue()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v0 = static LayoutComputer.defaultValue;
  v1 = one-time initialization token for invalidValue;

  if (v1 != -1)
  {
    swift_once();
  }

  static ViewDimensions.invalidValue = v0;
  result = *&static CGSize.invalidValue;
  xmmword_1ED539E28 = static CGSize.invalidValue;
  unk_1ED539E38 = static CGSize.invalidValue;
  return result;
}

{
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  result = *&static CGSize.invalidValue;
  static SizeThatFitsMeasurer.invalidValue = static CGSize.invalidValue;
  return result;
}

int64x2_t one-time initialization function for invalidValue()
{
  result = vdupq_n_s64(0xFFF0000000000000);
  static CGSize.invalidValue = result;
  return result;
}

void lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews()
{
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutSubviews, &type metadata for LayoutSubviews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutSubviews, &type metadata for LayoutSubviews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutSubviews, &type metadata for LayoutSubviews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutSubviews, &type metadata for LayoutSubviews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance EnvironmentFetch<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for ViewLayoutEngine(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

void type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>)
  {
    type metadata accessor for (Spacing.Key, Spacing.Value)();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>);
    }
  }
}

uint64_t SpacerLayoutComputer.Engine.spacing()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if ((*(v5 + 32))(v6, v5))
  {
    v7 = (*(v5 + 48))(v6, v5);
    v8 = *(v2 + *(a1 + 36));
    if (v7)
    {
      if (v8 != 2)
      {
        type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(0);
        if (v8)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDACA80;
          if (one-time initialization token for textBaseline != -1)
          {
            v22 = inited;
            swift_once();
            inited = v22;
          }

          v10 = static Spacing.Category.textBaseline;
          *(inited + 32) = static Spacing.Category.textBaseline;
          *(inited + 40) = 0;
          v11 = 0uLL;
          *(inited + 48) = 0u;
          *(inited + 64) = 0u;
          *(inited + 80) = 0;
          *(inited + 88) = v10;
          v12 = 2;
          *(inited + 96) = 2;
          *(inited + 104) = 0u;
          *(inited + 120) = 0u;
          *(inited + 136) = 0;
          if (one-time initialization token for default != -1)
          {
            v23 = inited;
            swift_once();
            v11 = 0uLL;
            inited = v23;
          }

          v13 = static Spacing.Category.default;
          *(inited + 144) = static Spacing.Category.default;
          *(inited + 152) = 0;
        }

        else
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDACA80;
          if (one-time initialization token for leftTextBaseline != -1)
          {
            v24 = inited;
            swift_once();
            inited = v24;
          }

          *(inited + 32) = static Spacing.Category.leftTextBaseline;
          *(inited + 40) = 1;
          v19 = 0uLL;
          *(inited + 48) = 0u;
          *(inited + 64) = 0u;
          *(inited + 80) = 0;
          if (one-time initialization token for rightTextBaseline != -1)
          {
            v25 = inited;
            swift_once();
            v19 = 0uLL;
            inited = v25;
          }

          *(inited + 88) = static Spacing.Category.rightTextBaseline;
          v12 = 3;
          *(inited + 96) = 3;
          *(inited + 104) = v19;
          *(inited + 120) = v19;
          *(inited + 136) = 0;
          if (one-time initialization token for default != -1)
          {
            v26 = inited;
            swift_once();
            inited = v26;
          }

          v13 = static Spacing.Category.default;
          *(inited + 144) = static Spacing.Category.default;
          *(inited + 152) = 1;
          v11 = 0uLL;
        }

        *(inited + 160) = v11;
        *(inited + 176) = v11;
        *(inited + 192) = 0;
        *(inited + 200) = v13;
        *(inited + 208) = v12;
        *(inited + 216) = v11;
        *(inited + 232) = v11;
        *(inited + 248) = 0;
LABEL_36:
        v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
        result = swift_setDeallocating();
        *a2 = v21;
        return result;
      }
    }

    else if (v8 != 2)
    {
      type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(0);
      if (v8)
      {
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_18DDAB4C0;
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v16 = static Spacing.Category.default;
        *(v15 + 32) = static Spacing.Category.default;
        *(v15 + 40) = 0;
        v17 = 0uLL;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        *(v15 + 80) = 0;
        *(v15 + 88) = v16;
        v18 = 2;
      }

      else
      {
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_18DDAB4C0;
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v20 = static Spacing.Category.default;
        *(v15 + 32) = static Spacing.Category.default;
        *(v15 + 40) = 1;
        v17 = 0uLL;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        *(v15 + 80) = 0;
        *(v15 + 88) = v20;
        v18 = 3;
      }

      *(v15 + 96) = v18;
      *(v15 + 104) = v17;
      *(v15 + 120) = v17;
      *(v15 + 136) = 0;
      inited = v15;
      goto LABEL_36;
    }

    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    *a2 = static Spacing.zero;
  }

  else
  {

    return Spacing.init()().minima._rawValue;
  }
}

void type metadata accessor for _DictionaryStorage<GestureDependency, Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t specialized SpacerLayoutComputer.updateValue()(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(v2 + 4);
  if (v3 == 2)
  {
    if (*(v2 + 8) == *MEMORY[0x1E698D3F8])
    {
      v3 = 2;
    }

    else
    {
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Axis?, &type metadata for Axis, MEMORY[0x1E69E6720]);
      v3 = *AGGraphGetValue();
    }
  }

  Value = AGGraphGetValue();
  v5 = *(Value + 8) | (v3 << 8);
  v6 = *Value;

  return a2(v6, v5);
}

uint64_t specialized StatefulRule<>.update<A>(to:)(uint64_t a1, __int16 a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a2 & 0xFF01;
  v11[4] = &v12;
  v12 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>.Engine, &type metadata for Spacer, &protocol witness table for Spacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>, v11);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a3(0);
    v10 = swift_allocObject();
    result = AGGraphGetCurrentAttribute();
    v12 = result == *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = result;
    }

    *(v10 + 28) = v13;
    *(v10 + 32) = v12;
  }

  else
  {
    a4(0);
    result = swift_allocObject();
    v10 = result;
  }

  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 25) = HIBYTE(a2);
  *a5 = v10;
  a5[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>.Engine, &type metadata for Spacer, &protocol witness table for Spacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key, &type metadata for Spacing.Key, &type metadata for Spacing.Value);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 56)
    {
      v5 = *(i - 1);
      v6 = *i;
      v15 = *(i + 24);
      v16 = *(i + 8);
      v7 = i[40];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, *i);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[7] + 40 * result;
      *v11 = v16;
      *(v11 + 16) = v15;
      *(v11 + 32) = v7;
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

void type metadata accessor for _ContiguousArrayStorage<(String, CGFloat)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for (Path, FillStyle)(255, a3, a4, a5);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(char a1, _BYTE *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *v3;
  if (*a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  if (*a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (*(v5 + 16) >= *(v4 + 16))
  {
    v14 = *a3;
    v13 = v9;
    v12 = v8;
    v11 = v5;
  }

  else
  {
    v14 = *v3;
    v13 = v8;
    v12 = v9;
    v11 = v4;
  }

  return Spacing._distance(from:to:ofViewPreferring:)(&v13, &v12, &v11);
}

uint64_t Spacing._distance(from:to:ofViewPreferring:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v98 = *a1;
  v96 = *a2;
  v4 = *a3;
  v5 = *v3;
  v6 = *v3 + 64;
  v95 = 1;
  v7 = 1 << *(*v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*v3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = v4;
  v94 = 0.0;
  v12 = 0;
  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
  v14 = off_1ED533000;
  v97 = v4;
  while (v9)
  {
LABEL_9:
    v16 = __clz(__rbit64(v9)) | (v12 << 6);
    v17 = v5[6] + 16 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = v5[7] + 40 * v16;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    if (v13[430] != -1)
    {
      v93 = v18;
      v59 = *(v20 + 16);
      swift_once();
      v23 = v59;
      v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
      v14 = off_1ED533000;
      v11 = v97;
      v18 = v93;
    }

    v9 &= v9 - 1;
    v26 = v18 != v14[164] && v19 == v98;
    if (v26)
    {
      if (*(v11 + 16))
      {
        v27 = v23;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v96);
        v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
        v14 = off_1ED533000;
        v11 = v97;
        if (v29)
        {
          v30 = *(v97 + 56) + 40 * v28;
          v32 = *v30;
          v31 = *(v30 + 8);
          v33 = *(v30 + 32);
          if (v25 == 1)
          {
            if (!*(v30 + 32))
            {
LABEL_38:
              v35.i64[0] = *v30;
              goto LABEL_110;
            }

            if (v33 == 2)
            {
              v88 = *(v30 + 16);
              if (one-time initialization token for semantic != -1)
              {
                v72 = *(v30 + 8);
                v73 = *v30;
                swift_once();
                v32 = v73;
                v31 = v72;
              }

              v90 = v32;
              v92 = v31;
              v39 = static Semantics_v5.semantic;
              if (one-time initialization token for forced != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if (byte_1ED53C51C != 1)
              {
                v35.i64[0] = 0;
                v11 = v97;
                v14 = off_1ED533000;
                v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                if (static Semantics.forced < v39)
                {
                  goto LABEL_110;
                }

LABEL_43:
                v40.n128_f64[0] = v21;
                v43 = v92;
                v44 = v88;
                if ((~*&v21 & 0x7FF0000000000000) == 0 || (*&v90 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v90;
                  v52 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v40, v41);
                  v43 = v92;
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v97;
                  v47 = v27;
                  if ((v52 & 1) == 0)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  v45 = fabs(v21);
                  v46 = fabs(v90);
                  if (v45 <= v46)
                  {
                    v45 = v46;
                  }

                  if (v45 <= 2.22507386e-308)
                  {
                    v45 = 2.22507386e-308;
                  }

                  v47 = v27;
                  if (vabdd_f64(v21, v90) >= v45 * 0.0000000149011612)
                  {
LABEL_103:
                    v44 = v90 + v92 + v88 - v92 + v22 - v22 - v90;
                    goto LABEL_104;
                  }
                }

                if ((~*&v22 & 0x7FF0000000000000) == 0 || (*&v43 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v92;
                  v40.n128_f64[0] = v22;
                  v60 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v40, v41);
                  v47 = v27;
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v97;
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  v53 = fabs(v22);
                  v54 = fabs(v92);
                  if (v53 <= v54)
                  {
                    v53 = v54;
                  }

                  if (v53 <= 2.22507386e-308)
                  {
                    v53 = 2.22507386e-308;
                  }

                  if (vabdd_f64(v22, v92) >= v53 * 0.0000000149011612)
                  {
                    goto LABEL_103;
                  }
                }

                v40.n128_f64[0] = v47;
                if ((~*&v47 & 0x7FF0000000000000) == 0 || (*&v88 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v88;
                  v67 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v40, v41);
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v97;
                  if ((v67 & 1) == 0)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  v61 = fabs(v47);
                  v62 = fabs(v88);
                  if (v61 <= v62)
                  {
                    v61 = v62;
                  }

                  if (v61 <= 2.22507386e-308)
                  {
                    v61 = 2.22507386e-308;
                  }

                  if (vabdd_f64(v47, v88) >= v61 * 0.0000000149011612)
                  {
                    goto LABEL_103;
                  }
                }

LABEL_104:
                if (v24 == 1.0)
                {
                  goto LABEL_105;
                }

LABEL_109:
                *v35.i64 = v24 * ceil(v44 / v24);
                goto LABEL_110;
              }

              v42 = dyld_program_sdk_at_least();
              v35.i64[0] = 0;
              v11 = v97;
              v14 = off_1ED533000;
              v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
              if (v42)
              {
                goto LABEL_43;
              }

              goto LABEL_110;
            }
          }

          else
          {
            if (v25 != 2)
            {
              *v35.i64 = v21;
              if (!*(v30 + 32))
              {
                *v35.i64 = v21 + v32;
              }

              goto LABEL_110;
            }

            if (!*(v30 + 32))
            {
              goto LABEL_38;
            }

            if (v33 == 1)
            {
              v24 = *(v30 + 24);
              v87 = *(v30 + 16);
              if (one-time initialization token for semantic != -1)
              {
                v70 = *(v30 + 8);
                v71 = *v30;
                swift_once();
                v32 = v71;
                v31 = v70;
              }

              v89 = v32;
              v91 = v31;
              v34 = static Semantics_v5.semantic;
              if (one-time initialization token for forced != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if (byte_1ED53C51C != 1)
              {
                v35.i64[0] = 0;
                v11 = v97;
                v14 = off_1ED533000;
                v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                if (static Semantics.forced < v34)
                {
                  goto LABEL_110;
                }

LABEL_52:
                v48 = v27;
                v44 = v27;
                v49 = v91;
                v36.n128_f64[0] = v89;
                if ((~*&v89 & 0x7FF0000000000000) == 0 || (*&v21 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v21;
                  v51 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v36, v37);
                  v49 = v91;
                  v48 = v27;
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v97;
                  if (v51)
                  {
                    goto LABEL_73;
                  }
                }

                else
                {
                  v55 = fabs(v89);
                  v56 = fabs(v21);
                  if (v55 <= v56)
                  {
                    v55 = v56;
                  }

                  if (v55 <= 2.22507386e-308)
                  {
                    v55 = 2.22507386e-308;
                  }

                  if (vabdd_f64(v89, v21) < v55 * 0.0000000149011612)
                  {
LABEL_73:
                    if ((~*&v49 & 0x7FF0000000000000) == 0 || (*&v22 & 0x7FF0000000000000) == 0x7FF0000000000000)
                    {
                      *v35.i64 = v22;
                      v36.n128_f64[0] = v91;
                      v58 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v36, v37);
                      v48 = v27;
                      v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                      v14 = off_1ED533000;
                      v11 = v97;
                      if (v58)
                      {
                        goto LABEL_94;
                      }
                    }

                    else
                    {
                      v63 = fabs(v91);
                      v64 = fabs(v22);
                      if (v63 <= v64)
                      {
                        v63 = v64;
                      }

                      if (v63 <= 2.22507386e-308)
                      {
                        v63 = 2.22507386e-308;
                      }

                      if (vabdd_f64(v91, v22) < v63 * 0.0000000149011612)
                      {
LABEL_94:
                        v36.n128_f64[0] = v87;
                        if ((~*&v87 & 0x7FF0000000000000) == 0 || (*&v48 & 0x7FF0000000000000) == 0x7FF0000000000000)
                        {
                          *v35.i64 = v27;
                          v68 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v36, v37);
                          v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                          v14 = off_1ED533000;
                          v11 = v97;
                          if (v68)
                          {
                            goto LABEL_108;
                          }
                        }

                        else
                        {
                          v65 = fabs(v87);
                          v66 = fabs(v27);
                          if (v65 <= v66)
                          {
                            v65 = v66;
                          }

                          if (v65 <= 2.22507386e-308)
                          {
                            v65 = 2.22507386e-308;
                          }

                          if (vabdd_f64(v87, v27) < v65 * 0.0000000149011612)
                          {
LABEL_108:
                            if (v24 == 1.0)
                            {
LABEL_105:
                              *v35.i64 = ceil(v44);
                              goto LABEL_110;
                            }

                            goto LABEL_109;
                          }
                        }
                      }
                    }
                  }
                }

                v44 = v21 + v22 + v27 - v22 + v91 - v91 - v21;
                goto LABEL_108;
              }

              v38 = dyld_program_sdk_at_least();
              v35.i64[0] = 0;
              v11 = v97;
              v14 = off_1ED533000;
              v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
              if (v38)
              {
                goto LABEL_52;
              }

LABEL_110:
              v69 = v94;
              if (v95)
              {
                v69 = -INFINITY;
              }

              if (v69 > *v35.i64)
              {
                *v35.i64 = v69;
              }

              v94 = *v35.i64;
              v95 = 0;
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_141;
    }

    if (v15 < v10)
    {
      v9 = *(v6 + 8 * v15);
      ++v12;
      if (v9)
      {
        v12 = v15;
        goto LABEL_9;
      }

      continue;
    }

    break;
  }

  if ((v95 & 1) == 0)
  {
    *&result = v94;
    return result;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_141:
    swift_once();
  }

  v74 = 0.0;
  if (v5[2] && (v75 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, v98), (v76 & 1) != 0))
  {
    v77 = v5[7] + 40 * v75;
    v78 = *v77;
    LODWORD(v77) = *(v77 + 32);
    v79 = v77 != 0;
    if (v77)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v78;
    }
  }

  else
  {
    v79 = 1;
  }

  if (*(v97 + 16) && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, v96), (v82 & 1) != 0))
  {
    v83 = *(v97 + 56) + 40 * v81;
    v84 = *v83;
    LODWORD(v83) = *(v83 + 32);
    v26 = v83 == 0;
    v85 = v83 != 0;
    if (v26)
    {
      result = v84;
    }

    else
    {
      *&result = 0.0;
    }

    if (!v79)
    {
LABEL_130:
      if (v85)
      {
        v86 = -INFINITY;
        goto LABEL_136;
      }

LABEL_135:
      v86 = *&result;
LABEL_136:
      if (v74 > v86)
      {
        v86 = v74;
      }

      *&result = v86;
      return result;
    }
  }

  else
  {
    *&result = 0.0;
    v85 = 1;
    if (!v79)
    {
      goto LABEL_130;
    }
  }

  if (!v85)
  {
    v74 = -INFINITY;
    goto LABEL_135;
  }

  return result;
}

uint64_t LayoutSubview.spacing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v1 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v5 = *InputValue;
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v5 + 112))(&v8);

    *a1 = v8;
    *(a1 + 8) = v3;
  }

  return result;
}

Swift::Void __swiftcall ForEachState.evictItems(seed:)(Swift::UInt32 seed)
{
  v2 = v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](*&seed);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v11;
  v13 = *(v12 + 256);
  if (*(v1 + v13) == v7)
  {
    return;
  }

  v14 = *(v9 + 264);
  if (*(v1 + v14) != 1)
  {
    return;
  }

  v45 = v8;
  v46 = v10;
  v42 = v14;
  *(v1 + v13) = v7;
  v56[0] = *(v9 + 80);
  v56[1] = v3;
  v15 = *(v9 + 96);
  v50 = *(v9 + 112);
  v57 = v15;
  v58 = v50;
  v16 = type metadata accessor for ForEachState.Item(0, v56);
  v59 = Array.init()();
  v17 = *(*v1 + 200);
  swift_beginAccess();

  v19 = v50;
  v20 = MEMORY[0x193ABE620](v18, v3, v16, v50);
  v22 = v21;
  v24 = v23;

  v53 = v20;
  v54 = v22;
  v25 = v17;
  v55 = v24 & 1;

  v27 = MEMORY[0x193ABE6F0](v26, v3, v16, v19);
  v48 = v28;
  v49 = v27;
  v47 = v29;

  v44 = *(*v2 + 272);
  v43 = (v4 + 16);
  v30 = (v4 + 8);
  *&v50 = 64;
  while ((static Dictionary.Index.== infix(_:_:)() & 1) == 0)
  {
    v32 = v25;

    Dictionary.subscript.getter();

    if ((*(v52 + *(*v52 + 240)) & 1) == 0)
    {
      v33 = *(*v52 + 232);
      if (*(v52 + v33) == 1)
      {
        if (v52[6] == 1)
        {
          type metadata accessor for Array();

          Array.append(_:)();
          (*v43)(v46, v51, v3);
          swift_beginAccess();
          type metadata accessor for Set();
          v34 = v45;
          Set.insert(_:)();
          swift_endAccess();
          (*v30)(v34, v3);
          *&v50 = v50 - 1;
        }
      }

      else
      {
        --*(v52 + v33);
      }
    }

    v25 = v32;
    v31 = *(v2 + v32);

    MEMORY[0x193ABE700](&v53, v31, v3, v16, v19);

    (*v30)(v51, v3);
    if (v50 <= 0)
    {
      goto LABEL_12;
    }
  }

  *&v50 = 1;
LABEL_12:
  v35 = v59;
  if (!MEMORY[0x193ABF2C0](v59, v16))
  {
    goto LABEL_21;
  }

  v36 = 4;
  while (1)
  {
    v37 = v36 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v39 = *(v35 + 8 * v36);

    v40 = v36 - 3;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_20;
    }

LABEL_16:
    ForEachState.eraseItem(_:)(v39);

    ++v36;
    if (v40 == MEMORY[0x193ABF2C0](v35, v16))
    {
      goto LABEL_21;
    }
  }

  v39 = _ArrayBuffer._getElementSlowPath(_:)();
  v40 = v36 - 3;
  if (!__OFADD__(v37, 1))
  {
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v49, v48, v47 & 1);

  v41 = v50 == 0;
  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v53, v54, v55);
  *(v2 + v42) = v41;
}

void ForEachState.Evictor.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    if ((*WeakValue & 1) == 0)
    {
      return;
    }

    goto LABEL_3;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_3:
    Value = AGGraphGetValue();
    ForEachState.evictItems(seed:)(*Value);
  }
}

uint64_t SpacerLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  result = (*(v2 + 32))(v3, v2);
  if (result)
  {
    result = (*(v2 + 24))(v3, v2, 0.0, 0.0);
    if (v5)
    {
      return swift_beginAccess();
    }
  }

  return result;
}

SwiftUI::Spacing __swiftcall Spacing.init()()
{
  v1 = v0;
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  if (one-time initialization token for edgeBelowText != -1)
  {
    swift_once();
  }

  *(inited + 32) = static Spacing.Category.edgeBelowText;
  *(inited + 40) = 0;
  v3 = 0uLL;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0;
  if (one-time initialization token for edgeAboveText != -1)
  {
    swift_once();
    v3 = 0uLL;
  }

  *(inited + 88) = static Spacing.Category.edgeAboveText;
  *(inited + 96) = 2;
  *(inited + 104) = v3;
  *(inited + 120) = v3;
  *(inited + 136) = 0;
  if (one-time initialization token for edgeRightText != -1)
  {
    swift_once();
  }

  *(inited + 144) = static Spacing.Category.edgeRightText;
  *(inited + 152) = 1;
  v4 = 0uLL;
  *(inited + 160) = 0u;
  *(inited + 176) = 0u;
  *(inited + 192) = 0;
  if (one-time initialization token for edgeLeftText != -1)
  {
    swift_once();
    v4 = 0uLL;
  }

  *(inited + 200) = static Spacing.Category.edgeLeftText;
  *(inited + 208) = 3;
  *(inited + 216) = v4;
  *(inited + 232) = v4;
  *(inited + 248) = 0;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result.minima._rawValue = swift_setDeallocating();
  *v1 = v5;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI12AnyHashable2V_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
  result = MEMORY[0x193ABF540](v2, &type metadata for AnyHashable2, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      specialized Set._Variant.insert(_:)(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *closure #1 in _GraphInputs.containerShape.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  if (!a1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(*a1, a2);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v2, a2);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(a1, v8);
  if (result)
  {
    v6 = *(result + 11);
    *a2 = *(result + 9);
    *(a2 + 16) = v6;
    *(a2 + 32) = *(result + 13);
    v7 = *(result + 113);
  }

  else
  {
    *a2 = &type metadata for DefaultContainerShapeType;
    *(a2 + 8) = &protocol witness table for DefaultContainerShapeType;
    v7 = 0uLL;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  *(a2 + 41) = v7;
  return result;
}

void type metadata accessor for (Spacing.Key, Spacing.Value)()
{
  if (!lazy cache variable for type metadata for (Spacing.Key, Spacing.Value))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacing.Key, Spacing.Value));
    }
  }
}

uint64_t one-time initialization function for default(uint64_t a1)
{
  result = AGMakeUniqueID();
  static Spacing.Category.default = result;
  return result;
}

void lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key()
{
  if (!lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for Spacing.Key, &type metadata for Spacing.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key);
  }
}

{
  if (!lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for Spacing.Key, &type metadata for Spacing.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key);
  }
}

uint64_t one-time initialization function for edgeRightText(uint64_t a1)
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeRightText = result;
  return result;
}

uint64_t one-time initialization function for edgeLeftText(uint64_t a1)
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeLeftText = result;
  return result;
}

Swift::Void __swiftcall AnimatableFrameAttribute.updateValue()()
{
  v1 = v0;
  v19 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v14 = *Value;
  v5 = AGGraphGetValue();
  v7 = v4 | v6;
  v13 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = *AGGraphGetValue();
  v15[0] = v14;
  v15[1] = v13;
  v16 = v8;
  v17 = v9;
  if (v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 & 1;
  }

  v18 = v12;
  ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(v11);
  if ((*(v1 + 84) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v15, 0, *(v1 + 12), v1 + 16);
  }

  if ((v18 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }
}

uint64_t ConcentricLayoutComputer.updateValue()()
{
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = Value[1];
    v8 = *Value;
    v5 = *(AGGraphGetValue() + 8);

    v3 = v7;
    v2 = v8;
  }

  v9[0] = v2;
  v9[1] = v3;
  v10 = v4;
  v11 = v5;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v23 = 1;
  specialized StatefulRule<>.updateIfNotEqual<A>(to:)(v9);
  return outlined destroy of ConcentricLayoutComputer.Engine(v9);
}

uint64_t outlined init with copy of ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v4;
  v5 = *(a1 + 144);
  v7 = *(a1 + 96);
  v6 = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v5;
  *(a2 + 96) = v7;
  *(a2 + 112) = v6;
  v9 = *(a1 + 176);
  v8 = *(a1 + 192);
  v10 = *(a1 + 160);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 176) = v9;
  *(a2 + 192) = v8;
  *(a2 + 160) = v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v12;
  *(a2 + 48) = v11;

  return a2;
}

uint64_t initializeWithCopy for ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v5;
  *(a1 + 208) = *(a2 + 208);
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  v8 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  v9 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v9;

  return a1;
}

void ConcentricLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 48);
  v10 = *(v1 + 56);
  v12 = *(v1 + 72);
  v13 = *(v1 + 136);
  v14 = *(v1 + 144);
  v15 = *(v1 + 152);
  if ((*(v1 + 96) & 1) == 0)
  {
    if (v3)
    {
      if ((v10 & 1) == 0)
      {
        if (*(v1 + 152))
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }
    }

    else if ((v10 & 1) != 0 || v2 != v11)
    {
      goto LABEL_2;
    }

    if (v5)
    {
      if (v12)
      {
        goto LABEL_38;
      }
    }

    else if ((v12 & 1) == 0 && v4 == *(v1 + 64))
    {
      goto LABEL_38;
    }
  }

LABEL_2:
  if (*(v1 + 152))
  {
    goto LABEL_21;
  }

  if ((v3 & 1) == 0)
  {
    if ((*(v1 + 112) & 1) != 0 || *(v1 + 104) != v2)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v1 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v5)
  {
    if (*(v1 + 128))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v1 + 128) & 1) == 0 && *(v1 + 120) == v4)
  {
    goto LABEL_38;
  }

LABEL_21:
  if (*(v1 + 208))
  {
    goto LABEL_22;
  }

  if (v3)
  {
    if ((*(v1 + 168) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((*(v1 + 168) & 1) != 0 || *(v1 + 160) != v2)
  {
    goto LABEL_22;
  }

  if ((v5 & 1) == 0)
  {
    if ((*(v1 + 184) & 1) == 0 && *(v1 + 176) == v4)
    {
      goto LABEL_38;
    }

LABEL_22:
    v21 = *(v1 + 120);
    v22 = *(v1 + 104);
    v25 = *(v1 + 96);
    v23 = *(v1 + 64);
    v24 = *(v1 + 72);
    v20 = *(v1 + 56);
    v26 = *(v1 + 80);
    v27 = *(v1 + 88);
    swift_beginAccess();
    v16 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v16[4] = v2;
      *(v16 + 5) = v3;
      v16[6] = v4;
      *(v16 + 28) = v5;
    }

    closure #1 in ConcentricLayoutComputer.Engine.sizeThatFits(_:)(v1, *&v2, v3, *&v4, v5, v6, v7, v8, v9);
    *(v1 + 160) = v22;
    *(v1 + 176) = v21;
    *(v1 + 192) = v13;
    *(v1 + 200) = v14;
    *(v1 + 208) = v15;
    *(v1 + 104) = v11;
    *(v1 + 112) = v20;
    *(v1 + 120) = v23;
    *(v1 + 128) = v24;
    *(v1 + 136) = v26;
    *(v1 + 144) = v27;
    *(v1 + 152) = v25;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v1 + 64) = v4;
    *(v1 + 72) = v5;
    *(v1 + 80) = v17;
    *(v1 + 88) = v18;
    *(v1 + 96) = 0;
    return;
  }

  if ((*(v1 + 184) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_38:
  swift_beginAccess();
  v19 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v19[4] = v2;
    *(v19 + 5) = v3;
    v19[6] = v4;
    *(v19 + 28) = v5 | 0x100;
  }
}

void *DynamicLayoutComputer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  v8 = *(v1 + 1);
  v9 = v1[8];
  v25 = *v1;
  *&v10 = *(v1 + 1);
  v14 = v10;
  v26 = v10;
  v27 = v8;
  v28 = v9;
  result = DynamicLayoutComputer.containerInfo.getter(v20);
  if (v20[0])
  {
    v15[0] = v20[0];
    v15[1] = v20[1];
    v16 = v21;
    v17 = v22;
    v18 = v23 & 1;
    v19 = v24;
    v12 = specialized DynamicLayoutMap.attributes(info:)(v15);

    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, a1);
    StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v6, v14, v12, a1, v3, v13, *(a1 + 24));

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicLayoutComputer.containerInfo.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
    *(a1 + 40) = 0;
    v5 = 0uLL;
    *a1 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v7 = *(Value + 8);
    v10 = *(Value + 16);
    v4 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = *(Value + 44);
    *a1 = *Value;
    *(a1 + 8) = v7;
    *(a1 + 40) = v8;
    *(a1 + 44) = v9;

    v5 = v10;
  }

  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  return result;
}

uint64_t StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v17[0] = result;
    v17[1] = result;
    v17[2] = a2;
    v15 = result;
    v16 = a3;

    Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v7, v17, &v15, a5, a4, a7, a6);
  }

  return result;
}

uint64_t Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *a3;
  v13 = *(a3 + 1);
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v14 = type metadata accessor for ViewLayoutEngine(0, a4, a6, a4);
  return StatefulRule<>.update<A>(modify:create:)(partial apply for closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v22, partial apply for closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v16, a5, v14, a7, &protocol witness table for ViewLayoutEngine<A>);
}

uint64_t specialized StatefulRule<>.updateIfNotEqual<A>(to:)(__int128 *a1)
{
  v105 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v87 = a1[10];
  v88 = v2;
  v89 = a1[12];
  v90 = *(a1 + 208);
  v3 = a1[7];
  v83 = a1[6];
  v84 = v3;
  v4 = a1[9];
  v85 = a1[8];
  v86 = v4;
  v5 = a1[3];
  v79 = a1[2];
  v80 = v5;
  v6 = a1[5];
  v81 = a1[4];
  v82 = v6;
  v7 = a1[1];
  v77 = *a1;
  v78 = v7;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    type metadata accessor for LayoutEngineBox<ConcentricLayoutComputer.Engine>(0, &lazy cache variable for type metadata for LayoutEngineBox<ConcentricLayoutComputer.Engine>, &type metadata for ConcentricLayoutComputer.Engine, &protocol witness table for ConcentricLayoutComputer.Engine, type metadata accessor for LayoutEngineBox);
    v11 = swift_dynamicCastClassUnconditional();
    v12 = *(v11 + 16);
    v13 = *(v11 + 32);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    v16 = *(v11 + 96);
    v75[4] = *(v11 + 80);
    v75[5] = v16;
    v75[2] = v14;
    v75[3] = v15;
    v17 = *(v11 + 112);
    v18 = *(v11 + 128);
    v19 = *(v11 + 160);
    v75[8] = *(v11 + 144);
    v75[9] = v19;
    v75[6] = v17;
    v75[7] = v18;
    v20 = *(v11 + 176);
    v21 = *(v11 + 192);
    v22 = *(v11 + 208);
    v76 = *(v11 + 224);
    v75[11] = v21;
    v75[12] = v22;
    v75[10] = v20;
    v75[0] = v12;
    v75[1] = v13;
    v23 = *(v11 + 192);
    v71 = *(v11 + 176);
    v72 = v23;
    v73 = *(v11 + 208);
    v74 = *(v11 + 224);
    v24 = *(v11 + 128);
    v67 = *(v11 + 112);
    v68 = v24;
    v25 = *(v11 + 160);
    v69 = *(v11 + 144);
    v70 = v25;
    v26 = *(v11 + 64);
    v63 = *(v11 + 48);
    v64 = v26;
    v27 = *(v11 + 96);
    v65 = *(v11 + 80);
    v66 = v27;
    v28 = *(v11 + 32);
    v61 = *(v11 + 16);
    v62 = v28;
    swift_retain_n();
    outlined init with copy of ConcentricLayoutComputer.Engine(v75, v59);
    v29 = specialized static ConcentricLayoutComputer.Engine.== infix(_:_:)(&v61, &v77);
    v101 = v71;
    v102 = v72;
    v103 = v73;
    v104 = v74;
    v97 = v67;
    v98 = v68;
    v99 = v69;
    v100 = v70;
    v93 = v63;
    v94 = v64;
    v95 = v65;
    v96 = v66;
    v91 = v61;
    v92 = v62;
    outlined destroy of ConcentricLayoutComputer.Engine(&v91);
    if (!v29)
    {
      v37 = v81;
      v38 = v80;
      v59[4] = v81;
      v59[5] = v82;
      v39 = v78;
      v40 = v79;
      v59[2] = v79;
      v59[3] = v80;
      v41 = v84;
      v42 = v85;
      v59[8] = v85;
      v59[9] = v86;
      v43 = v82;
      v44 = v83;
      v59[6] = v83;
      v59[7] = v84;
      v60 = v90;
      v45 = v88;
      v59[12] = v89;
      v46 = v87;
      v47 = v86;
      v59[10] = v87;
      v59[11] = v88;
      v59[0] = v77;
      v59[1] = v78;
      v48 = *(v11 + 16);
      v49 = *(v11 + 32);
      v50 = *(v11 + 48);
      v51 = *(v11 + 64);
      v52 = *(v11 + 96);
      v65 = *(v11 + 80);
      v66 = v52;
      v63 = v50;
      v64 = v51;
      v53 = *(v11 + 112);
      v54 = *(v11 + 128);
      v55 = *(v11 + 160);
      v69 = *(v11 + 144);
      v70 = v55;
      v67 = v53;
      v68 = v54;
      v56 = *(v11 + 176);
      v57 = *(v11 + 208);
      v72 = *(v11 + 192);
      v73 = v57;
      v71 = v56;
      v61 = v48;
      v62 = v49;
      v74 = *(v11 + 224);
      *(v11 + 16) = v77;
      *(v11 + 32) = v39;
      *(v11 + 80) = v37;
      *(v11 + 96) = v43;
      *(v11 + 48) = v40;
      *(v11 + 64) = v38;
      *(v11 + 176) = v46;
      *(v11 + 192) = v45;
      *(v11 + 208) = v89;
      *(v11 + 224) = v90;
      *(v11 + 112) = v44;
      *(v11 + 128) = v41;
      *(v11 + 144) = v42;
      *(v11 + 160) = v47;
      outlined init with copy of ConcentricLayoutComputer.Engine(v59, v58);
      outlined destroy of ConcentricLayoutComputer.Engine(&v61);
      v58[0] = v9;
      v58[1] = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v30 = a1[11];
    v101 = a1[10];
    v102 = v30;
    v103 = a1[12];
    v104 = *(a1 + 208);
    v31 = a1[7];
    v97 = a1[6];
    v98 = v31;
    v32 = a1[9];
    v99 = a1[8];
    v100 = v32;
    v33 = a1[3];
    v93 = a1[2];
    v94 = v33;
    v34 = a1[5];
    v95 = a1[4];
    v96 = v34;
    v35 = a1[1];
    v91 = *a1;
    v92 = v35;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA010ConcentriccD033_7079FF89BCF97F81EB250A589B9A5CEDLLV0E0V_Tt1B5(&v91, &v61);
    v59[0] = v61;
    outlined init with copy of ConcentricLayoutComputer.Engine(&v91, v75);
    AGGraphSetOutputValue();
  }
}

uint64_t closure #1 in ConcentricLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9)
{
  if (*(a1 + 32))
  {
    v17 = *(a1 + 32);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v17 = static LayoutComputer.defaultValue;
  }

  v18 = *&a2 - (a7 + a9);
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  if ((a3 & 1) == 0)
  {
    *&a2 = v18;
  }

  v19 = *&a4 - (a6 + a8);
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if ((a5 & 1) == 0)
  {
    *&a4 = v19;
  }

  v20 = one-time initialization token for lockAssertionsAreEnabled;

  if (v20 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    v22 = a2;
    v23 = a3 & 1;
    v24 = a4;
    v25 = a5 & 1;
    (*(*v17 + 120))(&v22);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for ViewTransform(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t ViewTransform.coordinateSpaceTag(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  result = outlined init with copy of CoordinateSpace(a1, &v11);
  if (v16 != 2)
  {
    goto LABEL_7;
  }

  if (!(v14 | v15 | v11 | v13 | v12))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return result;
  }

  if (v11 == 1 && (v14 | v15 | v13 | v12) == 0)
  {
    *a2 = -1;
    *(a2 + 8) = 0;
  }

  else
  {
LABEL_7:
    result = outlined destroy of CoordinateSpace(&v11);
    if (v5)
    {
      v8 = *(v5 + 16);

      closure #2 in ViewTransform.coordinateSpaceTag(_:)(v9, a1, &v11);
      v10 = v5;
      if (v11)
      {
LABEL_11:
        *a2 = *(v10 + 72);
        *(a2 + 8) = 0;
      }

      else
      {
        while (v8)
        {
          v10 = v8;
          v8 = *(v8 + 16);
          closure #2 in ViewTransform.coordinateSpaceTag(_:)(v10, a1, &v11);
          if (v11 == 1)
          {
            goto LABEL_11;
          }
        }

        *a2 = 0;
        *(a2 + 8) = 1;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 1;
    }
  }

  return result;
}

void type metadata accessor for (String, String)(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t ViewTransform.appendSizedSpace(name:size:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  outlined init with copy of AnyHashable(a1, v26);
  v26[40] = 0;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3 + 4;
  v10 = v3[4];
  v11 = v3[5];
  *&v22 = *v3;
  *(&v22 + 1) = v8;
  *v23 = *(v3 + 1);
  *&v23[16] = v10;
  *&v23[24] = v11;

  ViewTransform.coordinateSpaceTag(_:)(v26, &v24);

  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v26, &v22);
  type metadata accessor for CoordinateSpaceNode();
  v12 = swift_allocObject();
  v13 = v12;
  v14 = *v23;
  *(v12 + 24) = v22;
  *(v12 + 40) = v14;
  *(v12 + 49) = *&v23[9];
  *(v12 + 16) = v8;
  if (v8)
  {
    v15 = *(v8 + 72);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v18 = v24;
    outlined destroy of CoordinateSpace(v26);
    goto LABEL_9;
  }

  v17 = 1;
LABEL_8:
  *(v12 + 72) = v17;
  v4[1] = v12;
  outlined destroy of CoordinateSpace(v26);
  v18 = *(v13 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for Element<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for Element);
  result = swift_allocObject();
  *(result + 32) = v10;
  *(result + 40) = v11;
  *(result + 48) = v18;
  *(result + 56) = a2;
  *(result + 64) = a3;
  *(result + 16) = v7;
  if (v7)
  {
    v20 = *(v7 + 24);
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v16)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v21 = 1;
LABEL_14:
  *(result + 24) = v21;
  *v4 = result;
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t RootTransform.value.getter@<X0>(_OWORD *a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v2 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 208);

    ObjectType = swift_getObjectType();
    v5 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for RootTransformProvider, &protocol descriptor for RootTransformProvider);
    (*(v3 + 16))(v19, v5, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {

    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  outlined init with copy of RootTransformProvider?(v19, v16);
  v6 = v17;
  if (v17)
  {
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v7 + 8))(v15, v6, v7);
    outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(v19, type metadata accessor for RootTransformProvider?);
    v13 = v15[1];
    v14 = v15[0];
    v12 = v15[2];
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v10 = v12;
    v9 = v13;
    v11 = v14;
  }

  else
  {
    outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(v19, type metadata accessor for RootTransformProvider?);
    result = outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(v16, type metadata accessor for RootTransformProvider?);
    v11 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v11;
  a1[1] = v9;
  a1[2] = v10;
  return result;
}

void type metadata accessor for RootTransformProvider?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RootTransformProvider?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for RootTransformProvider, &protocol descriptor for RootTransformProvider);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RootTransformProvider?);
    }
  }
}

uint64_t outlined init with copy of RootTransformProvider?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RootTransformProvider?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (views: ViewGraph.NextUpdate, gestures: ViewGraph.NextUpdate)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for Element<ProjectionTransformElement>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement()
{
  if (!lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement)
  {
    swift_getWitnessTable(protocol conformance descriptor for SizedSpaceElement, &type metadata for SizedSpaceElement, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement);
  }
}

{
  if (!lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement)
  {
    swift_getWitnessTable(protocol conformance descriptor for SizedSpaceElement, &type metadata for SizedSpaceElement, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SizedSpaceElement and conformance SizedSpaceElement);
  }
}

uint64_t type metadata completion function for Element(uint64_t a1)
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

uint64_t _SafeAreaInsetsModifier.Insets.value.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = *(AGGraphGetValue() + 8);
  v6 = v5;
  if (v5 == 1)
  {
    if (v4 == *MEMORY[0x1E698D3F8])
    {
      v6 = 0;
    }

    else
    {
      Value = AGGraphGetValue();
      v9 = *Value;
      v8 = Value[1];
      v10 = Value[2];
      v6 = swift_allocObject();
      v6[2] = v9;
      v6[3] = v8;
      v6[4] = v10;

      v5 = 1;
    }
  }

  outlined copy of SafeAreaInsets.OptionalValue?(v5);
  v11 = *AGGraphGetValue();
  *a1 = v3;
  a1[1] = v11;
  a1[2] = v6;
}

uint64_t sub_18D09BE8C()
{

  return swift_deallocObject();
}

void *initializeBufferWithCopyOfBuffer for SafeAreaInsets(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t UnaryPositionAwareLayoutEngine.childPlacement(at:placementContext:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  (*(v11 + 16))(v8, v3, v6);
  v12 = (v3 + *(a3 + 40));
  v13 = *(v12 + 2);
  v20 = *v12;
  v21 = v13;
  v17 = *a2;
  v18 = *(a2 + 2);
  v19 = v10;
  v15 = a3 + 16;
  v14 = *(a3 + 16);
  (*(*(v15 + 8) + 48))(&v20, &v17, v14);
  return (*(*(v14 - 8) + 8))(v8, v14);
}

uint64_t LayoutEngineBox.childPlacement(at:placementContext:)(_OWORD *a1, __int128 *a2)
{
  v3 = *v2;
  v4 = *(a2 + 6);
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = v4;
  return (*(*(v3 + 184) + 80))(v10, &v7, *(v3 + 176));
}

void _SafeAreaRegionsIgnoringLayout.placement(of:in:)(unsigned int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (v10 != *MEMORY[0x1E698D3F8])
  {
    InputValue = AGGraphGetInputValue();
    v16 = *(InputValue + 16);
    v31 = *InputValue;
    v32 = v16;
    v34 = v4;
    v35 = v5;
    v36 = v6;
    v37 = v7;
    v38 = v9;
    v39 = v8;
    v40 = v10;
    v11 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(a2, 0, &v34);
    v12 = v17;
    v13 = v18;
    v14 = v19;
  }

  if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    v11 = 0.0;
  }

  if (!Edge.Set.contains(_:)(SwiftUI_Edge_leading))
  {
    v12 = 0.0;
  }

  v20 = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  v21 = 0.0 - v13;
  v22 = Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  v34 = v4;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v9;
  v39 = v8;
  v40 = v10;
  _PositionAwarePlacementContext.proposedSize.getter(&v31);
  v23 = *&v31;
  v24 = BYTE8(v31);
  v25 = v33;
  if (v20)
  {
    v26 = v21;
  }

  else
  {
    v26 = 0.0;
  }

  if ((BYTE8(v31) & 1) == 0)
  {
    v27 = 0.0 - v14;
    if (!v22)
    {
      v27 = 0.0;
    }

    v23 = *&v31 - (0.0 - v12 + v27);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }
  }

  v28 = v32;
  if ((v33 & 1) == 0)
  {
    v29 = v32 - (0.0 - v11 + v26);
    v28 = 0.0;
    if (v29 >= 0.0)
    {
      v28 = v29;
    }
  }

  *a3 = v23;
  *(a3 + 8) = v24;
  *(a3 + 16) = v28;
  *(a3 + 24) = v25;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = -v12;
  *(a3 + 56) = -v11;
}

uint64_t outlined init with copy of AnyElement?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<CGPoint>(0, &lazy cache variable for type metadata for AnyElement?, type metadata accessor for AnyElement, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *destroy for CoordinateSpace(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 initializeWithCopy for CoordinateSpace(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else if (v2)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t closure #2 in ViewTransform.coordinateSpaceTag(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  outlined init with copy of CoordinateSpace(a1 + 24, v6);
  LOBYTE(a2) = specialized static CoordinateSpace.== infix(_:_:)(v6, a2);
  result = outlined destroy of CoordinateSpace(v6);
  *a3 = a2 & 1;
  return result;
}

uint64_t specialized static CoordinateSpace.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of CoordinateSpace(a1, v13);
  outlined init with copy of CoordinateSpace(a2, v15);
  if (!v14)
  {
    outlined init with copy of CoordinateSpace(v13, v11);
    if (!v16)
    {
      v9[0] = v11[0];
      v9[1] = v11[1];
      v10 = v12;
      v7[0] = *v15;
      v7[1] = *&v15[16];
      v8 = *&v15[32];
      v3 = MEMORY[0x193AC01F0](v9, v7);
      outlined destroy of AnyHashable(v7);
      outlined destroy of AnyHashable(v9);
      goto LABEL_13;
    }

    outlined destroy of AnyHashable(v11);
    goto LABEL_16;
  }

  if (v14 != 1)
  {
    if (v13[3] | v13[4] | v13[0] | v13[2] | v13[1])
    {
      if (v16 != 2)
      {
        goto LABEL_16;
      }

      if (*v15 != 1)
      {
        goto LABEL_16;
      }

      v4 = vorrq_s8(*&v15[8], *&v15[24]);
      if (vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_16;
      }

      v5 = vorrq_s8(*&v15[8], *&v15[24]);
      if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v15)
      {
        goto LABEL_16;
      }
    }

    outlined destroy of CoordinateSpace(v13);
    v3 = 1;
    return v3 & 1;
  }

  outlined init with copy of CoordinateSpace(v13, v11);
  if (v16 != 1)
  {
LABEL_16:
    _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v13, &lazy cache variable for type metadata for (CoordinateSpace, CoordinateSpace), &type metadata for CoordinateSpace);
    v3 = 0;
    return v3 & 1;
  }

  v3 = *&v11[0] == *v15;
LABEL_13:
  outlined destroy of CoordinateSpace(v13);
  return v3 & 1;
}

void type metadata accessor for _ContiguousArrayStorage<CGPoint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static EnvironmentFetch.== infix(_:_:)(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  type metadata accessor for AnyKeyPath();
  return MEMORY[0x193AC0030](a2, a4) & 1;
}

uint64_t type metadata completion function for SpacerLayoutComputer.Engine(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

float64x2_t *specialized UnaryPositionAwareChildGeometry.value.getter@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = HIDWORD(a4);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = CurrentAttribute;
  v6 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v12 = *Value;
  v13 = Value[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
LABEL_12:
    v36 = v13;
    v38 = v12;
    swift_once();
    v13 = v36;
    v12 = v38;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v34 = v13;
  v37 = v12;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v13 = v34;
  v12 = v37;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v40 = v12;
    *rect = v13;
    LODWORD(v43) = v5;
    HIDWORD(v43) = v5;
    v44 = a2;
    v45 = HIDWORD(a3);
    v46 = __PAIR64__(HIDWORD(a2), a3);
    v47 = v7;
    (*(*v6 + 160))(&v48, &v40, &v43);

    v16 = v48;
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = v55;
    v24 = *AGGraphGetValue();
    v25 = *AGGraphGetValue();
    v43 = v16;
    LOBYTE(v44) = v17;
    v46 = v18;
    LOBYTE(v47) = v19;
    LayoutProxy.dimensions(in:)(&v43, &v40);
    v26 = v40;
    v27 = *rect;
    v28 = v42;
    v29 = v22 - v20 * *rect;
    v30 = *&rect[8];
    v31 = v23 - v21 * *&rect[8];
    *a5 = v29;
    *(a5 + 8) = v31;
    *(a5 + 16) = v26;
    *(a5 + 32) = v27;
    *(a5 + 40) = v30;
    *(a5 + 56) = v28;
    v39 = v31;
    if (v25 == 1)
    {
      v35 = v24 - CGRectGetMaxX(*&v29);
      *a5 = v35;
    }

    else
    {
      v35 = v29;
    }

    type metadata accessor for CGPoint(0);
    result = AGGraphGetValue();
    v33.f64[0] = v35;
    v33.f64[1] = v39;
    *a5 = vaddq_f64(v33, *result);
  }

  return result;
}

uint64_t specialized UnaryPositionAwareLayoutComputer.updateValue()(uint64_t a1)
{
  result = AGGraphGetCurrentAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = *(v1 + 4);
    v5 = *(v1 + 8);
    Value = AGGraphGetValue();
    v8 = *(Value + 8);
    *&v9 = *Value;
    BYTE8(v9) = v8;
    HIDWORD(v9) = v4;
    v10 = v4;
    v11 = v6;
    v12 = v4;
    v13 = v5;
    v14 = v3;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v18 = 1;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v22 = 1;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v26 = 1;
    return specialized StatefulRule<>.update<A>(to:)(&v9);
  }

  return result;
}

uint64_t specialized StatefulRule<>.update<A>(to:)(_OWORD *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v22[10] = a1[10];
  v23[0] = v2;
  *(v23 + 9) = *(a1 + 185);
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v4 = a1[9];
  v22[8] = a1[8];
  v22[9] = v4;
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v6 = a1[5];
  v22[4] = a1[4];
  v22[5] = v6;
  v7 = a1[1];
  v22[0] = *a1;
  v22[1] = v7;
  v21[4] = v22;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);

      *&v24[0] = v9;
      *(&v24[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v15 = a1[11];
    v24[10] = a1[10];
    v25[0] = v15;
    *(v25 + 9) = *(a1 + 185);
    v16 = a1[7];
    v24[6] = a1[6];
    v24[7] = v16;
    v17 = a1[9];
    v24[8] = a1[8];
    v24[9] = v17;
    v18 = a1[3];
    v24[2] = a1[2];
    v24[3] = v18;
    v19 = a1[5];
    v24[4] = a1[4];
    v24[5] = v19;
    v20 = a1[1];
    v24[0] = *a1;
    v24[1] = v20;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA024_SafeAreaRegionsIgnoringC0VG_Tt1B5(v24, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA024_SafeAreaRegionsIgnoringC0VG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>(0);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 220) = v7;
    *(v4 + 224) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>(0);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 201) = *(a1 + 185);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = result;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryPositionAwareLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>);
    }
  }
}

void instantiation function for generic protocol witness table for CGFloat(uint64_t a1)
{
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7E28], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(protocol conformance descriptor for CGFloat, MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7DF0], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7E00], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7E08], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7E18], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7DF8], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(protocol conformance descriptor for CGFloat, MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7E10], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

{
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7E38], MEMORY[0x1E69E7DE0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.needsUpdate(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 48))(a2, v4) & 1;
}

Swift::Bool __swiftcall GraphHost.updatePreferences()()
{
  v1 = v0;
  swift_beginAccess();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9[0] = *WeakValue;
    PreferenceValues.seed.getter(&v8);
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  v4 = *(v1 + 140);
  result = v3 == -1 || v4 == -1 || v3 != v4;
  *(v1 + 140) = v3;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t closure #1 in PairPreferenceCombiner.value.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, Value, AssociatedTypeWitness);
}

uint64_t static Update.enqueueAction(reason:_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  specialized static Update.begin()();
  v16 = v5;

  Update.Action.init(reason:thunk:)(&v16, a2, a3, v17);
  v6 = v17[0];
  v8 = v18;
  v7 = v19;
  v9 = v20;
  v10 = one-time initialization token for actions;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static Update.actions;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[32 * v13];
  v14[32] = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = v7;
  *(v14 + 14) = v9;
  static Update.actions = v11;

  static Update.end()();

  return v9;
}

uint64_t Update.Action.init(reason:thunk:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  swift_beginAccess();
  v5 = (static Update.Action.nextActionID >> 1) + 1;

  atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
  swift_endAccess();
  *(a4 + 24) = v5;
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    v6 = static CustomEventTrace.recorder;
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17729;
      v7 = *(v6 + 16);
      type metadata accessor for (UInt32, UInt32?)(0);

      v8 = v7;
      AGGraphAddTraceEvent();
    }
  }
}

void *_setThreadTransactionData()
{
  result = _perThreadTransactionData();
  *result = v1;
  return result;
}

uint64_t type metadata completion function for SeedValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance DisplayList.Key@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = word_1ED53ABE8;
  v3 = dword_1ED53ABEC;
  *a1 = static DisplayList.Key.defaultValue;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

uint64_t initializeBufferWithCopyOfBuffer for DisplayList(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 3);

  return a1;
}

uint64_t PairPreferenceCombiner.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, Value, AssociatedTypeWitness);
  v12[2] = a2;
  v12[3] = a3;
  v13 = v6;
  v14 = v8;
  return (*(a3 + 24))(a4, partial apply for closure #1 in PairPreferenceCombiner.value.getter, v12, a2, a3);
}

uint64_t getEnumTagSinglePayload for SimultaneousGesture(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void type metadata accessor for TimelineSchedule?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CustomAttributeWriter(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ScrollStateRequest?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI16TimelineSchedule_pSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    type metadata accessor for TimelineSchedule?(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CustomAttributeWriter(0, a6, a7, 1);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *storeEnumTagSinglePayload for SimultaneousGesture(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t type metadata completion function for AnimatableAttributeHelper(uint64_t a1)
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

uint64_t HostPreferencesWriter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v43 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PreferenceValues.Value(0, AssociatedTypeWitness, v5, v6);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  if (*MEMORY[0x1E698D3F8] == *(v2 + 8))
  {
    v15 = *(v2 + 13) ^ 1;
    v16 = 1;
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = *AGGraphGetValue();
    v15 = v18 & 1;

    v16 = 0;
  }

  v45 = v17;
  v46 = v15;
  *(v2 + 13) = v16;
  v19 = *(v2 + 12);
  Value = AGGraphGetValue();
  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

  v44 = *Value;
  v29 = v44;
  v41 = v3;
  v30 = PreferenceKeys._index(of:)(v3);
  v31 = *(v29 + 16);
  if (v30 == v31)
  {
    if (!v19)
    {
LABEL_12:
      if (v15)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    *(v2 + 12) = 0;
LABEL_22:
    v44 = v17;
    AGGraphSetOutputValue();
  }

  if (v30 >= v31)
  {
    __break(1u);
  }

  v32 = *(v29 + 16 * v30 + 32);
  v3 = v41;
  if (v19 != (v32 == v41))
  {
    v15 = 1;
    v46 = 1;
    *(v2 + 12) = v32 == v41;
    if (v32 == v3)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_5:
  if (!v19)
  {
    goto LABEL_12;
  }

  v41 = v3;
LABEL_7:
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v2 + 16);
  v36 = *(v2 + 20);
  v37 = v23;
  v24 = AGGraphGetValue();
  v26 = v25;
  v27 = *(AssociatedTypeWitness - 8);
  (*(v27 + 16))(v14, v24, AssociatedTypeWitness);
  v14[v22] = v26 & 1;
  v28 = *(v42 + 16);
  v28(v11, v14, TupleTypeMetadata2);
  LODWORD(v22) = v11[*(TupleTypeMetadata2 + 48)];
  (*(v27 + 8))(v11, AssociatedTypeWitness);
  if (v22 == 1)
  {
    *(v2 + 16) = ++v37;
    v46 = 1;
LABEL_19:
    v33 = merge32(_:_:)(v36, v37);
    v28(v11, v14, TupleTypeMetadata2);
    LODWORD(v44) = v33;
    v34 = v38;
    PreferenceValues.Value.init(value:seed:)(v11, &v44, AssociatedTypeWitness, v38);
    specialized PreferenceValues.subscript.setter(v34, v41, v41, v43);
    (*(v39 + 8))(v34, v40);
    (*(v42 + 8))(v14, TupleTypeMetadata2);
    v17 = v45;
    goto LABEL_22;
  }

  if (v15)
  {
    goto LABEL_19;
  }

  (*(v42 + 8))(v14, TupleTypeMetadata2);
  v17 = v45;
LABEL_21:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }
}

double EnvironmentValues.backgroundMaterial.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*v1);
    if (v5)
    {
      v7 = v5[9];
      v6 = v5[10];
      *a1 = v7;
      a1[1] = v6;

      outlined copy of Material?(v7, v6);
    }

    else
    {
      result = 0.0;
      *a1 = xmmword_18DDA6AB0;
    }
  }

  return result;
}

void type metadata accessor for UnsafeMutableBufferPointer<StackLayout.Child>()
{
  if (!lazy cache variable for type metadata for UnsafeMutableBufferPointer<StackLayout.Child>)
  {
    v0 = type metadata accessor for UnsafeMutableBufferPointer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnsafeMutableBufferPointer<StackLayout.Child>);
    }
  }
}

void lazy protocol witness table accessor for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>()
{
  if (!lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>)
  {
    type metadata accessor for UnsafeMutableBufferPointer<StackLayout.Child>();
    swift_getWitnessTable(MEMORY[0x1E69E6750], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>);
  }
}

void type metadata accessor for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator)
  {
    type metadata accessor for UnsafeMutableBufferPointer<StackLayout.Child>();
    lazy protocol witness table accessor for type UnsafeMutableBufferPointer<StackLayout.Child> and conformance UnsafeMutableBufferPointer<A>();
    lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
    v1 = type metadata accessor for Zip2Sequence.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator);
    }
  }
}

uint64_t outlined destroy of Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator(uint64_t a1)
{
  type metadata accessor for Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StackLayout.UnmanagedImplementation.commitPlacements(in:proposedSize:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, __int128 *a6, uint64_t a7, CGFloat a8, CGFloat a9, double a10, CGFloat a11)
{
  v13 = a5;
  v14 = a11;
  v15 = a10;
  v18 = &v160;
  v20 = NAN;
  if (a2)
  {
    *&a1 = NAN;
  }

  *&v152 = a10;
  *(&v152 + 1) = a11;
  if ((a4 & 1) == 0)
  {
    v20 = *&a3;
  }

  *&v153 = a1;
  *(&v153 + 1) = v20;
  v21 = StackLayout.UnmanagedImplementation.proposalWhenPlacing(in:)(&v152, a5);
  LOBYTE(v152) = v22 & 1;
  LOBYTE(v148) = v23 & 1;
  StackLayout.UnmanagedImplementation.placeChildren(in:)(v21, v22 & 1, v24, v23 & 1, v13, a6, a7);
  v25 = *(v13 + 97);
  v130 = v15;
  v132 = a9;
  *rect = a8;
  if ((*(v13 + 17) & 1) == 0)
  {
LABEL_42:
    v72 = a8;
    v73 = a9;
    v74 = v15;
    v75 = v14;
    if (v25)
    {
      MaxX = CGRectGetMaxX(*&v72);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v72);
    }

    v77 = MaxX;
    v78 = *(v13 + 95);
    v79 = *(v13 + 80);
    v164 = *(v13 + 64);
    *v165 = v79;
    *(v18 + 95) = v78;
    v80 = *(v13 + 16);
    v160 = *v13;
    v161 = v80;
    v81 = *(v13 + 48);
    v162 = *(v13 + 32);
    v163 = v81;
    v82 = *v165;
    v131 = *&v165[8];
    LOBYTE(v13) = v165[17];
    v129 = (a6 + 120 * a7);
    if (a6)
    {
      v83 = a6 + 120 * a7;
    }

    else
    {
      v83 = 0;
    }

    v127 = v165[16];
    v138 = v165[16];
    if (a6)
    {
      result = outlined init with copy of StackLayout.Header(&v160, &v152);
      if (a7)
      {
        v121 = v83;
        v123 = v13;
        v125 = v82;
        v35 = 0;
        v31 = a6;
        v32 = &v139;
        v84 = (v131 + 40);
        a6 = (a6 + 120);
        while (1)
        {
          v92 = *v31;
          v93 = v31[1];
          v94 = v31[3];
          v154 = v31[2];
          v155 = v94;
          v153 = v93;
          v95 = v31[4];
          v96 = v31[5];
          v97 = v31[6];
          v159 = *(v31 + 14);
          v157 = v96;
          v158 = v97;
          v156 = v95;
          v152 = v92;
          v98 = *(v131 + 16);
          if (v35 == v98)
          {
            break;
          }

          if (v127)
          {
            if (v35 >= v98)
            {
              goto LABEL_103;
            }

            v99 = *v84;
          }

          else
          {
            if (v35 >= v98)
            {
              goto LABEL_105;
            }

            v99 = v35;
          }

          if (v35 >= v98)
          {
            goto LABEL_97;
          }

          v100 = *&v156;
          v101 = *(&v155 + 1);
          v102 = *(v31 + 88);
          v135 = *(v31 + 72);
          v136 = v102;
          v137 = *(v31 + 104);
          outlined init with copy of StackLayout.Child(&v152, &v148);
          outlined init with copy of StackLayout.Child(&v152, &v148);
          v173.origin.x = a8;
          v173.origin.y = a9;
          v173.size.width = v15;
          v173.size.height = v14;
          MinY = CGRectGetMinY(v173);
          if (v25)
          {
            v104 = v77 - *(&v154 + 1);
            v77 = v104 - *(&v157 + 1);
            if ((COERCE_UNSIGNED_INT64(v104 - *(&v157 + 1)) & 0xFFFFFFFFFFFFFLL) == 0 || (~COERCE__INT64(v104 - *(&v157 + 1)) & 0x7FF0000000000000) != 0)
            {
              v101 = v104 - *(&v157 + 1);
            }
          }

          else
          {
            if ((COERCE_UNSIGNED_INT64(v77 + *(&v154 + 1)) & 0xFFFFFFFFFFFFFLL) == 0 || (~COERCE__INT64(v77 + *(&v154 + 1)) & 0x7FF0000000000000) != 0)
            {
              v101 = v77 + *(&v154 + 1);
            }

            v77 = v77 + *(&v154 + 1) + *(&v157 + 1);
          }

          v107 = v100 + MinY;
          *&v148 = v101;
          *(&v148 + 1) = v107;
          v149 = v135;
          v150 = v136;
          v151 = v137;
          result = _threadLayoutData();
          if (!result)
          {
            goto LABEL_107;
          }

          v108 = result;
          if (*result)
          {
            goto LABEL_99;
          }

          v13 = *(result + 8);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v108 + 8) = v13;
          if (result)
          {
            if (v99 < 0)
            {
              goto LABEL_84;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
            v13 = result;
            *(v108 + 8) = result;
            if (v99 < 0)
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }
          }

          if (*(v13 + 16) <= v99)
          {
            goto LABEL_101;
          }

          v109 = v13 + (v99 << 6);
          v112 = *(v109 + 32);
          v110 = v109 + 32;
          v111 = v112;
          v113 = *v110;
          v114 = *(v110 + 16);
          v115 = *(v110 + 48);
          v146 = *(v110 + 32);
          v147 = v115;
          v144 = v113;
          v145 = v114;
          outlined destroy of ViewGeometry(&v144);
          if ((~v112 & 0x7FF0000000000000) == 0 && (v111 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            ++*(v108 + 16);
          }

          v116 = v148;
          v117 = v149;
          v118 = v151;
          *(v110 + 32) = v150;
          *(v110 + 48) = v118;
          *v110 = v116;
          *(v110 + 16) = v117;
          if (v25 == *(v108 + 56))
          {
            outlined init with copy of ViewGeometry(&v148, &rect[1]);
            outlined destroy of StackLayout.Child(&v152);
            v139 = v101;
            v140 = v107;
            v141 = v135;
            v142 = v136;
            v143 = v137;
            result = outlined destroy of ViewGeometry(&v139);
          }

          else
          {
            v85 = *(v108 + 24);
            v86 = *(v108 + 32);
            v88 = *(v108 + 40);
            v87 = *(v108 + 48);
            outlined init with copy of ViewGeometry(&v148, &rect[1]);
            v171.origin.x = v85;
            v171.origin.y = v86;
            v171.size.width = v88;
            v15 = v130;
            v171.size.height = v87;
            v89 = CGRectGetMaxX(v171);
            v172.origin.x = *v110;
            v172.origin.y = *(v110 + 8);
            v172.size.width = *(v110 + 32);
            v172.size.height = *(v110 + 40);
            v90 = CGRectGetMaxX(v172);
            outlined destroy of StackLayout.Child(&v152);
            v139 = v101;
            v140 = v107;
            v141 = v135;
            v142 = v136;
            v143 = v137;
            result = outlined destroy of ViewGeometry(&v139);
            v91 = v89 - (v90 - v85);
            a9 = v132;
            a8 = *rect;
            *v110 = v91;
          }

          v84 += 3;
          a6 = (a6 + 120);
          v31 = (v31 + 120);
          ++v35;
          if (v31 == v129)
          {
            a6 = v129;
            break;
          }
        }

        LOBYTE(v13) = v123;
        v82 = v125;
        v83 = v121;
        goto LABEL_94;
      }
    }

    else
    {
      outlined init with copy of StackLayout.Header(&v160, &v152);
    }

    v35 = 0;
LABEL_94:
    *&v152 = a6;
    *(&v152 + 1) = v83;
    LODWORD(v153) = v82;
    *(&v153 + 1) = v131;
    v119 = v138;
LABEL_95:
    LOBYTE(v154) = v119;
    BYTE1(v154) = v13;
    *(&v154 + 1) = v35;
    LOBYTE(v155) = 1;
    return outlined destroy of Zip2Sequence<UnsafeMutableBufferPointer<StackLayout.Child>, LayoutSubviews>.Iterator(&v152);
  }

  v166.origin.x = a8;
  v166.origin.y = a9;
  v166.size.width = v15;
  v166.size.height = v14;
  v26 = CGRectGetMinY(v166);
  v27 = *(v13 + 95);
  v28 = *(v13 + 80);
  v164 = *(v13 + 64);
  *v165 = v28;
  *&v165[15] = v27;
  v29 = *(v13 + 16);
  v160 = *v13;
  v161 = v29;
  v30 = *(v13 + 48);
  v162 = *(v13 + 32);
  v163 = v30;
  LODWORD(v31) = *v165;
  v131 = *&v165[8];
  LOBYTE(v13) = BYTE2(v27);
  v128 = (a6 + 120 * a7);
  if (a6)
  {
    v32 = a6 + 15 * a7;
  }

  else
  {
    v32 = 0;
  }

  v126 = BYTE1(v27);
  LOBYTE(v135) = BYTE1(v27);
  result = &v160;
  v34 = &v152;
  if (!a6)
  {
LABEL_85:
    outlined init with copy of StackLayout.Header(result, v34);
LABEL_86:
    v35 = 0;
LABEL_91:
    *&v152 = a6;
    *(&v152 + 1) = v32;
    LODWORD(v153) = v31;
    *(&v153 + 1) = v131;
    v119 = v135;
    goto LABEL_95;
  }

  result = outlined init with copy of StackLayout.Header(&v160, &v152);
  if (!a7)
  {
    goto LABEL_86;
  }

  v120 = v13;
  v122 = v31;
  v35 = 0;
  v36 = a6;
  v18 = (v131 + 40);
  a6 = (a6 + 120);
  while (1)
  {
    v48 = *v36;
    v49 = v36[1];
    v50 = v36[3];
    v154 = v36[2];
    v155 = v50;
    v153 = v49;
    v51 = v36[4];
    v52 = v36[5];
    v53 = v36[6];
    v159 = *(v36 + 14);
    v157 = v52;
    v158 = v53;
    v156 = v51;
    v152 = v48;
    v54 = *(v131 + 16);
    if (v35 == v54)
    {
      goto LABEL_90;
    }

    if (v126)
    {
      if (v35 >= v54)
      {
        goto LABEL_102;
      }

      v55 = *v18;
    }

    else
    {
      if (v35 >= v54)
      {
        goto LABEL_104;
      }

      v55 = v35;
    }

    if (v35 >= v54)
    {
      break;
    }

    v56 = *(v36 + 88);
    *&rect[1] = *(v36 + 72);
    *&rect[3] = v56;
    v134 = *(v36 + 104);
    v57 = *(&v155 + 1);
    v58 = v26 + *(&v154 + 1);
    v59 = (COERCE_UNSIGNED_INT64(v26 + *(&v154 + 1)) & 0xFFFFFFFFFFFFFLL) != 0 && (~COERCE__INT64(v26 + *(&v154 + 1)) & 0x7FF0000000000000) == 0;
    a8 = *&v158;
    if (v59)
    {
      v47 = *&v156;
    }

    else
    {
      v47 = v58;
    }

    if (v25)
    {
      v60 = *(&v157 + 1);
      outlined init with copy of StackLayout.Child(&v152, &v148);
      outlined init with copy of StackLayout.Child(&v152, &v148);
      v169.origin.x = v57;
      v169.origin.y = v47;
      v169.size.width = v60;
      a9 = v132;
      v169.size.height = a8;
      v57 = v15 - CGRectGetMaxX(v169);
    }

    else
    {
      outlined init with copy of StackLayout.Child(&v152, &v148);
      outlined init with copy of StackLayout.Child(&v152, &v148);
    }

    *&v170.origin.x = rect[0];
    v170.origin.y = a9;
    v170.size.width = v15;
    v170.size.height = v14;
    v61 = v57 + CGRectGetMinX(v170);
    *&v148 = v61;
    *(&v148 + 1) = v47;
    v149 = *&rect[1];
    v150 = *&rect[3];
    v151 = v134;
    result = _threadLayoutData();
    if (!result)
    {
      goto LABEL_106;
    }

    a7 = result;
    if (*result)
    {
      goto LABEL_98;
    }

    v13 = *(result + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 8) = v13;
    if (result)
    {
      if (v55 < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v13 = result;
      *(a7 + 8) = result;
      if (v55 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    if (*(v13 + 16) <= v55)
    {
      goto LABEL_100;
    }

    v62 = v13 + (v55 << 6);
    v65 = *(v62 + 32);
    v63 = v62 + 32;
    v64 = v65;
    v66 = *v63;
    v67 = *(v63 + 16);
    v68 = *(v63 + 48);
    v146 = *(v63 + 32);
    v147 = v68;
    v144 = v66;
    v145 = v67;
    outlined destroy of ViewGeometry(&v144);
    if ((~v65 & 0x7FF0000000000000) == 0 && (v64 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      ++*(a7 + 16);
    }

    v69 = v148;
    v70 = v149;
    v71 = v151;
    *(v63 + 32) = v150;
    *(v63 + 48) = v71;
    *v63 = v69;
    *(v63 + 16) = v70;
    if (v25 == *(a7 + 56))
    {
      outlined init with copy of ViewGeometry(&v148, &v139);
      outlined destroy of StackLayout.Child(&v152);
    }

    else
    {
      v37 = *(a7 + 24);
      v38 = *(a7 + 32);
      v124 = v47;
      v39 = a8;
      v40 = v14;
      v42 = *(a7 + 40);
      v41 = *(a7 + 48);
      outlined init with copy of ViewGeometry(&v148, &v139);
      v167.origin.x = v37;
      v167.origin.y = v38;
      v167.size.width = v42;
      v15 = v130;
      v167.size.height = v41;
      v43 = CGRectGetMaxX(v167);
      v168.origin.x = *v63;
      v168.origin.y = *(v63 + 8);
      v168.size.width = *(v63 + 32);
      v168.size.height = *(v63 + 40);
      v44 = CGRectGetMaxX(v168);
      outlined destroy of StackLayout.Child(&v152);
      v45 = v44 - v37;
      a9 = v132;
      v46 = v43 - v45;
      v14 = v40;
      a8 = v39;
      v47 = v124;
      *v63 = v46;
    }

    v26 = v58 + a8;
    v139 = v61;
    v140 = v47;
    v141 = *&rect[1];
    v142 = *&rect[3];
    v143 = v134;
    result = outlined destroy of ViewGeometry(&v139);
    v18 += 3;
    a6 = (a6 + 120);
    v36 = (v36 + 120);
    ++v35;
    if (v36 == v128)
    {
      a6 = v128;
LABEL_90:
      LODWORD(v31) = v122;
      LOBYTE(v13) = v120;
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for StackLayout.Header(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);

  return a1;
}

uint64_t LayoutEngineBox.childGeometries(at:origin:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (*(*(v2 + 184) + 56))(v5, *(v2 + 176));
}

BOOL specialized static ViewSize.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = a1[2];
  v6 = a1[3];
  v8 = (~*&v6 & 0x7FF0000000000000) == 0;
  if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v8 = 0;
  }

  v9 = (~v4 & 0x7FF0000000000000) != 0;
  if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 1;
  }

  v10 = (~v5 & 0x7FF0000000000000) != 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v10 = 1;
  }

  v11 = a2[3];
  v12 = 0.0;
  if (!v10)
  {
    v11 = 0.0;
  }

  if ((~*&v7 & 0x7FF0000000000000) != 0 || (*&v7 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v9)
    {
      v12 = a2[2];
    }

    if (v12 != v7 || !v9)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v8)
  {
    return !v10;
  }

  return v11 == v6 && v10;
}

void *_setThreadLayoutData()
{
  result = _perThreadLayoutData();
  *result = v1;
  return result;
}

uint64_t destroy for _StackLayoutCache(uint64_t a1)
{
}

void ViewSize.proposal.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = (~v2 & 0x7FF0000000000000) == 0 && (v2 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v4)
  {
    v2 = 0;
  }

  v5 = (~v3 & 0x7FF0000000000000) == 0 && (v3 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v5)
  {
    v3 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
}

uint64_t StackLayout.UnmanagedImplementation.proposalWhenPlacing(in:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v21 = *a1;
  v3 = v21;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  ViewSize.proposal.getter(&v20);
  v7 = v20;
  v8 = *(a2 + 17);
  *&v19[1] = v3;
  *&v19[2] = v4;
  v19[3] = v5;
  v19[4] = v6;
  ViewSize.proposal.getter(&v16);
  v9 = &v17;
  v10 = &v18;
  if (*(a2 + 17))
  {
    v10 = &v16;
  }

  v11 = *v10;
  if (!*(a2 + 17))
  {
    v9 = v19;
  }

  v12 = *v9;
  if (*(a2 + 17))
  {
    v13 = v3;
  }

  else
  {
    v13 = v4;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == 1)
  {
    return *&v14;
  }

  else
  {
    return v7;
  }
}

void StackLayout.UnmanagedImplementation.placeChildren(in:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a5 + 40))
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((a2 & 1) != 0 || *(a5 + 32) != *&result)
  {
    goto LABEL_10;
  }

  if (*(a5 + 56))
  {
    if (a4)
    {
      return;
    }

LABEL_10:
    if (!a7)
    {
      return;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    goto LABEL_10;
  }

  if (*(a5 + 48) != *&a3 && a7 != 0)
  {
LABEL_11:
    if (*(a5 + 17))
    {
      v10 = result;
    }

    else
    {
      v10 = a3;
    }

    if (*(a5 + 17))
    {
      v11 = a2;
    }

    else
    {
      v11 = a4;
    }

    v12 = a2 & 1;
    v13 = a4 & 1;
    specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(result, a2 & 1, a3, a4 & 1, a5, a6, a7, v10, v11 & 1);
    if (*(a5 + 98) == 1)
    {
      StackLayout.UnmanagedImplementation.resizeAnyChildrenWithTrailingOverflow(in:)(result, v12, a3, v13, a5, a6, a7);
    }

    *(a5 + 32) = *&result;
    *(a5 + 40) = v12;
    *(a5 + 48) = *&a3;
    *(a5 + 56) = v13;
  }
}

uint64_t LayoutProxy.dimensions(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (*(v2 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v9 = *InputValue;
  v10 = *(InputValue + 1);
  v11 = one-time initialization token for lockAssertionsAreEnabled;

  if (v11 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v17 = v4;
    v18 = v5;
    v19 = v6;
    v20 = v7;
    result = (*(*v9 + 120))(&v17);
    v15 = v4;
    if (v5)
    {
      v15 = NAN;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    if (v7)
    {
      v16 = NAN;
    }

    else
    {
      v16 = v6;
    }

    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
  }

  return result;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance _VStackLayout(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, double a7, CGFloat a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a10 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
  }

  result = StackLayout.UnmanagedImplementation.commitPlacements(in:proposedSize:)(a1, a2 & 1, a3, a4 & 1, a10, v19 + 2, *(v19 + 2), a5, a6, a7, a8);
  *(a10 + 104) = v19;
  return result;
}

__int128 *ViewLayoutEngine.childGeometries(at:origin:)(double *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v41 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(*(v4 + *(a2 + 40) + 8) + 16);
  v14 = (v4 + *(a2 + 52));
  v15 = v14[1];
  v25 = *v14;
  v26 = v15;
  v37 = *&v9;
  v38 = v10;
  v39 = *&v11;
  v40 = v12;
  if (specialized static ViewSize.== infix(_:_:)(&v25, &v37) && a3 == 0.0 && a4 == 0.0 && *(*(v4 + *(a2 + 56)) + 16) == v13)
  {
  }

  *&v25 = v9;
  *(&v25 + 1) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  ViewSize.proposal.getter(&v37);
  v17 = v37;
  v18 = LOBYTE(v38);
  v19 = v39;
  v20 = *(v5 + *(a2 + 44));
  v21 = LOBYTE(v40);
  v29[0] = 0;
  v31 = 0;
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  v25 = static ViewGeometry.invalidValue;
  v26 = xmmword_1ED53A0F8;
  v27 = xmmword_1ED53A108;
  v28 = unk_1ED53A118;
  outlined init with copy of ViewGeometry(&v25, &v37);
  v22 = _sSa9repeating5countSayxGx_SitcfC7SwiftUI12ViewGeometryV_Tt1B5Tf4gn_n(&v25, v13);
  outlined destroy of ViewGeometry(&v25);
  v30 = v22;
  v32 = a3;
  v33 = a4;
  v34 = v9;
  v35 = v10;
  v36 = v20;
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  LOBYTE(v37) = v18;
  closure #1 in ViewLayoutEngine.childGeometries(at:origin:)(v29, v5, v17, v18, v19, v21, v13, v23, a3, a4, v9, v10, v9, v10, v11, v12, v24);
  return v30;
}

__int128 *_sSa9repeating5countSayxGx_SitcfC7SwiftUI12ViewGeometryV_Tt1B5Tf4gn_n(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    *(v4 + 64) = v2[2];
    *(v4 + 80) = v6;
    *(v4 + 32) = v8;
    *(v4 + 48) = v7;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = (v4 + 96);
      do
      {
        outlined init with copy of ViewGeometry(v2, v14);
        v11 = *v2;
        v12 = v2[1];
        v13 = v2[3];
        v10[2] = v2[2];
        v10[3] = v13;
        *v10 = v11;
        v10[1] = v12;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    outlined init with copy of ViewGeometry(v2, v14);
    return v5;
  }

  return result;
}

uint64_t closure #1 in ViewLayoutEngine.childGeometries(at:origin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BOOL4 a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17)
{
  v67 = a6;
  v69 = a5;
  v66 = a4;
  v68 = a3;
  v64 = a17;
  v27 = type metadata accessor for ViewLayoutEngine(0, a8, a17, a4);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v62[-v29];
  v63 = a8;
  v31 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v62[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = _threadLayoutData();
  _setThreadLayoutData();
  v35 = *(v31 + 16);
  v81 = a2;
  v35(v34, a2, a8);
  (*(v28 + 16))(v30, a2, v27);
  v36 = &v30[*(v27 + 40)];
  LODWORD(a2) = *v36;
  v37 = v36[1];
  LOBYTE(v36) = v30[*(v27 + 44)];
  LOBYTE(v70[0].f64[0]) = 0;
  LOBYTE(v77[0]) = v36;
  v38 = *(v28 + 8);

  v38(v30, v27);
  LODWORD(v71.f64[0]) = a2;
  v71.f64[1] = v37;
  LOBYTE(v72.f64[0]) = LOBYTE(v70[0].f64[0]);
  BYTE1(v72.f64[0]) = v77[0];
  v39 = *(v64 + 64);
  LOBYTE(v75) = v66 & 1;
  v80[0] = v67;
  v40 = v63;
  v39(v68, a9, a10, a11, a12);

  (*(v31 + 8))(v34, v40);
  result = _setThreadLayoutData();
  if (*(a1 + 16) != a7)
  {
    if (a7 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    if (a7)
    {
      v42 = 0;
      v43 = a15;
      if ((~*&a15 & 0x7FF0000000000000) == 0 && (*&a15 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v43 = 0.0;
      }

      v69 = *&v43;
      v44 = a16;
      if ((~*&a16 & 0x7FF0000000000000) == 0 && (*&a16 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v44 = 0.0;
      }

      v68 = *&v44;
      v45 = 32;
      v67 = (~*&a15 & 0x7FF0000000000000) == 0 && (*&a15 & 0xFFFFFFFFFFFFFLL) != 0;
      v46 = (~*&a16 & 0x7FF0000000000000) == 0 && (*&a16 & 0xFFFFFFFFFFFFFLL) != 0;
      while (1)
      {
        v47 = *(a1 + 8);
        if (v42 >= *(v47 + 16))
        {
          break;
        }

        v48 = *(v47 + v45);
        v49 = ~v48 & 0x7FF0000000000000;
        v50 = v48 & 0xFFFFFFFFFFFFFLL;
        if (v49)
        {
          v51 = 1;
        }

        else
        {
          v51 = v50 == 0;
        }

        if (!v51)
        {
          v52 = v81 + *(v27 + 40);
          v53 = *(v52 + 8);
          if (v42 >= *(v53 + 16))
          {
            goto LABEL_19;
          }

          v75 = *v52;
          v76 = *(v53 + 8 * v42 + 32);
          *&v71.f64[0] = v69;
          LOBYTE(v71.f64[1]) = v67;
          *&v72.f64[0] = v68;
          LOBYTE(v72.f64[1]) = v46;
          LayoutProxy.dimensions(in:)(&v71, v77);
          v54 = *v77;
          v55 = *&v77[1];
          v56 = *(a1 + 24);
          v57 = *(a1 + 32);
          v58 = *(a1 + 40);
          v59 = *(a1 + 48);
          v82.origin.x = v56;
          v82.origin.y = v57;
          v82.size.width = v58;
          v82.size.height = v59;
          v60 = v56 + CGRectGetWidth(v82) * 0.5;
          v83.origin.x = v56;
          v83.origin.y = v57;
          v83.size.width = v58;
          v83.size.height = v59;
          Height = CGRectGetHeight(v83);
          v72.f64[0] = v54;
          v72.f64[1] = v55;
          v71.f64[0] = v60 - 0.5 * v78.f64[0];
          v71.f64[1] = v57 + Height * 0.5 - vmuld_lane_f64(0.5, v78, 1);
          v74 = v79;
          v73 = v78;
          v70[0] = v71;
          v70[1] = v72;
          v70[2] = v78;
          v70[3] = v79;
          v80[0] = 0;
          PlacementData.setGeometry(_:at:layoutDirection:)(v70, v42, v80);
          result = outlined destroy of ViewGeometry(&v71);
        }

        ++v42;
        v45 += 64;
        if (a7 == v42)
        {
          return result;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  return result;
}

BOOL specialized static _SafeAreaInsetsModifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14SafeAreaInsetsV7ElementV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 != 1)
  {
    v8 = v2;
    if (v3 != 1)
    {
      v7 = v3;
      outlined copy of SafeAreaInsets.OptionalValue?(v2);
      outlined copy of SafeAreaInsets.OptionalValue?(v3);
      outlined copy of SafeAreaInsets.OptionalValue?(v2);
      v6 = specialized static SafeAreaInsets.OptionalValue.== infix(_:_:)(&v8, &v7);

      outlined consume of SafeAreaInsets.OptionalValue?(v2);
      return (v6 & 1) != 0;
    }

    outlined copy of SafeAreaInsets.OptionalValue?(v2);
    outlined copy of SafeAreaInsets.OptionalValue?(1);
    outlined copy of SafeAreaInsets.OptionalValue?(v2);

    goto LABEL_8;
  }

  outlined copy of SafeAreaInsets.OptionalValue?(1);
  if (v3 != 1)
  {
    outlined copy of SafeAreaInsets.OptionalValue?(v3);
LABEL_8:
    outlined consume of SafeAreaInsets.OptionalValue?(v2);
    outlined consume of SafeAreaInsets.OptionalValue?(v3);
    return 0;
  }

  v4 = 1;
  outlined copy of SafeAreaInsets.OptionalValue?(1);
  outlined consume of SafeAreaInsets.OptionalValue?(1);
  return v4;
}