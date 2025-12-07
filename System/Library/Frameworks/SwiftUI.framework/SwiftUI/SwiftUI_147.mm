uint64_t initializeWithTake for UIKitRichTextEditorAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 20);
  v7 = (a1 + v6);
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;
  type metadata accessor for Binding<AttributedString>(0);
  v11 = *(v10 + 32);
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 32))(&v7[v11], v8 + v11, v12);
  v13 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v14 = &v7[v13];
  v15 = (v8 + v13);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v17 = v16;
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v15, 1, v16))
  {
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v14, v15, *(*(v19 - 8) + 64));
  }

  else
  {
    v20 = v15[1];
    *v14 = *v15;
    *(v14 + 1) = v20;
    v21 = *(v17 + 32);
    v22 = &v14[v21];
    v23 = v15 + v21;
    v24 = type metadata accessor for AttributedTextSelection.Indices(0);
    v25 = *(v24 - 8);
    v36 = v22;
    v37 = v3;
    if ((*(v25 + 48))(v23, 1, v24))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v22, v23, *(*(v26 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
        v28 = v27;
      }

      else
      {
        v28 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v28 - 8) + 32))(v22, v23);
      swift_storeEnumTagMultiPayload();
      (*(v25 + 56))(v22, 0, 1, v24);
    }

    v29 = type metadata accessor for AttributedTextSelection(0);
    v30 = *(v29 + 20);
    v31 = type metadata accessor for AttributeContainer();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(&v23[v30], 1, v31))
    {
      v33 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      v34 = v36;
      memcpy(&v36[v30], &v23[v30], *(*(v33 - 8) + 64));
    }

    else
    {
      (*(v32 + 32))(&v36[v30], &v23[v30], v31);
      (*(v32 + 56))(&v36[v30], 0, 1, v31);
      v34 = v36;
    }

    v34[*(v29 + 24)] = v23[*(v29 + 24)];
    (*(v18 + 56))(v14, 0, 1, v17);
    v3 = v37;
  }

  *(a1 + *(v3 + 24)) = *(a2 + *(v3 + 24));
  return a1;
}

uint64_t assignWithTake for UIKitRichTextEditorAdaptor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 20);
  v11 = a1 + v10;
  v12 = a2 + v10;
  *(a1 + v10) = *(a2 + v10);

  *(v11 + 8) = *(v12 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v14 = *(v13 + 32);
  v15 = type metadata accessor for AttributedString();
  (*(*(v15 - 8) + 40))(v11 + v14, &v12[v14], v15);
  v16 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v17 = (v11 + v16);
  v18 = &v12[v16];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v17, 1, v19);
  v24 = v22(v18, 1, v20);
  if (!v23)
  {
    if (v24)
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v17, type metadata accessor for Binding<AttributedTextSelection>);
      goto LABEL_7;
    }

    v70 = a3;
    *v17 = *v18;

    *(v17 + 1) = *(v18 + 1);

    v33 = *(v20 + 32);
    v34 = &v17[v33];
    v35 = &v18[v33];
    v36 = type metadata accessor for AttributedTextSelection.Indices(0);
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    __dsta = v34;
    v39 = v38(v34, 1, v36);
    v40 = v38(v35, 1, v36);
    if (v39)
    {
      if (v40)
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        v42 = *(*(v41 - 8) + 64);
        v43 = v34;
LABEL_15:
        memcpy(v43, v35, v42);
        goto LABEL_30;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
        v54 = v53;
      }

      else
      {
        v54 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v54 - 8) + 32))(v34, v35);
      swift_storeEnumTagMultiPayload();
      (*(v37 + 56))(v34, 0, 1, v36);
      v43 = v34;
    }

    else
    {
      if (v40)
      {
        v43 = v34;
        _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v34, type metadata accessor for AttributedTextSelection.Indices);
        type metadata accessor for AttributedTextSelection.Indices?(0);
        v42 = *(*(v46 - 8) + 64);
        goto LABEL_15;
      }

      v43 = v34;
      if (a1 != a2)
      {
        _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v34, type metadata accessor for AttributedTextSelection.Indices);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
        }

        else
        {
          v55 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v55 - 8) + 32))(v34, v35, v55);
        swift_storeEnumTagMultiPayload();
      }
    }

LABEL_30:
    v66 = type metadata accessor for AttributedTextSelection(0);
    v56 = *(v66 + 20);
    v57 = type metadata accessor for AttributeContainer();
    v58 = *(v57 - 8);
    v59 = v35;
    v60 = *(v58 + 48);
    v61 = v60(&v43[v56], 1, v57);
    v62 = v60(&v59[v56], 1, v57);
    if (v61)
    {
      if (!v62)
      {
        v64 = __dsta;
        (*(v58 + 32))(&__dsta[v56], &v59[v56], v57);
        (*(v58 + 56))(&__dsta[v56], 0, 1, v57);
        goto LABEL_38;
      }

      v63 = *(*(type metadata accessor for AttributedTextSelection.TypingAttributes(0) - 8) + 64);
      v64 = __dsta;
    }

    else
    {
      if (!v62)
      {
        v64 = __dsta;
        (*(v58 + 40))(&__dsta[v56], &v59[v56], v57);
        goto LABEL_38;
      }

      v64 = __dsta;
      (*(v58 + 8))(&__dsta[v56], v57);
      v63 = *(*(type metadata accessor for AttributedTextSelection.TypingAttributes(0) - 8) + 64);
    }

    memcpy(&v64[v56], &v59[v56], v63);
LABEL_38:
    v64[*(v66 + 24)] = v59[*(v66 + 24)];
    a3 = v70;
    goto LABEL_39;
  }

  if (v24)
  {
LABEL_7:
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v17, v18, *(*(v32 - 8) + 64));
    goto LABEL_39;
  }

  v69 = a3;
  v25 = *(v18 + 1);
  *v17 = *v18;
  *(v17 + 1) = v25;
  v26 = *(v20 + 32);
  v27 = &v17[v26];
  v28 = &v18[v26];
  v29 = type metadata accessor for AttributedTextSelection.Indices(0);
  v30 = *(v29 - 8);
  __dst = v27;
  if ((*(v30 + 48))(v28, 1, v29))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v27, v28, *(*(v31 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0);
      v45 = v44;
    }

    else
    {
      v45 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v45 - 8) + 32))(v27, v28);
    swift_storeEnumTagMultiPayload();
    (*(v30 + 56))(v27, 0, 1, v29);
  }

  v47 = type metadata accessor for AttributedTextSelection(0);
  v48 = *(v47 + 20);
  v49 = type metadata accessor for AttributeContainer();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(&v28[v48], 1, v49))
  {
    v51 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    v52 = __dst;
    memcpy(&__dst[v48], &v28[v48], *(*(v51 - 8) + 64));
  }

  else
  {
    (*(v50 + 32))(&__dst[v48], &v28[v48], v49);
    (*(v50 + 56))(&__dst[v48], 0, 1, v49);
    v52 = __dst;
  }

  a3 = v69;
  v52[*(v47 + 24)] = v28[*(v47 + 24)];
  (*(v21 + 56))(v17, 0, 1, v20);
LABEL_39:
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t type metadata completion function for UIKitRichTextEditorAdaptor(uint64_t a1)
{
  result = type metadata accessor for TextEditor.Storage.AttributedText(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined assign with take of AttributedTextSelection.TypingAttributes(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Set<NSAttributedStringKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<NSAttributedStringKey>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<NSAttributedStringKey>);
    }
  }
}

uint64_t outlined init with copy of TextEditor.Storage.AttributedText(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnyListSelection.Storage.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for SelectionManagerBox(0, v6, *(*v4 + 88), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = *(v5 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v10, v4 + v11, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if ((*(*(v6 - 8) + 48))(v10, 1, v6) == 1)
      {
        return 0;
      }

      v15 = type metadata accessor for Optional();
      (*(*(v15 - 8) + 8))(v10, v15);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

    return 1;
  }

  else
  {
    v14 = Set.count.getter();

    return v14;
  }
}

uint64_t AnyListSelection.Storage.deselectAll()()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for SelectionManagerBox(0, *(v1 + 80), *(v1 + 88), v2);
  LOBYTE(v1) = SelectionManagerBox.deselectAll()();
  swift_endAccess();
  return v1 & 1;
}

uint64_t AnyListSelection.Storage.setSelection(value:)(uint64_t a1, void (*a2)(char *, void, void, __n128))
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  swift_beginAccess();
  (a2)(v2 + v5, *(v4 + 80), *(v4 + 88));
  return swift_endAccess();
}

uint64_t AnyListSelection.Storage.apply<A>(as:operation:)(uint64_t a1, void (*a2)(char *), char *a3, char *a4, char *a5)
{
  v46 = a4;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  v42 = a1;
  v6 = *v5;
  v7 = type metadata accessor for Optional();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v8;
  v9 = v6[10];
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v37 - v14;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v43 = v6[11];
  v20 = type metadata accessor for SelectionManagerBox(0, v9, v43, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v37 - v22);
  v24 = v6[12];
  swift_beginAccess();
  (*(v21 + 16))(v23, &v5[v24], v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 32))(v18, v23, v15);
      Optional<A>.apply<A>(as:operation:)(v42, v44, v45, v15, v46, v43, v47);
      return (*(v16 + 8))(v18, v15);
    }

    else
    {
      v28 = v37;
      v27 = v38;
      (*(v38 + 32))(v37, v23, v9);
      (*(v27 + 16))(v12, v28, v9);
      v29 = v39;
      v30 = v46;
      v31 = swift_dynamicCast();
      v32 = (*(*(v30 - 1) + 56))(v29, v31 ^ 1u, 1, v30);
      MEMORY[0x1EEE9AC00](v32);
      *(&v37 - 6) = v9;
      *(&v37 - 5) = v30;
      v33 = v47;
      *(&v37 - 4) = v43;
      *(&v37 - 3) = v33;
      v34 = v45;
      *(&v37 - 2) = v44;
      *(&v37 - 1) = v34;
      v35 = v41;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A1) -> (), (&v37 - 8), MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v36, &v48);
      (*(v27 + 8))(v28, v9);
      return (*(v40 + 8))(v29, v35);
    }
  }

  else
  {
    Set.apply<A>(as:operation:)(v42, v44, v45, *v23, v9, v46, v43, v47);
  }
}

uint64_t AnyListSelection.Storage.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for SelectionManagerBox(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = *(v5 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v4 + v10, v6);
  v11 = SelectionManagerBox.description.getter(v6);
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyListSelection(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 64))(a1, v3, v4) & 1;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyListSelection()
{
  _StringGuts.grow(_:)(20);

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v1);

  return 0xD000000000000012;
}

uint64_t AnyListSelection.contains<A>(id:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  (*(v5 + 16))(v7, a1, a2);
  AnyNavigationLinkPresentedValue.init<A>(_:)(v7, a2, v13);
  v10 = (*(v9 + 48))(v13, v8, v9);
  outlined destroy of AnyNavigationLinkPresentedValue(v13);
  return v10 & 1;
}

uint64_t AnyListSelection.apply<A>(as:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  return (*(v12 + 96))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t protocol witness for Selection.isEmpty.getter in conformance AnyListSelection()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t protocol witness for Selection.allowsMultiple.getter in conformance AnyListSelection()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t protocol witness for Selection.count.getter in conformance AnyListSelection()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

double specialized ToAnyListSelection.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SelectionManagerBox(0, a3, a4, a4);
  v9 = *(v8 - 8);
  (*(v9 + 8))(a1, v8);
  outlined init with copy of _Benchmark(a2, v14);
  type metadata accessor for AnyListSelection.StorageProtocol();
  type metadata accessor for AnyListSelection.Storage(0, a3, a4, v10);
  swift_dynamicCast();
  v11 = *(*v13 + 96);
  swift_beginAccess();
  (*(v9 + 16))(a1, v13 + v11, v8);

  return result;
}

double specialized Dictionary.removeValue(forKey:)@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v14;
    }

    v10 = (*(v9 + 56) + (v7 << 6));
    v11 = v10[1];
    *a2 = *v10;
    a2[1] = v11;
    v12 = v10[3];
    a2[2] = v10[2];
    a2[3] = v12;
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

double static HostingViewRegistry.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

void HostingViewRegistry.forEach(_:)(void (*a1)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        outlined init with copy of WeakBox<Swift.AnyObject>(*(v4 + 56) + ((v10 << 9) | (8 * v11)), v15);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          goto LABEL_6;
        }

        v13 = Strong;
        swift_getObjectType();
        v14 = swift_conformsToProtocol2();
        if (!v14)
        {
          break;
        }

        a1(v13, v14);
        outlined destroy of WeakBox<Swift.AnyObject>(v15, type metadata accessor for WeakBox<Swift.AnyObject>);
        if (v2)
        {

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        v9 = v10;
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_7:
        v10 = v9;
      }

      swift_unknownObjectRelease();
LABEL_6:
      outlined destroy of WeakBox<Swift.AnyObject>(v15, type metadata accessor for WeakBox<Swift.AnyObject>);
      v9 = v10;
      if (!v7)
      {
        continue;
      }

      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t outlined init with copy of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<Swift.AnyObject>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for WeakBox<Swift.AnyObject>()
{
  if (!lazy cache variable for type metadata for WeakBox<Swift.AnyObject>)
  {
    v0 = type metadata accessor for WeakBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>);
    }
  }
}

double HostingViewRegistry.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

double View.scrollViewBoundsModifier<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return View.scrollViewBoundsModifier<A>(transform:)(a1, a2, a3, a4, a5, a6, type metadata accessor for _ScrollViewBoundsModifier);
}

{
  return View.scrollViewBoundsModifier<A>(transform:)(a1, a2, a3, a4, a5, a6, type metadata accessor for _ScrollViewBoundsModifier2);
}

void _ScrollViewBoundsModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static _ScrollViewBoundsModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t (*a3)(int *, __int128 *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a2[1];
  v25 = *a2;
  v26 = v9;
  v27[0] = a2[2];
  *(v27 + 12) = *(a2 + 44);
  v10 = *(a2 + 15);
  v23 = a2[4];
  v24 = *(a2 + 20);
  if (a5 == MEMORY[0x1E697E108])
  {
    v16 = a2[1];
    v17 = *a2;
    v18 = v16;
    *v19 = a2[2];
    *&v19[12] = *(a2 + 44);
    *&v19[28] = v10;
    v20 = a2[4];
    LODWORD(v21) = *(a2 + 20);
    return a3(a1, &v17, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v22 = v8;
    type metadata accessor for _ScrollViewBoundsModifier(255, a5, a6, a4);
    type metadata accessor for _GraphValue();
    *&v19[8] = DWORD2(v27[0]);
    *&v19[12] = *(v27 + 12);
    *&v19[28] = v10;
    LODWORD(v21) = v24;
    LODWORD(v17) = _GraphValue.value.getter();
    DWORD1(v17) = _ViewInputs.position.getter();
    *(&v17 + 1) = __PAIR64__(HIDWORD(v25), v10);
    v14 = type metadata accessor for _ScrollViewBoundsModifier.Child(0, a5, a6, v13);
    swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier<A>.Child, v14, v17, v26, *&v27[0], *&v19[8], (*(v27 + 12) >> 32), *&v19[24], v23, v21);
    _GraphValue.init<A>(_:)();
    v17 = v25;
    v18 = v26;
    *v19 = v27[0];
    *&v19[12] = *(v27 + 12);
    *&v19[28] = v10;
    v20 = v23;
    LODWORD(v21) = v24;
    return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  }
}

double _ScrollViewBoundsModifier.Child.transform.getter@<D0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v5 = *(Value + 32);
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;

  return result;
}

double _ScrollViewBoundsModifier.Child.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _ScrollViewBoundsModifier.Child.transform.getter(&v11);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*Value);
  v8 = type metadata accessor for _ScrollViewBoundsModifier.Child(0, a3, a4, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier<A>.Child, v8);
  MEMORY[0x18D000B90](v8, a3, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  return result;
}

uint64_t closure #1 in closure #1 in _ScrollViewBoundsModifier.Child.value.getter(uint64_t (**a1)(__int128 *), __int128 *a2)
{
  v2 = *a1;
  v3 = a2[1];
  v18 = *a2;
  v19 = v3;
  v20 = a2[2];
  ViewTransform.containingScrollGeometry.getter();
  v4 = 0uLL;
  v5 = 0uLL;
  if ((v17 & 1) == 0)
  {
    v13 = v16[4];
    v14 = v16[5];
    v15 = v16[6];
    v9 = v16[0];
    v10 = v16[1];
    v11 = v16[2];
    v12 = v16[3];
    ScrollGeometry.bounds.getter();
    *(&v4 + 1) = v6;
    *(&v5 + 1) = v7;
  }

  v9 = v4;
  v10 = v5;
  LOBYTE(v11) = v17 & 1;
  return v2(&v9);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ScrollViewBoundsModifier<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier<A>.Child, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

double View.scrollViewBoundsModifier<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t))
{
  v11[0] = a1;
  v11[1] = a2;
  v9 = a7(0, a4, a6);

  MEMORY[0x18D00A570](v11, a3, v9, a5);

  return result;
}

double key path getter for _ScrollViewBoundsModifier.transform : <A>_ScrollViewBoundsModifier<A>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a2 + a3;
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = *(v8 - 16);
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  *a6 = a5;
  a6[1] = v11;

  return result;
}

void key path setter for _ScrollViewBoundsModifier.transform : <A>_ScrollViewBoundsModifier<A>(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3 + a4;
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = *(v8 - 16);
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;

  *a2 = a6;
  a2[1] = v11;
}

uint64_t static _ScrollViewBoundsModifier2._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 == MEMORY[0x1E697E108])
  {
    return a3();
  }

  type metadata accessor for _ScrollViewBoundsModifier2(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  _ViewInputs.position.getter();
  v9 = type metadata accessor for _ScrollViewBoundsModifier2.Child(0, a5, a6, v8);
  swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier2<A>.Child, v9);
  _GraphValue.init<A>(_:)();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

double _ScrollViewBoundsModifier2.Child.value.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  _ScrollViewBoundsModifier.Child.transform.getter(&v11);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*Value);
  v8 = type metadata accessor for _ScrollViewBoundsModifier2.Child(0, a3, a4, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier2<A>.Child, v8);
  MEMORY[0x18D000B90](v8, a3, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  return result;
}

