uint64_t _AnchorWritingModifier2.base.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a1;
}

void _AnchorWritingModifier2.base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

void *static _AnchorWritingModifier2._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, ValueMetadata *a6, uint64_t a7)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v13;
  v21[4] = *(a2 + 64);
  v22 = *(a2 + 80);
  v14 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v14;
  v20[1] = v12;
  v15 = type metadata accessor for _AnchorWritingModifier2(255, a5, a6, a7);
  type metadata accessor for _GraphValue(0, v15, v16, v17);
  v18 = type metadata accessor for _AnchorWritingModifier(0, a5, a6, a7);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _AnchorWritingModifier2._makeView(modifier:inputs:body:), v18, v20);
  return static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:)(v20, v21, 0, a3, a4, a5, a6, a7);
}

uint64_t closure #1 in static _AnchorWritingModifier2._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = type metadata accessor for _AnchorWritingModifier2(0, a2, a3, a4);
  v12 = type metadata accessor for _AnchorWritingModifier(0, a2, a3, a4);
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Anchor<A>) -> (@out B.PreferenceKey.Value)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4 = a1;
  return v2(&v4);
}

uint64_t static AnchorWriter.initialValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance AnchorWriter<A, B>(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  static AnchorWriter.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for AnchorWriter<A, B>, a2, v16);
  v19[-1] = v17;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in static Rule._updateDefault(_:), &v19[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t specialized AnchorWriter.description.getter(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static PreferenceKey.readableName.getter(a3);
  MEMORY[0x193ABEDD0]();

  return 0x203A726F68636E41;
}

void type metadata accessor for [GlassMaterialShape]()
{
  if (!lazy cache variable for type metadata for [GlassMaterialShape])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [GlassMaterialShape]);
    }
  }
}

void type metadata accessor for AnchorWriter<CGRect, GlassMaterialShapeKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnchorWriter<CGRect, GlassMaterialShapeKey>)
  {
    type metadata accessor for CGRect(255);
    v3 = type metadata accessor for AnchorWriter(a1, v2, &type metadata for GlassMaterialShapeKey, &protocol witness table for GlassMaterialShapeKey);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for AnchorWriter<CGRect, GlassMaterialShapeKey>);
    }
  }
}

void lazy protocol witness table accessor for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>()
{
  if (!lazy protocol witness table cache variable for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>)
  {
    type metadata accessor for AnchorWriter<CGRect, GlassMaterialShapeKey>(255);
    swift_getWitnessTable(protocol conformance descriptor for AnchorWriter<A, B>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>);
  }
}

uint64_t static ConditionalGraphicsView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v8;
  v48 = *(a2 + 64);
  v49 = *(a2 + 80);
  v9 = *(a2 + 16);
  v44 = *a2;
  v45 = v9;
  static DynamicPropertyCache.fields(of:)(a3, &v56);
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v43 = v49;
  v38 = v44;
  v39 = v45;
  v23 = v57;
  LODWORD(v28[0]) = v7;
  v24 = *(&v56 + 1);
  v25 = v56;
  v50 = v56;
  LOBYTE(v51) = v57;
  v22 = DWORD1(v57);
  DWORD1(v51) = DWORD1(v57);
  outlined init with copy of _ViewInputs(&v44, &v56);
  static ConditionalGraphicsView.makeBody(view:inputs:fields:)(&v32, &v56, v28, &v38, &v50, a3, a4);
  v21 = v56;
  v10 = v57;
  LODWORD(v28[0]) = v32;
  BYTE4(v28[0]) = BYTE4(v32);
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v55 = v43;
  v50 = v38;
  v51 = v39;
  outlined init with copy of _ViewInputs(&v50, &v56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for ConditionalGraphValue(0, AssociatedTypeWitness, v12, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  ConditionalGraphValue<>.makeView(inputs:)(&v38, v14, AssociatedConformanceWitness, v16, &v32);
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v61 = v43;
  v56 = v38;
  v57 = v39;
  outlined destroy of _ViewInputs(&v56);
  v17 = v32;
  if (v10)
  {
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v32 = v38;
    v33 = v39;
    outlined destroy of _ViewInputs(&v32);
    v19 = v24;
    v18 = v25;
  }

  else
  {
    v31 = v21;
    v27 = v7;
    v28[0] = v25;
    v28[1] = v24;
    v29 = v23;
    v30 = v22;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v27, v28, a3);
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v32 = v38;
    v33 = v39;
    outlined destroy of _ViewInputs(&v32);
    v18 = v25;
    v19 = v24;
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v18, v19, v23);
  *a5 = v17;
  return result;
}

void *static ConditionalGraphicsView.makeBody(view:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a3;
  v13 = *a5;
  v12 = a5[1];
  v14 = *(a5 + 16);
  v15 = *(a5 + 5);
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    v25 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v25);

    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(*a4);
    if (v17)
    {
      v31 = v11;
      v27 = v13;
      v28 = v12;
      v29 = v14;
      v30 = v15;
      v18 = type metadata accessor for GraphicsViewBodyAccessor(0, a6, a7, v16);
      swift_getWitnessTable(protocol conformance descriptor for GraphicsViewBodyAccessor<A>, v18);
    }

    else
    {
      v20 = *(a7 + 8);
      ViewBodyAccessor.init()();
      v31 = v11;
      v27 = v13;
      v28 = v12;
      v29 = v14;
      v30 = v15;
      v18 = type metadata accessor for ViewBodyAccessor(0, a6, v20, v21);
      swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v18);
    }

    result = BodyAccessor.makeBody(container:inputs:fields:)(v34, &v32, &v31, a4, &v27, v18, v19);
    v23 = v32;
    v24 = v33;
    *a1 = v34[0];
    *(a1 + 4) = v17 & 1;
    *a2 = v23;
    *(a2 + 16) = v24;
  }

  return result;
}

uint64_t static ConditionalGraphicsView._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  static DynamicPropertyCache.fields(of:)(a3, v36);
  v8 = v36[0];
  v9 = v36[1];
  v10 = v37;
  v11 = v38;
  outlined init with copy of _ViewListInputs(a2, v36);
  v23 = v11;
  v26 = v7;
  v24 = v9;
  v25 = v8;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  static ConditionalGraphicsView.makeBody(view:inputs:fields:)(&v27, &v33, &v26, v36, &v29, a3, a4);
  v21 = v33;
  v22 = v34;
  LOBYTE(v9) = v35;
  LODWORD(v29) = v27;
  BYTE4(v29) = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for ConditionalGraphValue(0, AssociatedTypeWitness, v13, v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  ConditionalGraphValue<>.makeViewList(inputs:)(v36, v15, AssociatedConformanceWitness, v17);
  if (v9)
  {
    outlined destroy of _ViewListInputs(v36);
    v19 = v24;
    v18 = v25;
  }

  else
  {
    v33 = v21;
    v34 = v22;
    v27 = v7;
    v29 = v25;
    v30 = v24;
    v31 = v10;
    v32 = v23;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v27, &v29, a3);
    outlined destroy of _ViewListInputs(v36);
    v18 = v25;
    v19 = v24;
  }

  return outlined consume of DynamicPropertyCache.Fields.Layout(v18, v19, v10);
}

uint64_t static ConditionalGraphicsView._viewListCount(inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = *a1;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(*a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v4;
  v6 = *v3;
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v13 = *(v3 + 1);
  v14 = v7;
  v15 = v8;
  v16 = v3[8];
  v12 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(&v11, AssociatedTypeWitness, AssociatedConformanceWitness);
}

void GraphicsViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UncheckedSendable(0, v11, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v18[-v16];
  if (a2)
  {
    (*(v8 + 16))(v10, a1, a3, v15);
    UncheckedSendable.init(_:)(v10, a3, v17);
    closure #1 in GraphicsViewBodyAccessor.updateBody(of:changed:)(v17, a3, a4);
    (*(v14 + 8))(v17, v13);
  }
}

uint64_t closure #1 in GraphicsViewBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v73 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = v59 - v10;
  v63 = a3;
  v65 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v59 - v11;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = static Signpost.bodyInvoke;
    v14 = word_1ED539040;
    v15 = HIBYTE(word_1ED539040);
    v16 = byte_1ED539042;
    v17 = static os_signpost_type_t.begin.getter();
    v83 = v13;
    v84 = v14;
    v85 = v15;
    v86 = v16;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v74 = *(&v13 + 1);
    LODWORD(v75) = v17;
    v59[1] = a1;
    v60 = v12;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDAB4C0;
    v19 = AGTypeID.description.getter();
    v21 = v20;
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v24 = v23;
    *(v18 + 64) = v23;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v25 = specialized static Tracing.libraryName(defining:)();
    *(v18 + 96) = v22;
    *(v18 + 104) = v24;
    *(v18 + 72) = v25;
    *(v18 + 80) = v26;
    v76 = v18;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v15)
    {
      v82 = v75;
      v80 = _signpostLog;
      v81 = &dword_18D018000;
      *&v83 = v13;
      *(&v83 + 1) = v74;
      v84 = v14;
      v78[0] = "%{public}@.body [in %{public}@]";
      v78[1] = 31;
      v79 = 2;
      v77 = v76;
      v27 = v64;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v82, &v81, &v80, &v83, v64, v78, &v77);
      (*(v72 + 8))(v27, v71);
LABEL_34:

      v12 = v60;
      break;
    }

    if (v13 == 20)
    {
      v28 = 3;
    }

    else
    {
      v28 = 4;
    }

    v29 = bswap32(v13) | (4 * WORD1(v13));
    v30 = v75;
    v31 = v72 + 16;
    v66 = *(v72 + 16);
    v32 = v66(v73, v64, v71);
    v33 = 0;
    LOBYTE(v78[0]) = 1;
    v75 = v28;
    v72 = v31;
    v69 = 16 * v28;
    v70 = (v31 - 8);
    v68 = v76 + 32;
    v67 = *(&v13 + 1);
LABEL_11:
    v74 = v59;
    MEMORY[0x1EEE9AC00](v32);
    a1 = v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = a1 + 8;
    v36 = v75;
    v37 = a1 + 8;
    do
    {
      *(v37 - 1) = 0;
      *v37 = 0;
      v37 += 16;
      --v36;
    }

    while (v36);
    v12 = (v68 + 40 * v33);
    v38 = v75;
    while (1)
    {
      v39 = *(v76 + 16);
      if (v33 == v39)
      {
        LOBYTE(v78[0]) = 0;
LABEL_19:
        v43 = v67;
        if (v67 == 20)
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

        if (v43 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v44 = v71;
        v45 = *v70;
        v46 = v73;
        (*v70)(v73, v71);
        v47 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
        v32 = v66(v46, v47, v44);
        if ((v78[0] & 1) == 0)
        {
          v48 = v71;
          v45(v73, v71);
          v45(v64, v48);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v33 >= v39)
      {
        break;
      }

      ++v33;
      outlined init with copy of AnyTrackedValue(v12, &v83);
      v40 = v87;
      v41 = v88;
      __swift_project_boxed_opaque_existential_1(&v83, v87);
      *(v35 - 1) = CVarArg.kdebugValue(_:)(v29 | v30, v40, v41);
      *v35 = v42 & 1;
      v35 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v83);
      v12 += 40;
      if (!--v38)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v49 = v63;
  v50 = v12;
  v51 = v65;
  (*(v63 + 32))(v65, v63);
  AGGraphSetUpdate();
  v52 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v52);
  v54 = type metadata accessor for GraphicsViewBodyAccessor(0, v51, v49, v53);
  v59[-2] = v54;
  swift_getWitnessTable(protocol conformance descriptor for GraphicsViewBodyAccessor<A>, v54);
  v59[-1] = v55;
  v56 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v50, partial apply for closure #2 in BodyAccessor.setBody(_:), &v59[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v57);
  return (*(v61 + 8))(v50, v56);
}

SwiftUI::UniqueID __swiftcall UniqueID.init()()
{
  v1 = v0;
  result.value = AGMakeUniqueID();
  v1->value = result.value;
  return result;
}

Swift::Int UniqueID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AccessibilityChildBehaviorKind.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6961746E6F63;
  }

  else
  {
    return 0x656E69626D6F63;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityChildBehaviorKind.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E69626D6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6961746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityChildBehaviorKind.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityChildBehaviorKind.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityChildBehaviorKind.CombineCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityChildBehaviorKind.CombineCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityChildBehaviorKind.ContainCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityChildBehaviorKind.ContainCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityChildBehaviorKind.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys, &unk_1F0095A00, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityChildBehaviorKind.CombineCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys, &unk_1F00959E0, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityChildBehaviorKind.CodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

void lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys()
{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.ContainCodingKeys, &unk_1F0095A00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.ContainCodingKeys, &unk_1F0095A00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.ContainCodingKeys, &unk_1F0095A00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys);
  }
}

void lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys()
{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.CombineCodingKeys, &unk_1F00959E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.CombineCodingKeys, &unk_1F00959E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.CombineCodingKeys, &unk_1F00959E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys);
  }
}

void lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }
}

Swift::Int AccessibilityChildBehaviorKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t AccessibilityChildBehaviorKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys, &unk_1F0095A00, MEMORY[0x1E69E6F48]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityChildBehaviorKind.CombineCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys, &unk_1F00959E0, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityChildBehaviorKind.CodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = specialized Collection<>.popFirst()();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v24 = &type metadata for AccessibilityChildBehaviorKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

SwiftUI::AccessibilityChildBehaviorKind_optional __swiftcall AccessibilityChildBehaviorKind.init(protobufValue:)(Swift::UInt protobufValue)
{
  if (protobufValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!protobufValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return protobufValue;
}

void lazy protocol witness table accessor for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind()
{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind, &type metadata for AccessibilityChildBehaviorKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind, &type metadata for AccessibilityChildBehaviorKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehaviorKind, &type metadata for AccessibilityChildBehaviorKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind);
  }
}

void StyleableView.scrapeableContent.getter(void *a1@<X8>)
{
  StyleableView.scrapeableContent.getter(a1);
}

{
  *a1 = 0xF000000000000007;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MakeDefaultRepresentation<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for ModifiedContent(0, v3, AssociatedTypeWitness, v5);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

double static MakeScrapeableResolvedRepresentation.scrapeContent(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetAttributeInfo();
  v11 = v10;
  v13 = *(type metadata accessor for MakeScrapeableResolvedRepresentation(0, a2, a3, v12) + 16);
  Value = AGGraphGetValue();
  (*(*(v13 - 8) + 16))(v9, Value, v13);
  (*(a3 + 64))(&v19, a2, a3);
  (*(v7 + 8))(v9, a2);
  v15 = v19;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v18 = v19;
    outlined copy of ScrapeableContent.Content(v19);
    closure #1 in static MakeScrapeableResolvedRepresentation.scrapeContent(from:)(&v18, v11, a2, a3, a4);
    outlined consume of ScrapeableContent.Content?(v15);
    return outlined consume of ScrapeableContent.Content(v18);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
  }

  return result;
}

float64x2_t closure #1 in static MakeScrapeableResolvedRepresentation.scrapeContent(from:)@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + 16);
  v9 = *(a2 + 4);
  type metadata accessor for MakeScrapeableResolvedRepresentation(0, a3, a4, a4);
  v10 = *MEMORY[0x1E698D3F8];
  if (v9 == *MEMORY[0x1E698D3F8])
  {
    outlined copy of ScrapeableContent.Content(v7);
    v11 = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  else
  {
    type metadata accessor for CGPoint(0);
    outlined copy of ScrapeableContent.Content(v7);
    v11 = *AGGraphGetValue();
  }

  v23 = v11;
  if (*(a2 + 8) == v10)
  {
    if (one-time initialization token for invalidValue != -1)
    {
      swift_once();
    }

    Value = &static CGSize.invalidValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v14 = *Value;
  v13 = *(Value + 1);
  if (*(a2 + 12) == v10)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  else
  {
    v19 = AGGraphGetValue();
    v15 = *v19;
    v16 = *(v19 + 8);
    v21 = *(v19 + 32);
    v22 = *(v19 + 16);

    v17 = v21;
    v18 = v22;
  }

  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = v14;
  *(a5 + 24) = v13;
  *(a5 + 32) = v15;
  *(a5 + 40) = v16;
  result = vsubq_f64(v17, vsubq_f64(v23, v18));
  *(a5 + 48) = v23;
  *(a5 + 64) = result;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MakeScrapeableResolvedRepresentation<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

void AnyStyleModifier.makeReusable(indirectMap:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    IndirectAttribute = *(*(v5 + 56) + 4 * v6);
  }

  else
  {
    swift_endAccess();
    AGGraphClearUpdate();
    v9 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    IndirectAttribute = AGGraphCreateIndirectAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(IndirectAttribute, v4, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v11;
  }

  swift_endAccess();
  *v2 = IndirectAttribute;
}

uint64_t AnyStyleModifier.tryToReuse(by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6)
{
  if (a6 != a2)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*(a3 + 24) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a5), (v10 & 1) != 0))
  {
    swift_endAccess();
    if ((a4 & 1) == 0)
    {
      AGGraphSetIndirectAttribute();
    }

    return 1;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t static AutomaticStyleOverrideModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for AutomaticStyleOverrideModifier(255, a3, a4, a5);
  type metadata accessor for _GraphValue(0, v8, v9, v10);
  _GraphValue.subscript.getter(partial apply for closure #1 in static AutomaticStyleOverrideModifier._makeInputs(modifier:inputs:), a4, &v17);
  v16[0] = v17;
  v16[1] = type metadata accessor for StyleModifierType(0, a4, a5, v11);
  v14 = type metadata accessor for StyleOverrideInput(0, a3, v12, v13);
  return _GraphInputs.subscript.setter(v16, v14, v14, &protocol witness table for StyleOverrideInput<A>);
}

uint64_t closure #1 in static AutomaticStyleOverrideModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for AutomaticStyleOverrideModifier(0, a2, a3, a4);
  v9[3] = a3;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a3, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t VelocitySampler.lastTime.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 44));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

uint64_t VelocitySampler.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 56);
  v7(a3, 1, 1, TupleTypeMetadata2);
  v9 = type metadata accessor for VelocitySampler(0, a1, a2, v8);
  v7(a3 + v9[9], 1, 1, TupleTypeMetadata2);
  result = (v7)(a3 + v9[10], 1, 1, TupleTypeMetadata2);
  v11 = a3 + v9[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a3 + v9[12]) = 0x3FE8000000000000;
  return result;
}

