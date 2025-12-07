uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.ListSelectionCanonicalIDKey(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for _ViewList_ID.Canonical?, MEMORY[0x1E697E088], MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance StackDepthModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ClearNavigationContextModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

double protocol witness for Rule.value.getter in conformance EnsureNavigationStateSeeds@<D0>(double *a3@<X8>)
{
  MEMORY[0x18D000B90]();
  Rule.withObservation<A>(observationCenter:do:)();

  result = v5;
  *a3 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier()
{
  result = lazy protocol witness table cache variable for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier;
  if (!lazy protocol witness table cache variable for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearNavigationContextModifier, &type metadata for ClearNavigationContextModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClearNavigationContextModifier and conformance ClearNavigationContextModifier);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void protocol witness for TabContent.body.getter in conformance <> TabForEach<A, B, C, D>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <> TabForEach<A, B, C, D>, a1, &v3);
  PrimitiveTabContent.body.getter(a1);
}

uint64_t sub_18C6325D8()
{
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t TabContent<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return NestedDynamicProperties.init(wrappedValue:)(v6, a1, a2);
}

uint64_t _TabContentBodyAdaptor.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for NestedDynamicProperties(0, v6, a2, a3);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v4, v8);
  return (*(*(v6 - 8) + 32))(a4, v10, v6);
}

uint64_t _TabContentBodyAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 + 16);
  v23 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v22 - v5;
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  _TabContentBodyAdaptor.content.getter(a1, v18, v19, v9);
  (*(v23 + 64))(v3);
  (*(v24 + 8))(v9, v3);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v25 + 8))(v6, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v12 + 8);
  v20(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v17, v11);
}

uint64_t TabContentBuilder.Content.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  v7 = type metadata accessor for NestedDynamicProperties(0, v6, a2, a3);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v4, v8);
  return (*(*(v6 - 8) + 32))(a4, v10, v6);
}

uint64_t TabContentBuilder.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  TabContentBuilder.Content.content.getter(a1, v16, v17, v6);
  (*(v8 + 56))(v3, v8);
  (*(v4 + 8))(v6, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v10 + 8);
  v18(v12, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v15, AssociatedTypeWitness);
}

uint64_t Optional<A>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[2] = *(a1 + 16);
  v7[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>._identifiedView.getter, v7, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v5, a3);
}

uint64_t ForEach<>.init<A>(_:id:liftedContent:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return ForEach<>.init<A>(_:id:liftedContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v17[1] = a6;
  v17[2] = a8;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v13);
  v17[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v12 + 8))(a1, a5);
}

uint64_t ForEach<>.init<A>(_:liftedContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return ForEach<>.init<A>(_:liftedContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

{
  v21[2] = a2;
  v21[3] = a3;
  v21[0] = a1;
  v21[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = a8;
  v21[9] = a10;
  v21[10] = a11;
  v21[11] = a12;
  v21[13] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v17 + 8))(v21[0], a4);
}

double ForEach<>.init<A>(_:liftedContent:)@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a3;
  v18[7] = a4;
  type metadata accessor for Range<Int>();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a9 = v20;
  *(a9 + 16) = v21;
  result = *&v22;
  *(a9 + 32) = v22;
  *(a9 + 48) = v23;
  return result;
}

uint64_t _TupleTabContent._identifiedView.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TupleView();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _TupleTabContent.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  TupleView.init(_:)();
  return (*(v5 + 8))(a1, a3);
}

uint64_t sub_18C634120()
{
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

void protocol witness for TabContent.body.getter in conformance AnyTabContent<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnyTabContent<A>, a1);

  PrimitiveTabContent.body.getter(a1);
}

void protocol witness for TabContent.body.getter in conformance <> AuxiliaryContent<A, B>(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  swift_getWitnessTable(a3, a1, &v4);
  PrimitiveTabContent.body.getter(a1);
}

void protocol witness for TabContent.body.getter in conformance <> TabGroup<A, B, C, D>(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = *(a2 - 24);
  v5 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  v6 = v4;
  swift_getWitnessTable(a3, a1, &v5);
  PrimitiveTabContent.body.getter(a1);
}

void specialized TabContent.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(31);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD43120);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t associated type witness table accessor for View.Body : View in _TabContentBodyAdaptor<A>(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for TabContent._IdentifiedView : View in <> _ConditionalContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = swift_getAssociatedConformanceWitness();
  v5[1] = swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable(MEMORY[0x1E697F968], a1, v5);
}

uint64_t instantiation function for generic protocol witness table for _TupleTabContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _TupleTabContent<A, B>);
  *(a1 + 8) = result;
  return result;
}

void closure #1 in configuration #1 (for:) in static DocumentUtils.documentConfiguration(for:of:)(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 88);
  v9 = *(v8 + 16);
  v11[3] = v3 + 16;
  v11[1] = v3 + 8;
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7++, v2, v4);
    v10 = UTType.conforms(to:)();
    (*(v3 + 8))(v6, v2);
    if (v10)
    {
      return;
    }
  }
}

void static DocumentUtils.contentType(of:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - v8;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], v4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = URL.pathExtension.getter();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v54 = v23;
    v50 = v11;
    v57 = a2;
    type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    v28 = *(v16 + 72);
    v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v55 = swift_allocObject();
    v30 = v55 + v29;
    static UTType.data.getter();
    static UTType.package.getter();
    v60 = a1;
    URL.pathExtension.getter();
    v53 = *(v16 + 16);
    v53(v20, v30, v15);
    UTType.init(filenameExtension:conformingTo:)();
    v56 = v16;
    v32 = *(v16 + 48);
    v31 = v16 + 48;
    v33 = (v16 + 32);
    v49 = (v16 + 8);
    v52 = v32;
    if (v32(v14, 1, v15) == 1)
    {
      v48 = (v16 + 32);
      v34 = v15;
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v14, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    }

    else
    {
      v35 = *v33;
      v36 = v54;
      (*v33)(v54, v14, v15);
      if ((UTType.isDynamic.getter() & 1) == 0)
      {
        a2 = v57;
        goto LABEL_21;
      }

      v48 = (v31 - 16);
      v34 = v15;
      (*v49)(v36, v15);
    }

    URL.pathExtension.getter();
    v53(v20, v30 + v28, v34);
    v15 = v34;
    UTType.init(filenameExtension:conformingTo:)();
    if (v52(v14, 1, v34) == 1)
    {
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v14, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      a2 = v57;
LABEL_12:
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v16 = v56;
      v11 = v50;
      goto LABEL_13;
    }

    v35 = *v48;
    v36 = v54;
    (*v48)(v54, v14, v34);
    v37 = UTType.isDynamic.getter();
    a2 = v57;
    if (v37)
    {
      (*v49)(v36, v15);
      goto LABEL_12;
    }

LABEL_21:
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35(a2, v36, v15);
    (*(v56 + 56))(a2, 0, 1, v15);
    return;
  }

LABEL_13:
  if (!URL.startAccessingSecurityScopedResource()())
  {
    (*(v16 + 56))(a2, 1, 1, v15);
    return;
  }

  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSURLResourceKey>, type metadata accessor for NSURLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v39 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v40 = v39;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSS_yptWOhTm_0(inited + 32, type metadata accessor for NSURLResourceKey);
  v41 = v58;
  URL.resourceValues(forKeys:)();
  v42 = v59;

  v43 = type metadata accessor for URLResourceValues();
  v44 = *(v43 - 8);
  (*(v44 + 56))(v41, 0, 1, v43);
  outlined init with copy of URLResourceValues?(v41, v42);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    v45 = MEMORY[0x1E69688C8];
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v41, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8]);
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v42, &lazy cache variable for type metadata for URLResourceValues?, v45);
    (*(v16 + 56))(v11, 1, 1, v15);
  }

  else
  {
    URLResourceValues.contentType.getter();
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v41, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8]);
    (*(v44 + 8))(v42, v43);
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      v46 = *(v16 + 32);
      v47 = v51;
      v46(v51, v11, v15);
      v46(a2, v47, v15);
      (*(v16 + 56))(a2, 0, 1, v15);
      goto LABEL_23;
    }
  }

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(v11, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  (*(v16 + 56))(a2, 1, 1, v15);
LABEL_23:
  URL.stopAccessingSecurityScopedResource()();
}

id specialized static DocumentUtils.serializationFailed.getter()
{
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v13._object = 0x800000018CD4BEC0;
  v2.value._countAndFlagsBits = 0x746E656D75636F44;
  v3._object = 0x800000018CD4BE90;
  v4._object = 0x800000018CD4BE90;
  v13._countAndFlagsBits = 0xD00000000000007DLL;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v13);

  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v7;
  *(inited + 48) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSS_yptWOhTm_0(inited + 32, type metadata accessor for (String, Any));
  v8 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v9 = MEMORY[0x18D00C850](0xD00000000000001ALL, 0x800000018CD4BF40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithDomain:v9 code:101 userInfo:isa];

  return v11;
}

id specialized static DocumentUtils.contentTypeNotRegisteredError()()
{
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v19._object = 0x800000018CD4BFA0;
  v2.value._countAndFlagsBits = 0x746E656D75636F44;
  v3._object = 0x800000018CD4BF60;
  v4._object = 0x800000018CD4BF60;
  v19._countAndFlagsBits = 0xD000000000000068;
  v3._countAndFlagsBits = 0xD000000000000030;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0xD000000000000030;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v19);

  v5 = MEMORY[0x1E69E6F90];
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  v7 = currentAppName()();
  v8 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  v9 = String.init(format:_:)();
  v11 = v10;

  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), v5);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v8;
  *(inited + 40) = v13;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSS_yptWOhTm_0(inited + 32, type metadata accessor for (String, Any));
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = MEMORY[0x18D00C850](0xD00000000000001ALL, 0x800000018CD4BF40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithDomain:v15 code:100 userInfo:isa];

  return v17;
}

uint64_t _sSS_yptWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of URLResourceValues?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for URLResourceValues?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for URLResourceValues?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LegacyNavigationLinkModifier.$deprecated_isActive.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 25))
  {
  }

  else
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    return v3;
  }

  return v1;
}

BOOL LegacyNavigationLinkModifier.isContextuallyDisabled.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 64);
  v3 = *(v2 + 40);
  if (v3 == 1)
  {
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  v4 = *(v2 + 32);
  outlined init with copy of NavigationLinkPresentedValue?(v1 + *(a1 + 56), &v12);
  if (*(&v13 + 1) == 1)
  {
    outlined destroy of NavigationLinkPresentedValue?(&v12);
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  v15[0] = v12;
  v15[1] = v13;
  v16 = v14;
  outlined init with copy of NavigationLinkPresentedValue(v15, &v12);
  if (!*(&v13 + 1))
  {
    outlined destroy of NavigationLinkPresentedValue(v15);
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  v9 = v12;
  v10 = v13;
  v11 = v14;
  if ((v4 & 1) == 0)
  {
    outlined destroy of NavigationLinkPresentedValue(v15);
    goto LABEL_11;
  }

  v5 = *(&v10 + 1);
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
  v7 = (*(v6 + 16))(v5, v6);
  outlined destroy of NavigationLinkPresentedValue(v15);
  if (!v3)
  {
LABEL_11:
    outlined destroy of AnyNavigationLinkPresentedValue(&v9);
    return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
  }

  outlined destroy of AnyNavigationLinkPresentedValue(&v9);
  if (v7 == v3)
  {
    return 0;
  }

  return specialized Environment.wrappedValue.getter(*(v1 + 56), *(v1 + 64)) != 1;
}

void LegacyNavigationLinkModifier.init(payload:legacy_updateSeed:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 45) = 0;
  *(a7 + 56) = swift_getKeyPath();
  *(a7 + 64) = 0;
  v15 = type metadata accessor for LegacyNavigationLinkModifier(0, a5, a6, v14);
  v16 = a7 + v15[14];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = xmmword_18CD6A6D0;
  v19 = type metadata accessor for NavigationDestinationPayload(0, a5, v17, v18);
  v20 = a1 + v19[10];
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 17);
  *(a7 + 8) = *v20;
  *(a7 + 16) = v22;
  v24 = *(v20 + 16);
  *(a7 + 24) = v24;
  *(a7 + 25) = v23;
  if (!a3)
  {
    a2 = 0;
    a4 = 0;
  }

  *(a7 + 65) = *(a1 + v19[9]);
  outlined copy of StateOrBinding<Bool>(v21, v22, v24, v23);
  *(a7 + v15[15]) = NavigationDestinationPayload.alwaysDisableLink.getter(v19);
  (*(*(a5 - 8) + 16))(a7 + v15[13], a1, a5);
  outlined assign with copy of NavigationLinkPresentedValue?(a1 + v19[7], v16);
  v25 = (a1 + v19[12]);
  v26 = (a7 + v15[16]);
  v27 = v25[1];
  *v26 = *v25;
  v26[1] = v27;
  v26[2] = v25[2];
  v28 = *(a1 + v19[8]);
  (*(*(v19 - 1) + 8))(a1, v19);
  *a7 = v28;
  outlined consume of StateOrBinding<Bool>(*(a7 + 32), *(a7 + 40), *(a7 + 48), *(a7 + 52));
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 52) = a3 != 0;
}

uint64_t outlined assign with copy of NavigationLinkPresentedValue?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for LegacyNavigationLinkModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LegacyNavigationLinkModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v7 + ((v6 + 66) & ~v6) + 55) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v11 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    v12 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 17);
    if (v14 >= 2)
    {
      v14 = *v13 + 2;
    }

    if (v14 == 1)
    {
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 8);
      *(v12 + 16) = *(v13 + 16);

      v15 = 1;
    }

    else
    {
      v15 = 0;
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 8);
    }

    *(v12 + 17) = v15;
    v16 = (v13 + 25) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v16 + 20);
    if (v17 >= 2)
    {
      v17 = *v16 + 2;
    }

    v42 = a1;
    v18 = ~v6;
    v19 = (v12 + 25) & 0xFFFFFFFFFFFFFFF8;
    if (v17 == 1)
    {
      *v19 = *v16;
      *(v19 + 8) = *(v16 + 8);
      *(v19 + 16) = *(v16 + 16);

      v20 = 1;
    }

    else
    {
      v20 = 0;
      *v19 = *v16;
      *(v19 + 8) = *(v16 + 8);
    }

    *(v19 + 20) = v20;
    v21 = (v12 + 53) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v13 + 53) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    outlined copy of Environment<Selector?>.Content(*v22, v24);
    *v21 = v23;
    *(v21 + 8) = v24;
    *(v21 + 9) = *(v22 + 9);
    (*(v5 + 16))((v21 + v6 + 10) & v18, (v22 + v6 + 10) & v18, v4);
    v25 = ((v21 + v6 + 10) & v18) + v7;
    v26 = ((v22 + v6 + 10) & v18) + v7;
    v27 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v28 + 24);
    LODWORD(v30) = -1;
    if (v29 < 0xFFFFFFFF)
    {
      v30 = *(v28 + 24);
    }

    v31 = v30 + 1;
    if (v29)
    {
      v32 = v31 > 1;
    }

    else
    {
      v32 = 0;
    }

    if (v32)
    {
      v35 = *v28;
      v36 = *(v28 + 16);
      *(v27 + 32) = *(v28 + 32);
      *v27 = v35;
      *(v27 + 16) = v36;
      v11 = v42;
    }

    else
    {
      v11 = v42;
      if (v31)
      {
        v33 = *v28;
        v34 = *(v28 + 16);
        *(v27 + 32) = *(v28 + 32);
        *v27 = v33;
        *(v27 + 16) = v34;
      }

      else
      {
        *(v27 + 24) = v29;
        *(v27 + 32) = *(v28 + 32);
        (**(v29 - 8))(v27, (v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    *(v27 + 40) = *(v28 + 40);
    v37 = ((v25 + 55) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v26 + 55) & 0xFFFFFFFFFFFFFFF8);
    v39 = *v38;
    v40 = v38[2];
    v37[1] = v38[1];
    v37[2] = v40;
    *v37 = v39;
  }

  return v11;
}

void *destroy for LegacyNavigationLinkModifier(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v3 + 17);
  if (v4 >= 2)
  {
    v4 = *v3 + 2;
  }

  if (v4 == 1)
  {
  }

  v5 = (v3 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 20);
  if (v6 >= 2)
  {
    v6 = *v5 + 2;
  }

  if (v6 == 1)
  {
  }

  v7 = (v3 + 53) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v7, *(v7 + 8));
  v8 = *(*(a2 + 16) - 8);
  v9 = v8 + 8;
  v10 = (v7 + *(v8 + 80) + 10) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  result = ((*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (result[3] >= 0xFFFFFFFFuLL)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

void *initializeWithCopy for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v6 + 17);
  if (v7 >= 2)
  {
    v7 = *v6 + 2;
  }

  if (v7 == 1)
  {
    *v5 = *v6;
    *(v5 + 8) = *(v6 + 8);
    *(v5 + 16) = *(v6 + 16);

    v8 = 1;
  }

  else
  {
    v8 = 0;
    *v5 = *v6;
    *(v5 + 8) = *(v6 + 8);
  }

  *(v5 + 17) = v8;
  v9 = (v6 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 20);
  if (v10 >= 2)
  {
    v10 = *v9 + 2;
  }

  v11 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v10 == 1)
  {
    *v11 = *v9;
    *(v11 + 8) = *(v9 + 8);
    *(v11 + 16) = *(v9 + 16);

    v12 = 1;
  }

  else
  {
    v12 = 0;
    *v11 = *v9;
    *(v11 + 8) = *(v9 + 8);
  }

  *(v11 + 20) = v12;
  v13 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v6 + 53) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(*v14, v16);
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 9) = *(v14 + 9);
  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 16;
  v19 = *(v17 + 80);
  v20 = (v19 + 10 + v13) & ~v19;
  v21 = (v19 + 10 + v14) & ~v19;
  (*(v17 + 16))(v20, v21);
  v27 = *(v18 + 48);
  v22 = v27 + v20;
  v23 = v27 + v21;
  v24 = (v27 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v27 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 24);
  LODWORD(v27) = -1;
  if (v26 < 0xFFFFFFFF)
  {
    v27 = *(v25 + 24);
  }

  v28 = v27 + 1;
  if (v26)
  {
    v29 = v28 > 1;
  }

  else
  {
    v29 = 0;
  }

  if (v29 || v28)
  {
    v30 = *v25;
    v31 = *(v25 + 16);
    *(v24 + 32) = *(v25 + 32);
    *v24 = v30;
    *(v24 + 16) = v31;
  }

  else
  {
    *(v24 + 24) = v26;
    *(v24 + 32) = *(v25 + 32);
    (**(v26 - 8))(v24, v25);
  }

  *(v24 + 40) = *(v25 + 40);
  v32 = ((v22 + 55) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v23 + 55) & 0xFFFFFFFFFFFFFFF8);
  v34 = *v33;
  v35 = v33[2];
  v32[1] = v33[1];
  v32[2] = v35;
  *v32 = v34;
  return a1;
}

