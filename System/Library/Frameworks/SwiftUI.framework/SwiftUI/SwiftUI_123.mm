uint64_t closure #1 in closure #1 in ScrollTest.run<A>(in:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    v4 = Strong;
    swift_beginAccess();
    outlined assign with take of ScrollTestRunner?(v6, v4 + 56);
    swift_endAccess();
  }

  return a2(Strong);
}

double ScrollTest.__deallocating_deinit()
{
  outlined destroy of ScrollTestRunner?(v0 + 56);

  swift_deallocClassInstance();
  return result;
}

void ScrollProxyScrollTestRunner.run()()
{
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_incrementScrollTest];
  [v1 maximumRefreshRate];
  v3 = round(1.0 / v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v1 setPreferredFramesPerSecond_];
  v4 = [objc_opt_self() mainRunLoop];
  [v1 addToRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];

  v5 = *(v0 + 56);
  *(v0 + 56) = v1;
}

void ScrollProxyScrollTestRunner.incrementScrollTest()()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return;
  }

  v2 = objc_opt_self();
  v3 = v1;
  [v2 generateSeed];
  [v3 targetTimestamp];
  v5 = v4;
  [v3 targetTimestamp];
  v7 = v6;
  [v3 timestamp];
  [v2 setEarliestAutomaticCommitTime_];
  v9 = *(v0 + 64);
  if (v9)
  {
    swift_beginAccess();
    v11 = *(v9 + 64);
    v10 = *(v9 + 72);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v12 = *(v0 + 32);
  v13 = *(v0 + 64);
  if ((*(v0 + 48) & 1) == 0)
  {
    if (v13)
    {
      swift_beginAccess();
      v21 = v13[8];
      v22 = v13[9];
      swift_beginAccess();
      v23 = v21 - v13[27];
      v24 = v22 - v13[26];
      CGSize.inset(by:)();
      v48.size.width = v25;
      v48.size.height = v26;
      v48.origin.x = v23;
      v48.origin.y = v24;
      Width = CGRectGetWidth(v48);
      if (v12 > 0.0)
      {
        v12 = *(v0 + 32);
LABEL_15:
        v28 = 0;
        v29 = v11 + Width;
        goto LABEL_16;
      }

      v12 = *(v0 + 32);
    }

    else
    {
      Width = 0.0;
      if (v12 > 0.0)
      {
        goto LABEL_15;
      }
    }

    v30 = 0;
    v31 = v11 + v12;
    goto LABEL_21;
  }

  if (v13)
  {
    swift_beginAccess();
    v14 = v13[8];
    v15 = v13[9];
    swift_beginAccess();
    v16 = v14 - v13[27];
    v17 = v15 - v13[26];
    CGSize.inset(by:)();
    v47.size.width = v18;
    v47.size.height = v19;
    v47.origin.x = v16;
    v47.origin.y = v17;
    Height = CGRectGetHeight(v47);
    if (v12 > 0.0)
    {
      v12 = *(v0 + 32);
LABEL_13:
      v28 = 0;
      v29 = v10 + Height;
LABEL_16:
      v30 = *(v0 + 16) + *(v0 + 40) < v29 + v12;
      goto LABEL_22;
    }

    v12 = *(v0 + 32);
  }

  else
  {
    Height = 0.0;
    if (v12 > 0.0)
    {
      goto LABEL_13;
    }
  }

  v30 = 0;
  v31 = v10 + v12;
LABEL_21:
  v28 = v31 <= *(v0 + 16);
  if (v31 <= *(v0 + 16))
  {
    goto LABEL_23;
  }

LABEL_22:
  if (v30)
  {
LABEL_23:
    v12 = -v12;
    *(v0 + 32) = v12;
    if (v28)
    {
      v32 = *(v0 + 24);
      v33 = __OFSUB__(v32, 1);
      v34 = v32 - 1;
      if (v33)
      {
        __break(1u);
        return;
      }

      *(v0 + 24) = v34;
    }
  }

  if (*(v0 + 48))
  {
    v35 = v10 + v12;
  }

  else
  {
    v35 = v10;
  }

  if (*(v0 + 48))
  {
    v36 = v11;
  }

  else
  {
    v36 = v11 + v12;
  }

  v37 = *(v0 + 64);
  if (v37)
  {
    swift_beginAccess();
    v38 = *(v37 + 146);
    if (v38 > 0x3F || (v38 & 1) != 0)
    {

      ScrollViewNode.bindingSafeOffset(_:)();
      *&v43 = v36;
      *(&v43 + 1) = v35;
      v44 = v39;
      v45 = v40;
      v46 = 0;
      ScrollViewNode.commitScrollTransaction(_:value:)(&v43, v39, v40);
    }
  }

  if (!*(v0 + 24) || *(v0 + 32) == 0.0 || *(v0 + 40) == 0.0)
  {
    [v3 invalidate];
    v41 = *(v0 + 80);

    v41(v42);
  }
}

double ScrollProxyScrollTestRunner.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollTest.Parameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void UIScrollViewTestRunner.run()()
{
  v1 = *(v0 + 8);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v0 + 16);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v0 + 24);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -2147483650.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 < 2147483650.0)
  {
    v4 = *(v0 + 40);
    v5 = v2;
    v6 = v3;
    aBlock[4] = protocol witness for CollectionViewListDataSourceBase.section(forSectionLabelIndex:) in conformance TableDataSourceAdaptor;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [AnyHashable : Any]?);
    aBlock[3] = &block_descriptor_50;
    v7 = _Block_copy(aBlock);
    v8 = swift_allocObject();
    v9 = *(v0 + 16);
    v8[1] = *v0;
    v8[2] = v9;
    v10 = *(v0 + 48);
    v8[3] = *(v0 + 32);
    v8[4] = v10;
    v13[4] = partial apply for closure #2 in UIScrollViewTestRunner.run();
    v13[5] = v8;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?) -> ();
    v13[3] = &block_descriptor_40_2;
    v11 = _Block_copy(v13);
    outlined init with copy of UIScrollViewTestRunner(v0, aBlock);

    [v4 _performScrollTest_iterations_delta_length_scrollAxis_extraResultsBlock_completionBlock_];
    _Block_release(v11);
    _Block_release(v7);
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t outlined destroy of ScrollTestRunner?(uint64_t a1)
{
  type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for ScrollTestRunner?, type metadata accessor for ScrollTestRunner, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ScrollTestRunner()
{
  result = lazy cache variable for type metadata for ScrollTestRunner;
  if (!lazy cache variable for type metadata for ScrollTestRunner)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollTestRunner);
  }

  return result;
}

uint64_t outlined init with copy of ScrollTestRunner?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for ScrollTestRunner?, type metadata accessor for ScrollTestRunner, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ScrollTestRunner?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for ScrollTestRunner?, type metadata accessor for ScrollTestRunner, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ScrollTestRunner?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double destroy for UIScrollViewTestRunner(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for UIScrollViewTestRunner(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  *(a1 + 56) = v4;
  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for UIScrollViewTestRunner(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  return a1;
}

uint64_t assignWithTake for UIScrollViewTestRunner(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t objectdestroy_29Tm_1()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of UIScrollViewTestRunner(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(a2 + 32) = *(a1 + 32);
  *a2 = v3;
  *(a2 + 16) = v4;
  v5 = *(a1 + 7);
  v6 = *(a1 + 40);
  *(a2 + 40) = v6;
  *(a2 + 56) = v5;
  v7 = v6;

  return a2;
}

uint64_t ListSectionSpacing.value.getter()
{
  v1 = 0x4028000000000000;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t View.listSectionSpacing(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionSpacingTraitKey>, &type metadata for ListSectionSpacingTraitKey, &protocol witness table for ListSectionSpacingTraitKey, MEMORY[0x1E697FDB8]);
  v7 = v6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v13 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v17 = v13;
  v18 = a1;
  MEMORY[0x18D00A570](&v17, a2, v7, a3, v10);
  swift_getKeyPath();
  v17 = v13;
  v18 = a1;
  v14 = lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>();
  v16[0] = a3;
  v16[1] = v14;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v16);
  View.environment<A>(_:_:)();

  return (*(v9 + 8))(v12, v8);
}

void key path getter for EnvironmentValues.listSectionSpacing : EnvironmentValues, serialized(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionSpacingTraitKey>, &type metadata for ListSectionSpacingTraitKey, &protocol witness table for ListSectionSpacingTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t View.listSectionSpacing(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = 0;
  return View.listSectionSpacing(_:)(&v4, a1, a2);
}

uint64_t View.listSectionSpacing(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionSpacingTraitKey>, &type metadata for ListSectionSpacingTraitKey, &protocol witness table for ListSectionSpacingTraitKey, MEMORY[0x1E697FDB8]);
  v8 = v7;
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 9);
  v20 = v14;
  v21 = v15;
  v22 = a1;
  MEMORY[0x18D00A570](&v20, a2, v8, a3, v11);
  swift_getKeyPath();
  v20 = v14;
  v21 = v15;
  v22 = a1;
  v16 = lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>();
  v19[0] = a3;
  v19[1] = v16;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v19);
  View.environment<A>(_:_:)();

  return (*(v10 + 8))(v13, v9);
}

double key path setter for EnvironmentValues.listSectionSpacing : EnvironmentValues, serialized(uint64_t *a1, void *a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues.listSectionSpacing.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v4 = v1[1];
  v3[6] = v4;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.listSectionSpacing.modify;
}

void specialized implicit closure #1 in _GraphInputs.listSectionSpacing.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
}

void EnvironmentValues.listSectionSpacing.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.listSectionSpacing : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
}

double EnvironmentValues.listSectionSpacing.setter(uint64_t *a1)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues._listSectionSpacing.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v4 = v1[1];
  v3[6] = v4;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues._listSectionSpacing.modify;
}

void EnvironmentValues.listSectionSpacing.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 9);
  v4 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  v1[25] = v3;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ListSectionSpacing?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListSectionSpacing?>)
  {
    type metadata accessor for ListSectionSpacing?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListSectionSpacing?>);
    }
  }
}

void type metadata accessor for ListSectionSpacing?()
{
  if (!lazy cache variable for type metadata for ListSectionSpacing?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ListSectionSpacing?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ListSectionSpacing?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t View.accessibilityHidden(_:isEnabled:)(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (a1 & a2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (a1 & 1 | ((a2 & 1) == 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v7[4] = v4;
  v7[5] = v5;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityVisibility(_:), v7, a3, a4);
}

uint64_t AccessibilityVisibilityStorageProxy.isElement.getter()
{
  if (*v0)
  {
    return 1;
  }

  else
  {
    return ~(2 * v0[4]) & 2;
  }
}

uint64_t AccessibilityVisibilityStorageProxy.isContainer.getter()
{
  if ((*v0 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return ~v0[4] & 2;
  }
}

uint64_t AccessibilityVisibilityStorageProxy.resolvesToHidden.getter()
{
  if ((*v0 & 4) != 0)
  {
    return 1;
  }

  if ((*(v0 + 4) & 4) != 0)
  {
    return 0;
  }

  return (*v0 >> 3) & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityVisibilityStorageProxy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityVisibilityStorageProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityVisibilityStorageProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityVisibilityStorageProxy.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = *v2;
  type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>(0);
  lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>(&lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>, MEMORY[0x1E6980988]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibilityStorageProxy.CodingKeys, &unk_1EFFDCE28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibilityStorageProxy.CodingKeys, &unk_1EFFDCE28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibilityStorageProxy.CodingKeys, &unk_1EFFDCE28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibilityStorageProxy.CodingKeys, &unk_1EFFDCE28, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

void type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityNullableOptionSet<AccessibilityVisibility>)
  {
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v1 = type metadata accessor for AccessibilityNullableOptionSet();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AccessibilityNullableOptionSet<AccessibilityVisibility>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980128], MEMORY[0x1E6980110], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980118], MEMORY[0x1E6980110], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980120], MEMORY[0x1E6980110], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980130], MEMORY[0x1E6980110], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E76B0], MEMORY[0x1E69E7668], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7690], MEMORY[0x1E69E7668], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

void AccessibilityVisibilityStorageProxy.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int AccessibilityVisibilityStorageProxy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t AccessibilityVisibilityStorageProxy.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>(0);
    lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>(&lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>, MEMORY[0x1E6980990]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityVisibilityStorageProxy()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AccessibilityVisibilityStorageProxy()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityVisibilityStorageProxy(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void type metadata accessor for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();
    v7 = a3(a1, &unk_1EFFDCE28, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibilityStorageProxy, &type metadata for AccessibilityVisibilityStorageProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibilityStorageProxy, &type metadata for AccessibilityVisibilityStorageProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibilityStorageProxy, &type metadata for AccessibilityVisibilityStorageProxy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy);
  }

  return result;
}

uint64_t static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:)(a1, a2, a3, a4, a5);
}

{
  v7 = *a1;
  v8 = a2[1];
  v46 = *a2;
  v47 = v8;
  v48[0] = a2[2];
  *(v48 + 12) = *(a2 + 44);
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v9 = v44;
    v38 = v46;
    v39 = v47;
    v40[0] = v48[0];
    *(v40 + 12) = *(v48 + 12);
    v24 = DWORD1(v44);
    v25 = v7;
    v26 = *(&v43 + 1);
    v27 = v43;
    outlined init with copy of _WidgetInputs(&v46, &v43);
    v11 = type metadata accessor for ControlWidgetConfigurationBodyAccessor(0, a3, a4, v10);
    swift_getWitnessTable(protocol conformance descriptor for ControlWidgetConfigurationBodyAccessor<A>, v11);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v12 = *(&v43 + 1);
    v23 = v43;
    v13 = v44;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41[0] = v38;
    v41[1] = v39;
    v42[0] = v40[0];
    *(v42 + 12) = *(v40 + 12);
    v35 = v38;
    v36 = v39;
    v37[0] = v40[0];
    *(v37 + 12) = *(v40 + 12);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = *(AssociatedConformanceWitness + 32);
    outlined init with copy of _WidgetInputs(v41, &v43);
    v16(&v29, v34, &v35, AssociatedTypeWitness, AssociatedConformanceWitness);
    v43 = v35;
    v44 = v36;
    v45[0] = v37[0];
    *(v45 + 12) = *(v37 + 12);
    outlined destroy of _WidgetInputs(&v43);
    v17 = v29;
    v18 = v30;
    if (v13)
    {
      v35 = v38;
      v36 = v39;
      v37[0] = v40[0];
      *(v37 + 12) = *(v40 + 12);
      outlined destroy of _WidgetInputs(&v35);
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v34[0] = v23;
      v34[1] = v12;
      v33 = v25;
      v29 = v27;
      v30 = v26;
      v31 = v9;
      v32 = v24;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
      v35 = v38;
      v36 = v39;
      v37[0] = v40[0];
      *(v37 + 12) = *(v40 + 12);
      outlined destroy of _WidgetInputs(&v35);
      v19 = v27;
      v20 = v26;
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout(v19, v20, v9);
    *a5 = v17;
    *(a5 + 8) = v18;
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v22 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v22);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA019LimitedAvailabilitycdE0V_Tt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v4 = v18;
    v5 = v19;
    v6 = a2[1];
    v15 = *a2;
    v16 = v6;
    v17[0] = a2[2];
    *(v17 + 12) = *(a2 + 44);
    v12 = v18;
    LOBYTE(v13) = v19;
    DWORD1(v13) = DWORD1(v19);
    outlined init with copy of _WidgetInputs(a2, &v18);
    type metadata accessor for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>(0);
    lazy protocol witness table accessor for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>(&lazy protocol witness table cache variable for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>, type metadata accessor for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v19;
    v18 = v15;
    v19 = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(&v18, &v12);
    v8 = v12;
    v9 = DWORD2(v12);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v12 = v15;
    v13 = v16;
    v14[0] = v17[0];
    *(v14 + 12) = *(v17 + 12);
    outlined destroy of _WidgetInputs(&v12);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v8;
    *(a3 + 8) = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v4 = v22;
    v5 = v23;
    v6 = a2[1];
    v19 = *a2;
    v20 = v6;
    v21[0] = a2[2];
    *(v21 + 12) = *(a2 + 44);
    v16 = v22;
    LOBYTE(v17) = v23;
    DWORD1(v17) = DWORD1(v23);
    outlined init with copy of _WidgetInputs(a2, &v22);
    type metadata accessor for ControlWidgetConfigurationBodyAccessor<Never>(0, v7, v8, v9);
    lazy protocol witness table accessor for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>(&lazy protocol witness table cache variable for type ControlWidgetConfigurationBodyAccessor<Never> and conformance ControlWidgetConfigurationBodyAccessor<A>, type metadata accessor for ControlWidgetConfigurationBodyAccessor<Never>);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v10 = v23;
    v22 = v19;
    v23 = v20;
    v24[0] = v21[0];
    *(v24 + 12) = *(v21 + 12);
    _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(v15, &v22, &v16);
    v11 = v16;
    v12 = DWORD2(v16);
    if ((v10 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v16 = v19;
    v17 = v20;
    v18[0] = v21[0];
    *(v18 + 12) = *(v21 + 12);
    outlined destroy of _WidgetInputs(&v16);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v11;
    *(a3 + 8) = v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ControlWidgetConfigurationBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for ControlWidgetConfigurationBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for ControlWidgetConfigurationBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t protocol witness for static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:) in conformance Never@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(v5, a3);
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilityControlWidgetConfiguration.Storage(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = LimitedAvailabilityControlWidgetConfiguration.Storage.__allocating_init(config:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.Storage.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 96) - 8) + 32))(v2 + *(*v2 + 112), a1);
  return v2;
}