void VelocitySampler.addSample(_:time:)(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v83 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v84 = &v75 - v25;
  v26 = *a2;
  v27 = &v4[*(a3 + 44)];
  if ((v27[8] & 1) != 0 || (v28 = *v27, v26 >= *v27))
  {
    v79 = v22;
    v80 = v23;
    v76 = v21;
    v81 = v20;
    v85 = TupleTypeMetadata2;
    v33 = *(TupleTypeMetadata2 + 48);
    v34 = a1;
    v35 = v84;
    (*(*(v8 - 8) + 16))(v84, v34, v8, v24);
    *&v35[v33] = v26;
    v36 = v27[8];
    v82 = v4;
    if ((v36 & 1) != 0 || v26 - *v27 >= 2.22044605e-16)
    {
      *v27 = v26;
      v27[8] = 0;
      v50 = *(a3 + 40);
      v51 = v83;
      v78 = *(v83 + 16);
      v78(v14, &v4[v50], v10);
      v52 = v81;
      v77 = *(v81 + 48);
      v53 = v77(v14, 1, v85);
      v80 = *(v51 + 8);
      v80(v14, v10);
      v54 = *(a3 + 36);
      if (v53 == 1)
      {
        v55 = v50;
        v56 = v82;
        v57 = v79;
        v78(v79, &v82[v54], v10);
        v58 = v77(v57, 1, v85);
        v59 = v57;
        v60 = v80;
        v80(v59, v10);
        if (v58 == 1)
        {
          v61 = (v52 + 56);
          v62 = v76;
          v78(v76, v56, v10);
          v63 = v77(v62, 1, v85);
          v64 = v80;
          v80(v62, v10);
          v65 = (v52 + 32);
          if (v63 == 1)
          {
            v64(v56, v10);
            v66 = v85;
            (*v65)(v56, v84, v85);
            (*v61)(v56, 0, 1, v66);
          }

          else
          {
            v64(&v56[v54], v10);
            v73 = v85;
            (*v65)(&v56[v54], v84, v85);
            (*v61)(&v56[v54], 0, 1, v73);
          }
        }

        else
        {
          v60(&v56[v55], v10);
          v70 = v85;
          (*(v52 + 32))(&v56[v55], v84, v85);
          (*(v52 + 56))(&v56[v55], 0, 1, v70);
        }
      }

      else
      {
        v67 = *(v51 + 24);
        v68 = v82;
        v67(v82, &v82[v54], v10);
        v67(&v68[v54], &v68[v50], v10);
        v80(&v68[v50], v10);
        v69 = v85;
        (*(v52 + 32))(&v68[v50], v84, v85);
        (*(v52 + 56))(&v68[v50], 0, 1, v69);
      }
    }

    else
    {
      v37 = *(a3 + 40);
      v38 = v83;
      v39 = v10;
      v79 = *(v83 + 16);
      (v79)(v18, &v4[v37], v10);
      v40 = v81;
      v78 = *(v81 + 48);
      v41 = (v78)(v18, 1, v85);
      v42 = *(v38 + 8);
      v42(v18, v10);
      if (v41 == 1)
      {
        v43 = *(a3 + 36);
        v44 = v80;
        (v79)(v80, &v82[v43], v10);
        v45 = v85;
        v46 = (v78)(v44, 1, v85);
        v42(v44, v39);
        v47 = (v40 + 32);
        v48 = (v40 + 56);
        if (v46 == 1)
        {
          v49 = v82;
          v42(v82, v39);
          (*v47)(v49, v84, v45);
          (*v48)(v49, 0, 1, v45);
        }

        else
        {
          v74 = v82;
          v42(&v82[v43], v39);
          (*v47)(&v74[v43], v84, v45);
          (*v48)(&v74[v43], 0, 1, v45);
        }
      }

      else
      {
        v71 = v82;
        v42(&v82[v37], v39);
        v72 = v85;
        (*(v40 + 32))(&v71[v37], v84, v85);
        (*(v40 + 56))(&v71[v37], 0, 1, v72);
      }
    }
  }

  else
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    MEMORY[0x193ABEDD0](0x2064696C61766E49, 0xEF20656C706D6173);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    v30 = v87;
    v29 = v88;
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    MEMORY[0x193ABEDD0](0x6D69742068746977, 0xEA00000000002065);
    v86 = v26;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0x207473616C203E20, 0xED000020656D6974);
    v86 = v28;
    _print_unlocked<A, B>(_:_:)();
    v31 = v87;
    v32 = v88;
    v87 = v30;
    v88 = v29;

    MEMORY[0x193ABEDD0](v31, v32);

    specialized static Log.externalWarning(_:)(v87, v88);
  }
}

Swift::Void __swiftcall VelocitySampler.reset()()
{
  v2 = v0;
  (*(*(v0 - 8) + 8))();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  VelocitySampler.init()(v3, v4, v1);
}

uint64_t VelocitySampler.velocity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v99 = a3;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v96 = a1;
  v91 = v5;
  v100 = *(v5 + 8);
  v90 = *(v100 + 8);
  v7 = type metadata accessor for _Velocity(0, v6, v90, a2);
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v74 - v12;
  v93 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v74 - v18;
  v98 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  v29 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v85 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v74 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v101 = &v74 - v37;
  v95 = v21;
  v38 = *(v21 + 16);
  v97 = v4;
  v38(v28, v4, v20, v36);
  v39 = *(v29 + 48);
  if (v39(v28, 1, TupleTypeMetadata2) == 1)
  {
    v25 = v28;
LABEL_5:
    (*(v95 + 8))(v25, v20);
    return static _Velocity<>.zero.getter();
  }

  v40 = *(v29 + 32);
  v81 = v29 + 32;
  v80 = v40;
  v40(v101, v28, TupleTypeMetadata2);
  (v38)(v25, v97 + v96[9], v20);
  if (v39(v25, 1, TupleTypeMetadata2) == 1)
  {
    (*(v29 + 8))(v101, TupleTypeMetadata2);
    goto LABEL_5;
  }

  v78 = v29;
  v80(v34, v25, TupleTypeMetadata2);
  v77 = v39;
  v42 = v92;
  v43 = v38;
  v44 = TupleTypeMetadata2;
  v45 = v101;
  v46 = v98;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v47 = *(v44 + 48);
  v79 = v34;
  v48 = *&v34[v47];
  v49 = *&v45[v47];
  v50 = v44;
  v51 = *(v91 + 16);
  v76 = v91 + 16;
  v75 = v51;
  (v51)(v46, 1.0 / (v48 - v49));
  v52 = v93;
  v53 = v86;
  v74 = *(v93 + 16);
  v74(v86, v42, v46);
  v54 = v53;
  _Velocity.init(valuePerSecond:)(v53, v46, v94);
  v55 = v84;
  v43(v84, v97 + v96[10], v20);
  if (v77(v55, 1, v50) == 1)
  {
    (*(v52 + 8))(v92, v46);
    v56 = *(v78 + 8);
    v56(v79, v50);
    v56(v101, v50);
    (*(v95 + 8))(v55, v20);
    return (*(v88 + 32))(v99, v94, v89);
  }

  else
  {
    v57 = v85;
    v80(v85, v55, v50);
    v58 = v54;
    v59 = v46;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v60 = 1.0 / (*&v57[*(v50 + 48)] - v48);
    v61 = v91;
    v75(v46, v91, v60);
    v62 = v52;
    v63 = v82;
    v74(v82, v54, v46);
    v64 = v83;
    _Velocity.init(valuePerSecond:)(v63, v46, v83);
    v65 = *(v97 + v96[12]);
    v102 = v61;
    v66 = v89;
    swift_getWitnessTable(protocol conformance descriptor for <> _Velocity<A>, v89, &v102);
    v67 = v94;
    mix<A>(_:_:by:)(v66, v68, v87, v65);
    v69 = v88;
    v70 = *(v88 + 8);
    v70(v64, v66);
    v71 = *(v62 + 8);
    v93 = v62 + 8;
    v71(v58, v59);
    v72 = *(v78 + 8);
    v72(v85, v50);
    v70(v67, v66);
    v71(v92, v59);
    v72(v79, v50);
    v72(v101, v50);
    v73 = *(v69 + 32);
    v73(v67, v87, v66);
    return (v73)(v99, v67, v66);
  }
}

uint64_t AnimatableVelocitySampler.base.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for VelocitySampler(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2, v7);
}

uint64_t AnimatableVelocitySampler.base.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for VelocitySampler(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(*(v7 - 8) + 40);

  return v8(v2, a1, v7);
}

uint64_t AnimatableVelocitySampler.init()@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return VelocitySampler.init()(AssociatedTypeWitness, AssociatedConformanceWitness, a3);
}

uint64_t AnimatableVelocitySampler.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  VelocitySampler.init()(AssociatedTypeWitness, AssociatedConformanceWitness, a4);
  v9 = type metadata accessor for VelocitySampler(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(*(v9 - 8) + 40);

  return v10(a4, a1, v9);
}