void *assignWithCopy for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v5 != v6)
  {
    v7 = *(v5 + 17);
    if (v7 >= 2)
    {
      v7 = *v5 + 2;
    }

    if (v7 == 1)
    {
    }

    v8 = *(v6 + 17);
    if (v8 >= 2)
    {
      v8 = *v6 + 2;
    }

    if (v8 == 1)
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 16) = *(v6 + 16);
      *(v5 + 17) = 1;
    }

    else
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 17) = 0;
    }
  }

  v9 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v9 != v10)
  {
    v11 = *(v9 + 20);
    if (v11 >= 2)
    {
      v11 = *v9 + 2;
    }

    if (v11 == 1)
    {
    }

    v12 = *(v10 + 20);
    if (v12 >= 2)
    {
      v12 = *v10 + 2;
    }

    if (v12 == 1)
    {
      *v9 = *v10;
      *(v9 + 8) = *(v10 + 8);
      *(v9 + 16) = *(v10 + 16);
      *(v9 + 20) = 1;
    }

    else
    {
      *v9 = *v10;
      *(v9 + 8) = *(v10 + 8);
      *(v9 + 20) = 0;
    }
  }

  v13 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v6 + 53) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(*v14, v16);
  v17 = *v13;
  v18 = *(v13 + 8);
  *v13 = v15;
  *(v13 + 8) = v16;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  *(v13 + 9) = *(v14 + 9);
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = (v21 + 10 + v13) & ~v21;
  v23 = (v21 + 10 + v14) & ~v21;
  (*(v19 + 24))(v22, v23);
  v29 = *(v20 + 40);
  v24 = v29 + v22;
  v25 = v29 + v23;
  v26 = (v29 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v29 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v26 + 24);
  LODWORD(v29) = -1;
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  else
  {
    v30 = *(v26 + 24);
  }

  v31 = v30 + 1;
  v32 = *(v27 + 24);
  if (v32 < 0xFFFFFFFF)
  {
    v29 = *(v27 + 24);
  }

  v33 = v29 + 1;
  if (v32)
  {
    v34 = v33 >= 2;
  }

  else
  {
    v34 = 0;
  }

  v35 = !v34;
  if (v28)
  {
    v36 = v31 > 1;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (!v35)
  {
    if (!v31)
    {
      v37 = v26;
      goto LABEL_47;
    }

LABEL_48:
    v38 = *v27;
    v39 = *(v27 + 16);
    *(v26 + 32) = *(v27 + 32);
    *v26 = v38;
    *(v26 + 16) = v39;
    goto LABEL_49;
  }

  if (v31)
  {
LABEL_43:
    if (!v33)
    {
      *(v26 + 24) = v32;
      *(v26 + 32) = *(v27 + 32);
      (**(v32 - 8))(v26, v27);
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v37 = v26;
  if (v33)
  {
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1(v37);
    goto LABEL_48;
  }

  __swift_assign_boxed_opaque_existential_1(v26, v27);
LABEL_49:
  *(v26 + 40) = *(v27 + 40);
  v40 = ((v24 + 55) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v25 + 55) & 0xFFFFFFFFFFFFFFF8);
  v42 = *v41;
  v43 = v41[2];
  v40[1] = v41[1];
  v40[2] = v43;
  *v40 = v42;
  return a1;
}

void *initializeWithTake for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 17);
  if (v6 >= 2)
  {
    v6 = *v5 + 2;
  }

  if (v6 == 1)
  {
    v7 = *v5;
    *(v4 + 16) = *(v5 + 16);
    *v4 = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *v4 = *v5;
  }

  *(v4 + 17) = v8;
  v9 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 20);
  if (v10 >= 2)
  {
    v10 = *v9 + 2;
  }

  v11 = (v4 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v10 == 1)
  {
    v12 = *v9;
    *(v11 + 16) = *(v9 + 16);
  }

  else
  {
    LOBYTE(v10) = 0;
    v12 = *v9;
  }

  *v11 = v12;
  *(v11 + 20) = v10;
  v13 = (v4 + 53) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  *(v13 + 9) = *(v14 + 9);
  v16 = *(*(a3 + 16) - 8);
  v17 = v16 + 32;
  v18 = *(v16 + 80);
  v19 = (v18 + 10 + v13) & ~v18;
  v20 = (v18 + 10 + v14) & ~v18;
  (*(v16 + 32))(v19, v20);
  v21 = *(v17 + 32);
  v22 = v21 + v19;
  v23 = v21 + v20;
  v24 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  *(v24 + 40) = *(v25 + 40);
  v28 = ((v22 + 55) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v23 + 55) & 0xFFFFFFFFFFFFFFF8);
  v30 = *v29;
  v31 = v29[2];
  v28[1] = v29[1];
  v28[2] = v31;
  *v28 = v30;
  return a1;
}

void *assignWithTake for LegacyNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v5 != v6)
  {
    v7 = *(v5 + 17);
    if (v7 >= 2)
    {
      v7 = *v5 + 2;
    }

    if (v7 == 1)
    {
    }

    v8 = *(v6 + 17);
    if (v8 >= 2)
    {
      v8 = *v6 + 2;
    }

    if (v8 == 1)
    {
      v9 = *v6;
      *(v5 + 16) = *(v6 + 16);
      *v5 = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *v5 = *v6;
    }

    *(v5 + 17) = v10;
  }

  v11 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v6 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (v11 != v12)
  {
    v13 = *(v11 + 20);
    if (v13 >= 2)
    {
      v13 = *v11 + 2;
    }

    if (v13 == 1)
    {
    }

    v14 = *(v12 + 20);
    if (v14 >= 2)
    {
      v14 = *v12 + 2;
    }

    if (v14 == 1)
    {
      v15 = *v12;
      *(v11 + 16) = *(v12 + 16);
      *v11 = v15;
      v16 = 1;
    }

    else
    {
      v16 = 0;
      *v11 = *v12;
    }

    *(v11 + 20) = v16;
  }

  v17 = (v5 + 53) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v6 + 53) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  *v17 = *v18;
  *(v17 + 8) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  *(v17 + 9) = *(v18 + 9);
  v22 = *(*(a3 + 16) - 8);
  v23 = v22 + 40;
  v24 = *(v22 + 80);
  v25 = (v24 + 10 + v17) & ~v24;
  v26 = (v24 + 10 + v18) & ~v24;
  (*(v22 + 40))(v25, v26);
  v27 = *(v23 + 24);
  v28 = v27 + v25;
  v29 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v29 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = (v27 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  v32 = *(v30 + 16);
  *(v29 + 32) = *(v30 + 32);
  *v29 = v31;
  *(v29 + 16) = v32;
  *(v29 + 40) = *(v30 + 40);
  v33 = ((v28 + 55) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v27 + v26 + 55) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyNavigationLinkModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v8 = 2147483645;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v7 + ((v6 + 66) & ~v6) + 55) & 0xFFFFFFFFFFFFFFF8) + 48;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 53) & 0xFFFFFFFFFFFFFFF8) + v6 + 10) & ~v6;
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if ((v19 + 1) < 2)
    {
      LODWORD(v19) = 0;
    }

    if (v19 >= 2)
    {
      return (v19 - 1);
    }

    else
    {
      return 0;
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

double storeEnumTagSinglePayload for LegacyNavigationLinkModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v20 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 53) & 0xFFFFFFFFFFFFFFF8) + v8 + 10) & ~v8;
      if (v6 < 0x7FFFFFFD)
      {
        v22 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFD)
        {
          *(v22 + 32) = 0;
          result = 0.0;
          *v22 = 0u;
          *(v22 + 16) = 0u;
          *v22 = a2 - 2147483646;
        }

        else
        {
          *(v22 + 24) = a2 + 1;
        }
      }

      else
      {
        v21 = *(v5 + 56);

        v21(v20);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, ((v9 + ((v8 + 66) & ~v8) + 55) & 0xFFFFFFFFFFFFFFF8) + 48);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v10) = v16;
    }

    else
    {
      *(a1 + v10) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v10) = v16;
  }

  return result;
}

uint64_t LegacyNavigationLinkModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = *(v9 + 24);
  v11 = type metadata accessor for LegacyBaseModifier(0, v5, v41, v10);
  v45 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v37[-v13];
  swift_getWitnessTable(protocol conformance descriptor for LegacyNavigationLinkModifier<A>, a2, v12);
  v40 = type metadata accessor for _ViewModifier_Content();
  v46 = v11;
  v15 = type metadata accessor for ModifiedContent();
  v44 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37[-v20];
  v39 = *v3;
  v22 = *(v6 + 16);
  v23 = v3 + *(a2 + 52);
  v42 = v8;
  v43 = v5;
  v22(v8, v23, v5, v19);
  v51 = xmmword_18CD6A6D0;
  v38 = *(v3 + 65);
  v24 = 1;
  if ((*(v3 + *(a2 + 60)) & 1) == 0)
  {
    v24 = LegacyNavigationLinkModifier.isContextuallyDisabled.getter(a2);
  }

  v25 = LegacyNavigationLinkModifier.$deprecated_isActive.getter();
  v27 = v26;
  v29 = v28;
  outlined init with copy of NavigationLinkPresentedValue?(v3 + *(a2 + 56), v50);
  v49 = 1;
  *&v30 = LegacyBaseModifier.init(namespaceID:destination:environment:updateSeed:isDetail:alwaysDisable:isPresented:presentedValue:)(v39, v42, &v51, 0x100000000, v38, v24, v25, v27, v14, v29 & 1, v50, v43, v41).n128_u64[0];
  v31 = v40;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v40, v30);
  v33 = v31;
  v34 = v46;
  MEMORY[0x18D00A570](v14, v33, v46, WitnessTable);
  (*(v45 + 8))(v14, v34);
  v48[0] = WitnessTable;
  v48[1] = &protocol witness table for LegacyBaseModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v15, v48);
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = *(v44 + 8);
  v35(v17, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v35)(v21, v15);
}

__n128 LegacyBaseModifier.init(namespaceID:destination:environment:updateSeed:isDetail:alwaysDisable:isPresented:presentedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *a3;
  v18 = a3[1];
  *a9 = a1;
  v19 = type metadata accessor for LegacyBaseModifier(0, a12, a13, a4);
  (*(*(a12 - 8) + 32))(&a9[v19[9]], a2, a12);
  v20 = &a9[v19[10]];
  *v20 = v17;
  *(v20 + 1) = v18;
  v21 = &a9[v19[11]];
  *v21 = a4;
  v21[4] = BYTE4(a4) & 1;
  a9[v19[12]] = a5;
  a9[v19[13]] = a6;
  v22 = &a9[v19[14]];
  *v22 = a7;
  *(v22 + 1) = a8;
  v22[16] = a10;
  v23 = &a9[v19[15]];
  result = *a11;
  v25 = *(a11 + 16);
  *v23 = *a11;
  *(v23 + 1) = v25;
  *(v23 + 4) = *(a11 + 32);
  return result;
}

uint64_t type metadata completion function for LegacyBaseModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LegacyBaseModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((((v6 + ((v5 + 8) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 8) & ~v5;
    v11 = (a2 + v5 + 8) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = ((v6 + v10) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v6 + v11) & 0xFFFFFFFFFFFFFFF8);
    LODWORD(v14) = -1;
    if (*v13 < 0xFFFFFFFF)
    {
      v14 = *v13;
    }

    if (v14 - 1 < 0)
    {
      *v12 = *v13;
      v12[1] = v13[1];
    }

    else
    {
      *v12 = *v13;
    }

    v15 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 4) = *(v16 + 4);
    *v15 = v17;
    *(v15 + 5) = *(v16 + 5);
    *(v15 + 6) = *(v16 + 6);
    v24 = (v12 + 19) | 7;
    v18 = (v13 + 19) | 7;
    v19 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    *(v19 + 16) = *(v20 + 16);
    v21 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v22 + 24);
    LODWORD(v24) = -1;
    if (v23 < 0xFFFFFFFF)
    {
      v24 = *(v22 + 24);
    }

    v25 = v24 + 1;

    if (v23)
    {
      v26 = v25 > 1;
    }

    else
    {
      v26 = 0;
    }

    if (v26 || v25)
    {
      v27 = *v22;
      v28 = *(v22 + 16);
      *(v21 + 32) = *(v22 + 32);
      *v21 = v27;
      *(v21 + 16) = v28;
    }

    else
    {
      *(v21 + 24) = v23;
      *(v21 + 32) = *(v22 + 32);
      (**(v23 - 8))(v21, v22, v23);
    }
  }

  return v3;
}

void *initializeWithCopy for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 16))(v7, v8);
  v11 = *(v5 + 48) + 7;
  v9 = ((v11 + v7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v11 + v8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v11) = -1;
  if (*v10 < 0xFFFFFFFF)
  {
    v11 = *v10;
  }

  if (v11 - 1 < 0)
  {
    *v9 = *v10;
    v9[1] = v10[1];
  }

  else
  {
    *v9 = *v10;
  }

  v12 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 4) = *(v13 + 4);
  *v12 = v14;
  *(v12 + 5) = *(v13 + 5);
  *(v12 + 6) = *(v13 + 6);
  v21 = (v9 + 19) | 7;
  v15 = (v10 + 19) | 7;
  v16 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  v18 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 24);
  LODWORD(v21) = -1;
  if (v20 < 0xFFFFFFFF)
  {
    v21 = *(v19 + 24);
  }

  v22 = v21 + 1;

  if (v20)
  {
    v23 = v22 > 1;
  }

  else
  {
    v23 = 0;
  }

  if (v23 || v22)
  {
    v24 = *v19;
    v25 = *(v19 + 16);
    *(v18 + 32) = *(v19 + 32);
    *v18 = v24;
    *(v18 + 16) = v25;
  }

  else
  {
    *(v18 + 24) = v20;
    *(v18 + 32) = *(v19 + 32);
    (**(v20 - 8))(v18, v19, v20);
  }

  return a1;
}