uint64_t closure #1 in closure #1 in _ScrollViewBoundsModifier2.Child.value.getter(uint64_t (**a1)(__int128 *, double, double), uint64_t a2, unint64_t a3, __int128 *a4)
{
  v5 = *a1;
  Value = AGGraphGetValue();
  v7 = Value[1];
  v29 = *Value;
  v30 = v7;
  v8 = MEMORY[0x18D00B390]();
  v10 = v9;
  v11 = a4[1];
  v26 = *a4;
  v27 = v11;
  v28 = a4[2];
  ViewTransform.containingScrollGeometry.getter();
  v12 = 0uLL;
  v13 = 0uLL;
  if ((v25 & 1) == 0)
  {
    v21 = v24[4];
    v22 = v24[5];
    v23 = v24[6];
    v17 = v24[0];
    v18 = v24[1];
    v19 = v24[2];
    v20 = v24[3];
    ScrollGeometry.bounds.getter();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17 = v12;
  v18 = v13;
  LOBYTE(v19) = v25 & 1;
  return v5(&v17, v8, v10);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ScrollViewBoundsModifier2<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier2<A>.Child, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA0C8ModifierRd__r__lAA15ModifiedContentVyxAA07_Scrollc6BoundsD0Vyqd__GGAaBHPxAaBHD1__AhaCHPyHCHCTm(void *a1, void (*a2)(uint64_t, void, void), uint64_t a3)
{
  v4 = a1[2];
  a2(255, a1[1], a1[3]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGSize, @in_guaranteed CGRect?) -> (@out A)(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + 32);
  *v9 = a2;
  *&v9[1] = a3;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return v4(v9, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGRect?) -> (@out A)(double *a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = *(a2 + 32);
  return v3(v8, v4, v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGRect?) -> (@out A)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

void static ClarityUIBackButtonActionWrapper.makeBackButtonAction()(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  [v2 setFlag:BSSettingFlagForBool() forSetting:313000];
  v3 = type metadata accessor for ClarityUIBackButtonAction();
  v4 = [objc_allocWithZone(v3) initWithInfo:v2 responder:0];

  a1[3] = v3;
  *a1 = v4;
}

void static ClarityUIBackButtonActionWrapper.makeBackButtonAction(isAnimated:)(void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  [v3 setFlag:BSSettingFlagForBool() forSetting:313000];
  v4 = type metadata accessor for ClarityUIBackButtonAction();
  v5 = [objc_allocWithZone(v4) initWithInfo:v3 responder:0];

  a2[3] = v4;
  *a2 = v5;
}

id ClarityUIBackButtonAction.init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v15[4] = a3;
    v15[5] = a4;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v15[3] = &block_descriptor_65;
    v11 = _Block_copy(v15);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ClarityUIBackButtonAction();
  v16.receiver = v5;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v11, a5);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3, a4);

  _Block_release(v11);
  return v13;
}

id @objc ClarityUIBackButtonAction.init()(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id ClarityUIBackButtonAction.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t type metadata accessor for BSAction()
{
  result = lazy cache variable for type metadata for BSAction;
  if (!lazy cache variable for type metadata for BSAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BSAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BSAction and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type BSAction and conformance NSObject;
  if (!lazy protocol witness table cache variable for type BSAction and conformance NSObject)
  {
    v3 = type metadata accessor for BSAction();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
  }

  return result;
}

void specialized ClarityUIBackButtonActionHandler._respond(to:for:in:from:)(uint64_t a1)
{
  v39 = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for BSAction();
    lazy protocol witness table accessor for type BSAction and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v40;
    v2 = v41;
    v3 = v42;
    v4 = v43;
    v5 = v44;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v33 = v1;
  v9 = (v3 + 64) >> 6;
  v10 = &selRef_setConfiguration_;
  if ((v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (__CocoaSet.Iterator.next()() && (type metadata accessor for BSAction(), swift_dynamicCast(), v15 = *&v34[0], v13 = v4, v14 = v5, *&v34[0]))
  {
    while (1)
    {
      type metadata accessor for ClarityUIBackButtonAction();
      v16 = swift_dynamicCastClass();
      if (v16 && (v17 = v16, v18 = v15, v19 = [v17 v10[360]], v18, v19))
      {
        [v19 flagForSetting_];
        IsYes = BSSettingFlagIsYes();
        v21 = [objc_opt_self() defaultCenter];
        if (one-time initialization token for didPerformBackButtonPress != -1)
        {
          swift_once();
        }

        v22 = static ClarityUI.didPerformBackButtonPress;
        *&v34[0] = 0x646574616D696E61;
        *(&v34[0] + 1) = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        v38 = MEMORY[0x1E69E6370];
        v37[40] = IsYes;
        type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
        v23 = static _DictionaryStorage.allocate(capacity:)();
        outlined init with copy of (AnyHashable, Any)(v37, v34);
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
        if (v25)
        {
          goto LABEL_28;
        }

        v23[(v24 >> 6) + 8] |= 1 << v24;
        v26 = v23[6] + 40 * v24;
        v27 = v34[0];
        v28 = v34[1];
        *(v26 + 32) = v35;
        *v26 = v27;
        *(v26 + 16) = v28;
        outlined init with take of Any(&v36, (v23[7] + 32 * v24));
        v29 = v23[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_29;
        }

        v23[2] = v31;
        outlined destroy of (AnyHashable, Any)(v37);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v21 postNotificationName:v22 object:0 userInfo:isa];

        v4 = v13;
        v5 = v14;
        v10 = &selRef_setConfiguration_;
        v1 = v33;
        if (v33 < 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        specialized Set._Variant.insert(_:)(v34, v15);

        v4 = v13;
        v5 = v14;
        v1 = v33;
        if (v33 < 0)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v11 = v4;
      v12 = v5;
      v13 = v4;
      if (!v5)
      {
        break;
      }

LABEL_14:
      v14 = (v12 - 1) & v12;
      v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_26;
      }

      v12 = *(v2 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_26:
    outlined consume of Set<UIPress>.Iterator._Variant(v33);
  }
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (AnyHashable, Any)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ReplacedRootDismissModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[3];
  v29 = a2[2];
  v30 = v5;
  v31 = a2[4];
  v32 = *(a2 + 20);
  v6 = a2[1];
  v27 = *a2;
  v28 = v6;
  LODWORD(v37) = v4;
  type metadata accessor for _GraphValue<TabViewBottomAccessoryModifier>(0, &lazy cache variable for type metadata for _GraphValue<ReplacedRootDismissModifier>, &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  v7 = v35[0];
  v8 = v28;
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  v9 = v37;
  LOBYTE(v37) = 0;
  Attribute.init<A>(body:value:flags:update:)();
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  outlined init with copy of _ViewInputs(&v27, &v37);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v12 = HIDWORD(v10);
  swift_beginAccess();
  LODWORD(v8) = *(v8 + 16);
  type metadata accessor for ViewGraph();
  MEMORY[0x18D00B7D0]();
  *&v37 = __PAIR64__(v12, v11);
  *(&v37 + 1) = __PAIR64__(v8, v7);
  *&v38 = v9;
  swift_weakInit();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ReplacedRootDismissModifier.ChildEnvironment and conformance ReplacedRootDismissModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ReplacedRootDismissModifier.ChildEnvironment(&v37);
  _GraphInputs.environment.setter();
  v33[2] = v23;
  v33[3] = v24;
  v33[4] = v25;
  v34 = v26;
  v33[0] = v21;
  v33[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = outlined init with copy of _ViewInputs(v33, &v37);
  a3(v13, &v15);
  v35[2] = v17;
  v35[3] = v18;
  v35[4] = v19;
  v36 = v20;
  v35[0] = v15;
  v35[1] = v16;
  outlined destroy of _ViewInputs(v35);
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v37 = v21;
  v38 = v22;
  return outlined destroy of _ViewInputs(&v37);
}

void ReplacedRootDismissModifier.ChildEnvironment.value.getter(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v22 = *Value;
  v23 = v5;
  if (swift_weakLoadStrong())
  {
    type metadata accessor for _GraphValue<TabViewBottomAccessoryModifier>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);

    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      outlined init with copy of NavigationAuthority?(WeakValue, &v16);
      if (v17 == 1)
      {

        outlined destroy of NavigationAuthority?(&v16);
      }

      else
      {
        outlined init with take of NavigationAuthority(&v16, v21);
        v7 = v1[1];
        v8 = *v1;
        v9 = AGGraphGetValue();
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        outlined init with copy of NavigationAuthority(v21, &v20);
        v16 = __PAIR64__(v7, v8);
        v17 = v10;
        v18 = v11;
        v19 = v12;
        swift_weakInit();
        type metadata accessor for LocationBox<ReplacedRootDismissModifier.PresentationModeLocation>(0);
        swift_allocObject();
        v13 = LocationBox.init(_:)();
        Attribute = AGWeakAttributeGetAttribute();
        v15 = 0;
        if (Attribute != *MEMORY[0x1E698D3F8])
        {
          v15 = *AGGraphGetValue() ^ 1;
        }

        v16 = 0;
        v17 = v13;
        v18 = v15 & 1;
        type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
        lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
        swift_retain_n();

        PropertyList.subscript.setter();
        if (v5)
        {
          PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
        }

        outlined destroy of NavigationAuthority(v21);
        v4 = v22;
        v5 = v23;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t closure #1 in ReplacedRootDismissModifier.PresentationModeLocation.set(_:transaction:)(void *a1)
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return AGGraphSetValue();
  }

  return result;
}

_BYTE *protocol witness for Location.get() in conformance ReplacedRootDismissModifier.PresentationModeLocation@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3 & 1;
  return result;
}

uint64_t protocol witness for Location.update() in conformance ReplacedRootDismissModifier.PresentationModeLocation(_BYTE *a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *WeakValue ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3 & 1;
  return 1;
}

unint64_t lazy protocol witness table accessor for type ReplacedRootDismissModifier.ChildEnvironment and conformance ReplacedRootDismissModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type ReplacedRootDismissModifier.ChildEnvironment and conformance ReplacedRootDismissModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type ReplacedRootDismissModifier.ChildEnvironment and conformance ReplacedRootDismissModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReplacedRootDismissModifier.ChildEnvironment, &type metadata for ReplacedRootDismissModifier.ChildEnvironment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReplacedRootDismissModifier.ChildEnvironment and conformance ReplacedRootDismissModifier.ChildEnvironment);
  }

  return result;
}

void type metadata accessor for LocationBox<ReplacedRootDismissModifier.PresentationModeLocation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LocationBox<ReplacedRootDismissModifier.PresentationModeLocation>)
  {
    lazy protocol witness table accessor for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation();
    v1 = type metadata accessor for LocationBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LocationBox<ReplacedRootDismissModifier.PresentationModeLocation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation()
{
  result = lazy protocol witness table cache variable for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation;
  if (!lazy protocol witness table cache variable for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReplacedRootDismissModifier.PresentationModeLocation, &type metadata for ReplacedRootDismissModifier.PresentationModeLocation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation;
  if (!lazy protocol witness table cache variable for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReplacedRootDismissModifier.PresentationModeLocation, &type metadata for ReplacedRootDismissModifier.PresentationModeLocation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReplacedRootDismissModifier.PresentationModeLocation and conformance ReplacedRootDismissModifier.PresentationModeLocation);
  }

  return result;
}

uint64_t destroy for ReplacedRootDismissModifier.PresentationModeLocation(uint64_t a1)
{
  swift_weakDestroy();

  return swift_weakDestroy();
}

uint64_t initializeWithCopy for ReplacedRootDismissModifier.PresentationModeLocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_weakCopyInit();
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  swift_weakCopyInit();
  return a1;
}

uint64_t assignWithCopy for ReplacedRootDismissModifier.PresentationModeLocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_weakCopyAssign();
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  swift_weakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for ReplacedRootDismissModifier.PresentationModeLocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_weakTakeInit();
  *(a1 + 40) = *(a2 + 40);
  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithTake for ReplacedRootDismissModifier.PresentationModeLocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_weakTakeAssign();
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  swift_weakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for ReplacedRootDismissModifier.PresentationModeLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ReplacedRootDismissModifier.PresentationModeLocation(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

_DWORD *assignWithCopy for ReplacedRootDismissModifier.ChildEnvironment(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  swift_weakCopyAssign();
  return a1;
}

void *initializeWithCopy for ReplacedRootDismissModifier.ChildEnvironment(void *a1, void *a2, uint64_t a3, void (*a4)(void *, void *))
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  (a4)(a1 + 3, a2 + 3, a3);
  return a1;
}

uint64_t assignWithTake for ReplacedRootDismissModifier.ChildEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeAssign();
  return a1;
}

_BYTE *specialized ReplacedRootDismissModifier.PresentationModeLocation.set(_:transaction:)(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    if (swift_weakLoadStrong())
    {
      static Transaction.current.getter();
      outlined init with copy of ReplacedRootDismissModifier.PresentationModeLocation(v1, &v6);
      v2 = swift_allocObject();
      outlined init with take of ReplacedRootDismissModifier.PresentationModeLocation(&v6, v2 + 16);
      v6 = partial apply for closure #1 in ReplacedRootDismissModifier.PresentationModeLocation.set(_:transaction:);
      *&v7 = v2;
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    }

    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = 1;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    v13 = 22;
    v14 = v3;
    v15 = v4;
    v21 = 0;
    v16 = v5;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    NavigationAuthority.enqueueRequest(_:)(&v6);
    return outlined destroy of NavigationRequest(&v6);
  }

  return result;
}

uint64_t outlined init with take of ReplacedRootDismissModifier.PresentationModeLocation(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  swift_weakTakeInit();
  *(a2 + 40) = *(a1 + 40);
  swift_weakTakeInit();
  return a2;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ClarityUIApplicationSceneSetting@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ClarityUIApplicationSceneSetting.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static ClarityUIApplicationSceneSettingsProtocol.intEnumValue<A>(otherSettings:sceneSetting:defaultValue:)@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ([a1 objectForSetting_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v21, v22);
    outlined init with copy of Any(v22, v21);
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v16 = v20;
      *&v21[0] = [v20 integerValue];
      dispatch thunk of RawRepresentable.init(rawValue:)();

      v17 = *(a4 - 8);
      if ((*(v17 + 48))(v15, 1, a4) != 1)
      {
        (*(v17 + 32))(a6, v15, a4);
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

      (*(v12 + 8))(v15, v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return (*(*(a4 - 8) + 16))(a6, a3, a4);
}

uint64_t static ClarityUIApplicationSceneSettingsProtocol.navigationBarHost(otherSettings:)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, unsigned __int8 a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = 0;
  a2();
  return static ClarityUIApplicationSceneSettingsProtocol.intEnumValue<A>(otherSettings:sceneSetting:defaultValue:)(a1, a3, &v10, a4, a5);
}

uint64_t static ClarityUIApplicationSceneSettingsProtocol.valueDescription(flag:object:setting:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      goto LABEL_3;
    }
  }

  else if (!a3)
  {
LABEL_3:
    outlined init with copy of Any?(a2, &v4);
    type metadata accessor for Any?();
    return String.init<A>(describing:)();
  }

  if (BSSettingFlagIsYes())
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

void ClarityUIApplicationSceneSettings.navigationBarHost.getter(uint64_t (*a1)(void)@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = [v8 otherSettings];
  v11 = 0;
  a1();
  static ClarityUIApplicationSceneSettingsProtocol.intEnumValue<A>(otherSettings:sceneSetting:defaultValue:)(v10, a2, &v11, a3, a4);
}

id ClarityUIApplicationSceneSettings.areBadgesEnabled.getter()
{
  v1 = [v0 otherSettings];
  v2 = [v1 BOOLForSetting_];

  return v2;
}

void (*ClarityUIMutableApplicationSceneSettings.navigationBarHost.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = a1 + 9;
  v4 = [v1 otherSettings];
  *(a1 + 8) = 0;
  lazy protocol witness table accessor for type NavigationBarHost and conformance NavigationBarHost();
  static ClarityUIApplicationSceneSettingsProtocol.intEnumValue<A>(otherSettings:sceneSetting:defaultValue:)(v4, 0, a1 + 8, &type metadata for NavigationBarHost, v3);

  return ClarityUIMutableApplicationSceneSettings.navigationBarHost.modify;
}

void (*ClarityUIMutableApplicationSceneSettings.isAdminModeEnabled.modify(uint64_t a1))(id *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [v1 otherSettings];
  v4 = [v3 BOOLForSetting_];

  *(a1 + 8) = v4;
  return ClarityUIMutableApplicationSceneSettings.isAdminModeEnabled.modify;
}

void (*ClarityUIMutableApplicationSceneSettings.listLayout.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = a1 + 9;
  v4 = [v1 otherSettings];
  *(a1 + 8) = 0;
  lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout();
  static ClarityUIApplicationSceneSettingsProtocol.intEnumValue<A>(otherSettings:sceneSetting:defaultValue:)(v4, 2u, a1 + 8, &type metadata for MultimodalListStyle.Layout, v3);

  return ClarityUIMutableApplicationSceneSettings.listLayout.modify;
}

void ClarityUIMutableApplicationSceneSettings.navigationBarHost.modify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 9);
  v6 = [*a1 otherSettings];
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v6 setObject:v5 forSetting:a3];
}

void (*ClarityUIMutableApplicationSceneSettings.areBadgesEnabled.modify(uint64_t a1))(id *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [v1 otherSettings];
  v4 = [v3 BOOLForSetting_];

  *(a1 + 8) = v4;
  return ClarityUIMutableApplicationSceneSettings.areBadgesEnabled.modify;
}

void ClarityUIMutableApplicationSceneSettings.isAdminModeEnabled.modify(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [*a1 otherSettings];
  [v4 setFlag:BSSettingFlagForBool() forSetting:a3];
}

id @objc ClarityUIApplicationSceneSettings.keyDescription(forSetting:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = specialized ClarityUIApplicationSceneSetting.init(rawValue:)(a3);
  if (v7 != 4)
  {
    v14 = static ClarityUIApplicationSceneSettingsProtocol.keyDescription(setting:)(v7);
    v13 = v15;
    goto LABEL_5;
  }

  v18.receiver = a1;
  v18.super_class = a4();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v18, sel_keyDescriptionForSetting_, a3);
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = v11;
LABEL_5:
    v16 = MEMORY[0x18D00C850](v14, v13);

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

uint64_t ClarityUIApplicationSceneSettings.valueDescription(for:object:ofSetting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a3 - 312000;
  if (v6 <= 3)
  {
    return static ClarityUIApplicationSceneSettingsProtocol.valueDescription(flag:object:setting:)(a1, a2, v6);
  }

  v10 = outlined init with copy of Any?(a2, v22);
  v11 = v23;
  if (v23)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v16, v11);
    v10 = __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v17 = 0;
  }

  v18 = a4(v10);
  v21.receiver = v4;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, sel_valueDescriptionForFlag_object_ofSetting_, a1, v17, a3);
  swift_unknownObjectRelease();
  if (!v19)
  {
    return 0;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v20;
}