uint64_t AnimatableVelocitySampler.addSample(_:time:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - v9;
  v11 = *a2;
  (*(v4 + 24))(v5, v4, v8);
  v17 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for VelocitySampler(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  VelocitySampler.addSample(_:time:)(v10, &v17, v14);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t AnimatableVelocitySampler.velocity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v21 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for _Velocity(0, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8), v12);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  (*(*(v6 - 8) + 16))(a3, a1, v6, v14);
  v18 = type metadata accessor for VelocitySampler(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  VelocitySampler.velocity.getter(v18, v19, v16);
  (*(v8 + 32))(v10, v16, AssociatedTypeWitness);
  return (*(v5 + 32))(v10, v6, v5);
}

uint64_t type metadata completion function for VelocitySampler(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for VelocitySampler(void *a1, _DWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v11 = v9 + 9;
  if (v7)
  {
    v12 = v9 + 8;
  }

  else
  {
    v12 = v9 + 9;
  }

  v13 = *(v6 + 80);
  v14 = v13 & 0xF8 | 7;
  if ((v13 & 0x1000F8) == 0 && ((v12 + ((v12 + v14 + ((v12 + v14) & ~v14)) & ~v14) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v35 = v8 + 7;
    if (v7)
    {
      if (!(*(v6 + 48))(a2, v7, v5))
      {
        goto LABEL_21;
      }
    }

    else if (!*(a2 + v10) || ((v17 = *(a2 + v10) - 1, v9 == -8) ? (v18 = 0) : (v17 = 0, v18 = *a2), (v18 | v17) == 0xFFFFFFFF))
    {
LABEL_21:
      (*(v6 + 16))(a1, a2, v5);
      v22 = a1 + 7;
      v23 = a2 + 7;
      *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v7)
      {
        v19 = (&v22[v10] & 0xFFFFFFFFFFFFFFF8);
        v20 = (&v23[v10] & 0xFFFFFFFFFFFFFFF8);
LABEL_23:
        if (!(*(v6 + 48))(v20, v7, v5))
        {
          goto LABEL_33;
        }

LABEL_30:
        memcpy(v19, v20, v12);
        v26 = ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v27 = ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v7)
        {
          goto LABEL_35;
        }

        v28 = *(v27 + v10);
        if (!*(v27 + v10))
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      *(a1 + v10) = 0;
      v19 = (&v22[v11] & 0xFFFFFFFFFFFFFFF8);
      v20 = (&v23[v11] & 0xFFFFFFFFFFFFFFF8);
      v21 = *(v20 + v10);
      if (*(v20 + v10))
      {
LABEL_26:
        v24 = v21 - 1;
        if (v9 == -8)
        {
          v25 = 0;
        }

        else
        {
          v24 = 0;
          v25 = *v20;
        }

        if ((v25 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

LABEL_33:
      (*(v6 + 16))(v19, v20, v5);
      *((v19 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v35) & 0xFFFFFFFFFFFFFFF8);
      if (v7)
      {
        v26 = ((v19 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
        v27 = ((v20 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
LABEL_35:
        if (!(*(v6 + 48))(v27, v7, v5))
        {
LABEL_43:
          (*(v6 + 16))(v26, v27, v5);
          *(&v26[v35] & 0xFFFFFFFFFFFFFFF8) = *((v27 + v35) & 0xFFFFFFFFFFFFFFF8);
          if (!v7)
          {
            v26[v10] = 0;
          }

          goto LABEL_45;
        }

LABEL_42:
        memcpy(v26, v27, v12);
LABEL_45:
        v31 = &v26[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
        v32 = (v27 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = *v32;
        *(v31 + 8) = *(v32 + 8);
        *v31 = v33;
        *(&v26[v12 + 23] & 0xFFFFFFFFFFFFFFF8) = *((v27 + v12 + 23) & 0xFFFFFFFFFFFFFFF8);
        return a1;
      }

      *(v19 + v10) = 0;
      v26 = ((v19 + v9 + 16) & 0xFFFFFFFFFFFFFFF8);
      v27 = ((v20 + v9 + 16) & 0xFFFFFFFFFFFFFFF8);
      v28 = *(v27 + v10);
      if (!*(v27 + v10))
      {
        goto LABEL_43;
      }

LABEL_38:
      v29 = v28 - 1;
      if (v9 == -8)
      {
        v30 = 0;
      }

      else
      {
        v29 = 0;
        v30 = *v27;
      }

      if ((v30 | v29) == 0xFFFFFFFF)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    memcpy(a1, a2, v12);
    v19 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      goto LABEL_23;
    }

    v21 = *(v20 + v10);
    if (*(v20 + v10))
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v16 = *a2;
  *a1 = *a2;
  a1 = (v16 + ((v14 + 16) & ~v14));

  return a1;
}

uint64_t destroy for VelocitySampler(_DWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = (*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v25 = v4;
  if (v5)
  {
    v8 = (*(v4 + 48))(a1, v5, v3);
    v4 = v25;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!*(a1 + v7) || ((v9 = *(a1 + v7) - 1, v6 == -8) ? (v10 = 0) : (v9 = 0, v10 = *a1), (v10 | v9) == 0xFFFFFFFF))
  {
LABEL_9:
    (*(v4 + 8))(a1, v3);
    v4 = v25;
  }

LABEL_10:
  v11 = v6 + 9;
  if (v5)
  {
    v11 = v6 + 8;
  }

  v12 = *(v4 + 80) & 0xF8 | 7;
  v13 = v11 + v12;
  v14 = ~v12;
  v15 = ((a1 + v11 + v12) & ~v12);
  if (v5)
  {
    v16 = (*(v4 + 48))(v15, v5, v3);
    v4 = v25;
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!*(v15 + v7) || ((v17 = *(v15 + v7) - 1, !v7) ? (v18 = 0) : (v17 = 0, v18 = *v15), (v18 | v17) == 0xFFFFFFFF))
  {
LABEL_20:
    (*(v4 + 8))(v15, v3);
    v4 = v25;
  }

LABEL_21:
  v19 = ((v15 + v13) & v14);
  if (v5)
  {
    result = (*(v4 + 48))(v19, v5, v3);
    v4 = v25;
    if (result)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!*(v19 + v7) || ((v21 = *(v19 + v7) - 1, !v7) ? (v22 = 0) : (v21 = 0, v22 = *v19), v23 = v22 | v21, result = (v23 + 1), v23 == -1))
  {
LABEL_30:
    v24 = *(v4 + 8);

    return v24(v19, v3);
  }

  return result;
}

char *initializeWithCopy for VelocitySampler(char *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v37 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v40 = v5;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v7)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v9 + 9;
    }

    memcpy(a1, a2, v13);
    goto LABEL_15;
  }

  if (*(a2 + v10))
  {
    v11 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v6 + 16))(a1, a2, v5);
  *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    a1[v10] = 0;
  }

LABEL_15:
  v14 = v9 + 9;
  if (v7)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  __n = v15;
  v39 = a1;
  v17 = v15 + v16;
  v18 = &a1[v15 + v16];
  v19 = ~v16;
  v20 = v10;
  v21 = (v18 & ~v16);
  v22 = ((a2 + v17) & ~v16);
  if (v7)
  {
    v23 = v20;
    if (!(*(v6 + 48))((a2 + v17) & ~v16, v7, v40))
    {
      goto LABEL_28;
    }

LABEL_25:
    v25 = __n;
    memcpy(v21, ((a2 + v17) & ~v16), __n);
    v26 = ((v21 + v17) & v19);
    v27 = ((v22 + v17) & v19);
    v28 = v40;
    if (v7)
    {
      goto LABEL_30;
    }

    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

LABEL_33:
    v31 = v29 - 1;
    if (v23)
    {
      v31 = 0;
      v32 = *v27;
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v31) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v26, v27, v25);
    goto LABEL_40;
  }

  v23 = v20;
  if (*(v22 + v20))
  {
    v24 = *(v22 + v20) - 1;
    if (v20)
    {
      v24 = 0;
      LODWORD(v20) = *v22;
    }

    if ((v20 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v30 = (a2 + v17) & ~v16;
  v28 = v40;
  (*(v6 + 16))(v21, v30, v40);
  *((v21 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v21 + v23) = 0;
    v26 = ((v21 + v16 + v14) & v19);
    v27 = ((v22 + v16 + v14) & v19);
    v25 = __n;
    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v26 = ((v21 + v16 + v23) & v19);
  v27 = ((v22 + v16 + v23) & v19);
  v25 = __n;
LABEL_30:
  if ((*(v6 + 48))(v27, v7, v28))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v6 + 16))(v26, v27, v28);
  *((v26 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v26 + v23) = 0;
  }

LABEL_40:
  v33 = (v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  *(v33 + 8) = *(v34 + 8);
  *v33 = v35;
  *((v26 + v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

int *assignWithCopy for VelocitySampler(int *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v59 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v62 = v9 + 8;
  if (v7)
  {
    v11 = *(v6 + 48);
    v12 = v11(a1, v7, v5);
    v13 = v11(a2, v7, v5);
    v10 = v9 + 8;
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v7)
      {
        v20 = v10;
      }

      else
      {
        v20 = v9 + 9;
      }

      memcpy(a1, a2, v20);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v10) || ((v14 = *(a1 + v10) - 1, v9 == -8) ? (v15 = 0) : (v14 = 0, v15 = *a1), (v15 | v14) == 0xFFFFFFFF))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_18:
    if (v13)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_20;
    }

LABEL_24:
    (*(v6 + 24))(a1, a2, v5);
    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v10))
  {
    v16 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = *a2;
    }

    if ((v17 | v16) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v6 + 16))(a1, a2, v5);
  *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_29:
  v21 = v9 + 9;
  if (v7)
  {
    v22 = v10;
  }

  else
  {
    v22 = v9 + 9;
  }

  v23 = *(v6 + 80) & 0xF8 | 7;
  __n = v22;
  v24 = v22 + v23;
  v25 = a1 + v22 + v23;
  v26 = ~v23;
  v27 = v10;
  v28 = (v25 & ~v23);
  v29 = ((a2 + v24) & ~v23);
  v61 = a1;
  if (v7)
  {
    v58 = v21;
    v30 = v6;
    v31 = *(v6 + 48);
    v32 = v31(v28, v7, v5);
    v33 = v31(v29, v7, v5);
    v6 = v30;
    v26 = ~v23;
    v34 = __n;
    if (v32)
    {
      if (!v33)
      {
LABEL_44:
        (*(v6 + 16))(v28, v29, v5);
        *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
        v7 = v7;
        if (v7)
        {
          v39 = ((v28 + v23 + v62) & v26);
          v40 = ((v29 + v23 + v62) & v26);
          v41 = v61;
          goto LABEL_55;
        }

        *(v28 + v62) = 0;
        v39 = ((v28 + v23 + v58) & v26);
        v40 = ((v29 + v23 + v58) & v26);
        v41 = v61;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v33)
    {
      (*(v6 + 8))(v28, v5);
LABEL_52:
      memcpy(v28, v29, v34);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v28 + v27))
  {
    v35 = *(v28 + v27) - 1;
    if (v27)
    {
      v35 = 0;
      LODWORD(v27) = *v28;
    }

    v36 = v27 | v35;
    v27 = v62;
    if (v36 != -1)
    {
      v58 = v21;
      v34 = __n;
      if (!*(v29 + v62))
      {
        goto LABEL_44;
      }

      v37 = *(v29 + v62) - 1;
      v38 = v62;
      if (v62)
      {
        v37 = 0;
        v38 = *v29;
      }

      if ((v38 | v37) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v34 = __n;
  if (*(v29 + v27))
  {
    v42 = *(v29 + v27) - 1;
    v43 = v62;
    if (v62)
    {
      v42 = 0;
      v43 = *v29;
    }

    v33 = (v43 | v42) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v6 + 24))(v28, v29, v5);
  *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v7 = v7;
  v39 = ((v28 + v24) & v26);
  v40 = ((v29 + v24) & v26);
  v41 = v61;
  if (v7)
  {
LABEL_55:
    v44 = *(v6 + 48);
    v45 = v44(v39, v7, v5);
    v46 = v44(v40, v7, v5);
    if (v45)
    {
      if (!v46)
      {
LABEL_57:
        v47 = v62;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v39, v40, v34);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v47 = v62;
  if (!*(v39 + v62) || ((v48 = *(v39 + v62) - 1, !v62) ? (v49 = 0) : (v48 = 0, v49 = *v39), (v49 | v48) == 0xFFFFFFFF))
  {
    if (!*(v40 + v62))
    {
      goto LABEL_77;
    }

    v52 = *(v40 + v62) - 1;
    if (v62)
    {
      v52 = 0;
      v53 = *v40;
    }

    else
    {
      v53 = 0;
    }

    v46 = (v53 | v52) + 1;
LABEL_74:
    if (v46)
    {
      (*(v6 + 8))(v39, v5);
      goto LABEL_76;
    }

LABEL_77:
    (*(v6 + 24))(v39, v40, v5);
    *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v40 + v62))
  {
    v50 = *(v40 + v62) - 1;
    if (v62)
    {
      v50 = 0;
      v51 = *v40;
    }

    else
    {
      v51 = 0;
    }

    if ((v51 | v50) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v6 + 16))(v39, v40, v5);
  *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v39 + v47) = 0;
  }

LABEL_78:
  v54 = (v39 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v40 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *v55;
  *(v54 + 8) = *(v55 + 8);
  *v54 = v56;
  *((v39 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v41;
}

char *initializeWithTake for VelocitySampler(char *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v37 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v40 = v5;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v7)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v9 + 9;
    }

    memcpy(a1, a2, v13);
    goto LABEL_15;
  }

  if (*(a2 + v10))
  {
    v11 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v6 + 32))(a1, a2, v5);
  *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    a1[v10] = 0;
  }

LABEL_15:
  v14 = v9 + 9;
  if (v7)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  __n = v15;
  v39 = a1;
  v17 = v15 + v16;
  v18 = &a1[v15 + v16];
  v19 = ~v16;
  v20 = v10;
  v21 = (v18 & ~v16);
  v22 = ((a2 + v17) & ~v16);
  if (v7)
  {
    v23 = v20;
    if (!(*(v6 + 48))((a2 + v17) & ~v16, v7, v40))
    {
      goto LABEL_28;
    }

LABEL_25:
    v25 = __n;
    memcpy(v21, ((a2 + v17) & ~v16), __n);
    v26 = ((v21 + v17) & v19);
    v27 = ((v22 + v17) & v19);
    v28 = v40;
    if (v7)
    {
      goto LABEL_30;
    }

    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

LABEL_33:
    v31 = v29 - 1;
    if (v23)
    {
      v31 = 0;
      v32 = *v27;
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v31) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v26, v27, v25);
    goto LABEL_40;
  }

  v23 = v20;
  if (*(v22 + v20))
  {
    v24 = *(v22 + v20) - 1;
    if (v20)
    {
      v24 = 0;
      LODWORD(v20) = *v22;
    }

    if ((v20 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v30 = (a2 + v17) & ~v16;
  v28 = v40;
  (*(v6 + 32))(v21, v30, v40);
  *((v21 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v21 + v23) = 0;
    v26 = ((v21 + v16 + v14) & v19);
    v27 = ((v22 + v16 + v14) & v19);
    v25 = __n;
    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v26 = ((v21 + v16 + v23) & v19);
  v27 = ((v22 + v16 + v23) & v19);
  v25 = __n;
LABEL_30:
  if ((*(v6 + 48))(v27, v7, v28))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v6 + 32))(v26, v27, v28);
  *((v26 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v26 + v23) = 0;
  }

LABEL_40:
  v33 = (v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  *(v33 + 8) = *(v34 + 8);
  *v33 = v35;
  *((v26 + v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

int *assignWithTake for VelocitySampler(int *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v59 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v62 = v9 + 8;
  if (v7)
  {
    v11 = *(v6 + 48);
    v12 = v11(a1, v7, v5);
    v13 = v11(a2, v7, v5);
    v10 = v9 + 8;
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v7)
      {
        v20 = v10;
      }

      else
      {
        v20 = v9 + 9;
      }

      memcpy(a1, a2, v20);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v10) || ((v14 = *(a1 + v10) - 1, v9 == -8) ? (v15 = 0) : (v14 = 0, v15 = *a1), (v15 | v14) == 0xFFFFFFFF))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_18:
    if (v13)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_20;
    }

LABEL_24:
    (*(v6 + 40))(a1, a2, v5);
    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v10))
  {
    v16 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = *a2;
    }

    if ((v17 | v16) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v6 + 32))(a1, a2, v5);
  *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_29:
  v21 = v9 + 9;
  if (v7)
  {
    v22 = v10;
  }

  else
  {
    v22 = v9 + 9;
  }

  v23 = *(v6 + 80) & 0xF8 | 7;
  __n = v22;
  v24 = v22 + v23;
  v25 = a1 + v22 + v23;
  v26 = ~v23;
  v27 = v10;
  v28 = (v25 & ~v23);
  v29 = ((a2 + v24) & ~v23);
  v61 = a1;
  if (v7)
  {
    v58 = v21;
    v30 = v6;
    v31 = *(v6 + 48);
    v32 = v31(v28, v7, v5);
    v33 = v31(v29, v7, v5);
    v6 = v30;
    v26 = ~v23;
    v34 = __n;
    if (v32)
    {
      if (!v33)
      {
LABEL_44:
        (*(v6 + 32))(v28, v29, v5);
        *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
        v7 = v7;
        if (v7)
        {
          v39 = ((v28 + v23 + v62) & v26);
          v40 = ((v29 + v23 + v62) & v26);
          v41 = v61;
          goto LABEL_55;
        }

        *(v28 + v62) = 0;
        v39 = ((v28 + v23 + v58) & v26);
        v40 = ((v29 + v23 + v58) & v26);
        v41 = v61;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v33)
    {
      (*(v6 + 8))(v28, v5);
LABEL_52:
      memcpy(v28, v29, v34);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v28 + v27))
  {
    v35 = *(v28 + v27) - 1;
    if (v27)
    {
      v35 = 0;
      LODWORD(v27) = *v28;
    }

    v36 = v27 | v35;
    v27 = v62;
    if (v36 != -1)
    {
      v58 = v21;
      v34 = __n;
      if (!*(v29 + v62))
      {
        goto LABEL_44;
      }

      v37 = *(v29 + v62) - 1;
      v38 = v62;
      if (v62)
      {
        v37 = 0;
        v38 = *v29;
      }

      if ((v38 | v37) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v34 = __n;
  if (*(v29 + v27))
  {
    v42 = *(v29 + v27) - 1;
    v43 = v62;
    if (v62)
    {
      v42 = 0;
      v43 = *v29;
    }

    v33 = (v43 | v42) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v6 + 40))(v28, v29, v5);
  *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v7 = v7;
  v39 = ((v28 + v24) & v26);
  v40 = ((v29 + v24) & v26);
  v41 = v61;
  if (v7)
  {
LABEL_55:
    v44 = *(v6 + 48);
    v45 = v44(v39, v7, v5);
    v46 = v44(v40, v7, v5);
    if (v45)
    {
      if (!v46)
      {
LABEL_57:
        v47 = v62;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v39, v40, v34);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v47 = v62;
  if (!*(v39 + v62) || ((v48 = *(v39 + v62) - 1, !v62) ? (v49 = 0) : (v48 = 0, v49 = *v39), (v49 | v48) == 0xFFFFFFFF))
  {
    if (!*(v40 + v62))
    {
      goto LABEL_77;
    }

    v52 = *(v40 + v62) - 1;
    if (v62)
    {
      v52 = 0;
      v53 = *v40;
    }

    else
    {
      v53 = 0;
    }

    v46 = (v53 | v52) + 1;
LABEL_74:
    if (v46)
    {
      (*(v6 + 8))(v39, v5);
      goto LABEL_76;
    }

LABEL_77:
    (*(v6 + 40))(v39, v40, v5);
    *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v40 + v62))
  {
    v50 = *(v40 + v62) - 1;
    if (v62)
    {
      v50 = 0;
      v51 = *v40;
    }

    else
    {
      v51 = 0;
    }

    if ((v51 | v50) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v6 + 32))(v39, v40, v5);
  *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v39 + v47) = 0;
  }

LABEL_78:
  v54 = (v39 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v40 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *v55;
  *(v54 + 8) = *(v55 + 8);
  *v54 = v56;
  *((v39 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v41;
}

uint64_t getEnumTagSinglePayload for VelocitySampler(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!v5)
  {
    v7 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v7;
  v9 = *(v4 + 80) & 0xF8 | 7;
  v10 = ((v8 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
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

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v19 = (*(v4 + 48))(a1);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v6 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for VelocitySampler(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 9;
  if (v7)
  {
    v12 = v11;
  }

  v8 = *(v6 + 80);
  v13 = ((v12 + ((v12 + (v8 & 0xF8 | 7) + ((v12 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7))) & ~(v8 & 0xF8 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v14 = a3 - v9;
    if (((v12 + ((v12 + (v8 & 0xF8 | 7) + ((v12 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7))) & ~(v8 & 0xF8 | 7)) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2 - v9;
    }

    if (v13)
    {
      v18 = ~v9 + a2;
      v19 = a1;
      bzero(a1, v13);
      a1 = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v5)
    {
      *(a1 + v13) = v17;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v13) = 0;
  }

  else if (v5)
  {
    *(a1 + v13) = 0;
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
  if (v7 >= 2)
  {
    v20 = a2 - v7;
    if (a2 >= v7)
    {
      if (v11)
      {
        v22 = a1;
        bzero(a1, v11);
        *v22 = v20;
      }
    }

    else
    {
      v21 = *(v6 + 56);

      v21();
    }
  }
}

uint64_t type metadata completion function for AnimatableVelocitySampler(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for VelocitySampler(319, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatableVelocitySampler(void *a1, _DWORD *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v11 = v9 + 9;
  if (v7)
  {
    v12 = v9 + 8;
  }

  else
  {
    v12 = v9 + 9;
  }

  v13 = *(v6 + 80);
  v14 = v13 & 0xF8 | 7;
  if ((v13 & 0x1000F8) == 0 && ((v12 + ((v12 + v14 + ((v12 + v14) & ~v14)) & ~v14) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v17 = AssociatedTypeWitness;
    v36 = v8 + 7;
    if (v7)
    {
      if (!(*(v6 + 48))(a2, v7, AssociatedTypeWitness))
      {
        goto LABEL_21;
      }
    }

    else if (!*(a2 + v10) || ((v18 = *(a2 + v10) - 1, v9 == -8) ? (v19 = 0) : (v18 = 0, v19 = *a2), (v19 | v18) == 0xFFFFFFFF))
    {
LABEL_21:
      (*(v6 + 16))(a1, a2, v17);
      v23 = a1 + 7;
      v24 = a2 + 7;
      *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v7)
      {
        v20 = (&v23[v10] & 0xFFFFFFFFFFFFFFF8);
        v21 = (&v24[v10] & 0xFFFFFFFFFFFFFFF8);
LABEL_23:
        if (!(*(v6 + 48))(v21, v7, v17))
        {
          goto LABEL_33;
        }

LABEL_30:
        memcpy(v20, v21, v12);
        v27 = ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v28 = ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v7)
        {
          goto LABEL_35;
        }

        v29 = *(v28 + v10);
        if (!*(v28 + v10))
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      *(a1 + v10) = 0;
      v20 = (&v23[v11] & 0xFFFFFFFFFFFFFFF8);
      v21 = (&v24[v11] & 0xFFFFFFFFFFFFFFF8);
      v22 = *(v21 + v10);
      if (*(v21 + v10))
      {
LABEL_26:
        v25 = v22 - 1;
        if (v9 == -8)
        {
          v26 = 0;
        }

        else
        {
          v25 = 0;
          v26 = *v21;
        }

        if ((v26 | v25) == 0xFFFFFFFF)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

LABEL_33:
      (*(v6 + 16))(v20, v21, v17);
      *((v20 + v36) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v36) & 0xFFFFFFFFFFFFFFF8);
      if (v7)
      {
        v27 = ((v20 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
        v28 = ((v21 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
LABEL_35:
        if (!(*(v6 + 48))(v28, v7, v17))
        {
LABEL_43:
          (*(v6 + 16))(v27, v28, v17);
          *(&v27[v36] & 0xFFFFFFFFFFFFFFF8) = *((v28 + v36) & 0xFFFFFFFFFFFFFFF8);
          if (!v7)
          {
            v27[v10] = 0;
          }

          goto LABEL_45;
        }

LABEL_42:
        memcpy(v27, v28, v12);
LABEL_45:
        v32 = &v27[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
        v33 = (v28 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
        v34 = *v33;
        *(v32 + 8) = *(v33 + 8);
        *v32 = v34;
        *(&v27[v12 + 23] & 0xFFFFFFFFFFFFFFF8) = *((v28 + v12 + 23) & 0xFFFFFFFFFFFFFFF8);
        return a1;
      }

      *(v20 + v10) = 0;
      v27 = ((v20 + v9 + 16) & 0xFFFFFFFFFFFFFFF8);
      v28 = ((v21 + v9 + 16) & 0xFFFFFFFFFFFFFFF8);
      v29 = *(v28 + v10);
      if (!*(v28 + v10))
      {
        goto LABEL_43;
      }

LABEL_38:
      v30 = v29 - 1;
      if (v9 == -8)
      {
        v31 = 0;
      }

      else
      {
        v30 = 0;
        v31 = *v28;
      }

      if ((v31 | v30) == 0xFFFFFFFF)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    memcpy(a1, a2, v12);
    v20 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      goto LABEL_23;
    }

    v22 = *(v21 + v10);
    if (*(v21 + v10))
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v16 = *a2;
  *a1 = *a2;
  a1 = (v16 + ((v14 + 16) & ~v14));

  return a1;
}

uint64_t destroy for AnimatableVelocitySampler(_DWORD *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 84);
  v6 = (*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v25 = v4;
  if (v5)
  {
    v8 = (*(v4 + 48))(a1, v5, AssociatedTypeWitness);
    v4 = v25;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!*(a1 + v7) || ((v9 = *(a1 + v7) - 1, v6 == -8) ? (v10 = 0) : (v9 = 0, v10 = *a1), (v10 | v9) == 0xFFFFFFFF))
  {
LABEL_9:
    (*(v4 + 8))(a1, AssociatedTypeWitness);
    v4 = v25;
  }

LABEL_10:
  v11 = v6 + 9;
  if (v5)
  {
    v11 = v6 + 8;
  }

  v12 = *(v4 + 80) & 0xF8 | 7;
  v13 = v11 + v12;
  v14 = ~v12;
  v15 = ((a1 + v11 + v12) & ~v12);
  if (v5)
  {
    v16 = (*(v4 + 48))(v15, v5, AssociatedTypeWitness);
    v4 = v25;
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!*(v15 + v7) || ((v17 = *(v15 + v7) - 1, !v7) ? (v18 = 0) : (v17 = 0, v18 = *v15), (v18 | v17) == 0xFFFFFFFF))
  {
LABEL_20:
    (*(v4 + 8))(v15, AssociatedTypeWitness);
    v4 = v25;
  }

LABEL_21:
  v19 = ((v15 + v13) & v14);
  if (v5)
  {
    result = (*(v4 + 48))(v19, v5, AssociatedTypeWitness);
    v4 = v25;
    if (result)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!*(v19 + v7) || ((v21 = *(v19 + v7) - 1, !v7) ? (v22 = 0) : (v21 = 0, v22 = *v19), v23 = v22 | v21, result = (v23 + 1), v23 == -1))
  {
LABEL_30:
    v24 = *(v4 + 8);

    return v24(v19, AssociatedTypeWitness);
  }

  return result;
}

char *initializeWithCopy for AnimatableVelocitySampler(char *a1, int *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v38 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v41 = AssociatedTypeWitness;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, AssociatedTypeWitness))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v7)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v9 + 9;
    }

    memcpy(a1, a2, v13);
    goto LABEL_15;
  }

  if (*(a2 + v10))
  {
    v11 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    a1[v10] = 0;
  }

LABEL_15:
  v14 = v9 + 9;
  if (v7)
  {
    v15 = v9 + 8;
  }

  else
  {
    v15 = v9 + 9;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  __n = v15;
  v40 = a1;
  v17 = v15 + v16;
  v18 = &a1[v15 + v16];
  v19 = ~v16;
  v20 = v10;
  v21 = (v18 & ~v16);
  v22 = ((a2 + v17) & ~v16);
  if (v7)
  {
    v23 = v20;
    if (!(*(v6 + 48))((a2 + v17) & ~v16, v7, v41))
    {
      goto LABEL_28;
    }

LABEL_25:
    v25 = ((a2 + v17) & ~v16);
    v26 = __n;
    memcpy(v21, v25, __n);
    v27 = ((v21 + v17) & v19);
    v28 = ((v22 + v17) & v19);
    v29 = v41;
    if (v7)
    {
      goto LABEL_30;
    }

    v30 = *(v28 + v23);
    if (!*(v28 + v23))
    {
      goto LABEL_38;
    }

LABEL_33:
    v32 = v30 - 1;
    if (v23)
    {
      v32 = 0;
      v33 = *v28;
    }

    else
    {
      v33 = 0;
    }

    if ((v33 | v32) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v27, v28, v26);
    goto LABEL_40;
  }

  v23 = v20;
  if (*(v22 + v20))
  {
    v24 = *(v22 + v20) - 1;
    if (v20)
    {
      v24 = 0;
      LODWORD(v20) = *v22;
    }

    if ((v20 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v31 = (a2 + v17) & ~v16;
  v29 = v41;
  (*(v6 + 16))(v21, v31, v41);
  *((v21 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v38) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v21 + v23) = 0;
    v27 = ((v21 + v16 + v14) & v19);
    v28 = ((v22 + v16 + v14) & v19);
    v26 = __n;
    v30 = *(v28 + v23);
    if (!*(v28 + v23))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = ((v21 + v16 + v23) & v19);
  v28 = ((v22 + v16 + v23) & v19);
  v26 = __n;
LABEL_30:
  if ((*(v6 + 48))(v28, v7, v29))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v6 + 16))(v27, v28, v29);
  *((v27 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v38) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v27 + v23) = 0;
  }

LABEL_40:
  v34 = (v27 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v28 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 8) = *(v35 + 8);
  *v34 = v36;
  *((v27 + v26 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v40;
}

int *assignWithCopy for AnimatableVelocitySampler(int *a1, int *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v59 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v62 = v9 + 8;
  if (v7)
  {
    v11 = *(v6 + 48);
    v12 = v11(a1, v7, AssociatedTypeWitness);
    v13 = v11(a2, v7, AssociatedTypeWitness);
    v10 = v9 + 8;
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v7)
      {
        v20 = v10;
      }

      else
      {
        v20 = v9 + 9;
      }

      memcpy(a1, a2, v20);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v10) || ((v14 = *(a1 + v10) - 1, v9 == -8) ? (v15 = 0) : (v14 = 0, v15 = *a1), (v15 | v14) == 0xFFFFFFFF))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_18:
    if (v13)
    {
      (*(v6 + 8))(a1, AssociatedTypeWitness);
      goto LABEL_20;
    }

LABEL_24:
    (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v10))
  {
    v16 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = *a2;
    }

    if ((v17 | v16) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_29:
  v21 = v9 + 9;
  if (v7)
  {
    v22 = v10;
  }

  else
  {
    v22 = v9 + 9;
  }

  v23 = *(v6 + 80) & 0xF8 | 7;
  __n = v22;
  v24 = v22 + v23;
  v25 = a1 + v22 + v23;
  v26 = ~v23;
  v27 = v10;
  v28 = (v25 & ~v23);
  v29 = ((a2 + v24) & ~v23);
  v61 = a1;
  if (v7)
  {
    v58 = v21;
    v30 = v6;
    v31 = *(v6 + 48);
    v32 = v31(v28, v7, AssociatedTypeWitness);
    v33 = v31(v29, v7, AssociatedTypeWitness);
    v6 = v30;
    v26 = ~v23;
    v34 = __n;
    if (v32)
    {
      if (!v33)
      {
LABEL_44:
        (*(v6 + 16))(v28, v29, AssociatedTypeWitness);
        *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
        v7 = v7;
        if (v7)
        {
          v39 = ((v28 + v23 + v62) & v26);
          v40 = ((v29 + v23 + v62) & v26);
          v41 = v61;
          goto LABEL_55;
        }

        *(v28 + v62) = 0;
        v39 = ((v28 + v23 + v58) & v26);
        v40 = ((v29 + v23 + v58) & v26);
        v41 = v61;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v33)
    {
      (*(v6 + 8))(v28, AssociatedTypeWitness);
LABEL_52:
      memcpy(v28, v29, v34);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v28 + v27))
  {
    v35 = *(v28 + v27) - 1;
    if (v27)
    {
      v35 = 0;
      LODWORD(v27) = *v28;
    }

    v36 = v27 | v35;
    v27 = v62;
    if (v36 != -1)
    {
      v58 = v21;
      v34 = __n;
      if (!*(v29 + v62))
      {
        goto LABEL_44;
      }

      v37 = *(v29 + v62) - 1;
      v38 = v62;
      if (v62)
      {
        v37 = 0;
        v38 = *v29;
      }

      if ((v38 | v37) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v34 = __n;
  if (*(v29 + v27))
  {
    v42 = *(v29 + v27) - 1;
    v43 = v62;
    if (v62)
    {
      v42 = 0;
      v43 = *v29;
    }

    v33 = (v43 | v42) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v6 + 24))(v28, v29, AssociatedTypeWitness);
  *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v7 = v7;
  v39 = ((v28 + v24) & v26);
  v40 = ((v29 + v24) & v26);
  v41 = v61;
  if (v7)
  {
LABEL_55:
    v44 = *(v6 + 48);
    v45 = v44(v39, v7, AssociatedTypeWitness);
    v46 = v44(v40, v7, AssociatedTypeWitness);
    if (v45)
    {
      if (!v46)
      {
LABEL_57:
        v47 = v62;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v39, v40, v34);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v47 = v62;
  if (!*(v39 + v62) || ((v48 = *(v39 + v62) - 1, !v62) ? (v49 = 0) : (v48 = 0, v49 = *v39), (v49 | v48) == 0xFFFFFFFF))
  {
    if (!*(v40 + v62))
    {
      goto LABEL_77;
    }

    v52 = *(v40 + v62) - 1;
    if (v62)
    {
      v52 = 0;
      v53 = *v40;
    }

    else
    {
      v53 = 0;
    }

    v46 = (v53 | v52) + 1;
LABEL_74:
    if (v46)
    {
      (*(v6 + 8))(v39, AssociatedTypeWitness);
      goto LABEL_76;
    }

LABEL_77:
    (*(v6 + 24))(v39, v40, AssociatedTypeWitness);
    *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v40 + v62))
  {
    v50 = *(v40 + v62) - 1;
    if (v62)
    {
      v50 = 0;
      v51 = *v40;
    }

    else
    {
      v51 = 0;
    }

    if ((v51 | v50) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v6 + 16))(v39, v40, AssociatedTypeWitness);
  *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v39 + v47) = 0;
  }

LABEL_78:
  v54 = (v39 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v40 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *v55;
  *(v54 + 8) = *(v55 + 8);
  *v54 = v56;
  *((v39 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v41;
}

char *initializeWithTake for AnimatableVelocitySampler(char *a1, int *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v38 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v41 = AssociatedTypeWitness;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, AssociatedTypeWitness))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v7)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v9 + 9;
    }

    memcpy(a1, a2, v13);
    goto LABEL_15;
  }

  if (*(a2 + v10))
  {
    v11 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
  *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    a1[v10] = 0;
  }

LABEL_15:
  v14 = v9 + 9;
  if (v7)
  {
    v15 = v9 + 8;
  }

  else
  {
    v15 = v9 + 9;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  __n = v15;
  v40 = a1;
  v17 = v15 + v16;
  v18 = &a1[v15 + v16];
  v19 = ~v16;
  v20 = v10;
  v21 = (v18 & ~v16);
  v22 = ((a2 + v17) & ~v16);
  if (v7)
  {
    v23 = v20;
    if (!(*(v6 + 48))((a2 + v17) & ~v16, v7, v41))
    {
      goto LABEL_28;
    }

LABEL_25:
    v25 = ((a2 + v17) & ~v16);
    v26 = __n;
    memcpy(v21, v25, __n);
    v27 = ((v21 + v17) & v19);
    v28 = ((v22 + v17) & v19);
    v29 = v41;
    if (v7)
    {
      goto LABEL_30;
    }

    v30 = *(v28 + v23);
    if (!*(v28 + v23))
    {
      goto LABEL_38;
    }

LABEL_33:
    v32 = v30 - 1;
    if (v23)
    {
      v32 = 0;
      v33 = *v28;
    }

    else
    {
      v33 = 0;
    }

    if ((v33 | v32) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v27, v28, v26);
    goto LABEL_40;
  }

  v23 = v20;
  if (*(v22 + v20))
  {
    v24 = *(v22 + v20) - 1;
    if (v20)
    {
      v24 = 0;
      LODWORD(v20) = *v22;
    }

    if ((v20 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v31 = (a2 + v17) & ~v16;
  v29 = v41;
  (*(v6 + 32))(v21, v31, v41);
  *((v21 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v38) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v21 + v23) = 0;
    v27 = ((v21 + v16 + v14) & v19);
    v28 = ((v22 + v16 + v14) & v19);
    v26 = __n;
    v30 = *(v28 + v23);
    if (!*(v28 + v23))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = ((v21 + v16 + v23) & v19);
  v28 = ((v22 + v16 + v23) & v19);
  v26 = __n;
LABEL_30:
  if ((*(v6 + 48))(v28, v7, v29))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v6 + 32))(v27, v28, v29);
  *((v27 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v38) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v27 + v23) = 0;
  }

LABEL_40:
  v34 = (v27 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v28 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 8) = *(v35 + 8);
  *v34 = v36;
  *((v27 + v26 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v40;
}

int *assignWithTake for AnimatableVelocitySampler(int *a1, int *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v59 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v62 = v9 + 8;
  if (v7)
  {
    v11 = *(v6 + 48);
    v12 = v11(a1, v7, AssociatedTypeWitness);
    v13 = v11(a2, v7, AssociatedTypeWitness);
    v10 = v9 + 8;
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v7)
      {
        v20 = v10;
      }

      else
      {
        v20 = v9 + 9;
      }

      memcpy(a1, a2, v20);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v10) || ((v14 = *(a1 + v10) - 1, v9 == -8) ? (v15 = 0) : (v14 = 0, v15 = *a1), (v15 | v14) == 0xFFFFFFFF))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_18:
    if (v13)
    {
      (*(v6 + 8))(a1, AssociatedTypeWitness);
      goto LABEL_20;
    }

LABEL_24:
    (*(v6 + 40))(a1, a2, AssociatedTypeWitness);
    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v10))
  {
    v16 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = *a2;
    }

    if ((v17 | v16) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
  *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_29:
  v21 = v9 + 9;
  if (v7)
  {
    v22 = v10;
  }

  else
  {
    v22 = v9 + 9;
  }

  v23 = *(v6 + 80) & 0xF8 | 7;
  __n = v22;
  v24 = v22 + v23;
  v25 = a1 + v22 + v23;
  v26 = ~v23;
  v27 = v10;
  v28 = (v25 & ~v23);
  v29 = ((a2 + v24) & ~v23);
  v61 = a1;
  if (v7)
  {
    v58 = v21;
    v30 = v6;
    v31 = *(v6 + 48);
    v32 = v31(v28, v7, AssociatedTypeWitness);
    v33 = v31(v29, v7, AssociatedTypeWitness);
    v6 = v30;
    v26 = ~v23;
    v34 = __n;
    if (v32)
    {
      if (!v33)
      {
LABEL_44:
        (*(v6 + 32))(v28, v29, AssociatedTypeWitness);
        *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
        v7 = v7;
        if (v7)
        {
          v39 = ((v28 + v23 + v62) & v26);
          v40 = ((v29 + v23 + v62) & v26);
          v41 = v61;
          goto LABEL_55;
        }

        *(v28 + v62) = 0;
        v39 = ((v28 + v23 + v58) & v26);
        v40 = ((v29 + v23 + v58) & v26);
        v41 = v61;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v33)
    {
      (*(v6 + 8))(v28, AssociatedTypeWitness);
LABEL_52:
      memcpy(v28, v29, v34);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v28 + v27))
  {
    v35 = *(v28 + v27) - 1;
    if (v27)
    {
      v35 = 0;
      LODWORD(v27) = *v28;
    }

    v36 = v27 | v35;
    v27 = v62;
    if (v36 != -1)
    {
      v58 = v21;
      v34 = __n;
      if (!*(v29 + v62))
      {
        goto LABEL_44;
      }

      v37 = *(v29 + v62) - 1;
      v38 = v62;
      if (v62)
      {
        v37 = 0;
        v38 = *v29;
      }

      if ((v38 | v37) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v34 = __n;
  if (*(v29 + v27))
  {
    v42 = *(v29 + v27) - 1;
    v43 = v62;
    if (v62)
    {
      v42 = 0;
      v43 = *v29;
    }

    v33 = (v43 | v42) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v6 + 40))(v28, v29, AssociatedTypeWitness);
  *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v7 = v7;
  v39 = ((v28 + v24) & v26);
  v40 = ((v29 + v24) & v26);
  v41 = v61;
  if (v7)
  {
LABEL_55:
    v44 = *(v6 + 48);
    v45 = v44(v39, v7, AssociatedTypeWitness);
    v46 = v44(v40, v7, AssociatedTypeWitness);
    if (v45)
    {
      if (!v46)
      {
LABEL_57:
        v47 = v62;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v39, v40, v34);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v47 = v62;
  if (!*(v39 + v62) || ((v48 = *(v39 + v62) - 1, !v62) ? (v49 = 0) : (v48 = 0, v49 = *v39), (v49 | v48) == 0xFFFFFFFF))
  {
    if (!*(v40 + v62))
    {
      goto LABEL_77;
    }

    v52 = *(v40 + v62) - 1;
    if (v62)
    {
      v52 = 0;
      v53 = *v40;
    }

    else
    {
      v53 = 0;
    }

    v46 = (v53 | v52) + 1;
LABEL_74:
    if (v46)
    {
      (*(v6 + 8))(v39, AssociatedTypeWitness);
      goto LABEL_76;
    }

LABEL_77:
    (*(v6 + 40))(v39, v40, AssociatedTypeWitness);
    *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v40 + v62))
  {
    v50 = *(v40 + v62) - 1;
    if (v62)
    {
      v50 = 0;
      v51 = *v40;
    }

    else
    {
      v51 = 0;
    }

    if ((v51 | v50) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v6 + 32))(v39, v40, AssociatedTypeWitness);
  *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v39 + v47) = 0;
  }

LABEL_78:
  v54 = (v39 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v40 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *v55;
  *(v54 + 8) = *(v55 + 8);
  *v54 = v56;
  *((v39 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v41;
}

uint64_t getEnumTagSinglePayload for AnimatableVelocitySampler(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = 8;
  if (!v7)
  {
    v9 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v9;
  v11 = *(v6 + 80) & 0xF8 | 7;
  v12 = ((v10 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v8 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (v17)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_28:
    if (v7 >= 2)
    {
      v20 = (*(v6 + 48))(a1);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v18 = v17 - 1;
  if (v13)
  {
    v18 = 0;
    LODWORD(v13) = *a1;
  }

  return v8 + (v13 | v18) + 1;
}

void storeEnumTagSinglePayload for AnimatableVelocitySampler(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v11 = v9 - 1;
  if (!v9)
  {
    v11 = 0;
  }

  v12 = (*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 8;
  v14 = v12 + 9;
  if (v9)
  {
    v14 = v13;
  }

  v10 = *(v8 + 80);
  v15 = ((v14 + ((v14 + (v10 & 0xF8 | 7) + ((v14 + (v10 & 0xF8 | 7)) & ~(v10 & 0xF8 | 7))) & ~(v10 & 0xF8 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    if (((v14 + ((v14 + (v10 & 0xF8 | 7) + ((v14 + (v10 & 0xF8 | 7)) & ~(v10 & 0xF8 | 7))) & ~(v10 & 0xF8 | 7)) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v11 + 1;
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
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 > v11)
  {
    if (v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = a2 - v11;
    }

    if (v15)
    {
      v19 = ~v11 + a2;
      bzero(a1, v15);
      *a1 = v19;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + v15) = v18;
      }

      else
      {
        *(a1 + v15) = v18;
      }
    }

    else if (v7)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v15) = 0;
  }

  else if (v7)
  {
    *(a1 + v15) = 0;
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
  if (v9 >= 2)
  {
    v20 = a2 - v9;
    if (a2 >= v9)
    {
      if (v13)
      {
        bzero(a1, v13);
        *a1 = v20;
      }
    }

    else
    {
      v21 = *(v8 + 56);

      v21(a1, a2 + 1);
    }
  }
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>, type metadata accessor for RequiredTapCountWriter);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA08CategoryC0VyA1_GTtB5(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for CategoryGesture<TappableEvent>, type metadata accessor for CategoryGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(void, uint64_t))
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, a6, &type metadata for TappableEvent, a7);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v7, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v8 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v9 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v11 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA06RepeatC0VyA1_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for RepeatGesture<TappableEvent>, type metadata accessor for RepeatGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA09SingleTapC0VyA1_GTtB5(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t))
{
  type metadata accessor for EventListener<SpatialEvent>(0, a6, &type metadata for TappableEvent, a7, a8);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v8, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v9 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v12 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA0Z6FilterVyA1_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for EventFilter<TappableEvent>, type metadata accessor for EventFilter);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA04Map2C0VyA1_AA08ModifierC0VyAA08DurationC0VyA1_GAA0Z8ListenerVyA1_GGA1_GTtB5Tm(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t), unint64_t *a8, uint64_t (*a9)(uint64_t))
{
  _s7SwiftUI11Map2GestureVyAA13TappableEventVAA08ModifierD0VyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGAEGMaTm_0(0, a6, a7, a8, a9);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v9, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v11 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v13 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA015CoordinateSpaceC0VyA2_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for CoordinateSpaceGesture);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v5, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v6 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v9 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA08DistanceC0VTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v5, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v6 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v9 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA014StateContainerC0VyAA08DistanceC0V9StateTypeVAA12SpatialEventVA2_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v5, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v6 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v9 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA12SpatialEventV_AA0Z8ListenerVyA1_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for EventListener<SpatialEvent>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v5, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v6 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v9 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFSd_AA08DurationC0VyAA13TappableEventVGTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v5, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v6 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v9 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA0Z8ListenerVyA1_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for EventListener<TappableEvent>, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA09DependentC033_8687835E41FEE17B108D67665C1D2D0BLLVyA1_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for DependentGesture<TappableEvent>, type metadata accessor for DependentGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for MapGesture<TappableEvent, TappableEvent>, &type metadata for TappableEvent, type metadata accessor for MapGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFyt_AA03AnyC0VyytGTtB5(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v5, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v6 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v9 + 4) = result;
  return result;
}

void _s7SwiftUI10AnyGestureV05_makeD07gesture6inputsAA01_D7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZyt_Tt2B5(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  specialized _GestureInputs.makeIndirectOutputs<A>()(v29);
  v6 = a2[5];
  *(&v35[4] + 4) = a2[4];
  *(&v35[5] + 4) = v6;
  *(&v35[6] + 4) = a2[6];
  v35[7] = *(a2 + 108);
  v7 = a2[1];
  *(v35 + 4) = *a2;
  *(&v35[1] + 4) = v7;
  v8 = a2[3];
  *(&v35[2] + 4) = a2[2];
  v9 = *v29;
  v10 = *&v29[4];
  v11 = *&v29[8];
  v12 = *&v29[16];
  *(&v35[3] + 4) = v8;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  *&v29[116] = v35[7];
  *&v29[68] = v35[4];
  *&v29[84] = v35[5];
  *&v29[100] = v35[6];
  *&v29[4] = v35[0];
  *&v29[20] = v35[1];
  *&v29[36] = v35[2];
  *&v29[52] = v35[3];
  *v29 = a1;
  *&v29[136] = v9;
  *&v29[140] = v10;
  *&v30 = v11;
  DWORD2(v30) = v12;
  v33 = 0;
  v31 = v13;
  v32 = 0;
  v34 = 0;
  v26 = *&v29[128];
  v27 = v30;
  v28[0] = v13;
  *(v28 + 12) = 0u;
  v22 = *&v29[64];
  v23 = *&v29[80];
  v24 = *&v29[96];
  v25 = *&v29[112];
  v18 = *v29;
  v19 = *&v29[16];
  v20 = *&v29[32];
  v21 = *&v29[48];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

  outlined init with copy of _GestureInputs(a2, v17);
  v14 = MEMORY[0x1E69E7CA8];
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGestureInfo<()>.Value, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGestureInfo.Value);
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGestureInfo<()>, v14 + 8, type metadata accessor for AnyGestureInfo);
  lazy protocol witness table accessor for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AnyGestureInfo<()>(v29, &lazy cache variable for type metadata for AnyGestureInfo<()>, v14 + 8, type metadata accessor for AnyGestureInfo);
  AGGraphGetFlags();
  AGGraphSetFlags();
  AGGraphSetIndirectDependency();
  if (v10 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectDependency();
  }

  v15 = *(v11 + 16);
  if (v15)
  {

    v16 = 48;
    do
    {
      AGGraphSetIndirectDependency();
      v16 += 24;
      --v15;
    }

    while (v15);
  }

  *a3 = v9;
  *(a3 + 4) = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
}

void specialized AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  specialized _GestureInputs.makeDefaultOutputs<A>()(&v73);
  v7 = v73;
  v8 = DWORD1(v73);
  v9 = *(&v73 + 1);
  v10 = v74;
  if (!AGSubgraphIsValid())
  {

LABEL_15:
    *a4 = v7;
    *(a4 + 4) = v8;
    *(a4 + 8) = v9;
    *(a4 + 16) = v10;
    return;
  }

  v11 = *(a1 + 30);
  v48 = AGSubgraphGetCurrent();
  if (!v48)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v46 = v9;
  v47 = v8;
  v45 = v10;
  v12 = AGSubgraphGetGraph();
  v13 = AGSubgraphCreate();

  swift_beginAccess();
  v14 = *(a2 + 280);
  *(a2 + 280) = v13;
  v15 = v13;

  AGSubgraphAddChild2();
  if (!*(a2 + 280))
  {
    goto LABEL_17;
  }

  AGSubgraphAddChild();
  if ((v11 & 0x10) != 0)
  {
    v16 = AGSubgraphGetGraph();
    v17 = AGSubgraphCreate();

    swift_beginAccess();
    v18 = *(a2 + 288);
    *(a2 + 288) = v17;
    v19 = v17;

    v20 = *(a2 + 280);
    if (!v20)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v21 = v20;
    AGSubgraphAddChild2();
  }

  v22 = *(a2 + 280);
  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  AGGraphClearUpdate();
  v43 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v24 = *a1;
  v25 = *(a1 + 2);
  v26 = *(a1 + 40);
  v67 = *(a1 + 24);
  v68 = v26;
  v27 = *(a1 + 72);
  *v69 = *(a1 + 56);
  *&v69[16] = v27;
  v70 = v24;
  v49 = a1[6];
  v50 = *(a1 + 14);
  v28 = *(a2 + 64);
  v71 = *(a2 + 48);
  *v72 = v28;
  v29 = *(a2 + 80);
  v30 = *(a2 + 96);
  v31 = *(a2 + 112);
  *&v72[64] = *(a2 + 128);
  *&v72[32] = v30;
  *&v72[48] = v31;
  *&v72[16] = v29;
  swift_beginAccess();
  v32 = *(a2 + 288);
  v44 = v23;
  if (v32)
  {
    v33 = *(a2 + 288);
LABEL_14:
    v35 = *(a1 + 11);
    v61 = v70;
    v62 = v25;
    v63 = v67;
    v64 = v68;
    v65[0] = *v69;
    *(v65 + 12) = *&v69[12];
    outlined init with copy of _GestureInputs(a1, &v73);
    outlined init with copy of _ViewInputs(&v71, &v73);
    v36 = v32;
    outlined destroy of _ViewInputs(&v61);
    v8 = *v72;
    v70 = v71;
    v67 = *&v72[8];
    v68 = *&v72[24];
    *v69 = *&v72[40];
    *&v69[12] = *&v72[52];
    swift_beginAccess();
    v37 = v8[3];
    v66[1] = v8[2];
    v66[2] = v37;
    v38 = v8[5];
    v66[3] = v8[4];
    v66[4] = v38;
    v66[0] = v8[1];
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v39 = swift_allocObject();
    memmove((v39 + 16), v8 + 1, 0x50uLL);
    outlined init with copy of CachedEnvironment(v66, &v73);

    v73 = v70;
    v75 = v67;
    v76 = v68;
    v77 = *v69;
    LODWORD(v35) = v11 & 0xFFFFFFFB;
    v78 = *&v69[16];
    v74 = v39;
    v79 = v33;
    v80 = v49;
    v81 = v50;
    v82 = v11 & 0xFFFFFFFB;
    outlined init with copy of _GestureInputs(&v73, &v51);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    KeyPath = swift_getKeyPath();
    LODWORD(v51) = OffsetAttribute2;
    *(&v51 + 1) = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
    v52 = KeyPath;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    type metadata accessor for Map<ResolvedStyledText, AnyGesture<()>>(0);
    lazy protocol witness table accessor for type _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Map<ResolvedStyledText, AnyGesture<()>> and conformance Map<A, B>, type metadata accessor for Map<ResolvedStyledText, AnyGesture<()>>, MEMORY[0x1E698D3A0]);

    v42 = Attribute.init<A>(body:value:flags:update:)();

    _s7SwiftUI10AnyGestureV05_makeD07gesture6inputsAA01_D7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZyt_Tt2B5(v42, &v73, &v51);
    outlined destroy of _GestureInputs(&v73);
    v9 = v46;
    LODWORD(v8) = v47;
    specialized _GestureOutputs.overrideDefaultValues(_:)(v51, *(&v51 + 1), v52, v7 | (v47 << 32), v46);

    v51 = v70;
    v53 = v67;
    v54 = v68;
    v55 = *v69;
    v52 = v39;
    v56 = *&v69[16];
    v57 = v33;
    v58 = v49;
    v59 = v50;
    v60 = v35;
    v10 = v45;
    outlined destroy of _GestureInputs(&v51);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    goto LABEL_15;
  }

  v34 = *(a2 + 280);
  if (v34)
  {
    v33 = v34;
    v32 = 0;
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

void AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(__int128 *a1@<X0>, void (*a2)(unint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1[5];
  v62[4] = a1[4];
  v62[5] = v10;
  *v63 = a1[6];
  *&v63[12] = *(a1 + 108);
  v11 = a1[1];
  v62[0] = *a1;
  v62[1] = v11;
  v12 = a1[3];
  v62[2] = a1[2];
  v62[3] = v12;
  specialized _GestureInputs.makeDefaultOutputs<A>()(v59);
  v14 = v59[0];
  v13 = v59[1];
  v15 = v60;
  v16 = v61;
  v56 = *(a5 + 8);
  v57 = v6;
  v17 = a4;
  v58 = *(v56 + 8);
  v18 = v58(a4);
  LODWORD(a4) = AGSubgraphIsValid();

  if (!a4)
  {
    goto LABEL_14;
  }

  v51 = v15;
  v52 = v13;
  v19 = v63[24];
  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v49 = v16;
  v13 = v17;
  v22 = a5;
  v50 = a6;
  v53 = v19;
  if ((v19 & 0x10) != 0)
  {
    v28 = AGSubgraphGetGraph();
    v24 = v56;
    v23 = v57;
    v26 = v58;
  }

  else
  {
    v24 = v56;
    v23 = v57;
    v25 = v17;
    v26 = v58;
    v27 = (v58)(v25, v56);
    v28 = AGSubgraphGetGraph();
  }

  v29 = AGSubgraphCreate();

  (*(a5 + 32))(v29, v13, a5);
  v30 = v26(v13, v24);
  v31 = *(a5 + 24);
  v32 = v31(v13, a5);
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = v32;
  AGSubgraphAddChild2();

  v34 = v31(v13, a5);
  if (!v34)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v34;
  AGSubgraphAddChild();

  if ((v53 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v36 = (v58)(v13, v24);
  v37 = AGSubgraphGetGraph();

  v38 = AGSubgraphCreate();
  (*(v22 + 56))(v38, v13, v22);
  v39 = v31(v13, v22);
  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  v41 = (*(v22 + 48))(v13, v22);
  if (v41)
  {
    v42 = v41;
    AGSubgraphAddChild2();

LABEL_12:
    v43 = v21;
    v44 = v31(v13, v22);
    if (v44)
    {
      v45 = v44;
      v46 = v13;
      AGGraphClearUpdate();
      v47 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v15 = v51;
      LODWORD(v13) = v52;
      v48 = v22;
      v16 = v49;
      closure #1 in AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(v62, v23, a2, a3, v14 | (v52 << 32), v51, v49, v46, v48);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      a6 = v50;
LABEL_14:
      *a6 = v14;
      *(a6 + 4) = v13;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16;
      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void AnyGestureResponder.exclusionPolicy.getter(_BYTE *a1@<X8>)
{
  *a1 = 3;
}

{
  AnyGestureResponder.exclusionPolicy.getter(a1);
}

void protocol witness for AnyGestureResponder.makeSubviewsGesture(inputs:) in conformance StyledTextResponder(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v3 = specialized GraphHost.intern<A>(_:for:id:)(768, v2, 4);

  v4 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *a1 = v3;
  *(a1 + 4) = v4;
}

void AnyGestureResponder.makeSubviewsGesture(inputs:)(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v3 = specialized GraphHost.intern<A>(_:for:id:)(768, v2, 4);

  v4 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *a1 = v3;
  *(a1 + 4) = v4;
}

{
  AnyGestureResponder.makeSubviewsGesture(inputs:)(a1);
}

uint64_t specialized GesturePhase.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  outlined init with copy of GesturePhase<URL>(v2, &v13 - v10);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      (*(v6 + 32))(v8, v11, v5);
      a1(v8);
      result = (*(v6 + 8))(v8, v5);
      *(a2 + 1) = 2;
    }

    else
    {
      *a2 = 768;
    }
  }

  else if (result)
  {
    (*(v6 + 32))(v8, v11, v5);
    a1(v8);
    result = (*(v6 + 8))(v8, v5);
    *(a2 + 1) = 1;
  }

  else if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    *a2 = 1;
    return outlined destroy of URL?(v11);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    a1(v8);
    result = (*(v6 + 8))(v8, v5);
    *a2 = 0;
  }

  return result;
}

uint64_t specialized closure #1 in MapGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  if (BYTE1(result) > 1u)
  {
    if (BYTE1(result) == 2)
    {
      v9 = result & 1;
      result = a2(&v9);
      *(a3 + 1) = 2;
      return result;
    }

    v6 = 768;
  }

  else
  {
    if (BYTE1(result))
    {
      v8 = result & 1;
      result = a2(&v8);
      *(a3 + 1) = 1;
      return result;
    }

    if (result != 0xFF)
    {
      v7 = result & 1;
      result = a2(&v7);
      *a3 = 0;
      return result;
    }

    v6 = 1;
  }

  *a3 = v6;
  return result;
}

uint64_t specialized closure #1 in MapGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t (*a2)(__int16 *)@<X1>, uint64_t a3@<X8>)
{
  v3 = BYTE3(result);
  if (BYTE3(result) > 1u)
  {
    if (v3 == 2)
    {
      v10 = result & 0x101;
      result = a2(&v10);
      *(a3 + 1) = 2;
      return result;
    }

    v7 = 768;
  }

  else
  {
    if (v3)
    {
      v9 = result & 0x101;
      result = a2(&v9);
      *(a3 + 1) = 1;
      return result;
    }

    if ((result & 0x10000) == 0)
    {
      v8 = result & 0x101;
      result = a2(&v8);
      *a3 = 0;
      return result;
    }

    v7 = 1;
  }

  *a3 = v7;
  return result;
}

void specialized _GestureInputs.makeIndirectOutputs<A>()(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  specialized GraphHost.intern<A>(_:for:id:)(768, v3, 0);

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  if ((*(v1 + 120) & 8) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v12[6] = xmmword_1EAB1D4A8;
    v12[7] = xmmword_1EAB1D4B8;
    v12[8] = xmmword_1EAB1D4C8;
    v12[2] = xmmword_1EAB1D468;
    v12[3] = xmmword_1EAB1D478;
    v12[4] = xmmword_1EAB1D488;
    v12[5] = xmmword_1EAB1D498;
    v12[0] = static GestureDebug.Data.defaultValue;
    v12[1] = xmmword_1EAB1D458;
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.intern<A>(_:for:id:)(v12, &type metadata for GestureDebug.Data, 0);

    v5 = AGGraphCreateIndirectAttribute2();
  }

  else
  {
    v5 = *MEMORY[0x1E698D3F8];
  }

  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  outlined init with copy of PreferencesInputs(&v10, &v8);
  PreferencesInputs.makeIndirectOutputs()(&v8);

  v6 = v8;
  v7 = v9;

  *a1 = IndirectAttribute2;
  *(a1 + 4) = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
}

uint64_t View.globallySimultaneousGesture<A>(_:name:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a7;
  v31 = a9;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner();
  v17 = v16;
  v34 = a6;
  v35 = &type metadata for GloballySimultaneousGestureCombiner;
  v36 = a8;
  v37 = v16;
  v18 = type metadata accessor for AddGestureModifier(0, &v34);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  (*(v13 + 16))(v15, a1, a6, v20);
  if (a4)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  v34 = a6;
  v35 = &type metadata for GloballySimultaneousGestureCombiner;
  v36 = a8;
  v37 = v17;
  v24 = type metadata accessor for AddGestureModifier(0, &v34);
  v25 = &v22[*(v24 + 52)];
  (*(v13 + 32))(v22, v15, a6);
  v26 = v30;
  *v25 = v29;
  v25[1] = v26;
  *&v22[*(v24 + 56)] = v23;
  View.modifier<A>(_:)();
  v27 = *(v19 + 8);

  return v27(v22, v18);
}

Swift::Int GestureResponderExclusionPolicy.SimultaneityConstraint.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

BOOL static GestureResponderExclusionPolicy.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GestureResponderExclusionPolicy(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t GestureResponderExclusionPolicy.description.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000014;
  }

  else if (v1 == 3)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 0x6F69725068676968;
  }
}

uint64_t AddGestureModifier.name.getter(uint64_t a1)
{
  v1 = specialized AddGestureModifier.name.getter(a1);

  return v1;
}

void AddGestureModifier.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t protocol witness for GestureViewModifier.name.getter in conformance AddGestureModifier<A, B>(uint64_t a1)
{
  v1 = specialized AddGestureModifier.name.getter(a1);

  return v1;
}

double static DefaultGestureCombiner.combine(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = _ViewInputs.base.modify;
  *(v6 + 24) = 0;
  *a3 = a1;
  a3[1] = a2;
  a3[2] = partial apply for specialized closure #1 in MapGesture.init(_:);
  a3[3] = v6;

  return result;
}

BOOL protocol witness for static GestureCombiner.exclusionPolicy.getter in conformance SimultaneousGestureCombiner@<W0>(char *a1@<X8>)
{
  result = specialized static SimultaneousGestureAppliesToChildrenOnlyFeature.isEnabled.getter();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

double protocol witness for static GestureCombiner.combine(_:_:) in conformance DefaultGestureCombiner@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = 0;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a5;
  a6[3] = v11;

  return result;
}

double protocol witness for static GestureCombiner.combine(_:_:) in conformance HighPriorityGestureCombiner@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = _ViewInputs.base.modify;
  *(v6 + 24) = 0;
  *a3 = a2;
  a3[1] = a1;
  a3[2] = closure #1 in MapGesture.init(_:)specialized partial apply;
  a3[3] = v6;

  return result;
}

uint64_t closure #1 in AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(__int128 *a1, uint64_t a2, void (*a3)(unint64_t *__return_ptr, __int128 *), uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v54 = *a1;
  v11 = *(a1 + 2);
  v12 = *(a1 + 40);
  v51 = *(a1 + 24);
  v52 = v12;
  v13 = *(a1 + 72);
  v53[0] = *(a1 + 56);
  v53[1] = v13;
  v49 = a1[6];
  v50 = *(a1 + 14);
  v24 = *(a1 + 30);
  v14 = *(a9 + 16);
  outlined init with copy of _GestureInputs(a1, &v41);
  v14(&v44, a8, a9);
  v15 = v45;
  result = (*(a9 + 48))(a8, a9);
  if (result || (result = (*(a9 + 24))(a8, a9)) != 0)
  {
    v17 = result;
    v35 = v54;
    v37 = v51;
    v18 = *(a1 + 30);
    v19 = *(a1 + 11);
    v36 = v11;
    v38 = v52;
    *v39 = v53[0];
    *&v39[12] = *(v53 + 12);
    outlined destroy of _ViewInputs(&v35);
    v51 = v46;
    v52 = v47;
    v53[0] = v48[0];
    *(v53 + 12) = *(v48 + 12);
    swift_beginAccess();
    v20 = v15[3];
    v40[1] = v15[2];
    v40[2] = v20;
    v21 = v15[5];
    v40[3] = v15[4];
    v40[4] = v21;
    v40[0] = v15[1];
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v22 = swift_allocObject();
    memmove((v22 + 16), v15 + 1, 0x50uLL);
    outlined init with copy of CachedEnvironment(v40, &v41);

    v30 = v44;
    *&v31[8] = v51;
    *&v31[56] = v53[1];
    if ((v18 & 4) != 0)
    {
      v23 = v18 & 0xFFFFFFFB;
    }

    else
    {
      v23 = v24;
    }

    *v31 = v22;
    *&v31[24] = v52;
    *&v31[40] = v53[0];
    *&v31[72] = v17;
    *v32 = v49;
    *&v32[16] = v50;
    *&v32[24] = v23;
    *&v42[64] = *&v31[64];
    *&v43[12] = *&v32[12];
    *v43 = v49;
    v41 = v30;
    *v42 = *v31;
    *&v42[16] = *&v31[16];
    *&v42[32] = *&v31[32];
    *&v42[48] = *&v31[48];
    outlined init with copy of _GestureInputs(&v30, v33);
    a3(v28, &v41);
    v33[4] = *&v42[48];
    v33[5] = *&v42[64];
    v34[0] = *v43;
    *(v34 + 12) = *&v43[12];
    v33[0] = v41;
    v33[1] = *v42;
    v33[2] = *&v42[16];
    v33[3] = *&v42[32];
    outlined destroy of _GestureInputs(v33);
    specialized _GestureOutputs.overrideDefaultValues(_:)(v28[0], v28[1], v29, a5, a6);

    v41 = v44;
    *&v42[8] = v51;
    *&v42[24] = v52;
    *&v42[40] = v53[0];
    *&v42[56] = v53[1];
    *v42 = v22;
    *&v42[72] = v17;
    *v43 = v49;
    *&v43[16] = v50;
    *&v43[24] = v23;
    return outlined destroy of _GestureInputs(&v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AnyGestureResponder.isCancellable.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 96))(a1);
  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  if (*(v2 + 248) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  static Update.end()();

  return v3;
}

uint64_t AnyGestureResponder.requiredTapCount.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 96))(a1);
  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  if (*(v2 + 252) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v3 = *AGGraphGetValue();
  }

  static Update.end()();

  return v3;
}

double AnyGestureResponder.dependency.getter@<D0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(a1 + 96))();
  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  if (*(v3 + 256) == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
  }

  else
  {
    v4 = *AGGraphGetValue();
  }

  *a2 = v4;
  static Update.end()();

  return result;
}

BOOL AnyGestureResponder.canPrevent(_:otherExclusionPolicy:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if ((AnyGestureResponder.isPrioritized(over:otherExclusionPolicy:)(a1, &v8, a3, a4) & 1) == 0)
  {
    return 0;
  }

  v4 = swift_conformsToProtocol2();
  if (!v4)
  {
    return 1;
  }

  v5 = v4;

  AnyGestureResponder.dependency.getter(v5, &v7);

  return v7 - 3 < 0xFFFFFFFE;
}

uint64_t AnyGestureResponder.isPrioritized(over:otherExclusionPolicy:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  BYTE1(v10) = *a2;
  if (AnyGestureResponder.isSimultaneous(with:otherExclusionPolicy:)(a1, &v10 + 1, a3, a4))
  {
    return 0;
  }

  (*(a4 + 72))(&v10, a3, a4);
  if (v10 == 3)
  {
    if (v8 == 4)
    {
      return 0;
    }
  }

  else if (v10 == 4)
  {
    if (v8 == 3)
    {
      return 1;
    }

    if (v8 == 4)
    {
      return ViewResponder.isDescendant(of:)(v4) & 1;
    }
  }

  return ViewResponder.isDescendant(of:)(a1);
}

BOOL AnyGestureResponder.shouldRequireFailure(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  (*(a2 + 72))(&v17 + 1, *a1);
  if ((AnyGestureResponder.isSimultaneous(with:otherExclusionPolicy:)(a1, &v17 + 1, a3, a4) & 1) == 0)
  {
    v10 = AnyGestureResponder.requiredTapCount.getter(a3, a4);
    if ((v11 & 1) == 0)
    {
      v13 = v10;
      v14 = AnyGestureResponder.requiredTapCount.getter(v9, a2);
      if ((v15 & 1) == 0 && v14 != v13)
      {
        return v13 < v14;
      }
    }
  }

  (*(a4 + 72))(&v17, a3, a4);
  if ((AnyGestureResponder.isPrioritized(over:otherExclusionPolicy:)(v4, &v17, v9, a2) & 1) == 0)
  {
    return 0;
  }

  AnyGestureResponder.dependency.getter(a4, &v16);
  return v16 != 0;
}

uint64_t AnyGestureResponder.isSimultaneous(with:otherExclusionPolicy:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  (*(a4 + 72))(&v10, a3, a4);
  v7 = static AnyGestureResponder.isSimultaneous(_:with:exclusionPolicy:)(v4, a1, &v10);
  v9 = v6;
  return (v7 | static AnyGestureResponder.isSimultaneous(_:with:exclusionPolicy:)(a1, v4, &v9)) & 1;
}

uint64_t static AnyGestureResponder.isSimultaneous(_:with:exclusionPolicy:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  if ((v3 - 3) < 2)
  {
    return 0;
  }

  if (!*a3)
  {
    return ViewResponder.isDescendant(of:)(a1) & 1;
  }

  if (v3 == 1)
  {
    a1 = a2;
    return ViewResponder.isDescendant(of:)(a1) & 1;
  }

  return 1;
}

uint64_t GestureResponder.gestureGraph.getter()
{
  if (v0[30])
  {
    v1 = v0[30];
  }

  else
  {
    v2 = *v0;
    type metadata accessor for GestureGraph();
    v3 = swift_allocObject();

    v1 = specialized GestureGraph.init(rootResponder:)(v4, v3, v2, &protocol witness table for GestureResponder<A>);
    v0[30] = v1;
  }

  return v1;
}

uint64_t GestureResponder.bindingBridge.getter()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v1 = closure #1 in GestureResponder.bindingBridge.getter(v0);
    *(v0 + 248) = v1;
    *(v0 + 256) = v2;
  }

  return v1;
}

uint64_t closure #1 in GestureResponder.bindingBridge.getter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 136);
  v21[2] = *(a1 + 120);
  v21[3] = v3;
  v21[4] = *(a1 + 152);
  v22 = *(a1 + 168);
  v4 = *(a1 + 104);
  v21[0] = *(a1 + 88);
  v21[1] = v4;
  v5 = *(a1 + 136);
  v17 = *(a1 + 120);
  v18 = v5;
  v19 = *(a1 + 152);
  v20 = *(a1 + 168);
  v6 = *(a1 + 104);
  v15 = *(a1 + 88);
  v16 = v6;
  v7 = v2;
  outlined init with copy of _ViewInputs(v21, v23);
  v8 = *(GestureResponder.gestureGraph.getter() + 208);

  v10 = specialized _ViewInputs.makeEventBindingBridge(bindingManager:responder:)(v8, a1, &v15, v9, v7, &protocol witness table for GestureResponder<A>);
  v12 = v11;

  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v24 = v20;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of _ViewInputs(v23);
  v13 = *(a1 + 240);
  swift_beginAccess();
  *(v13 + 200) = v12;
  swift_unknownObjectWeakAssign();
  return v10;
}

void GestureResponder.gestureContainer.getter()
{
  if (*(v0 + 264))
  {
    goto LABEL_4;
  }

  v1 = *v0;
  if (AGSubgraphIsValid())
  {
    v2 = *(v0 + 136);
    v13[2] = *(v0 + 120);
    v13[3] = v2;
    v13[4] = *(v0 + 152);
    v14 = *(v0 + 168);
    v3 = *(v0 + 104);
    v13[0] = *(v0 + 88);
    v13[1] = v3;
    v4 = *(v0 + 136);
    v9 = *(v0 + 120);
    v10 = v4;
    v11 = *(v0 + 152);
    v12 = *(v0 + 168);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = v5;
    outlined init with copy of _ViewInputs(v13, v15);
    v6 = specialized _ViewInputs.makeGestureContainer(responder:)(v0, &v7, v1, &protocol witness table for GestureResponder<A>);
    v15[2] = v9;
    v15[3] = v10;
    v15[4] = v11;
    v16 = v12;
    v15[0] = v7;
    v15[1] = v8;
    outlined destroy of _ViewInputs(v15);
    *(v0 + 264) = v6;
    swift_unknownObjectRelease();
    if (*(v0 + 264))
    {
LABEL_4:
      swift_unknownObjectRetain();
      return;
    }

    __break(1u);
  }
}

uint64_t GestureResponder.eventSources.getter()
{
  v0 = GestureResponder.bindingBridge.getter();
  v1 = (*(*v0 + 160))(v0);

  return v1;
}

uint64_t GestureResponder.exclusionPolicy.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t GestureResponder.label.getter()
{
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  AGGraphClearUpdate();
  closure #1 in GestureResponder.label.getter(v0, v4);
  AGGraphSetUpdate();
  if (v4[1])
  {
    return v4[0];
  }

  v2 = GestureResponder.gestureGraph.getter();
  swift_beginAccess();
  v3 = 0;
  if (*(v2 + 128) == 1)
  {
    specialized static Update.begin()();
    if (*(v2 + 244) == *MEMORY[0x1E698D3F8])
    {
      v3 = 0;
    }

    else
    {
      _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v3 = *AGGraphGetValue();
    }

    static Update.end()();
  }

  return v3;
}

uint64_t closure #1 in GestureResponder.label.getter@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  AGGraphClearUpdate();
  v4 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in GestureResponder.label.getter(a1, v8);
  AGSubgraphSetCurrent();

  v5 = v8[0];
  v6 = v8[1];
  result = AGGraphSetUpdate();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double closure #1 in closure #1 in GestureResponder.label.getter@<D0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1[54];
  *v20 = *(*a1 + 400);
  v14 = v3;
  v15 = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  KeyPath = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1E69E6720];
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v18 = type metadata accessor for Map();
  swift_getWitnessTable(MEMORY[0x1E698D3A8], v18);
  v19 = v6;
  type metadata accessor for Attribute<GesturePhase<()>>(0, &lazy cache variable for type metadata for Attribute<String?>, &lazy cache variable for type metadata for String?, v4, v5);
  v8 = v7;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, v17, v18, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);

  Value = AGGraphGetValue();
  v12 = *Value;
  v11 = Value[1];
  *a2 = v12;
  a2[1] = v11;

  return result;
}

uint64_t GestureResponder.isValid.getter()
{
  if (*(v0 + 264))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

void GestureResponder.makeSubviewsGesture(inputs:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[5];
  v5[4] = a1[4];
  v5[5] = v2;
  v6[0] = a1[6];
  *(v6 + 12) = *(a1 + 108);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v4 = a1[3];
  v5[2] = a1[2];
  v5[3] = v4;
  DefaultLayoutViewResponder.makeGesture(inputs:)(v5, a2);
}

void GestureResponder.containsGlobalPoints(_:cacheKey:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v8 = *a3;
  v13[0] = *a3;
  MultiViewResponder.hitTestPolicy(options:)(v13);
  if (v12 == 1)
  {
    swift_beginAccess();
    v9 = *(v4 + 40);
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = v9;
  }

  else
  {
    v12 = v8;
    MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | ((HIDWORD(a2) & 1) << 32), &v12, v13);
    v10 = v13[1];
    if ((v8 & 2) == 0)
    {
      v10 = 16.0;
    }

    v11 = v13[2];
    *a4 = v13[0];
    a4[1] = v10;
    a4[2] = v11;
  }
}

void GestureResponder.features.getter(__int16 *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          v9 = v6 | 2;
          goto LABEL_15;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      (*(*v7 + 216))(&v10);

      v6 |= v10;
      ++v5;
      if (v8 == v4)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = 2;
LABEL_15:

  *a1 = v9;
}

uint64_t GestureResponder.bindEvent(_:)(uint64_t a1)
{
  if (specialized static GestureContainerFeature.isEnabled.getter())
  {
    outlined init with copy of AnyTrackedValue(a1, v10);
    HitTestableEvent.init(_:)(v10, v11);
    if (v12 == 1)
    {
      return 0;
    }

    v3 = 0;
    if (v17)
    {
      v4 = 0;
    }

    else
    {
      v4 = v16;
    }

    if ((v4 & 0x20) == 0)
    {
      v3 = ++static ViewResponder.hitTestKey;
    }

    if ((v4 & 4) != 0)
    {
      v10[0] = v4;
      LOBYTE(v9) = (v4 & 0x20) != 0;
      v7 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v3 | (v9 << 32), v10, v13, v14);
      outlined destroy of AnyGestureInfo<()>(v11, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720]);
      result = v7;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      hitPoints(point:radius:)(v13, v14, v15);
      v8 = v4;
      v9 = 0;
      LOBYTE(v10[0]) = (v4 & 0x20) != 0;
      ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v5, v6, &v9, v3 | (LOBYTE(v10[0]) << 32), &v8, v10);
      outlined destroy of AnyGestureInfo<()>(v11, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720]);

      result = v10[0];
      if (!v10[0])
      {
        return 0;
      }
    }
  }

  else
  {

    return MultiViewResponder.bindEvent(_:)(a1);
  }

  return result;
}

void GestureResponder.makeGesture(inputs:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = a1[5];
  v9[4] = a1[4];
  v9[5] = v4;
  v10[0] = a1[6];
  *(v10 + 12) = *(a1 + 108);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v7[2] = v9;
  v8 = v2;
  AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(a1, partial apply for closure #1 in GestureResponder.makeGesture(inputs:), v7, v3, &protocol witness table for GestureResponder<A>, a2);
}

void closure #1 in GestureResponder.makeGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a1[5];
  v34 = a1[4];
  v35 = v7;
  v36[0] = a1[6];
  *(v36 + 12) = *(a1 + 108);
  v8 = a1[1];
  v31[0] = *a1;
  v31[1] = v8;
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v29[0] = v31[0];
  v29[1] = v8;
  v30 = *(a1 + 20);
  v29[3] = v9;
  v29[4] = v34;
  v29[2] = v32;
  closure #1 in closure #1 in GestureResponder.makeGesture(inputs:)(a2, a3, v29, v31, &v25);
  if ((*(a2 + 120) & 8) != 0)
  {
    v24[0] = *(a3 + 216);
    v24[1] = v26;
    MEMORY[0x1EEE9AC00](v10);
    v21 = type metadata accessor for GestureViewDebug(0, v12, v13, v14);
    swift_getWitnessTable(protocol conformance descriptor for GestureViewDebug<A>, v21);
    v22 = v15;
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for Attribute<GestureDebug.Data>, &type metadata for GestureDebug.Data, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, closure #1 in Attribute.init<A>(_:)partial apply, &v20, v21, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
    v11 = v23;
  }

  else
  {
    v11 = v26;
  }

  v18 = v27;
  v19 = v28;
  *a4 = v25;
  *(a4 + 4) = v11;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
}

double closure #1 in closure #1 in GestureResponder.makeGesture(inputs:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 54);
  v8 = *(a3 + 24);
  v9 = *a2;
  if ((*(a1 + 120) & 4) != 0)
  {
    if (one-time initialization token for isEnabled != -1)
    {
      swift_once();
    }

    v36 = static CachedEnvironment.ID.isEnabled;
    swift_beginAccess();
    v37 = specialized CachedEnvironment.attribute<A>(id:_:)(v36, specialized implicit closure #1 in _GraphInputs.isEnabled.getter, 0);
    v38 = swift_endAccess();
    *&v65 = __PAIR64__(v37, v7);
    DWORD2(v65) = v8;
    MEMORY[0x1EEE9AC00](v38);
    v58 = type metadata accessor for GestureViewChild(0, v39, v40, v41);
    swift_getWitnessTable(protocol conformance descriptor for GestureViewChild<A>, v58);
    v59 = v42;
    v43 = MEMORY[0x1E69E7CA8];
    type metadata accessor for Attribute<GesturePhase<()>>(0, &lazy cache variable for type metadata for Attribute<AnyGesture<()>>, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v65, closure #1 in Attribute.init<A>(_:)partial apply, &v56, v58, MEMORY[0x1E69E73E0], v44, MEMORY[0x1E69E7410], v45);
    v46 = v63[0];
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGesture<()>, v43 + 8, type metadata accessor for AnyGesture);
    v48 = v47;
    _s7SwiftUI10AnyGestureV05_makeD07gesture6inputsAA01_D7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZyt_Tt2B5(v46, a4, &v65);
    if ((*(a4 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !v48))
    {
      _gestureModifierProtocolDescriptor();
      v49 = swift_conformsToProtocol();
      v50 = DWORD1(v65) == *MEMORY[0x1E698D3F8];
      if (DWORD1(v65) == *MEMORY[0x1E698D3F8])
      {
        v51 = 0;
      }

      else
      {
        v51 = DWORD1(v65);
      }

      LOBYTE(v63[0]) = 1;
      if (v49)
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFyt_AA03AnyC0VyytGTtB5(v52, 0x100000000, a4, v51 | (v50 << 32), 0x100000000);
    }

    v53 = *(&v65 + 1);
    v54 = v66;
    result = *&v65;
    *a5 = v65;
    *(a5 + 8) = v53;
    *(a5 + 16) = v54;
  }

  else
  {
    v60 = a5;
    if (one-time initialization token for isEnabled != -1)
    {
      swift_once();
    }

    v11 = static CachedEnvironment.ID.isEnabled;
    swift_beginAccess();
    v12 = specialized CachedEnvironment.attribute<A>(id:_:)(v11, specialized implicit closure #1 in _GraphInputs.isEnabled.getter, 0);
    v13 = swift_endAccess();
    v14 = *(v9 + 400);
    v15 = *(v9 + 408);
    *&v65 = __PAIR64__(v12, v7);
    DWORD2(v65) = v8;
    *&v66 = a2;
    *(&v66 + 1) = &protocol witness table for GestureResponder<A>;
    MEMORY[0x1EEE9AC00](v13);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v56 = AssociatedTypeWitness;
    v57 = type metadata accessor for CombiningGestureViewChild(0, v14, v15, v17);
    swift_getWitnessTable(protocol conformance descriptor for CombiningGestureViewChild<A>, v57);
    v58 = v18;
    v19 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v65, partial apply for closure #1 in Attribute.init<A>(_:), &v55, v57, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);

    _GraphValue.init(_:)(LODWORD(v63[0]), &v62);
    v21 = *(a4 + 80);
    v69 = *(a4 + 64);
    v70 = v21;
    v71[0] = *(a4 + 96);
    *(v71 + 12) = *(a4 + 108);
    v22 = *(a4 + 16);
    v65 = *a4;
    v66 = v22;
    v23 = *(a4 + 48);
    v67 = *(a4 + 32);
    v68 = v23;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v63, &v62, &v65, AssociatedTypeWitness, AssociatedConformanceWitness);
    if ((*(a4 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !AssociatedTypeWitness))
    {
      _gestureModifierProtocolDescriptor();
      if (swift_conformsToProtocol())
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      LOBYTE(v62) = v25;
      v26 = *(a4 + 80);
      v69 = *(a4 + 64);
      v70 = v26;
      v71[0] = *(a4 + 96);
      *(v71 + 12) = *(a4 + 108);
      v27 = *(a4 + 16);
      v65 = *a4;
      v66 = v27;
      v28 = *(a4 + 48);
      v67 = *(a4 + 32);
      v68 = v28;
      v29 = HIDWORD(v63[0]) == *MEMORY[0x1E698D3F8];
      if (HIDWORD(v63[0]) == *MEMORY[0x1E698D3F8])
      {
        v30 = 0;
      }

      else
      {
        v30 = HIDWORD(v63[0]);
      }

      _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for _GestureOutputs<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for _GestureOutputs);
      v61 = 1;
      _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(AssociatedTypeWitness, &v62, 0x100000000, &v65, v30 | (v29 << 32), 0x100000000, v31);
    }

    v32 = v63[1];
    v33 = v64;
    result = *v63;
    v35 = v60;
    *v60 = v63[0];
    v35[1] = v32;
    *(v35 + 4) = v33;
  }

  return result;
}

void GestureResponder.resetGesture()()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  *(v0 + 224) = 0;

  swift_beginAccess();
  v2 = *(v0 + 232);
  *(v0 + 232) = 0;

  DefaultLayoutViewResponder.resetGesture()();
}

double GestureResponder.extendPrintTree(string:)()
{
  swift_getAssociatedTypeWitness();
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return result;
}

uint64_t GestureResponder.__ivar_destroyer()
{

  return swift_unknownObjectRelease();
}

void GestureViewDebug.debugData.getter(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v15);
    v3 = v22;
    a2[6] = v21;
    a2[7] = v3;
    a2[8] = v23;
    v4 = v18;
    a2[2] = v17;
    a2[3] = v4;
    v5 = v20;
    a2[4] = v19;
    a2[5] = v5;
    v6 = v16;
    *a2 = v15;
    a2[1] = v6;
  }

  else
  {
    Value = AGGraphGetValue();
    v15 = *Value;
    v8 = Value[4];
    v10 = Value[1];
    v9 = Value[2];
    v18 = Value[3];
    v19 = v8;
    v16 = v10;
    v17 = v9;
    v11 = Value[8];
    v13 = Value[5];
    v12 = Value[6];
    v22 = Value[7];
    v23 = v11;
    v20 = v13;
    v21 = v12;
    memmove(a2, Value, 0x90uLL);
    _ViewInputs.base.modify();
    outlined init with copy of GestureDebug.Data(&v15, &v14);
  }
}

void *protocol witness for AnyGestureResponder.childSubgraph.getter in conformance GestureResponder<A>()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childSubgraph.setter in conformance GestureResponder<A>(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *(v1 + 224) = a1;
}

void *protocol witness for AnyGestureResponder.childViewSubgraph.getter in conformance GestureResponder<A>()
{
  swift_beginAccess();
  v1 = *(v0 + 232);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childViewSubgraph.setter in conformance GestureResponder<A>(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
}

__n128 GestureViewDebug.value.getter@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a1;
  GestureViewDebug.debugData.getter(a1, &v48);
  v57[6] = v54;
  v57[7] = v55;
  v57[8] = v56;
  v57[2] = v50;
  v57[3] = v51;
  v57[4] = v52;
  v57[5] = v53;
  v57[0] = v48;
  v57[1] = v49;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v57) == 1)
  {
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v39 = v48;
    v40 = v49;
  }

  else
  {
    v18 = v54;
    v19 = v55;
    v20 = v56;
    v14 = v50;
    v15 = v51;
    v16 = v52;
    v17 = v53;
    v12 = v48;
    v13 = v49;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v30 = v48;
    v31 = v49;
    outlined init with copy of GestureDebug.Data(&v30, &v39);
    closure #1 in GestureViewDebug.value.getter(&v12, v5, a2, &v39);
    outlined destroy of AnyGestureInfo<()>(&v48, &lazy cache variable for type metadata for GestureDebug.Data?, &type metadata for GestureDebug.Data, MEMORY[0x1E69E6720]);
    v11[6] = v18;
    v11[7] = v19;
    v11[8] = v20;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v16;
    v11[5] = v17;
    v11[0] = v12;
    v11[1] = v13;
    outlined destroy of GestureDebug.Data(v11);
    _ViewInputs.base.modify();
  }

  v27 = v45;
  v28 = v46;
  v29 = v47;
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v21 = v39;
  v22 = v40;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v30 = v39;
  v31 = v40;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v30) == 1)
  {
    result.n128_f64[0] = GestureDebug.Data.init()(a4);
  }

  else
  {
    v8 = v28;
    *(a4 + 96) = v27;
    *(a4 + 112) = v8;
    *(a4 + 128) = v29;
    v9 = v24;
    *(a4 + 32) = v23;
    *(a4 + 48) = v9;
    v10 = v26;
    *(a4 + 64) = v25;
    *(a4 + 80) = v10;
    result = v22;
    *a4 = v21;
    *(a4 + 16) = result;
  }

  return result;
}

__n128 closure #1 in GestureViewDebug.value.getter@<Q0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[5];
  v8 = a1[7];
  v30 = a1[6];
  v31 = v8;
  v9 = a1[7];
  v32 = a1[8];
  v10 = a1[1];
  v11 = a1[3];
  v26 = a1[2];
  v27 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v28 = a1[4];
  v29 = v13;
  v14 = a1[1];
  v24 = *a1;
  v25 = v14;
  *&__src[96] = v30;
  *&__src[112] = v9;
  *&__src[128] = a1[8];
  *&__src[32] = v26;
  *&__src[48] = v12;
  *&__src[64] = v28;
  *&__src[80] = v7;
  *__src = v24;
  *&__src[16] = v10;
  _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi_(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v15 = v25;
  v16 = DWORD2(v25);
  v20 = v27;
  v21 = v26;
  outlined init with copy of GestureDebug.Data(&v24, v22);
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCSS_SSt_SRySS_SStGTt1g5((MEMORY[0x1E69E7CC0] + 32), 0, v22);
  *a4 = 3;
  *(a4 + 8) = a3;
  v17 = swift_allocObject();
  memcpy((v17 + 16), __dst, 0x121uLL);
  *(a4 + 136) = v17;
  *(a4 + 16) = v15;
  *(a4 + 20) = a2;
  *(a4 + 24) = v16;
  *(a4 + 32) = v21;
  *(a4 + 48) = v20;
  v18 = v22[3];
  *(a4 + 96) = v22[2];
  *(a4 + 112) = v18;
  *(a4 + 128) = v23;
  result = v22[1];
  *(a4 + 64) = v22[0];
  *(a4 + 80) = result;
  return result;
}

uint64_t GestureViewChild.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &AssociatedConformanceWitness - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = type metadata accessor for _MapGesture(0, AssociatedTypeWitness, MEMORY[0x1E69E7CA8] + 8, AssociatedConformanceWitness);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &AssociatedConformanceWitness - v8;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &AssociatedConformanceWitness - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v14 = *(v9 + 16);
  v14(v12, Value, a3);
  v15 = (*(a4 + 72))(a3, a4);
  v16 = *(v9 + 8);
  v16(v12, a3);
  if ((v15 & 1) != 0 && *AGGraphGetValue() == 1)
  {
    v17 = AGGraphGetValue();
    v14(v12, v17, a3);
    v18 = v28;
    (*(a4 + 56))(a3, a4);
    v16(v12, a3);
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v20 = MEMORY[0x1E69E7CA8];
    v21 = v26;
    Gesture.map<A>(_:)(_ViewInputs.base.modify, v19, AssociatedTypeWitness, MEMORY[0x1E69E7CA8] + 8, AssociatedConformanceWitness, v26);

    (*(v30 + 8))(v18, AssociatedTypeWitness);
    v22 = v29;
    swift_getWitnessTable("Q\\%b", v29);
    v23 = specialized AnyGesture.init<A>(_:)(v21, v20 + 8, v22);
    (*(v27 + 8))(v21, v22);
    return v23;
  }

  else
  {
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>(0);
    return swift_allocObject();
  }
}

uint64_t protocol witness for Rule.value.getter in conformance GestureViewChild<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = GestureViewChild.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

double CombiningGestureViewChild.value.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a3;
  v45 = a2;
  v58 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v44 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for ContentGesture(255, v12, v13, v14);
  swift_getWitnessTable(protocol conformance descriptor for ContentGesture<A>, v15);
  v48 = v15;
  v59[0] = v15;
  v59[1] = AssociatedTypeWitness;
  v54 = AssociatedTypeWitness;
  v46 = v16;
  v59[2] = v16;
  v59[3] = AssociatedConformanceWitness;
  v51 = AssociatedConformanceWitness;
  v17 = type metadata accessor for ModifierGesture(0, v59);
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v44 - v18;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  Value = AGGraphGetValue();
  v56 = *(v19 + 16);
  v56(v22, Value, a4);
  v25 = *(a5 + 72);
  v26 = a5;
  LOBYTE(a5) = v25(a4, a5);
  v27 = *(v19 + 8);
  v27(v22, a4);
  v28 = 0;
  if (a5)
  {
    v28 = *AGGraphGetValue();
  }

  v55 = v28;
  v57 = v23;
  v29 = AGGraphGetValue();
  v30 = v56;
  v56(v22, v29, a4);
  v31 = v25(a4, v26);
  v27(v22, a4);
  if ((v31 & 2) != 0)
  {
    type metadata accessor for EventListener<SpatialEvent>(0, &lazy cache variable for type metadata for AnyGestureStorage<SubviewsGesture>, &unk_1F0096430, &protocol witness table for SubviewsGesture, type metadata accessor for AnyGestureStorage);
    v32 = swift_allocObject();
    v33 = v44;
    *(v32 + 16) = v45;
    *(v32 + 24) = v33;
  }

  else
  {
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>(0);
    v32 = swift_allocObject();
  }

  if (v55)
  {
    v34 = AGGraphGetValue();
    v30(v22, v34, a4);
    v35 = v52;
    (*(v26 + 56))(a4, v26);
    v36 = (v27)(v22, a4);
    v37 = v47;
    v38 = v54;
    Gesture.modifier<A>(_:)(v36, v54, v48, v51, v46, v47);
    (*(v53 + 8))(v35, v38);
    v39 = v50;
    swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v50);
    v40 = specialized AnyGesture.init<A>(_:)(v37, MEMORY[0x1E69E7CA8] + 8, v39);
    (*(v49 + 8))(v37, v39);
  }

  else
  {
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>(0);
    v40 = swift_allocObject();
  }

  v41 = swift_getAssociatedTypeWitness();
  v42 = swift_getAssociatedConformanceWitness();
  (*(v42 + 24))(v32, v40, v41, v42);

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CombiningGestureViewChild<A>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

double static ContentGesture._makeGesture(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr, __int128 *)@<X2>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a2[5];
  v32 = a2[4];
  v33 = v8;
  v34 = a2[6];
  v9 = a2[1];
  v28 = *a2;
  v29 = v9;
  v10 = a2[3];
  v30 = a2[2];
  v31 = v10;
  v12 = *(a2 + 116);
  v35 = *(a2 + 28);
  v11 = v35;
  v36 = v12;
  a3(&v23, &v28);
  v28 = v23;
  LODWORD(v29) = v24;
  *(&v23 + 4) = v11;
  v15 = type metadata accessor for ContentPhase(0, a5, v13, v14);
  v26 = v15;
  swift_getWitnessTable(protocol conformance descriptor for ContentPhase<A>, v15);
  v27 = v16;
  type metadata accessor for Attribute<GesturePhase<()>>(0, &lazy cache variable for type metadata for Attribute<GesturePhase<()>>, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, closure #1 in Attribute.init<A>(_:)partial apply, v25, v15, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  type metadata accessor for _GestureOutputs(0, a5, v19, v20);
  _GestureOutputs.withPhase<A>(_:)(v22, x8_0);

  return result;
}

uint64_t static SubviewsGesture._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[5];
  v33 = a2[4];
  v34 = v5;
  *v35 = a2[6];
  *&v35[12] = *(a2 + 108);
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  v7 = a2[3];
  v31 = a2[2];
  v32 = v7;
  specialized _GestureInputs.makeIndirectOutputs<A>()(v18);
  v8 = *&v35[16];
  v9 = v18[0];
  IndirectAttribute2 = v18[1];
  v11 = v19;
  v12 = v20;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  v14 = *MEMORY[0x1E698D3F8];
  *v23 = v4;
  *&v23[4] = v8;
  *&v23[72] = v33;
  *&v23[88] = v34;
  *&v23[104] = *v35;
  *&v23[116] = *&v35[12];
  *&v23[8] = v29;
  *&v23[24] = v30;
  *&v23[40] = v31;
  *&v23[56] = v32;
  *&v23[136] = v9;
  *&v23[140] = IndirectAttribute2;
  *&v24 = v11;
  DWORD2(v24) = v12;
  *&v28 = 0;
  DWORD2(v27) = 0;
  v25 = v13;
  v26 = 0;
  *&v27 = 0;
  DWORD2(v28) = v14;
  HIDWORD(v28) = v14;
  v22[10] = v13;
  v22[11] = v27;
  v22[12] = v28;
  v22[6] = *&v23[96];
  v22[7] = *&v23[112];
  v22[8] = *&v23[128];
  v22[9] = v24;
  v22[2] = *&v23[32];
  v22[3] = *&v23[48];
  v22[4] = *&v23[64];
  v22[5] = *&v23[80];
  v22[0] = *v23;
  v22[1] = *&v23[16];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GestureInputs(&v29, v21);
  lazy protocol witness table accessor for type SubviewsPhase and conformance SubviewsPhase();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of SubviewsPhase(v23);
  if ((v35[24] & 8) != 0)
  {
    AGGraphCreateOffsetAttribute2();
    if (IndirectAttribute2 == v14)
    {
      IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
    }

    else
    {
      AGGraphSetIndirectAttribute();
    }
  }

  result = AGGraphSetIndirectDependency();
  if (IndirectAttribute2 != v14)
  {
    result = AGGraphSetIndirectDependency();
  }

  v16 = *(v11 + 16);
  if (v16)
  {
    v17 = v11 + 48;
    do
    {
      v17 += 24;
      result = AGGraphSetIndirectDependency();
      --v16;
    }

    while (v16);
  }

  *a3 = v9;
  *(a3 + 4) = IndirectAttribute2;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  return result;
}

uint64_t ContentPhase.phase.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for GesturePhase(0, a2, a2, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t ContentPhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = type metadata accessor for GesturePhase(0, v5, a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  swift_getWitnessTable(protocol conformance descriptor for ContentPhase<A>, a1, v8);
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    ContentPhase.phase.getter(v5, v12, v10);
    v13 = MEMORY[0x1E69E7CA8];
    GesturePhase.withValue<A>(_:)(v6, MEMORY[0x1E69E7CA8] + 8, &v15);
    (*(v7 + 8))(v10, v6);
    v14[2] = v15;
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, v13 + 8, type metadata accessor for GesturePhase);
    return AGGraphSetOutputValue();
  }

  return result;
}

uint64_t SubviewsPhase.updateValue()()
{
  v1 = v0;
  v82 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = Value[1];
  v61 = *Value;

  v4 = AGGraphGetValue();
  v5 = MEMORY[0x1E698D3F8];
  if (*v4 != *(v0 + 184) || (v6 = *(v0 + 168)) == 0 || v61 != v6)
  {
    v7 = *(v0 + 192);
    if (v7)
    {
      v8 = *(v0 + 136);
      v9 = *(v1 + 144);
      v10 = v7;
      specialized _GestureOutputs.detachIndirectOutputs()(v8, v9);

      *(v1 + 192) = 0;
      *(v1 + 200) = *v5;
      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
    }

    v11 = *(v1 + 168);
    if (v11)
    {
      (*(*v11 + 120))();
    }

    v12 = AGSubgraphGetGraph();
    v13 = AGSubgraphCreate();

    *(v1 + 192) = v13;
    v58 = v13;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v57 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v14 = *v61;
    v15 = *(v1 + 88);
    v71 = *(v1 + 72);
    v72 = v15;
    v73[0] = *(v1 + 104);
    *(v73 + 12) = *(v1 + 116);
    v16 = *(v1 + 24);
    v67 = *(v1 + 8);
    v68 = v16;
    v17 = *(v1 + 56);
    v69 = *(v1 + 40);
    v70 = v17;
    v18 = *(v1 + 88);
    v79 = *(v1 + 72);
    v80 = v18;
    v81[0] = *(v1 + 104);
    *(v81 + 12) = *(v1 + 116);
    v19 = *(v1 + 24);
    v75 = *(v1 + 8);
    v76 = v19;
    v20 = *(v1 + 56);
    v56 = v3;
    v77 = *(v1 + 40);
    v78 = v20;
    v21 = v3[14];
    v22 = v14;
    outlined init with copy of _GestureInputs(&v67, __src);
    v21(v64, &v75, v22, v3);
    __src[4] = v79;
    __src[5] = v80;
    __src[6] = v81[0];
    *(&__src[6] + 12) = *(v81 + 12);
    __src[0] = v75;
    __src[1] = v76;
    __src[2] = v77;
    __src[3] = v78;
    outlined destroy of _GestureInputs(__src);
    v23 = v64[1];
    LODWORD(v22) = v65;
    v25 = v64[0];
    v24 = HIDWORD(v64[0]);
    v26 = *(v1 + 136);
    v27 = *(v1 + 144);
    LODWORD(v21) = *(v1 + 152);
    v28 = LODWORD(v64[0]) | (HIDWORD(v64[0]) << 32);

    specialized _GestureOutputs.attachIndirectOutputs(_:)(v28, v23, v22, v26, v27, v21);

    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v1 + 200) = v25;

    *(v1 + 204) = v24;
    *(v1 + 184) = *AGGraphGetValue();

    *(v1 + 168) = v61;
    *(v1 + 176) = v56;
    v5 = MEMORY[0x1E698D3F8];
  }

  v29 = *v5;
  v30 = MEMORY[0x1E69E7CA8];
  if (*(v1 + 200) == *v5)
  {
    v31 = 0;
    v32 = 3;
  }

  else
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    v33 = AGGraphGetValue();
    v31 = *v33;
    v32 = v33[1];
  }

  if (*(v1 + 204) == v29)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for EmptyGesture<()>, v30 + 8, type metadata accessor for EmptyGesture);
    v35 = v34;
    _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(__src);
    v36 = swift_allocObject();
    memcpy((v36 + 16), __src, 0x121uLL);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 3;
    v43 = 3;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
  }

  else
  {
    v48 = AGGraphGetValue();
    __src[0] = *v48;
    v49 = v48[4];
    v51 = v48[1];
    v50 = v48[2];
    __src[3] = v48[3];
    __src[4] = v49;
    __src[1] = v51;
    __src[2] = v50;
    v52 = v48[8];
    v54 = v48[5];
    v53 = v48[6];
    __src[7] = v48[7];
    __src[8] = v52;
    __src[5] = v54;
    __src[6] = v53;
    v36 = *(&v52 + 1);
    v59 = __src[3];
    v60 = __src[2];
    v29 = DWORD1(__src[1]);
    v39 = DWORD2(__src[1]);
    v38 = __src[1];
    v43 = BYTE1(__src[1]);
    v35 = *(&__src[0] + 1);
    v37 = __src[0];
    outlined init with copy of GestureDebug.Data(__src, &v67);
    v44 = v59;
    v41 = v60;
    v40 = __src[4];
    v45 = __src[5];
    v46 = __src[6];
    v47 = __src[7];
    v42 = __src[8];
  }

  LOBYTE(__src[0]) = v31;
  BYTE1(__src[0]) = v32;
  *(__src + 2) = v62;
  WORD3(__src[0]) = v63;
  BYTE8(__src[0]) = v37;
  *(__src + 9) = v75;
  HIDWORD(__src[0]) = *(&v75 + 3);
  *&__src[1] = v35;
  BYTE8(__src[1]) = v38;
  BYTE9(__src[1]) = v43;
  HIDWORD(__src[1]) = v29;
  LODWORD(__src[2]) = v39;
  *(&__src[2] + 8) = v41;
  *(&__src[3] + 8) = v44;
  *(&__src[4] + 8) = v40;
  *(&__src[5] + 8) = v45;
  *(&__src[6] + 8) = v46;
  *(&__src[7] + 8) = v47;
  BYTE8(__src[8]) = v42;
  HIDWORD(__src[8]) = *(v64 + 3);
  *(&__src[8] + 9) = v64[0];
  *&__src[9] = v36;
  v73[0] = __src[6];
  v73[1] = __src[7];
  v73[2] = __src[8];
  v74 = v36;
  v69 = __src[2];
  v70 = __src[3];
  v71 = __src[4];
  v72 = __src[5];
  v67 = __src[0];
  v68 = __src[1];
  AGGraphSetOutputValue();

  return outlined destroy of SubviewsPhase.Value(__src);
}

double protocol witness for static StatefulRule.initialValue.getter in conformance SubviewsPhase@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI13SubviewsPhase33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV5ValueVSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v8;
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance SubviewsPhase()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance SubviewsPhase(uint64_t result)
{
  v1 = *(result + 168);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  return result;
}

double key path setter for _GraphInputs.gestureAccessibilityProvider : _GraphInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.gestureAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_GraphInputs.gestureAccessibilityProvider.modify(uint64_t **a1))()
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
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.gestureAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.GestureAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.GestureAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.GestureAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.gestureAccessibilityProvider.modify(uint64_t **a1))()
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
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.gestureAccessibilityProvider.modify;
}

void _GraphInputs.gestureAccessibilityProvider.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

void lazy protocol witness table accessor for type GestureResponderExclusionPolicy.SimultaneityConstraint and conformance GestureResponderExclusionPolicy.SimultaneityConstraint()
{
  if (!lazy protocol witness table cache variable for type GestureResponderExclusionPolicy.SimultaneityConstraint and conformance GestureResponderExclusionPolicy.SimultaneityConstraint)
  {
    swift_getWitnessTable(protocol conformance descriptor for GestureResponderExclusionPolicy.SimultaneityConstraint, &type metadata for GestureResponderExclusionPolicy.SimultaneityConstraint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GestureResponderExclusionPolicy.SimultaneityConstraint and conformance GestureResponderExclusionPolicy.SimultaneityConstraint);
  }
}

void type metadata accessor for _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()>)
  {
    type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(255, &lazy cache variable for type metadata for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for ExclusiveGesture);
    v3 = v2;
    lazy protocol witness table accessor for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>(&lazy protocol witness table cache variable for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>, &lazy cache variable for type metadata for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for ExclusiveGesture, protocol conformance descriptor for ExclusiveGesture<A, B>);
    v5 = type metadata accessor for _MapGesture(a1, v3, MEMORY[0x1E69E7CA8] + 8, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()>);
    }
  }
}