void *assignWithCopy for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 24))(v7, v8);
  v11 = *(v5 + 40) + 7;
  v9 = ((v11 + v7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v11 + v8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v11) = -1;
  if (*v9 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  else
  {
    v12 = *v9;
  }

  v13 = v12 - 1;
  v14 = *v10;
  if (*v10 < 0xFFFFFFFF)
  {
    v11 = *v10;
  }

  v15 = v11 - 1;
  if ((v13 & 0x80000000) == 0)
  {
    if (v15 < 0)
    {
      *v9 = v14;
      v9[1] = v10[1];

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v15 & 0x80000000) == 0)
  {

LABEL_11:
    *v9 = *v10;
    goto LABEL_12;
  }

  *v9 = v14;

  v9[1] = v10[1];

LABEL_12:
  v16 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v17 = v10 + 19;
  v18 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v16 + 4) = *(v18 + 4);
  *v16 = v19;
  *(v16 + 5) = *(v18 + 5);
  *(v16 + 6) = *(v18 + 6);
  v20 = (v9 + 19) | 7;
  v21 = v17 | 7;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = ((v17 | 7) + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);

  *(v22 + 16) = *(v23 + 16);
  v24 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 24);
  LODWORD(v27) = -1;
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  else
  {
    v28 = *(v24 + 24);
  }

  v29 = v28 + 1;
  v30 = *(v25 + 24);
  if (v30 < 0xFFFFFFFF)
  {
    v27 = *(v25 + 24);
  }

  v31 = v27 + 1;
  if (v30)
  {
    v32 = v31 >= 2;
  }

  else
  {
    v32 = 0;
  }

  v33 = !v32;
  if (v26)
  {
    v34 = v29 > 1;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    if (!v33)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (!v33)
  {
    if (!v29)
    {
      goto LABEL_35;
    }

LABEL_36:
    v35 = *v25;
    v36 = *(v25 + 16);
    *(v24 + 32) = *(v25 + 32);
    *v24 = v35;
    *(v24 + 16) = v36;
    return a1;
  }

  if (v29)
  {
LABEL_32:
    if (!v31)
    {
      *(v24 + 24) = v30;
      *(v24 + 32) = *(v25 + 32);
      (**(v30 - 8))(v24, (v21 + 31) & 0xFFFFFFFFFFFFFFF8);
      return a1;
    }

    goto LABEL_36;
  }

  if (v31)
  {
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_36;
  }

  __swift_assign_boxed_opaque_existential_1(v24, ((v21 + 31) & 0xFFFFFFFFFFFFFFF8));
  return a1;
}

void *initializeWithTake for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 19;
  *v10 = v12;
  v10 += 19;
  v13 = v10 & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 4) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v13 = v14;
  *(v13 + 5) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 5);
  *(v13 + 6) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 6);
  v10 |= 7uLL;
  v11 |= 7uLL;
  v15 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  *(v15 + 16) = *(v16 + 16);
  *v15 = v17;
  v18 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v19;
  v20 = *(v19 + 16);
  *(v18 + 32) = *(v19 + 32);
  *v18 = v21;
  *(v18 + 16) = v20;
  return a1;
}