uint64_t static LimitedAvailabilityControlWidgetConfiguration._makeControlWidgetConfiguration(control:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *&v25[12] = *(a2 + 44);
  v5 = a2[1];
  v23 = *a2;
  v24 = v5;
  *v25 = a2[2];

  PreferencesOutputs.init()();

  v10 = *&v25[16];
  v11 = *&v25[24];
  PreferencesInputs.makeIndirectOutputs()();

  v6 = v12;
  v7 = DWORD2(v12);
  v8 = AGSubgraphGetCurrent();
  if (!v8)
  {
    __break(1u);
  }

  *(v20 + 12) = *&v25[12];
  v19[2] = v24;
  v20[0] = *v25;
  v19[1] = v23;
  LODWORD(v19[0]) = v4;
  *(&v19[0] + 1) = v8;
  *&v21 = v12;
  DWORD2(v21) = DWORD2(v12);
  v22 = 0;
  v16 = v20[1];
  v17 = v21;
  v18 = 0;
  v12 = v19[0];
  v13 = v23;
  v14 = v24;
  v15 = *v25;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _WidgetInputs(&v23, &v10);
  lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs(v19);
  *&v12 = v6;
  DWORD2(v12) = v7;

  LOBYTE(v10) = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

void LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 96))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 96) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs.updateValue()(unsigned int *a1)
{
  v2 = *(a1 + 2);
  v23[0] = *(a1 + 1);
  v23[1] = v2;
  v24[0] = *(a1 + 3);
  *(v24 + 12) = *(a1 + 15);
  v3 = v2;
  v22 = v23[0];
  v4 = *(a1 + 14);
  v19 = *(a1 + 10);
  v20 = v4;
  v21 = a1[18];
  swift_beginAccess();
  v5 = v3[3];
  v25[1] = v3[2];
  v25[2] = v5;
  v6 = v3[5];
  v25[3] = v3[4];
  v25[4] = v6;
  v25[0] = v3[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v7 = swift_allocObject();
  memmove((v7 + 16), v3 + 1, 0x50uLL);
  outlined init with copy of _WidgetInputs(v23, &v17);
  outlined init with copy of CachedEnvironment(v25, &v17);

  v8 = *(a1 + 10);
  v9 = a1[22];

  v10 = *AGGraphGetValue();
  LODWORD(v13) = *a1;
  v26 = v22;
  *v27 = v7;
  *&v27[8] = v19;
  *&v27[40] = v21;
  *&v27[24] = v20;
  v17 = v22;
  *v18 = *v27;
  *&v18[16] = *&v27[16];
  *&v18[28] = *&v27[28];
  v11 = *(*v10 + 80);

  outlined init with copy of _WidgetInputs(&v26, v28);
  v11(&v15, &v13, &v17);

  v28[0] = v17;
  v28[1] = *v18;
  v29[0] = *&v18[16];
  *(v29 + 12) = *&v18[28];
  outlined destroy of _WidgetInputs(v28);
  *&v17 = v8;
  DWORD2(v17) = v9;
  v13 = v15;
  v14 = v16;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v17 = v22;
  *v18 = v7;
  *&v18[8] = v19;
  *&v18[24] = v20;
  *&v18[40] = v21;
  return outlined destroy of _WidgetInputs(&v17);
}

uint64_t protocol witness for static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:) in conformance LimitedAvailabilityControlWidgetConfiguration@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA019LimitedAvailabilitycdE0V_Tt2B5(v5, a3);
}

double LimitedAvailabilityControlWidgetConfiguration.Storage.Child.value.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilityControlWidgetConfiguration.Storage(0, a2, a3, v7);

  v8 = swift_dynamicCastClassUnconditional();
  (*(*(a2 - 8) + 16))(a4, v8 + *(*v8 + 112), a2);

  return result;
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.Storage.makeWidgetControlConfiguration(control:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v15[0] = a2[2];
  *(v15 + 12) = *(a2 + 44);
  v8 = *(v5 + 96);
  v9 = *(v5 + 104);
  v13 = v6;
  v10 = type metadata accessor for LimitedAvailabilityControlWidgetConfiguration.Storage.Child(0, v8, v9, a4);
  swift_getWitnessTable(protocol conformance descriptor for LimitedAvailabilityControlWidgetConfiguration.Storage<A>.Child, v10);
  _GraphValue.init<A>(_:)();
  return (*(v9 + 32))(v12, v14, v8, v9);
}

double LimitedAvailabilityControlWidgetConfiguration.Storage.__deallocating_deinit()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 112));

  swift_deallocClassInstance();
  return result;
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs, &unk_1EFFDD060, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LimitedAvailabilityControlWidgetConfiguration(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration)
  {
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration);
  }

  return result;
}

void specialized ControlWidgetConfiguration.controlWidgetConfigurationBodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(35);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>)
  {
    v2 = lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration();
    v4 = type metadata accessor for ControlWidgetConfigurationBodyAccessor(a1, &type metadata for LimitedAvailabilityControlWidgetConfiguration, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>);
    }
  }
}

void type metadata accessor for ControlWidgetConfigurationBodyAccessor<Never>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<Never>)
  {
    v4 = type metadata accessor for ControlWidgetConfigurationBodyAccessor(0, MEMORY[0x1E69E73E0], &protocol witness table for Never, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<Never>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ControlWidgetConfigurationBodyAccessor<A>, v4);
    atomic_store(result, a1);
  }

  return result;
}

void WindowPlacement.init(_:size:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  WindowPlacement.init(position:size:)();
}

{
  WindowPlacement.init(position:size:)();
}

void WindowPlacement.init(position:size:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for DisplayProxy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayProxy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t TupleSliderTickContent.body.getter(void *a1)
{
  v3 = type metadata accessor for Mirror();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1[3];
  v7 = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v1, v7);
  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  (*(v4 + 8))(v6, v3);
  v20[0] = v9;
  v17 = a1[2];
  v10 = v17;
  v18 = v7;
  v11 = a1[4];
  v19 = v11;
  type metadata accessor for AnyCollection<(label: String?, value: Any)>(0);
  type metadata accessor for SliderTick(255, v10, v11, v12);
  v13 = type metadata accessor for Array();
  lazy protocol witness table accessor for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v13);
  v14 = Sequence.flatMap<A>(_:)();

  return v14;
}

uint64_t closure #1 in TupleSliderTickContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  outlined init with copy of (label: String?, value: Any)(a1, v16);

  v20 = a2;
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v15, v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    (*(v9 + 40))(v8, v9, v11);
    type metadata accessor for SliderTick(0, a2, a4, v12);
    swift_getAssociatedConformanceWitness();
    v13 = Array.init<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    type metadata accessor for SliderTick(0, a2, a4, v7);
    result = static Array._allocateUninitialized(_:)();
    v13 = result;
  }

  *a3 = v13;
  return result;
}

void type metadata accessor for AnyCollection<(label: String?, value: Any)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyCollection<(label: String?, value: Any)>)
  {
    type metadata accessor for (label: String?, value: Any)(255);
    v1 = type metadata accessor for AnyCollection();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AnyCollection<(label: String?, value: Any)>);
    }
  }
}

void type metadata accessor for (label: String?, value: Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (label: String?, value: Any))
  {
    type metadata accessor for String?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (label: String?, value: Any));
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>()
{
  result = lazy protocol witness table cache variable for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>;
  if (!lazy protocol witness table cache variable for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>)
  {
    type metadata accessor for AnyCollection<(label: String?, value: Any)>(255);
    result = swift_getWitnessTable(MEMORY[0x1E69E6AE8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>);
  }

  return result;
}

uint64_t protocol witness for SliderTickContent.body.getter in conformance TupleSliderTickContent<A, B>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TupleSliderTickContent.body.getter(a1);
  *a2 = result;
  return result;
}

uint64_t outlined init with copy of (label: String?, value: Any)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (label: String?, value: Any)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Form.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v23[1] = a2;
  v6 = *(a1 + 16);
  IsFooterBearing = type metadata accessor for ContentIsFooterBearing(255, v6, a3, a4);
  v8 = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  v9 = *(a1 + 24);
  v30[0] = &type metadata for FormStyleConfiguration.Content;
  v30[1] = v6;
  v30[2] = v8;
  v30[3] = v9;
  type metadata accessor for StaticSourceWriter(255, v30);
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for StaticIf();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v23 - v17;
  v25 = v6;
  v26 = v9;
  v27 = v4;
  v23[4] = v6;
  v23[5] = v9;
  v24 = v4;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContentIsFooterBearing<A>, IsFooterBearing, v16);
  v29[0] = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();
  v29[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v22 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v29);
  StaticIf<>.init(_:then:else:)();
  v28[0] = WitnessTable;
  v28[1] = v9;
  v28[2] = v22;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v11, v28);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v12 + 8);
  v20(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v18, v11);
}

uint64_t closure #2 in Form.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v23[0] = &type metadata for FormStyleConfiguration.Content;
  v23[1] = a2;
  v23[2] = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  v23[3] = a3;
  type metadata accessor for StaticSourceWriter(255, v23);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v14 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for FormStyleConfiguration.Content, partial apply for closure #1 in closure #2 in Form.body.getter, v18, &type metadata for ResolvedFormStyle, &type metadata for FormStyleConfiguration.Content, a2, v14);
  v22[0] = v14;
  v22[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, v7);
}

unint64_t lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle;
  if (!lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedFormStyle, &type metadata for ResolvedFormStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle;
  if (!lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedFormStyle, &type metadata for ResolvedFormStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle);
  }

  return result;
}

uint64_t closure #1 in Form.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t Form.init<A, B>(content:footer:)@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v21(v18);
  a3(v22);
  return FormFooterContent.init(content:footer:)(v20, v16, a5, a6, a7, a8, x8_0);
}