void lazy protocol witness table accessor for type AnyGesture<()> and conformance AnyGesture<A>()
{
  if (!lazy protocol witness table cache variable for type AnyGesture<()> and conformance AnyGesture<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    swift_getWitnessTable(protocol conformance descriptor for AnyGesture<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnyGesture<()> and conformance AnyGesture<A>);
  }
}

uint64_t getEnumTagSinglePayload for GestureResponderExclusionPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GestureResponderExclusionPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
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
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for GestureResponderExclusionPolicy(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for GestureResponderExclusionPolicy(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AddGestureModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    *((v10 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithTake for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void type metadata accessor for _MapGesture<SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, ()>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, ()>)
  {
    type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(255, &lazy cache variable for type metadata for SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for SimultaneousGesture);
    v3 = v2;
    lazy protocol witness table accessor for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>(&lazy protocol witness table cache variable for type SimultaneousGesture<AnyGesture<()>, AnyGesture<()>> and conformance SimultaneousGesture<A, B>, &lazy cache variable for type metadata for SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for SimultaneousGesture, protocol conformance descriptor for SimultaneousGesture<A, B>);
    v5 = type metadata accessor for _MapGesture(a1, v3, MEMORY[0x1E69E7CA8] + 8, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, ()>);
    }
  }
}

void type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    v7 = v6;
    lazy protocol witness table accessor for type AnyGesture<()> and conformance AnyGesture<A>();
    v11[0] = v7;
    v11[1] = v7;
    v11[2] = v8;
    v11[3] = v8;
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for Attribute<GesturePhase<()>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, a3, a4, a5);
    v6 = type metadata accessor for Attribute();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply(uint64_t a1, uint64_t a2)
{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1, a2, &lazy cache variable for type metadata for AnyGesture<()>, type metadata accessor for AnyGesture, closure #1 in Attribute.init<A>(_:));
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1, a2, &lazy cache variable for type metadata for GesturePhase<()>, type metadata accessor for GesturePhase, closure #1 in Attribute.init<A>(_:));
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_0(a1, a2, closure #1 in Attribute.init<A>(_:));
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, a3, MEMORY[0x1E69E7CA8] + 8, a4);
  return a5(a1, v11, v10, v9, a2);
}