id @objc ClarityUIApplicationSceneSettings.valueDescription(for:object:ofSetting:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (a4)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v11 = a1;
  }

  v12 = ClarityUIApplicationSceneSettings.valueDescription(for:object:ofSetting:)(a3, v17, a5, a6);
  v14 = v13;

  outlined destroy of Any?(v17);
  if (v14)
  {
    v15 = MEMORY[0x18D00C850](v12, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id @objc ClarityUIApplicationSceneSettings.mutableCopy(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = objc_allocWithZone(a4(a1, a2, a3));

  return [v5 initWithSettings_];
}

id @objc ClarityUIApplicationSceneSettings.init(settings:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6.receiver = a1;
  v6.super_class = a4(a1, a2);
  return objc_msgSendSuper2(&v6, sel_initWithSettings_, a3);
}

id @objc ClarityUIApplicationSceneSettings.init()(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id ClarityUIApplicationSceneSettings.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*protocol witness for ClarityUIMutableApplicationSceneSettingsProtocol.navigationBarHost.modify in conformance ClarityUIMutableApplicationSceneSettings(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ClarityUIMutableApplicationSceneSettings.navigationBarHost.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void (*protocol witness for ClarityUIMutableApplicationSceneSettingsProtocol.isAdminModeEnabled.modify in conformance ClarityUIMutableApplicationSceneSettings(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ClarityUIMutableApplicationSceneSettings.isAdminModeEnabled.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void protocol witness for ClarityUIMutableApplicationSceneSettingsProtocol.navigationBarHost.setter in conformance ClarityUIMutableApplicationSceneSettings(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [v4 otherSettings];
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v7 setObject:v8 forSetting:a4];
}

void (*protocol witness for ClarityUIMutableApplicationSceneSettingsProtocol.listLayout.modify in conformance ClarityUIMutableApplicationSceneSettings(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ClarityUIMutableApplicationSceneSettings.listLayout.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

void protocol witness for ClarityUIMutableApplicationSceneSettingsProtocol.isAdminModeEnabled.setter in conformance ClarityUIMutableApplicationSceneSettings(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [v4 otherSettings];
  [v6 setFlag:BSSettingFlagForBool() forSetting:a4];
}

void (*protocol witness for ClarityUIMutableApplicationSceneSettingsProtocol.areBadgesEnabled.modify in conformance ClarityUIMutableApplicationSceneSettings(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ClarityUIMutableApplicationSceneSettings.areBadgesEnabled.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationBarHost and conformance NavigationBarHost()
{
  result = lazy protocol witness table cache variable for type NavigationBarHost and conformance NavigationBarHost;
  if (!lazy protocol witness table cache variable for type NavigationBarHost and conformance NavigationBarHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationBarHost, &type metadata for NavigationBarHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBarHost and conformance NavigationBarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationBarHost and conformance NavigationBarHost;
  if (!lazy protocol witness table cache variable for type NavigationBarHost and conformance NavigationBarHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationBarHost, &type metadata for NavigationBarHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBarHost and conformance NavigationBarHost);
  }

  return result;
}

uint64_t specialized ClarityUIApplicationSceneSetting.init(rawValue:)(uint64_t a1)
{
  if ((a1 - 312000) >= 4)
  {
    return 4;
  }

  else
  {
    return a1 - 312000;
  }
}

unint64_t lazy protocol witness table accessor for type ClarityUIApplicationSceneSetting and conformance ClarityUIApplicationSceneSetting()
{
  result = lazy protocol witness table cache variable for type ClarityUIApplicationSceneSetting and conformance ClarityUIApplicationSceneSetting;
  if (!lazy protocol witness table cache variable for type ClarityUIApplicationSceneSetting and conformance ClarityUIApplicationSceneSetting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClarityUIApplicationSceneSetting, &type metadata for ClarityUIApplicationSceneSetting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIApplicationSceneSetting and conformance ClarityUIApplicationSceneSetting);
  }

  return result;
}

void EnvironmentValues.editMode.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

double EnvironmentValues.editMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EditModeKey>();

  outlined copy of Binding<Int>?(v2, v3);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined consume of Binding<NavigationSplitViewColumn>?(v2, v3);

  return result;
}

Swift::Int EditMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

void (*EnvironmentValues.editMode.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[6] = v1;
  v3[7] = *v1;
  v4 = v1[1];
  v3[8] = v4;
  type metadata accessor for EnvironmentPropertyKey<EditModeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.editMode.modify;
}

void EnvironmentValues.editMode.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v7 = v3[8];
  v3[4] = v5;
  *(v3 + 40) = v6;
  type metadata accessor for EnvironmentPropertyKey<EditModeKey>();
  if (a2)
  {
    outlined copy of Binding<Int>?(v4, v5);

    outlined copy of Binding<Int>?(v4, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();
    if (v7)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    outlined consume of Binding<NavigationSplitViewColumn>?(v4, v5);

    outlined consume of Binding<NavigationSplitViewColumn>?(*v3, v3[1]);
  }

  else
  {

    outlined copy of Binding<Int>?(v4, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();
    if (v7)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    outlined consume of Binding<NavigationSplitViewColumn>?(v4, v5);
  }

  free(v3);
}

unint64_t lazy protocol witness table accessor for type EditMode and conformance EditMode()
{
  result = lazy protocol witness table cache variable for type EditMode and conformance EditMode;
  if (!lazy protocol witness table cache variable for type EditMode and conformance EditMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditMode, &type metadata for EditMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EditMode and conformance EditMode);
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.editMode.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double EditModeEnvironment.value.getter@<D0>(uint64_t *a3@<X8>)
{
  AGGraphRegisterDependency();
  Value = AGGraphGetValue();
  v5 = Value[1];
  *a3 = *Value;
  a3[1] = v5;
  swift_retain_n();

  StoredLocationBase.updateValue.getter();
  type metadata accessor for EnvironmentPropertyKey<EditModeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();
  PropertyList.subscript.setter();
  if (v5)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t assignWithCopy for EditModeEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for EditModeEnvironment(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

unint64_t lazy protocol witness table accessor for type PlainTextFieldStyle.BodyContent and conformance PlainTextFieldStyle.BodyContent()
{
  result = lazy protocol witness table cache variable for type PlainTextFieldStyle.BodyContent and conformance PlainTextFieldStyle.BodyContent;
  if (!lazy protocol witness table cache variable for type PlainTextFieldStyle.BodyContent and conformance PlainTextFieldStyle.BodyContent)
  {
    v3 = type metadata accessor for PlainTextFieldStyle.BodyContent(255);
    result = swift_getWitnessTable(protocol conformance descriptor for PlainTextFieldStyle.BodyContent, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainTextFieldStyle.BodyContent and conformance PlainTextFieldStyle.BodyContent);
  }

  return result;
}

uint64_t LabeledView.init(label:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for LabeledView(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t LabeledView.init(content:label:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18(v15);
  a1(v19);
  return LabeledView.init(label:content:)(v17, v13, a2, a3, a4, a5, a6);
}

uint64_t LabeledView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *(a1 + 16);
  v6 = v17;
  v7 = type metadata accessor for LabeledContent(0, v17, *(&v17 + 1), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v24 = v4;
  v16 = *(a1 + 32);
  v22 = v17;
  v23 = v16;
  v19 = v17;
  v20 = v16;
  v21 = v4;
  LabeledContent<>.init(content:label:)(partial apply for closure #1 in LabeledView.body.getter, partial apply for closure #2 in LabeledView.body.getter, v18, v6, *(&v6 + 1), v10);
  v25 = v16;
  swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v7, &v25);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v13, v7);
}

uint64_t closure #1 in LabeledView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for LabeledView(0, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

uint64_t closure #2 in LabeledView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t LabeledView<>.init(_:content:)@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  LabeledView.init(content:label:)(partial apply for closure #1 in LabeledView<>.init(_:content:), MEMORY[0x1E6981148], a1, MEMORY[0x1E6981138], a2, a3);
}

uint64_t closure #1 in LabeledView<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

uint64_t closure #1 in LabeledView<>.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

uint64_t LabeledView<>.init<A>(_:value:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  closure #1 in LabeledView<>.init<A>(_:value:)(a5, &v24);
  v18 = v25;
  v19 = v26;
  v20 = v24;
  LOBYTE(v24) = v15 & 1;
  v27 = v25;
  *a8 = v11;
  *(a8 + 8) = v13;
  *(a8 + 16) = v15 & 1;
  *(a8 + 24) = v17;
  *(a8 + 32) = v20;
  *(a8 + 48) = v18;
  v21 = *(a6 - 8);
  *(a8 + 56) = v19;
  v22 = *(v21 + 8);

  return v22(a5, a6);
}

uint64_t closure #1 in LabeledView<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

uint64_t LabeledView<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v14 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v17, a1, v15);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a2;
  LabeledView<>.init<A>(_:content:)(v17, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981138], v27);
  (*(v14 + 8))(a1, a3);
  v18 = v27[1];
  *a7 = v27[0];
  a7[1] = v18;
  v19 = v27[3];
  a7[2] = v27[2];
  a7[3] = v19;
  return (*(*(a4 - 8) + 8))(a2, a4);
}

uint64_t closure #2 in LabeledView<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

uint64_t LabeledView<>.init<A>(_:value:format:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  closure #1 in LabeledView<>.init<A>(_:value:format:)(a5, a6, a7, &v27);
  v21 = v28;
  v22 = v29;
  v23 = v27;
  LOBYTE(v27) = v18 & 1;
  v30 = v28;
  *a9 = v14;
  *(a9 + 8) = v16;
  *(a9 + 16) = v18 & 1;
  *(a9 + 24) = v20;
  *(a9 + 32) = v23;
  *(a9 + 48) = v21;
  *(a9 + 56) = v22;
  (*(*(a7 - 8) + 8))(a6, a7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(*(AssociatedTypeWitness - 8) + 8);

  return v25(a5, AssociatedTypeWitness);
}

uint64_t closure #1 in LabeledView<>.init<A>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v16 + 16))(&v21 - v15, a1, v14);
  (*(v10 + 16))(v12, a2, a3);
  result = Text.init<A>(_:format:)();
  *a6 = result;
  *(a6 + 8) = v18;
  *(a6 + 16) = v19 & 1;
  *(a6 + 24) = v20;
  return result;
}

uint64_t LabeledView<>.init<A, B>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v27 = a8;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v27;
  v33 = a2;
  v34 = a3;
  LabeledView<>.init<A>(_:content:)(v20, MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], v35);
  (*(v17 + 8))(a1, a4);
  v22 = v35[1];
  *a9 = v35[0];
  a9[1] = v22;
  v23 = v35[3];
  a9[2] = v35[2];
  a9[3] = v23;
  (*(*(a5 - 8) + 8))(a3, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
}

uint64_t closure #1 in LabeledView<>.init<A, B>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a6@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v16 + 16))(&v21 - v15, a1, v14);
  (*(v10 + 16))(v12, a2, a3);
  result = Text.init<A>(_:format:)();
  *a6 = result;
  *(a6 + 8) = v18;
  *(a6 + 16) = v19 & 1;
  *(a6 + 24) = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type [ToolbarDefaultItemKind.Kind] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToolbarDefaultItemKind.Kind] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToolbarDefaultItemKind.Kind] and conformance [A])
  {
    type metadata accessor for [ToolbarDefaultItemKind.Kind]();
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolbarDefaultItemKind.Kind] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [ToolbarDefaultItemKind.Kind]()
{
  if (!lazy cache variable for type metadata for [ToolbarDefaultItemKind.Kind])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ToolbarDefaultItemKind.Kind]);
    }
  }
}

uint64_t ShadowListDataSource.performDrop(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v7);
  (*(*(a2 + 24) + 176))(a1, v5);
  return (*(v6 + 8))(v9, v5);
}

Swift::Void __swiftcall ShadowListDataSource.commitUpdates()()
{
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v4, *(v5 + 8), v1);
  v7 = *(updated - 8);
  v8 = MEMORY[0x1EEE9AC00](updated);
  v10 = &v11[-v9];
  (*(v7 + 16))(&v11[-v9], v3, updated, v8);
  v12 = v4;
  v13 = v5;
  v14 = v3;
  ShadowListUpdateRecorder.withBase(do:)(partial apply for closure #1 in ShadowListDataSource.commitUpdates(), v11, updated);
  ShadowListUpdateRecorder.clearUpdates()();
  (*(v7 + 40))(v3, v10, updated);
}

uint64_t ShadowListDataSource.updateBase(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for ShadowListUpdateRecorder(0, *(a2 + 16), *(*(a2 + 24) + 8), a4);

  return ShadowListUpdateRecorder.updateBase(to:)(a1, updated);
}

Swift::Void __swiftcall ShadowListDataSource.discardUpdatesForDeletion()()
{
  type metadata accessor for ShadowListUpdateRecorder(0, *(v0 + 16), *(*(v0 + 24) + 8), v1);

  ShadowListUpdateRecorder.clearUpdates()();
}

uint64_t ShadowListDataSource.configureGlobalHeader(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  (*(*(a3 + 24) + 80))(a1, a2, v7);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in ShadowListDataSource.commitUpdates()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a1;
  v75 = a4;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1E69E6530];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v67 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v54 - v16;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v54 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = AssociatedTypeWitness;
  v79[0] = AssociatedTypeWitness;
  v79[1] = v8;
  v79[2] = AssociatedConformanceWitness;
  v79[3] = MEMORY[0x1E69E6548];
  v21 = type metadata accessor for ListUpdate(0, v79);
  v78 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v74 = a3;
  v28 = *(a2 + *(type metadata accessor for ShadowListUpdateRecorder(0, a3, v6, v27) + 36));

  if (!MEMORY[0x18D00CDE0](v29, v21))
  {
  }

  v30 = 0;
  v76 = (v78 + 32);
  v77 = (v78 + 16);
  v61 = (v9 + 32);
  v60 = (v9 + 16);
  v59 = v75 + 200;
  v58 = (v9 + 8);
  v68 = (v17 + 8);
  v57 = (v17 + 32);
  v56 = v75 + 208;
  v55 = (v78 + 8);
  v69 = v28;
  v62 = v26;
  v63 = v23;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v78 + 16))(v26, v28 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v30, v21);
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v54 != 8)
    {
      break;
    }

    v79[0] = result;
    (*v77)(v26, v79, v21);
    swift_unknownObjectRelease();
    v36 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
LABEL_14:
      __break(1u);
    }

LABEL_7:
    (*v76)(v23, v26, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v73;
      v32 = *&v23[*(TupleTypeMetadata2 + 48)];
      v33 = v64;
      (*v57)(v64, v23, v73);
      (*(v75 + 208))(v33, v32, v74);
      v34 = v33;
      v28 = v69;
      (*v68)(v34, v31);
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v38 = TupleTypeMetadata2;
      v39 = *(swift_getTupleTypeMetadata2() + 48);
      v40 = *v61;
      v41 = v71;
      (*v61)(v71, v23, v38);
      v42 = v65;
      v40(v65, &v23[v39], v38);
      v43 = *v60;
      v44 = v66;
      (*v60)(v66, v41, v38);
      v45 = *&v44[*(v38 + 48)];
      v46 = v67;
      v43(v67, v42, v38);
      (*(v75 + 200))(v44, v45, v46, *&v46[*(v38 + 48)], v74);
      v47 = *v58;
      v48 = v42;
      v28 = v69;
      (*v58)(v48, v38);
      v49 = v38;
      v26 = v62;
      v47(v71, v49);
      v50 = *v68;
      v51 = v73;
      (*v68)(v46, v73);
      v52 = v44;
      v23 = v63;
      v50(v52, v51);
    }

    else
    {
      (*v55)(v23, v21);
    }

    ++v30;
    if (v36 == MEMORY[0x18D00CDE0](v28, v21))
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ShadowListDataSource.cornerRadius(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v7);
  v10 = (*(*(a2 + 24) + 120))(a1, v5);
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t ShadowListDataSource.configureHeader(_:transaction:forSectionAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = *(v7 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v13 = *(v6 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v4, v6, v15);
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v6, v8, v18);
  ShadowListUpdateRecorder.initialIndex(_:)(a3, updated, v12);
  (*(v7 + 88))(v21, v22, v12, v6, v7);
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  return (*(v13 + 8))(v17, v6);
}

uint64_t ShadowListDataSource.configureFooter(_:transaction:forSectionAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = *(v7 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v13 = *(v6 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v4, v6, v15);
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v6, v8, v18);
  ShadowListUpdateRecorder.initialIndex(_:)(a3, updated, v12);
  (*(v7 + 96))(v21, v22, v12, v6, v7);
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  return (*(v13 + 8))(v17, v6);
}

uint64_t ShadowListDataSource.firstIndexPath<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v4, v9, v11);
  (*(*(a2 + 24) + 136))(a1, a3, a4, v9);
  return (*(v10 + 8))(v13, v9);
}

uint64_t ShadowListDataSource.firstIndexPath(viewListID:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  (*(v6 + 16))(v9, v2, v5, v7);
  v13[0] = *a1;
  v13[1] = v11;
  (*(*(a2 + 24) + 144))(v13, v5);
  return (*(v6 + 8))(v9, v5);
}

uint64_t ShadowListDataSource.firstCollectionViewIndex(of:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  (*(v6 + 16))(v9, v2, v5, v7);
  v14[0] = *a1;
  v14[1] = v11;
  v12 = (*(*(a2 + 24) + 152))(v14, v5);
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t ShadowListDataSource.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v4, v9, v11);
  LOBYTE(v5) = (*(*(v5 + 24) + 160))(a1, a2, a3, v9);
  (*(v10 + 8))(v13, v9);
  return v5 & 1;
}

uint64_t ShadowListDataSource.deleteCell(forRow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v3 = *(*(a3 + 24) + 8);
  v32 = *(a3 + 16);
  v33 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34[0] = AssociatedTypeWitness;
  v34[1] = MEMORY[0x1E69E6530];
  v34[2] = AssociatedConformanceWitness;
  v34[3] = MEMORY[0x1E69E6548];
  v6 = type metadata accessor for ListUpdate(0, v34);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(&v27 - v19, v30, AssociatedTypeWitness, v18);
  *&v20[*(TupleTypeMetadata2 + 48)] = v31;
  v31 = *(TupleTypeMetadata2 + 48);
  v22 = *(v11 + 16);
  v22(v16, v20, TupleTypeMetadata2);
  (*(v21 + 32))(v9, v16, AssociatedTypeWitness);
  v22(v13, v20, TupleTypeMetadata2);
  *&v9[v31] = *&v13[*(TupleTypeMetadata2 + 48)];
  v23 = v28;
  swift_storeEnumTagMultiPayload();
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v32, v33, v24);
  ShadowListUpdateRecorder.recordUpdate(_:)(v9, updated);
  (*(v29 + 8))(v9, v23);
  (*(v11 + 8))(v20, TupleTypeMetadata2);
  return (*(v21 + 8))(v13, AssociatedTypeWitness);
}

uint64_t ShadowListDataSource.canMoveCell(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v36 = *(v4 + 8);
  v37 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v30 - v8;
  v32 = *(v5 - 8);
  v9 = v32;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  (*(v7 + 16))(&v30 - v19, v34, AssociatedTypeWitness, v18);
  *&v20[*(TupleTypeMetadata2 + 48)] = v35;
  (*(v9 + 16))(v12, v3, v5);
  (*(v14 + 16))(v16, v20, TupleTypeMetadata2);
  v21 = *&v16[*(TupleTypeMetadata2 + 48)];
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v5, v36, v22);
  v24 = v33;
  v25 = ShadowListUpdateRecorder.initialIndex(_:)(v33, v16, v21, updated);
  v26 = *(v7 + 8);
  v27 = v16;
  v28 = v31;
  v26(v27, v31);
  LOBYTE(v25) = (*(v37 + 184))(v24, v25, v5);
  v26(v24, v28);
  (*(v32 + 8))(v12, v5);
  (*(v14 + 8))(v20, TupleTypeMetadata2);
  return v25 & 1;
}

uint64_t ShadowListDataSource.canMoveCell(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a1;
  v6 = *(a5 + 16);
  v5 = *(a5 + 24);
  v54 = a3;
  v55 = v5;
  v7 = *(v5 + 8);
  v52 = a2;
  v53 = v7;
  swift_getAssociatedTypeWitness();
  v56 = v6;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v9 = v43;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v43 - v12;
  v46 = *(v6 - 8);
  v13 = v46;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  v18 = v45;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v57 = &v43 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - v26;
  v28 = *(v9 + 16);
  v28(&v43 - v26, v50, AssociatedTypeWitness, v25);
  *&v27[*(TupleTypeMetadata2 + 48)] = v52;
  v47 = v27;
  (v28)(v23, v54, AssociatedTypeWitness);
  *&v23[*(TupleTypeMetadata2 + 48)] = v49;
  v29 = *(v13 + 16);
  v30 = v56;
  v29(v16, v58, v56);
  v31 = *(v18 + 16);
  v31(v20, v27, TupleTypeMetadata2);
  v32 = *&v20[*(TupleTypeMetadata2 + 48)];
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v30, v53, v33);
  v35 = v48;
  v54 = ShadowListUpdateRecorder.initialIndex(_:)(v48, v20, v32, updated);
  v36 = *(v43 + 8);
  v36(v20, AssociatedTypeWitness);
  v31(v20, v57, TupleTypeMetadata2);
  v37 = v51;
  v38 = ShadowListUpdateRecorder.initialIndex(_:)(v51, v20, *&v20[*(TupleTypeMetadata2 + 48)], updated);
  v36(v20, AssociatedTypeWitness);
  v39 = v44;
  v40 = v56;
  LOBYTE(v38) = (*(v55 + 192))(v35, v54, v37, v38, v56);
  v36(v37, AssociatedTypeWitness);
  v36(v35, AssociatedTypeWitness);
  (*(v46 + 8))(v39, v40);
  v41 = *(v45 + 8);
  v41(v57, TupleTypeMetadata2);
  v41(v47, TupleTypeMetadata2);
  return v38 & 1;
}

uint64_t ShadowListDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v5 = *(*(a5 + 24) + 8);
  v33 = *(a5 + 16);
  v34 = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35[0] = AssociatedTypeWitness;
  v35[1] = MEMORY[0x1E69E6530];
  v35[2] = AssociatedConformanceWitness;
  v35[3] = MEMORY[0x1E69E6548];
  v8 = type metadata accessor for ListUpdate(0, v35);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v20 = *(*(AssociatedTypeWitness - 8) + 16);
  v20(&v28 - v18, v29, AssociatedTypeWitness, v17);
  v21 = v31;
  *&v19[*(TupleTypeMetadata2 + 48)] = v30;
  (v20)(v15, v21, AssociatedTypeWitness);
  *&v15[*(TupleTypeMetadata2 + 48)] = v32;
  v22 = *(swift_getTupleTypeMetadata2() + 48);
  v23 = *(v13 + 16);
  v23(v11, v19, TupleTypeMetadata2);
  v23(&v11[v22], v15, TupleTypeMetadata2);
  swift_storeEnumTagMultiPayload();
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v33, v34, v24);
  ShadowListUpdateRecorder.recordUpdate(_:)(v11, updated);
  (*(v9 + 8))(v11, v8);
  v26 = *(v13 + 8);
  v26(v15, TupleTypeMetadata2);
  return (v26)(v19, TupleTypeMetadata2);
}

void BorderedButtonStyle.init(tint:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseImageBackground(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UseImageBackground and conformance UseImageBackground();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t View.materialBackedBorderedButtons()(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UseImageBackground and conformance UseImageBackground();

  return View.input<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<UseImageBackground> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<UseImageBackground> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<UseImageBackground> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<UseImageBackground>, lazy protocol witness table accessor for type UseImageBackground and conformance UseImageBackground, &type metadata for UseImageBackground, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<UseImageBackground> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t Text.LineStyle.init(nsUnderlineStyle:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = (~result & 9) == 0 || result == 0 || (result & 0x8002) != 0;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t NSUnderlineStyle.init(_:)(uint64_t *a1)
{
  v1 = *a1;

  return v1;
}

uint64_t TransferableProvider.makeContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for NSItemProvider();
  (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v8 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  *(v9 + 16) = v10;
  v20 = *(a1 + 24);
  *(v9 + 24) = v20;
  v11 = *(a1 + 40);
  *(v9 + 40) = v11;
  v19 = *(a1 + 48);
  *(v9 + 48) = v19;
  (*(v6 + 32))(v9 + v8, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v12 = NSItemProvider.init<A>(transferable:)();
  v22 = v10;
  v23 = v20;
  v24 = v11;
  v25 = v19;
  v27 = v19;
  v26 = v20;
  type metadata accessor for SharePreview(255, &v26);
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TransferableProvider.makeContent(), v21, MEMORY[0x1E69E73E0], &type metadata for AnySharePreview, v13, &v26);
  *a2 = v12;
  v14 = v29;
  *(a2 + 40) = v28;
  *(a2 + 56) = v14;
  v15 = v31;
  *(a2 + 72) = v30;
  *(a2 + 88) = v15;
  v16 = v27;
  *(a2 + 8) = v26;
  *(a2 + 24) = v16;
  v17 = type metadata accessor for TitleDocumentContent(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
}

uint64_t closure #1 in TransferableProvider.makeContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v12 = type metadata accessor for SharePreview(0, v18);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v18 - v14);
  (*(v16 + 16))(v18 - v14, a1, v13);
  return AnySharePreview.init<A, B>(_:)(v15, a2, a3, a4, a5, a6);
}

uint64_t TransferableProvider.init(document:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v17 = *(type metadata accessor for TransferableProvider(0, &v20) + 68);
  v20 = a4;
  v21 = a5;
  v22 = a7;
  v23 = a8;
  type metadata accessor for SharePreview(255, &v20);
  v18 = type metadata accessor for Optional();
  return (*(*(v18 - 8) + 32))(a9 + v17, a2, v18);
}

uint64_t protocol witness for TitleDocumentProvider.makeContent() in conformance URLProvider@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = type metadata accessor for TitleDocumentContent(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t View.navigationDocument<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v29[1] = a6;
  v30 = a2;
  v29[0] = a1;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E73E0];
  v36 = v12;
  v37 = MEMORY[0x1E69E73E0];
  v38 = MEMORY[0x1E69E73E0];
  v39 = v13;
  v14 = MEMORY[0x1E6965C48];
  *&v40 = MEMORY[0x1E6965C48];
  *(&v40 + 1) = MEMORY[0x1E6965C48];
  v15 = type metadata accessor for TransferableProvider(0, &v36);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v29 - v21;
  (*(v8 + 16))(v10, v29[0], a3, v20);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  TransferableProvider.init(document:preview:)(v10, &v36, a3, v11, v11, a5, v14, v14, v22);
  type metadata accessor for NavigationDocumentBox(0, v15, &protocol witness table for TransferableProvider<A, B, C>, v23);
  (*(v16 + 16))(v18, v22, v15);
  v24 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v18);
  LOBYTE(v36) = 1;
  v25 = MEMORY[0x1E6981E70];
  v26 = MEMORY[0x1E6981E60];
  NavigationPropertiesModifier.init(provider:title:)(v24, &v36, a3, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], &v34);
  v32 = v34;
  v33 = v35;
  v36 = a3;
  v37 = v25;
  v38 = v25;
  v39 = v26;
  *&v40 = v26;
  v27 = type metadata accessor for NavigationPropertiesModifier(0, &v36);
  MEMORY[0x18D00A570](&v32, v30, v27, v31);

  return (*(v16 + 8))(v22, v15);
}

uint64_t View.navigationDocument<A>(_:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a5;
  v32 = a7;
  v33 = a3;
  v30 = a1;
  v31 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E73E0];
  v39 = v13;
  v40 = MEMORY[0x1E69E73E0];
  v41 = MEMORY[0x1E69E73E0];
  v42 = v14;
  v15 = MEMORY[0x1E6965C48];
  v43 = MEMORY[0x1E6965C48];
  v44 = MEMORY[0x1E6965C48];
  v16 = type metadata accessor for TransferableProvider(0, &v39);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v30 - v22;
  (*(v9 + 16))(v11, v30, a4, v21);
  outlined init with copy of SharePreview<Never, Never>(v31, &v39);
  TransferableProvider.init(document:preview:)(v11, &v39, a4, v12, v12, a6, v15, v15, v23);
  type metadata accessor for NavigationDocumentBox(0, v16, &protocol witness table for TransferableProvider<A, B, C>, v24);
  (*(v17 + 16))(v19, v23, v16);
  v25 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v19);
  LOBYTE(v39) = 1;
  v26 = MEMORY[0x1E6981E70];
  v27 = MEMORY[0x1E6981E60];
  NavigationPropertiesModifier.init(provider:title:)(v25, &v39, a4, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], &v37);
  v35 = v37;
  v36 = v38;
  v39 = a4;
  v40 = v26;
  v41 = v26;
  v42 = v27;
  v43 = v27;
  v28 = type metadata accessor for NavigationPropertiesModifier(0, &v39);
  MEMORY[0x18D00A570](&v35, v33, v28, v34);

  return (*(v17 + 8))(v23, v16);
}