uint64_t FormFooterContent.init(content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for FormFooterContent(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t FormFooterContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  v4 = a1[2];
  v5 = a1[4];
  v42 = &type metadata for FormStyleConfiguration.Content;
  v43 = v4;
  v44 = v28;
  v45 = v5;
  type metadata accessor for StaticSourceWriter(255, &v42);
  v6 = type metadata accessor for ModifiedContent();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = a1[3];
  v27 = lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer();
  v10 = a1[5];
  v42 = &type metadata for FormStyleConfiguration.Footer;
  v43 = v9;
  v26 = v9;
  v44 = v27;
  v45 = v10;
  type metadata accessor for StaticSourceWriter(255, &v42);
  v11 = type metadata accessor for ModifiedContent();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  *&v17 = v4;
  *(&v17 + 1) = v9;
  v25 = v17;
  *&v18 = v5;
  *(&v18 + 1) = v10;
  v24 = v18;
  v37 = v17;
  v38 = v18;
  v39 = v2;
  v19 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for FormStyleConfiguration.Content, partial apply for closure #1 in FormFooterContent.body.getter, v36, &type metadata for ResolvedFormStyle, &type metadata for FormStyleConfiguration.Content, v4, v19);
  v33 = v25;
  v34 = v24;
  v35 = v2;
  v41[0] = v19;
  v41[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v41);
  View.viewAlias<A, B>(_:_:)(&type metadata for FormStyleConfiguration.Footer, partial apply for closure #2 in FormFooterContent.body.getter, v32, v6, &type metadata for FormStyleConfiguration.Footer, v26, WitnessTable);
  (*(v30 + 8))(v8, v6);
  v40[0] = WitnessTable;
  v40[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v20, v11, v40);
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v29 + 8);
  v22(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v16, v11);
}

uint64_t closure #1 in FormFooterContent.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t closure #2 in FormFooterContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for FormFooterContent(0, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

BOOL static ContentIsFooterBearing.evaluate(inputs:)(uint64_t a1, uint64_t a2)
{
  if (swift_conformsToProtocol2())
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for _GraphValue<WithCommandFlag<EmptyCommands>>(0);
  _GraphValue.subscript.getter();
  PreferencesOutputs.init()();
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    PreferencesOutputs.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for WithCommandFlag<EmptyCommands>(0, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>.SetFlag, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag.SetFlag);
    lazy protocol witness table accessor for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag();
    Attribute.init<A>(body:value:flags:update:)();
    result = PreferencesOutputs.subscript.setter();
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t specialized Commands._resolve(into:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), int a4, __n128 a5)
{
  v37 = a4;
  v38 = a3;
  v43 = a1;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>(0, a5);
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36[-v9];
  v11 = type metadata accessor for CommandGroupPlacement(0);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36[-v20];
  type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v36[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for sidebar != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, static CommandGroupPlacement.sidebar);
  outlined init with copy of CommandGroupPlacement(v25, v21, type metadata accessor for CommandGroupPlacement);
  outlined init with copy of CommandGroupPlacement(v21, v18, type metadata accessor for CommandGroupPlacement);
  closure #1 in InspectorCommands.body.getter(a2, v38, v37 & 0x1FF, v10, v26);
  v38 = type metadata accessor for CommandGroupPlacement;
  outlined destroy of HashableCommandGroupPlacementWrapper(v21, type metadata accessor for CommandGroupPlacement);
  v27 = type metadata accessor for CommandOperation(0);
  v28 = *(v27 + 20);
  v29 = &v24[*(v27 + 24)];
  *v24 = 0;
  outlined init with copy of CommandGroupPlacement(v18, &v24[v28], type metadata accessor for CommandGroupPlacement);
  outlined init with take of CommandGroupPlacement(v18, v15, type metadata accessor for CommandGroupPlacement);
  v30 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of CommandGroupPlacement(v15, v30, type metadata accessor for CommandGroupPlacement);
  v31 = v41;
  outlined init with copy of CommandGroupPlacement(v10, v41, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  v32 = (*(v39 + 80) + 17) & ~*(v39 + 80);
  v33 = (v12 + *(v40 + 80) + v32) & ~*(v40 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  outlined init with take of CommandGroupPlacement(v15, v34 + v32, type metadata accessor for CommandGroupPlacement);
  outlined init with take of CommandGroupPlacement(v10, v34 + v33, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  *v29 = partial apply for specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:);
  v29[1] = v34;
  specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:)(v24, v43, 0, v30, v31);
  outlined destroy of HashableCommandGroupPlacementWrapper(v30, v38);
  outlined destroy of HashableCommandGroupPlacementWrapper(v31, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  return outlined destroy of HashableCommandGroupPlacementWrapper(v24, type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>);
}

uint64_t Commands._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 24))(a2, a3, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t specialized static Commands._makeCommands(content:inputs:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = v23;
  v6 = v24;
  v7 = DWORD1(v24);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25[0] = a2[2];
  *(v25 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v16);
  if (AGTypeID.isValueType.getter())
  {
    v16 = v5;
    v17 = v6;
    v18 = v7;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<PrototypePrintingCommands>, lazy protocol witness table accessor for type PrototypePrintingCommands and conformance PrototypePrintingCommands, &type metadata for PrototypePrintingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v10 = v19;
    v9 = v20;
    v11 = v21;
    PreferencesOutputs.init()();
    v12 = v16;
    v13 = DWORD2(v16);
    if ((v11 & 1) == 0)
    {
      v19 = v10;
      v20 = v9;
      v22 = a1;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout(v5, *(&v5 + 1), v6);
    *a3 = v12;
    *(a3 + 8) = v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v5 = v23;
  v6 = v24;
  v7 = DWORD1(v24);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25[0] = a2[2];
  *(v25 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v16);
  if (AGTypeID.isValueType.getter())
  {
    v16 = v5;
    v17 = v6;
    v18 = v7;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<ImportFromDevicesCommands>, lazy protocol witness table accessor for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands, &type metadata for ImportFromDevicesCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v10 = v19;
    v9 = v20;
    v11 = v21;
    PreferencesOutputs.init()();
    v12 = v16;
    v13 = DWORD2(v16);
    if ((v11 & 1) == 0)
    {
      v19 = v10;
      v20 = v9;
      v22 = a1;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout(v5, *(&v5 + 1), v6);
    *a3 = v12;
    *(a3 + 8) = v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static Commands._makeCommands(content:inputs:)@<X0>(__int128 *a2@<X1>, void *a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v4 = v17;
  v5 = v18;
  v6 = DWORD1(v18);
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  *v19 = a2[2];
  *&v19[12] = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v14);
  if (AGTypeID.isValueType.getter())
  {
    v14 = v4;
    LOBYTE(v15) = v5;
    DWORD1(v15) = v6;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<InspectorCommands>, lazy protocol witness table accessor for type InspectorCommands and conformance InspectorCommands, &type metadata for InspectorCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();

    v8 = PreferencesOutputs.init()();
    MEMORY[0x1EEE9AC00](v8);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    v9 = v14;
    v10 = DWORD2(v14);
    if ((v13 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v14 = v17;
    v15 = v18;
    v16[0] = *v19;
    *(v16 + 12) = *&v19[12];
    outlined destroy of _CommandsInputs(&v14);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v9;
    *(a3 + 2) = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance Never@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v5, a3);
}

uint64_t _ResolvedCommands.subscript.getter(uint64_t a1)
{
  v3 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  outlined init with copy of CommandGroupPlacement(a1, v5, type metadata accessor for CommandGroupPlacement);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);

    outlined destroy of HashableCommandGroupPlacementWrapper(v5, type metadata accessor for HashableCommandGroupPlacementWrapper);
    return v9;
  }

  else
  {
    outlined destroy of HashableCommandGroupPlacementWrapper(v5, type metadata accessor for HashableCommandGroupPlacementWrapper);
    return 0;
  }
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance CommandsKey(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  v4 = swift_allocObject();
  *(v4 + 16) = *a1;
  a2(&v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  v6 = swift_allocObject();
  v6[2] = partial apply for thunk for @escaping @callee_guaranteed (@inout UISplitViewControllerProxy) -> (@out ());
  v6[3] = v4;
  v6[4] = thunk for @escaping @callee_guaranteed (@inout _ResolvedCommands) -> (@out ())partial apply;
  v6[5] = v5;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in static CommandsKey.reduce(value:nextValue:);
  *(result + 24) = v6;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  *(a1 + 8) = result;
  return result;
}

double protocol witness for static TupleDescriptor.typeCache.getter in conformance CommandsDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance CommandsDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CommandsDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance CommandsDescriptor(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance TextEditingCommands@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v5, a3);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance TextFormattingCommands@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v5, a3);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance ToolbarCommands@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v5, a3);
}

void protocol witness for Commands._resolve(into:) in conformance ToolbarCommands()
{
  if (one-time initialization token for toolbar != -1)
  {
    swift_once();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for Commands._resolve(into:) in conformance TextEditingCommands(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance InspectorCommands@<X0>(__int128 *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v5, a3);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance PrintingCommands@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v5, a3);
}

void protocol witness for Commands._resolve(into:) in conformance PrintingCommands()
{
  lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder();
  static UserDefaultKeyedFeature.isEnabled.getter();
  if (one-time initialization token for printing != -1)
  {
    swift_once();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance ImportFromDevicesCommands@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v7[0] = a2[2];
  *(v7 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v3, v6, a3);
}

uint64_t _s7SwiftUI19_ConditionalContentVA2A8CommandsRzAaDR_rlE05_makeE07content6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA15WithCommandFlagVyAA05EmptyE0VG_ATTt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  *&v12 = *(a2 + 48);
  DWORD2(v12) = *(a2 + 56);
  outlined init with copy of PreferencesInputs(&v9, v19);
  PreferencesInputs.makeIndirectOutputs()();

  v5 = *&v19[0];
  v6 = DWORD2(v19[0]);
  *&v18[12] = *(a2 + 44);
  *v18 = *(a2 + 32);
  *&v18[32] = *&v19[0];
  *&v18[40] = DWORD2(v19[0]);
  v14 = *v18;
  *v15 = *&v18[16];
  *&v15[12] = *&v18[28];
  v7 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v7;
  v12 = v17[0];
  v13 = v7;

  outlined init with copy of _CommandsInputs(a2, v19);
  outlined init with copy of CommandGroupPlacement(v17, v19, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider);
  type metadata accessor for WithCommandFlag<EmptyCommands>(0, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
  type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider(0);
  lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(&lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider and conformance _ConditionalContent<A, B><>.CommandsProvider, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider, protocol conformance descriptor for _ConditionalContent<A, B><>.CommandsProvider);
  _ConditionalContent.Container.init(content:provider:)();
  v14 = v19[2];
  *v15 = v19[3];
  *&v15[16] = v19[4];
  v16 = v19[5];
  v12 = v19[0];
  v13 = v19[1];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of CommandGroupPlacement(v19, v11, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
  type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info(0);
  type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>(0);
  lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(&lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider> and conformance _ConditionalContent<A, B>.Container<A1>, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>, MEMORY[0x1E697F950]);
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of HashableCommandGroupPlacementWrapper(v19, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
  *&v12 = v5;
  DWORD2(v12) = v6;

  v11[0] = 0;
  PreferencesOutputs.setIndirectDependency(_:)();
  outlined destroy of HashableCommandGroupPlacementWrapper(v19, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
  outlined destroy of HashableCommandGroupPlacementWrapper(v17, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider);

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance PrototypePrintingCommands@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v7[0] = a2[2];
  *(v7 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v3, v6, a3);
}

uint64_t specialized implicit closure #1 in static CommandGroup._makeCommands(content:inputs:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList(0, v1);
  lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(&lazy protocol witness table cache variable for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList, type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList, protocol conformance descriptor for CommandGroup<A>.MakeList);
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type PrototypePrintingCommands and conformance PrototypePrintingCommands()
{
  result = lazy protocol witness table cache variable for type PrototypePrintingCommands and conformance PrototypePrintingCommands;
  if (!lazy protocol witness table cache variable for type PrototypePrintingCommands and conformance PrototypePrintingCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrototypePrintingCommands, &type metadata for PrototypePrintingCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrototypePrintingCommands and conformance PrototypePrintingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<PrototypePrintingCommands>, lazy protocol witness table accessor for type PrototypePrintingCommands and conformance PrototypePrintingCommands, &type metadata for PrototypePrintingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands()
{
  result = lazy protocol witness table cache variable for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands;
  if (!lazy protocol witness table cache variable for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImportFromDevicesCommands, &type metadata for ImportFromDevicesCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<ImportFromDevicesCommands>, lazy protocol witness table accessor for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands, &type metadata for ImportFromDevicesCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder()
{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnablePageBuilder, &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnablePageBuilder, &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable("M;\tb", &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnablePageBuilder, &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnablePageBuilder, &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnablePageBuilder, &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnablePageBuilder, &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnablePageBuilder, &type metadata for EnablePageBuilder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrintingCommands and conformance PrintingCommands()
{
  result = lazy protocol witness table cache variable for type PrintingCommands and conformance PrintingCommands;
  if (!lazy protocol witness table cache variable for type PrintingCommands and conformance PrintingCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrintingCommands, &type metadata for PrintingCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrintingCommands and conformance PrintingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<PrintingCommands>, lazy protocol witness table accessor for type PrintingCommands and conformance PrintingCommands, &type metadata for PrintingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
    v1 = type metadata accessor for _ConditionalContent.Info();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info);
    }
  }
}

void type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>(255, a4);
    v8 = v7;
    HasKeyboard = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>);
    v10 = a3(a1, v8, HasKeyboard);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double partial apply for specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:)(_BYTE *a1, void *a2)
{
  v5 = *(type metadata accessor for CommandGroupPlacement(0) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>(0, v8);
  v10 = *(v2 + 16);
  v11 = v2 + ((v6 + v7 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:)(a1, a2, v10, v2 + v6, v11);
}

uint64_t outlined destroy of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type InspectorCommands and conformance InspectorCommands()
{
  result = lazy protocol witness table cache variable for type InspectorCommands and conformance InspectorCommands;
  if (!lazy protocol witness table cache variable for type InspectorCommands and conformance InspectorCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorCommands, &type metadata for InspectorCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorCommands and conformance InspectorCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<InspectorCommands>, lazy protocol witness table accessor for type InspectorCommands and conformance InspectorCommands, &type metadata for InspectorCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for _GraphValue<WithCommandFlag<EmptyCommands>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _GraphValue<WithCommandFlag<EmptyCommands>>)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
    v1 = type metadata accessor for _GraphValue();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _GraphValue<WithCommandFlag<EmptyCommands>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag()
{
  result = lazy protocol witness table cache variable for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag;
  if (!lazy protocol witness table cache variable for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>.SetFlag, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag.SetFlag);
    result = swift_getWitnessTable(protocol conformance descriptor for WithCommandFlag<A>.SetFlag, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarCommands and conformance ToolbarCommands()
{
  result = lazy protocol witness table cache variable for type ToolbarCommands and conformance ToolbarCommands;
  if (!lazy protocol witness table cache variable for type ToolbarCommands and conformance ToolbarCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarCommands, &type metadata for ToolbarCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCommands and conformance ToolbarCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<ToolbarCommands>, lazy protocol witness table accessor for type ToolbarCommands and conformance ToolbarCommands, &type metadata for ToolbarCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextFormattingCommands and conformance TextFormattingCommands()
{
  result = lazy protocol witness table cache variable for type TextFormattingCommands and conformance TextFormattingCommands;
  if (!lazy protocol witness table cache variable for type TextFormattingCommands and conformance TextFormattingCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextFormattingCommands, &type metadata for TextFormattingCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextFormattingCommands and conformance TextFormattingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<TextFormattingCommands>, lazy protocol witness table accessor for type TextFormattingCommands and conformance TextFormattingCommands, &type metadata for TextFormattingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextEditingCommands and conformance TextEditingCommands()
{
  result = lazy protocol witness table cache variable for type TextEditingCommands and conformance TextEditingCommands;
  if (!lazy protocol witness table cache variable for type TextEditingCommands and conformance TextEditingCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextEditingCommands, &type metadata for TextEditingCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditingCommands and conformance TextEditingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<TextEditingCommands>, lazy protocol witness table accessor for type TextEditingCommands and conformance TextEditingCommands, &type metadata for TextEditingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for WithCommandFlag<EmptyCommands>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in static CommandsKey.reduce(value:nextValue:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(v1 + 16))();
  return v3(a1);
}

void *MenuSliderStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v9[6] = a1[6];
  v9[7] = v3;
  v9[8] = a1[8];
  v4 = a1[3];
  v9[2] = a1[2];
  v9[3] = v4;
  v5 = a1[5];
  v9[4] = a1[4];
  v9[5] = v5;
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  closure #1 in MenuSliderStyle.makeBody(configuration:)(v9, __src);
  KeyPath = swift_getKeyPath();
  result = memcpy(a2, __src, 0x129uLL);
  *(a2 + 297) = 1;
  *(a2 + 304) = KeyPath;
  *(a2 + 312) = closure #4 in PaletteControlGroupStyle.makeBody(configuration:);
  *(a2 + 320) = 0;
  return result;
}

uint64_t closure #1 in MenuSliderStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[7];
  v4 = a1[5];
  v31 = a1[6];
  v32 = v3;
  v5 = a1[7];
  v33 = a1[8];
  v6 = a1[3];
  v7 = a1[1];
  v27 = a1[2];
  v28 = v6;
  v8 = a1[5];
  v9 = a1[3];
  v29 = a1[4];
  v30 = v8;
  v10 = a1[1];
  v25 = *a1;
  v26 = v10;
  v11 = a1[5];
  v12 = a1[7];
  v43[6] = a1[6];
  v43[7] = v12;
  v43[8] = a1[8];
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  v43[2] = a1[2];
  v43[3] = v15;
  v43[4] = a1[4];
  v43[5] = v11;
  v16 = a1[1];
  v43[0] = *a1;
  v43[1] = v14;
  v17 = a1[5];
  v18 = a1[7];
  v19 = a1[8];
  v37 = a1[6];
  v38 = v18;
  v39 = v19;
  v24[6] = v37;
  v24[7] = v18;
  v20 = a1[2];
  v21 = a1[3];
  v24[8] = v19;
  v34[2] = v20;
  v34[3] = v21;
  v24[2] = v20;
  v24[3] = v21;
  v35 = a1[4];
  v36 = v17;
  v24[4] = v35;
  v24[5] = v17;
  v34[0] = *a1;
  v34[1] = v16;
  v40 = 0;
  LOBYTE(v24[9]) = 0;
  v24[0] = v34[0];
  v24[1] = v16;
  v41[2] = v27;
  v41[3] = v9;
  v41[0] = v13;
  v41[1] = v7;
  v22 = a1[8];
  v41[7] = v5;
  v41[8] = v22;
  v41[5] = v4;
  v41[6] = v31;
  v41[4] = v29;
  v42 = 1;
  *(&v24[16] + 8) = v5;
  *(&v24[17] + 8) = v22;
  *(&v24[15] + 8) = v31;
  BYTE8(v24[18]) = 1;
  *(&v24[11] + 8) = v27;
  *(&v24[12] + 8) = v9;
  *(&v24[13] + 8) = v29;
  *(&v24[14] + 8) = v4;
  *(&v24[9] + 8) = v13;
  *(&v24[10] + 8) = v7;
  memcpy(a2, v24, 0x129uLL);
  v44 = 1;
  outlined init with copy of SliderStyleConfiguration(a1, v45);
  outlined init with copy of SliderStyleConfiguration(a1, v45);
  outlined init with copy of MenuSliderStepButton(v34, v45);
  outlined init with copy of MenuSliderStepButton(v41, v45);
  outlined destroy of MenuSliderStepButton(v43);
  v45[6] = v31;
  v45[7] = v32;
  v45[8] = v33;
  v45[2] = v27;
  v45[3] = v28;
  v45[4] = v29;
  v45[5] = v30;
  v45[0] = v25;
  v45[1] = v26;
  v46 = 0;
  return outlined destroy of MenuSliderStepButton(v45);
}

void MenuSliderStepButton.resolvedLabel.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 144);
  if (v4 == 1)
  {
    if ((*(v1 + 104) & 1) == 0)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v5 = Text.init(_:tableName:bundle:comment:)();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = 1937075312;
      v13 = 0xE400000000000000;
LABEL_7:
      specialized Image.init(systemName:)(v12, v13);
      goto LABEL_8;
    }
  }

  else if ((*(v1 + 104) & 1) == 0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v5 = Text.init(_:tableName:bundle:comment:)();
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v12 = 0x73756E696DLL;
    v13 = 0xE500000000000000;
    goto LABEL_7;
  }

  v5 = 0;
  v7 = 0;
  v9 = 0;
  v11 = 0;
  v14 = 0;
LABEL_8:
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v14;
  *(a1 + 40) = v3 ^ 1;
  *(a1 + 41) = v4 ^ 1;
}

uint64_t MenuSliderStepButton.body.getter()
{
  v1 = v0[7];
  v49 = v0[6];
  v50 = v1;
  v51 = v0[8];
  v52 = *(v0 + 144);
  v2 = v0[3];
  v45 = v0[2];
  v46 = v2;
  v3 = v0[5];
  v47 = v0[4];
  v48 = v3;
  v4 = v0[1];
  v43 = *v0;
  v44 = v4;
  if (v52)
  {
    v5 = partial apply for closure #1 in MenuSliderStepButton.body.getter;
  }

  else
  {
    v5 = partial apply for closure #2 in MenuSliderStepButton.body.getter;
  }

  v6 = swift_allocObject();
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  *(v6 + 112) = v8;
  *(v6 + 128) = v7;
  v10 = v0[7];
  *(v6 + 144) = v0[8];
  v12 = v0[2];
  v11 = v0[3];
  v13 = v0[1];
  *(v6 + 48) = v12;
  *(v6 + 64) = v11;
  v14 = v0[3];
  v16 = v0[4];
  v15 = v0[5];
  *(v6 + 80) = v16;
  *(v6 + 96) = v15;
  v17 = v0[1];
  v18 = *v0;
  *(v6 + 16) = *v0;
  *(v6 + 32) = v17;
  v39 = v8;
  v40 = v10;
  v41 = v0[8];
  v35 = v12;
  v36 = v14;
  v37 = v16;
  v38 = v9;
  *(v6 + 160) = *(v0 + 144);
  v42 = *(v0 + 144);
  v33 = v18;
  v34 = v13;
  outlined init with copy of MenuSliderStepButton(&v43, v29);
  MenuSliderStepButton.resolvedLabel.getter(v30);
  v25 = v30[0];
  v26 = v30[1];
  v27 = v31;
  v28 = v32;
  v19 = swift_allocObject();
  v20 = v50;
  *(v19 + 112) = v49;
  *(v19 + 128) = v20;
  *(v19 + 144) = v51;
  *(v19 + 160) = v52;
  v21 = v46;
  *(v19 + 48) = v45;
  *(v19 + 64) = v21;
  v22 = v48;
  *(v19 + 80) = v47;
  *(v19 + 96) = v22;
  v23 = v44;
  *(v19 + 16) = v43;
  *(v19 + 32) = v23;
  *(v19 + 168) = v5;
  *(v19 + 176) = v6;
  outlined init with copy of MenuSliderStepButton(&v43, v29);
  type metadata accessor for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();

  View.map<A>(_:)();

  return outlined consume of _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>.Storage(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28);
}

uint64_t closure #1 in MenuSliderStepButton.body.getter(double *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[9];
  v7[19] = *a1;
  v7[20] = v2;
  v7[21] = v3;
  outlined init with copy of MenuSliderStepButton(a1, v7);
  type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v7);
  v5 = v4 + v7[0];
  if (v4 + v7[0] > 1.0)
  {
    v5 = 1.0;
  }

  v7[0] = v5;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of MenuSliderStepButton(a1);
}

uint64_t closure #2 in MenuSliderStepButton.body.getter(double *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[9];
  v7[19] = *a1;
  v7[20] = v2;
  v7[21] = v3;
  outlined init with copy of MenuSliderStepButton(a1, v7);
  type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v7);
  v5 = v7[0] - v4;
  if (v7[0] - v4 <= 0.0)
  {
    v5 = 0.0;
  }

  v7[0] = v5;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of MenuSliderStepButton(a1);
}

uint64_t closure #3 in MenuSliderStepButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v13 = swift_allocObject();
  v14 = *(a2 + 112);
  *(v13 + 112) = *(a2 + 96);
  *(v13 + 128) = v14;
  *(v13 + 144) = *(a2 + 128);
  *(v13 + 160) = *(a2 + 144);
  v15 = *(a2 + 48);
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = v15;
  v16 = *(a2 + 80);
  *(v13 + 80) = *(a2 + 64);
  *(v13 + 96) = v16;
  v17 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v17;
  *(v13 + 168) = a3;
  *(v13 + 176) = a4;
  *v12 = 4;
  type metadata accessor for Button<<<opaque return type of MappedViewElement.view>>.0>(0, v18);
  v20 = &v12[*(v19 + 36)];
  *v20 = partial apply for closure #1 in closure #3 in MenuSliderStepButton.body.getter;
  v20[1] = v13;
  type metadata accessor for ButtonAction(0);
  v21 = *a1;
  v26 = *(a1 + 1);
  swift_storeEnumTagMultiPayload();
  v28 = v21;
  v29 = v26;
  outlined init with copy of MenuSliderStepButton(a2, v27);

  MappedViewElement.view.getter();
  AccessibilityProperties.init()();
  v30 = vdupq_n_s64(0x80000uLL);
  v31 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v28);
  type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v22 = swift_allocObject();
  memcpy((v22 + 16), v27, 0x128uLL);
  sub_18C0DBD28(v12, a5);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>);
  v24 = (a5 + *(v23 + 36));
  *v24 = v22;
  v24[1] = 0;
  return sub_18C0DBD8C(v12);
}

void destroy for MenuSliderStepButton(uint64_t a1)
{

  v2 = *(a1 + 112);
  if (v2)
  {

    v3 = *(a1 + 136);
  }
}

uint64_t initializeWithCopy for MenuSliderStepButton(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 9);
  v8 = a2 + 14;
  v7 = a2[14];
  v9 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);

  if (v7)
  {
    v10 = a2[15];
    v11 = a2[16];
    *(a1 + 112) = v7;
    *(a1 + 120) = v10;
    v12 = a2[17];
    *(a1 + 128) = v11;
    *(a1 + 136) = v12;
    v13 = v7;
    v14 = v10;
    v15 = v11;
    v16 = v12;
  }

  else
  {
    v17 = *(v8 + 1);
    *(a1 + 112) = *v8;
    *(a1 + 128) = v17;
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithCopy for MenuSliderStepButton(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];
  v4 = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  v5 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v5;

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = a2[11];

  *(a1 + 96) = a2[12];

  v6 = (a1 + 112);
  v7 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  v9 = a2 + 14;
  v8 = a2[14];
  if (v7)
  {
    if (v8)
    {
      *(a1 + 112) = v8;
      v10 = v8;

      v11 = *(a1 + 120);
      v12 = a2[15];
      *(a1 + 120) = v12;
      v13 = v12;

      v14 = *(a1 + 128);
      v15 = a2[16];
      *(a1 + 128) = v15;
      v16 = v15;

      v17 = *(a1 + 136);
      v18 = a2[17];
      *(a1 + 136) = v18;
      v19 = v18;
    }

    else
    {
      outlined destroy of AccessibilityBoundedNumber(a1 + 112);
      v27 = *(a2 + 8);
      *v6 = *v9;
      *(a1 + 128) = v27;
    }
  }

  else if (v8)
  {
    *(a1 + 112) = v8;
    v20 = a2[15];
    *(a1 + 120) = v20;
    v21 = a2[16];
    *(a1 + 128) = v21;
    v22 = a2[17];
    *(a1 + 136) = v22;
    v23 = v8;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  else
  {
    v28 = *(a2 + 8);
    *v6 = *v9;
    *(a1 + 128) = v28;
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for MenuSliderStepButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);

  v6 = *(a2 + 112);
  v7 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  if (!v7)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    outlined destroy of AccessibilityBoundedNumber(a1 + 112);
LABEL_5:
    v11 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v11;
    goto LABEL_6;
  }

  *(a1 + 112) = v6;

  v8 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  v10 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);

LABEL_6:
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for MenuSliderStepButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t storeEnumTagSinglePayload for MenuSliderStepButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>(255);
    type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>)
  {
    type metadata accessor for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>(255);
    type metadata accessor for ControlGroupStyleModifier<CompactMenuControlGroupStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>);
    }
  }
}

void type metadata accessor for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>)
  {
    type metadata accessor for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label> and conformance LabeledControlGroupContent<A, B>, type metadata accessor for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>, protocol conformance descriptor for LabeledControlGroupContent<A, B>);
    v6 = type metadata accessor for ControlGroup(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>)
  {
    type metadata accessor for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>(255);
    v5[0] = v2;
    v5[1] = &type metadata for SliderStyleConfiguration.Label;
    v5[2] = lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>, type metadata accessor for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, MEMORY[0x1E6981F48]);
    v5[3] = &protocol witness table for SliderStyleConfiguration.Label;
    v3 = type metadata accessor for LabeledControlGroupContent(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>)
  {
    type metadata accessor for (MenuSliderStepButton, MenuSliderStepButton)();
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>);
    }
  }
}

void type metadata accessor for (MenuSliderStepButton, MenuSliderStepButton)()
{
  if (!lazy cache variable for type metadata for (MenuSliderStepButton, MenuSliderStepButton))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (MenuSliderStepButton, MenuSliderStepButton));
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for ControlGroupStyleModifier<CompactMenuControlGroupStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ControlGroupStyleModifier<CompactMenuControlGroupStyle>)
  {
    v2 = lazy protocol witness table accessor for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle();
    v4 = type metadata accessor for ControlGroupStyleModifier(a1, &type metadata for CompactMenuControlGroupStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ControlGroupStyleModifier<CompactMenuControlGroupStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle;
  if (!lazy protocol witness table cache variable for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CompactMenuControlGroupStyle, &type metadata for CompactMenuControlGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>> and conformance ControlGroup<A>, type metadata accessor for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, protocol conformance descriptor for ControlGroup<A>);
    v5[1] = &protocol witness table for ControlGroupStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>)
  {
    type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(255, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, &type metadata for SliderStyleConfiguration.MaximumValueLabel);
    type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(255, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>, &type metadata for SliderStyleConfiguration.MinimumValueLabel);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Label<Text, Image>();
    v4 = type metadata accessor for _ConditionalContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for Button<<<opaque return type of MappedViewElement.view>>.0>(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for Button<<<opaque return type of MappedViewElement.view>>.0>)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(255, a2);
    v4 = v3;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7 = type metadata accessor for Button(a1, v4, OpaqueTypeConformance2, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for Button<<<opaque return type of MappedViewElement.view>>.0>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, &type metadata for SliderStyleConfiguration.MaximumValueLabel, &protocol witness table for SliderStyleConfiguration.MaximumValueLabel);
    v5[1] = lazy protocol witness table accessor for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>, &type metadata for SliderStyleConfiguration.MinimumValueLabel, &protocol witness table for SliderStyleConfiguration.MinimumValueLabel);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(255, a2, a3);
    v8 = v7;
    v9[0] = a4;
    v9[1] = lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>, protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of MappedViewElement.view>>.0> and conformance Button<A>, type metadata accessor for Button<<<opaque return type of MappedViewElement.view>>.0>, protocol conformance descriptor for Button<A>);
    v5[1] = &protocol witness table for IgnoreViewRespondersModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>.Storage(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{

  v1 = *(v0 + 128);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in MenuSliderStepButton.body.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);
  v3 = v2(1);
  v1(v3);
  return v2(0);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t MultiDatePicker.$selection.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MultiDatePicker.init(selection:minimumDate:maximumDate:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  v13 = type metadata accessor for MultiDatePicker(0, a7, a9, a4);
  outlined init with copy of Date?(a4, a8 + *(v13 + 36));
  outlined init with copy of Date?(a5, a8 + *(v13 + 40));

  a6(v14);

  outlined destroy of Date?(a5);

  return outlined destroy of Date?(a4);
}

uint64_t MultiDatePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = MultiDatePicker.$selection.getter();
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 36);
  v11 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  outlined init with copy of Date?(v2 + v10, a2 + *(v11 + 24));
  result = outlined init with copy of Date?(v2 + *(a1 + 40), a2 + *(v11 + 28));
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  return result;
}