void lazy protocol witness table accessor for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>()
{
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GestureDebug.Value);
    swift_getWitnessTable(protocol conformance descriptor for GestureDebug.Value<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>);
  }
}

void lazy protocol witness table accessor for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>()
{
  if (!lazy protocol witness table cache variable for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGestureInfo<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGestureInfo);
    swift_getWitnessTable(protocol conformance descriptor for AnyGestureInfo<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>);
  }
}

uint64_t outlined destroy of AnyGestureInfo<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>()
{
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
    swift_getWitnessTable(protocol conformance descriptor for GestureDebug.Value<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>);
  }
}

void lazy protocol witness table accessor for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>()
{
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GestureDebug.Value);
    swift_getWitnessTable(protocol conformance descriptor for GestureDebug.Value<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>);
  }
}

void lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>()
{
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
    swift_getWitnessTable(protocol conformance descriptor for GestureDebug.Value<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>);
  }
}

void _s7SwiftUI11Map2GestureVyAA13TappableEventVAA08ModifierD0VyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGAEGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    lazy protocol witness table accessor for type _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()> and conformance _MapGesture<A, B>(a4, a5, protocol conformance descriptor for ModifierGesture<A, B>);
    v13[0] = &type metadata for TappableEvent;
    v13[1] = v9;
    v13[2] = &type metadata for TappableEvent;
    v13[3] = v10;
    v11 = type metadata accessor for Map2Gesture(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void lazy protocol witness table accessor for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>()
{
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GestureDebug.Value);
    swift_getWitnessTable(protocol conformance descriptor for GestureDebug.Value<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>);
  }
}