uint64_t outlined init with copy of SharePreview<Never, Never>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SharePreview<Never, Never>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SharePreview<Never, Never>()
{
  if (!lazy cache variable for type metadata for SharePreview<Never, Never>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E73E0];
    v4[1] = MEMORY[0x1E69E73E0];
    v4[2] = MEMORY[0x1E6965C48];
    v4[3] = MEMORY[0x1E6965C48];
    v2 = type metadata accessor for SharePreview(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for SharePreview<Never, Never>);
    }
  }
}

uint64_t View.navigationDocument<A, B>(_:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a6;
  v39 = a7;
  v40 = a1;
  v42 = a9;
  v43 = a3;
  v41 = a2;
  v49 = MEMORY[0x1E69E73E0];
  v50 = a5;
  v12 = MEMORY[0x1E69E73E0];
  v51 = MEMORY[0x1E6965C48];
  v52 = a8;
  v13 = MEMORY[0x1E6965C48];
  v38 = a8;
  v15 = type metadata accessor for SharePreview(255, &v49);
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a4;
  v50 = v12;
  v51 = a5;
  v52 = a7;
  v53 = v13;
  v54 = a8;
  v23 = type metadata accessor for TransferableProvider(0, &v49);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v38 - v29;
  (*(v19 + 16))(v22, v40, a4, v28);
  v31 = *(v15 - 8);
  (*(v31 + 16))(v18, v41, v15);
  (*(v31 + 56))(v18, 0, 1, v15);
  TransferableProvider.init(document:preview:)(v22, v18, a4, MEMORY[0x1E69E73E0], a5, v39, MEMORY[0x1E6965C48], v38, v30);
  type metadata accessor for NavigationDocumentBox(0, v23, &protocol witness table for TransferableProvider<A, B, C>, v32);
  (*(v24 + 16))(v26, v30, v23);
  v33 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v26);
  LOBYTE(v49) = 1;
  v34 = MEMORY[0x1E6981E70];
  v35 = MEMORY[0x1E6981E60];
  NavigationPropertiesModifier.init(provider:title:)(v33, &v49, a4, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], &v47);
  v45 = v47;
  v46 = v48;
  v49 = a4;
  v50 = v34;
  v51 = v34;
  v52 = v35;
  v53 = v35;
  v36 = type metadata accessor for NavigationPropertiesModifier(0, &v49);
  MEMORY[0x18D00A570](&v45, v43, v36, v44);

  return (*(v24 + 8))(v30, v23);
}

{
  v44 = a6;
  v39 = a7;
  v40 = a1;
  v42 = a9;
  v43 = a3;
  v41 = a2;
  v49 = a5;
  v50 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E73E0];
  v51 = a8;
  v52 = MEMORY[0x1E6965C48];
  v38 = a8;
  v14 = MEMORY[0x1E6965C48];
  v15 = type metadata accessor for SharePreview(255, &v49);
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a4;
  v50 = a5;
  v51 = v12;
  v52 = a7;
  v53 = a8;
  v54 = v14;
  v23 = type metadata accessor for TransferableProvider(0, &v49);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v38 - v29;
  (*(v19 + 16))(v22, v40, a4, v28);
  v31 = *(v15 - 8);
  (*(v31 + 16))(v18, v41, v15);
  (*(v31 + 56))(v18, 0, 1, v15);
  TransferableProvider.init(document:preview:)(v22, v18, a4, a5, MEMORY[0x1E69E73E0], v39, v38, MEMORY[0x1E6965C48], v30);
  type metadata accessor for NavigationDocumentBox(0, v23, &protocol witness table for TransferableProvider<A, B, C>, v32);
  (*(v24 + 16))(v26, v30, v23);
  v33 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v26);
  LOBYTE(v49) = 1;
  v34 = MEMORY[0x1E6981E70];
  v35 = MEMORY[0x1E6981E60];
  NavigationPropertiesModifier.init(provider:title:)(v33, &v49, a4, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], &v47);
  v45 = v47;
  v46 = v48;
  v49 = a4;
  v50 = v34;
  v51 = v34;
  v52 = v35;
  v53 = v35;
  v36 = type metadata accessor for NavigationPropertiesModifier(0, &v49);
  MEMORY[0x18D00A570](&v45, v43, v36, v44);

  return (*(v24 + 8))(v30, v23);
}

uint64_t View.navigationDocument<A, B, C>(_:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v47 = a7;
  v42 = a8;
  v43 = a1;
  v45 = a9;
  v46 = a3;
  v44 = a2;
  v52 = a5;
  v53 = a6;
  v39 = a5;
  v40 = a6;
  v54 = a10;
  v55 = a11;
  v41 = a11;
  v15 = type metadata accessor for SharePreview(255, &v52);
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v55 = a8;
  v56 = a10;
  v57 = a11;
  v23 = type metadata accessor for TransferableProvider(0, &v52);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v38 - v29;
  (*(v19 + 16))(v22, v43, a4, v28);
  v31 = *(v15 - 8);
  (*(v31 + 16))(v18, v44, v15);
  (*(v31 + 56))(v18, 0, 1, v15);
  TransferableProvider.init(document:preview:)(v22, v18, a4, v39, v40, v42, a10, v41, v30);
  type metadata accessor for NavigationDocumentBox(0, v23, &protocol witness table for TransferableProvider<A, B, C>, v32);
  (*(v24 + 16))(v26, v30, v23);
  v33 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v26);
  LOBYTE(v52) = 1;
  v34 = MEMORY[0x1E6981E70];
  v35 = MEMORY[0x1E6981E60];
  NavigationPropertiesModifier.init(provider:title:)(v33, &v52, a4, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], &v50);
  v48 = v50;
  v49 = v51;
  v52 = a4;
  v53 = v34;
  v54 = v34;
  v55 = v35;
  v56 = v35;
  v36 = type metadata accessor for NavigationPropertiesModifier(0, &v52);
  MEMORY[0x18D00A570](&v48, v46, v36, v47);

  return (*(v24 + 8))(v30, v23);
}

double View.navigationDocument(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLProvider(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  type metadata accessor for NavigationDocumentBox<URLProvider>(0);
  v10 = swift_allocObject();
  outlined init with take of URLProvider(v8, v10 + *(*v10 + 112));
  v13 = v10;
  v14 = 1;
  type metadata accessor for NavigationPropertiesModifier<URL, EmptyView, EmptyView>(0);
  MEMORY[0x18D00A570](&v13, a2, v11, a3);

  return result;
}

uint64_t type metadata accessor for URLProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for URLProvider;
  if (!type metadata singleton initialization cache for URLProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for NavigationDocumentBox<URLProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationDocumentBox<URLProvider>)
  {
    v2 = type metadata accessor for URLProvider(255);
    v4 = type metadata accessor for NavigationDocumentBox(a1, v2, &protocol witness table for URLProvider, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NavigationDocumentBox<URLProvider>);
    }
  }
}