uint64_t MultiDatePicker.init(selection:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v20(v15, 1, 1, v19);
  return MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(a1, a2, a3, v18, v15, v23, v25, a8, a7);
}

uint64_t MultiDatePicker.init(selection:in:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v27 = a8;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v25 = a2;
  v26 = a3;
  v23 = a9;
  v24 = a1;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(v15, a4, v16);
  v19 = *(v17 + 56);
  v19(v15, 0, 1, v16);
  v20 = MEMORY[0x1E69E66A8];
  type metadata accessor for Range<Date>(0, &lazy cache variable for type metadata for Range<Date>, MEMORY[0x1E69E66A8]);
  v18(v12, a4 + *(v21 + 36), v16);
  v19(v12, 0, 1, v16);
  MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(v24, v25, v26, v15, v12, v28, v30, v23, v27);
  return outlined destroy of Range<Date>(a4, &lazy cache variable for type metadata for Range<Date>, v20);
}

{
  v24 = a8;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a4, v20);
  v22 = *(v21 + 56);
  v22(v19, 0, 1, v20);
  v22(v16, 1, 1, v20);
  MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(a1, a2, a3, v19, v16, v25, v27, a9, v24);
  return outlined destroy of Range<Date>(a4, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
}

{
  v25 = a8;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v24 = a3;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v18, 1, 1, v19);
  (*(v20 + 16))(v15, a4, v19);
  v21(v15, 0, 1, v19);
  MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(a1, a2, v24, v18, v15, v26, v28, a9, v25);
  return outlined destroy of Range<Date>(a4, &lazy cache variable for type metadata for PartialRangeUpTo<Date>, MEMORY[0x1E69E6D20]);
}

uint64_t outlined destroy of Range<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  type metadata accessor for Range<Date>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Range<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Date and conformance Date();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t MultiDatePicker<>.init(_:selection:)@<X0>(uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v36 = a4;
  v35 = a3;
  v34 = a2;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v14, 1, 1, v18);
  *a8 = a5;
  a8[1] = a6;
  a8[2] = a7;
  type metadata accessor for MultiDatePicker<Text>(0, v20, v21, v22);
  v24 = v23;
  outlined init with copy of Date?(v17, a8 + *(v23 + 36));
  outlined init with copy of Date?(v14, a8 + *(v24 + 40));
  v25 = a8 + *(v24 + 44);
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  outlined destroy of Date?(v14);
  result = outlined destroy of Date?(v17);
  *v25 = v26;
  *(v25 + 1) = v28;
  v25[16] = v30 & 1;
  *(v25 + 3) = v32;
  return result;
}

void type metadata accessor for MultiDatePicker<Text>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for MultiDatePicker<Text>)
  {
    v4 = type metadata accessor for MultiDatePicker(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for MultiDatePicker<Text>);
    }
  }
}

uint64_t MultiDatePicker<>.init(_:selection:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v43 = a4;
  v42 = a3;
  v40 = a1;
  v41 = a2;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(v16, a8, v17);
  v20 = *(v18 + 56);
  v20(v16, 0, 1, v17);
  v21 = MEMORY[0x1E69E66A8];
  type metadata accessor for Range<Date>(0, &lazy cache variable for type metadata for Range<Date>, MEMORY[0x1E69E66A8]);
  v19(v13, a8 + *(v22 + 36), v17);
  v20(v13, 0, 1, v17);
  v23 = v38;
  *a9 = v37;
  a9[1] = v23;
  a9[2] = v39;
  type metadata accessor for MultiDatePicker<Text>(0, v24, v25, v26);
  v28 = v27;
  outlined init with copy of Date?(v16, a9 + *(v27 + 36));
  outlined init with copy of Date?(v13, a9 + *(v28 + 40));
  v29 = a9 + *(v28 + 44);
  v30 = Text.init(_:tableName:bundle:comment:)();
  v32 = v31;
  LOBYTE(a9) = v33;
  v35 = v34;
  outlined destroy of Range<Date>(a8, &lazy cache variable for type metadata for Range<Date>, v21);
  outlined destroy of Date?(v13);
  result = outlined destroy of Date?(v16);
  *v29 = v30;
  *(v29 + 1) = v32;
  v29[16] = a9 & 1;
  *(v29 + 3) = v35;
  return result;
}

uint64_t MultiDatePicker<>.init(_:selection:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v38 = a4;
  v37 = a3;
  v36[1] = a1;
  v36[2] = a2;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v36 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a8, v20);
  v22 = *(v21 + 56);
  v22(v19, 0, 1, v20);
  v22(v16, 1, 1, v20);
  *a9 = a5;
  a9[1] = a6;
  a9[2] = a7;
  type metadata accessor for MultiDatePicker<Text>(0, v23, v24, v25);
  v27 = v26;
  outlined init with copy of Date?(v19, a9 + *(v26 + 36));
  outlined init with copy of Date?(v16, a9 + *(v27 + 40));
  v28 = a9 + *(v27 + 44);
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  LOBYTE(v21) = v32;
  v34 = v33;
  outlined destroy of Range<Date>(a8, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
  outlined destroy of Date?(v16);
  result = outlined destroy of Date?(v19);
  *v28 = v29;
  *(v28 + 1) = v31;
  v28[16] = v21 & 1;
  *(v28 + 3) = v34;
  return result;
}

{
  v35[0] = a7;
  v35[1] = a1;
  v37 = a4;
  v36 = a3;
  v35[2] = a2;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v18, 1, 1, v19);
  (*(v20 + 16))(v15, a8, v19);
  v21(v15, 0, 1, v19);
  *a9 = a5;
  a9[1] = a6;
  a9[2] = v35[0];
  type metadata accessor for MultiDatePicker<Text>(0, v22, v23, v24);
  v26 = v25;
  outlined init with copy of Date?(v18, a9 + *(v25 + 36));
  outlined init with copy of Date?(v15, a9 + *(v26 + 40));
  v27 = a9 + *(v26 + 44);
  v28 = Text.init(_:tableName:bundle:comment:)();
  v30 = v29;
  LOBYTE(v20) = v31;
  v33 = v32;
  outlined destroy of Range<Date>(a8, &lazy cache variable for type metadata for PartialRangeUpTo<Date>, MEMORY[0x1E69E6D20]);
  outlined destroy of Date?(v15);
  result = outlined destroy of Date?(v18);
  *v27 = v28;
  *(v27 + 1) = v30;
  v27[16] = v20 & 1;
  *(v27 + 3) = v33;
  return result;
}

uint64_t MultiDatePicker<>.init<A>(_:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v26[0] = a4;
  v26[1] = a6;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v14, 1, 1, v18);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = v26[0];
  type metadata accessor for MultiDatePicker<Text>(0, v20, v21, v22);
  v24 = v23;
  outlined init with copy of Date?(v17, a7 + *(v23 + 36));
  outlined init with copy of Date?(v14, a7 + *(v24 + 40));
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(a1, a7 + *(v24 + 44));
  outlined destroy of Date?(v14);
  outlined destroy of Date?(v17);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t MultiDatePicker<>.init<A>(_:selection:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v35 = a6;
  v36 = a7;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v34 = a1;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(v15, a5, v16);
  v19 = *(v17 + 56);
  v19(v15, 0, 1, v16);
  v20 = MEMORY[0x1E69E66A8];
  type metadata accessor for Range<Date>(0, &lazy cache variable for type metadata for Range<Date>, MEMORY[0x1E69E66A8]);
  v18(v12, a5 + *(v21 + 36), v16);
  v19(v12, 0, 1, v16);
  v22 = v32;
  *a8 = v31;
  a8[1] = v22;
  a8[2] = v33;
  type metadata accessor for MultiDatePicker<Text>(0, v23, v24, v25);
  v27 = v26;
  outlined init with copy of Date?(v15, a8 + *(v26 + 36));
  outlined init with copy of Date?(v12, a8 + *(v27 + 40));
  v28 = v34;
  v29 = v35;
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(v34, a8 + *(v27 + 44));
  outlined destroy of Range<Date>(a5, &lazy cache variable for type metadata for Range<Date>, v20);
  outlined destroy of Date?(v12);
  outlined destroy of Date?(v15);
  return (*(*(v29 - 8) + 8))(v28, v29);
}

uint64_t MultiDatePicker<>.init<A>(_:selection:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v31 = a1;
  v32 = a7;
  v30 = a4;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a5, v19);
  v21 = *(v20 + 56);
  v21(v18, 0, 1, v19);
  v21(v15, 1, 1, v19);
  *a8 = a2;
  a8[1] = a3;
  a8[2] = v30;
  type metadata accessor for MultiDatePicker<Text>(0, v22, v23, v24);
  v26 = v25;
  outlined init with copy of Date?(v18, a8 + *(v25 + 36));
  outlined init with copy of Date?(v15, a8 + *(v26 + 40));
  v27 = v31;
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(v31, a8 + *(v26 + 44));
  outlined destroy of Range<Date>(a5, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
  outlined destroy of Date?(v15);
  outlined destroy of Date?(v18);
  return (*(*(a6 - 8) + 8))(v27, a6);
}

{
  v32 = a1;
  v33 = a7;
  v30 = a3;
  v31 = a4;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v17, 1, 1, v18);
  (*(v19 + 16))(v14, a5, v18);
  v20(v14, 0, 1, v18);
  v22 = v30;
  v21 = v31;
  *a8 = a2;
  a8[1] = v22;
  a8[2] = v21;
  type metadata accessor for MultiDatePicker<Text>(0, v23, v24, v25);
  v27 = v26;
  outlined init with copy of Date?(v17, a8 + *(v26 + 36));
  outlined init with copy of Date?(v14, a8 + *(v27 + 40));
  v28 = v32;
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(v32, a8 + *(v27 + 44));
  outlined destroy of Range<Date>(a5, &lazy cache variable for type metadata for PartialRangeUpTo<Date>, MEMORY[0x1E69E6D20]);
  outlined destroy of Date?(v14);
  outlined destroy of Date?(v17);
  return (*(*(a6 - 8) + 8))(v28, a6);
}

uint64_t closure #1 in MultiDatePicker<>.init<A>(_:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

void type metadata completion function for MultiDatePicker(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MultiDatePicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  if (*(v7 + 84))
  {
    v9 = *(v7 + 64);
  }

  else
  {
    v9 = *(v7 + 64) + 1;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = ((v9 + v12 + ((v9 + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v12) + *(v11 + 64);
  v14 = (*(v11 + 80) | *(v7 + 80)) & 0x100000;
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v8) > 7 || v14 != 0 || v13 > 0x18)
  {
    a1 = (v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
  }

  else
  {
    v28 = v9 + v8;
    v29 = v11;
    v30 = v10;
    v31 = v6;
    v18 = ~v8;
    v19 = a2[2];
    a1[1] = a2[1];
    a1[2] = v19;
    __dst = ((a1 + v8 + 24) & ~v8);
    v20 = ((a2 + v8 + 24) & ~v8);
    v21 = *(v7 + 48);

    v27 = v21;
    if (v21(v20, 1, v31))
    {
      memcpy(__dst, v20, v9);
    }

    else
    {
      (*(v7 + 16))(__dst, v20, v31);
      (*(v7 + 56))(__dst, 0, 1, v31);
    }

    v23 = ((__dst + v28) & v18);
    v24 = ((v20 + v28) & v18);
    if (v27(v24, 1, v31))
    {
      memcpy(v23, v24, v9);
    }

    else
    {
      (*(v7 + 16))(v23, v24, v31);
      (*(v7 + 56))(v23, 0, 1, v31);
    }

    (*(v29 + 16))((v23 + v9 + v12) & ~v12, (v24 + v9 + v12) & ~v12, v30);
  }

  return a1;
}

uint64_t destroy for MultiDatePicker(uint64_t a1, uint64_t a2)
{

  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + v6 + 24) & ~v6;
  v8 = *(v5 + 48);
  if (!v8(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = (v7 + v6 + v9) & ~v6;
  if (!v8(v10, 1, v4))
  {
    (*(v5 + 8))(v10, v4);
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t *initializeWithCopy for MultiDatePicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v20 = a1;
  v21 = ~v8;
  v9 = ((a1 + v8 + 24) & ~v8);
  v10 = ((a2 + v8 + 24) & ~v8);
  v11 = *(v7 + 48);

  if (v11(v10, 1, v6))
  {
    v12 = *(v7 + 84);
    v13 = *(v7 + 64);
    if (v12)
    {
      v14 = *(v7 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v9, v10, v14);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    (*(v7 + 56))(v9, 0, 1, v6);
    v12 = *(v7 + 84);
    v13 = *(v7 + 64);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((v9 + v8 + v15) & v21);
  v17 = ((v10 + v8 + v15) & v21);
  if (v11(v17, 1, v6))
  {
    memcpy(v16, v17, v15);
  }

  else
  {
    (*(v7 + 16))(v16, v17, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
  }

  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 16))((v16 + v15 + *(v18 + 80)) & ~*(v18 + 80), (v17 + v15 + *(v18 + 80)) & ~*(v18 + 80));
  return v20;
}

uint64_t *assignWithCopy for MultiDatePicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((a1 + v7 + 24) & ~v7);
  v10 = ((a2 + v7 + 24) & ~v7);
  v11 = *(v6 + 48);
  v12 = v11(v9, 1, v5);
  v13 = v11(v10, 1, v5);
  if (v12)
  {
    if (!v13)
    {
      (*(v6 + 16))(v9, v10, v5);
      (*(v6 + 56))(v9, 0, 1, v5);
      goto LABEL_12;
    }

    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v6 + 24))(v9, v10, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, v5);
    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v6 + 84))
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = *(v6 + 64) + 1;
  }

  v18 = ((v9 + v7 + v17) & v8);
  v19 = ((v10 + v7 + v17) & v8);
  v20 = v11(v18, 1, v5);
  v21 = v11(v19, 1, v5);
  if (!v20)
  {
    if (!v21)
    {
      (*(v6 + 24))(v18, v19, v5);
      goto LABEL_21;
    }

    (*(v6 + 8))(v18, v5);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy(v18, v19, v17);
    goto LABEL_21;
  }

  (*(v6 + 16))(v18, v19, v5);
  (*(v6 + 56))(v18, 0, 1, v5);
LABEL_21:
  v22 = *(*(a3 + 16) - 8);
  (*(v22 + 24))((v18 + v17 + *(v22 + 80)) & ~*(v22 + 80), (v19 + v17 + *(v22 + 80)) & ~*(v22 + 80));
  return a1;
}

uint64_t initializeWithTake for MultiDatePicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v21 = a1;
  v8 = ~v7;
  v9 = ((v7 + 24 + a1) & ~v7);
  v10 = ((v7 + 24 + a2) & ~v7);
  v11 = *(v6 + 48);
  if (v11(v10, 1, v5))
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
    if (v12)
    {
      v14 = *(v6 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v9, v10, v14);
  }

  else
  {
    (*(v6 + 32))(v9, v10, v5);
    (*(v6 + 56))(v9, 0, 1, v5);
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((v9 + v7 + v15) & v8);
  v17 = ((v10 + v7 + v15) & v8);
  if (v11(v17, 1, v5))
  {
    memcpy(v16, v17, v15);
  }

  else
  {
    (*(v6 + 32))(v16, v17, v5);
    (*(v6 + 56))(v16, 0, 1, v5);
  }

  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 32))((v16 + v15 + *(v18 + 80)) & ~*(v18 + 80), (v17 + v15 + *(v18 + 80)) & ~*(v18 + 80));
  return v21;
}