void *assignWithTake for LegacyBaseModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 40))(v7, v8);
  v11 = *(v5 + 24) + 7;
  v9 = ((v11 + v7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v11 + v8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v11) = -1;
  if (*v9 < 0xFFFFFFFF)
  {
    v11 = *v9;
  }

  if (v11 - 1 >= 0)
  {
    goto LABEL_8;
  }

  LODWORD(v12) = -1;
  if (*v10 < 0xFFFFFFFF)
  {
    v12 = *v10;
  }

  if (v12 - 1 >= 0)
  {

LABEL_8:
    *v9 = *v10;
    goto LABEL_9;
  }

  *v9 = *v10;

  v9[1] = v10[1];

LABEL_9:
  v13 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 4) = *(v14 + 4);
  *v13 = v15;
  *(v13 + 5) = *(v14 + 5);
  *(v13 + 6) = *(v14 + 6);
  v16 = (v9 + 19) | 7;
  v17 = (v10 + 19) | 7;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;

  *(v18 + 8) = *(v19 + 8);

  *(v18 + 16) = *(v19 + 16);
  v20 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v20 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v21 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyBaseModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for LegacyBaseModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 8] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *((((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 0x10) = 0;
          *(((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) = a2 & 0x7FFFFFFF;
          *((((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = 0;
        }

        else
        {
          *((((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t LegacyBaseModifier.isPresented.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  return v6;
}

double static LegacyBaseModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  type metadata accessor for LegacyBaseModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  v10 = _GraphValue.value.getter();
  v12 = type metadata accessor for LegacyBaseModifier.Transform(0, a5, a6, v11);
  LODWORD(v16) = v17;
  v14 = type metadata accessor for LegacyBaseModifier.Wrapper(0, a5, a6, v13);
  swift_getWitnessTable(protocol conformance descriptor for LegacyBaseModifier<A>.Wrapper, v14);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for LegacyBaseModifier<A>.Transform, v12);
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  result = v16;
  *a7 = __PAIR64__(v10, v17);
  a7[1] = v16;
  return result;
}

uint64_t static LegacyBaseModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for LegacyBaseModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  _GraphValue.value.getter();
  v9 = type metadata accessor for LegacyBaseModifier.Transform(0, a5, a6, v8);
  v11 = type metadata accessor for LegacyBaseModifier.Wrapper(0, a5, a6, v10);
  swift_getWitnessTable(protocol conformance descriptor for LegacyBaseModifier<A>.Wrapper, v11);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for LegacyBaseModifier<A>.Transform, v9);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t closure #1 in static LegacyBaseModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyBaseModifier(0, a2, a3, a4);
  v7 = *(v6 + 52);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E6370];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, a4, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #2 in static LegacyBaseModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyBaseModifier(0, a2, a3, a4);
  v7 = *(v6 + 60);
  v13[2] = v6;
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, a4, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v13[5];
}

uint64_t LegacyBaseModifier.Wrapper.modifier.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for LegacyBaseModifier(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t LegacyBaseModifier.Wrapper.value.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = type metadata accessor for LegacyBaseModifier(0, a3, a4, a4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-v9 - 8];
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationLinkPresentedValue?(Value, v15);
  if (v16)
  {
    if (v16 != 1)
    {
      outlined destroy of NavigationLinkPresentedValue(v15);
      MEMORY[0x18D009810](0xD00000000000008BLL, 0x800000018CD4C010);
      LegacyBaseModifier.Wrapper.modifier.getter(a3, a4, v10);
      v12 = 1;
      return LegacyBaseModifier.Transform.init(modifier:shouldDisable:)(v10, v12, a3, a4, x8_0);
    }

    outlined destroy of NavigationLinkPresentedValue?(v15);
  }

  else
  {
    outlined destroy of NavigationLinkPresentedValue(v15);
  }

  LegacyBaseModifier.Wrapper.modifier.getter(a3, a4, v10);
  v12 = *AGGraphGetValue();
  return LegacyBaseModifier.Transform.init(modifier:shouldDisable:)(v10, v12, a3, a4, x8_0);
}

uint64_t LegacyBaseModifier.Transform.init(modifier:shouldDisable:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LegacyBaseModifier(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for LegacyBaseModifier.Transform(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance LegacyBaseModifier<A>.Wrapper@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for LegacyBaseModifier.Transform(0, *(a1 + 16), *(a1 + 24), a3);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

BOOL LegacyBaseModifier.Transform.isViewDestinationLink.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyBaseModifier(0, *(a1 + 16), *(a1 + 24), a4);
  outlined init with copy of NavigationLinkPresentedValue?(v4 + *(v5 + 60), v8);
  v6 = v9 == 1;
  outlined destroy of NavigationLinkPresentedValue?(v8);
  return v6;
}

double LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable(protocol conformance descriptor for LegacyBaseModifier<A>.Transform, v7);
  v8 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v8);
  View.disabled(_:)();
  v22 = v29;
  *&v23 = v30;
  (*(v5 + 16))(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a2 + 16);
  (*(v5 + 32))(v11 + v10, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  _s7SwiftUI28NavigationLinkPresentedValueOSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v12 = type metadata accessor for ModifiedContent();
  v13 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  v25[0] = WitnessTable;
  v25[1] = v13;
  v14 = MEMORY[0x1E697E858];
  v15 = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v25);
  View.transactionalPreferenceTransform<A>(key:transform:)(&type metadata for NavigationDestinationsKey, partial apply for closure #1 in LegacyBaseModifier.Transform.body(content:), v11, v12, &type metadata for NavigationDestinationsKey, v15, &protocol witness table for NavigationDestinationsKey);

  v22 = v26;
  v23 = v27;
  v24 = v28;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, v16, v17, v18);
  v19 = type metadata accessor for ModifiedContent();
  v21[0] = v15;
  v21[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  swift_getWitnessTable(v14, v19, v21);
  static ViewBuilder.buildExpression<A>(_:)();

  v26 = v29;
  v27 = v30;
  v28 = v31;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

unint64_t closure #1 in LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LegacyBaseModifier.Transform(0, v12, v13, v12);
  if (a3[*(v14 + 36)] & 1) == 0 && LegacyBaseModifier.Transform.isViewDestinationLink.getter(v14, v15, v16, v17) && (v19 = type metadata accessor for LegacyBaseModifier(0, a4, a5, v18), (LegacyBaseModifier.isPresented.getter(v19)))
  {
    v36 = *a3;
    (*(v9 + 16))(v11, &a3[v19[9]], a4);
    v20 = v19[11];
    v35 = a3[v19[12]];
    v21 = &a3[v19[10]];
    v23 = v21[1];
    v37[0] = *v21;
    v22 = v37[0];
    v37[1] = v23;
    v24 = a3[v20 + 4];
    v26 = implicit closure #3 in closure #1 in LegacyBaseModifier.Transform.body(content:)(a3, a4, a5, v25);
    v34 = v27;

    outlined copy of EnvironmentValues?(v22, v23);
    LOBYTE(v38[0]) = v24;
    v32 = a4;
    v28 = v36;
    NavigationDestinationContent.init<A>(id:content:isDetail:transaction:environment:updateSeed:onDismiss:)(v36, v11, v35, a2, v37, v26, v34, v38, v32, a5);
    v39 = 0;
    v29 = v28;
  }

  else
  {
    v30 = *a3;
    *&v38[0] = v30;
    *(&v38[0] + 1) = a2;
    v39 = 1;

    v29 = v30;
  }

  return specialized Dictionary.subscript.setter(v38, v29);
}

uint64_t (*implicit closure #3 in closure #1 in LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LegacyBaseModifier.Transform(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return partial apply for implicit closure #4 in implicit closure #3 in closure #1 in LegacyBaseModifier.Transform.body(content:);
}

uint64_t type metadata completion function for LegacyBaseModifier.Transform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LegacyBaseModifier(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = (((((v7 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v8 + 41 > 0x18)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    v12 = (a1 + v6 + 8) & ~v6;
    v13 = (a2 + v6 + 8) & ~v6;
    (*(v5 + 16))(v12, v13);
    v14 = ((v7 + v12) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
    LODWORD(v16) = -1;
    if (*v15 < 0xFFFFFFFF)
    {
      v16 = *v15;
    }

    if (v16 - 1 < 0)
    {
      *v14 = *v15;
      v14[1] = v15[1];
    }

    else
    {
      *v14 = *v15;
    }

    v17 = v8 + 40;
    v18 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v15 + 19) & 0xFFFFFFFFFFFFFFF8;
    v20 = *v19;
    *(v18 + 4) = *(v19 + 4);
    *v18 = v20;
    *(v18 + 5) = *(v19 + 5);
    *(v18 + 6) = *(v19 + 6);
    v27 = (v14 + 19) | 7;
    v21 = (v15 + 19) | 7;
    v22 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *(v22 + 16) = *(v23 + 16);
    v24 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v25 + 24);
    LODWORD(v27) = -1;
    if (v26 < 0xFFFFFFFF)
    {
      v27 = *(v25 + 24);
    }

    v28 = v27 + 1;

    if (v26)
    {
      v29 = v28 > 1;
    }

    else
    {
      v29 = 0;
    }

    if (v29 || v28)
    {
      v30 = *v25;
      v31 = *(v25 + 16);
      *(v24 + 32) = *(v25 + 32);
      *v24 = v30;
      *(v24 + 16) = v31;
    }

    else
    {
      *(v24 + 24) = v26;
      *(v24 + 32) = *(v25 + 32);
      (**(v26 - 8))(v24, v25, v26);
    }

    *(v4 + v17) = *(a2 + v17);
  }

  return v4;
}

void *destroy for LegacyBaseModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 8) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = ((*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v6) = -1;
  if (*v5 < 0xFFFFFFFF)
  {
    v6 = *v5;
  }

  if (v6 - 1 < 0)
  {
  }

  result = ((((v5 + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8);
  if (result[3] >= 0xFFFFFFFFuLL)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

void *initializeWithCopy for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = v7 + 8;
  v9 = (a1 + v7 + 8) & ~v7;
  v10 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 16))(v9, v10);
  v11 = *(v6 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v14) = -1;
  if (*v13 < 0xFFFFFFFF)
  {
    v14 = *v13;
  }

  if (v14 - 1 < 0)
  {
    *v12 = *v13;
    v12[1] = v13[1];
  }

  else
  {
    *v12 = *v13;
  }

  v15 = ~v7;
  v16 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 4) = *(v17 + 4);
  *v16 = v18;
  *(v16 + 5) = *(v17 + 5);
  *(v16 + 6) = *(v17 + 6);
  v25 = (v12 + 19) | 7;
  v19 = (v13 + 19) | 7;
  v20 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 16) = *(v21 + 16);
  v22 = (v25 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v23 + 24);
  LODWORD(v25) = -1;
  if (v24 < 0xFFFFFFFF)
  {
    v25 = *(v23 + 24);
  }

  v26 = v25 + 1;

  if (v24)
  {
    v27 = v26 > 1;
  }

  else
  {
    v27 = 0;
  }

  if (v27 || v26)
  {
    v28 = *v23;
    v29 = *(v23 + 16);
    *(v22 + 32) = *(v23 + 32);
    *v22 = v28;
    *(v22 + 16) = v29;
  }

  else
  {
    *(v22 + 24) = v24;
    *(v22 + 32) = *(v23 + 32);
    (**(v24 - 8))(v22, v23, v24);
  }

  v30 = ((((((v11 + (v8 & v15)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v30) = *(a2 + v30);
  return a1;
}

void *assignWithCopy for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = v7 + 8;
  v9 = (a1 + v7 + 8) & ~v7;
  v10 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 24))(v9, v10);
  v11 = *(v6 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v14) = -1;
  if (*v12 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  else
  {
    v15 = *v12;
  }

  v16 = v15 - 1;
  v17 = *v13;
  if (*v13 < 0xFFFFFFFF)
  {
    v14 = *v13;
  }

  v18 = v14 - 1;
  if ((v16 & 0x80000000) == 0)
  {
    if (v18 < 0)
    {
      *v12 = v17;
      v12[1] = v13[1];

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v18 & 0x80000000) == 0)
  {

LABEL_11:
    *v12 = *v13;
    goto LABEL_12;
  }

  *v12 = v17;

  v12[1] = v13[1];

LABEL_12:
  v19 = ~v7;
  v20 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v21 = v13 + 19;
  v22 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v20 + 4) = *(v22 + 4);
  *v20 = v23;
  *(v20 + 5) = *(v22 + 5);
  *(v20 + 6) = *(v22 + 6);
  v24 = (v12 + 19) | 7;
  v25 = v21 | 7;
  v26 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = ((v21 | 7) + 7) & 0xFFFFFFFFFFFFFFF8;
  *v26 = *v27;

  *(v26 + 8) = *(v27 + 8);

  *(v26 + 16) = *(v27 + 16);
  v28 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v25 + 31) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v28 + 24);
  LODWORD(v31) = -1;
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  else
  {
    v32 = *(v28 + 24);
  }

  v33 = v32 + 1;
  v34 = *(v29 + 24);
  if (v34 < 0xFFFFFFFF)
  {
    v31 = *(v29 + 24);
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
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (!v37)
  {
    if (!v33)
    {
      goto LABEL_35;
    }

LABEL_36:
    v39 = *v29;
    v40 = *(v29 + 16);
    *(v28 + 32) = *(v29 + 32);
    *v28 = v39;
    *(v28 + 16) = v40;
    goto LABEL_37;
  }

  if (v33)
  {
LABEL_32:
    if (!v35)
    {
      *(v28 + 24) = v34;
      *(v28 + 32) = *(v29 + 32);
      (**(v34 - 8))(v28, (v25 + 31) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v35)
  {
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(v28);
    goto LABEL_36;
  }

  __swift_assign_boxed_opaque_existential_1(v28, ((v25 + 31) & 0xFFFFFFFFFFFFFFF8));
LABEL_37:
  v41 = ((((((v11 + (v8 & v19)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v41) = *(a2 + v41);
  return a1;
}

void *initializeWithTake for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32) + 7;
  v11 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v12 += 19;
  *v11 = v13;
  v11 += 19;
  v14 = v11 & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v12 & 0xFFFFFFFFFFFFFFF8);
  *(v14 + 4) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v14 = v15;
  *(v14 + 5) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 5);
  *(v14 + 6) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 6);
  v11 |= 7uLL;
  v12 |= 7uLL;
  v16 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 16) = *(v17 + 16);
  *v16 = v18;
  v19 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v20;
  v21 = *(v20 + 16);
  *(v19 + 32) = *(v20 + 32);
  *v19 = v22;
  *(v19 + 16) = v21;
  v23 = ((((((v10 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v23) = *(a2 + v23);
  return a1;
}

void *assignWithTake for LegacyBaseModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = v7 + 8;
  v9 = (a1 + v7 + 8) & ~v7;
  v10 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 40))(v9, v10);
  v11 = *(v6 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v14) = -1;
  if (*v12 < 0xFFFFFFFF)
  {
    v14 = *v12;
  }

  if (v14 - 1 >= 0)
  {
    goto LABEL_8;
  }

  LODWORD(v15) = -1;
  if (*v13 < 0xFFFFFFFF)
  {
    v15 = *v13;
  }

  if (v15 - 1 >= 0)
  {

LABEL_8:
    *v12 = *v13;
    goto LABEL_9;
  }

  *v12 = *v13;

  v12[1] = v13[1];

LABEL_9:
  v16 = ~v7;
  v17 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *v17 = v19;
  *(v17 + 5) = *(v18 + 5);
  *(v17 + 6) = *(v18 + 6);
  v20 = (v12 + 19) | 7;
  v21 = (v13 + 19) | 7;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);

  *(v22 + 16) = *(v23 + 16);
  v24 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v24 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v25 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = ((((((v11 + (v8 & v16)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(a1 + v28) = *(a2 + v28);
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyBaseModifier.Transform(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 41;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    v18 = &a1[v6 + 8] & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void storeEnumTagSinglePayload for LegacyBaseModifier.Transform(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((((v10 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 8] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 0x10) = 0;
          *((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) = a2 & 0x7FFFFFFF;
          *(((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = 0;
        }

        else
        {
          *(((((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((((v10 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 19) | 7) + 31) & 0xFFFFFFFFFFFFFFF8) + 41);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

unint64_t partial apply for closure #1 in LegacyBaseModifier.Transform.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for LegacyBaseModifier.Transform(0, v7, v8, a4) - 8);
  v10 = (v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));

  return closure #1 in LegacyBaseModifier.Transform.body(content:)(a1, a2, v10, v7, v8);
}

void type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>)
  {
    v4 = type metadata accessor for TransactionalPreferenceTransformModifier(0, &type metadata for NavigationDestinationsKey, &protocol witness table for NavigationDestinationsKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority()
{
  result = lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority;
  if (!lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemVisibilityPriority, &type metadata for ToolbarItemVisibilityPriority, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority and conformance ToolbarItemVisibilityPriority);
  }

  return result;
}

double destroy for ToolbarItemVisibilityPriority(void *a1)
{
  if (*a1 >= 3uLL)
  {
  }

  return result;
}

unint64_t *assignWithCopy for ToolbarItemVisibilityPriority(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 >= 3)
  {
    if (v4 >= 3)
    {
      *a1 = v4;
    }

    else
    {

      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v4;
    if (v4 >= 3)
    {
    }
  }

  return a1;
}

unint64_t *assignWithTake for ToolbarItemVisibilityPriority(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result >= 3)
  {
    if (v2 >= 3)
    {
      *result = v2;
      v4 = result;

      return v4;
    }

    else
    {
      v3 = result;

      result = v3;
      *v3 = v2;
    }
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemVisibilityPriority(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarItemVisibilityPriority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t *assignWithTake for ToolbarItemVisibilityPriority.Storage(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage()
{
  result = lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage;
  if (!lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemVisibilityPriority.Storage, &type metadata for ToolbarItemVisibilityPriority.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemVisibilityPriority.Storage and conformance ToolbarItemVisibilityPriority.Storage);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SecondaryNavigationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 24);
    LODWORD(v13) = -1;
    if (v12 < 0xFFFFFFFF)
    {
      v13 = *(v11 + 24);
    }

    v14 = v13 + 1;
    if (v12)
    {
      v15 = v14 > 1;
    }

    else
    {
      v15 = 0;
    }

    if (v15 || v14)
    {
      v16 = *v11;
      v17 = *(v11 + 16);
      *(v10 + 32) = *(v11 + 32);
      *v10 = v16;
      *(v10 + 16) = v17;
    }

    else
    {
      *(v10 + 24) = v12;
      *(v10 + 32) = *(v11 + 32);
      (**(v12 - 8))();
    }
  }

  return v3;
}

uint64_t assignWithCopy for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v9 = *(v5 + 40) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + 24);
  LODWORD(v9) = -1;
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  else
  {
    v10 = *(v6 + 24);
  }

  v11 = v10 + 1;
  v12 = *(v7 + 24);
  if (v12 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v13 = v9 + 1;
  if (v12)
  {
    v14 = v13 >= 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  if (v8)
  {
    v16 = v11 > 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (!v15)
  {
    if (!v11)
    {
      goto LABEL_24;
    }

LABEL_25:
    v17 = *v7;
    v18 = *(v7 + 16);
    *(v6 + 32) = *(v7 + 32);
    *v6 = v17;
    *(v6 + 16) = v18;
    return a1;
  }

  if (v11)
  {
LABEL_21:
    if (!v13)
    {
      *(v6 + 24) = v12;
      *(v6 + 32) = *(v7 + 32);
      (**(v12 - 8))(v6, v7);
      return a1;
    }

    goto LABEL_25;
  }

  if (v13)
  {
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v6);
    goto LABEL_25;
  }

  __swift_assign_boxed_opaque_existential_1(v6, v7);
  return a1;
}

uint64_t initializeWithTake for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t assignWithTake for SecondaryNavigationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(((v6 + a1) & 0xFFFFFFFFFFFFFFF8));
  }

  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for SecondaryNavigationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
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
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) < 2)
    {
      LODWORD(v17) = 0;
    }

    if (v17 >= 2)
    {
      return (v17 - 1);
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for SecondaryNavigationModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFD)
    {
      *(v19 + 32) = 0;
      result = 0.0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *v19 = a2 - 2147483646;
    }

    else
    {
      *(v19 + 24) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t SecondaryNavigationModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NavigationLinkPresentedValue?(v2 + *(a2 + 36), &v15);
  if (v16 == 1)
  {
    outlined destroy of AnyAccessibilityValue?(&v15, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(&v15, &v17);
    v5.i64[0] = 0;
    v6 = v18;
    if (!*(&v18 + 1))
    {
      v6 = 0;
    }

    *&v18 = v6;
    v4.i64[0] = *(&v18 + 1);
    v7 = vandq_s8(v17, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v4, v5)).i64[0], 0));
    v8 = v19;
    if (!*(&v18 + 1))
    {
      v8 = 0;
    }

    v17 = v7;
    v19 = v8;
    outlined destroy of NavigationLinkPresentedValue(&v15);
  }

  swift_getWitnessTable(protocol conformance descriptor for SecondaryNavigationModifier<A>, a2);
  v9 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v9);
  View.onPlatformContainerSecondaryNavigation(value:action:)(&v17, 0, 0, v9, WitnessTable);
  outlined destroy of AnyAccessibilityValue?(&v17, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  v11 = type metadata accessor for ModifiedContent();
  v14[0] = WitnessTable;
  v14[1] = lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier();
  swift_getWitnessTable(MEMORY[0x1E697E858], v11, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(*(v11 - 8) + 8);
  v12(&v15, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(&v17, v11);
}

void *initializeBufferWithCopyOfBuffer for BridgedListState.ScrollTarget(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = a1 + v8;
    v11 = a2 + v8;
    *v10 = *v11;
    v10[16] = v11[16];
    *(a1 + v9) = *(a2 + v9);
  }

  return a1;
}

uint64_t destroy for BridgedListState.ScrollTarget(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithCopy for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  v10 = *v9;
  *(v8 + 16) = *(v9 + 16);
  *v8 = v10;
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t initializeWithTake for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithTake for BridgedListState.ScrollTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for BridgedListState(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a3[5];
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = type metadata accessor for BridgedListState.ScrollTarget(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
      type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
      memcpy(v8, v9, *(*(v12 - 8) + 64));
    }

    else
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 16))(v8, v9, v14);
      v15 = *(v10 + 20);
      v16 = &v8[v15];
      v17 = &v9[v15];
      *v16 = *v17;
      v16[16] = v17[16];
      v8[*(v10 + 24)] = v9[*(v10 + 24)];
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    v18 = a3[6];
    v19 = a3[7];
    v20 = v4 + v18;
    v21 = a2 + v18;
    v20[112] = v21[112];
    v22 = *(v21 + 6);
    *(v20 + 5) = *(v21 + 5);
    *(v20 + 6) = v22;
    v23 = *(v21 + 4);
    v24 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v24;
    v25 = *(v21 + 3);
    *(v20 + 2) = *(v21 + 2);
    *(v20 + 3) = v25;
    *(v20 + 4) = v23;
    *(v4 + v19) = *(a2 + v19);
  }

  return v4;
}

void *assignWithCopy for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      v30 = type metadata accessor for IndexPath();
      (*(*(v30 - 8) + 24))(v7, v8, v30);
      v31 = *(v9 + 20);
      v32 = &v7[v31];
      v33 = &v8[v31];
      v34 = *v33;
      v32[16] = v33[16];
      *v32 = v34;
      v7[*(v9 + 24)] = v8[*(v9 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v7, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 16))(v7, v8, v14);
  v15 = *(v9 + 20);
  v16 = &v7[v15];
  v17 = &v8[v15];
  v18 = *v17;
  v16[16] = v17[16];
  *v16 = v18;
  v7[*(v9 + 24)] = v8[*(v9 + 24)];
  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_7:
  v20 = a3[6];
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 3);
  *(v21 + 2) = *(v22 + 2);
  *(v21 + 3) = v25;
  *v21 = v23;
  *(v21 + 1) = v24;
  v26 = *(v22 + 4);
  v27 = *(v22 + 5);
  v28 = *(v22 + 6);
  v21[112] = v22[112];
  *(v21 + 5) = v27;
  *(v21 + 6) = v28;
  *(v21 + 4) = v26;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void *initializeWithTake for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 32))(v7, v8, v12);
    v13 = *(v9 + 20);
    v14 = &v7[v13];
    v15 = &v8[v13];
    *v14 = *v15;
    v14[16] = v15[16];
    v7[*(v9 + 24)] = v8[*(v9 + 24)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v16 = a3[6];
  v17 = a3[7];
  v18 = a1 + v16;
  v19 = a2 + v16;
  v18[112] = v19[112];
  v20 = *(v19 + 6);
  *(v18 + 5) = *(v19 + 5);
  *(v18 + 6) = v20;
  v21 = *(v19 + 4);
  v22 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v22;
  v23 = *(v19 + 3);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = v23;
  *(v18 + 4) = v21;
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

void *assignWithTake for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 40))(v7, v8, v28);
      v29 = *(v9 + 20);
      v30 = &v7[v29];
      v31 = &v8[v29];
      *v30 = *v31;
      v30[16] = v31[16];
      v7[*(v9 + 24)] = v8[*(v9 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v7, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 32))(v7, v8, v14);
  v15 = *(v9 + 20);
  v16 = &v7[v15];
  v17 = &v8[v15];
  *v16 = *v17;
  v16[16] = v17[16];
  v7[*(v9 + 24)] = v8[*(v9 + 24)];
  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_7:
  v19 = a3[6];
  v20 = a3[7];
  v21 = a1 + v19;
  v22 = a2 + v19;
  v21[112] = v22[112];
  v23 = *(v22 + 6);
  *(v21 + 5) = *(v22 + 5);
  *(v21 + 6) = v23;
  v24 = *(v22 + 4);
  v25 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v25;
  v26 = *(v22 + 3);
  *(v21 + 2) = *(v22 + 2);
  *(v21 + 3) = v26;
  *(v21 + 4) = v24;
  *(a1 + v20) = *(a2 + v20);
  return a1;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 48;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

uint64_t ListScrollable.init(state:dataSourceProvider:scrollView:children:lastUpdateSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for ListScrollable(0, a6, a7, a4);
  v16 = v15[9];
  v18 = type metadata accessor for ListScrollable.DataSourceProvider(0, a6, a7, v17);
  result = (*(*(v18 - 8) + 32))(&a8[v16], a2, v18);
  *&a8[v15[10]] = a3;
  *&a8[v15[11]] = a4;
  *&a8[v15[12]] = a5;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListCoreOptions and conformance ListCoreOptions()
{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListCoreOptions, &type metadata for ListCoreOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListCoreOptions, &type metadata for ListCoreOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListCoreOptions, &type metadata for ListCoreOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions;
  if (!lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListCoreOptions, &type metadata for ListCoreOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreOptions and conformance ListCoreOptions);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ListScrollViewProvider@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BridgedListState.commit(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BridgedListState.CommitMutation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v8 = AGGraphGetAttributeGraph();
    AGGraphRef.viewGraph()();

    outlined init with copy of BridgedListState(v2, v6 + *(v4 + 20));
    *v6 = a1;
    v9[15] = 1;
    lazy protocol witness table accessor for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();

    return outlined destroy of BridgedListState.ScrollTarget(v6, type metadata accessor for BridgedListState.CommitMutation);
  }

  return result;
}

uint64_t closure #1 in BridgedListState.CommitMutation.apply()(unsigned int *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BridgedListState.CommitMutation(0);
  outlined init with copy of BridgedListState(a2 + *(v6 + 20), v5);
  AGGraphSetValue();
  return outlined destroy of BridgedListState.ScrollTarget(v5, type metadata accessor for BridgedListState);
}

uint64_t BridgedListState.CommitMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.CommitMutation?, type metadata accessor for BridgedListState.CommitMutation);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BridgedListState.CommitMutation(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, a2, v19);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v12, 1, 1, v17);
    outlined destroy of TableRowList?(v12, &lazy cache variable for type metadata for BridgedListState.CommitMutation?, type metadata accessor for BridgedListState.CommitMutation, type metadata accessor for BridgedListState.ScrollTarget?);
    return 0;
  }

  v23(v12, 0, 1, v17);
  outlined init with take of BridgedListState(v12, v21, type metadata accessor for BridgedListState.CommitMutation);
  v24 = v32[1];
  v25 = type metadata accessor for BridgedListState(0);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    outlined destroy of BridgedListState.ScrollTarget(v21, type metadata accessor for BridgedListState.CommitMutation);
    return 0;
  }

  v26 = v24 + *(v17 + 20);
  v27 = *(v25 + 20);
  outlined init with copy of TableRowList?(v26 + v27, v9, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
  outlined assign with take of BridgedListState(&v21[*(v17 + 20)], v26);
  v28 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v29 = *(*(v28 - 8) + 48);
  if (v29(v9, 1, v28) != 1)
  {
    outlined init with copy of TableRowList?(v26 + v27, v6, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
    v30 = v29(v6, 1, v28);
    outlined destroy of TableRowList?(v6, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
    if (v30 == 1)
    {
      outlined assign with copy of BridgedListState.ScrollTarget?(v9, v26 + v27);
    }
  }

  outlined destroy of TableRowList?(v9, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
  return 1;
}

uint64_t ListScrollable.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BridgedListState(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of BridgedListState(WeakValue, a1);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(*(v2 - 8) + 56);

  return v5(a1, v4, 1, v2);
}

uint64_t ListScrollable.scrollView.getter(uint64_t a1)
{
  type metadata accessor for UIScrollView?(0, &lazy cache variable for type metadata for UIScrollView?, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8, type metadata accessor for NSObject);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 1;
  }

  v2 = *WeakValue;
  v3 = *WeakValue;
  return v2;
}

double ListScrollable.children.getter(uint64_t a1)
{
  type metadata accessor for [Scrollable](0);
  if (AGGraphGetWeakValue())
  {
  }

  return result;
}

void *protocol witness for GraphMutation.apply() in conformance BridgedListState.CommitMutation()
{
  Attribute = AGWeakAttributeGetAttribute();
  v2 = Attribute == *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    v3 = Attribute;
  }

  v5[2] = v0;
  v6 = v2;
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI23AccessibilityAttachmentVAGE4TreeOG_s5NeverOytTg5(partial apply for closure #1 in BridgedListState.CommitMutation.apply(), v5, v3 | (v2 << 32));
}

uint64_t ListScrollable.dataSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for ListScrollable.DataSourceProvider(0, v6, *(a1 + 24), a3);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  (*(v11 + 16))(&v16 - v9, v3 + *(a1 + 36), v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Optional();
    return (*(*(v12 - 8) + 32))(a2, v10, v12);
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v15 = *(v6 - 8);
      (*(v15 + 16))(a2, WeakValue, v6);
      return (*(v15 + 56))(a2, 0, 1, v6);
    }

    else
    {
      return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
    }
  }
}

BOOL ListScrollable.scrollToIndex(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for BridgedListState(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ListScrollable.state.getter(v10);
  v15 = (*(v12 + 48))(v10, 1, v11);
  if (v15 == 1)
  {
    outlined destroy of TableRowList?(v10, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState, type metadata accessor for BridgedListState.ScrollTarget?);
  }

  else
  {
    outlined init with take of BridgedListState(v10, v14, type metadata accessor for BridgedListState);
    static Transaction.current.getter();
    v16 = type metadata accessor for IndexPath();
    (*(*(v16 - 8) + 16))(v7, a1, v16);
    v17 = Transaction.scrollTargetAnchor.getter();
    v28 = a2;
    v19 = v18;
    v21 = v20;
    v22 = Transaction.isAnimated.getter();
    v23 = type metadata accessor for BridgedListState.ScrollTarget(0);
    v24 = &v7[*(v23 + 20)];
    *v24 = v17;
    *(v24 + 1) = v19;
    v24[16] = v21 & 1;
    v7[*(v23 + 24)] = v22 & 1;
    (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
    outlined assign with take of AnyHashable?(v7, &v14[*(v11 + 20)], &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, type metadata accessor for BridgedListState.ScrollTarget?);
    v25 = *(v2 + *(v28 + 48));
    swift_beginAccess();
    v26 = *(v25 + 16) + 1;
    *(v25 + 16) = v26;
    *&v14[*(v11 + 28)] = v26;
    BridgedListState.commit(to:)(*v2);

    outlined destroy of BridgedListState.ScrollTarget(v14, type metadata accessor for BridgedListState);
  }

  return v15 != 1;
}

BOOL ListScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v32 = a4;
  v30 = a3;
  v6 = *(a2 + 16);
  v29 = type metadata accessor for Optional();
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v28 - v8;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  ListScrollable.dataSource.getter(a2, v9, v17);
  v18 = *(v6 - 8);
  if ((*(v18 + 48))(v9, 1, v6) == 1)
  {
    (*(v7 + 8))(v9, v29);
    (*(v14 + 56))(v12, 1, 1, v13);
    v19 = v32;
  }

  else
  {
    v19 = v32;
    (*(*(a2 + 24) + 136))(v31, v30, v32, v6);
    (*(v18 + 8))(v9, v6);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v16, v12, v13);
      v26 = ListScrollable.scrollToIndex(_:)(v16, a2);
      (*(v14 + 8))(v16, v13);
      return v26;
    }
  }

  outlined destroy of TableRowList?(v12, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], type metadata accessor for BridgedListState.ScrollTarget?);
  ListScrollable.children.getter(a2);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20);
    v21 = v30;
    *(&v28 - 6) = v6;
    *(&v28 - 5) = v21;
    *(&v28 - 4) = *(a2 + 24);
    *(&v28 - 3) = v19;
    *(&v28 - 2) = v31;
    v34 = 0;
    v23 = (v22 + 32);
    v24 = *(v22 + 16) + 1;
    while (--v24)
    {
      v25 = v23 + 5;
      partial apply for closure #1 in ListScrollable.scroll<A>(to:)(&v34, v23);
      v23 = v25;
    }

    v26 = v34;
  }

  else
  {
    return 0;
  }

  return v26;
}

uint64_t ListScrollable.runScrollTest(_:scrollMode:)(uint64_t a1, uint64_t (**a2)(void), uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = ListScrollable.scrollView.getter(a3);
  if (v5 >= 2)
  {
    v9[0] = v3;
    v9[1] = v4;
    v7 = v5;
    v6 = PPTTestCase.runScrollTest(_:scrollMode:onComplete:)(v5, v9, 0, 0);
    outlined consume of SheetBridge<SheetPreference.Key>??(v7);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t ListScrollable.runScrollTest(_:scrollMode:onComplete:)(uint64_t a1, uint64_t (**a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = ListScrollable.scrollView.getter(a5);
  if (v9 >= 2)
  {
    v13[0] = v7;
    v13[1] = v8;
    v11 = v9;
    v10 = PPTTestCase.runScrollTest(_:scrollMode:onComplete:)(v9, v13, a3, a4);
    outlined consume of SheetBridge<SheetPreference.Key>??(v11);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t ListScrollable.runScrollSubTest(_:subTestName:scrollMode:onComplete:)(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = *a3;
  v12 = a3[1];
  v13 = ListScrollable.scrollView.getter(a6);
  if (v13 >= 2)
  {
    v19[0] = v11;
    v19[1] = v12;
    v15 = v13;
    outlined init with copy of PPTTestCase(a1, v18);
    v16 = swift_allocObject();
    outlined init with take of PPTTestCase(v18, (v16 + 2));
    v16[7] = v10;
    v16[8] = v9;
    v16[9] = a4;
    v16[10] = a5;

    outlined copy of AppIntentExecutor?(a4, a5);
    v14 = PPTTestCase.runScrollTest(_:scrollMode:onComplete:)(v15, v19, partial apply for closure #1 in PPTTestCase.runScrollSubTest(_:subTestName:scrollMode:onComplete:), v16);

    outlined consume of SheetBridge<SheetPreference.Key>??(v15);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t ListScrollable.mapFirstChild<A, B>(ofType:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = a6;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v30 = *(v18 - 8);
  v31 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(v14 + 16))(v17, v6, a3, v19);
  v22 = swift_dynamicCast();
  (*(*(a4 - 8) + 56))(v13, v22 ^ 1u, 1, a4);
  v23 = *(a3 + 24);
  v36 = *(a3 + 16);
  v37 = a4;
  v38 = a5;
  v39 = v23;
  v40 = v32;
  v41 = v33;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.actionSheet<A>(item:content:), v35, MEMORY[0x1E69E73E0], a5, v24, v21);
  (*(v11 + 8))(v13, v10);
  v25 = *(a5 - 8);
  v26 = *(v25 + 48);
  if (v26(v21, 1, a5) == 1)
  {
    (*(v25 + 56))(v34, 1, 1, a5);
    result = v26(v21, 1, a5);
    if (result != 1)
    {
      return (*(v30 + 8))(v21, v31);
    }
  }

  else
  {
    v28 = v34;
    (*(v25 + 32))(v34, v21, a5);
    return (*(v25 + 56))(v28, 0, 1, a5);
  }

  return result;
}

unint64_t ListScrollable.visibleHeaderFooterIDs.getter(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v93 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v92 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v88 - v5;
  v98 = ListScrollable.scrollView.getter(a1);
  if (v98 < 2)
  {
    goto LABEL_35;
  }

  type metadata accessor for UpdateCoalescingTableView(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    outlined consume of SheetBridge<SheetPreference.Key>??(v98);
LABEL_35:
    v40 = ListScrollable.scrollView.getter(a1);
    if (v40 < 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v41 = v40;
    type metadata accessor for UpdateCoalescingCollectionView(0);
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      v64 = v41;
LABEL_59:
      outlined consume of SheetBridge<SheetPreference.Key>??(v64);
      return MEMORY[0x1E69E7CC0];
    }

    v43 = v42;
    v89 = v41;
    v44 = &selRef_bundleIdentifier;
    v97 = *MEMORY[0x1E69DDC08];
    v45 = [v42 indexPathsForVisibleSupplementaryElementsOfKind_];
    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = *(v46 + 16);
    v98 = v43;
    if (v47)
    {
      v48 = *(v93 + 16);
      v49 = *(v93 + 80);
      v88[1] = v46;
      v50 = v46 + ((v49 + 32) & ~v49);
      v94 = *(v93 + 72);
      v95 = v48;
      v96 = (v93 + 16);
      v51 = (v93 + 8);
      v12 = MEMORY[0x1E69E7CC0];
      v48(v6, v50, v2);
      while (1)
      {
        v52 = v97;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v54 = [v43 supplementaryViewForElementKind:v52 atIndexPath:isa];

        if (!v54)
        {
          goto LABEL_40;
        }

        type metadata accessor for ListCollectionViewCell(0);
        v55 = swift_dynamicCastClass();
        if (!v55)
        {
          break;
        }

        v56 = (v55 + direct field offset for ListCollectionViewCellBase.viewListID);
        v57 = *(v55 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
        if (v57)
        {
          v58 = v56[1];
          LODWORD(v91) = *v56;
          v59 = *(v57 + 16);
          swift_bridgeObjectRetain_n();
          if (v59)
          {
            v60 = *(v57 + 52);
            v90 = *(v57 + 32);

            swift_bridgeObjectRelease_n();
            if (v60)
            {
              v58 = -1;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
            v90 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
          }

          v62 = *(v12 + 2);
          v61 = *(v12 + 3);
          if (v62 >= v61 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v12);
          }

          (*v51)(v6, v2);
          *(v12 + 2) = v62 + 1;
          v63 = &v12[16 * v62];
          *(v63 + 8) = v91;
          *(v63 + 9) = v58;
          *(v63 + 5) = v90;
          v43 = v98;
        }

        else
        {
          (*v51)(v6, v2);
        }

LABEL_41:
        v50 += v94;
        if (!--v47)
        {

          v44 = &selRef_bundleIdentifier;
          goto LABEL_62;
        }

        v95(v6, v50, v2);
      }

LABEL_40:
      (*v51)(v6, v2);
      goto LABEL_41;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_62:
    v65 = v44[407];
    v97 = *MEMORY[0x1E69DDC00];
    v66 = [v43 v65];
    v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = *(v67 + 16);
    v69 = v92;
    if (!v68)
    {
LABEL_81:

      v39 = v89;
LABEL_82:
      outlined consume of SheetBridge<SheetPreference.Key>??(v39);
      return v12;
    }

    v70 = *(v93 + 16);
    v71 = *(v93 + 80);
    v91 = v67;
    v72 = v67 + ((v71 + 32) & ~v71);
    v95 = *(v93 + 72);
    v96 = v70;
    v73 = (v93 + 8);
    v93 += 16;
    v70(v92, v72, v2);
    while (1)
    {
      v74 = v97;
      v75 = IndexPath._bridgeToObjectiveC()().super.isa;
      v76 = [v98 supplementaryViewForElementKind:v74 atIndexPath:v75];

      if (!v76)
      {
        goto LABEL_65;
      }

      type metadata accessor for ListCollectionViewCell(0);
      v77 = swift_dynamicCastClass();
      if (!v77)
      {
        break;
      }

      v78 = (v77 + direct field offset for ListCollectionViewCellBase.viewListID);
      v79 = *(v77 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
      if (v79)
      {
        v80 = v78[1];
        LODWORD(v94) = *v78;
        v81 = *(v79 + 16);
        swift_bridgeObjectRetain_n();
        if (v81)
        {
          v82 = *(v79 + 32);
          v83 = *(v79 + 52);

          swift_bridgeObjectRelease_n();
          if (v83)
          {
            v80 = -1;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
          v82 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v85 = *(v12 + 2);
        v84 = *(v12 + 3);
        if (v85 >= v84 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v12);
        }

        v86 = v92;
        (*v73)(v92, v2);
        *(v12 + 2) = v85 + 1;
        v87 = &v12[16 * v85];
        v69 = v86;
        *(v87 + 8) = v94;
        *(v87 + 9) = v80;
        *(v87 + 5) = v82;
      }

      else
      {
        (*v73)(v69, v2);
      }

LABEL_66:
      v72 += v95;
      if (!--v68)
      {
        goto LABEL_81;
      }

      v96(v69, v72, v2);
    }

LABEL_65:
    (*v73)(v69, v2);
    goto LABEL_66;
  }

  v8 = v7;
  result = [v7 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v10 = result;
    if (result)
    {
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = &selRef_bundleIdentifier;
      v14 = &selRef_bundleIdentifier;
      do
      {
        v15 = [v8 v13[112]];
        if (v15)
        {
          v16 = v15;
          type metadata accessor for ListTableViewHeaderFooter();
          v17 = swift_dynamicCastClass();
          if (v17 && (v18 = (v17 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID), (v19 = *(v17 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8)) != 0))
          {
            v20 = *v18;
            v21 = v18[1];
            v22 = *(v19 + 16);
            swift_bridgeObjectRetain_n();
            if (v22)
            {
              v22 = *(v19 + 32);
              v23 = *(v19 + 52);

              swift_bridgeObjectRelease_n();
              if (v23)
              {
                v21 = -1;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
            }

            v25 = *(v12 + 2);
            v24 = *(v12 + 3);
            if (v25 >= v24 >> 1)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v12);
            }

            *(v12 + 2) = v25 + 1;
            v26 = &v12[16 * v25];
            *(v26 + 8) = v20;
            *(v26 + 9) = v21;
            *(v26 + 5) = v22;
            v13 = &selRef_bundleIdentifier;
            v14 = &selRef_bundleIdentifier;
          }

          else
          {
          }
        }

        v27 = [v8 v14[113]];
        if (v27)
        {
          v28 = v27;
          type metadata accessor for ListTableViewHeaderFooter();
          v29 = swift_dynamicCastClass();
          if (v29 && (v30 = (v29 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID), (v31 = *(v29 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8)) != 0))
          {
            v32 = *v30;
            v33 = v30[1];
            v34 = *(v31 + 16);
            swift_bridgeObjectRetain_n();
            if (v34)
            {
              v34 = *(v31 + 32);
              v35 = *(v31 + 52);

              swift_bridgeObjectRelease_n();
              if (v35)
              {
                v33 = -1;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
            }

            v37 = *(v12 + 2);
            v36 = *(v12 + 3);
            if (v37 >= v36 >> 1)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v12);
            }

            *(v12 + 2) = v37 + 1;
            v38 = &v12[16 * v37];
            *(v38 + 8) = v32;
            *(v38 + 9) = v33;
            *(v38 + 5) = v34;
            v13 = &selRef_bundleIdentifier;
            v14 = &selRef_bundleIdentifier;
          }

          else
          {
          }
        }

        ++v11;
      }

      while (v10 != v11);
      v39 = v98;
      goto LABEL_82;
    }

    v64 = v98;
    goto LABEL_59;
  }

  __break(1u);
  return result;
}

uint64_t ListScrollable.indexPathForHeaderFooterID(_:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v5 = type metadata accessor for IndexPath();
  v104 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a1 + 1);
  v101 = ListScrollable.scrollView.getter(a2);
  v102 = v5;
  if (v101 < 2)
  {
    goto LABEL_7;
  }

  type metadata accessor for UpdateCoalescingTableView(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    outlined consume of SheetBridge<SheetPreference.Key>??(v101);
LABEL_7:
    v20 = ListScrollable.scrollView.getter(a2);
    if (v20 < 2)
    {
      return (*(v104 + 56))(v97, 1, 1, v5);
    }

    v21 = v20;
    type metadata accessor for UpdateCoalescingCollectionView(0);
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
      v69 = v21;
      goto LABEL_99;
    }

    v23 = v22;
    v92 = v7;
    v93 = v21;
    v94 = v11;
    v24 = &selRef_bundleIdentifier;
    v101 = *MEMORY[0x1E69DDC08];
    v25 = [v22 indexPathsForVisibleSupplementaryElementsOfKind_];
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v26 + 16);
    v95 = v12;
    v100 = v27;
    v103 = v23;
    if (v27)
    {
      v28 = 0;
      result = v104;
      v99 = v26 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
      v98 = v104 + 16;
      v96 = v12 | (v94 << 32);
      v29 = (v104 + 8);
      while (1)
      {
        if (v28 >= *(v26 + 16))
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          return result;
        }

        (*(v104 + 16))(v10, v99 + *(v104 + 72) * v28, v5);
        v30 = v101;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v32 = [v103 supplementaryViewForElementKind:v30 atIndexPath:isa];

        if (v32)
        {
          type metadata accessor for ListCollectionViewCell(0);
          v33 = swift_dynamicCastClass();
          if (v33)
          {
            v34 = *(v33 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
            if (!v34)
            {
              goto LABEL_22;
            }

            v35 = *(v33 + direct field offset for ListCollectionViewCellBase.viewListID);
            v36 = *(v34 + 16);
            swift_bridgeObjectRetain_n();
            if (v36)
            {
              v36 = *(v34 + 32);
              v37 = *(v34 + 52);

              swift_bridgeObjectRelease_n();
              v38 = v37 == 0;
              v5 = v102;
              if (v38)
              {
                v39 = v35 & 0xFFFFFFFF00000000;
              }

              else
              {
                v39 = 0xFFFFFFFF00000000;
              }

              v34 = v39 & 0xFFFFFFFF00000000 | v35;
              if (v36 == 1)
              {
LABEL_22:

                if (v13 == 1)
                {

                  outlined consume of SheetBridge<SheetPreference.Key>??(v93);
                  v42.n128_f64[0] = outlined consume of Text.LineStyle?(v34, 1);
                  goto LABEL_110;
                }

                v36 = 1;
LABEL_27:
                outlined consume of Text.LineStyle?(v34, v36);
                outlined consume of Text.LineStyle?(v96, v13);
                goto LABEL_12;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
              v34 = v35;
            }

            v108 = v34;
            v109 = v36;
            if (v13 != 1)
            {
              v105 = v95;
              v106 = v94;
              v107 = v13;

              v40 = outlined copy of Text.LineStyle?(v34, v36);
              v41 = MEMORY[0x18D003E10](&v108, &v105, v40);

              outlined consume of Text.LineStyle?(v34, v36);
              if (v41)
              {

                outlined consume of SheetBridge<SheetPreference.Key>??(v93);
LABEL_110:
                v90 = v97;
                (*(v104 + 32))(v97, v10, v5, v42);
                return (*(v104 + 56))(v90, 0, 1, v5);
              }

              goto LABEL_12;
            }

            outlined copy of Text.LineStyle?(v34, v36);

            goto LABEL_27;
          }
        }

LABEL_12:
        ++v28;
        result = (*v29)(v10, v5);
        if (v100 == v28)
        {

          v12 = v95;
          v23 = v103;
          v24 = &selRef_bundleIdentifier;
          goto LABEL_77;
        }
      }
    }

LABEL_77:
    v70 = v24[407];
    v101 = *MEMORY[0x1E69DDC00];
    v71 = [v23 v70];
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = v92;
    v100 = *(v72 + 16);
    if (!v100)
    {
LABEL_98:

      v69 = v93;
      goto LABEL_99;
    }

    v74 = 0;
    result = v104;
    v99 = v72 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v98 = v104 + 16;
    v96 = v12 | (v94 << 32);
    v75 = (v104 + 8);
    while (1)
    {
      if (v74 >= *(v72 + 16))
      {
        goto LABEL_115;
      }

      (*(v104 + 16))(v73, v99 + *(v104 + 72) * v74, v5);
      v76 = v101;
      v77 = IndexPath._bridgeToObjectiveC()().super.isa;
      v78 = [v103 supplementaryViewForElementKind:v76 atIndexPath:v77];

      if (v78)
      {
        type metadata accessor for ListCollectionViewCell(0);
        v79 = swift_dynamicCastClass();
        if (v79)
        {
          v80 = *(v79 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
          if (!v80)
          {
            goto LABEL_90;
          }

          v81 = *(v79 + direct field offset for ListCollectionViewCellBase.viewListID);
          v82 = *(v80 + 16);
          swift_bridgeObjectRetain_n();
          if (v82)
          {
            v82 = *(v80 + 32);
            v83 = *(v80 + 52);

            swift_bridgeObjectRelease_n();
            v38 = v83 == 0;
            LODWORD(v12) = v95;
            if (v38)
            {
              v84 = v81 & 0xFFFFFFFF00000000;
            }

            else
            {
              v84 = 0xFFFFFFFF00000000;
            }

            v80 = v84 & 0xFFFFFFFF00000000 | v81;
            if (v82 == 1)
            {
LABEL_90:

              if (v13 == 1)
              {

                outlined consume of SheetBridge<SheetPreference.Key>??(v93);
                v87.n128_f64[0] = outlined consume of Text.LineStyle?(v80, 1);
                v5 = v102;
LABEL_112:
                v90 = v97;
                (*(v104 + 32))(v97, v73, v5, v87);
                return (*(v104 + 56))(v90, 0, 1, v5);
              }

              v82 = 1;
              goto LABEL_95;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
            v80 = v81;
          }

          v108 = v80;
          v109 = v82;
          if (v13 == 1)
          {

            outlined copy of Text.LineStyle?(v80, v82);

LABEL_95:
            outlined consume of Text.LineStyle?(v80, v82);
            outlined consume of Text.LineStyle?(v96, v13);
            v5 = v102;
            goto LABEL_80;
          }

          v105 = v12;
          v106 = v94;
          v107 = v13;

          v85 = outlined copy of Text.LineStyle?(v80, v82);
          v86 = MEMORY[0x18D003E10](&v108, &v105, v85);

          outlined consume of Text.LineStyle?(v80, v82);
          v5 = v102;
          if (v86)
          {

            outlined consume of SheetBridge<SheetPreference.Key>??(v93);
            goto LABEL_112;
          }
        }

        else
        {
        }
      }

LABEL_80:
      ++v74;
      result = (*v75)(v73, v5);
      if (v100 == v74)
      {
        goto LABEL_98;
      }
    }
  }

  v15 = v14;
  result = [v14 numberOfSections];
  if (result < 0)
  {
    goto LABEL_116;
  }

  v103 = result;
  if (!result)
  {
LABEL_73:
    v69 = v101;
LABEL_99:
    outlined consume of SheetBridge<SheetPreference.Key>??(v69);
    return (*(v104 + 56))(v97, 1, 1, v5);
  }

  v17 = 0;
  v18 = v12 | (v11 << 32);
  v19 = v103;
  while (1)
  {
    v47 = [v15 headerViewForSection_];
    if (!v47)
    {
      goto LABEL_55;
    }

    v48 = v47;
    type metadata accessor for ListTableViewHeaderFooter();
    v49 = swift_dynamicCastClass();
    if (v49)
    {
      v50 = (v49 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID);
      v51 = *(v49 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8);
      if (!v51)
      {

        if (v13 == 1)
        {
LABEL_101:
          outlined consume of Text.LineStyle?(v18, 1);
LABEL_102:
          v88 = v97;
          IndexPath.init(index:)();
          goto LABEL_106;
        }

        v57 = 0;
LABEL_45:
        outlined copy of Text.LineStyle?(v18, v13);

        v55 = 1;
        v5 = v102;
LABEL_49:
        outlined consume of Text.LineStyle?(v18, v13);
        outlined consume of Text.LineStyle?(v57, v55);
        goto LABEL_55;
      }

      v52 = *v50;
      v53 = HIDWORD(*v50);
      v54 = *(v51 + 16);
      swift_bridgeObjectRetain_n();

      if (v54)
      {
        v55 = *(v51 + 32);
        v56 = *(v51 + 52);

        swift_bridgeObjectRelease_n();
        if (v56)
        {
          LODWORD(v53) = -1;
        }

        v57 = v52 | (v53 << 32);
        if (v13 == 1)
        {
          v5 = v102;
          v19 = v103;
          if (v55 == 1)
          {
            goto LABEL_101;
          }

          goto LABEL_48;
        }

        v108 = v18;
        v109 = v13;
        v19 = v103;
        if (v55 == 1)
        {
          goto LABEL_45;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        if (v13 == 1)
        {
          v55 = 0;
          v57 = v52;
          v5 = v102;
LABEL_48:

          goto LABEL_49;
        }

        v55 = 0;
        v108 = v18;
        v109 = v13;
      }

      v105 = v52;
      v106 = v53;
      v107 = v55;
      v58 = outlined copy of Text.LineStyle?(v18, v13);
      v59 = MEMORY[0x18D003E10](&v108, &v105, v58);

      outlined consume of Text.LineStyle?(v18, v13);
      v5 = v102;
      if (v59)
      {
        goto LABEL_102;
      }
    }

LABEL_55:
    v60 = [v15 footerViewForSection_];
    if (!v60)
    {
      goto LABEL_33;
    }

    v48 = v60;
    type metadata accessor for ListTableViewHeaderFooter();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      break;
    }

LABEL_32:

LABEL_33:
    if (v19 == ++v17)
    {
      goto LABEL_73;
    }
  }

  v62 = (v61 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID);
  v63 = *(v61 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID + 8);
  if (v63)
  {
    v64 = *v62;
    v65 = HIDWORD(*v62);
    v66 = *(v63 + 16);
    swift_bridgeObjectRetain_n();

    if (v66)
    {
      v43 = *(v63 + 32);
      v67 = *(v63 + 52);

      swift_bridgeObjectRelease_n();
      if (v67)
      {
        LODWORD(v65) = -1;
      }

      v68 = v64 | (v65 << 32);
      if (v13 == 1)
      {
        v5 = v102;
        v19 = v103;
        if (v43 == 1)
        {
          goto LABEL_103;
        }

LABEL_69:

LABEL_70:
        outlined consume of Text.LineStyle?(v18, v13);
        outlined consume of Text.LineStyle?(v68, v43);
        goto LABEL_33;
      }

      v108 = v18;
      v109 = v13;
      v19 = v103;
      if (v43 == 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
      if (v13 == 1)
      {
        v43 = 0;
        v68 = v64;
        v5 = v102;
        v19 = v103;
        goto LABEL_69;
      }

      v43 = 0;
      v108 = v18;
      v109 = v13;
      v19 = v103;
    }

    v105 = v64;
    v106 = v65;
    v107 = v43;
    v44 = outlined copy of Text.LineStyle?(v18, v13);
    v45 = MEMORY[0x18D003E10](&v108, &v105, v44);

    v46 = outlined consume of Text.LineStyle?(v18, v13);
    v5 = v102;
    if (v45)
    {
      goto LABEL_104;
    }

    goto LABEL_32;
  }

  if (v13 != 1)
  {
    v68 = 0;
LABEL_66:
    outlined copy of Text.LineStyle?(v18, v13);

    v43 = 1;
    v5 = v102;
    goto LABEL_70;
  }

LABEL_103:
  v46 = outlined consume of Text.LineStyle?(v18, 1);
LABEL_104:
  result = [v15 numberOfRowsInSection_];
  if (__OFSUB__(result, 1))
  {
    goto LABEL_117;
  }

  v88 = v97;
  MEMORY[0x18D000680]((result - 1) & ~((result - 1) >> 63), v17);
LABEL_106:

  outlined consume of SheetBridge<SheetPreference.Key>??(v101);
  v89 = *(v104 + 56);

  return v89(v88, 0, 1, v5);
}

char *ListScrollable.visibleCollectionViewIDs.getter(uint64_t a1)
{
  v1 = a1;
  v2 = ListScrollable.scrollView.getter(a1);
  if (v2 >= 2)
  {
    v3 = v2;
    type metadata accessor for UpdateCoalescingTableView(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = [v4 visibleCells];
      outlined consume of SheetBridge<SheetPreference.Key>??(v3);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITableViewCell, 0x1E69DD028);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
LABEL_61:
        v8 = __CocoaSet.count.getter();
        v51 = v1;
        if (v8)
        {
LABEL_5:
          v1 = 0;
          v9 = MEMORY[0x1E69E7CC0];
          do
          {
            v50 = v9;
            v10 = v1;
            while (1)
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v11 = MEMORY[0x18D00E9C0](v10, v6);
              }

              else
              {
                if (v10 >= *(v7 + 16))
                {
                  goto LABEL_58;
                }

                v11 = *(v6 + 8 * v10 + 32);
              }

              v12 = v11;
              v1 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              type metadata accessor for ListTableViewCell(0);
              v13 = swift_dynamicCastClass();
              if (v13)
              {
                v14 = (v13 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_viewListID);
                v15 = *(v13 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_viewListID + 8);
                if (v15)
                {
                  break;
                }
              }

              ++v10;
              if (v1 == v8)
              {
                goto LABEL_54;
              }
            }

            v16 = v14[1];
            v46 = *v14;
            v17 = *(v15 + 16);
            swift_bridgeObjectRetain_n();
            if (v17)
            {
              v18 = *(v15 + 52);
              v45 = *(v15 + 32);

              swift_bridgeObjectRelease_n();
              if (v18)
              {
                v16 = -1;
              }

              v48 = v16;
            }

            else
            {
              v48 = v16;

              swift_bridgeObjectRelease_n();
              v45 = 0;
            }

            v9 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
            }

            v20 = *(v9 + 2);
            v19 = *(v9 + 3);
            v21 = v48;
            if (v20 >= v19 >> 1)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v9);
              v21 = v48;
              v9 = v23;
            }

            *(v9 + 2) = v20 + 1;
            v22 = &v9[16 * v20];
            *(v22 + 8) = v46;
            *(v22 + 9) = v21;
            *(v22 + 5) = v45;
          }

          while (v1 != v8);
          goto LABEL_65;
        }
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v51 = v1;
        if (v8)
        {
          goto LABEL_5;
        }
      }

LABEL_64:
      v9 = MEMORY[0x1E69E7CC0];
LABEL_65:

      v52 = v9;
      v1 = v51;
      goto LABEL_66;
    }

    outlined consume of SheetBridge<SheetPreference.Key>??(v3);
  }

  v24 = ListScrollable.scrollView.getter(v1);
  if (v24 >= 2)
  {
    v25 = v24;
    type metadata accessor for UpdateCoalescingCollectionView(0);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = [v26 visibleCells];
      outlined consume of SheetBridge<SheetPreference.Key>??(v25);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        v51 = v1;
        if (!v28)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v28 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v51 = v1;
        if (!v28)
        {
          goto LABEL_64;
        }
      }

      v1 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v50 = v9;
        v29 = v1;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x18D00E9C0](v29, v6);
          }

          else
          {
            if (v29 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v30 = *(v6 + 8 * v29 + 32);
          }

          v31 = v30;
          v1 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          type metadata accessor for ListCollectionViewCell(0);
          v32 = swift_dynamicCastClass();
          if (v32)
          {
            v33 = (v32 + direct field offset for ListCollectionViewCellBase.viewListID);
            v34 = *(v32 + direct field offset for ListCollectionViewCellBase.viewListID + 8);
            if (v34)
            {
              break;
            }
          }

          ++v29;
          if (v1 == v28)
          {
LABEL_54:
            v9 = v50;
            goto LABEL_65;
          }
        }

        v35 = v33[1];
        v49 = *v33;
        v36 = *(v34 + 16);
        swift_bridgeObjectRetain_n();
        if (v36)
        {
          v37 = *(v34 + 52);
          v47 = *(v34 + 32);

          swift_bridgeObjectRelease_n();
          if (v37)
          {
            v35 = -1;
          }
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v47 = 0;
        }

        v9 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        }

        v39 = *(v9 + 2);
        v38 = *(v9 + 3);
        if (v39 >= v38 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v9);
          v40 = v35;
          v9 = v42;
        }

        else
        {
          v40 = v35;
        }

        *(v9 + 2) = v39 + 1;
        v41 = &v9[16 * v39];
        *(v41 + 8) = v49;
        *(v41 + 9) = v40;
        *(v41 + 5) = v47;
      }

      while (v1 != v28);
      goto LABEL_65;
    }

    outlined consume of SheetBridge<SheetPreference.Key>??(v25);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_66:
  v43 = ListScrollable.visibleHeaderFooterIDs.getter(v1);
  specialized Array.append<A>(contentsOf:)(v43);
  return v52;
}

double ListScrollable.subviewClosestTo(rect:)@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI27ScrollableCollectionSubviewVSgWOi0_(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t ListScrollable.firstCollectionViewIndex(of:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = *a1;
  v10 = a1[1];
  ListScrollable.dataSource.getter(a2, v15 - v7, v11);
  v12 = *(v4 - 8);
  if ((*(v12 + 48))(v8, 1, v4) == 1)
  {
    v13 = 0;
  }

  else
  {
    v15[0] = v9;
    v15[1] = v10;
    v13 = (*(*(a2 + 24) + 152))(v15, v4);
    v6 = v12;
    v5 = v4;
  }

  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t ListScrollable.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  ListScrollable.dataSource.getter(a4, &v17 - v11, v13);
  v14 = *(v8 - 8);
  if ((*(v14 + 48))(v12, 1, v8) == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = (*(*(a4 + 24) + 160))(a1, a2, a3, v8);
    v10 = v14;
    v9 = v8;
  }

  (*(v10 + 8))(v12, v9);
  return v15 & 1;
}

uint64_t ListScrollable.scroll(toCollectionViewID:anchor:)(unsigned int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v54 = *(a5 + 16);
  v52 = type metadata accessor for Optional();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v49 - v7;
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = *a1;
  v21 = *(a1 + 1);
  v59 = a1[1];
  v60 = v20;
  v67 = __PAIR64__(v59, v20);
  v58 = v21;
  v68 = v21;
  ListScrollable.indexPathForHeaderFooterID(_:)(&v67, v5, v13);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    outlined destroy of TableRowList?(v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], type metadata accessor for BridgedListState.ScrollTarget?);
    ListScrollable.dataSource.getter(v5, v8, v23);
    v24 = *(v54 - 8);
    if ((*(v24 + 48))(v8, 1) == 1)
    {
      (*(v51 + 8))(v8, v52);
      v25 = v53;
      (*(v15 + 56))(v53, 1, 1, v14);
    }

    else
    {
      v67 = __PAIR64__(v59, v60);
      v68 = v58;
      v27 = *(*(v5 + 24) + 144);
      v25 = v53;
      v52 = v5;
      v28 = v54;
      v27(&v67, v54);
      v5 = v52;
      (*(v24 + 8))(v8, v28);
      if (v22(v25, 1, v14) != 1)
      {
        v47 = v50;
        (*(v15 + 32))(v50, v25, v14);
        v26 = ListScrollable.scrollToIndex(_:)(v47, v5);
        (*(v15 + 8))(v47, v14);
        return v26 & 1;
      }
    }

    outlined destroy of TableRowList?(v25, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], type metadata accessor for BridgedListState.ScrollTarget?);
    ListScrollable.children.getter(v5);
    if (!v29)
    {
      goto LABEL_18;
    }

    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v26 = 0;
      v32 = 0;
      v33 = v29 + 32;
      v34 = &lazy cache variable for type metadata for Scrollable;
      v35 = MEMORY[0x1E697DAE0];
      v36 = v31 - 1;
      v37 = MEMORY[0x1E697FA60];
      v38 = &lazy cache variable for type metadata for ScrollableCollection;
      v54 = v29;
      do
      {
        outlined init with copy of _Benchmark(v33, &v67);
        if (v26)
        {
          __swift_destroy_boxed_opaque_existential_1(&v67);
          v26 = 1;
          if (v36 == v32)
          {
            goto LABEL_21;
          }
        }

        else
        {
          outlined init with copy of _Benchmark(&v67, v63);
          type metadata accessor for CVarArg(0, v34, v35);
          type metadata accessor for CVarArg(0, v38, v37);
          if (swift_dynamicCast())
          {
            v39 = v36;
            v40 = v38;
            v41 = v37;
            v42 = v35;
            v43 = v34;
            v44 = *(&v65 + 1);
            v45 = v66;
            __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
            v61[0] = v60;
            v61[1] = v59;
            v62 = v58;
            v46 = v44;
            v34 = v43;
            v35 = v42;
            v37 = v41;
            v38 = v40;
            v36 = v39;
            v30 = v54;
            v26 = (*(v45 + 80))(v61, v55, v56, v57 & 1, v46, v45);
            __swift_destroy_boxed_opaque_existential_1(&v67);
            __swift_destroy_boxed_opaque_existential_1(&v64);
            if (v36 == v32)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v66 = 0;
            v64 = 0u;
            v65 = 0u;
            __swift_destroy_boxed_opaque_existential_1(&v67);
            outlined destroy of ScrollableCollection?(&v64);
            v26 = 0;
            if (v36 == v32)
            {
              goto LABEL_21;
            }
          }
        }

        ++v32;
        v33 += 40;
      }

      while (v32 < *(v30 + 16));
      __break(1u);
LABEL_18:
      v26 = 0;
      return v26 & 1;
    }

    v26 = 0;
LABEL_21:
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v26 = ListScrollable.scrollToIndex(_:)(v19, v5);
    (*(v15 + 8))(v19, v14);
  }

  return v26 & 1;
}

BOOL ExplicitIDFromViewListIDVisitor.visit(view:traits:)(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 60);
  v4 = *(a1 + 64);
  v5 = *(v4 + 16);

  if (v5)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 52);

    if (v6)
    {
      v3 = -1;
    }
  }

  else
  {
  }

  v10[0] = v2;
  v10[1] = v3;
  v11 = v5;
  v7 = v1[1];
  v12[0] = *v1;
  v12[1] = v7;

  v8 = MEMORY[0x18D003E10](v10, v12);

  if (v8)
  {
    _ViewList_View.viewID.getter();
    outlined assign with take of AnyHashable?(v10, (v1 + 2), &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], type metadata accessor for AnyAccessibilityValue?);
  }

  return (v8 & 1) == 0;
}