uint64_t outlined init with take of URLProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for NavigationPropertiesModifier<URL, EmptyView, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationPropertiesModifier<URL, EmptyView, EmptyView>)
  {
    v4[0] = type metadata accessor for URL();
    v4[1] = MEMORY[0x1E6981E70];
    v4[2] = MEMORY[0x1E6981E70];
    v4[3] = MEMORY[0x1E6981E60];
    v4[4] = MEMORY[0x1E6981E60];
    v2 = type metadata accessor for NavigationPropertiesModifier(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for NavigationPropertiesModifier<URL, EmptyView, EmptyView>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for URLProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t initializeWithCopy for URLProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for URLProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for URLProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for URLProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata completion function for URLProvider(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for TransferableProvider(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 48);
    v6[0] = *(a1 + 24);
    v6[1] = v4;
    type metadata accessor for SharePreview(255, v6);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TransferableProvider(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = a3[4];
  v7 = *(a3[3] - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v9;
  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = v9 | v13 | 7;
  v15 = *(v7 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = v12 - 1;
  if (!v12)
  {
    v17 = 0;
  }

  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v7 + 64);
  if (v15)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = (v21 + v13 + ((v9 + 64) & ~v9)) & ~v13;
  if (v12)
  {
    v23 = *(*(v6 - 8) + 64);
  }

  else
  {
    v23 = *(*(v6 - 8) + 64) + 1;
  }

  v24 = v22 + v23;
  v25 = v22 + v23 + ((v14 + v5) & ~v14);
  v26 = v14 | *(v4 + 80);
  v27 = (*(v11 + 80) | v9 | *(v4 + 80)) & 0x100000;
  if (v26 != 7 || v27 != 0 || v25 > 0x18)
  {
    v30 = *a2;
    *a1 = *a2;
    v31 = v30 + ((v26 + 16) & ~v26);

    return v31;
  }

  v51 = v23;
  __n = v24;
  v55 = a3[3];
  v56 = v21 + v13;
  v54 = v8;
  v58 = *(v6 - 8);
  v59 = a3[4];
  v57 = ~v13;
  v32 = a1;
  (*(v4 + 16))(a1);
  v60 = v32;
  v34 = ((v32 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v53 = ~v10;
  if (v18 <= 0x7FFFFFFE)
  {
    v36 = *(v35 + 3);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    if ((v36 + 1) < 2)
    {
      goto LABEL_37;
    }

LABEL_35:
    memcpy(v34, v35, __n);
    return v60;
  }

  v37 = (((v35 + 39) & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;
  if (v16 == v19)
  {
    if (v15 >= 2 && (*(v54 + 48))(v37, v15, v55) >= 2)
    {
      goto LABEL_35;
    }
  }

  else if ((*(v58 + 48))((v56 + v37) & v57, v12, v59) > 1)
  {
    goto LABEL_35;
  }

LABEL_37:
  v38 = *(v35 + 3);
  if (v38 < 0xFFFFFFFF)
  {
    v39 = v35[1];
    *v34 = *v35;
    v34[1] = v39;
  }

  else
  {
    *(v34 + 3) = v38;
    (**(v38 - 8))(v34, v35);
  }

  v40 = (v34 + 39) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v41 + 24) < 0xFFFFFFFFuLL)
  {
    v45 = *(v41 + 16);
    *v40 = *v41;
    *(v40 + 16) = v45;
  }

  else
  {
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    outlined copy of Text.Storage(*v41, v43, v44);
    *v40 = v42;
    *(v40 + 8) = v43;
    *(v40 + 16) = v44;
    *(v40 + 24) = *(v41 + 24);
  }

  v31 = v60;
  v46 = ((v40 + v10 + 32) & v53);
  v47 = ((v41 + v10 + 32) & v53);
  if ((*(v54 + 48))(v47, 1, v55))
  {
    memcpy(v46, v47, v21);
  }

  else
  {
    (*(v54 + 16))(v46, v47, v55);
    (*(v54 + 56))(v46, 0, 1, v55);
  }

  v48 = &v46[v56];
  v49 = &v47[v56];
  if ((*(v58 + 48))(&v47[v56] & v57, 1, v59))
  {
    memcpy((v48 & v57), (v49 & v57), v51);
  }

  else
  {
    (*(v58 + 16))(v48 & v57, v49 & v57, v59);
    (*(v58 + 56))(v48 & v57, 0, 1, v59);
  }

  return v31;
}

uint64_t destroy for TransferableProvider(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  result = (*v4)();
  v6 = *(v4 + 56);
  v8 = a2[3];
  v7 = a2[4];
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v7 - 8);
  v12 = *(v11 + 80);
  v13 = *(v9 + 84);
  v29 = v11;
  v14 = *(v11 + 84);
  v15 = *(v9 + 64);
  v16 = ((v6 + a1 + (v10 | v12 | 7)) & ~(v10 | v12 | 7));
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  v18 = v14 - 1;
  if (!v14)
  {
    v18 = 0;
  }

  if (v17 > v18)
  {
    v18 = v17;
  }

  v19 = ~v10;
  v20 = ~v12;
  if (v18 > 0x7FFFFFFE)
  {
    v22 = (v10 + ((v16 + 39) & 0xFFFFFFFFFFFFFFF8) + 32) & v19;
    if (v17 == v18)
    {
      if (v13 >= 2)
      {
        result = (*(v9 + 48))(v22, v13, v8);
        if (result >= 2)
        {
          return result;
        }
      }
    }

    else
    {
      if (v13)
      {
        v23 = *(v11 + 80);
      }

      else
      {
        v23 = v12 + 1;
      }

      result = (*(v11 + 48))((v23 + v15 + v22) & v20);
      if (result > 1)
      {
        return result;
      }
    }

    goto LABEL_20;
  }

  v21 = v16[3];
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  if ((v21 + 1) < 2)
  {
LABEL_20:
    if (v16[3] >= 0xFFFFFFFFuLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    v24 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*(v24 + 24) >= 0xFFFFFFFFuLL)
    {
      outlined consume of Text.Storage(*v24, *(v24 + 8), *(v24 + 16));
    }

    v25 = (v10 + v24 + 32) & v19;
    if (!(*(v9 + 48))(v25, 1, v8))
    {
      (*(v9 + 8))(v25, v8);
    }

    if (v13)
    {
      v26 = v12;
    }

    else
    {
      v26 = v12 + 1;
    }

    v27 = v26 + v15 + v25;
    result = (*(v29 + 48))(v27 & v20, 1, v7);
    if (!result)
    {
      v28 = *(v29 + 8);

      return v28(v27 & v20, v7);
    }
  }

  return result;
}

uint64_t initializeWithCopy for TransferableProvider(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = a3[4];
  v63 = a3[3];
  v64 = a1;
  v9 = *(v63 - 8);
  v10 = *(v8 - 8);
  v11 = *(v9 + 80);
  v12 = v10;
  v13 = *(v10 + 80);
  v14 = v11 | v13 | 7;
  v15 = v14 + v7;
  v16 = (v15 + a1) & ~v14;
  v17 = (v15 + a2) & ~v14;
  v18 = *(v9 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  v20 = *(v10 + 84);
  v21 = v20 - 1;
  if (!v20)
  {
    v21 = 0;
  }

  if (v19 > v21)
  {
    v21 = v19;
  }

  v22 = *(*(v63 - 8) + 64);
  v23 = ~v13;
  v24 = *(v10 + 64);
  if (v21 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  else
  {
    v25 = v21;
  }

  v62 = ~v11;
  if (v21 <= 0x7FFFFFFE)
  {
    v26 = *(v17 + 24);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    if ((v26 + 1) < 2)
    {
      goto LABEL_28;
    }

LABEL_18:
    v29 = ((v11 + 64) & ~v11) + v13;
    if (!v18)
    {
      ++v29;
    }

    v30 = (v29 + v22) & v23;
    if (v20)
    {
      v31 = v24;
    }

    else
    {
      v31 = v24 + 1;
    }

    v32 = v31 + v30;
    v33 = v16;
    v34 = v17;
    goto LABEL_47;
  }

  v27 = (v11 + ((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v11;
  if (v19 == v25)
  {
    if (v18 >= 2)
    {
      v58 = *(v10 + 84);
      v20 = *(v10 + 64);
      v60 = *(*(v63 - 8) + 64);
      v28 = (*(v9 + 48))(v27, v18, v63);
      v22 = v60;
      v24 = v20;
      LODWORD(v20) = v58;
      if (v28 >= 2)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (v18)
    {
      v35 = *(v10 + 80);
    }

    else
    {
      v35 = v13 + 1;
    }

    v53 = *(v8 - 8);
    v54 = *(v10 + 80);
    v36 = *(v9 + 84);
    v18 = *(v10 + 64);
    v37 = *(*(v63 - 8) + 64);
    v38 = (*(v10 + 48))((v35 + v22 + v27) & v23, v20, v8);
    v22 = v37;
    v24 = v18;
    LODWORD(v18) = v36;
    v12 = v53;
    v13 = v54;
    if (v38 > 1)
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  v39 = *(v17 + 24);
  v56 = v23;
  v57 = v8;
  v59 = v20;
  v55 = v24;
  v61 = v22;
  if (v39 < 0xFFFFFFFF)
  {
    v40 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v40;
  }

  else
  {
    *(v16 + 24) = v39;
    (**(v39 - 8))(v16, v17);
  }

  v41 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v42 + 24) < 0xFFFFFFFFuLL)
  {
    v46 = *(v42 + 16);
    *v41 = *v42;
    *(v41 + 16) = v46;
  }

  else
  {
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    outlined copy of Text.Storage(*v42, v44, v45);
    *v41 = v43;
    *(v41 + 8) = v44;
    *(v41 + 16) = v45;
    *(v41 + 24) = *(v42 + 24);
  }

  v47 = ((v11 + 32 + v41) & v62);
  v48 = ((v11 + 32 + v42) & v62);
  if ((*(v9 + 48))(v48, 1, v63))
  {
    if (v18)
    {
      v49 = v61;
    }

    else
    {
      v49 = v61 + 1;
    }

    memcpy(v47, v48, v49);
  }

  else
  {
    (*(v9 + 16))(v47, v48, v63);
    (*(v9 + 56))(v47, 0, 1, v63);
    if (v18)
    {
      v49 = v61;
    }

    else
    {
      v49 = v61 + 1;
    }
  }

  v50 = &v47[v49 + v13];
  v51 = &v48[v49 + v13];
  if (!(*(v12 + 48))(v51 & v56, 1, v57))
  {
    (*(v12 + 16))(v50 & v56, v51 & v56, v57);
    (*(v12 + 56))(v50 & v56, 0, 1, v57);
    return v64;
  }

  if (v59)
  {
    v32 = v55;
  }

  else
  {
    v32 = v55 + 1;
  }

  v33 = (v50 & v56);
  v34 = (v51 & v56);
LABEL_47:
  memcpy(v33, v34, v32);
  return v64;
}

uint64_t assignWithCopy for TransferableProvider(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v100 = a1;
  v101 = a3[3];
  v8 = *(v101 - 8);
  v9 = *(v8 + 80);
  v104 = a3[4];
  v10 = *(v104 - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v9 | v12 | 7;
  v14 = v13 + *(v6 + 40);
  v15 = (v14 + a1) & ~v13;
  v16 = (v14 + a2) & ~v13;
  v17 = *(v8 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  v102 = *(v10 + 84);
  v19 = v102 - 1;
  if (!v102)
  {
    v19 = 0;
  }

  if (v18 > v19)
  {
    v19 = v18;
  }

  v20 = (v9 + 64) & ~v9;
  v21 = *(*(v101 - 8) + 64);
  v106 = *(v10 + 80);
  v22 = ~v12;
  v99 = *(*(v104 - 8) + 64);
  if (v19 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  else
  {
    v23 = v19;
  }

  v105 = *(v8 + 84);
  v103 = ~v9;
  if (v19 <= 0x7FFFFFFE)
  {
    v24 = *(v15 + 24);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    v25 = v24 + 1;
    v26 = *(v16 + 24);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    v27 = v26 + 1;
    if (v25 < 2)
    {
      v98 = (v9 + 64) & ~v9;
      if (v27 < 2)
      {
        goto LABEL_55;
      }

      goto LABEL_31;
    }

    if (v27 < 2)
    {
LABEL_63:
      v52 = *(v16 + 24);
      if (v52 < 0xFFFFFFFF)
      {
        v53 = *(v16 + 16);
        *v15 = *v16;
        *(v15 + 16) = v53;
      }

      else
      {
        *(v15 + 24) = v52;
        (**(v52 - 8))(v15, v16);
      }

      v54 = (v15 + 39) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
      if (*(v55 + 24) < 0xFFFFFFFFuLL)
      {
        v61 = *(v55 + 16);
        *v54 = *v55;
        *(v54 + 16) = v61;
      }

      else
      {
        v56 = *v55;
        v57 = *(v55 + 8);
        v58 = v21;
        v59 = v22;
        v60 = *(v55 + 16);
        outlined copy of Text.Storage(*v55, v57, v60);
        *v54 = v56;
        *(v54 + 8) = v57;
        *(v54 + 16) = v60;
        v22 = v59;
        v21 = v58;
        *(v54 + 24) = *(v55 + 24);
      }

      v62 = ((v9 + 32 + v54) & v103);
      v63 = ((v9 + 32 + v55) & v103);
      if ((*(v8 + 48))(v63, 1, v101))
      {
        if (v105)
        {
          v64 = v21;
        }

        else
        {
          v64 = v21 + 1;
        }

        memcpy(v62, v63, v64);
      }

      else
      {
        (*(v8 + 16))(v62, v63, v101);
        (*(v8 + 56))(v62, 0, 1, v101);
        if (v105)
        {
          v64 = v21;
        }

        else
        {
          v64 = v21 + 1;
        }
      }

      v65 = &v62[v64 + v106];
      v66 = &v63[v64 + v106];
      if (!(*(v11 + 48))(v66 & v22, 1, v104))
      {
        goto LABEL_78;
      }

      goto LABEL_107;
    }

LABEL_46:
    v43 = v20 + v106;
    if (!v17)
    {
      ++v43;
    }

    v39 = v102 == 0;
    v40 = (v43 + v21) & v22;
    goto LABEL_49;
  }

  v28 = ~v12;
  v29 = v9 + 32;
  v30 = (v9 + 32 + ((v15 + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v9;
  v98 = (v9 + 64) & ~v9;
  if (v18 == v23)
  {
    if (v17 < 2)
    {
      goto LABEL_28;
    }

    v31 = (*(v8 + 48))(v30);
  }

  else
  {
    v32 = *(v10 + 80);
    if (!v17)
    {
      v32 = v12 + 1;
    }

    v31 = (*(v10 + 48))((v32 + v21 + v30) & v28, v102, v104);
  }

  v17 = v105;
  if (v31 >= 2)
  {
    v41 = (v29 + ((v16 + 39) & 0xFFFFFFFFFFFFFFF8)) & v103;
    if (v18 == v23)
    {
      v22 = v28;
      if (v105 < 2)
      {
        goto LABEL_63;
      }

      v42 = (*(v8 + 48))(v41);
      v20 = (v9 + 64) & ~v9;
      v17 = v105;
      if (v42 < 2)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v50 = v106;
      if (!v105)
      {
        v50 = v106 + 1;
      }

      v22 = v28;
      v51 = (*(v11 + 48))((v50 + v21 + v41) & v28, v102, v104);
      v17 = v105;
      v20 = (v9 + 64) & ~v9;
      if (v51 <= 1)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_46;
  }

LABEL_28:
  v33 = (v29 + ((v16 + 39) & 0xFFFFFFFFFFFFFFF8)) & v103;
  if (v18 == v23)
  {
    v22 = v28;
    if (v17 >= 2 && (*(v8 + 48))(v33, v105, v101) >= 2)
    {
LABEL_31:
      if (*(v15 + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      v34 = v22;
      v35 = (v15 + 39) & 0xFFFFFFFFFFFFFFF8;
      if (*(v35 + 24) >= 0xFFFFFFFFuLL)
      {
        outlined consume of Text.Storage(*v35, *(v35 + 8), *(v35 + 16));
      }

      v36 = (v9 + v35 + 32) & v103;
      if (!(*(v8 + 48))(v36, 1, v101))
      {
        (*(v8 + 8))(v36, v101);
      }

      if (v105)
      {
        v37 = v21;
      }

      else
      {
        v37 = v21 + 1;
      }

      v38 = v37 + v106 + v36;
      if (!(*(v11 + 48))(v38 & v34, 1, v104))
      {
        (*(v11 + 8))(v38 & v34, v104);
      }

      v39 = v102 == 0;
      v40 = (v98 + v106 + v37) & v34;
LABEL_49:
      v44 = v99;
      if (v39)
      {
        v44 = v99 + 1;
      }

      v45 = v44 + v40;
      v46 = v15;
      v47 = v16;
      goto LABEL_111;
    }
  }

  else
  {
    v48 = v106;
    if (!v17)
    {
      v48 = v106 + 1;
    }

    v22 = v28;
    if ((*(v11 + 48))((v48 + v21 + v33) & v28, v102, v104) > 1)
    {
      goto LABEL_31;
    }
  }

LABEL_55:
  v49 = *(v16 + 24);
  if (*(v15 + 24) < 0xFFFFFFFFuLL)
  {
    if (v49 >= 0xFFFFFFFF)
    {
      *(v15 + 24) = v49;
      (**(v49 - 8))(v15, v16);
      goto LABEL_81;
    }
  }

  else
  {
    if (v49 >= 0xFFFFFFFF)
    {
      __swift_assign_boxed_opaque_existential_0(v15, v16, v7);
      goto LABEL_81;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v67 = *(v16 + 16);
  *v15 = *v16;
  *(v15 + 16) = v67;
LABEL_81:
  v68 = (v15 + 39) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v70 = *(v69 + 24);
  v96 = v21;
  v97 = v22;
  if (*(v68 + 24) < 0xFFFFFFFFuLL)
  {
    if (v70 >= 0xFFFFFFFF)
    {
      v77 = *v69;
      v78 = *(v69 + 8);
      v79 = *(v69 + 16);
      outlined copy of Text.Storage(*v69, v78, v79);
      *v68 = v77;
      *(v68 + 8) = v78;
      *(v68 + 16) = v79;
      *(v68 + 24) = *(v69 + 24);

      goto LABEL_88;
    }
  }

  else
  {
    if (v70 >= 0xFFFFFFFF)
    {
      v71 = *v69;
      v72 = *(v69 + 8);
      v73 = *(v69 + 16);
      outlined copy of Text.Storage(*v69, v72, v73);
      v74 = *v68;
      v75 = *(v68 + 8);
      v76 = *(v68 + 16);
      *v68 = v71;
      *(v68 + 8) = v72;
      *(v68 + 16) = v73;
      outlined consume of Text.Storage(v74, v75, v76);
      *(v68 + 24) = *(v69 + 24);

      goto LABEL_88;
    }

    outlined consume of Text.Storage(*v68, *(v68 + 8), *(v68 + 16));
  }

  v80 = *(v69 + 16);
  *v68 = *v69;
  *(v68 + 16) = v80;
LABEL_88:
  v81 = ((v9 + 32 + v68) & v103);
  v82 = ((v9 + 32 + v69) & v103);
  v83 = *(v8 + 48);
  v84 = v83(v81, 1, v101);
  v85 = v83(v82, 1, v101);
  if (v84)
  {
    v86 = v106;
    v87 = v96;
    if (!v85)
    {
      (*(v8 + 16))(v81, v82, v101);
      (*(v8 + 56))(v81, 0, 1, v101);
LABEL_98:
      v22 = v97;
      v88 = v105;
      goto LABEL_99;
    }
  }

  else
  {
    v86 = v106;
    v87 = v96;
    if (!v85)
    {
      (*(v8 + 24))(v81, v82, v101);
      goto LABEL_98;
    }

    (*(v8 + 8))(v81, v101);
  }

  v88 = v105;
  if (v105)
  {
    v89 = v87;
  }

  else
  {
    v89 = v87 + 1;
  }

  memcpy(v81, v82, v89);
  v22 = v97;
LABEL_99:
  if (v88)
  {
    v90 = v87;
  }

  else
  {
    v90 = v87 + 1;
  }

  v91 = v90 + v86;
  v65 = &v81[v91];
  v66 = &v82[v91];
  v92 = *(v11 + 48);
  v93 = v92(&v81[v91] & v22, 1, v104);
  v94 = v92(v66 & v22, 1, v104);
  if (!v93)
  {
    if (!v94)
    {
      (*(v11 + 24))(v65 & v22, v66 & v22, v104);
      return v100;
    }

    (*(v11 + 8))(v65 & v22, v104);
    goto LABEL_107;
  }

  if (v94)
  {
LABEL_107:
    if (v102)
    {
      v45 = v99;
    }

    else
    {
      v45 = v99 + 1;
    }

    v46 = (v65 & v22);
    v47 = (v66 & v22);
LABEL_111:
    memcpy(v46, v47, v45);
    return v100;
  }

LABEL_78:
  (*(v11 + 16))(v65 & v22, v66 & v22, v104);
  (*(v11 + 56))(v65 & v22, 0, 1, v104);
  return v100;
}

uint64_t initializeWithTake for TransferableProvider(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = a3[3];
  v9 = *(v8 - 8);
  v57 = a3[4];
  v11 = *(v9 + 80);
  v12 = *(v57 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = v11 | v14 | 7;
  v16 = v15 + v7;
  v59 = a1;
  v17 = ((v16 + a1) & ~v15);
  v18 = (v16 + a2) & ~v15;
  v19 = *(v9 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = *(v12 + 84);
  v22 = v21 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  if (v20 > v22)
  {
    v22 = v20;
  }

  v23 = ~v11;
  v24 = *(*(v8 - 8) + 64);
  v25 = ~v14;
  v10 = *(v57 - 8);
  v26 = *(v10 + 64);
  if (v22 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  else
  {
    v27 = v22;
  }

  v58 = *(*(v8 - 8) + 64);
  if (v22 <= 0x7FFFFFFE)
  {
    v28 = *(v18 + 24);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    if ((v28 + 1) < 2)
    {
      goto LABEL_28;
    }

LABEL_18:
    v31 = ((v11 + 64) & ~v11) + v14;
    if (!v19)
    {
      ++v31;
    }

    v32 = (v31 + v24) & v25;
    if (v21)
    {
      v33 = v26;
    }

    else
    {
      v33 = v26 + 1;
    }

    v34 = v33 + v32;
    v35 = v17;
    v36 = v18;
    goto LABEL_41;
  }

  v29 = (v11 + ((v18 + 39) & 0xFFFFFFFFFFFFFFF8) + 32) & v23;
  if (v20 == v27)
  {
    if (v19 >= 2)
    {
      v55 = *(v12 + 84);
      v21 = v8;
      v53 = *(v10 + 64);
      v30 = (*(v9 + 48))(v29, v19, v8);
      v24 = v58;
      v26 = v53;
      v8 = v21;
      LODWORD(v21) = v55;
      if (v30 >= 2)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (v19)
    {
      v37 = *(v12 + 80);
    }

    else
    {
      v37 = v14 + 1;
    }

    v38 = (v37 + v24 + v29) & v25;
    v52 = v8;
    v39 = *(v10 + 64);
    v40 = (*(v12 + 48))(v38, v21, v57);
    v24 = v58;
    v26 = v39;
    v8 = v52;
    v25 = ~v14;
    if (v40 > 1)
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  v54 = v26;
  v56 = v21;
  v41 = *(v18 + 16);
  *v17 = *v18;
  v17[1] = v41;
  v42 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
  v44 = v43[1];
  *v42 = *v43;
  v42[1] = v44;
  v45 = ((v42 + v11 + 32) & v23);
  v46 = ((v43 + v11 + 32) & v23);
  v47 = v8;
  if ((*(v9 + 48))(v46, 1, v8))
  {
    if (v19)
    {
      v48 = v58;
    }

    else
    {
      v48 = v58 + 1;
    }

    memcpy(v45, v46, v48);
  }

  else
  {
    (*(v9 + 32))(v45, v46, v47);
    (*(v9 + 56))(v45, 0, 1, v47);
    if (v19)
    {
      v48 = v58;
    }

    else
    {
      v48 = v58 + 1;
    }
  }

  v49 = &v45[v48 + v14];
  v50 = &v46[v48 + v14];
  if (!(*(v13 + 48))(v50 & v25, 1, v57))
  {
    (*(v13 + 32))(v49 & v25, v50 & v25, v57);
    (*(v13 + 56))(v49 & v25, 0, 1, v57);
    return v59;
  }

  if (v56)
  {
    v34 = v54;
  }

  else
  {
    v34 = v54 + 1;
  }

  v35 = (v49 & v25);
  v36 = (v50 & v25);
LABEL_41:
  memcpy(v35, v36, v34);
  return v59;
}

uint64_t assignWithTake for TransferableProvider(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v89 = a3[3];
  v8 = *(v89 - 8);
  v9 = *(v8 + 80);
  v91 = a3[4];
  v10 = *(v91 - 8);
  v11 = *(v10 + 80);
  v12 = v9 | v11 | 7;
  v13 = v12 + *(v6 + 24);
  v87 = a1;
  v88 = v10;
  v14 = (v13 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  v16 = *(v8 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v90 = *(v10 + 84);
  v18 = v90 - 1;
  if (!v90)
  {
    v18 = 0;
  }

  if (v17 > v18)
  {
    v18 = v17;
  }

  v19 = ~v9;
  v20 = (v9 + 64) & ~v9;
  v7 = *(v89 - 8);
  v21 = *(v7 + 64);
  v22 = *(v10 + 80);
  v92 = ~v11;
  v86 = *(*(v91 - 8) + 64);
  if (v18 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  else
  {
    v23 = v18;
  }

  if (v18 > 0x7FFFFFFE)
  {
    v30 = v9 + 32;
    v31 = (v9 + 32 + ((v14 + 39) & 0xFFFFFFFFFFFFFFF8)) & v19;
    v84 = (v9 + 64) & ~v9;
    v85 = *(v7 + 64);
    if (v17 == v23)
    {
      if (v16 >= 2 && (*(v8 + 48))(v31, v16, v89) >= 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v16)
      {
        v42 = *(v10 + 80);
      }

      else
      {
        v42 = v11 + 1;
      }

      if ((*(v10 + 48))((v42 + v21 + v31) & v92, v90, v91) >= 2)
      {
LABEL_22:
        v32 = (v30 + ((v15 + 39) & 0xFFFFFFFFFFFFFFF8)) & v19;
        if (v17 == v23)
        {
          v21 = v85;
          if (v16 < 2)
          {
            goto LABEL_27;
          }

          v33 = (*(v8 + 48))(v32, v16, v89);
          v20 = (v9 + 64) & ~v9;
          v21 = v85;
          if (v33 < 2)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v16)
          {
            v58 = v22;
          }

          else
          {
            v58 = v22 + 1;
          }

          v59 = (*(v88 + 48))((v58 + v85 + v32) & v92, v90, v91);
          v21 = v85;
          v20 = (v9 + 64) & ~v9;
          if (v59 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_64:
        v60 = v20 + v22;
        if (!v16)
        {
          ++v60;
        }

        v48 = v90 == 0;
        v49 = (v60 + v21) & v92;
        goto LABEL_67;
      }
    }

    v43 = (v30 + ((v15 + 39) & 0xFFFFFFFFFFFFFFF8)) & v19;
    if (v17 == v23)
    {
      v28 = v22;
      v29 = v88;
      if (v16 >= 2 && (*(v8 + 48))(v43, v16, v89) >= 2)
      {
LABEL_39:
        if (*(v14 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1(v14);
        }

        v44 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
        if (*(v44 + 24) >= 0xFFFFFFFFuLL)
        {
          outlined consume of Text.Storage(*v44, *(v44 + 8), *(v44 + 16));
        }

        v45 = (v9 + v44 + 32) & v19;
        if (!(*(v8 + 48))(v45, 1, v89))
        {
          (*(v8 + 8))(v45, v89);
        }

        if (v16)
        {
          v46 = v85;
        }

        else
        {
          v46 = v85 + 1;
        }

        v47 = v46 + v28 + v45;
        if (!(*(v29 + 48))(v47 & v92, 1, v91))
        {
          (*(v29 + 8))(v47 & v92, v91);
        }

        v48 = v90 == 0;
        v49 = (v84 + v28 + v46) & v92;
LABEL_67:
        v61 = v86;
        if (v48)
        {
          v61 = v86 + 1;
        }

        v62 = v61 + v49;
        v63 = v14;
        v64 = v15;
        goto LABEL_104;
      }
    }

    else
    {
      v28 = v22;
      if (v16)
      {
        v50 = v22;
      }

      else
      {
        v50 = v22 + 1;
      }

      v29 = v88;
      if ((*(v88 + 48))((v50 + v85 + v43) & v92, v90, v91) > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_55:
    if (*(v14 + 24) >= 0xFFFFFFFFuLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    v51 = *(v15 + 16);
    *v14 = *v15;
    *(v14 + 16) = v51;
    v52 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v15 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*(v52 + 24) >= 0xFFFFFFFFuLL)
    {
      if (*(v53 + 24) >= 0xFFFFFFFFuLL)
      {
        v54 = *(v53 + 16);
        v55 = *v52;
        v56 = *(v52 + 8);
        v57 = *(v52 + 16);
        *v52 = *v53;
        *(v52 + 16) = v54;
        outlined consume of Text.Storage(v55, v56, v57);
        *(v52 + 24) = *(v53 + 24);

        goto LABEL_81;
      }

      outlined consume of Text.Storage(*v52, *(v52 + 8), *(v52 + 16));
    }

    v67 = *(v53 + 16);
    *v52 = *v53;
    *(v52 + 16) = v67;
LABEL_81:
    v68 = ((v9 + 32 + v52) & v19);
    v69 = ((v9 + 32 + v53) & v19);
    v70 = *(v8 + 48);
    v71 = v70(v68, 1, v89);
    v72 = v70(v69, 1, v89);
    if (v71)
    {
      if (!v72)
      {
        (*(v8 + 32))(v68, v69, v89);
        (*(v8 + 56))(v68, 0, 1, v89);
LABEL_91:
        v75 = v91;
        v73 = v85;
LABEL_92:
        if (v16)
        {
          v76 = v73;
        }

        else
        {
          v76 = v73 + 1;
        }

        v77 = v76 + v28;
        v78 = &v68[v77];
        v79 = &v69[v77];
        v80 = *(v29 + 48);
        v81 = v80(&v68[v77] & v92, 1, v75);
        v82 = v80(v79 & v92, 1, v75);
        if (v81)
        {
          if (!v82)
          {
            (*(v29 + 32))(v78 & v92, v79 & v92, v75);
            (*(v29 + 56))(v78 & v92, 0, 1, v75);
            return v87;
          }
        }

        else
        {
          if (!v82)
          {
            (*(v29 + 40))(v78 & v92, v79 & v92, v75);
            return v87;
          }

          (*(v29 + 8))(v78 & v92, v75);
        }

        if (v90)
        {
          v62 = v86;
        }

        else
        {
          v62 = v86 + 1;
        }

        v63 = (v78 & v92);
        v64 = (v79 & v92);
LABEL_104:
        memcpy(v63, v64, v62);
        return v87;
      }
    }

    else
    {
      if (!v72)
      {
        (*(v8 + 40))(v68, v69, v89);
        goto LABEL_91;
      }

      (*(v8 + 8))(v68, v89);
    }

    v73 = v85;
    if (v16)
    {
      v74 = v85;
    }

    else
    {
      v74 = v85 + 1;
    }

    memcpy(v68, v69, v74);
    v75 = v91;
    goto LABEL_92;
  }

  v24 = *(v14 + 24);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  v25 = v24 + 1;
  v26 = *(v15 + 24);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  v27 = v26 + 1;
  if (v25 < 2)
  {
    v84 = (v9 + 64) & ~v9;
    v85 = v21;
    v28 = *(v10 + 80);
    v29 = *(v91 - 8);
    if (v27 < 2)
    {
      goto LABEL_55;
    }

    goto LABEL_39;
  }

  if (v27 >= 2)
  {
    goto LABEL_64;
  }

LABEL_27:
  v34 = v21;
  v35 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v35;
  v36 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v38 = v37[1];
  *v36 = *v37;
  v36[1] = v38;
  v39 = ((v36 + v9 + 32) & v19);
  v40 = ((v37 + v9 + 32) & v19);
  if ((*(v8 + 48))(v40, 1, v89))
  {
    if (v16)
    {
      v41 = v34;
    }

    else
    {
      v41 = v34 + 1;
    }

    memcpy(v39, v40, v41);
  }

  else
  {
    (*(v8 + 32))(v39, v40, v89);
    (*(v8 + 56))(v39, 0, 1, v89);
    if (v16)
    {
      v41 = v34;
    }

    else
    {
      v41 = v34 + 1;
    }
  }

  v65 = &v39[v41 + v22];
  v66 = &v40[v41 + v22];
  if ((*(v88 + 48))(v66 & v92, 1, v91))
  {
    if (v90)
    {
      v62 = v86;
    }

    else
    {
      v62 = v86 + 1;
    }

    v63 = (v65 & v92);
    v64 = (v66 & v92);
    goto LABEL_104;
  }

  (*(v88 + 32))(v65 & v92, v66 & v92, v91);
  (*(v88 + 56))(v65 & v92, 0, 1, v91);
  return v87;
}

uint64_t getEnumTagSinglePayload for TransferableProvider(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3[4];
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  if (v14 - 1 <= v5)
  {
    v15 = *(v4 + 84);
  }

  else
  {
    v15 = v14 - 1;
  }

  if (v7)
  {
    v16 = *(*(a3[3] - 8) + 64);
  }

  else
  {
    v16 = *(*(a3[3] - 8) + 64) + 1;
  }

  v17 = *(v6 + 80);
  v18 = *(v10 + 80);
  if (v11)
  {
    v19 = *(*(v9 - 8) + 64);
  }

  else
  {
    v19 = *(*(v9 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v17 | v18 | 7;
  v21 = v20 + *(*(a3[2] - 8) + 64);
  v22 = v16 + v18;
  v23 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_44;
  }

  v24 = v19 + (v21 & ~v20) + ((v22 + ((v17 + 64) & ~v17)) & ~v18);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_24;
  }

  v27 = ((v23 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v27))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_44;
      }

LABEL_24:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_44;
      }

LABEL_31:
      v28 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v28 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v29 = v24;
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      else
      {
        v30 = 0;
      }

      return v15 + (v30 | v28) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_31;
    }
  }

LABEL_44:
  if (v5 < v14 - 1)
  {
    if (v13 <= 0x7FFFFFFE)
    {
      v31 = *(((a1 + v21) & ~v20) + 0x18);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      if ((v31 + 1) >= 2)
      {
        result = (v31 - 1);
        if (v31 > 1)
        {
          return result;
        }
      }

      return 0;
    }

    v34 = (v17 + ((((a1 + v21) & ~v20) + 39) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v17;
    if (v8 == v14)
    {
      if (v7 < 2)
      {
        return 0;
      }

      v35 = (*(v6 + 48))(v34);
      if (v35 < 2)
      {
        return 0;
      }
    }

    else
    {
      v35 = (*(v10 + 48))((v22 + v34) & ~v18, v11, v9);
      if (v35 < 2)
      {
        return 0;
      }
    }

    v36 = v35 != 1;
    result = v35 - 2;
    if (result != 0 && v36)
    {
      return result;
    }

    return 0;
  }

  v33 = *(v4 + 48);

  return v33();
}

void storeEnumTagSinglePayload for TransferableProvider(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[4];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  v18 = v13 - 1;
  if (!v13)
  {
    v18 = 0;
  }

  if (v10 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 - 1;
  if (v20 - 1 <= v7)
  {
    v22 = *(v6 + 84);
  }

  else
  {
    v22 = v20 - 1;
  }

  if (v9)
  {
    v23 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v23 = *(*(a4[3] - 8) + 64) + 1;
  }

  v24 = v15 | v16 | 7;
  v25 = v24 + v14;
  v26 = (v24 + v14) & ~v24;
  v27 = v23 + v16;
  if (!v13)
  {
    ++v17;
  }

  v28 = ((v27 + ((v15 + 64) & ~v15)) & ~v16) + v17;
  v29 = v28 + v26;
  v30 = a3 >= v22;
  v31 = a3 - v22;
  if (v31 != 0 && v30)
  {
    v5 = 1;
    if (v29 <= 3)
    {
      v32 = ((v31 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
      v33 = HIWORD(v32);
      if (v32 < 0x100)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v32 >= 2)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if (v33)
      {
        v5 = 4;
      }

      else
      {
        v5 = v35;
      }
    }
  }

  if (v22 < a2)
  {
    v36 = ~v22 + a2;
    if (v29 >= 4)
    {
      v37 = a1;
      bzero(a1, v29);
      a1 = v37;
      *v37 = v36;
      v38 = 1;
      if (v5 > 1)
      {
        goto LABEL_35;
      }

      goto LABEL_73;
    }

    v38 = (v36 >> (8 * v29)) + 1;
    if (v29)
    {
      v39 = v36 & ~(-1 << (8 * v29));
      v40 = a1;
      bzero(a1, v29);
      a1 = v40;
      if (v29 != 3)
      {
        if (v29 == 2)
        {
          *v40 = v39;
          if (v5 > 1)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *v40 = v36;
          if (v5 > 1)
          {
LABEL_35:
            if (v5 == 2)
            {
              *(a1 + v29) = v38;
            }

            else
            {
              *(a1 + v29) = v38;
            }

            return;
          }
        }

LABEL_73:
        if (v5)
        {
          *(a1 + v29) = v38;
        }

        return;
      }

      *v40 = v39;
      *(v40 + 2) = BYTE2(v39);
    }

    if (v5 > 1)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    *(a1 + v29) = 0;
  }

  else if (v5)
  {
    *(a1 + v29) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if (!a2)
  {
    return;
  }

LABEL_49:
  if (v7 >= v21)
  {
    v45 = *(v6 + 56);

    v45();
  }

  else
  {
    v41 = (a1 + v25) & ~v24;
    if (v21 >= a2)
    {
      if (a2 >= v20)
      {
        if (v28 <= 3)
        {
          v46 = ~(-1 << (8 * v28));
        }

        else
        {
          v46 = -1;
        }

        if (v28)
        {
          v43 = v46 & (a2 - v20);
          if (v28 <= 3)
          {
            v44 = v28;
          }

          else
          {
            v44 = 4;
          }

          bzero(((a1 + v25) & ~v24), v28);
          if (v44 <= 2)
          {
            if (v44 == 1)
            {
              goto LABEL_60;
            }

            goto LABEL_87;
          }

LABEL_88:
          if (v44 == 3)
          {
            *v41 = v43;
            *(v41 + 2) = BYTE2(v43);
          }

          else
          {
            *v41 = v43;
          }
        }
      }

      else if (v19 > 0x7FFFFFFE)
      {
        v47 = (v15 + ((v41 + 39) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v15;
        if (v10 == v20)
        {
          if (v9 >= 2)
          {
            v48 = *(v8 + 56);
            v49 = a2 + 2;

            v48(v47, v49);
          }
        }

        else
        {
          v50 = *(v12 + 56);
          v51 = (v27 + v47) & ~v16;
          v52 = a2 + 2;

          v50(v51, v52, v13, v11);
        }
      }

      else if (a2 > 0x7FFFFFFD)
      {
        *v41 = 0u;
        *(((a1 + v25) & ~v24) + 0x10) = 0u;
        *v41 = a2 - 2147483646;
      }

      else
      {
        *(((a1 + v25) & ~v24) + 0x18) = a2 + 1;
      }
    }

    else
    {
      if (v28 <= 3)
      {
        v42 = ~(-1 << (8 * v28));
      }

      else
      {
        v42 = -1;
      }

      if (v28)
      {
        v43 = v42 & (a2 - v20);
        if (v28 <= 3)
        {
          v44 = v28;
        }

        else
        {
          v44 = 4;
        }

        bzero(((a1 + v25) & ~v24), v28);
        if (v44 <= 2)
        {
          if (v44 == 1)
          {
LABEL_60:
            *v41 = v43;
            return;
          }

LABEL_87:
          *v41 = v43;
          return;
        }

        goto LABEL_88;
      }
    }
  }
}

uint64_t partial apply for implicit closure #1 in TransferableProvider.makeContent()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v10[0] = *(v1 + 1);
  v9 = *&v10[0];
  v4 = *(v1 + 3);
  v10[1] = v3;
  v10[2] = v4;
  v5 = *(type metadata accessor for TransferableProvider(0, v10) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(*(v9 - 8) + 16);

  return v7(a1, &v1[v6]);
}

uint64_t static DefaultTabViewStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v21 = a2[2];
  v22 = v7;
  v23 = a2[4];
  v24 = *(a2 + 20);
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  type metadata accessor for ResolvedTabView(255, a3, a4, a4);
  type metadata accessor for _TabViewStyleWriter<SystemTabViewStyle>(255, v9, v10, v11);
  v12 = type metadata accessor for ModifiedContent();
  v18 = v6;
  v17[0] = &type metadata for DefaultTabViewStyle;
  v17[1] = a3;
  v17[2] = &protocol witness table for DefaultTabViewStyle;
  v17[3] = a4;
  type metadata accessor for _TabViewValue(255, v17);
  type metadata accessor for _GraphValue();
  LODWORD(v17[0]) = _GraphValue.value.getter();
  v14 = type metadata accessor for DefaultTabViewStyle.Body(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for DefaultTabViewStyle.Body<A>, v14);
  _GraphValue.init<A>(_:)();
  v16[0] = &protocol witness table for ResolvedTabView<A>;
  v16[1] = &protocol witness table for _TabViewStyleWriter<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v12, v16);
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for _TabViewStyleWriter<SystemTabViewStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _TabViewStyleWriter<SystemTabViewStyle>)
  {
    v4 = type metadata accessor for _TabViewStyleWriter(0, &type metadata for SystemTabViewStyle, &protocol witness table for SystemTabViewStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _TabViewStyleWriter<SystemTabViewStyle>);
    }
  }
}

uint64_t static DefaultTabViewStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  type metadata accessor for ResolvedTabView(255, a3, a4, a4);
  type metadata accessor for _TabViewStyleWriter<SystemTabViewStyle>(255, v7, v8, v9);
  v10 = type metadata accessor for ModifiedContent();
  v16 = v6;
  v15[0] = &type metadata for DefaultTabViewStyle;
  v15[1] = a3;
  v15[2] = &protocol witness table for DefaultTabViewStyle;
  v15[3] = a4;
  type metadata accessor for _TabViewValue(255, v15);
  type metadata accessor for _GraphValue();
  LODWORD(v15[0]) = _GraphValue.value.getter();
  v12 = type metadata accessor for DefaultTabViewStyle.Body(0, a3, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for DefaultTabViewStyle.Body<A>, v12);
  _GraphValue.init<A>(_:)();
  v14[0] = &protocol witness table for ResolvedTabView<A>;
  v14[1] = &protocol witness table for _TabViewStyleWriter<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v14);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t DefaultTabViewStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for DefaultTabViewStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for DefaultTabViewStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t DefaultTabViewStyle.Body.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  v7 = type metadata accessor for TabViewStyleConfiguration(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v23[0] = &type metadata for DefaultTabViewStyle;
  v23[1] = a2;
  v23[2] = &protocol witness table for DefaultTabViewStyle;
  v23[3] = a3;
  v11 = type metadata accessor for _TabViewValue(0, v23);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  v15 = type metadata accessor for ResolvedTabView(0, a2, a3, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - v17;
  DefaultTabViewStyle.Body.base.getter(a2, a3, v13);
  (*(v8 + 32))(v10, v13, v7);
  v20 = ResolvedTabView.init(configuration:)(v10, a2, a3, v18, v19);
  View.tabViewStyle<A>(_:)(v20, v15, &type metadata for SystemTabViewStyle, &protocol witness table for ResolvedTabView<A>);
  return (*(v16 + 8))(v18, v15);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DefaultTabViewStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for ResolvedTabView(255, *(a1 + 16), *(a1 + 24), a2);
  type metadata accessor for _TabViewStyleWriter<SystemTabViewStyle>(255, v4, v5, v6);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

void key path getter for EnvironmentValues.textEditorStyle : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.textEditorStyle : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void PlainTextEditorStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TextEditorStyleConfiguration(a1, a2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>(0);
  v5 = a2 + *(v4 + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  v6 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>(0);
  v8 = (a2 + *(v7 + 36));
  *v8 = v6;
  v8[1] = closure #1 in PlainTextEditorStyle.makeBody(configuration:);
  v8[2] = 0;
}

uint64_t closure #1 in PlainTextEditorStyle.makeBody(configuration:)(uint64_t result)
{
  if (!*(result + 8))
  {
    *(result + 8) = 2;
  }

  return result;
}

void protocol witness for TextEditorStyle.makeBody(configuration:) in conformance PlainTextEditorStyle(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TextEditorStyleConfiguration(a1, a2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>(0);
  v5 = a2 + *(v4 + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  v6 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>(0);
  v8 = (a2 + *(v7 + 36));
  *v8 = v6;
  v8[1] = closure #1 in PlainTextEditorStyle.makeBody(configuration:);
  v8[2] = 0;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>);
    }
  }
}

uint64_t key path setter for EnvironmentValues.locale : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t WheelDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 1;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
  swift_storeEnumTagMultiPayload();
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t outlined init with copy of DatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment.Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t protocol witness for DatePickerStyle.makeBody(configuration:) in conformance WheelDatePickerStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 1;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
  swift_storeEnumTagMultiPayload();
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_0(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);

  return swift_storeEnumTagMultiPayload();
}

unint64_t lazy protocol witness table accessor for type UIKitDatePicker and conformance UIKitDatePicker()
{
  result = lazy protocol witness table cache variable for type UIKitDatePicker and conformance UIKitDatePicker;
  if (!lazy protocol witness table cache variable for type UIKitDatePicker and conformance UIKitDatePicker)
  {
    v3 = type metadata accessor for UIKitDatePicker(255);
    result = swift_getWitnessTable("A2\bbܿ\a", v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitDatePicker and conformance UIKitDatePicker);
  }

  return result;
}

uint64_t View.accessibilityIdentifier(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  return View.accessibility(isEnabled:body:)(a3, partial apply for closure #1 in View.accessibilityIdentifier(_:isEnabled:), v6, a4, a5);
}

uint64_t partial apply for closure #1 in View.accessibilityIdentifier(_:isEnabled:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

uint64_t closure #1 in ModifiedContent<>.accessibilityIdentifier(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a1 + 8))
  {

    AccessibilityIdentifierStorage.merge(with:)();
    v5 = a2;
    v3 = a3;
  }

  else
  {
    v5 = a2;
  }

  *a1 = v5;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
}

uint64_t TabContent.accessibilityIdentifier(_:isEnabled:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v7 = a3;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v11);

  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  TabContent.accessibility(_:isEnabled:)(v10, v7, a4, x8_0);
  return outlined destroy of AccessibilityProperties(v10);
}

uint64_t Scene.accessibilityIdentifier(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a2;
  v26 = 0;
  v22 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  v11 = 0;
  v12 = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v28);
  v10[6] = v28[6];
  v10[7] = v28[7];
  v10[8] = v28[8];
  LOBYTE(v10[9]) = v29;
  v10[2] = v28[2];
  v10[3] = v28[3];
  v10[4] = v28[4];
  v10[5] = v28[5];
  v10[0] = v28[0];
  v10[1] = v28[1];

  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  outlined init with copy of AccessibilityProperties(v27, v10);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  memcpy((v8 + 24), v10, 0x120uLL);
  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.accessibilityIdentifier(_:isEnabled:), v8, a4, a5);

  return outlined destroy of AccessibilityProperties(v27);
}

char **closure #1 in Scene.accessibilityIdentifier(_:isEnabled:)(char **result, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *result;
    v5 = *(*result + 2);
    if (v5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_11;
      }

      while (1)
      {
        v7 = 0;
        v8 = (v4 + 224);
        while (v7 < *(v4 + 2))
        {
          outlined init with copy of AccessibilityProperties(a3, v11);
          outlined init with copy of AccessibilityProperties?(v8, __src);
          if (__src[35])
          {
            memcpy(v9, __src, sizeof(v9));
            AccessibilityProperties.merge(with:)(v9);
            outlined destroy of AccessibilityProperties(v9);
          }

          ++v7;
          outlined destroy of AccessibilityProperties?(v8);
          outlined init with copy of AccessibilityProperties(v11, v8);
          result = outlined destroy of AccessibilityProperties(v11);
          *v3 = v4;
          v8 += 568;
          if (v5 == v7)
          {
            return result;
          }
        }

        __break(1u);
LABEL_11:
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }
    }
  }

  return result;
}

void type metadata accessor for AccessibilityProperties?()
{
  if (!lazy cache variable for type metadata for AccessibilityProperties?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityProperties?);
    }
  }
}

uint64_t outlined destroy of AccessibilityProperties?(uint64_t a1)
{
  type metadata accessor for AccessibilityProperties?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double View.listRowSpacing(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues.listRowSpacing : EnvironmentValues, serialized(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.listRowSpacing : EnvironmentValues, serialized(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues.listRowSpacing.modify(void *a1))()
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
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = *(v4 + 24);
  *v4 = v4[2];
  *(v4 + 8) = v6;
  return EnvironmentValues.listRowSpacing.modify;
}

void specialized implicit closure #1 in _GraphInputs.listRowSpacing.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t EnvironmentValues.listRowSpacing.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

double EnvironmentValues.listRowSpacing.setter(uint64_t a1, char a2)
{
  type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(v2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues._listRowSpacing.modify(void *a1))()
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
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = *(v4 + 24);
  *v4 = v4[2];
  *(v4 + 8) = v6;
  return EnvironmentValues._listRowSpacing.modify;
}

void EnvironmentValues.listRowSpacing.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

uint64_t getEnumTagSinglePayload for CheckmarkToggleStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for CheckmarkToggleStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t closure #1 in CheckmarkToggleStyle.defaultContent(configuration:)(uint64_t *a1)
{
  _s7SwiftUI5ColorVSgMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v2);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>(255);
    lazy protocol witness table accessor for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>)
  {
    type metadata accessor for (ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)(255);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0))
  {
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255);
    type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = MEMORY[0x1E697FC98];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    v5[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type CheckmarkAnimationPredicate and conformance CheckmarkAnimationPredicate();
    v5[1] = &protocol witness table for _SymbolEffectModifier;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CheckmarkAnimationPredicate and conformance CheckmarkAnimationPredicate()
{
  result = lazy protocol witness table cache variable for type CheckmarkAnimationPredicate and conformance CheckmarkAnimationPredicate;
  if (!lazy protocol witness table cache variable for type CheckmarkAnimationPredicate and conformance CheckmarkAnimationPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CheckmarkAnimationPredicate, &unk_1EFFF1C68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CheckmarkAnimationPredicate and conformance CheckmarkAnimationPredicate);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>)
  {
    _s7SwiftUI5ColorVSgMaTm_1(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E69808E8]);
    type metadata accessor for Button<ToggleStyleConfiguration.Label>(255, v1, v2, v3);
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>(255);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>);
    }
  }
}

void type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>, lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>> and conformance HStack<A>);
    v6 = type metadata accessor for Button(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>);
    }
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance CheckmarkAnimationPredicate(__int128 *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static CheckmarkAnimationPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a2@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a2 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a3 = result;
  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

void type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>(255);
    _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_2(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ToggleStyleConfiguration.Label> and conformance Button<A>, type metadata accessor for Button<ToggleStyleConfiguration.Label>, protocol conformance descriptor for Button<A>);
    v5[2] = lazy protocol witness table accessor for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>, protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t specialized static CheckmarkAnimationPredicate.evaluate(inputs:)(__int128 *a1)
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0 || (_GraphInputs.interfaceIdiom.getter(), (AnyInterfaceIdiom.accepts<A>(_:)()))
  {
    if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
    {
      v1 = 1;
    }

    else
    {
      v1 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t getEnumTagSinglePayload for ToolbarRemovingModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t static ToolbarRemovingModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t *a2, void (*a3)(void *, uint64_t *))
{
  v4 = *a2;
  v5 = *(a2 + 3);
  v20 = *(a2 + 1);
  v21 = v5;
  v6 = a2[6];
  v22 = a2[5];
  v7 = *(a2 + 14);
  v18 = *(a2 + 60);
  v19 = *(a2 + 76);
  type metadata accessor for _GraphValue<ToolbarRemovingModifier>(0, &lazy cache variable for type metadata for _GraphValue<ToolbarRemovingModifier>, &type metadata for ToolbarRemovingModifier, MEMORY[0x1E697DDB8]);
  type metadata accessor for _GraphValue<ToolbarRemovingModifier>(0, &lazy cache variable for type metadata for ToolbarDefaultItemKind?, &type metadata for ToolbarDefaultItemKind, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  v8 = PropertyList.subscript.getter();
  v10 = v4;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v6;
  v15 = v7;
  v16 = v18;
  v17 = v19;
  a3(v8, &v10);
  v10 = v6;
  LODWORD(v11) = v7;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  v10 = v6;
  LODWORD(v11) = v7;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static ToolbarRemovingModifier._makeView(modifier:inputs:body:)(uint64_t a1, int a2)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type ToolbarRemovingModifier.ToolbarDefaultItemRemover and conformance ToolbarRemovingModifier.ToolbarDefaultItemRemover();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t implicit closure #2 in static ToolbarRemovingModifier._makeView(modifier:inputs:body:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type ToolbarRemovingModifier.TitleRemover and conformance ToolbarRemovingModifier.TitleRemover();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t closure #1 in ToolbarRemovingModifier.ToolbarDefaultItemRemover.value.getter(uint64_t result, unsigned __int8 a2, unsigned __int8 a3)
{
  if (a2 != 5)
  {
    if (a2 | a3)
    {
      if (a2 != 2)
      {
        return result;
      }

      v3 = &v6;
      v4 = 2;
    }

    else
    {
      v3 = &v5;
      v4 = 0;
    }

    return specialized Set._Variant.insert(_:)(v3, v4);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarRemovingModifier.ToolbarDefaultItemRemover@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  type metadata accessor for _GraphValue<ToolbarRemovingModifier>(0, &lazy cache variable for type metadata for ToolbarDefaultItemKind?, &type metadata for ToolbarDefaultItemKind, MEMORY[0x1E69E6720]);
  v3 = *AGGraphGetValue();
  type metadata accessor for _GraphValue<ToolbarRemovingModifier>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, v2);
  WeakValue = AGGraphGetWeakValue();
  v5 = 6;
  if (WeakValue)
  {
    v6 = *(WeakValue + 8);
    if (v6 == 6)
    {
      v5 = 6;
    }

    else
    {
      v5 = v6;
    }
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 17) = v5;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ToolbarRemovingModifier.ToolbarDefaultItemRemover.value.getter;
  *(result + 24) = v7;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

uint64_t closure #1 in ToolbarRemovingModifier.TitleRemover.value.getter(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    if (*(result + 24) == 1)
    {
      v8 = v2;
      v9 = v3;
      v4 = *(result + 16);
      v6[0] = *result;
      v6[1] = v4;
      v7[0] = *(result + 32);
      *(v7 + 9) = *(result + 41);
      v5 = result;
      result = outlined destroy of NavigationTitleStorage?(v6);
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 1;
      *(v5 + 40) = 5;
      *(v5 + 48) = 0;
      *(v5 + 56) = 2;
    }

    else
    {
      *(result + 56) = 2;
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarRemovingModifier.TitleRemover@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  type metadata accessor for _GraphValue<ToolbarRemovingModifier>(0, &lazy cache variable for type metadata for ToolbarDefaultItemKind?, &type metadata for ToolbarDefaultItemKind, MEMORY[0x1E69E6720]);
  v2 = *AGGraphGetValue();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ToolbarRemovingModifier.TitleRemover.value.getter;
  *(result + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarRemovingModifier.TitleRemover and conformance ToolbarRemovingModifier.TitleRemover()
{
  result = lazy protocol witness table cache variable for type ToolbarRemovingModifier.TitleRemover and conformance ToolbarRemovingModifier.TitleRemover;
  if (!lazy protocol witness table cache variable for type ToolbarRemovingModifier.TitleRemover and conformance ToolbarRemovingModifier.TitleRemover)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarRemovingModifier.TitleRemover, &unk_1EFFF1E28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarRemovingModifier.TitleRemover and conformance ToolbarRemovingModifier.TitleRemover);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarRemovingModifier.ToolbarDefaultItemRemover and conformance ToolbarRemovingModifier.ToolbarDefaultItemRemover()
{
  result = lazy protocol witness table cache variable for type ToolbarRemovingModifier.ToolbarDefaultItemRemover and conformance ToolbarRemovingModifier.ToolbarDefaultItemRemover;
  if (!lazy protocol witness table cache variable for type ToolbarRemovingModifier.ToolbarDefaultItemRemover and conformance ToolbarRemovingModifier.ToolbarDefaultItemRemover)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarRemovingModifier.ToolbarDefaultItemRemover, &unk_1EFFF1E00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarRemovingModifier.ToolbarDefaultItemRemover and conformance ToolbarRemovingModifier.ToolbarDefaultItemRemover);
  }

  return result;
}

uint64_t SafeAreaBarModifier.localCollectorBox.getter()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>(0, &lazy cache variable for type metadata for LazyState<CollectorInteractionBox>, type metadata accessor for CollectorInteractionBox, MEMORY[0x1E6981E98]);
  LazyState.wrappedValue.getter();
  return v1;
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of SafeAreaBarModifier._localCollectorBox()
{
  type metadata accessor for CollectorInteractionBox(0);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  return v0;
}

uint64_t SafeAreaBarModifier.resolvedCollectorBox.getter()
{
  result = specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24));
  if (!result)
  {

    return SafeAreaBarModifier.localCollectorBox.getter();
  }

  return result;
}

BOOL SafeAreaBarModifier.interactionID.getter()
{
  v1 = specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24));
  if (v1)
  {
  }

  return v1 == 0;
}

uint64_t SafeAreaBarModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  swift_getWitnessTable(protocol conformance descriptor for SafeAreaBarModifier<A>);
  v5 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>(255);
  v54 = v5;
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>, &type metadata for ScrollPocketCollectorInteractionRepresentable, &protocol witness table for ScrollPocketCollectorInteractionRepresentable, type metadata accessor for CoreInteractionRepresentableAdaptor);
  v8 = v7;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v79[0] = WitnessTable;
  v79[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>, MEMORY[0x1E6980A18]);
  v9 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v79);
  v11 = lazy protocol witness table accessor for type CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>();
  v57 = v6;
  v73 = v6;
  v74 = v8;
  v63 = v8;
  v75 = MEMORY[0x1E69E6370];
  v76 = v10;
  v60 = v10;
  v59 = v11;
  v77 = v11;
  v78 = MEMORY[0x1E69E6380];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v58 = &v47 - v13;
  v14 = *(a1 + 16);
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ColorScheme>, MEMORY[0x1E697DBD8], MEMORY[0x1E6980B20]);
  v56 = v14;
  v15 = type metadata accessor for ModifiedContent();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable>, &unk_1EFFF1EA8, &protocol witness table for ScrollPocketBarInteractionRepresentable, type metadata accessor for CoreInteractionRepresentableAdaptor);
  v17 = v16;
  v18 = *(a1 + 24);
  v19 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>();
  v55 = v18;
  v72[0] = v18;
  v72[1] = v19;
  v20 = swift_getWitnessTable(v9, v15, v72);
  v21 = lazy protocol witness table accessor for type CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>();
  v73 = v15;
  v74 = v17;
  v75 = v20;
  v76 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>, MEMORY[0x1E6980A98], MEMORY[0x1E6980A90], MEMORY[0x1E697FD28]);
  v22 = type metadata accessor for ModifiedContent();
  v73 = v15;
  v74 = v17;
  v75 = v20;
  v76 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ShouldAttachScrollEdgeEffect = lazy protocol witness table accessor for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>();
  v71[0] = OpaqueTypeConformance2;
  v71[1] = ShouldAttachScrollEdgeEffect;
  v25 = swift_getWitnessTable(v9, v22, v71);
  v51 = v22;
  v47 = v25;
  v26 = type metadata accessor for _InsetViewModifier();
  v62 = OpaqueTypeMetadata2;
  v48 = v26;
  v27 = type metadata accessor for ModifiedContent();
  v52 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v49 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v50 = &v47 - v30;
  swift_getKeyPath();
  v69 = SafeAreaBarModifier.resolvedCollectorBox.getter();
  swift_checkMetadataState();
  View.environment<A>(_:_:)();

  v69 = v73;
  v70 = v74;
  v31 = specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24));
  if (v31)
  {
  }

  v32 = SafeAreaBarModifier.resolvedCollectorBox.getter();
  v67[0] = v31 == 0;
  v68 = v32;
  v66 = SafeAreaBarModifier.interactionID.getter();
  v33 = swift_checkMetadataState();
  v34 = v58;
  v35 = v60;
  View.arrayInteractionRepresentable<A, B>(_:id:)(v67, &v66, v33, &type metadata for ScrollPocketCollectorInteractionRepresentable, MEMORY[0x1E69E6370], v60, &protocol witness table for ScrollPocketCollectorInteractionRepresentable, MEMORY[0x1E69E6380]);

  v57 = &v47;
  MEMORY[0x1EEE9AC00](v36);
  v37 = v55;
  *(&v47 - 4) = v56;
  *(&v47 - 3) = v37;
  v73 = v33;
  v74 = v63;
  v75 = MEMORY[0x1E69E6370];
  v76 = v35;
  v77 = v59;
  v78 = MEMORY[0x1E69E6380];
  v38 = swift_getOpaqueTypeConformance2();
  v45 = v38;
  v46 = v47;
  v39 = v49;
  v40 = v62;
  View.safeAreaInset<A>(edge:spacing:alignmentKey:content:)();
  (*(v61 + 8))(v34, v40);
  v41 = swift_getWitnessTable(MEMORY[0x1E697F598], v48);
  v65[0] = v38;
  v65[1] = v41;
  swift_getWitnessTable(MEMORY[0x1E697E858], v27, v65);
  v42 = v50;
  static ViewBuilder.buildExpression<A>(_:)();
  v43 = *(v52 + 8);
  v43(v39, v27);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v43)(v42, v27);
}

uint64_t EnvironmentValues.collectorInteractionBox.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox>, &unk_1EFFF1FA8, &protocol witness table for EnvironmentValues.__Key_collectorInteractionBox, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox>, &unk_1EFFF1FA8, &protocol witness table for EnvironmentValues.__Key_collectorInteractionBox, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.collectorInteractionBox : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox>, &unk_1EFFF1FA8, &protocol witness table for EnvironmentValues.__Key_collectorInteractionBox, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox>, &unk_1EFFF1FA8, &protocol witness table for EnvironmentValues.__Key_collectorInteractionBox, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.collectorInteractionBox : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox>, &unk_1EFFF1FA8, &protocol witness table for EnvironmentValues.__Key_collectorInteractionBox, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t closure #1 in SafeAreaBarModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ColorScheme>, MEMORY[0x1E697DBD8], MEMORY[0x1E6980B20]);
  v36[2] = a2;
  v7 = type metadata accessor for ModifiedContent();
  v42 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - v8;
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable>, &unk_1EFFF1EA8, &protocol witness table for ScrollPocketBarInteractionRepresentable, type metadata accessor for CoreInteractionRepresentableAdaptor);
  v11 = v10;
  v47 = v10;
  v12 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>();
  v58[0] = a3;
  v58[1] = v12;
  v36[1] = a3;
  v50 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v58);
  v41 = WitnessTable;
  v14 = lazy protocol witness table accessor for type CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>();
  v54 = v7;
  v55 = v11;
  v56 = WitnessTable;
  v57 = v14;
  v45 = MEMORY[0x1E69813E0];
  v46 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v38 = v36 - v15;
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>, MEMORY[0x1E6980A98], MEMORY[0x1E6980A90], MEMORY[0x1E697FD28]);
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  v43 = v16;
  v44 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v37 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v40 = v36 - v20;
  type metadata accessor for SafeAreaBarModifier(0, a2, a3, v21);
  swift_getKeyPath();
  v22 = *(a1 + 72);
  v54 = *(a1 + 64);
  v23 = v54;
  v55 = v22;
  type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>(0, &lazy cache variable for type metadata for State<ColorSchemeBox>, type metadata accessor for ColorSchemeBox, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  View.transformEnvironment<A>(_:transform:)();

  v24 = SafeAreaBarModifier.resolvedCollectorBox.getter();
  LOBYTE(WitnessTable) = *(a1 + 80);
  specialized Environment.wrappedValue.getter(*a1, *(a1 + 8), &v53);
  LOBYTE(a1) = v53;
  v52[2] = v23;
  v52[3] = v22;
  State.wrappedValue.getter();
  v54 = v24;
  LOBYTE(v55) = WitnessTable;
  BYTE1(v55) = a1;
  v25 = v38;
  v26 = v42;
  v27 = v41;
  View.interactionRepresentable<A>(_:)(&v54, v42, &unk_1EFFF1EA8, v41);

  (*(v49 + 8))(v9, v26);
  v54 = v26;
  v55 = v47;
  v56 = v27;
  v57 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v37;
  v30 = OpaqueTypeMetadata2;
  View.input<A>(_:)();
  (*(v48 + 8))(v25, v30);
  ShouldAttachScrollEdgeEffect = lazy protocol witness table accessor for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>();
  v52[0] = OpaqueTypeConformance2;
  v52[1] = ShouldAttachScrollEdgeEffect;
  v32 = v43;
  swift_getWitnessTable(v50, v43, v52);
  v33 = v40;
  static ViewBuilder.buildExpression<A>(_:)();
  v34 = *(v44 + 8);
  v34(v29, v32);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v34)(v33, v32);
}

void closure #1 in closure #1 in SafeAreaBarModifier.body(content:)(_BYTE *a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ColorSchemeBox and conformance ColorSchemeBox, type metadata accessor for ColorSchemeBox, protocol conformance descriptor for ColorSchemeBox);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a2 + 16);
  if (v4 == 2)
  {
    LOBYTE(v4) = *a1;
  }

  *a1 = v4 & 1;
}

uint64_t SafeAreaBarModifier.init(layoutDirection:envCollectorBox:localCollectorBox:edge:alignmentKey:spacing:secondary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a1 + 8);
  *a9 = *a1;
  *(a9 + 8) = v19;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3 & 1;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(a9 + 32) = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?);
  *(a9 + 40) = v20;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  type metadata accessor for ColorSchemeBox(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 2;
  ObservationRegistrar.init()();
  *(a9 + 64) = v21;
  *(a9 + 72) = 0;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = a10 & 1;
  v23 = type metadata accessor for SafeAreaBarModifier(0, a12, a13, v22);
  v24 = *(*(a12 - 8) + 32);
  v25 = a9 + *(v23 + 60);

  return v24(v25, a11, a12);
}

uint64_t CollectorInteractionBox.collectorInteraction.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type CollectorInteractionBox and conformance CollectorInteractionBox, type metadata accessor for CollectorInteractionBox, protocol conformance descriptor for CollectorInteractionBox);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t key path getter for CollectorInteractionBox.collectorInteraction : CollectorInteractionBox@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type CollectorInteractionBox and conformance CollectorInteractionBox, type metadata accessor for CollectorInteractionBox, protocol conformance descriptor for CollectorInteractionBox);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void CollectorInteractionBox.collectorInteraction.setter(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type CollectorInteractionBox and conformance CollectorInteractionBox, type metadata accessor for CollectorInteractionBox, protocol conformance descriptor for CollectorInteractionBox);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UIScrollPocketCollectorInteraction, 0x1E69DD6B8);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

double CollectorInteractionBox.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);
  v1 = OBJC_IVAR____TtC7SwiftUI23CollectorInteractionBox___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

char *protocol witness for _UIInteractionRepresentable.makeUIInteraction() in conformance ScrollPocketBarInteractionRepresentable()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  objc_allocWithZone(type metadata accessor for ScrollPocketBarInteraction());

  return ScrollPocketBarInteraction.init(representable:)(&v6);
}

double protocol witness for _UIInteractionRepresentable.updateUIInteraction(_:) in conformance ScrollPocketBarInteractionRepresentable(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = v1[2];
  v7 = a1 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable;
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 9) = v5;
  *(v7 + 16) = v6;

  return ScrollPocketBarInteraction.representable.didset();
}