void type metadata accessor for Map<ResolvedStyledText, AnyGesture<()>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<ResolvedStyledText, AnyGesture<()>>)
  {
    type metadata accessor for ResolvedStyledText();
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<ResolvedStyledText, AnyGesture<()>>);
    }
  }
}

void lazy protocol witness table accessor for type _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()> and conformance _MapGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t outlined init with copy of GesturePhase<URL>(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for CombiningGestureViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for CombiningGestureViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = v3;
  return a1;
}

uint64_t assignWithTake for CombiningGestureViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t *assignWithCopy for SubviewsGesture(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;

  a1[1] = v3;
  return a1;
}

void *assignWithTake for SubviewsGesture(void *a1, _OWORD *a2)
{

  *a1 = *a2;
  return a1;
}

void type metadata accessor for EventListener<SpatialEvent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type SubviewsPhase and conformance SubviewsPhase()
{
  if (!lazy protocol witness table cache variable for type SubviewsPhase and conformance SubviewsPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsPhase, &unk_1F0096548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsPhase and conformance SubviewsPhase);
  }
}

void destroy for SubviewsPhase(uint64_t a1)
{

  v2 = *(a1 + 192);
}

uint64_t initializeWithCopy for SubviewsPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v6 = *(a2 + 96);
  v5 = *(a2 + 104);
  *(a1 + 96) = v6;
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 160);
  *(a1 + 160) = v7;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  v8 = *(a2 + 192);
  *(a1 + 192) = v8;
  *(a1 + 200) = *(a2 + 200);

  v9 = v6;

  v10 = v7;

  v11 = v8;
  return a1;
}