BOOL ExplicitIDOffsetVisitor.visit(view:traits:)(uint64_t a1)
{
  v2 = *v1 + 1;
  *v1 = v2;
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  v5 = *(a1 + 64);
  v6 = *(v5 + 16);

  if (v6)
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {
  }

  v12[0] = v3;
  v12[1] = v4;
  v13 = v6;
  v8 = *(v1 + 16);
  v11[0] = *(v1 + 8);
  v11[1] = v8;

  v9 = MEMORY[0x18D003E10](v12, v11);

  if (v9)
  {
    *(v1 + 24) = v2;
    *(v1 + 32) = 0;
  }

  return (v9 & 1) == 0;
}

BOOL ApplyCollectionViewIDsVisitor.visit(view:traits:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  v5 = *(a1 + 64);
  v6 = *(v5 + 16);

  if (v6)
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {
  }

  v9[0] = v3;
  v9[1] = v4;
  v10 = v6;
  v2(v9, v1 + 16);

  return (*(v1 + 16) & 1) == 0;
}

uint64_t partial apply for closure #1 in ListScrollable.scroll<A>(to:)(_BYTE *a1, void *a2)
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    v5 = v2[3];
    v7 = v2[5];
    v6 = v2[6];
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    result = (*(v9 + 8))(v6, v5, v7, v8, v9);
  }

  *a1 = result & 1;
  return result;
}