double ScrollPocketBarInteraction.representable.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_containerInteraction);
  v2 = v0 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable;
  v3 = 4;
  v4 = 8;
  if (*(v2 + 9))
  {
    v4 = 2;
  }

  if (*(v2 + 8) != 2)
  {
    v3 = v4;
  }

  v5 = 2;
  if (*(v2 + 9))
  {
    v5 = 8;
  }

  if (!*(v2 + 8))
  {
    v5 = 1;
  }

  if (*(v2 + 8) <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  [v1 _setEdge_];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type CollectorInteractionBox and conformance CollectorInteractionBox, type metadata accessor for CollectorInteractionBox, protocol conformance descriptor for CollectorInteractionBox);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [v1 _setCollectorInteraction_];
  }

  return ScrollPocketBarInteraction.updateStyleChangeRegistration()();
}

char *ScrollPocketBarInteraction.init(representable:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = a1[2];
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_changeRegistration] = 0;
  v6 = &v1[OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable];
  *v6 = v2;
  v6[8] = v3;
  v6[9] = v4;
  *(v6 + 2) = v5;
  v7 = 1;
  v8 = 4;
  v9 = 8;
  if (v4)
  {
    v9 = 2;
  }

  if (v3 != 2)
  {
    v8 = v9;
  }

  v10 = 2;
  if (v4)
  {
    v10 = 8;
  }

  if (v3)
  {
    v7 = v10;
  }

  if (v3 <= 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69DD6C0]) initWithEdge_];
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_containerInteraction] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_barElementInteraction] = v13;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ScrollPocketBarInteraction();
  v14 = objc_msgSendSuper2(&v20, sel_init);
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type CollectorInteractionBox and conformance CollectorInteractionBox, type metadata accessor for CollectorInteractionBox, protocol conformance descriptor for CollectorInteractionBox);
  v15 = v14;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(v15 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_containerInteraction);
    v18 = Strong;
    [v17 _setCollectorInteraction_];
  }

  else
  {
  }

  return v15;
}