void *assignWithTake for MultiDatePicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((a1 + v7 + 24) & ~v7);
  v10 = ((a2 + v7 + 24) & ~v7);
  v11 = *(v6 + 48);
  v12 = v11(v9, 1, v5);
  v13 = v11(v10, 1, v5);
  if (v12)
  {
    if (!v13)
    {
      (*(v6 + 32))(v9, v10, v5);
      (*(v6 + 56))(v9, 0, 1, v5);
      goto LABEL_12;
    }

    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v6 + 40))(v9, v10, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, v5);
    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v6 + 84))
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = *(v6 + 64) + 1;
  }

  v18 = ((v9 + v7 + v17) & v8);
  v19 = ((v10 + v7 + v17) & v8);
  v20 = v11(v18, 1, v5);
  v21 = v11(v19, 1, v5);
  if (!v20)
  {
    if (!v21)
    {
      (*(v6 + 40))(v18, v19, v5);
      goto LABEL_21;
    }

    (*(v6 + 8))(v18, v5);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy(v18, v19, v17);
    goto LABEL_21;
  }

  (*(v6 + 32))(v18, v19, v5);
  (*(v6 + 56))(v18, 0, 1, v5);
LABEL_21:
  v22 = *(*(a3 + 16) - 8);
  (*(v22 + 40))((v18 + v17 + *(v22 + 80)) & ~*(v22 + 80), (v19 + v17 + *(v22 + 80)) & ~*(v22 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for MultiDatePicker(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + v12;
  v19 = v17 + v14;
  if (a2 > v16)
  {
    v20 = ((v19 + ((v18 + ((v12 + 24) & ~v12)) & ~v12)) & ~v14) + *(v10 + 64);
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_16;
    }

    v23 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 <= 0xFF)
      {
        if (v23 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_36;
        }

LABEL_23:
        v24 = (v22 - 1) << v21;
        if (v20 > 3)
        {
          v24 = 0;
        }

        if (v20)
        {
          if (v20 <= 3)
          {
            v25 = ((v19 + ((v18 + ((v12 + 24) & ~v12)) & ~v12)) & ~v14) + *(v10 + 64);
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

        else
        {
          v26 = 0;
        }

        return v16 + (v26 | v24) + 1;
      }

      v22 = *(a1 + v20);
      if (*(a1 + v20))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v30 = (*(v7 + 48))((a1 + v12 + 24) & ~v12);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v10 + 48);

  return v29((v19 + ((v18 + ((a1 + v12 + 24) & ~v12)) & ~v12)) & ~v14, v11);
}

void storeEnumTagSinglePayload for MultiDatePicker(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for Date() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v11)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = v20 + v15;
  v22 = v20 + v17;
  v23 = ((v20 + v17 + ((v20 + v15 + ((v15 + 24) & ~v15)) & ~v15)) & ~v17) + *(v13 + 64);
  if (a3 <= v19)
  {
    goto LABEL_24;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v19 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v8 = 4;
      if (v19 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

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
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v19 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v19 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *(a1 + v23) = 0;
    }

    else if (v8)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v18 & 0x80000000) != 0)
    {
      if (v12 == v19)
      {
        if (v11 >= 2)
        {
          v29 = *(v10 + 56);

          v29((a1 + v15 + 24) & ~v15, (a2 + 1));
        }
      }

      else
      {
        v30 = *(v13 + 56);

        v30((v22 + ((v21 + ((a1 + v15 + 24) & ~v15)) & ~v15)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v26 = ~v19 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v26;
    v27 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v28;
    *(a1 + 2) = BYTE2(v28);
    goto LABEL_56;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *(a1 + v23) = v27;
      }

      else
      {
        *(a1 + v23) = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    *(a1 + v23) = v27;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI7EventIDV_SD4KeysVyAfD0D4Type_p_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type EventID and conformance EventID();
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E69819B0], v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = specialized Set._Variant.insert(_:)(v13, *v12, v12[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI15NavigationStateV7ListKeyV_SD4KeysVyAhD0dfE0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey();
  result = MEMORY[0x18D00D140](v2, &type metadata for NavigationState.ListKey, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v16 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(a1 + 48) + 48 * (v12 | (v11 << 6)));
      v14 = v13[1];
      v17[0] = *v13;
      v17[1] = v14;
      v17[2] = v13[2];
      result = specialized Set._Variant.insert(_:)(v15, v17);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v16;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI9NamespaceV2IDV_SD4KeysVyAhD11TransactionV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID();
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E6981EA0], v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = specialized Set._Variant.insert(_:)(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double Scene.onConnectionOptionPayload<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ConnectionOptionActionBox(0, a5, a7, a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a6;
  v12[4] = v11;

  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:), v12, a4, a6);

  return result;
}

char **closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:)(char **result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(*result + 2);
  if (v5)
  {
    v7 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    v8 = 0;
    v9 = (v4 + 32);
    do
    {
      if (v8 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v8;
      result = closure #1 in closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:)(v9, a2);
      v9 += 568;
    }

    while (v5 != v8);
    *v7 = v4;
  }

  return result;
}

uint64_t closure #1 in closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 544);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v22 = *(v3 + 96);
  *(v4 + 2) = v6 + 1;
  *&v4[16 * v6 + 32] = v22;
  *(a1 + 544) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 552);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_10;
    }

    v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    *(a1 + 552) = v8;
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v21 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v21;
  *(a1 + 552) = v8;
  if ((v15 & 1) == 0)
  {
LABEL_11:
    v17 = v9;
    specialized _NativeDictionary._insert(at:key:value:)(v9, v22, MEMORY[0x1E69E7CC0], v8);
    v9 = v17;
  }

LABEL_12:
  v18 = (v8[7] + 8 * v9);

  MEMORY[0x18D00CC30](v19);
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_15:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

double View.onConnectionOptionPayload<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ConnectionOptionActionBox(0, a5, a7, a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a6;
  v13[4] = a1;
  v13[5] = v12;

  View.transformPreference<A>(_:_:)();

  return result;
}

uint64_t closure #1 in View.onConnectionOptionPayload<A>(_:perform:)(char **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v5 + 104);
  *(v6 + 2) = v8 + 1;
  v10 = &v6[16 * v8];
  *(v10 + 4) = a2;
  *(v10 + 5) = v9;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a1[1];
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 2);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  if (*(v12 + 3) < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    a1[1] = v12;
    if (v19)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v25 = v13;
  specialized _NativeDictionary.copy()();
  v13 = v25;
  a1[1] = v12;
  if ((v19 & 1) == 0)
  {
LABEL_11:
    v21 = v13;
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, MEMORY[0x1E69E7CC0], v12);
    v13 = v21;
  }

LABEL_12:
  v22 = (*(v12 + 7) + 8 * v13);

  MEMORY[0x18D00CC30](v23);
  if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_15:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t ConnectionOptionPayloadStorage.merge(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 2);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v28;
    v9 = (v6 + 32);
    v10 = *(v28 + 16);
    do
    {
      v11 = *v9;
      v28 = v8;
      v12 = *(v8 + 24);
      if (v10 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + 8 * v10 + 32) = v11;
      v9 += 2;
      ++v10;
      --v7;
    }

    while (v7);
  }

  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(v8);

  v28 = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 32;
    do
    {
      v26 = *(v16 + 16 * v15);
      v17 = v28;
      if (*(v28 + 16) && (v18 = MEMORY[0x18D00F6C0](*(v28 + 40), v26), v19 = -1 << *(v17 + 32), v20 = v18 & ~v19, ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (*(*(v17 + 48) + 8 * v20) != v26)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v23 >= v22 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
        }

        *(v6 + 2) = v23 + 1;
        *&v6[16 * v23 + 32] = v26;
        *v3 = v6;
        specialized Set._Variant.insert(_:)(&v27, v26);
      }

      ++v15;
    }

    while (v15 != v14);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v3[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v27);

  v3[1] = v27;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ConnectionOptionPayloadStoragePreferenceKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(v3);
  ConnectionOptionPayloadStorage.merge(_:)(v3[0], v3[1]);
}

void ConnectionOptionActionBox.dispatch<A>(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v7;
  if (*(*(a2 - 8) + 64) == v10)
  {
    (*(v6 + 16))(&v12 - v7, a1, AssociatedTypeWitness, v8);
    v11 = *(v2 + 16);

    v11(v9);

    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey>);
    }
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  result = MEMORY[0x18D00D140](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  result = MEMORY[0x18D00D140](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo42UITextFormattingViewControllerComponentKeya_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for UITextFormattingViewControllerComponentKey(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey, protocol conformance descriptor for UITextFormattingViewControllerComponentKey);
  result = MEMORY[0x18D00D140](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI5ColorV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Color and conformance Color();
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E69815C0], v3);
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo7UIColorCSg_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for UIColor?(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type UIColor? and conformance <A> A?();
  result = MEMORY[0x18D00D140](v2, v4, v5);
  v11 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      specialized Set._Variant.insert(_:)(&v10, v8);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double View.documentBrowserContextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = type metadata accessor for DocumentBrowserContextMenuModifier(0, a4, a6, a4);

  MEMORY[0x18D00A570](v10, a3, v8, a5);

  return result;
}

double Scene.documentBrowserContextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.documentBrowserContextMenu<A>(_:), v12, a3, a5);

  return result;
}

char **closure #1 in Scene.documentBrowserContextMenu<A>(_:)(char **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *result;
  v8 = *(*result + 2);
  if (v8)
  {
    v17 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v15 = 0;
    v16 = (v7 + 32);
    do
    {
      if (v15 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v15;
      result = closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:)(v16, a2, a3, a4, a5, a6, a7);
      v16 += 568;
    }

    while (v8 != v15);
    *v17 = v7;
  }

  return result;
}

uint64_t closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of SceneList.Item.Value(a1, &v42);
  if (v52 != 7)
  {
    return outlined destroy of SceneList.Item.Value(&v42);
  }

  v59 = v42;
  v27 = v44;
  v60 = v43;
  v55 = v48;
  v56 = v49;
  v57 = v50;
  v14 = v45;
  v58 = v51;
  v53 = v46;
  v54 = v47;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a2;
  v15[7] = a3;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27, v14);
  outlined destroy of SceneList.Item.Value(a1);
  v29 = v59;
  *&v31[88] = v58;
  v16 = v58;
  *&v30 = v60;
  *(&v30 + 1) = partial apply for closure #1 in closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:);
  *v31 = v15;
  *&v31[8] = v53;
  v17 = v53;
  v18 = v54;
  *&v31[24] = v54;
  *&v31[56] = v56;
  v20 = v55;
  v19 = v56;
  *&v31[40] = v55;
  v21 = v57;
  *&v31[72] = v57;
  v22 = v30;
  *a1 = v59;
  *(a1 + 16) = v22;
  v23 = *&v31[80];
  *(a1 + 96) = *&v31[64];
  *(a1 + 112) = v23;
  v24 = *&v31[48];
  *(a1 + 64) = *&v31[32];
  *(a1 + 80) = v24;
  v25 = *&v31[16];
  *(a1 + 32) = *v31;
  *(a1 + 48) = v25;
  v32 = v59;
  v37 = v18;
  v36 = v17;
  *(a1 + 128) = 7;
  v33 = v60;
  v34 = partial apply for closure #1 in closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:);
  v35 = v15;
  v41 = v16;
  v40 = v21;
  v39 = v19;
  v38 = v20;
  outlined init with copy of DocumentIntroductionConfiguration(&v29, v28);
  return outlined destroy of DocumentIntroductionConfiguration(&v32);
}

uint64_t closure #1 in closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8(v7);
  return AnyView.init<A>(_:)();
}

uint64_t static DocumentBrowserContextMenuModifier._makeInputs(modifier:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v37[0] = *a2;
  v37[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v37[2] = a2[2];
  v9 = *a1;
  v23 = v8;
  v24 = v7;
  v25 = a2[2];
  outlined init with copy of _GraphInputs(v37, v22);
  _ViewInputs.init(withoutGeometry:)();
  _ViewInputs.addPlatformItemKey()();
  v21 = v9;
  type metadata accessor for DocumentBrowserContextMenuModifier(255, a3, a4, v10);
  type metadata accessor for _GraphValue();
  v11 = _GraphValue.value.getter();
  v38[2] = v33;
  v38[3] = v34;
  v38[4] = v35;
  v39 = v36;
  v38[0] = v31;
  v38[1] = v32;
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
  }

  *&v30[36] = v33;
  *&v30[52] = v34;
  *&v30[68] = v35;
  *&v30[4] = v31;
  *&v30[20] = v32;
  *&v22[44] = *&v30[32];
  *&v22[60] = *&v30[48];
  *&v22[76] = *&v30[64];
  *&v22[28] = *&v30[16];
  *&v30[84] = v36;
  *v22 = v12;
  *&v22[8] = v11;
  *&v22[92] = *&v30[80];
  *&v22[12] = *v30;
  MEMORY[0x1EEE9AC00](v12);
  v14 = type metadata accessor for DocumentBrowserContextMenuModifier.Child(0, a3, a4, v13);
  v19[2] = v14;
  v19[3] = swift_getWitnessTable(protocol conformance descriptor for DocumentBrowserContextMenuModifier<A>.Child, v14);
  outlined init with copy of _ViewInputs(v38, &v23);
  _sSay10Foundation3URLVGSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_26, v19, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v27 = *&v22[64];
  v28 = *&v22[80];
  v29 = *&v22[96];
  v23 = *v22;
  v24 = *&v22[16];
  v25 = *&v22[32];
  v26 = *&v22[48];
  (*(*(v14 - 8) + 8))(&v23, v14);
  v17 = v20;
  lazy protocol witness table accessor for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey();
  PropertyList.subscript.getter();
  v20 = v17;
  PropertyList.subscript.setter();
  *&v22[32] = v33;
  *&v22[48] = v34;
  *&v22[64] = v35;
  *&v22[80] = v36;
  *v22 = v31;
  *&v22[16] = v32;
  return outlined destroy of _ViewInputs(v22);
}

uint64_t (*DocumentBrowserContextMenuModifier.Child.value.getter(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16 = *(v1 + 24);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[2];
  *(v6 + 80) = v1[3];
  *(v6 + 96) = v8;
  *(v6 + 112) = v9;
  v11 = *v1;
  v12 = v1[1];
  *(v6 + 16) = v7;
  *(v6 + 32) = v11;
  *(v6 + 128) = *(v1 + 24);
  *(v6 + 48) = v12;
  *(v6 + 64) = v10;
  (*(*(a1 - 8) + 16))(v14, v15, a1);
  return partial apply for closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter;
}

uint64_t closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter(a2, a1, a3, a4, a5);
  AGSubgraphSetCurrent();

  return AGGraphSetUpdate();
}

double closure #1 in closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12[5];
  v46 = v12[4];
  v47 = v13;
  v48 = *(v12 + 24);
  v14 = v12[1];
  v42 = *v12;
  v43 = v14;
  v15 = v12[3];
  v44 = v12[2];
  v45 = v15;
  v18 = type metadata accessor for DocumentBrowserContextMenuModifier.Child(0, v16, v17, v17);
  v22 = specialized DocumentBrowserContextMenuModifier.Child.modifier.getter(v18, v19, v20, v21);

  v22(a2);

  v35[2] = a3;
  v23 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in Attribute.init(value:), v35, a3, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  (*(v9 + 8))(v11, a3);
  v25 = *(a1 + 64);
  v26 = *(a1 + 32);
  v50 = *(a1 + 48);
  v51 = v25;
  v27 = *(a1 + 64);
  v52 = *(a1 + 80);
  v28 = *(a1 + 32);
  v49[0] = *(a1 + 16);
  v49[1] = v28;
  v38 = v50;
  v39 = v27;
  v40 = *(a1 + 80);
  v53 = *(a1 + 96);
  v41 = *(a1 + 96);
  v36 = v49[0];
  v37 = v26;
  outlined init with copy of _ViewInputs(v49, &v42);
  _ViewInputs.makePlatformItemsGenerator<A, B>(strategy:source:)();
  v44 = v38;
  v45 = v39;
  v46 = v40;
  LODWORD(v47) = v41;
  v42 = v36;
  v43 = v37;
  outlined destroy of _ViewInputs(&v42);
  Value = AGGraphGetValue();
  v30 = *Value;
  v31 = *(Value + 8);
  v32 = *(Value + 16);
  *a5 = v30;
  *(a5 + 8) = v31;
  *(a5 + 16) = v32;

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DocumentBrowserContextMenuModifier<A>.Child@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  DocumentBrowserContextMenuModifier.Child.value.getter(a1);
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter;
  *(result + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [URL]?) -> (@out PlatformItems);
  a2[1] = result;
  return result;
}

void _sSay10Foundation3URLVGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.DocumentBrowserContextMenuStorageKey, &type metadata for _GraphInputs.DocumentBrowserContextMenuStorageKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey);
  }

  return result;
}

uint64_t *assignWithCopy for CommandAccumulator(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *initializeBufferWithCopyOfBuffer for CommandOperation(_BYTE *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v20 = *a2;
    *v3 = *a2;
    v3 = (v20 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = &a1[v5];
    v7 = a2 + v5;
    v8 = *(a2 + v5);
    v9 = *(a2 + v5 + 8);
    v10 = *(a2 + v5 + 16);
    outlined copy of Text.Storage(v8, v9, v10);
    *v6 = v8;
    *(v6 + 1) = v9;
    v6[16] = v10;
    *(v6 + 3) = *(v7 + 3);
    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 16);

    v15(&v6[v13], &v7[v13], v14);
    v16 = *(a3 + 24);
    v17 = (v3 + v16);
    v18 = (a2 + v16);
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      v17[1] = v19;
    }

    else
    {
      *v17 = *v18;
    }
  }

  return v3;
}