uint64_t outlined assign with take of AnyHashable?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation()
{
  result = lazy protocol witness table cache variable for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation;
  if (!lazy protocol witness table cache variable for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation)
  {
    v3 = type metadata accessor for BridgedListState.CommitMutation(255);
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedListState.CommitMutation, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedListState.CommitMutation and conformance BridgedListState.CommitMutation);
  }

  return result;
}

uint64_t outlined destroy of BridgedListState.ScrollTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ScrollableCollection?(uint64_t a1)
{
  type metadata accessor for UIScrollView?(0, &lazy cache variable for type metadata for ScrollableCollection?, &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], type metadata accessor for CVarArg);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for UIScrollView?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for ResolvedTableRowIDs.RowIDVisitor, &protocol witness table for ResolvedTableRowIDs.RowIDVisitor, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for TableSections.Accumulator, &protocol witness table for TableSections.Accumulator, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for CollectionViewTableHeaderVisitor, &protocol witness table for CollectionViewTableHeaderVisitor, v4, v5);
}

{
  v9 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  type metadata accessor for TableContentVisitor<TableDataSourceAdaptor>(0, &lazy cache variable for type metadata for TableSections.FindMatchingID<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, MEMORY[0x1E697DE08], type metadata accessor for TableSections.FindMatchingID);
  return v6(a3, &v9, v7, &protocol witness table for TableSections.FindMatchingID<A>, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for ApplyCollectionViewIDsVisitor, &protocol witness table for ApplyCollectionViewIDsVisitor, v4, v5);
}