double ScrollPocketBarInteraction.didMove(to:)(id a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 addInteraction_];
    [a1 addInteraction_];
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UITraitDefinition.Type>, type metadata accessor for UITraitDefinition.Type, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    v7 = type metadata accessor for UITraitUserInterfaceStyle();
    v8 = MEMORY[0x1E69DC0F8];
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    v9 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable);
    v10 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable + 8);
    v11 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable + 9);
    v12 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 25) = v11;
    *(v13 + 32) = v12;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);

    v14 = UIView.registerForTraitChanges<A>(_:handler:)();
  }

  else
  {
    v14 = 0;
  }

  *(v2 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_changeRegistration) = v14;

  swift_unknownObjectRelease();
  return result;
}

double ScrollPocketBarInteraction.updateStyleChangeRegistration()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UITraitDefinition.Type>, type metadata accessor for UITraitDefinition.Type, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD63400;
    v5 = type metadata accessor for UITraitUserInterfaceStyle();
    v6 = MEMORY[0x1E69DC0F8];
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable);
    v8 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable + 8);
    v9 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable + 9);
    v10 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_representable + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    *(v11 + 25) = v9;
    *(v11 + 32) = v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);

    v12 = UIView.registerForTraitChanges<A>(_:handler:)();
  }

  else
  {
    v12 = 0;
  }

  *(v1 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_changeRegistration) = v12;

  swift_unknownObjectRelease();
  return result;
}

double closure #1 in ScrollPocketBarInteraction.updateStyleChangeRegistration()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [a1 traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * (v7 != 1);
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ColorSchemeBox and conformance ColorSchemeBox, type metadata accessor for ColorSchemeBox, protocol conformance descriptor for ColorSchemeBox);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a5 + 16);
  if (v10 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (v8 == 2 || ((v10 ^ v8) & 1) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

id ScrollPocketBarInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollPocketBarInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ColorSchemeBox.colorScheme.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ColorSchemeBox and conformance ColorSchemeBox, type metadata accessor for ColorSchemeBox, protocol conformance descriptor for ColorSchemeBox);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 16);
}

void key path getter for ColorSchemeBox.colorScheme : ColorSchemeBox(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ColorSchemeBox and conformance ColorSchemeBox, type metadata accessor for ColorSchemeBox, protocol conformance descriptor for ColorSchemeBox);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

double ColorSchemeBox.colorScheme.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (v3 != 2)
  {
    if (v2 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = v2;
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ColorSchemeBox and conformance ColorSchemeBox, type metadata accessor for ColorSchemeBox, protocol conformance descriptor for ColorSchemeBox);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double ColorSchemeBox.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C414ColorSchemeBox___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for UIArrayInteractionRepresentable.makeUIInteractions() in conformance ScrollPocketCollectorInteractionRepresentable()
{
  if (*v0 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E69DD6B8]) init];
  v2 = v1;
  CollectorInteractionBox.collectorInteraction.setter(v1);
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18CD69590;
  *(result + 32) = v2;
  return result;
}

uint64_t View.safeAreaBar<A>(edge:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(__n128)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v31 = a6;
  v27 = a5;
  v29 = a2;
  v30 = a8;
  v13 = a1;
  v28 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SafeAreaBarModifier(0, v17, a10, v16);
  v19 = *(v18 - 8);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - v21;
  v23 = 2 * (v13 & 1);
  if (a4)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  v27(v20);
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v25 = swift_getKeyPath();
  SafeAreaBarModifier.init(layoutDirection:envCollectorBox:localCollectorBox:edge:alignmentKey:spacing:secondary:)(&KeyPath, v25, 0, implicit closure #2 in implicit closure #1 in variable initialization expression of SafeAreaBarModifier._localCollectorBox, 0, v23, v29, v24, v22, 0, v15, a7, a10);
  MEMORY[0x18D00A570](v22, v31, v18, v28);
  return (*(v19 + 8))(v22, v18);
}

{
  v32 = a6;
  v30 = a2;
  v31 = a8;
  v28 = a1;
  v29 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for SafeAreaBarModifier(0, v17, a10, v16);
  v19 = *(v18 - 8);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27[-v21];
  if (a4)
  {
    v23 = 0;
  }

  else
  {
    v23 = a3;
  }

  a5(v20);
  KeyPath = swift_getKeyPath();
  v34 = 0;
  v24 = swift_getKeyPath();
  if (v28)
  {
    v25 = 3;
  }

  else
  {
    v25 = 1;
  }

  SafeAreaBarModifier.init(layoutDirection:envCollectorBox:localCollectorBox:edge:alignmentKey:spacing:secondary:)(&KeyPath, v24, 0, implicit closure #2 in implicit closure #1 in variable initialization expression of SafeAreaBarModifier._localCollectorBox, 0, v25, v30, v23, v22, 0, v15, a7, a10);
  MEMORY[0x18D00A570](v22, v32, v18, v29);
  return (*(v19 + 8))(v22, v18);
}

uint64_t View.bar_v1<A>(edge:alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return View.bar_v1<A>(edge:alignment:spacing:content:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in View.bar_v1<A>(edge:alignment:spacing:content:), View.safeAreaBar<A>(edge:alignment:spacing:content:));
}

{
  return View.bar_v1<A>(edge:alignment:spacing:content:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in View.bar_v1<A>(edge:alignment:spacing:content:), View.safeAreaBar<A>(edge:alignment:spacing:content:));
}

uint64_t View.bar_v1<A>(edge:alignment:spacing:content:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void, uint64_t, uint64_t, void, uint64_t, _BYTE *))
{
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v18 = a5;
  v19 = a6;
  return a12(a1 & 1, a2, a3, a4 & 1, a11, v13);
}

uint64_t closure #1 in View.bar_v1<A>(edge:alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

double specialized ScrollPocketBarInteraction.willMove(to:)()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_containerInteraction);
    v4 = Strong;
    [Strong removeInteraction_];
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v7 = v5;
    [v5 removeInteraction_];
  }

  v8 = OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_changeRegistration;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction_changeRegistration))
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = swift_unknownObjectRetain();
      MEMORY[0x18D00E080](v11);

      swift_unknownObjectRelease();
    }

    *(v1 + v8) = 0;

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollPocketBarInteractionRepresentable(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = a2[2];

  return a1;
}