double destroy for CommandOperation(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  v5 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  if (*(a1 + *(a2 + 24)))
  {
  }

  return result;
}

_BYTE *initializeWithCopy for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = *&a2[v6];
  v10 = *&a2[v6 + 8];
  v11 = a2[v6 + 16];
  outlined copy of Text.Storage(v9, v10, v11);
  *v7 = v9;
  *(v7 + 1) = v10;
  v7[16] = v11;
  *(v7 + 3) = *(v8 + 3);
  v12 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 16);

  v14(&v7[v12], &v8[v12], v13);
  v15 = *(a3 + 24);
  v16 = &a1[v15];
  v17 = &a2[v15];
  if (*v17)
  {
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
  }

  else
  {
    *v16 = *v17;
  }

  return a1;
}

_BYTE *assignWithCopy for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = *&a2[v6];
  v10 = *&a2[v6 + 8];
  v11 = a2[v6 + 16];
  outlined copy of Text.Storage(v9, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 1);
  v14 = v7[16];
  *v7 = v9;
  *(v7 + 1) = v10;
  v7[16] = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(v7 + 3) = *(v8 + 3);

  v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 24))(&v7[v15], &v8[v15], v16);
  v17 = *(a3 + 24);
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *&a1[v17];
  v21 = *v19;
  if (!v20)
  {
    if (v21)
    {
      v23 = v19[1];
      *v18 = v21;
      v18[1] = v23;

      return a1;
    }

LABEL_7:
    *v18 = *v19;
    return a1;
  }

  if (!v21)
  {

    goto LABEL_7;
  }

  v22 = v19[1];
  *v18 = v21;
  v18[1] = v22;

  return a1;
}

_BYTE *initializeWithTake for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = *&a2[v6 + 16];
  *v7 = *&a2[v6];
  *(v7 + 1) = v9;
  v10 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

_BYTE *assignWithTake for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  LOBYTE(v6) = a2[v6 + 16];
  v9 = *v7;
  v10 = *(v7 + 1);
  v11 = v7[16];
  *v7 = *v8;
  v7[16] = v6;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v7 + 3) = *(v8 + 3);

  v12 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 40))(&v7[v12], &v8[v12], v13);
  v14 = *(a3 + 24);
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = *&a1[v14];
  v18 = *v16;
  if (!v17)
  {
    if (v18)
    {
      v20 = v16[1];
      *v15 = v18;
      v15[1] = v20;
      return a1;
    }

LABEL_7:
    *v15 = *v16;
    return a1;
  }

  if (!v18)
  {

    goto LABEL_7;
  }

  v19 = v16[1];
  *v15 = v18;
  v15[1] = v19;

  return a1;
}

double closure #1 in CommandOperation.init<A>(mutation:placement:content:)(unsigned __int8 *a1, void *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v12 = a3;
  v13 = type metadata accessor for CommandGroupPlacement(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  if (v12 == 3)
  {
    v33 = a5;
    _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a4, &v33 - v21, type metadata accessor for CommandGroupPlacement);
    v23 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    _s7SwiftUI21CommandGroupPlacementVWObTm_0(v22, v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26, type metadata accessor for HashableCommandGroupPlacementWrapper);
    *a2 = v23;
    a5 = v33;
    a6 = v34;
  }

  v27 = _ResolvedCommands.subscript.getter(a4);
  if (!v27)
  {
    v27 = AnyView.init<A>(_:)();
    v28 = MEMORY[0x1E69E7CD0];
  }

  v37 = v27;
  v38 = v28;
  CommandAccumulator.visit<A>(_:operation:)(a5, v35, a6, a7);
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a4, v15, type metadata accessor for CommandGroupPlacement);
  v29 = v37;
  v30 = v38;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(v15, v19, type metadata accessor for CommandGroupPlacement);

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v36 = a2[1];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v30, v19, v31);
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v19, type metadata accessor for HashableCommandGroupPlacementWrapper);
  a2[1] = v36;
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v15, type metadata accessor for CommandGroupPlacement);

  return result;
}

double partial apply for closure #1 in CommandOperation.init<A>(mutation:placement:content:)(unsigned __int8 *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CommandGroupPlacement(0) - 8);
  v8 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v9 = *(v2 + 32);
  v10 = v2 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return closure #1 in CommandOperation.init<A>(mutation:placement:content:)(a1, a2, v9, v2 + v8, v10, v5, v6);
}

uint64_t CommandAccumulator.visit<A>(_:operation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v55 = a3;
  v56 = a1;
  v5 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - v8;
  type metadata accessor for PlatformItemListTransformModifier<AllPlatformItemListFlags>(255, v9, v10, v11);
  v12 = type metadata accessor for ModifiedContent();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = &v49 - v14;
  v52 = type metadata accessor for TupleView();
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v49 - v15;
  v16 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v16);
  v50 = (&v49 - v17);
  v49 = type metadata accessor for TupleView();
  MEMORY[0x1EEE9AC00](v49);
  v57 = type metadata accessor for CommandOperation(0);
  v18 = *(v57 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v61 = v12;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a2, &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommandOperation);
  v26 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v27 = swift_allocObject();
  _s7SwiftUI21CommandGroupPlacementVWObTm_0(&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for CommandOperation);
  v63 = v25;
  View.transformPlatformItemList<A>(_:_:)(&type metadata for AllPlatformItemListFlags, partial apply for closure #1 in CommandAccumulator.visit<A>(_:operation:), v27, v55, &type metadata for AllPlatformItemListFlags, v62, &protocol witness table for AllPlatformItemListFlags);

  v28 = *a2;
  if (v28 <= 1)
  {
    v36 = TupleTypeMetadata2;
    v37 = v50;
    v38 = v52;
    v30 = v60;
    if (*a2)
    {
      v44 = *v60;
      v45 = *(v36 + 48);
      v33 = v20;
      v46 = *(v20 + 16);
      v47 = v53;
      v35 = v61;
      v46(v53, v63, v61);
      *&v47[v45] = v44;

      TupleView.init(_:)();
      swift_getWitnessTable(MEMORY[0x1E6981F48], v38);
    }

    else
    {
      v39 = *(v16 + 48);
      *v50 = *v60;
      v33 = v20;
      v40 = *(v20 + 16);
      v35 = v61;
      v40(v37 + v39, v63, v61);

      TupleView.init(_:)();
      swift_getWitnessTable(MEMORY[0x1E6981F48], v49);
    }

    v42 = AnyView.init<A>(_:)();
    goto LABEL_13;
  }

  if (v28 == 2)
  {
    v33 = v20;
    v41 = *(v20 + 16);
    v35 = v61;
    v41(v54, v63, v61);
    v64[0] = v62;
    v64[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    swift_getWitnessTable(MEMORY[0x1E697E858], v35, v64);
    v42 = AnyView.init<A>(_:)();
    v30 = v60;
LABEL_13:
    v31 = v58;
    v29 = v59;
    v32 = v57;
    goto LABEL_14;
  }

  v29 = v59;
  v30 = v60;
  v32 = v57;
  v31 = v58;
  v33 = v20;
  if (v28 == 3)
  {
    v34 = *(v20 + 16);
    v35 = v61;
    v34(v54, v63, v61);
    v65[0] = v62;
    v65[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    swift_getWitnessTable(MEMORY[0x1E697E858], v35, v65);
LABEL_10:
    v42 = AnyView.init<A>(_:)();
LABEL_14:

    *v30 = v42;
    goto LABEL_15;
  }

  v43 = v60[1];
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(&a2[*(v57 + 20)], v58, type metadata accessor for CommandGroupPlacement);
  LOBYTE(v43) = specialized Set.contains(_:)(v31, v43);
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v31, type metadata accessor for HashableCommandGroupPlacementWrapper);
  v35 = v61;
  if ((v43 & 1) == 0)
  {
    (*(v33 + 16))(v54, v63, v61);
    v66[0] = v62;
    v66[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    swift_getWitnessTable(MEMORY[0x1E697E858], v35, v66);
    goto LABEL_10;
  }

LABEL_15:
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(&a2[*(v32 + 20)], v29, type metadata accessor for CommandGroupPlacement);
  specialized Set._Variant.insert(_:)(v31, v29);
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v31, type metadata accessor for HashableCommandGroupPlacementWrapper);
  return (*(v33 + 8))(v63, v35);
}

uint64_t *closure #1 in CommandAccumulator.visit<A>(_:operation:)(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v6 = 0;
    do
    {
      if (v6 >= v2[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v7 = v6 + 1;
      v8 = type metadata accessor for PlatformItemList.Item(0);
      v9 = v2 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6;
      v10 = *(v8 + 112);
      _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v9 + v10, type metadata accessor for CommandOperation?);
      _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a2, v9 + v10, type metadata accessor for CommandOperation);
      v11 = type metadata accessor for CommandOperation(0);
      result = (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
      v6 = v7;
    }

    while (v3 != v7);
    *v5 = v2;
  }

  return result;
}

uint64_t *partial apply for closure #1 in CommandAccumulator.visit<A>(_:operation:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for CommandOperation(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CommandAccumulator.visit<A>(_:operation:)(a1, v4);
}

uint64_t _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CommandOperation.Mutation and conformance CommandOperation.Mutation()
{
  result = lazy protocol witness table cache variable for type CommandOperation.Mutation and conformance CommandOperation.Mutation;
  if (!lazy protocol witness table cache variable for type CommandOperation.Mutation and conformance CommandOperation.Mutation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandOperation.Mutation, &type metadata for CommandOperation.Mutation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandOperation.Mutation and conformance CommandOperation.Mutation);
  }

  return result;
}

uint64_t View.onPencilDoubleTap(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = 0;
  v4[3] = 0;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for PencilEventsModifier);
}

__n128 PencilDoubleTapGestureValue.hoverPose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

void PencilDoubleTapGestureValue.hash(into:)(uint64_t a1)
{
  if (*(v1 + 64))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)(a1);
  }
}

Swift::Int PencilDoubleTapGestureValue.hashValue.getter()
{
  v1 = *(v0 + 64);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)(v3);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PencilDoubleTapGestureValue()
{
  v1 = *(v0 + 64);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)(v3);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PencilDoubleTapGestureValue(uint64_t a1)
{
  if (*(v1 + 64))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)(a1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PencilDoubleTapGestureValue(uint64_t a1)
{
  v2 = *(v1 + 64);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)(v4);
  }

  return Hasher._finalize()();
}

uint64_t View.onPencilSqueeze(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for PencilEventsModifier);
}

__n128 PencilSqueezeGestureValue.hoverPose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t PencilSqueezeGestureValue.normalizedForceVelocity.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

void PencilSqueezeGestureValue.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if ((*(v1 + 64) & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)(a1);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x18D00F730](v5);
}

Swift::Int PencilSqueezeGestureValue.hashValue.getter()
{
  Hasher.init(_seed:)();
  PencilSqueezeGestureValue.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PencilSqueezeGestureValue()
{
  Hasher.init(_seed:)();
  PencilSqueezeGestureValue.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PencilSqueezeGestureValue(uint64_t a1)
{
  Hasher.init(_seed:)();
  PencilSqueezeGestureValue.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL specialized static PencilSqueezeGestureValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v2)
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v8;
    v9 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v9;
    v16 = v2;
    if (v5)
    {
      return 0;
    }

    v10 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v10;
    v11 = *(a2 + 48);
    v14[2] = *(a2 + 32);
    v14[3] = v11;
    if ((specialized static PencilHoverPose.== infix(_:_:)(v15, v14) & 1) == 0)
    {
      return 0;
    }
  }

  if ((v4 & 1) == 0)
  {
    if (v3 == v6)
    {
      v13 = v7;
    }

    else
    {
      v13 = 1;
    }

    return (v13 & 1) == 0;
  }

  return (v7 & 1) != 0;
}

BOOL specialized static PencilSqueezeGesturePhase.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v12 = *(a2 + 80);
  v13 = *(a2 + 81);
  if (*(a1 + 81))
  {
    if (*(a1 + 81) != 1)
    {
      return v13 == 2 && !(v2 | v3 | v4 | v5 | v6 | v7 | v9 | v8 | v11 | v10) && v12 == 0;
    }

    if (v13 != 1)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 64);
  v22[3] = *(a1 + 48);
  v22[4] = v15;
  v23 = *(a1 + 80);
  v16 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v16;
  v22[2] = v14;
  v20[0] = v3;
  v20[1] = v2;
  v20[2] = v4;
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = v7;
  v20[6] = v9;
  v20[7] = v8;
  v20[8] = v11;
  v20[9] = v10;
  v21 = v12;
  return specialized static PencilSqueezeGestureValue.== infix(_:_:)(v22, v20);
}

uint64_t specialized static PencilDoubleTapGestureValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v4 = *(a2 + 64);
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v5;
    v6 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v6;
    v12 = v3;
    if (v4)
    {
      v4 = 0;
    }

    else
    {
      v7 = *(a2 + 16);
      v10[0] = *a2;
      v10[1] = v7;
      v8 = *(a2 + 48);
      v10[2] = *(a2 + 32);
      v10[3] = v8;
      v4 = specialized static PencilHoverPose.== infix(_:_:)(v11, v10);
    }
  }

  return v4 & 1;
}

unint64_t lazy protocol witness table accessor for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue()
{
  result = lazy protocol witness table cache variable for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilDoubleTapGestureValue, &type metadata for PencilDoubleTapGestureValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue()
{
  result = lazy protocol witness table cache variable for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue;
  if (!lazy protocol witness table cache variable for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilSqueezeGestureValue, &type metadata for PencilSqueezeGestureValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PencilDoubleTapGestureValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PencilDoubleTapGestureValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 65) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PencilSqueezeGesturePhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 82))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 81);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PencilSqueezeGesturePhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PencilSqueezeGesturePhase(uint64_t a1)
{
  result = *(a1 + 81);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PencilSqueezeGesturePhase(uint64_t result, unsigned int a2)
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

  *(result + 81) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PencilSqueezeGestureValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PencilSqueezeGestureValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

uint64_t ScrollActionDispatcher.updateValue()(char *a1)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v97 = &v87 - v7;
  v106 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v87 - v12;
  v105 = v6;
  v102 = *(v6 - 8);
  *&v109 = v102;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v87 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  v25 = swift_getAssociatedTypeWitness();
  v112 = type metadata accessor for Optional();
  v100 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v87 - v26;
  v111 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v113 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *AGGraphGetValue() >> 1;
  v30 = *(a1 + 13);
  v114 = v1;
  if (v29 != *(v1 + v30))
  {
    v31 = v114;
    *(v114 + v30) = v29;
    v32 = v31 + *(a1 + 12);
    *(v32 + 4) = 0xFFFFFFFFLL;
    *(v32 + 12) = 0;
    v33 = *(a1 + 14);
    (*(v109 + 8))(v31 + v33, v105);
    (*(v8 + 56))(v31 + v33, 1, 1, v106);
  }

  v108 = v8;
  v34 = v114;
  v35 = specialized ScrollActionDispatcher.inputs.getter(a1);
  (*(v111 + 16))(v113, v34, v3);
  v107 = v4;

  v93 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v103 = v36;
  v37 = *(v34 + *(a1 + 11)) == *MEMORY[0x1E698D3F8];
  v95 = v19;
  v104 = v3;
  if (v37 || (*AGGraphGetValue() & 1) == 0)
  {
    if (MEMORY[0x18D00CD40](v35, v25) >= 2)
    {
      v39 = static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      if (os_log_type_enabled(v40, v39))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v115[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v103, v115);
        _os_log_impl(&dword_18BD4A000, v40, v39, "%s: Multiple scroll views were found. Picking the first one to compare.", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        v43 = v42;
        v3 = v104;
        MEMORY[0x18D0110E0](v43, -1, -1);
        MEMORY[0x18D0110E0](v41, -1, -1);
      }
    }

    v115[0] = v35;
    v44 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v44);
    Collection.first.getter();
  }

  else
  {
    v115[0] = v35;
    v38 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6310], v38);
    BidirectionalCollection.last.getter();
  }

  v46 = v106;
  MEMORY[0x1EEE9AC00](v45);
  *(&v87 - 4) = v3;
  *(&v87 - 3) = v47;
  v48 = v47;
  v49 = v113;
  *(&v87 - 2) = v114;
  *(&v87 - 1) = v49;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ScrollActionDispatcher.updateValue(), (&v87 - 6), MEMORY[0x1E69E73E0], v46, v50, v24);
  v51 = v109;
  v52 = *(v109 + 16);
  v53 = v99;
  v106 = v24;
  v54 = v105;
  v52(v99, v24, v105);
  v55 = v108;
  v98 = *(v108 + 48);
  if (v98(v53, 1, v46) != 1)
  {
    v59 = v46;
    v60 = *(v55 + 32);
    v61 = a1;
    v62 = v101;
    v89 = v55 + 32;
    v88 = v60;
    v60(v101, v53, v46);
    v63 = v95;
    (*(v55 + 16))(v95, v62, v59);
    (*(v55 + 56))(v63, 0, 1, v59);
    v99 = v61;
    v64 = (v114 + *(v61 + 14));
    v65 = v94;
    v66 = v54;
    v67 = v59;
    v52(v94, v64, v66);
    v68 = *(TupleTypeMetadata2 + 48);
    v69 = v97;
    v52(v97, v63, v66);
    v52(&v69[v68], v65, v66);
    if (v98(v69, 1, v59) == 1)
    {
      v56 = *(v109 + 8);
      v56(v65, v66);
      v56(v63, v66);
      v70 = v59;
      if (v98(&v69[v68], 1, v59) == 1)
      {
        v56(v69, v66);
        v58 = v107;
        v57 = v66;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v71 = v91;
      v52(v91, v69, v66);
      if (v98(&v69[v68], 1, v67) != 1)
      {
        v79 = v90;
        v88(v90, &v69[v68], v67);
        v80 = v69;
        v58 = v107;
        swift_getAssociatedConformanceWitness();
        v70 = v67;
        v81 = dispatch thunk of static Equatable.== infix(_:_:)();
        v82 = v71;
        v83 = *(v108 + 8);
        v83(v79, v67);
        v56 = *(v109 + 8);
        v56(v94, v66);
        v56(v95, v66);
        v83(v82, v67);
        v72 = (v56)(v80, v66);
        v57 = v66;
        if (v81)
        {
          goto LABEL_22;
        }

LABEL_19:
        MEMORY[0x1EEE9AC00](v72);
        v73 = v103;
        *(&v87 - 2) = v93;
        *(&v87 - 1) = v73;
        v74 = UpdateCycleDetector.dispatch(label:isDebug:)();

        if (v74)
        {
          AGGraphClearUpdate();
          v75 = v101;
          closure #2 in ScrollActionDispatcher.updateValue()(v113, v114, v101, v104, v58, v115);
          AGGraphSetUpdate();
          v109 = *v115;
          v76 = swift_allocObject();
          *(v76 + 16) = v109;
          LOBYTE(v115[0]) = 17;
          Strong = swift_weakLoadStrong();
          v78 = swift_allocObject();
          v78[2] = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
          v78[3] = v76;
          v78[4] = Strong;

          static Update.enqueueAction(reason:_:)();

          (*(v108 + 8))(v75, v70);
          goto LABEL_24;
        }

LABEL_23:
        (*(v108 + 8))(v101, v70);
        goto LABEL_24;
      }

      v70 = v67;
      v56 = *(v109 + 8);
      v56(v94, v66);
      v56(v95, v66);
      (*(v108 + 8))(v71, v67);
    }

    v58 = v107;
    v57 = v66;
    v72 = (*(v92 + 8))(v97, TupleTypeMetadata2);
    goto LABEL_19;
  }

  v56 = *(v51 + 8);
  v56(v53, v54);
  v57 = v54;
  v58 = v48;
LABEL_24:
  v84 = v106;
  v85 = v104;
  $defer #1 <A>() in ScrollActionDispatcher.updateValue()(v114, v106, v104, v58);
  v56(v84, v57);
  (*(v100 + 8))(v110, v112);
  return (*(v111 + 8))(v113, v85);
}