{
  v9 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  type metadata accessor for TableContentVisitor<TableDataSourceAdaptor>(0, &lazy cache variable for type metadata for TableContentVisitor<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for TableContentVisitor);
  return v6(a3, &v9, v7, &protocol witness table for TableContentVisitor<A>, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for TableSections.FindMatchingRow, &protocol witness table for TableSections.FindMatchingRow, v4, v5);
}

{
  v7 = a1;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(a3, &v7, &type metadata for AccessibilityRowAccumulator, &protocol witness table for AccessibilityRowAccumulator, v4, v5);
}

uint64_t _ViewList_ID.Canonical.init(id:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 52);

    if (v7)
    {
      v4 = -1;
    }
  }

  else
  {

    v6 = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 8) = v6;
  return result;
}

double _s7SwiftUI27ScrollableCollectionSubviewVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL specialized ApplyCollectionViewIDsVisitor.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  v20 = *(a4 - 8);
  if ((*(v20 + 48))(v11, 1, a4) == 1)
  {
    (*(v9 + 8))(v11, v8);
    outlined init with copy of TableRowList?(v31, &v33, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, type metadata accessor for AnyAccessibilityValue?);
    if (*(&v34 + 1))
    {
      v36[0] = v33;
      v36[1] = v34;
      v37 = v35;
      v21 = v32;
      v22 = v32[1];
      *&v33 = *v32;
      *(&v33 + 1) = v22;
      LOBYTE(v34) = 0;
      MEMORY[0x1EEE9AC00](v22);
      *(&v31 - 4) = 0;
      *(&v31 - 3) = v36;
      *(&v31 - 2) = &v33;

      static Update.ensure<A>(_:)();
      outlined destroy of TableRowList(v36);
      v23 = *(v21 + 16) | v34;

      *(v21 + 16) = v23 & 1;
    }

    else
    {
      outlined destroy of TableRowList?(&v33, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, type metadata accessor for AnyAccessibilityValue?);
      v21 = v32;
    }
  }

  else
  {
    dispatch thunk of Identifiable.id.getter();
    (*(v20 + 8))(v11, a4);
    (*(v13 + 32))(v19, v15, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    static _ViewList_ID.explicit<A>(_:)();
    v24 = v36[0];
    v25 = DWORD1(v36[0]);
    v26 = *(&v36[0] + 1);
    v27 = *(*(&v36[0] + 1) + 16);

    if (v27)
    {
      v27 = *(v26 + 32);
      v28 = *(v26 + 52);

      swift_bridgeObjectRelease_n();
      if (v28)
      {
        v25 = -1;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v21 = v32;
    v29 = *v32;
    *&v36[0] = __PAIR64__(v25, v24);
    *(&v36[0] + 1) = v27;
    v29(v36, v32 + 2);
    (*(v13 + 8))(v19, AssociatedTypeWitness);
  }

  return (v21[2] & 1) == 0;
}

uint64_t _s7SwiftUI12TableRowListV9visitRows8applying4fromyxz_SitAA0cD7VisitorRzlFyyXEfU_AA022ApplyCollectionViewIDsJ0V_Tg5TA_0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v7 = v2;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  return (*(v5 + 8))(v3, &v7, &type metadata for ApplyCollectionViewIDsVisitor, &protocol witness table for ApplyCollectionViewIDsVisitor, v4, v5);
}

uint64_t type metadata completion function for ListScrollable.DataSourceProvider(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ListScrollable.DataSourceProvider(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v5 + 80) & 0xFC;
  if (v8 > 7 || (*(v5 + 80) & 0x100000) != 0 || (v7 + 1) > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v8 + 19) & ~v8 & 0x1FC));

    return v3;
  }

  v12 = *(a2 + v7);
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v7 <= 3)
    {
      v14 = v7;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_28:
      v16 = (v15 | (v13 << (8 * v7))) + 2;
      v12 = v15 + 2;
      if (v7 < 4)
      {
        v12 = v16;
      }

      goto LABEL_30;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_28;
    }
  }

LABEL_30:
  if (v12 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(v3, a2, v6);
    }

    else
    {
      (*(v5 + 16))(v3, a2, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
    }

    *(v3 + v7) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + v7) = 0;
  }

  return v3;
}

unsigned __int8 *destroy for ListScrollable.DataSourceProvider(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = result[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
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
        goto LABEL_20;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_20:
  if (v6 == 1)
  {
    v12 = *(*(a2 + 16) - 8);
    result = (*(v4 + 48))(result, 1, v3);
    if (!result)
    {
      v11 = *(v12 + 8);

      return v11(v2, v3);
    }
  }

  return result;
}

void *initializeWithCopy for ListScrollable.DataSourceProvider(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_21;
  }

  if (v7 <= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_21:
  if (v8 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v6);
      v14 = 1;
    }

    else
    {
      (*(v5 + 16))(a1, a2, v4);
      v14 = 1;
      (*(v5 + 56))(a1, 0, 1, v4);
    }
  }

  else
  {
    v14 = 0;
    *a1 = *a2;
  }

  *(a1 + v7) = v14;
  return a1;
}

unsigned __int16 *assignWithCopy for ListScrollable.DataSourceProvider(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + v8);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 == 1 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v14 = *(a2 + v8);
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_39;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_37:
    v18 = (v17 | (v15 << (8 * v8))) + 2;
    v14 = v17 + 2;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_39;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_37;
  }

LABEL_39:
  if (v14 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
      v19 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      v19 = 1;
      (*(v6 + 56))(a1, 0, 1, v5);
    }
  }

  else
  {
    v19 = 0;
    *a1 = *a2;
  }

  *(a1 + v8) = v19;
  return a1;
}

void *initializeWithTake for ListScrollable.DataSourceProvider(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_21;
  }

  if (v7 <= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_21:
  if (v8 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v6);
      v14 = 1;
    }

    else
    {
      (*(v5 + 32))(a1, a2, v4);
      v14 = 1;
      (*(v5 + 56))(a1, 0, 1, v4);
    }
  }

  else
  {
    v14 = 0;
    *a1 = *a2;
  }

  *(a1 + v7) = v14;
  return a1;
}

unsigned __int16 *assignWithTake for ListScrollable.DataSourceProvider(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + v8);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 == 1 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v14 = *(a2 + v8);
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_39;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_37:
    v18 = (v17 | (v15 << (8 * v8))) + 2;
    v14 = v17 + 2;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_39;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_37;
  }

LABEL_39:
  if (v14 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
      v19 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v19 = 1;
      (*(v6 + 56))(a1, 0, 1, v5);
    }
  }

  else
  {
    v19 = 0;
    *a1 = *a2;
  }

  *(a1 + v8) = v19;
  return a1;
}