uint64_t assignWithCopy for ScrollPocketBarInteractionRepresentable(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = a2[2];

  return a1;
}

uint64_t assignWithTake for ScrollPocketBarInteractionRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t type metadata completion function for SafeAreaBarModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SafeAreaBarModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-106 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = a2;
    outlined copy of Environment<Bool>.Content();
    *a1 = v10;
    *(a1 + 8) = v11;
    v13 = a1 & 0xFFFFFFFFFFFFFFF8;
    v14 = v12 & 0xFFFFFFFFFFFFFFF8;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 16);
    v16 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 24);
    outlined copy of Environment<Color?>.Content(v15);
    *(v13 + 16) = v15;
    *(v13 + 24) = v16;
    v17 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 32);
    v18 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 40);
    LOBYTE(v12) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 48);
    outlined copy of LazyState<CollectorInteractionBox>.Storage(*(v14 + 32), *(v14 + 40), *(v14 + 48));
    *(v13 + 32) = v17;
    *(v13 + 40) = v18;
    *(v13 + 48) = v12;
    *(v13 + 56) = *(v14 + 56);
    v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v14 + 71) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    *(v19 + 16) = *(v20 + 16);
    v21 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v14 + 95) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *v23 = v25;
    v26 = v23 + v6 + 9;
    v27 = v24 + v6 + 9;
    v28 = *(v5 + 16);

    v28(v26 & ~v6, v27 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for SafeAreaBarModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Color?>.Content(*(v3 + 16));
  outlined consume of LazyState<CollectorInteractionBox>.Storage();

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (((((v3 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 9) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for SafeAreaBarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = a1 & 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v9 + 24);
  outlined copy of Environment<Color?>.Content(v10);
  *(v8 + 16) = v10;
  *(v8 + 24) = v6;
  v11 = *(v9 + 32);
  v12 = *(v9 + 40);
  v13 = *(v9 + 48);
  outlined copy of LazyState<CollectorInteractionBox>.Storage(v11, v12, v13);
  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  *(v8 + 48) = v13;
  *(v8 + 56) = *(v9 + 56);
  v14 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v9 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);
  v16 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v9 + 95) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  *(v18 + 8) = *(v19 + 8);
  *v18 = v20;
  v21 = *(a3 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v24 = *(v22 + 80);
  v25 = v24 + 9 + v18;
  v26 = v24 + 9 + v19;

  v23(v25 & ~v24, v26 & ~v24, v21);
  return a1;
}

uint64_t assignWithCopy for SafeAreaBarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v11 + 24);
  outlined copy of Environment<Color?>.Content(v12);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v10 + 16) = v12;
  *(v10 + 24) = v6;
  outlined consume of Environment<Color?>.Content(v13);
  v14 = *(v11 + 32);
  v15 = *(v11 + 40);
  v16 = *(v11 + 48);
  outlined copy of LazyState<CollectorInteractionBox>.Storage(v14, v15, v16);
  *(v10 + 32) = v14;
  *(v10 + 40) = v15;
  *(v10 + 48) = v16;
  outlined consume of LazyState<CollectorInteractionBox>.Storage();
  *(v10 + 56) = *(v11 + 56);

  v17 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;

  *(v17 + 8) = *(v18 + 8);

  *(v17 + 16) = *(v18 + 16);
  v19 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v11 + 95) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *v21 = v23;
  v24 = *(*(a3 + 16) - 8);
  (*(v24 + 24))((*(v24 + 80) + 9 + v21) & ~*(v24 + 80), (*(v24 + 80) + 9 + v22) & ~*(v24 + 80));
  return a1;
}

uint64_t initializeWithTake for SafeAreaBarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v4 + 16) = v5;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v4 + 32) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v4 + 48) = v6;
  v7 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 16) = *(v8 + 16);
  v9 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v10 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *v11 = v13;
  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 32))((*(v14 + 80) + 9 + v11) & ~*(v14 + 80), (*(v14 + 80) + 9 + v12) & ~*(v14 + 80));
  return a1;
}

uint64_t assignWithTake for SafeAreaBarModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v12 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v10 + 16) = *(v4 + 16);
  *(v10 + 24) = v11;
  outlined consume of Environment<Color?>.Content(v12);
  v13 = *(v4 + 48);
  *(v10 + 32) = *(v4 + 32);
  *(v10 + 48) = v13;
  outlined consume of LazyState<CollectorInteractionBox>.Storage();
  *(v10 + 56) = *(v4 + 56);

  v14 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);

  *(v14 + 16) = *(v15 + 16);
  v16 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v4 + 95) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  *(v18 + 8) = *(v19 + 8);
  *v18 = v20;
  v21 = *(*(a3 + 16) - 8);
  (*(v21 + 40))((*(v21 + 80) + 9 + v18) & ~*(v21 + 80), (*(v21 + 80) + 9 + v19) & ~*(v21 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for SafeAreaBarModifier(unint64_t a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 105) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((v15 + 39) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for SafeAreaBarModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 105) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((((v19 + 39) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    *v19 = a2 - 1;
  }
}

unint64_t lazy protocol witness table accessor for type CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>;
  if (!lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>)
  {
    type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>, &type metadata for ScrollPocketCollectorInteractionRepresentable, &protocol witness table for ScrollPocketCollectorInteractionRepresentable, type metadata accessor for CoreInteractionRepresentableAdaptor);
    result = swift_getWitnessTable(protocol conformance descriptor for CoreInteractionRepresentableAdaptor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>;
  if (!lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>)
  {
    type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable>, &unk_1EFFF1EA8, &protocol witness table for ScrollPocketBarInteractionRepresentable, type metadata accessor for CoreInteractionRepresentableAdaptor);
    result = swift_getWitnessTable(protocol conformance descriptor for CoreInteractionRepresentableAdaptor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>);
  }

  return result;
}

void type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox>, &unk_1EFFF1FA8, &protocol witness table for EnvironmentValues.__Key_collectorInteractionBox, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_collectorInteractionBox> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double partial apply for closure #1 in ScrollPocketBarInteraction.updateStyleChangeRegistration()(void *a1, uint64_t a2)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return closure #1 in ScrollPocketBarInteraction.updateStyleChangeRegistration()(a1, a2, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32));
}

uint64_t assignWithCopy for ScrollPocketCollectorInteractionRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for ScrollPocketCollectorInteractionRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI18PresentationDetentVG_SSs5NeverOTg503_s7d4UI29f65OptionsPreferenceV17differenceMessage4fromSSAC_tFSSACXEfU_SSAA0C6G6VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v39 = MEMORY[0x1E69E7CC0];
  v33 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v35 = v39;
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v33;
  v5 = a1;
  v7 = result;
  v8 = 0;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v3 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_37;
    }

    v11 = *(v5 + 36);
    v12 = (*(v5 + 48) + 16 * v7);
    v13 = *v12;
    v14 = v12[1];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v18 = 0xD000000000000026;
        v19 = 0x800000018CD54C10;
        v20 = v35;
      }

      else
      {
        v20 = v35;
        if (v13 | v14 ^ 0xC000000000000000)
        {
          if (v14 == 0xC000000000000000 && v13 == 1)
          {
            v19 = 0xE500000000000000;
            v18 = 0x656772614CLL;
          }

          else
          {
            v19 = 0xE700000000000000;
            v18 = 0x6E776F6E6B6E55;
          }
        }

        else
        {
          v19 = 0xE600000000000000;
          v18 = 0x6D756964654DLL;
        }
      }
    }

    else
    {
      v16 = *(v5 + 36);
      if (v15)
      {
        v37 = 0x20746867696548;
        v17 = 0xE700000000000000;
      }

      else
      {
        v37 = 0x6E6F697463617246;
        v17 = 0xE900000000000020;
      }

      v38 = v17;
      v21 = Double.description.getter();
      MEMORY[0x18D00C9B0](v21);

      v18 = v37;
      v19 = v38;
      v6 = v33;
      v5 = a1;
      v20 = v35;
      v11 = v16;
    }

    v40 = v20;
    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      v36 = v11;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v11 = v36;
      v6 = v33;
      v5 = a1;
      v20 = v40;
    }

    *(v20 + 16) = v23 + 1;
    v24 = v20 + 16 * v23;
    *(v24 + 32) = v18;
    *(v24 + 40) = v19;
    v9 = 1 << *(v5 + 32);
    if (v7 >= v9)
    {
      goto LABEL_38;
    }

    v3 = a1 + 56;
    v25 = *(a1 + 56 + 8 * v10);
    if ((v25 & (1 << v7)) == 0)
    {
      goto LABEL_39;
    }

    if (v11 != *(v5 + 36))
    {
      goto LABEL_40;
    }

    v26 = v25 & (-2 << (v7 & 0x3F));
    v35 = v20;
    if (v26)
    {
      v9 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v10 << 6;
      v28 = v10 + 1;
      v29 = (a1 + 64 + 8 * v10);
      while (v28 < (v9 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v11, 0);
          v6 = v33;
          v5 = a1;
          v9 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v11, 0);
      v6 = v33;
      v5 = a1;
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v6)
    {
      return v35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t PresentationOptionsPreference.sheetConfigurationChanged(from:)(uint64_t a1)
{
  outlined init with copy of PresentationOptionsPreference?(a1, v16);
  if (*&v16[0])
  {
    v28 = v21;
    v29[0] = v22[0];
    *(v29 + 10) = *(v22 + 10);
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v23[0] = v16[0];
    v23[1] = v16[1];
    v2 = *(v1 + 40);
    if (v2 == 6)
    {
      if (BYTE8(v17) != 6)
      {
        goto LABEL_51;
      }
    }

    else if (v2 != BYTE8(v17))
    {
      goto LABEL_51;
    }

    v4 = *(v1 + 41);
    if (v4 == 6)
    {
      if (BYTE9(v24) != 6)
      {
        goto LABEL_51;
      }
    }

    else if (v4 != BYTE9(v24))
    {
      goto LABEL_51;
    }

    v5 = v1[6];
    if (v5 == 2)
    {
      if (v25 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v25 == 2)
      {
        goto LABEL_51;
      }

      if (v5)
      {
        if (v5 == 1)
        {
          if (v25 != 1)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v25 < 2)
          {
            goto LABEL_51;
          }

          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;
          if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else if (v25)
      {
        goto LABEL_51;
      }
    }

    v6 = BYTE8(v26);
    if (v1[9])
    {
      if (!BYTE8(v26))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (*(v1 + 8) != *&v26)
      {
        v6 = 1;
      }

      if (v6)
      {
        goto LABEL_51;
      }
    }

    v7 = BYTE8(v27);
    if (v1[11])
    {
      if (!BYTE8(v27))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (*(v1 + 10) != *&v27)
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_51;
      }
    }

    v8 = *(v1 + 57);
    if (BYTE9(v25) == 2)
    {
      if (v8 != 2)
      {
        goto LABEL_51;
      }
    }

    else if (v8 == 2)
    {
      goto LABEL_51;
    }

    v13 = *(v1 + 58);
    if (*(v1 + 58))
    {
      if (v13 != 1)
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = *(*v1 + 16) > 1uLL;
    }

    if (BYTE10(v25))
    {
      if (BYTE10(v25) == 1)
      {
        if (v13)
        {
LABEL_49:
          v3 = _sSh2eeoiySbShyxG_ABtFZ7SwiftUI18PresentationDetentV_Tt1g5(*v1, *&v23[0]) ^ 1;
LABEL_52:
          outlined destroy of PresentationOptionsPreference(v23);
          return v3 & 1;
        }
      }

      else if ((v13 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((v13 ^ (*(*&v23[0] + 16) < 2uLL)))
    {
      goto LABEL_49;
    }

LABEL_51:
    v3 = 1;
    goto LABEL_52;
  }

  outlined destroy of PresentationOptionsPreference?(v16);
  v3 = 1;
  return v3 & 1;
}

uint64_t PresentationOptionsPreference.differenceMessage(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v61 = *a1;
  if ((_sSh2eeoiySbShyxG_ABtFZ7SwiftUI18PresentationDetentV_Tt1g5(*v1, *a1) & 1) == 0)
  {
    swift_beginAccess();
    MEMORY[0x18D00C9B0]();
    swift_endAccess();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI18PresentationDetentVG_SSs5NeverOTg503_s7d4UI29f65OptionsPreferenceV17differenceMessage4fromSSAC_tFSSACXEfU_SSAA0C6G6VXEfU_Tf1cn_n(v4);
    type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v5 = BidirectionalCollection<>.joined(separator:)();
    v7 = v6;

    swift_beginAccess();
    MEMORY[0x18D00C9B0](v5, v7);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD54CC0);
    swift_endAccess();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI18PresentationDetentVG_SSs5NeverOTg503_s7d4UI29f65OptionsPreferenceV17differenceMessage4fromSSAC_tFSSACXEfU_SSAA0C6G6VXEfU_Tf1cn_n(v61);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;

    swift_beginAccess();
    MEMORY[0x18D00C9B0](v8, v10);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
  }

  v11 = *(v1 + 40);
  v12 = *(a1 + 40);
  if (v11 != 6)
  {
    if (v11 == v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v12 != 6)
  {
LABEL_7:
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD00000000000002BLL, 0x800000018CD54CE0);
    swift_endAccess();
    v13 = closure #2 in PresentationOptionsPreference.differenceMessage(from:)(v1);
    v15 = v14;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](v13, v15);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD00000000000002BLL, 0x800000018CD54CE0);
    swift_endAccess();
    v16 = closure #2 in PresentationOptionsPreference.differenceMessage(from:)(a1);
    v18 = v17;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](v16, v18);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
  }

LABEL_8:
  v19 = *(v1 + 41);
  v20 = *(a1 + 41);
  if (v19 != 6)
  {
    if (v19 == v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v20 != 6)
  {
LABEL_12:
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD000000000000029, 0x800000018CD54D10);
    swift_endAccess();
    v21 = closure #3 in PresentationOptionsPreference.differenceMessage(from:)(v1);
    v23 = v22;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](v21, v23);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD000000000000029, 0x800000018CD54D10);
    swift_endAccess();
    v24 = closure #3 in PresentationOptionsPreference.differenceMessage(from:)(a1);
    v26 = v25;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](v24, v26);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
  }

LABEL_13:
  v27 = *(v1 + 48);
  v28 = *(a1 + 48);
  if (v27 == 2)
  {
    if (v28 == 2)
    {
      goto LABEL_34;
    }

LABEL_17:
    v29 = 0x64656C6261736944;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD000000000000023, 0x800000018CD54D40);
    swift_endAccess();
    v30 = *(v2 + 48);
    if (v30)
    {
      if (v30 == 1)
      {
        v31 = 0xE700000000000000;
        v32 = 0x64656C62616E45;
      }

      else
      {
        if (v30 == 2)
        {
          goto LABEL_20;
        }

        v31 = 0x800000018CD54DE0;
        v32 = 0xD000000000000011;
      }

LABEL_27:
      swift_beginAccess();
      MEMORY[0x18D00C9B0](v32, v31);

      MEMORY[0x18D00C9B0](10, 0xE100000000000000);
      swift_endAccess();
      swift_beginAccess();
      MEMORY[0x18D00C9B0](0xD000000000000023, 0x800000018CD54D40);
      swift_endAccess();
      v33 = *(a1 + 48);
      if (v33)
      {
        if (v33 == 1)
        {
          v34 = 0xE700000000000000;
          v29 = 0x64656C62616E45;
          goto LABEL_33;
        }

        if (v33 != 2)
        {
          v34 = 0x800000018CD54DE0;
          v29 = 0xD000000000000011;
          goto LABEL_33;
        }
      }

      v34 = 0xE800000000000000;
LABEL_33:
      swift_beginAccess();
      MEMORY[0x18D00C9B0](v29, v34);

      MEMORY[0x18D00C9B0](10, 0xE100000000000000);
      swift_endAccess();
      goto LABEL_34;
    }

LABEL_20:
    v31 = 0xE800000000000000;
    v32 = 0x64656C6261736944;
    goto LABEL_27;
  }

  if (v28 == 2)
  {
    goto LABEL_17;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      if (v28 != 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v28 < 2)
      {
        goto LABEL_17;
      }

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
      {

        goto LABEL_34;
      }

      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v60 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_17;
  }

LABEL_34:
  v35 = *(v2 + 72);
  v36 = *(a1 + 72);
  if (v35)
  {
    if (*(a1 + 72))
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  if (*(v2 + 64) != *(a1 + 64))
  {
    v36 = 1;
  }

  if (v36)
  {
LABEL_40:
    v37 = v2;
    v38 = 0x746C7561666544;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD54D70);
    swift_endAccess();
    if (v35)
    {
      v39 = 0xE700000000000000;
      v40 = 0x746C7561666544;
    }

    else
    {
      v40 = Double.description.getter();
      v39 = v41;
    }

    swift_beginAccess();
    MEMORY[0x18D00C9B0](v40, v39);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD54D70);
    swift_endAccess();
    if (*(a1 + 72))
    {
      v42 = 0xE700000000000000;
    }

    else
    {
      v38 = Double.description.getter();
      v42 = v43;
    }

    v2 = v37;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](v38, v42);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
  }

LABEL_47:
  v44 = *(v2 + 57);
  v45 = *(a1 + 57);
  if ((v44 == 2) != (v45 == 2))
  {
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD000000000000020, 0x800000018CD54D90);
    if (v44 == 1)
    {
      v46 = 0x73657A69736552;
    }

    else
    {
      v46 = 0x736C6C6F726353;
    }

    MEMORY[0x18D00C9B0](v46, 0xE700000000000000);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD000000000000020, 0x800000018CD54D90);
    if (v45 == 1)
    {
      v47 = 0x73657A69736552;
    }

    else
    {
      v47 = 0x736C6C6F726353;
    }

    MEMORY[0x18D00C9B0](v47, 0xE700000000000000);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
  }

  v48 = *(v2 + 58);
  if (*(v2 + 58))
  {
    if (v48 == 1)
    {
      v49 = 1;
      v50 = *(a1 + 58);
      if (*(a1 + 58))
      {
        goto LABEL_58;
      }

LABEL_62:
      LOBYTE(v49) = v49 ^ (*(v61 + 16) < 2uLL);
      goto LABEL_63;
    }

    v49 = 0;
    v50 = *(a1 + 58);
    if (!*(a1 + 58))
    {
      goto LABEL_62;
    }
  }

  else
  {
    v49 = *(v4 + 16) > 1uLL;
    v50 = *(a1 + 58);
    if (!*(a1 + 58))
    {
      goto LABEL_62;
    }
  }

LABEL_58:
  if (v50 != 1)
  {
    if (!v49)
    {
      goto LABEL_77;
    }

LABEL_64:
    v51 = 0x656C6269736956;
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD54DC0);
    if (v48)
    {
      if (v48 == 1)
      {
LABEL_66:
        v52 = 0xE700000000000000;
        v53 = 0x656C6269736956;
        goto LABEL_71;
      }
    }

    else if (*(v4 + 16) > 1uLL)
    {
      goto LABEL_66;
    }

    v52 = 0xE600000000000000;
    v53 = 0x6E6564646948;
LABEL_71:
    MEMORY[0x18D00C9B0](v53, v52);

    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    swift_endAccess();
    swift_beginAccess();
    MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD54DC0);
    if (v50)
    {
      if (v50 == 1)
      {
LABEL_73:
        v54 = 0xE700000000000000;
LABEL_76:
        MEMORY[0x18D00C9B0](v51, v54);

        MEMORY[0x18D00C9B0](10, 0xE100000000000000);
        swift_endAccess();
        goto LABEL_77;
      }
    }

    else if (*(v61 + 16) > 1uLL)
    {
      goto LABEL_73;
    }

    v54 = 0xE600000000000000;
    v51 = 0x6E6564646948;
    goto LABEL_76;
  }

LABEL_63:
  if (!v49)
  {
    goto LABEL_64;
  }

LABEL_77:
  swift_beginAccess();
  MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD54CA0);
  MEMORY[0x18D00C9B0](2570, 0xE200000000000000);
  swift_beginAccess();
  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD54C80);
  MEMORY[0x18D00C9B0](2570, 0xE200000000000000);

  return 10;
}