uint64_t assignWithCopy for SubviewsPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 160);
  v8 = *(a1 + 160);
  *(a1 + 160) = v7;
  v9 = v7;

  v10 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = v10;
  *(a1 + 184) = *(a2 + 184);
  v11 = *(a1 + 192);
  v12 = *(a2 + 192);
  *(a1 + 192) = v12;
  v13 = v12;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  return a1;
}

uint64_t assignWithTake for SubviewsPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  v5 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 176) = v5;
  *(a1 + 184) = *(a2 + 184);
  v6 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t getEnumTagSinglePayload for SubviewsPhase(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t storeEnumTagSinglePayload for SubviewsPhase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for SubviewsPhase.Value(uint64_t a1)
{
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136));

  return result;
}

uint64_t initializeWithCopy for SubviewsPhase.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v13 = *(a2 + 136);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v13);
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a1 + 136) = v13;
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithCopy for SubviewsPhase.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v22 = *(a2 + 136);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v22);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  v20 = *(a1 + 136);
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a1 + 136) = v22;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithTake for SubviewsPhase.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 136);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v4;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t getEnumTagSinglePayload for SubviewsPhase.Value(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SubviewsPhase.Value(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _s7SwiftUI13SubviewsPhase33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV5ValueVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double static Optional<A>._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 80);
  v45 = *(a2 + 64);
  v46 = v9;
  v47 = *(a2 + 96);
  v48 = *(a2 + 112);
  v10 = *(a2 + 16);
  v41 = *a2;
  v42 = v10;
  v11 = *(a2 + 48);
  v43 = *(a2 + 32);
  v44 = v11;
  v12 = *(a2 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for AnyGesture(0, AssociatedTypeWitness, v14, v15);
  LODWORD(v29) = v8;
  v18 = type metadata accessor for Optional<A>.Child(0, a3, a4, v17);
  swift_getWitnessTable(protocol conformance descriptor for A?<A>.Child, v18);
  _GraphValue.init<A>(_:)(&v29, v16, v18, v19, &v38);
  v33 = v45;
  v34 = v46;
  v35 = v47;
  v36 = v48;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v37 = v12;
  static AnyGesture._makeGesture(gesture:inputs:)(&v38, &v29, AssociatedTypeWitness, v39, v20);
  if ((v12 & 8) != 0 && (!swift_conformsToProtocol2() || !v16))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    LOBYTE(v38) = v23;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v37 = v12;
    v24 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v21, v22);
    v25 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v16, &v38, 0x100000000, &v29, v25 | ((HIDWORD(v25) & 1) << 32), 0x100000000, v24);
  }

  v26 = v39[1];
  v27 = v40;
  result = *v39;
  *a5 = v39[0];
  *(a5 + 8) = v26;
  *(a5 + 16) = v27;
  return result;
}