uint64_t getEnumTagSinglePayload for ListScrollable.DataSourceProvider(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void storeEnumTagSinglePayload for ListScrollable.DataSourceProvider(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTag for ListScrollable.DataSourceProvider(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if (*(v2 + 84))
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = *(v2 + 64) + 1;
  }

  v4 = 8;
  if (v3 > 8)
  {
    v4 = v3;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    LODWORD(v5) = v8 + 2;
    if (v4 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void destructiveInjectEnumTag for ListScrollable.DataSourceProvider(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  if (a2 <= 1)
  {
    a1[v7] = a2;
    return;
  }

  v8 = a2 - 2;
  if (v7 < 4)
  {
    a1[v7] = (v8 >> (8 * v7)) + 2;
    if (!v7)
    {
      return;
    }

    v8 &= ~(-1 << (8 * v7));
  }

  else
  {
    a1[v7] = 2;
  }

  if (v7 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  bzero(a1, v7);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      *a1 = v8;
      a1[2] = BYTE2(v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  else if (v9 == 1)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = v8;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for BridgedListState.CommitMutation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *(a1 + v5) = *(a2 + v5);
    v8 = type metadata accessor for BridgedListState(0);
    v9 = v8[5];
    v10 = &v6[v9];
    v11 = &v7[v9];
    v12 = type metadata accessor for BridgedListState.ScrollTarget(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
      memcpy(v10, v11, *(*(v14 - 8) + 64));
    }

    else
    {
      v16 = type metadata accessor for IndexPath();
      (*(*(v16 - 8) + 16))(v10, v11, v16);
      v17 = *(v12 + 20);
      v18 = &v10[v17];
      v19 = &v11[v17];
      *v18 = *v19;
      v18[16] = v19[16];
      v10[*(v12 + 24)] = v11[*(v12 + 24)];
      (*(v13 + 56))(v10, 0, 1, v12);
    }

    v20 = v8[6];
    v21 = &v6[v20];
    v22 = &v7[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = *(v22 + 3);
    *(v21 + 2) = *(v22 + 2);
    *(v21 + 3) = v24;
    v21[112] = v22[112];
    v25 = *(v22 + 6);
    *(v21 + 5) = *(v22 + 5);
    *(v21 + 6) = v25;
    *(v21 + 4) = *(v22 + 4);
    *&v6[v8[7]] = *&v7[v8[7]];
  }

  return v3;
}

uint64_t destroy for BridgedListState.CommitMutation(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = *(type metadata accessor for BridgedListState(0) + 20);
  v4 = type metadata accessor for BridgedListState.ScrollTarget(0);
  result = (*(*(v4 - 8) + 48))(v2 + v3, 1, v4);
  if (!result)
  {
    v6 = type metadata accessor for IndexPath();
    v7 = *(*(v6 - 8) + 8);

    return v7(v2 + v3, v6);
  }

  return result;
}

void *initializeWithCopy for BridgedListState.CommitMutation(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = type metadata accessor for BridgedListState(0);
  v8 = v7[5];
  v9 = &v5[v8];
  v10 = &v6[v8];
  v11 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 16))(v9, v10, v14);
    v15 = *(v11 + 20);
    v16 = &v9[v15];
    v17 = &v10[v15];
    *v16 = *v17;
    v16[16] = v17[16];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v18 = v7[6];
  v19 = &v5[v18];
  v20 = &v6[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  v22 = *(v20 + 3);
  *(v19 + 2) = *(v20 + 2);
  *(v19 + 3) = v22;
  v19[112] = v20[112];
  v23 = *(v20 + 6);
  *(v19 + 5) = *(v20 + 5);
  *(v19 + 6) = v23;
  *(v19 + 4) = *(v20 + 4);
  *&v5[v7[7]] = *&v6[v7[7]];
  return a1;
}

_DWORD *assignWithCopy for BridgedListState.CommitMutation(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v36 = type metadata accessor for BridgedListState(0);
  v7 = v36[5];
  v8 = &v5[v7];
  v9 = &v6[v7];
  v10 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      v31 = type metadata accessor for IndexPath();
      (*(*(v31 - 8) + 24))(v8, v9, v31);
      v32 = *(v10 + 20);
      v33 = &v8[v32];
      v34 = &v9[v32];
      v35 = *v34;
      v33[16] = v34[16];
      *v33 = v35;
      v8[*(v10 + 24)] = v9[*(v10 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v8, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v8, v9, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 16))(v8, v9, v15);
  v16 = *(v10 + 20);
  v17 = &v8[v16];
  v18 = &v9[v16];
  v19 = *v18;
  v17[16] = v18[16];
  *v17 = v19;
  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
LABEL_7:
  v21 = v36[6];
  v22 = &v5[v21];
  v23 = &v6[v21];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = *(v23 + 3);
  *(v22 + 2) = *(v23 + 2);
  *(v22 + 3) = v26;
  *v22 = v24;
  *(v22 + 1) = v25;
  v27 = *(v23 + 4);
  v28 = *(v23 + 5);
  v29 = *(v23 + 6);
  v22[112] = v23[112];
  *(v22 + 5) = v28;
  *(v22 + 6) = v29;
  *(v22 + 4) = v27;
  *&v5[v36[7]] = *&v6[v36[7]];
  return a1;
}

void *initializeWithTake for BridgedListState.CommitMutation(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = type metadata accessor for BridgedListState(0);
  v8 = v7[5];
  v9 = &v5[v8];
  v10 = &v6[v8];
  v11 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v15 = *(v11 + 20);
    v16 = &v9[v15];
    v17 = &v10[v15];
    *v16 = *v17;
    v16[16] = v17[16];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v18 = v7[6];
  v19 = &v5[v18];
  v20 = &v6[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  v22 = *(v20 + 3);
  *(v19 + 2) = *(v20 + 2);
  *(v19 + 3) = v22;
  v19[112] = v20[112];
  v23 = *(v20 + 6);
  *(v19 + 5) = *(v20 + 5);
  *(v19 + 6) = v23;
  *(v19 + 4) = *(v20 + 4);
  *&v5[v7[7]] = *&v6[v7[7]];
  return a1;
}

void *assignWithTake for BridgedListState.CommitMutation(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  v6 = type metadata accessor for BridgedListState(0);
  v7 = v6[5];
  v8 = &v4[v7];
  v9 = &v5[v7];
  v10 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      v27 = type metadata accessor for IndexPath();
      (*(*(v27 - 8) + 40))(v8, v9, v27);
      v28 = *(v10 + 20);
      v29 = &v8[v28];
      v30 = &v9[v28];
      *v29 = *v30;
      v29[16] = v30[16];
      v8[*(v10 + 24)] = v9[*(v10 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v8, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v8, v9, *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 32))(v8, v9, v15);
  v16 = *(v10 + 20);
  v17 = &v8[v16];
  v18 = &v9[v16];
  *v17 = *v18;
  v17[16] = v18[16];
  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
LABEL_7:
  v20 = v6[6];
  v21 = &v4[v20];
  v22 = &v5[v20];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = *(v22 + 3);
  *(v21 + 2) = *(v22 + 2);
  *(v21 + 3) = v24;
  v21[112] = v22[112];
  v25 = *(v22 + 6);
  *(v21 + 5) = *(v22 + 5);
  *(v21 + 6) = v25;
  *(v21 + 4) = *(v22 + 4);
  *&v4[v6[7]] = *&v5[v6[7]];
  return a1;
}

uint64_t type metadata completion function for BridgedListState.CommitMutation(uint64_t a1)
{
  result = type metadata accessor for BridgedListState(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ListScrollable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ListScrollable.DataSourceProvider(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListScrollable(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7 & 0xFC | 3;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((((((v10 + (((v7 & 0xFC) + 11) & ~v8) + 4) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v7 & 0x100000;
  if ((*(v5 + 80) & 0xFCu) > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
    goto LABEL_36;
  }

  *a1 = *a2;
  v16 = ((a1 + v8 + 8) & ~v8);
  v17 = ((a2 + v8 + 8) & ~v8);
  v18 = *(v17 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *v17;
      }

      else if (v20 == 3)
      {
        v21 = *v17 | (*(v17 + 2) << 16);
      }

      else
      {
        v21 = *v17;
      }

LABEL_28:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_30;
    }

    if (v20)
    {
      v21 = *v17;
      goto LABEL_28;
    }
  }

LABEL_30:
  v23 = v10 + 1;
  if (v18 == 1)
  {
    if ((*(v5 + 48))(v17, 1, v4))
    {
      memcpy(v16, v17, v9);
      v24 = 1;
    }

    else
    {
      (*(v6 + 16))(v16, v17, v4);
      v24 = 1;
      (*(v6 + 56))(v16, 0, 1, v4);
    }
  }

  else
  {
    v24 = 0;
    *v16 = *v17;
  }

  *(v16 + v10) = v24;
  v25 = ((v16 + v23 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v26 = ((v17 + v23 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v25 = *v26;
  v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
LABEL_36:

  return v3;
}

double destroy for ListScrollable(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80) & 0xFCLL | 3;
  v5 = ((a1 + v4 + 8) & ~v4);
  v6 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v6;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = v5[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = *v5;
    }

    else if (v10 == 2)
    {
      v11 = *v5;
    }

    else if (v10 == 3)
    {
      v11 = *v5 | (v5[2] << 16);
    }

    else
    {
      v11 = *v5;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_20:
  if (v8 == 1 && !(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v5, v2);
  }

  return result;
}

void *initializeWithCopy for ListScrollable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80) & 0xFCLL;
  v7 = v6 + 11;
  v8 = ~v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = ((a1 + v7) & v8);
  v10 = ((a2 + v7) & v8);
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = *(v5 + 64) + 1;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10[v12];
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_21;
  }

  if (v12 <= 3)
  {
    v15 = v12;
  }

  else
  {
    v15 = 4;
  }

  if (v15 <= 1)
  {
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = *v10;
  }

  else if (v15 == 2)
  {
    v16 = *v10;
  }

  else if (v15 == 3)
  {
    v16 = *v10 | (v10[2] << 16);
  }

  else
  {
    v16 = *v10;
  }

  v17 = (v16 | (v14 << (8 * v12))) + 2;
  v13 = v16 + 2;
  if (v12 < 4)
  {
    v13 = v17;
  }

LABEL_21:
  if (v13 == 1)
  {
    if ((*(v5 + 48))(v10, 1, v4))
    {
      memcpy(v9, v10, v11);
      v18 = 1;
    }

    else
    {
      (*(v5 + 16))(v9, v10, v4);
      v18 = 1;
      (*(v5 + 56))(v9, 0, 1, v4);
    }
  }

  else
  {
    v18 = 0;
    *v9 = *v10;
  }

  *(v9 + v12) = v18;
  v19 = ((v9 + v12 + 4) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = (&v10[v12 + 4] & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *assignWithCopy for ListScrollable(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80) & 0xFCLL;
  v9 = v8 + 11;
  v10 = ~v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = ((a1 + v9) & v10);
  v12 = *(v5 + 64);
  v13 = ((a2 + v9) & v10);
  if (v11 == v13)
  {
    goto LABEL_45;
  }

  if (v7)
  {
    v14 = *(v5 + 64);
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11[v15];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v15))) + 2;
    v16 = v19 + 2;
    if (v15 < 4)
    {
      v16 = v20;
    }
  }

LABEL_22:
  if (v16 == 1 && !(*(v6 + 48))(v11, 1, v4))
  {
    (*(v6 + 8))(v11, v4);
  }

  v21 = *(v13 + v15);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_39;
  }

  if (v15 <= 3)
  {
    v23 = v15;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v13;
    }

    else if (v23 == 3)
    {
      v24 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v24 = *v13;
    }

LABEL_37:
    v25 = (v24 | (v22 << (8 * v15))) + 2;
    v21 = v24 + 2;
    if (v15 < 4)
    {
      v21 = v25;
    }

    goto LABEL_39;
  }

  if (v23)
  {
    v24 = *v13;
    goto LABEL_37;
  }

LABEL_39:
  if (v21 == 1)
  {
    if ((*(v6 + 48))(v13, 1, v4))
    {
      memcpy(v11, v13, v14);
      v26 = 1;
    }

    else
    {
      (*(v6 + 16))(v11, v13, v4);
      v26 = 1;
      (*(v6 + 56))(v11, 0, 1, v4);
    }
  }

  else
  {
    v26 = 0;
    *v11 = *v13;
  }

  v11[v15] = v26;
LABEL_45:
  if (v7)
  {
    v27 = v12;
  }

  else
  {
    v27 = v12 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v27 + 1;
  v29 = (&v11[v28 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  v30 = ((v13 + v28 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = ((v29 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v32 = ((v30 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v31 = *v32;
  v31[1] = v32[1];
  *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *initializeWithTake for ListScrollable(void *result, void *a2, uint64_t a3)
{
  *result = *a2;
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80) & 0xFCLL;
  v6 = v5 + 11;
  v7 = ~v5 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((result + v6) & v7);
  v9 = ((a2 + v6) & v7);
  if (*(v4 + 84))
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = *(v4 + 64) + 1;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  v12 = v9[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *v9;
    }

    else if (v14 == 2)
    {
      v15 = *v9;
    }

    else if (v14 == 3)
    {
      v15 = *v9 | (v9[2] << 16);
    }

    else
    {
      v15 = *v9;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_21:
  if (v12 == 1)
  {
    v17 = result;
    if ((*(v4 + 48))(v9, 1, v3))
    {
      memcpy(v8, v9, v10);
      v18 = 1;
    }

    else
    {
      (*(v4 + 32))(v8, v9, v3);
      v18 = 1;
      (*(v4 + 56))(v8, 0, 1, v3);
    }

    result = v17;
  }

  else
  {
    v18 = 0;
    *v8 = *v9;
  }

  *(v8 + v11) = v18;
  v19 = ((v8 + v11 + 4) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = (&v9[v11 + 4] & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  return result;
}

void *assignWithTake for ListScrollable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80) & 0xFCLL;
  v9 = v8 + 11;
  v10 = ~v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = ((a1 + v9) & v10);
  v12 = *(v5 + 64);
  v13 = ((a2 + v9) & v10);
  if (v11 == v13)
  {
    goto LABEL_45;
  }

  if (v7)
  {
    v14 = *(v5 + 64);
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11[v15];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v15))) + 2;
    v16 = v19 + 2;
    if (v15 < 4)
    {
      v16 = v20;
    }
  }

LABEL_22:
  if (v16 == 1 && !(*(v6 + 48))(v11, 1, v4))
  {
    (*(v6 + 8))(v11, v4);
  }

  v21 = *(v13 + v15);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_39;
  }

  if (v15 <= 3)
  {
    v23 = v15;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v13;
    }

    else if (v23 == 3)
    {
      v24 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v24 = *v13;
    }

LABEL_37:
    v25 = (v24 | (v22 << (8 * v15))) + 2;
    v21 = v24 + 2;
    if (v15 < 4)
    {
      v21 = v25;
    }

    goto LABEL_39;
  }

  if (v23)
  {
    v24 = *v13;
    goto LABEL_37;
  }

LABEL_39:
  if (v21 == 1)
  {
    if ((*(v6 + 48))(v13, 1, v4))
    {
      memcpy(v11, v13, v14);
      v26 = 1;
    }

    else
    {
      (*(v6 + 32))(v11, v13, v4);
      v26 = 1;
      (*(v6 + 56))(v11, 0, 1, v4);
    }
  }

  else
  {
    v26 = 0;
    *v11 = *v13;
  }

  v11[v15] = v26;
LABEL_45:
  if (v7)
  {
    v27 = v12;
  }

  else
  {
    v27 = v12 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v27 + 1;
  v29 = (&v11[v28 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  v30 = ((v13 + v28 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = ((v29 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v32 = ((v30 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v31 = *v32;
  v31[1] = v32[1];
  *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ListScrollable(int *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v3 + 80) & 0xFC;
  v7 = v6 | 3;
  v8 = v5 + 4;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v11 = ((((((v8 + ((v6 + 11) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
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
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_8:
      v9 = *((((((v8 + ((a1 + v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

int *storeEnumTagSinglePayload for ListScrollable(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 80) & 0xFCLL;
  v6 = v5 | 3;
  v7 = (v5 + 11) & ~(v5 | 3);
  if (*(v4 + 84))
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = *(v4 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = v8 + 4;
  v10 = ((((((v9 + v7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v12 = a3 - 2147483646;
    if (((((((v9 + v7) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v14 = a2 & 0x7FFFFFFF;
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 + 1;
    }

    if (v10)
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v14;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(result + v10) = v15;
      }

      else
      {
        *(result + v10) = v15;
      }
    }

    else if (v11)
    {
      *(result + v10) = v15;
    }

    return result;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v11 <= 1)
  {
    if (v11)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (v11 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_31;
  }

  *(result + v10) = 0;
  if (a2)
  {
LABEL_32:
    *((((((v9 + ((result + v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ApplyCollectionViewIDsVisitor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for ApplyCollectionViewIDsVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for ApplyCollectionViewIDsVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ApplyCollectionViewIDsVisitor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplyCollectionViewIDsVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}