uint64_t closure #1 in ScrollActionDispatcher.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for ScrollActionDispatcher(0, a4, a5, a4);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  (*(v12 + 16))(&v19[-v14], a2, v11, v13);
  v20 = a4;
  v21 = a5;
  v22 = a3;
  v23 = a1;
  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollActionDispatcher<A>, v11);
  MEMORY[0x18D000B40](v11, v16, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  return (*(v12 + 8))(v15, v11);
}

uint64_t $defer #1 <A>() in ScrollActionDispatcher.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for ScrollActionDispatcher(0, a3, a4, a4) + 56);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 24);

  return v8(a1 + v6, a2, v7);
}

uint64_t closure #2 in ScrollActionDispatcher.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v29 = a1;
  v30 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v20 = *(type metadata accessor for ScrollActionDispatcher(0, a4, a5, v19) + 56);
  v28 = v12;
  (*(v12 + 16))(v14, a2 + v20, v11);
  v21 = *(v15 + 48);
  if (v21(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 16))(v18, a3, AssociatedTypeWitness);
    if (v21(v14, 1, AssociatedTypeWitness) != 1)
    {
      (*(v28 + 8))(v14, v11);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
  }

  v22 = (*(a5 + 56))(v18, a3, a4, a5);
  v24 = v23;
  (*(v15 + 8))(v18, AssociatedTypeWitness);
  result = swift_allocObject();
  *(result + 16) = v22;
  *(result + 24) = v24;
  v26 = v30;
  *v30 = partial apply for thunk for @callee_guaranteed () -> ();
  v26[1] = result;
  return result;
}

double closure #3 in ScrollActionDispatcher.updateValue()(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  if (a3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(a3 + 208);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5, 0.0);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double ScrollActionDispatcher.init(provider:inputs:viewPhase:prefersLast:cycleDetector:oldResetSeed:oldOutput:viewGraph:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = *(a5 + 8);
  v16 = *(a5 + 12);
  (*(*(a9 - 8) + 32))(a8, a1, a9);
  v18 = type metadata accessor for ScrollActionDispatcher(0, a9, a10, v17);
  *(a8 + v18[9]) = a2;
  *(a8 + v18[10]) = a3;
  *(a8 + v18[11]) = a4;
  v19 = a8 + v18[12];
  *v19 = *a5;
  *(v19 + 8) = v15;
  *(v19 + 12) = v16;
  *(a8 + v18[13]) = a6;
  v20 = v18[14];
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 32))(a8 + v20, a7, v21);
  swift_weakInit();

  return result;
}

__n128 static OnScrollPhaseChangeModifier._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v32 = v38;
  v33 = v8;
  v34 = a2[4];
  v10 = *a1;
  v41 = *(a2 + 20);
  v35 = *(a2 + 20);
  v30 = v36;
  v31 = v7;
  outlined init with copy of _ViewInputs(&v36, v44);
  PreferenceKeys.add(_:)();
  v42[2] = v32;
  v42[3] = v33;
  v42[4] = v34;
  v43 = v35;
  v42[0] = v30;
  v42[1] = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v11 = outlined init with copy of _ViewInputs(v42, v44);
  a3(v23, v11, &v24);
  v44[2] = v26;
  v44[3] = v27;
  v44[4] = v28;
  v45 = v29;
  v44[0] = v24;
  v44[1] = v25;
  outlined destroy of _ViewInputs(v44);
  v12 = v23[0];
  v13.n128_u64[0] = v23[1];
  v22 = v13;

  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) != 0)
  {
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    outlined destroy of _ViewInputs(&v24);
  }

  else
  {
    v15 = v14;

    v16 = DWORD2(v37);
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for GraphHost();
    v18 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v19 = *(v18 + 64);

    MEMORY[0x18D00B7D0](v20);
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    BYTE4(v26) = 5;
    *&v24 = __PAIR64__(v15, v10);
    *(&v24 + 1) = __PAIR64__(v17, v16);
    LODWORD(v25) = v19;
    *(&v25 + 4) = 0xFFFFFFFFLL;
    BYTE12(v25) = 0;
    LODWORD(v26) = -1;
    swift_weakInit();

    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider, &type metadata for OnScrollPhaseChangeModifier.PhaseActionProvider);
    lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(&lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider, &type metadata for OnScrollPhaseChangeModifier.PhaseActionProvider);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(&v24, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider, &type metadata for OnScrollPhaseChangeModifier.PhaseActionProvider);
    AGGraphSetFlags();
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    outlined destroy of _ViewInputs(&v24);
  }

  *a4 = v12;
  result = v22;
  a4[1] = v22.n128_u64[0];
  return result;
}

uint64_t (*protocol witness for ScrollActionProvider.makeAction(oldOutput:newOutput:) in conformance OnScrollPhaseChangeModifier.PhaseActionProvider(char *a1, char *a2))()
{
  v2 = *a1;
  v3 = *a2;
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2;
  *(v7 + 33) = v3;

  return _s7SwiftUI27OnScrollPhaseChangeModifierV0E14ActionProvider33_1176EEC1E4A702DD8DB07F9D0C463078LLV04makeH09oldOutput03newT0yycAA0dE0O_AKtFyycfU_TA_0;
}

__n128 static OnScrollPhaseContextChangeModifier._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v40 = a2[2];
  v41 = v6;
  v8 = a2[3];
  v42 = a2[4];
  v9 = a2[1];
  v38 = *a2;
  v39 = v9;
  v34 = v40;
  v35 = v8;
  v36 = a2[4];
  v10 = *a1;
  v43 = *(a2 + 20);
  v37 = *(a2 + 20);
  v32 = v38;
  v33 = v7;
  outlined init with copy of _ViewInputs(&v38, v46);
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  v44[2] = v34;
  v44[3] = v35;
  v44[4] = v36;
  v45 = v37;
  v44[0] = v32;
  v44[1] = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v26 = v32;
  v27 = v33;
  v11 = outlined init with copy of _ViewInputs(v44, v46);
  a3(v25, v11, &v26);
  v46[2] = v28;
  v46[3] = v29;
  v46[4] = v30;
  v47 = v31;
  v46[0] = v26;
  v46[1] = v27;
  outlined destroy of _ViewInputs(v46);
  v12 = v25[0];
  v13.n128_u64[0] = v25[1];
  v24 = v13;

  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) != 0 || (v15 = v14, v16 = PreferencesOutputs.subscript.getter(), (v16 & 0x100000000) != 0))
  {
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    outlined destroy of _ViewInputs(&v26);
  }

  else
  {
    v17 = v16;

    v23 = DWORD2(v39);
    v18 = *MEMORY[0x1E698D3F8];
    type metadata accessor for GraphHost();
    v19 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v20 = *(v19 + 64);

    MEMORY[0x18D00B7D0](v21);
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    *&v26 = __PAIR64__(v17, v10);
    v29 = 0uLL;
    *(&v28 + 1) = 5;
    *(&v26 + 1) = __PAIR64__(v23, v15);
    *&v27 = __PAIR64__(v20, v18);
    *(&v27 + 1) = 0xFFFFFFFFLL;
    LOBYTE(v28) = 0;
    DWORD1(v28) = -1;
    swift_weakInit();

    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, &type metadata for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
    lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(&lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, &type metadata for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(&v26, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, &type metadata for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
    AGGraphSetFlags();
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    outlined destroy of _ViewInputs(&v26);
  }

  *a4 = v12;
  result = v24;
  a4[1] = v24.n128_u64[0];
  return result;
}

uint64_t (*OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:)(char *a1, char *a2, unint64_t a3))()
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  type metadata accessor for Binding<ScrollPhaseState>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v10 = *Value;
  if (*(*Value + 16))
  {
    v20 = v10[6];
    v21 = v10[7];
    v22 = v10[8];
    v16 = v10[2];
    v17 = v10[3];
    v18 = v10[4];
    v19 = v10[5];
  }

  else
  {
    static ScrollGeometry.zero.getter();
  }

  v11 = AGGraphGetValue();
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 80) = v20;
  *(v14 + 96) = v21;
  *(v14 + 112) = v22;
  *(v14 + 16) = v16;
  *(v14 + 32) = v17;
  *(v14 + 48) = v18;
  *(v14 + 64) = v19;
  *(v14 + 128) = v6;
  *(v14 + 136) = v7;
  *(v14 + 144) = v8;
  *(v14 + 152) = v13;
  *(v14 + 160) = v12;
  *(v14 + 168) = v3;
  *(v14 + 176) = v4;
  *(v14 + 184) = v5;

  return partial apply for closure #1 in OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:);
}

__n128 protocol witness for ScrollActionProvider.makeOutput(input:) in conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double static OnScrollGeometryChangeModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v52 = a6;
  v80 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v44[-v12];
  v14 = type metadata accessor for OnScrollGeometryChangeModifier.GeometryActionProvider(255, a4, a5, v13);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for OnScrollGeometryChangeModifier<A>.GeometryActionProvider, v14);
  v16 = type metadata accessor for ScrollActionDispatcher(0, v14, WitnessTable, v15);
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v44[-v17];
  v18 = a2[3];
  v19 = a2[1];
  v72 = a2[2];
  v73 = v18;
  v20 = a2[3];
  v74 = a2[4];
  v21 = a2[1];
  v70 = *a2;
  v71 = v21;
  v66 = v72;
  v67 = v20;
  v68 = a2[4];
  v22 = *a1;
  v75 = *(a2 + 20);
  v69 = *(a2 + 20);
  v64 = v70;
  v65 = v19;
  outlined init with copy of _ViewInputs(&v70, v78);
  PreferenceKeys.add(_:)();
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
  v23 = outlined init with copy of _ViewInputs(v76, v78);
  a3(&v56, v23, &v58);
  v78[2] = v60;
  v78[3] = v61;
  v78[4] = v62;
  v79 = v63;
  v78[0] = v58;
  v78[1] = v59;
  outlined destroy of _ViewInputs(v78);
  v24 = v56;
  *&v25 = v57;
  v54 = v56;
  *v51 = v25;
  v55 = v57;

  v26 = PreferencesOutputs.subscript.getter();
  if ((v26 & 0x100000000) != 0)
  {
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v58 = v64;
    v59 = v65;
    outlined destroy of _ViewInputs(&v58);
  }

  else
  {
    v27 = v26;

    LODWORD(v58) = v22;
    type metadata accessor for OnScrollGeometryChangeModifier(255, a4, a5, v28);
    type metadata accessor for _GraphValue();
    v29 = _GraphValue.value.getter();
    v53 = v29;
    v45 = DWORD2(v71);
    MEMORY[0x1EEE9AC00](v29);
    v42 = a4;
    v43 = a5;
    LODWORD(v58) = v22;
    _GraphValue.subscript.getter();
    v30 = v56;
    v31 = WitnessTable;
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v58);
    v56 = v58;
    LODWORD(v57) = DWORD2(v58);
    BYTE4(v57) = BYTE12(v58);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v33 = v47;
    (*(*(AssociatedTypeWitness - 8) + 56))(v47, 1, 1, AssociatedTypeWitness);
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    v43 = v31;
    v34 = v48;
    ScrollActionDispatcher.init(provider:inputs:viewPhase:prefersLast:cycleDetector:oldResetSeed:oldOutput:viewGraph:)(&v53, v27, v45, v30, &v56, -1, v33, v48, v14, v43);
    v36 = MEMORY[0x1EEE9AC00](v35);
    v37 = v50;
    v42 = v50;
    v43 = swift_getWitnessTable(protocol conformance descriptor for ScrollActionDispatcher<A>, v50, v36);
    type metadata accessor for Binding<ScrollPhaseState>(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v34, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, &v44[-32], v37, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);
    (*(v49 + 8))(v34, v37);
    AGGraphSetFlags();
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v58 = v64;
    v59 = v65;
    outlined destroy of _ViewInputs(&v58);
  }

  v40 = v52;
  *v52 = v24;
  result = v51[0];
  v40[1] = *&v51[0];
  return result;
}

uint64_t closure #1 in static OnScrollGeometryChangeModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for OnScrollGeometryChangeModifier(0, a2, a3, a4);
  v5 = MEMORY[0x1E69E6370];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 32, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

double OnScrollGeometryChangeModifier.GeometryActionProvider.modifier.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for OnScrollGeometryChangeModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  *a5 = *Value;
  *(a5 + 8) = *(Value + 8);
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;

  return result;
}

uint64_t OnScrollGeometryChangeModifier.GeometryActionProvider.makeOutput(input:)@<X0>(_OWORD *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[5];
  v13[4] = a1[4];
  v13[5] = v7;
  v13[6] = a1[6];
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v9 = a1[3];
  v13[2] = a1[2];
  v13[3] = v9;
  OnScrollGeometryChangeModifier.GeometryActionProvider.modifier.getter(a3, a4, a4, &v14);
  v10 = v14;

  v10(v13);

  v11 = *(*(a3 - 8) + 56);

  return v11(a5, 0, 1, a3);
}

uint64_t (*OnScrollGeometryChangeModifier.GeometryActionProvider.makeAction(oldOutput:newOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25[-v13 - 8];
  OnScrollGeometryChangeModifier.GeometryActionProvider.modifier.getter(v15, v16, v15, v25);

  v17 = *(v9 + 16);
  v17(v14, a1, a4);
  v17(v11, a2, a4);
  v18 = *(v9 + 80);
  v19 = (v18 + 48) & ~v18;
  v20 = (v10 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = v26;
  v22 = *(v9 + 32);
  v22(v21 + v19, v14, a4);
  v22(v21 + v20, v11, a4);
  return partial apply for closure #1 in OnScrollGeometryChangeModifier.GeometryActionProvider.makeAction(oldOutput:newOutput:);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OnScrollGeometryChangeModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for OnScrollGeometryChangeModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

__n128 ScrollPhaseChangeContext.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t View.onScrollPhaseChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for OnScrollPhaseChangeModifier);
}

{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for OnScrollPhaseContextChangeModifier);
}

double View.onScrollGeometryChange<A>(for:of:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v14 = 0;
  v11 = type metadata accessor for OnScrollGeometryChangeModifier(0, a7, a9, a4);

  MEMORY[0x18D00A570](v13, a6, v11, a8);

  return result;
}

double View.onScrollGeometryChange<A>(for:prefersLast:of:action:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v14 = a2;
  v11 = type metadata accessor for OnScrollGeometryChangeModifier(0, a8, a10, a4);

  MEMORY[0x18D00A570](v13, a7, v11, a9);

  return result;
}

uint64_t static ScrollEventStateReader._makeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  v24 = a2[4];
  v8 = a2[1];
  v20 = *a2;
  v21 = v8;
  v19[0] = v20;
  v19[1] = v6;
  v25 = *(a2 + 20);
  v19[2] = v22;
  v9 = _GraphInputs.scrollPhaseState.getter();
  type metadata accessor for ScrollEventStateReader(255, a3, a4, v10);
  type metadata accessor for _GraphValue();
  LODWORD(v19[0]) = _GraphValue.value.getter();
  DWORD1(v19[0]) = v9;
  v16 = a3;
  View = type metadata accessor for ScrollEventStateReader.MakeView(0, a3, a4, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollEventStateReader<A>.MakeView, View);
  v12 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v15, View, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  _GraphValue.init(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static ScrollEventStateReader._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(a3 + 40))(v6);
}

double ScrollGestureState_V1.Binding.wrappedValue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(v1 + 16);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v11 = *(v1 + 3);
  type metadata accessor for Binding<ScrollPhaseState>(0, &lazy cache variable for type metadata for Binding<ScrollPhaseState>, MEMORY[0x1E697EB00], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  *a1 = v6;
  result = *&v7;
  *(a1 + 8) = v7;
  return result;
}

double key path getter for ScrollGestureState_V1.Binding.wrappedValue : <A>ScrollGestureState_V1<A>.Binding@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 3);
  ScrollGestureState_V1.Binding.wrappedValue.getter(v6);
  *a2 = v6[0];
  result = *&v7;
  *(a2 + 8) = v7;
  return result;
}

double key path setter for ScrollGestureState_V1.Binding.wrappedValue : <A>ScrollGestureState_V1<A>.Binding(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  v4 = *(a2 + 16);
  v8 = *a2;
  v9 = v3;
  v10 = v4;
  v11 = *(a2 + 3);
  v6[0] = v2;
  v7 = *(a1 + 8);

  ScrollGestureState_V1.Binding.wrappedValue.setter(v6);

  return result;
}

double ScrollGestureState_V1.Binding.projectedValue.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);

  return result;
}

uint64_t View.scrollGestureState<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v6, &dword_18BD4A000, v7, "No longer implemented. Use ScrollEventStateReader.", 50, 2, MEMORY[0x1E69E7CC0]);

  v8 = *(*(a2 - 8) + 16);

  return v8(a3, v3, a2);
}

uint64_t getEnumTagSinglePayload for ScrollPhaseChangeContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 129))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollPhaseChangeContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
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

  *(result + 129) = v3;
  return result;
}

uint64_t initializeWithCopy for ScrollGestureState_V1.Binding(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];

  return a1;
}

uint64_t assignWithCopy for ScrollGestureState_V1.Binding(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = a2[4];
  return a1;
}