uint64_t Optional<A>.Child.gesture.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t Optional<A>.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  Optional<A>.Child.gesture.getter(&v18[-v7]);
  v19 = a2;
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for AnyGesture(0, AssociatedTypeWitness, v10, v11);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.Child.value.getter, v18, MEMORY[0x1E69E73E0], v12, v13, &v21);
  (*(v6 + 8))(v8, v5);
  result = v21;
  if (!v21)
  {
    v16 = type metadata accessor for Optional<A>.Empty(0, a2, a3, v14);
    swift_getWitnessTable(protocol conformance descriptor for A?<A>.Empty, v16);
    return specialized AnyGesture.init<A>(_:)(v17, AssociatedTypeWitness, v16);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance A?<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Optional<A>.Child.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

void *static Optional<A>.Empty._makeGesture(gesture:inputs:)@<X0>(void *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v5, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  swift_storeEnumTagMultiPayload();
  v16 = v7;
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in Attribute.init(value:), v15, v7, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  (*(v8 + 8))(v10, v7);
  return _GestureOutputs.init(phase:)(v14[3], a3);
}

uint64_t partial apply for closure #1 in Optional<A>.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = specialized AnyGesture.init<A>(_:)(a1, AssociatedTypeWitness, v5);
  *a2 = result;
  return result;
}

void _FrameLayout.placement(of:in:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v24[0] = *a2;
  v24[1] = v5;
  v7 = *a2;
  v6 = a2[1];
  v24[2] = a2[2];
  v8 = *a1;
  v9 = *(a1 + 8);
  v25 = *(a2 + 48);
  v20 = v7;
  v21 = v6;
  v22 = a2[2];
  v23 = *(a2 + 48);
  PlacementContext.proposedSize.getter(v16);
  if (*(v3 + 8))
  {
    v10 = v16;
  }

  else
  {
    v10 = v3;
  }

  v11 = *v10;
  v12 = *(v3 + 8) & v17;
  v13 = (v3 + 16);
  v14 = *(v3 + 24);
  if (v14)
  {
    v13 = &v18;
  }

  v15 = *v13;
  LOBYTE(v20) = *(v3 + 8) & v17;
  v16[0] = v14 & v19;
  specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(v8, v9, v24, v11, v12, v15, v14 & v19, a3);
}

uint64_t View.frame()()
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  specialized _FrameLayout.init(width:height:alignment:)(0.0, 1, 0.0, 1, static Alignment.center, *(&static Alignment.center + 1), &v1);
  return View.modifier<A>(_:)();
}

Swift::Int AccessibilityLabelStorage.Placement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

SwiftUI::AccessibilityLabelStorage __swiftcall AccessibilityLabelStorage.init(texts:placement:)(Swift::OpaquePointer texts, SwiftUI::AccessibilityLabelStorage::Placement placement)
{
  v3 = *placement;
  *v2 = texts;
  *(v2 + 8) = v3;
  result.texts = texts;
  result.placement = placement;
  return result;
}

BOOL AccessibilityLabelStorage.removing(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = specialized Collection<>.firstIndex(of:)(a1, a2, a3 & 1, a4, *v4);
  v7 = v6;
  if ((v6 & 1) == 0)
  {
    v8 = specialized Array.remove(at:)(v5);
    outlined consume of Text.Storage(v8, v10, v9 & 1);
  }

  return (v7 & 1) == 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityLabelStorage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(*a1, *a2) & (v2 == v3);
}

void lazy protocol witness table accessor for type AccessibilityLabelStorage.Placement and conformance AccessibilityLabelStorage.Placement()
{
  if (!lazy protocol witness table cache variable for type AccessibilityLabelStorage.Placement and conformance AccessibilityLabelStorage.Placement)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabelStorage.Placement, &type metadata for AccessibilityLabelStorage.Placement, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityLabelStorage.Placement and conformance AccessibilityLabelStorage.Placement);
  }
}

SwiftUI::CachedEnvironment::ID __swiftcall CachedEnvironment.ID.init()()
{
  v1 = v0;
  result.base.value = AGMakeUniqueID();
  v1->base.value = result.base.value;
  return result;
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA023ContainerContextStylingC7EnabledV_Ttg5()
{
  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v5[3] = &type metadata for ContainerContextStylingFeatureEnabled.Key;
    lazy protocol witness table accessor for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key();
    v5[4] = v2;
    v3 = swift_allocObject();
    v5[0] = v3;
    *(v3 + 16) = "SwiftUI";
    *(v3 + 24) = 7;
    *(v3 + 32) = 2;
    *(v3 + 40) = "containerContextStylingEnabled";
    *(v3 + 48) = 30;
    *(v3 + 56) = 2;
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v1 & 1;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v1 = 0;
  return v1 & 1;
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA026EndedGestureWaitsForActiveC0V_Ttg5Tm()
{
  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    v0 = 1;
  }

  else
  {
    swift_beginAccess();
    v0 = static GestureContainerFeature.isEnabledOverride;
    if (static GestureContainerFeature.isEnabledOverride == 2)
    {
      if (one-time initialization token for envValue != -1)
      {
        swift_once();
      }

      v0 = static GestureContainerFeature.envValue;
      if (static GestureContainerFeature.envValue == 2)
      {
        if (one-time initialization token for userDefaultsValue != -1)
        {
          swift_once();
        }

        v0 = static GestureContainerFeature.userDefaultsValue;
        if (static GestureContainerFeature.userDefaultsValue == 2)
        {
          v5[3] = &type metadata for GestureContainerFeature.IOSFeature;
          lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
          v5[4] = v1;
          v2 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v5);
          if (v2)
          {
            if (one-time initialization token for v6 != -1)
            {
              swift_once();
            }

            v3 = static Semantics.v6;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C)
            {
              v0 = dyld_program_sdk_at_least();
            }

            else
            {
              v0 = static Semantics.forced >= v3;
            }
          }

          else
          {
            v0 = 0;
          }
        }
      }
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA016GestureContainerC0V_Ttg5()
{
  swift_beginAccess();
  v0 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride == 2)
  {
    swift_beginAccess();
    if (static CoreTesting.isRunning == 1)
    {
LABEL_3:
      v0 = 0;
      return v0 & 1;
    }

    if (one-time initialization token for envValue != -1)
    {
      swift_once();
    }

    v0 = static GestureContainerFeature.envValue;
    if (static GestureContainerFeature.envValue == 2)
    {
      if (one-time initialization token for userDefaultsValue != -1)
      {
        swift_once();
      }

      v0 = static GestureContainerFeature.userDefaultsValue;
      if (static GestureContainerFeature.userDefaultsValue == 2)
      {
        v5[3] = &type metadata for GestureContainerFeature.IOSFeature;
        lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
        v5[4] = v1;
        v2 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v5);
        if ((v2 & 1) == 0)
        {
          goto LABEL_3;
        }

        if (one-time initialization token for v6 != -1)
        {
          swift_once();
        }

        v3 = static Semantics.v6;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C)
        {
          v0 = dyld_program_sdk_at_least();
        }

        else
        {
          v0 = static Semantics.forced >= v3;
        }
      }
    }
  }

  return v0 & 1;
}

uint64_t CachedEnvironment.AnimatedFrame.animatedPosition()()
{
  if (*(v0 + 32) != 1)
  {
    return *(v0 + 28);
  }

  result = AGGraphCreateOffsetAttribute2();
  *(v0 + 28) = result;
  *(v0 + 32) = 0;
  return result;
}

uint64_t CachedEnvironment.AnimatedFrame.animatedSize()()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = AGGraphCreateOffsetAttribute2();
  *(v0 + 36) = result;
  *(v0 + 40) = 0;
  return result;
}

uint64_t CachedEnvironment.AnimatedFrame.animatedCGSize()()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 44);
  }

  result = AGGraphCreateOffsetAttribute2();
  *(v0 + 44) = result;
  *(v0 + 48) = 0;
  return result;
}

int32x2_t CachedEnvironment.AnimatedFrame.init(inputs:position:size:pixelLength:animatedFrame:environment:)@<D0>(int32x2_t *a1@<X0>, __int32 a2@<W1>, __int32 a3@<W2>, __int32 a4@<W3>, __int32 a5@<W4>, int32x2_t *a6@<X8>)
{
  v12 = a1[1].i32[0];

  a6->i32[0] = a2;
  a6->i32[1] = a3;
  a6[1].i32[0] = a4;
  a6[1].i32[1] = v12;
  result = vrev64_s32(a1[3]);
  a6[2] = result;
  a6[3].i32[0] = a5;
  a6[3].i32[1] = 0;
  a6[4].i8[0] = 1;
  a6[4].i32[1] = 0;
  a6[5].i8[0] = 1;
  a6[5].i32[1] = 0;
  a6[6].i8[0] = 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvedShapeStyles()
{
  Hasher.init(_seed:)();
  ResolvedShapeStyles.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvedShapeStyles(uint64_t a1)
{
  Hasher.init(_seed:)();
  ResolvedShapeStyles.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17ArchivedViewInputV_Tt2g5@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(a1, v8);
  if (result)
  {
    v5 = (result + 72);
    v6 = (result + 73);
  }

  else
  {
    v5 = &static ArchivedViewInput.defaultValue;
    v6 = &static ArchivedViewInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      result = swift_once();
    }
  }

  v7 = *v6;
  *a2 = *v5;
  a2[1] = v7;
  return result;
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, v7);
  if (v3)
  {
    v4 = *(v3 + 18);
    v5 = *(v3 + 76);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 32);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LayoutAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027LayoutAccessibilityProviderV033_BD5DB579992638706C312416A6669149LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5Tm@<X0>(Swift::Int hashValue@<X2>, uint64_t a2@<X0>, uint64_t (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a2);
  if (result)
  {
    v8 = *(result + 72);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(a1, v6);
  if (result)
  {
    v5 = *(result + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
  updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(a1, v2, v6);
  if (updated)
  {
    return *(updated + 72);
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v5;
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17StyleContextInputV_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(a1, v8);
  if (result)
  {
    v5 = (result + 72);
    v6 = (result + 80);
  }

  else
  {
    v5 = &static StyleContextInput.defaultValue;
    v6 = &static StyleContextInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      result = swift_once();
    }
  }

  v7 = *v6;
  *a2 = *v5;
  a2[1] = v7;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V027DisabledPageScrollAnimationF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  v8 = a5(a1);
  if (v8)
  {
    return *(v8 + 72);
  }

  else
  {
    return 2;
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE030GlassContainerSettingsOverrideV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(a1, *&v8[0]);
  if (v5)
  {

    memcpy(a2, v5 + 9, 0x149uLL);
  }

  else
  {
    _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOi0_(v8);
    *&v7[119] = v8[7];
    *&v7[103] = v8[6];
    *&v7[55] = v8[3];
    *&v7[39] = v8[2];
    *&v7[135] = v9[0];
    *&v7[144] = *(v9 + 9);
    *&v7[71] = v8[4];
    *&v7[87] = v8[5];
    *&v7[7] = v8[0];
    *&v7[23] = v8[1];
    *(a2 + 185) = *&v7[96];
    *(a2 + 201) = *&v7[112];
    *(a2 + 217) = *&v7[128];
    *(a2 + 233) = *&v7[144];
    *(a2 + 121) = *&v7[32];
    *(a2 + 137) = *&v7[48];
    *(a2 + 153) = *&v7[64];
    *(a2 + 169) = *&v7[80];
    *(a2 + 89) = *v7;
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 1;
    *(a2 + 105) = *&v7[16];
    *(a2 + 40) = 0;
    a2[18] = 0u;
    a2[19] = 0u;
    a2[16] = 0u;
    a2[17] = 0u;
    *(a2 + 328) = 1;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE033UseDefaultGlassContainerAnimationV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, char *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 2;
  }

  *a6 = v11;
  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(a1, v7);
  if (v5)
  {
    v6 = v5[12];
    *a2 = v5[9];
    *(a2 + 8) = *(v5 + 5);
    *(a2 + 24) = v6;
  }

  else
  {
    _s7SwiftUI22EnvironmentPropertyKeyV12defaultValue0G0QzvgZAA0C6ValuesVAAE02__E22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLV_Tt0g5(a2);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(a1, v9);
  if (result)
  {
    v6 = *(result + 9);
    v7 = *(result + 22) | (*(result + 92) << 32);
    v8 = *(result + 93);
  }

  else
  {
    v7 = 0;
    v6 = 0uLL;
    v8 = 1;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 20) = BYTE4(v7);
  *(a2 + 21) = v8;
  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(a1, v13);
  if (v5)
  {
    v6 = v5[9];
    v7 = v5[10];
    v8 = v5[11];
    v9 = v5[12];
    v10 = v5[13];
    v11 = v5[14];
    v12 = v5[15];
    outlined copy of HoverEffectContext?(v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  a2[5] = v11;
  a2[6] = v12;
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(a1, v12);
  if (v5)
  {
    v6 = (v5 + 9);
    v7 = v5 + 10;
    v8 = v5 + 11;
  }

  else
  {
    v6 = &static EnvironmentValues.HoverEffectStateKey.defaultValue;
    v7 = &qword_1EAB144B0;
    v8 = &qword_1EAB144B8;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  v9 = *v7;
  v10 = *v8;
  *a2 = *v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(a1, v7);
  if (result)
  {
    v6 = *(result + 72);
  }

  else
  {
    v6 = 10;
  }

  *a2 = v6;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021PresentingContextMenuV033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V18_glassEffectHidden33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028GlassEffectBackdropGroupNameV033_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(a1, v6);
  if (!v3)
  {
    return 0;
  }

  v4 = v3[9];

  return v4;
}