uint64_t assignWithTake for ScrollGestureState_V1.Binding(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollEventState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollEventState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t initializeWithCopy for OnScrollGeometryChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for OnScrollGeometryChangeModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for OnScrollGeometryChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t specialized ScrollActionDispatcher.inputs.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

uint64_t _s7SwiftUI22ScrollActionDispatcher33_1176EEC1E4A702DD8DB07F9D0C463078LLV11updateValueyyFSSyXEfu2_TA_0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollActionDispatcher<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t partial apply for closure #1 in OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:)()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  ScrollPhaseState.velocity.getter();
  v3 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v3;
  v9[6] = *(v0 + 112);
  v4 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v4;
  v5 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v5;
  v10 = v6;
  v11 = v7;
  v12 = 0;
  return v1(v2, v13, v9);
}

void type metadata accessor for Binding<ScrollPhaseState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for ScrollActionDispatcher(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return v1;
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollActionDispatcher(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  v7 = *(v5 + 80);
  *a1 = *a2;
  v8 = (v7 | v6) & 0xF8 | 7u;
  return  + ((v8 + 16) & ~v8);
}

uint64_t destroy for ScrollActionDispatcher(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = (((((((a1 + *(v3 + 56) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80) + 4) & ~*(v6 + 80);
  if (!(*(v6 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v7, AssociatedTypeWitness);
  }

  return swift_weakDestroy();
}

uint64_t initializeWithCopy for ScrollActionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = *(v14 + 5);
  *v13 = *v14;
  *(v13 + 5) = v15;
  v16 = ((v11 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v12 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 80);
  v21 = ((v16 + v20 + 4) & ~v20);
  v22 = ((v17 + v20 + 4) & ~v20);
  if ((*(v19 + 48))(v22, 1, AssociatedTypeWitness))
  {
    v23 = *(v19 + 84);
    v24 = *(v19 + 64);
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 1;
    }

    memcpy(v21, v22, v25);
  }

  else
  {
    (*(v19 + 16))(v21, v22, AssociatedTypeWitness);
    (*(v19 + 56))(v21, 0, 1, AssociatedTypeWitness);
  }

  swift_weakCopyInit();
  return a1;
}

uint64_t assignWithCopy for ScrollActionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v13 = *v14;
  *(v13 + 4) = *(v14 + 4);
  *(v13 + 8) = *(v14 + 8);
  *(v13 + 12) = *(v14 + 12);
  v15 = ((v11 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v12 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 80);
  v20 = ((v15 + v19 + 4) & ~v19);
  v21 = ((v16 + v19 + 4) & ~v19);
  v22 = *(v18 + 48);
  LODWORD(v16) = v22(v20, 1, AssociatedTypeWitness);
  v23 = v22(v21, 1, AssociatedTypeWitness);
  if (v16)
  {
    if (!v23)
    {
      (*(v18 + 16))(v20, v21, AssociatedTypeWitness);
      (*(v18 + 56))(v20, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v18 + 24))(v20, v21, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v18 + 8))(v20, AssociatedTypeWitness);
    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  swift_weakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for ScrollActionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = *(v14 + 5);
  *v13 = *v14;
  *(v13 + 5) = v15;
  v16 = ((v11 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v12 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 80);
  v21 = ((v16 + v20 + 4) & ~v20);
  v22 = ((v17 + v20 + 4) & ~v20);
  if ((*(v19 + 48))(v22, 1, AssociatedTypeWitness))
  {
    v23 = *(v19 + 84);
    v24 = *(v19 + 64);
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 1;
    }

    memcpy(v21, v22, v25);
  }

  else
  {
    (*(v19 + 32))(v21, v22, AssociatedTypeWitness);
    (*(v19 + 56))(v21, 0, 1, AssociatedTypeWitness);
  }

  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithTake for ScrollActionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v13 = *v14;
  *(v13 + 4) = *(v14 + 4);
  *(v13 + 8) = *(v14 + 8);
  *(v13 + 12) = *(v14 + 12);
  v15 = ((v11 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v12 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 80);
  v20 = ((v15 + v19 + 4) & ~v19);
  v21 = ((v16 + v19 + 4) & ~v19);
  v22 = *(v18 + 48);
  LODWORD(v16) = v22(v20, 1, AssociatedTypeWitness);
  v23 = v22(v21, 1, AssociatedTypeWitness);
  if (v16)
  {
    if (!v23)
    {
      (*(v18 + 32))(v20, v21, AssociatedTypeWitness);
      (*(v18 + 56))(v20, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v18 + 40))(v20, v21, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v18 + 8))(v20, AssociatedTypeWitness);
    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  swift_weakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollActionDispatcher(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  v17 = 7;
  if (!v11)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 < a2)
  {
    v18 = ((v17 + *(*(AssociatedTypeWitness - 8) + 64) + ((v16 + ((((((((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFFCLL) + 4) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v14 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_27:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        return v14 + (v19 | v24) + 1;
      }
    }
  }

  if (v7 != v14)
  {
    v27 = ((((((a1 + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7;
    if (v13 > 0xFE)
    {
      if (v11 >= 2)
      {
        v29 = (*(v10 + 48))((v16 + (v27 & 0xFFFFFFFFFFFFFFFCLL) + 20) & ~v16);
        if (v29 >= 2)
        {
          return v29 - 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 12);
      if (v28 >= 2)
      {
        return ((v28 + 2147483646) & 0x7FFFFFFF) + 1;
      }
    }

    return 0;
  }

  v26 = *(v6 + 48);

  return v26(a1, v7, v5);
}

void storeEnumTagSinglePayload for ScrollActionDispatcher(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v25 = *(v7 - 8);
  v8 = *(v25 + 84);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v25 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  if (v8 > v13)
  {
    v13 = v8;
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v13;
  }

  if (!v11)
  {
    ++v15;
  }

  v17 = ((v15 + ((v14 + ((((((((v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFFCLL) + 4) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 < a3)
  {
    if (((v15 + ((v14 + ((((((((v12 + 3) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 23) & 0xFFFFFFFC) + 4) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v16)
  {
    if (v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v16;
    }

    if (v17)
    {
      v21 = ~v16 + a2;
      bzero(a1, v17);
      *a1 = v21;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v17) = v20;
      }

      else
      {
        *(a1 + v17) = v20;
      }
    }

    else if (v9)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v17) = 0;
  }

  else if (v9)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v8 == v16)
  {
    v22 = *(v25 + 56);

    v22(a1, a2, v8, v7);
  }

  else
  {
    v23 = (((((((a1 + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
    if (v13 > 0xFE)
    {
      if (v11 >= 2)
      {
        v24 = *(v10 + 56);

        v24((v14 + v23 + 20) & ~v14, (a2 + 1));
      }
    }

    else if (a2 > 0xFE)
    {
      *(v23 + 12) = 0;
      *(v23 + 8) = 0;
      *v23 = (a2 - 255);
    }

    else
    {
      *(v23 + 12) = a2 + 1;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollGeometryState and conformance ScrollGeometryState()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryState and conformance ScrollGeometryState;
  if (!lazy protocol witness table cache variable for type ScrollGeometryState and conformance ScrollGeometryState)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F7D8], MEMORY[0x1E697F7D0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryState and conformance ScrollGeometryState);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for OnScrollGeometryChangeModifier<A>.GeometryActionProvider(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for OnScrollGeometryChangeModifier<A>.GeometryActionProvider);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollPhaseState and conformance ScrollPhaseState()
{
  result = lazy protocol witness table cache variable for type ScrollPhaseState and conformance ScrollPhaseState;
  if (!lazy protocol witness table cache variable for type ScrollPhaseState and conformance ScrollPhaseState)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697EB08], MEMORY[0x1E697EB00], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollPhaseState and conformance ScrollPhaseState);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollPhase and conformance ScrollPhase()
{
  result = lazy protocol witness table cache variable for type ScrollPhase and conformance ScrollPhase;
  if (!lazy protocol witness table cache variable for type ScrollPhase and conformance ScrollPhase)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DD20], MEMORY[0x1E697DD18], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollPhase and conformance ScrollPhase);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for OnScrollPhaseChangeModifier.PhaseActionProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.automationHidden(_:isEnabled:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = 0x400000000;
  if (a1)
  {
    v7 = 0x400000004;
  }

  v10 = v7;
  v11 = 0;
  v8 = lazy protocol witness table accessor for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey();
  return View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.AutomationVisibilityKey, &v10, a2, a3, &type metadata for AccessibilityProperties.AutomationVisibilityKey, a4, v8);
}

uint64_t ModifiedContent<>.automationHidden(_:isEnabled:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0x400000000;
  if (a1)
  {
    v7 = 0x400000004;
  }

  v11 = v7;
  v12 = 0;
  v8 = lazy protocol witness table accessor for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey();
  v9 = lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility>? and conformance <A> A?();
  return ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.AutomationVisibilityKey, &v11, a2, a3, &type metadata for AccessibilityProperties.AutomationVisibilityKey, v8, v9, a4);
}

unint64_t lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>();
    result = swift_getWitnessTable(MEMORY[0x1E6982088], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityNullableOptionSet<AccessibilityVisibility>?)
  {
    type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AccessibilityNullableOptionSet<AccessibilityVisibility>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>()
{
  result = lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>;
  if (!lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>)
  {
    type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980980], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>);
  }

  return result;
}

uint64_t assignWithCopy for SceneID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of SceneID(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of SceneID(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for SceneID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of SceneID(v4, v5, v6);
  return a1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SceneID()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x18D00F6F0](v2);
    Hasher._combine(_:)(v1);
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SceneID(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    MEMORY[0x18D00F6F0](*v1);
    Hasher._combine(_:)(v2);
  }

  else
  {

    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneID(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v4)
  {
    MEMORY[0x18D00F6F0](v3);
    Hasher._combine(_:)(v2);
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t ResolvedBorderedButton.init(configuration:isProminent:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  *(a3 + 64) = swift_getKeyPath();
  *(a3 + 72) = 0;
  *(a3 + 80) = swift_getKeyPath();
  *(a3 + 88) = 0;
  *(a3 + 89) = v5;
  *(a3 + 90) = v6;
  *(a3 + 91) = a2;
  *(a3 + 96) = swift_getKeyPath();
  *(a3 + 104) = 0;
  KeyPath = swift_getKeyPath();
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 112) = KeyPath;
  *(a3 + 136) = 0;
  *(a3 + 144) = swift_getKeyPath();
  *(a3 + 152) = 0;
  result = static Color.secondarySystemFill.getter();
  *(a3 + 160) = result;
  return result;
}

__n128 protocol witness for ButtonStyle.makeBody(configuration:) in conformance WidgetBorderedButtonStyle@<Q0>(char *a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  ResolvedBorderedButton.init(configuration:isProminent:)(v10, a2, v11);
  v5 = v11[9];
  *(a3 + 128) = v11[8];
  *(a3 + 144) = v5;
  *(a3 + 160) = v12;
  v6 = v11[5];
  *(a3 + 64) = v11[4];
  *(a3 + 80) = v6;
  v7 = v11[7];
  *(a3 + 96) = v11[6];
  *(a3 + 112) = v7;
  v8 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v8;
  result = v11[3];
  *(a3 + 32) = v11[2];
  *(a3 + 48) = result;
  return result;
}

double ResolvedBorderedButton.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v32 = static VerticalAlignment.center.getter();
  v51 = v4;
  v52 = v5;
  v59 = *(v2 + 105);
  v60 = *(v2 + 121);
  *v61 = *(v2 + 137);
  *&v61[15] = *(v2 + 152);
  v55 = *(v2 + 41);
  v56 = *(v2 + 57);
  v57 = *(v2 + 73);
  v58 = *(v2 + 89);
  v53 = *(v2 + 9);
  v54 = *(v2 + 25);
  ResolvedBorderedButton.specs.getter(v65);
  v6 = v66;
  v7 = v67;
  outlined copy of BorderedButtonColorSpec.LabelStyle(v66);
  outlined destroy of BorderedButtonColorSpec(v65);
  v51 = v4;
  v52 = v5;
  v59 = *(v2 + 105);
  v60 = *(v2 + 121);
  *v61 = *(v2 + 137);
  *&v61[15] = *(v2 + 152);
  v55 = *(v2 + 41);
  v56 = *(v2 + 57);
  v57 = *(v2 + 73);
  v58 = *(v2 + 89);
  v53 = *(v2 + 9);
  v54 = *(v2 + 25);
  ResolvedBorderedButton.specs.getter(v68);
  outlined destroy of BorderedButtonColorSpec(v68);
  v8 = v69;
  static UnitPoint.center.getter();
  v10 = v9;
  v12 = v11;
  v62 = 1;
  KeyPath = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(v4, v5 & 1, &v50);
  if (v50 < 2u)
  {
    v13 = 5;
  }

  else
  {
    v13 = 6;
  }

  v14 = v7;
  LOBYTE(v51) = v13;
  LOBYTE(v46[0]) = 4;
  static Font.Weight.semibold.getter();
  v30 = static Font.system(_:design:weight:)();
  v51 = v4;
  v52 = v5;
  v59 = *(v2 + 105);
  v60 = *(v2 + 121);
  *v61 = *(v2 + 137);
  *&v61[15] = *(v2 + 152);
  v55 = *(v2 + 41);
  v56 = *(v2 + 57);
  v57 = *(v2 + 73);
  v58 = *(v2 + 89);
  v53 = *(v2 + 9);
  v54 = *(v2 + 25);
  ResolvedBorderedButton.padding.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = static Edge.Set.all.getter();
  v63 = 0;
  v51 = v4;
  v52 = v5;
  v59 = *(v2 + 105);
  v60 = *(v2 + 121);
  *v61 = *(v2 + 137);
  *&v61[15] = *(v2 + 152);
  v55 = *(v2 + 41);
  v56 = *(v2 + 57);
  v57 = *(v2 + 73);
  v58 = *(v2 + 89);
  v53 = *(v2 + 9);
  v54 = *(v2 + 25);
  ResolvedBorderedButton.background.getter(v41);
  v37 = v41[3];
  v38 = v41[4];
  v39 = v41[5];
  v40 = v42;
  v34 = v41[0];
  v35 = v41[1];
  v36 = v41[2];
  v24 = static Alignment.center.getter();
  v43[4] = v38;
  v43[5] = v39;
  *(&v64[4] + 7) = v38;
  *(&v64[5] + 7) = v39;
  v43[2] = v36;
  v43[3] = v37;
  *(&v64[3] + 7) = v37;
  *(&v64[2] + 7) = v36;
  v43[0] = v34;
  v43[1] = v35;
  *(&v64[1] + 7) = v35;
  *&v44 = v40;
  *(&v44 + 1) = v24;
  v45 = v25;
  *(&v64[7] + 7) = v25;
  *(v64 + 7) = v34;
  *(&v64[6] + 7) = v44;
  v46[4] = v38;
  v46[5] = v39;
  v46[0] = v34;
  v46[1] = v35;
  v46[2] = v36;
  v46[3] = v37;
  v47 = v40;
  v48 = v24;
  v49 = v25;
  outlined init with copy of _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>(v43, &v33);
  outlined destroy of _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>(v46);
  *a2 = v32;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v14;
  *(a2 + 40) = v8;
  *(a2 + 48) = v8;
  *(a2 + 56) = v10;
  *(a2 + 64) = v12;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = v30;
  *(a2 + 88) = v23;
  *(a2 + 96) = v16;
  *(a2 + 104) = v18;
  *(a2 + 112) = v20;
  *(a2 + 120) = v22;
  *(a2 + 128) = 0;
  v26 = v64[5];
  *(a2 + 193) = v64[4];
  *(a2 + 209) = v26;
  *(a2 + 225) = v64[6];
  *(a2 + 240) = *(&v64[6] + 15);
  v27 = v64[1];
  *(a2 + 129) = v64[0];
  *(a2 + 145) = v27;
  result = *&v64[2];
  v29 = v64[3];
  *(a2 + 161) = v64[2];
  *(a2 + 177) = v29;
  return result;
}

double ResolvedBorderedButton.specs.getter@<D0>(uint64_t a1@<X8>)
{
  v26 = *(v1 + 32);
  v25 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 73);
  v28 = *(v1 + 80);
  v27 = *(v1 + 88);
  v8 = *(v1 + 89);
  v9 = *(v1 + 90);
  v29 = *(v1 + 91);
  v10 = *(v1 + 160);
  if (specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24) & 1))
  {
    v11 = 1.0;
    v12 = 1.0;
    if (v9)
    {
      specialized Environment.wrappedValue.getter(v5, v6 & 0xFFFFFEFF | ((v7 & 1) << 8), &v30);
      v12 = 0.9;
      if ((v31 & (v30 > 2)) != 0)
      {
        v11 = 0.8;
      }

      else
      {
        v11 = 0.9;
      }
    }

    v13 = specialized Environment.wrappedValue.getter(v3, v4 & 1);
    if (!v13)
    {
      if (v8)
      {
        v13 = static Color.accentColor.getter();
      }

      else
      {
        v13 = static Color.red.getter();
      }
    }

    v20 = v13;
    v21 = specialized Environment.wrappedValue.getter(v28, v27 & 1);
    if (v21 == 2)
    {
      if ((v29 & 1) == 0)
      {
LABEL_20:
        swift_retain_n();
        specialized Environment.wrappedValue.getter(v26, v25 & 1, &v33);
        if (v33)
        {

          if (v9)
          {
            v22 = 0.24;
          }

          else
          {
            v22 = 0.32;
          }

          v10 = v20;
        }

        else
        {
          if (v9)
          {
            v22 = 0.2;
          }

          else
          {
            v22 = 0.14;
          }

          if (v20 == static Color.yellow.getter())
          {

            v10 = v20;
          }

          else
          {
            if (v9)
            {
              v23 = 0.18;
            }

            else
            {
              v23 = 0.12;
            }

            v24 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

            if ((v24 & 1) == 0)
            {
              v22 = v23;
            }

            v10 = v20;
          }
        }

        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v29)
    {
      if (v21)
      {
LABEL_18:
        v32 = 0;
        Color.init(_:white:opacity:)();
        v10 = Color.over(_:)();

        v20 = 0;
LABEL_26:
        v22 = 1.0;
LABEL_27:
        *a1 = v10;
        *(a1 + 8) = v22;
        *(a1 + 16) = v12;
        result = 0.0;
        *(a1 + 24) = xmmword_18CD6E1E0;
        *(a1 + 40) = 0;
        *(a1 + 48) = v20;
        *(a1 + 56) = 0x3FF0000000000000;
        *(a1 + 64) = v11;
        return result;
      }
    }

    else if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  *a1 = v10;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_18CD6E1E0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = xmmword_18CDBEFA0;

  return result;
}