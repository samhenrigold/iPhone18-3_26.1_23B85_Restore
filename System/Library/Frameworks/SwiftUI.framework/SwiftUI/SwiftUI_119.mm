uint64_t EditMenuModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v62 = a2;
  swift_getWitnessTable(protocol conformance descriptor for EditMenuModifier<A>);
  v4 = type metadata accessor for _ViewModifier_Content();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = type metadata accessor for EditMenuModifierCore(255, v5, v6, v7);
  v53 = v4;
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>(255);
  v56 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for StaticIf();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v57 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = v51 - v13;
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v51 - v20;
  v61 = v9;
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v54 = v51 - v23;
  EditMenuModifier.id.getter(v69);
  v24 = v69[0];
  (*(v14 + 16))(v17, &v2[*(a1 + 40)], v5);
  v25 = v2;
  v26 = *v2;
  v27 = *(v25 + 1);
  v28 = v25[17];
  v51[1] = v25;
  if (v28)
  {
    v29 = v25[16];
  }

  else
  {
    v63 = v26 & 1;
    v64 = v27;
    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v26 = v67[2];
    v27 = v67[3];
    v29 = v68;
  }

  *v21 = static Anchor.Source<A>.bounds.getter();
  *(v21 + 2) = v24;
  v31 = type metadata accessor for EditMenuModifierCore(0, v5, v6, v30);
  (*(v14 + 32))(&v21[*(v31 + 40)], v17, v5);
  v32 = &v21[*(v31 + 44)];
  *v32 = v26;
  *(v32 + 1) = v27;
  v32[16] = v29 & 1;
  v33 = v53;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v53);
  v35 = v54;
  v36 = v33;
  v37 = v52;
  MEMORY[0x18D00A570](v21, v36, v52, WitnessTable);
  v38 = (*(v18 + 8))(v21, v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v40 = lazy protocol witness table accessor for type DeferTriggerPredicate and conformance DeferTriggerPredicate();
  v67[0] = WitnessTable;
  v67[1] = &protocol witness table for EditMenuModifierCore<A>;
  v41 = MEMORY[0x1E697E858];
  v42 = v61;
  v43 = swift_getWitnessTable(MEMORY[0x1E697E858], v61, v67);
  v44 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
  v66[0] = v43;
  v66[1] = v44;
  v50 = swift_getWitnessTable(v41, v56, v66);
  v45 = v57;
  StaticIf<>.init(_:then:else:)();
  v65[0] = v40;
  v65[1] = v43;
  v65[2] = v50;
  v46 = v60;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v60, v65);
  v47 = v58;
  static ViewBuilder.buildExpression<A>(_:)();
  v48 = *(v59 + 8);
  v48(v45, v46);
  static ViewBuilder.buildExpression<A>(_:)();
  v48(v47, v46);
  return (*(v55 + 8))(v35, v42);
}

uint64_t closure #1 in EditMenuModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EditMenuModifier(255, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for EditMenuModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for EditMenuModifierCore(255, a2, a3, v8);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7, v11);
  v15[1] = &protocol witness table for EditMenuModifierCore<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v10 + 8))(v13, v9);
}

uint64_t closure #2 in EditMenuModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EditMenuModifier(255, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for EditMenuModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for EditMenuModifierCore(255, a3, a4, v8);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>(255);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  EditMenuModifier.editMenuGesture.getter(v6);
  v23[2] = v26;
  v24 = v27;
  v25 = v28;
  type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>(0);
  v23[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v23[1] = &protocol witness table for EditMenuModifierCore<A>;
  v17 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v23);
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, MEMORY[0x1E697E238]);
  View.gesture<A>(_:including:)();

  v19 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
  v22[0] = WitnessTable;
  v22[1] = v19;
  swift_getWitnessTable(v17, v10, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v11 + 8);
  v20(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v16, v10);
}

double EditMenuModifier.editMenuGesture.getter(uint64_t a1)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
  Gesture.eventFilter<A>(forType:_:)();
  v10 = v12;
  v11 = v13;
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 16);
  (*(v4 + 32))(v7 + v6, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #2 in EditMenuModifier.editMenuGesture.getter;
  *(v8 + 24) = v7;
  type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>(0);
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<()>, TapGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>, MEMORY[0x1E697E860]);
  Gesture.onEnded(_:)();

  return result;
}

uint64_t closure #2 in EditMenuModifier.editMenuGesture.getter(uint64_t result)
{
  if ((*(result + 17) & 1) != 0 || *(result + 8))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

double static EditMenuModifierCore._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  v50 = *a1;
  v10 = a2[3];
  v91 = a2[2];
  v92 = v10;
  v93 = a2[4];
  v94 = *(a2 + 20);
  v11 = a2[1];
  v89 = *a2;
  v90 = v11;
  v58 = *(a2 + 14);
  v57 = *(a2 + 6);
  v12 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v77 = v57;
  DWORD2(v77) = v58;
  v13 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v12 & 1) != 0 || (v13)
  {
    lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction();
    PropertyList.subscript.getter();
    v46 = v77;
    UniqueID.init()();
    v15 = v77;
    v85 = v91;
    v86 = v92;
    v87 = v93;
    v88 = v94;
    v83 = v89;
    v84 = v90;
    v48 = v12;
    v49 = a6;
    v45 = v77;
    if (v12)
    {
      v16 = a5;
      v79 = v91;
      v80 = v92;
      v81 = v93;
      v17 = HIDWORD(v92);
      LODWORD(v82[0]) = v94;
      v77 = v89;
      v78 = v90;
      outlined init with copy of _ViewInputs(&v89, &v65);
      *&v77 = __PAIR64__(_ViewInputs.position.getter(), v17);
      *(&v77 + 1) = v15;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
      Attribute.init<A>(body:value:flags:update:)();
      _ViewInputs.transform.setter();
    }

    else
    {
      v16 = a5;
      outlined init with copy of _ViewInputs(&v89, &v77);
    }

    v71[2] = v85;
    v71[3] = v86;
    v71[4] = v87;
    v72 = v88;
    v71[0] = v83;
    v71[1] = v84;
    v79 = v85;
    v80 = v86;
    v81 = v87;
    LODWORD(v82[0]) = v88;
    v77 = v83;
    v78 = v84;
    v18 = outlined init with copy of _ViewInputs(v71, &v65);
    a3(&v55, v18, &v77);
    v73[2] = v79;
    v73[3] = v80;
    v73[4] = v81;
    v74 = v82[0];
    v73[0] = v77;
    v73[1] = v78;
    outlined destroy of _ViewInputs(v73);
    v75[2] = v85;
    v75[3] = v86;
    v75[4] = v87;
    v76 = v88;
    v75[0] = v83;
    v75[1] = v84;
    outlined destroy of _ViewInputs(v75);
    v19 = v50;
    LODWORD(v59) = v50;
    type metadata accessor for EditMenuModifierCore(255, a4, v16, v20);
    v21 = type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v79 = v91;
    v80 = v92;
    v81 = v93;
    LODWORD(v82[0]) = v94;
    v77 = v89;
    v78 = v90;
    v23 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v77, 1, &v65);
    v47 = &v44;
    MEMORY[0x1EEE9AC00](v23);
    *&v77 = &type metadata for AllPlatformItemListFlags;
    *(&v77 + 1) = a4;
    *&v78 = &protocol witness table for AllPlatformItemListFlags;
    *(&v78 + 1) = v16;
    v24 = type metadata accessor for PlatformItemListGenerator(0, &v77);
    v43[2] = v24;
    v43[3] = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v24);
    outlined init with copy of _ViewInputs(&v89, &v77);
    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v65, closure #1 in Attribute.init<A>(_:)partial apply, v43, v24, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v80 = v68;
    v81 = v69;
    v82[0] = v70[0];
    *(v82 + 12) = *(v70 + 12);
    v77 = v65;
    v78 = v66;
    v79 = v67;
    (*(*(v24 - 8) + 8))(&v77, v24);
    LODWORD(v65) = v19;
    v27 = v16;
    v28 = v21;
    _GraphValue.value.getter();
    closure #2 in static EditMenuModifierCore._makeView(modifier:inputs:body:)(1, a4, v27, v29);
    v30 = AGGraphCreateOffsetAttribute2();
    v31 = v55;
    if (v48)
    {
      v48 = v30;
      *&v65 = v55;
      DWORD2(v65) = LODWORD(v56);
      v32 = PreferencesOutputs.subscript.getter();
      if ((v32 & 0x100000000) == 0)
      {
        v33 = v32;
        v54 = v50;
        LODWORD(v47) = _GraphValue.value.getter();
        v67 = v91;
        v68 = v92;
        v69 = v93;
        LODWORD(v70[0]) = v94;
        v65 = v89;
        v66 = v90;
        v44 = v28;
        v53[0] = v55;
        *&v53[1] = v56;
        type metadata accessor for EditMenuResponder(0);
        v34 = swift_allocObject();
        *(v34 + 308) = 0;
        outlined init with copy of _ViewInputs(&v89, &v59);
        outlined init with copy of _ViewInputs(&v89, &v59);

        *(v34 + 308) = AGCreateWeakAttribute();
        *(v34 + 296) = 0;
        *(v34 + 304) = 0;
        *(v34 + 296) = AGCreateWeakAttribute();
        v61 = v91;
        v62 = v92;
        v63 = v93;
        v64 = v94;
        v59 = v89;
        v60 = v90;
        v51 = 0;
        v52 = v45;
        v35 = UIViewSnapshotResponder.init(inputs:space:displayList:)(&v59, &v52, v33);
        EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(&v65, v35, a4, v27, &v59);
        v65 = v59;
        v66 = v60;
        *&v67 = v61;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type EditMenuResponderFilter and conformance EditMenuResponderFilter();
        Attribute.init<A>(body:value:flags:update:)();
        outlined destroy of ContextMenuResponderFilter(&v59);
        LOBYTE(v65) = 0;
        v36 = PreferencesOutputs.subscript.setter();
        if ((v46 & 1) == 0)
        {
          LODWORD(v53[0]) = v50;
          v37 = _GraphValue.value.getter();
          v67 = v91;
          v68 = v92;
          v69 = v93;
          LODWORD(v70[0]) = v94;
          v65 = v89;
          v66 = v90;
          v38 = _ViewInputs.position.getter();
          v39 = Attribute<A>.origin()();
          *&v65 = v57;
          DWORD2(v65) = v58;
          MEMORY[0x1EEE9AC00](v39);
          v43[-4] = a4;
          v43[-3] = v27;
          LODWORD(v43[-2]) = v37;
          HIDWORD(v43[-2]) = v38;
          LODWORD(v43[-1]) = v40;
          HIDWORD(v43[-1]) = v41;
          outlined init with copy of PreferencesInputs(&v57, v53);
          PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
        }

        *&v65 = v57;
        DWORD2(v65) = v58;
        MEMORY[0x1EEE9AC00](v36);
        v43[-2] = &v89;
        outlined init with copy of PreferencesInputs(&v57, v53);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

        v31 = v55;
      }
    }

    v42 = v49;
    *v49 = v31;
    result = v56;
    v42[1] = v56;
  }

  else
  {
    v79 = v91;
    v80 = v92;
    v81 = v93;
    LODWORD(v82[0]) = v94;
    v77 = v89;
    v78 = v90;
    (a3)();
  }

  return result;
}

uint64_t closure #2 in static EditMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EditMenuModifierCore(0, a2, a3, a4);
  v6 = *(v5 + 44);
  v12[2] = v5;
  type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = a2[2];
  v9 = a2[4];
  v20 = a2[3];
  v21 = v9;
  v10 = a2[1];
  v19[0] = *a2;
  v22 = *(a2 + 20);
  v19[1] = v10;
  v19[2] = v8;
  closure #1 in EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(1, a4, a5, a3);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v12 = _ViewOutputs.viewResponders()();

  v13 = _ViewInputs.animatedPosition()();
  v14 = HIDWORD(v20);
  swift_beginAccess();
  v15 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v16 = _ViewInputs.containerPosition.getter();
  v17 = _ViewInputs.isEnabled.getter();
  result = outlined destroy of _ViewInputs(v19);
  *a6 = OffsetAttribute2;
  *(a6 + 4) = v12;
  *(a6 + 8) = v13;
  *(a6 + 12) = v14;
  *(a6 + 16) = v15;
  *(a6 + 20) = v16;
  *(a6 + 24) = v17;
  *(a6 + 32) = a3;
  return result;
}

uint64_t implicit closure #2 in static EditMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8[0] = a1;
  v8[1] = a2;
  v10 = type metadata accessor for EditMenuTransform(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditMenuTransform<A>, v10);
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, closure #1 in Attribute.init<A>(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7;
}

uint64_t EditMenuTransform.modifier.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for EditMenuModifierCore(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance EditMenuModifierCore<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditMenuModifierCore<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double (*EditMenuTransform.value.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1)
{
  v26 = a4;
  v8 = type metadata accessor for EditMenuModifierCore(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v28 = HIDWORD(a2);
  v29 = HIDWORD(a1);
  AnchorGeometry.init(position:size:transform:)();
  v12 = v31;
  v27 = v32;
  EditMenuTransform.modifier.getter(a3, a4, v11);
  v13 = &v11[*(v8 + 44)];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = v13[16];
  v17 = *(v9 + 8);

  v24 = v8;
  v25 = v17;
  v17(v11, v8);
  v31 = v15;
  v32 = v14;
  v33 = v16;
  type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v30);

  v18 = v26;

  if (v30 == 1)
  {
    EditMenuTransform.modifier.getter(a3, v18, v11);

    v25(v11, v24);
  }

  type metadata accessor for CGRect(0);
  Anchor.Source.init<A>(_:)();
  v31 = v12;
  LODWORD(v32) = v27;
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
  v19 = Anchor.Source.prepare(geometry:)();

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = v18;
  v21 = v28;
  v22 = v29;
  *(v20 + 32) = a1;
  *(v20 + 36) = v22;
  *(v20 + 40) = a2;
  *(v20 + 44) = v21;
  *(v20 + 48) = v19;
  return partial apply for closure #1 in EditMenuTransform.value.getter;
}

double closure #1 in EditMenuTransform.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v9 = type metadata accessor for EditMenuModifierCore(0, a5, a6, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  outlined consume of EditMenuPresentation?(*a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  EditMenuTransform.modifier.getter(a5, a6, v15);
  v23 = *(v15 + 2);
  v16 = *(v10 + 8);
  v16(v15, v9);
  EditMenuTransform.modifier.getter(a5, a6, v12);
  v17 = &v12[*(v9 + 44)];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = v17[16];

  v16(v12, v9);
  v21 = v24;
  *a1 = v23;
  a1[1] = 0;
  a1[2] = v18;
  a1[3] = v19;
  a1[4] = v20;
  a1[5] = v21;

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance EditMenuTransform<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = EditMenuTransform.value.getter(*v2, v2[1], *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t closure #1 in EditMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for EditMenuModifierCore(0, a2, a3, a4);
  v5 = MEMORY[0x1E697DFC0];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 8, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t EditMenuResponderFilter.updateValue()()
{
  v1 = v0;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  AGGraphGetValue();
  if (((v4 | v7) & 1) != 0 || (type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue()))
  {
    v8 = *(v1 + 32);
    *(v8 + 224) = MEMORY[0x18D00B390]();
    *(v8 + 232) = v9;
    *(v8 + 240) = v5;
    *(v8 + 248) = v6;
  }

  v10 = *(v1 + 32);
  *(v10 + 304) = *AGGraphGetValue();

  *(v10 + 256) = AGCreateWeakAttribute();
  *(v10 + 264) = *AGGraphGetValue();
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v11)
  {

    MultiViewResponder.children.setter();
  }

  v12 = AGGraphGetValue();
  v13 = v6 - v12[1];
  *(v10 + 280) = v5 - *v12;
  *(v10 + 288) = v13;
  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18CD69590;
    *(v15 + 32) = v10;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in EditMenuResponder.setPresentationState(to:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  AGGraphClearUpdate();
  closure #1 in closure #1 in EditMenuResponder.setPresentationState(to:)(a1, v2);

  return AGGraphSetUpdate();
}

double closure #1 in closure #1 in EditMenuResponder.setPresentationState(to:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (AGGraphGetWeakValue())
    {

      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

double EditMenuResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

void type metadata accessor for ViewInputFlagModifier<ClientHandlesEditMenuTrigger>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ClientHandlesEditMenuTrigger>)
  {
    lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<ClientHandlesEditMenuTrigger>);
    }
  }
}

double destroy for ActiveEditMenu(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for ActiveEditMenu(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for ActiveEditMenu(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for ActiveEditMenu(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t storeEnumTagSinglePayload for ActiveEditMenu(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

double destroy for EditMenuPresentation()
{

  return result;
}

uint64_t initializeWithCopy for EditMenuPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for EditMenuPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for EditMenuPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t type metadata completion function for EditMenuModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *initializeBufferWithCopyOfBuffer for EditMenuModifier(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-25 - v7) | v7) - *(v6 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *(a2 + 17);
    if (v11 >= 2)
    {
      v11 = *a2 + 2;
    }

    if (v11 == 1)
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[16] = *(a2 + 16);

      v13 = 1;
    }

    else
    {
      v13 = 0;
      *a1 = *a2;
      v12 = a2[1];
    }

    *(v4 + 1) = v12;
    v4[17] = v13;
    v14 = ((v4 + 21) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    (*(v6 + 16))((v14 + v7 + 4) & ~v7, (v15 + v7 + 4) & ~v7, v5);
  }

  else
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return v4;
}

uint64_t destroy for EditMenuModifier(uint64_t a1, uint64_t a2)
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
  v6 = *(v5 + 8);
  v7 = (((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL) + *(v5 + 80) + 4) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for EditMenuModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v9 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 16))((v9 + *(v11 + 80) + 4) & ~*(v11 + 80), (v10 + *(v11 + 80) + 4) & ~*(v11 + 80));
  return a1;
}

uint64_t assignWithCopy for EditMenuModifier(uint64_t a1, uint64_t *a2, uint64_t a3, __n128 a4)
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
      *(a1 + 8) = a2[1];
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = a2[1];
      *(a1 + 17) = 0;
    }
  }

  v9 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 24))((v9 + *(v11 + 80) + 4) & ~*(v11 + 80), (v10 + *(v11 + 80) + 4) & ~*(v11 + 80));
  return a1;
}

uint64_t initializeWithTake for EditMenuModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 17);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a1 = *a2;
  }

  *(a1 + 17) = v5;
  v6 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + 4) & ~*(v8 + 80), (v7 + *(v8 + 80) + 4) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithTake for EditMenuModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 17);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    v7 = *(a2 + 17);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *a1 = *a2;
    }

    *(a1 + 17) = v8;
  }

  v9 = ((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((a2 + 21) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 40))((v9 + *(v11 + 80) + 4) & ~*(v11 + 80), (v10 + *(v11 + 80) + 4) & ~*(v11 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for EditMenuModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
      }

      v15 = *(a1 + 17);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
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

void storeEnumTagSinglePayload for EditMenuModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
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
        a1[2] = BYTE2(v18);
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
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 21) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[17] = -a2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActiveEditMenu()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActiveEditMenu(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_activeEditMenu@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance DeferTriggerPredicate(_OWORD *a1)
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
  v4 = specialized static DeferTriggerPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ProvidesEditMenuInteraction(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

unint64_t lazy protocol witness table accessor for type ActiveEditMenu and conformance ActiveEditMenu()
{
  result = lazy protocol witness table cache variable for type ActiveEditMenu and conformance ActiveEditMenu;
  if (!lazy protocol witness table cache variable for type ActiveEditMenu and conformance ActiveEditMenu)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActiveEditMenu, &type metadata for ActiveEditMenu, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActiveEditMenu and conformance ActiveEditMenu);
  }

  return result;
}

void type metadata accessor for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>)
  {
    type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>(255);
    _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, MEMORY[0x1E697E238]);
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>)
  {
    type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>(255);
    _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<()>, TapGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for _EndedGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EndedGesture<ModifierGesture<EventFilter<()>, TapGesture>>);
    }
  }
}

void type metadata accessor for ModifierGesture<EventFilter<()>, TapGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<()>, TapGesture>)
  {
    type metadata accessor for EventFilter<()>(255, &lazy cache variable for type metadata for EventFilter<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DCD8]);
    lazy protocol witness table accessor for type EventFilter<()> and conformance EventFilter<A>();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<()>, TapGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EventFilter<()> and conformance EventFilter<A>()
{
  result = lazy protocol witness table cache variable for type EventFilter<()> and conformance EventFilter<A>;
  if (!lazy protocol witness table cache variable for type EventFilter<()> and conformance EventFilter<A>)
  {
    type metadata accessor for EventFilter<()>(255, &lazy cache variable for type metadata for EventFilter<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DCD8]);
    result = swift_getWitnessTable(MEMORY[0x1E697DCE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventFilter<()> and conformance EventFilter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeferTriggerPredicate and conformance DeferTriggerPredicate()
{
  result = lazy protocol witness table cache variable for type DeferTriggerPredicate and conformance DeferTriggerPredicate;
  if (!lazy protocol witness table cache variable for type DeferTriggerPredicate and conformance DeferTriggerPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeferTriggerPredicate, &unk_1EFFD6B88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DeferTriggerPredicate and conformance DeferTriggerPredicate);
  }

  return result;
}

uint64_t partial apply for closure #2 in EditMenuModifier.editMenuGesture.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for EditMenuModifier(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #2 in EditMenuModifier.editMenuGesture.getter(v6);
}

uint64_t initializeWithCopy for SelectionEditMenuModifier.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for SelectionEditMenuModifier.Child(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for SelectionEditMenuModifier.Child(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for SelectionEditMenuModifier.Child(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t storeEnumTagSinglePayload for SelectionEditMenuModifier.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for EditMenuModifierCore(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EditMenuModifierCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 12) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = (v12 + v6 + 4) & ~v6;
    v15 = (v13 + v6 + 4) & ~v6;
    v16 = *(v5 + 16);

    v16(v14, v15, v4);
    v17 = (v7 + v14) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v7 + v15) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 16) = *(v18 + 16);
  }

  return a1;
}

double destroy for EditMenuModifierCore(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 11;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFFCLL) + *(*(*(a2 + 16) - 8) + 80) + 4) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

void *initializeWithCopy for EditMenuModifierCore(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v10 + 4 + (v4 & 0xFFFFFFFFFFFFFFFCLL)) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);

  return a1;
}

uint64_t *assignWithCopy for EditMenuModifierCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 11;
  *a1 = *a2;
  v6 = a1 + 11;

  *(v6 & 0xFFFFFFFFFFFFFFFCLL) = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = (v9 + 4 + (v6 & 0xFFFFFFFFFFFFFFFCLL)) & ~v9;
  v11 = (v9 + 4 + (v5 & 0xFFFFFFFFFFFFFFFCLL)) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;

  *(v13 + 8) = *(v14 + 8);

  *(v13 + 16) = *(v14 + 16);
  return a1;
}

void *initializeWithTake for EditMenuModifierCore(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 4) & ~v8;
  v10 = (v5 + v8 + 4) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  return a1;
}

void *assignWithTake for EditMenuModifierCore(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 11;
  *a1 = *a2;

  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v6 + v9 + 4) & ~v9;
  v11 = (v9 + 4 + (v5 & 0xFFFFFFFFFFFFFFFCLL)) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;

  *(v13 + 8) = *(v14 + 8);

  *(v13 + 16) = *(v14 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for EditMenuModifierCore(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 12) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for EditMenuModifierCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 12) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = (((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t getEnumTagSinglePayload for EditMenuPresentation.Kind(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for EditMenuPresentation.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t specialized static DeferTriggerPredicate.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) != 0 || (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    return 1;
  }

  lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger();
  PropertyList.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type EditMenuResponderFilter and conformance EditMenuResponderFilter()
{
  result = lazy protocol witness table cache variable for type EditMenuResponderFilter and conformance EditMenuResponderFilter;
  if (!lazy protocol witness table cache variable for type EditMenuResponderFilter and conformance EditMenuResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditMenuResponderFilter, &unk_1EFFD6D58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EditMenuResponderFilter and conformance EditMenuResponderFilter);
  }

  return result;
}

void type metadata accessor for EventFilter<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TextSelection) -> (@owned PlatformItemList)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

double specialized static EditMenuPresentation.Key.reduce(value:nextValue:)(uint64_t *a1, void (*a2)(__int128 *__return_ptr))
{
  v4 = a1[3];
  if (!v4 || (v5 = *(a1 + 32), *&v10 = a1[2], *(&v10 + 1) = v4, LOBYTE(v11) = v5, type metadata accessor for EventFilter<()>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v14), (v14 & 1) == 0))
  {
    a2(&v10);
    v7 = v12;
    v8 = v13;
    outlined consume of EditMenuPresentation?(*a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
    result = *&v10;
    v9 = v11;
    *a1 = v10;
    *(a1 + 1) = v9;
    a1[4] = v7;
    a1[5] = v8;
  }

  return result;
}

uint64_t static ScrollViewDragAutoScrollWriter._makeGesture(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v5;
  v6 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v6;
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v14 = *(a2 + 108);
  v12 = v8;
  v13 = v9;
  a3(v11);
  type metadata accessor for _GestureOutputs();
  _GestureOutputs.phase.getter();
  *&v11[0] = v8;
  DWORD2(v11[0]) = v9;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static ScrollViewDragAutoScrollWriter._makeGesture(modifier:inputs:body:)(unsigned int a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v13 = a1;
  type metadata accessor for ScrollViewDragAutoScrollWriter(255, a3, a3, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12 = a2;
  IsActive = type metadata accessor for ScrollViewDragAutoScrollWriter.IsActive(0, a3, v6, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollViewDragAutoScrollWriter<A>.IsActive, IsActive);
  type metadata accessor for Attribute<Bool>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, closure #1 in Attribute.init<A>(_:)partial apply, v14, IsActive, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

uint64_t closure #1 in implicit closure #1 in static ScrollViewDragAutoScrollWriter._makeGesture(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ScrollViewDragAutoScrollWriter(0, a2, a3, a4);
  v5 = MEMORY[0x1E69E6370];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t ScrollViewDragAutoScrollWriter.IsActive.value.getter(unint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v6 = 0;
  if (*AGGraphGetValue() == 1)
  {
    SequenceEvents.phase.getter(v5);
    v6 = GesturePhase.isActive.getter();
    (*(v3 + 8))(v5, v2);
  }

  return v6 & 1;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollViewDragAutoScrollWriter<A>.IsActive@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = ScrollViewDragAutoScrollWriter.IsActive.value.getter(*v2, *(a1 + 16));
  *a2 = result & 1;
  return result;
}

void type metadata accessor for Attribute<Bool>()
{
  if (!lazy cache variable for type metadata for Attribute<Bool>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<Bool>);
    }
  }
}

uint64_t key path getter for ScrollEnvironmentStorage.baseProperties : ScrollEnvironmentStorage@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentProperties(v3 + 16, a2);
}

uint64_t key path getter for ScrollEnvironmentStorage.transform : ScrollEnvironmentStorage@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, a2);
}

uint64_t key path setter for ScrollEnvironmentStorage.transform : ScrollEnvironmentStorage(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of ScrollEnvironmentTransform?(a1, v3);
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of ScrollEnvironmentTransform?(v3);
}

uint64_t View.scrollContentPadding(_:_:)()
{
  return View.contentMargins(_:_:for:)();
}

{
  return View.contentMargins(_:_:for:)();
}

uint64_t View.scrollIndicators(_:options:axes:)(_BYTE *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v7[0] = *a1;
  v8 = v5;
  v9 = a3;
  return View.transformScrollEnvironment<A>(_:)(v7, a4, &type metadata for TransformScrollIndicators, a5);
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance TransformScrollAccessories(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  if (v2 != 4)
  {
    *(result + 88) = v2;
  }

  if (v3)
  {
    *(result + 89) = v3;
  }

  return result;
}

uint64_t View.scrollAccessoryEdge(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = 0;
  return View.transformScrollEnvironment<A>(_:)(v4, a2, &unk_1EFFD7D50, a3);
}

uint64_t View.scrollAccessoryVisibility(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 4;
  v4[1] = a1;
  return View.transformScrollEnvironment<A>(_:)(v4, a2, &unk_1EFFD7D50, a3);
}

unint64_t ScrollEdgeEffectStyleTransform.update(properties:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v40 = v1[1];
  v4 = v1[2];
  if (v3 == 3)
  {
LABEL_2:
    if (v40 == 2)
    {
      return result;
    }

    v21 = 0;
    while (1)
    {
      v22 = outlined read-only object #1 of ScrollEdgeEffectStyleTransform.update(properties:)[v21 + 32];
      if ((v22 - 9) >= 0xEFu)
      {
        if ((v22 & 0x80) != 0)
        {
          if (v22 > 0xF8)
          {
            LOBYTE(v23) = 0;
LABEL_33:
            if ((v23 & ~v4) != 0)
            {
              goto LABEL_28;
            }
          }
        }

        else if (v22 <= 7)
        {
          v23 = 1 << v22;
          goto LABEL_33;
        }
      }

      v24 = *(v2 + 104);
      if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(outlined read-only object #1 of ScrollEdgeEffectStyleTransform.update(properties:)[v21 + 32]), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + v25);
      }

      else
      {
        v27 = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v2 + 104);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v22);
      v31 = v29[2];
      v32 = (v30 & 1) == 0;
      v13 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v13)
      {
        goto LABEL_50;
      }

      v34 = v30;
      if (v29[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = result;
          specialized _NativeDictionary.copy()();
          result = v39;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v22);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_53;
        }
      }

      v36 = v40 | v27;
      if (v34)
      {
        *(v29[7] + result) = v36 & 1;
      }

      else
      {
        v29[(result >> 6) + 8] |= 1 << result;
        *(v29[6] + result) = v22;
        *(v29[7] + result) = v36 & 1;
        v37 = v29[2];
        v13 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v13)
        {
          goto LABEL_52;
        }

        v29[2] = v38;
      }

      *(v2 + 104) = v29;
LABEL_28:
      if (++v21 == 4)
      {
        return result;
      }
    }
  }

  v5 = 0;
  while (1)
  {
    v6 = outlined read-only object #0 of ScrollEdgeEffectStyleTransform.update(properties:)[v5 + 32];
    if ((v6 - 9) < 0xEFu)
    {
      goto LABEL_13;
    }

    if ((v6 & 0x80) != 0)
    {
      if (v6 <= 0xF8)
      {
        goto LABEL_13;
      }

      LOBYTE(v7) = 0;
    }

    else
    {
      if (v6 > 7)
      {
        goto LABEL_13;
      }

      v7 = 1 << v6;
    }

    if ((v7 & ~v4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 96);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v11 = v9[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_53;
      }

LABEL_18:
      v17 = v9;
      if ((v15 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }

    if (v8)
    {
      goto LABEL_18;
    }

    v20 = result;
    specialized _NativeDictionary.copy()();
    result = v20;
    v17 = v9;
    if ((v15 & 1) == 0)
    {
LABEL_19:
      v17[(result >> 6) + 8] |= 1 << result;
      *(v17[6] + result) = v6;
      *(v17[7] + result) = v3;
      v18 = v17[2];
      v13 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v13)
      {
        goto LABEL_51;
      }

      v17[2] = v19;
      goto LABEL_6;
    }

LABEL_5:
    *(v17[7] + result) = v3;
LABEL_6:
    *(v2 + 96) = v17;
LABEL_7:
    if (++v5 == 4)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance ScrollEdgeEffectDisabledTransform(uint64_t result)
{
  v2 = *v1;
  if (v2 != 2)
  {
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(result + 112);
    }

    *(result + 112) = v3;
  }

  return result;
}

uint64_t View.scrollEdgeEffectHidden(_:for:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 3;
  v5[1] = a1;
  v5[2] = a2;
  return View.transformScrollEnvironment<A>(_:)(v5, a3, &unk_1EFFD7CC8, a4);
}

uint64_t View.scrollEdgeEffectStyle(_:for:)(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a1;
  v5[1] = 2;
  v5[2] = a2;
  return View.transformScrollEnvironment<A>(_:)(v5, a3, &unk_1EFFD7CC8, a4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollInputKind.Storage(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    return (*(a2 + 2) & 1) != 0;
  }

  if (*(a2 + 2))
  {
    return 0;
  }

  if ((*a1 & 0x100) != 0)
  {
    if ((*a2 & 0x100) != 0)
    {
      return 1;
    }
  }

  else if ((*a2 & 0x100) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

BOOL static ScrollInputKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    return (*(a2 + 2) & 1) != 0;
  }

  if (*(a2 + 2))
  {
    return 0;
  }

  if ((*a1 & 0x100) != 0)
  {
    return (*a2 & 0x100) != 0;
  }

  else
  {
    return (*a2 & 0x100) == 0 && *a1 == *a2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScrollInputKind(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    if (*(a2 + 2))
    {
      return 1;
    }
  }

  else if ((*(a2 + 2) & 1) == 0)
  {
    if ((*a1 & 0x100) != 0)
    {
      if ((*a2 & 0x100) != 0)
      {
        return 1;
      }
    }

    else if ((*a2 & 0x100) == 0 && *a1 == *a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t View.scrollInputBehavior(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v6 + 8))(v8, a3);
}

uint64_t EnvironmentValues.verticalScrollIndicatorVisibility.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v13, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v14;
  result = outlined destroy of ScrollEnvironmentProperties(v13);
  *a1 = v6;
  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t EnvironmentValues.verticalScrollIndicatorVisibility.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v13, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v14 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v13, &v11);
  type metadata accessor for ScrollEnvironmentStorage(0);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  *&v11 = ScrollEnvironmentStorage.init(_:transform:)(&v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v13);
}

uint64_t (*EnvironmentValues.verticalScrollIndicatorVisibility.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  EnvironmentValues.verticalScrollIndicatorVisibility.getter((a1 + 8));
  return EnvironmentValues.verticalScrollIndicatorVisibility.modify;
}

uint64_t EnvironmentValues.horizontalScrollIndicatorVisibility.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v13, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v14;
  result = outlined destroy of ScrollEnvironmentProperties(v13);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.horizontalScrollIndicatorVisibility.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v13, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v14 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v13, &v11);
  type metadata accessor for ScrollEnvironmentStorage(0);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  *&v11 = ScrollEnvironmentStorage.init(_:transform:)(&v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v13);
}

uint64_t (*EnvironmentValues.horizontalScrollIndicatorVisibility.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  EnvironmentValues.horizontalScrollIndicatorVisibility.getter((a1 + 8));
  return EnvironmentValues.horizontalScrollIndicatorVisibility.modify;
}

uint64_t ScrollIndicatorsFlashModifier.seed.getter(uint64_t a1)
{
  type metadata accessor for [HandGestureShortcutPaginationDirection](0, &lazy cache variable for type metadata for State<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  return v2;
}

uint64_t ScrollIndicatorsFlashModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorsFlashModifier<A>, v7);
  v8 = type metadata accessor for _ViewModifier_Content();
  v9 = *(a2 + 24);
  v30 = *(a2 + 16);
  v31 = v9;
  updated = type metadata accessor for ScrollIndicatorsFlashModifier.UpdateFlashSeed(255, v30, v9, v10);
  type metadata accessor for TransformScrollStorageModifier(255, updated, &protocol witness table for ScrollIndicatorsFlashModifier<A>.UpdateFlashSeed, v12);
  v33 = type metadata accessor for ModifiedContent();
  v35 = type metadata accessor for _ValueActionModifier2();
  v36 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v28 - v16;
  v29 = v3;
  v42[0] = ScrollIndicatorsFlashModifier.seed.getter(a2);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v8);
  View.transformScrollEnvironment<A>(_:)(v42, v8, updated, WitnessTable);
  v42[0] = v42[1];
  (*(v5 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v30;
  *(v19 + 24) = v20;
  (*(v5 + 32))(v19 + v18, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v41[0] = WitnessTable;
  v41[1] = &protocol witness table for TransformScrollStorageModifier<A>;
  v21 = MEMORY[0x1E697E858];
  v22 = swift_getWitnessTable(MEMORY[0x1E697E858], v33, v41);
  v23 = v32;
  View.onChange<A>(of:initial:_:)();

  v24 = swift_getWitnessTable(MEMORY[0x1E697FDE0], v35);
  v40[0] = v22;
  v40[1] = v24;
  v39[0] = swift_getWitnessTable(v21, v36, v40);
  v39[1] = MEMORY[0x1E69805D0];
  swift_getWitnessTable(v21, v13, v39);
  v25 = v34;
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v37 + 8);
  v26(v23, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v25, v13);
}

void *closure #1 in ScrollIndicatorsFlashModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + *(type metadata accessor for ScrollIndicatorsFlashModifier(0, a2, a3, a4) + 36) + 8);
  type metadata accessor for [HandGestureShortcutPaginationDirection](0, &lazy cache variable for type metadata for State<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  if (v4)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t ScrollIndicatorFlashOnAppearModifier.UpdateIndicators.update(properties:)(uint64_t result, char a2)
{
  v2 = *(result + 128);
  if (a2)
  {
    if ((v2 & 1) == 0)
    {
      *(result + 128) = v2 | 1;
    }

    v3 = *(result + 152);
    if ((v3 & 1) == 0)
    {
      v4 = v3 | 1;
LABEL_10:
      *(result + 152) = v4;
    }
  }

  else
  {
    if (v2)
    {
      *(result + 128) = v2 & 0xFFFFFFFFFFFFFFFELL;
    }

    v5 = *(result + 152);
    if (v5)
    {
      v4 = v5 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t View.scrollIndicatorsFlash<A>(trigger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScrollIndicatorsFlashModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  v19 = &v18[*(v14 + 36)];
  *v19 = 0;
  *(v19 + 1) = 0;
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t ScrollView.scrollDisabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 36) + 40) = a1 ^ 1;
  return result;
}

uint64_t EnvironmentValues.isScrollEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v1 = *v11;
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(*v11 + 16, v11);
  swift_getKeyPath();
  *&v9 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v1 + 280, &v9);
  if (v10)
  {
    outlined init with take of ScrollEnvironmentTransform(&v9, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v3 + 8))(v11, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  v4 = v11[0];
  outlined destroy of ScrollEnvironmentProperties(v11);
  return v4;
}

uint64_t EnvironmentValues.isScrollEnabled.setter(char a1)
{
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v13, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  LOBYTE(v13[0]) &= a1 & 1;
  outlined init with copy of ScrollEnvironmentProperties(v13, &v11);
  type metadata accessor for ScrollEnvironmentStorage(0);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  *&v11 = ScrollEnvironmentStorage.init(_:transform:)(&v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v13);
}

uint64_t (*EnvironmentValues.isScrollEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EnvironmentValues.isScrollEnabled.getter() & 1;
  return EnvironmentValues.isScrollEnabled.modify;
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance ScrollClipTransform(uint64_t result)
{
  v2 = v1[1];
  *(result + 1) &= *v1 & 1;
  if (v2 != 2)
  {
    *(result + 2) = v2 & 1;
  }

  return result;
}

uint64_t View.scrollClipDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1 ^ 1;
  v4[1] = 2;
  return View.transformScrollEnvironment<A>(_:)(v4, a2, &unk_1EFFD79F0, a3);
}

uint64_t View.scrollClipDisabled(_:behavior:)(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v6[0] = a1 ^ 1;
  v6[1] = v4;
  return View.transformScrollEnvironment<A>(_:)(v6, a3, &unk_1EFFD79F0, a4);
}

uint64_t EnvironmentValues.scrollDismissesKeyboardMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v13, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = BYTE3(v13[0]);
  result = outlined destroy of ScrollEnvironmentProperties(v13);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.scrollDismissesKeyboardMode.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v13, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  BYTE3(v13[0]) = v2;
  outlined init with copy of ScrollEnvironmentProperties(v13, &v11);
  type metadata accessor for ScrollEnvironmentStorage(0);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  *&v11 = ScrollEnvironmentStorage.init(_:transform:)(&v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v13);
}

uint64_t (*EnvironmentValues.scrollDismissesKeyboardMode.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  EnvironmentValues.scrollDismissesKeyboardMode.getter((a1 + 8));
  return EnvironmentValues.scrollDismissesKeyboardMode.modify;
}

uint64_t EnvironmentValues.verticalScrollBounceBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v13, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v14;
  result = outlined destroy of ScrollEnvironmentProperties(v13);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.verticalScrollBounceBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v13, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v14 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v13, &v11);
  type metadata accessor for ScrollEnvironmentStorage(0);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  *&v11 = ScrollEnvironmentStorage.init(_:transform:)(&v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v13);
}

uint64_t (*EnvironmentValues.verticalScrollBounceBehavior.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  EnvironmentValues.verticalScrollBounceBehavior.getter((a1 + 8));
  return EnvironmentValues.verticalScrollBounceBehavior.modify;
}

uint64_t EnvironmentValues.horizontalScrollBounceBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
    PropertyList.subscript.getter();
  }

  v3 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v13, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v6 = v14;
  result = outlined destroy of ScrollEnvironmentProperties(v13);
  *a1 = v6;
  return result;
}

uint64_t EnvironmentValues.horizontalScrollBounceBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v13[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v13[0] + 16, v13);
  swift_getKeyPath();
  *&v11 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v4 + 280, &v11);
  if (v12)
  {
    outlined init with take of ScrollEnvironmentTransform(&v11, &v8);
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(v13, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  v14 = v2;
  outlined init with copy of ScrollEnvironmentProperties(v13, &v11);
  type metadata accessor for ScrollEnvironmentStorage(0);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  swift_allocObject();
  *&v11 = ScrollEnvironmentStorage.init(_:transform:)(&v11, &v8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(v13);
}

uint64_t (*EnvironmentValues.horizontalScrollBounceBehavior.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  EnvironmentValues.horizontalScrollBounceBehavior.getter((a1 + 8));
  return EnvironmentValues.horizontalScrollBounceBehavior.modify;
}

uint64_t EnvironmentValues.verticalScrollIndicatorVisibility.modify(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance DisableFocusFastScrolling(uint64_t result)
{
  if (*v1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 82) |= v2;
  return result;
}

uint64_t View.onScrollToTopGesture(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  outlined copy of AppIntentExecutor?(a1, a2);
  View.environment<A>(_:_:)();

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1, a2);
}

uint64_t EnvironmentValues.onScrollToTopGesture.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.onScrollToTopGesture : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.onScrollToTopGesture : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);

  outlined copy of AppIntentExecutor?(v3, v4);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorOptions, &type metadata for ScrollIndicatorOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorOptions, &type metadata for ScrollIndicatorOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorOptions, &type metadata for ScrollIndicatorOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorOptions, &type metadata for ScrollIndicatorOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorOptions and conformance ScrollIndicatorOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectStyle, &type metadata for ScrollEdgeEffectStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectStyle and conformance ScrollEdgeEffectStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1()
{
  result = lazy protocol witness table cache variable for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1;
  if (!lazy protocol witness table cache variable for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollPocketStyle_V1, &type metadata for ScrollPocketStyle_V1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollPocketStyle_V1 and conformance ScrollPocketStyle_V1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HandGestureShortcutPaginationDirection, &type metadata for HandGestureShortcutPaginationDirection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutPaginationDirection and conformance HandGestureShortcutPaginationDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [HandGestureShortcutPaginationDirection] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [HandGestureShortcutPaginationDirection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HandGestureShortcutPaginationDirection] and conformance [A])
  {
    type metadata accessor for [HandGestureShortcutPaginationDirection](255, &lazy cache variable for type metadata for [HandGestureShortcutPaginationDirection], &type metadata for HandGestureShortcutPaginationDirection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [HandGestureShortcutPaginationDirection] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode()
{
  result = lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode;
  if (!lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollDismissesKeyboardMode, &type metadata for ScrollDismissesKeyboardMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode and conformance ScrollDismissesKeyboardMode);
  }

  return result;
}

void *keypath_get_11Tm@<X0>(__int128 *a1@<X0>, void *(*a2)(char *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  result = a2(&v5);
  *a3 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollInputKind(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for ScrollInputKind(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for ScrollEnvironmentTransform?(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage>, type metadata accessor for ScrollEnvironmentStorage, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollEnvironmentStorage> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorFlashOnAppearModifier, &unk_1EFFD7B70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?>)
  {
    type metadata accessor for [HandGestureShortcutPaginationDirection](255, &lazy cache variable for type metadata for ScrollToTopGestureAction?, &type metadata for ScrollToTopGestureAction, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ScrollToTopGestureAction?>);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScrollInputKind.Storage(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFFFF) >> 24 == 255)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((a2 + 0xFFFFFF) >> 24)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return v3;
    }

    if (v3 == 2)
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    else
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    return (*a1 | (*(a1 + 2) << 16) | (v3 << 24)) - 0xFFFFFF;
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for ScrollInputKind.Storage(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFFFF) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 0xFFFFFF) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v4)
    {
      v5 = ((a2 - 1) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t getEnumTag for ScrollInputKind.Storage(unsigned __int16 *a1)
{
  if (*(a1 + 2))
  {
    return (*a1 | (*(a1 + 2) << 16)) - 0xFFFF;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ScrollInputKind.Storage(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = ((a2 - 1) >> 16) + 1;
  }

  else
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t type metadata completion function for ScrollIndicatorsFlashModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollIndicatorsFlashModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
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
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
  }

  return v3;
}

uint64_t initializeWithCopy for ScrollIndicatorsFlashModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  return a1;
}

uint64_t assignWithCopy for ScrollIndicatorsFlashModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  return a1;
}

uint64_t assignWithTake for ScrollIndicatorsFlashModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollIndicatorsFlashModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for ScrollIndicatorsFlashModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
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
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = a2 - 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectStyleTransform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollEdgeEffectStyleTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransformScrollAccessories(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformScrollAccessories(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransformScrollIndicators(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformScrollIndicators(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorVisibility.Role, &type metadata for ScrollIndicatorVisibility.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorVisibility.Role and conformance ScrollIndicatorVisibility.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectStyle.Role, &type metadata for ScrollEdgeEffectStyle.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectStyle.Role and conformance ScrollEdgeEffectStyle.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollInputBehavior.Storage, &type metadata for ScrollInputBehavior.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollInputBehavior.Storage and conformance ScrollInputBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role;
  if (!lazy protocol witness table cache variable for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollClipDisabledBehavior.Role, &type metadata for ScrollClipDisabledBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollClipDisabledBehavior.Role and conformance ScrollClipDisabledBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role()
{
  result = lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role;
  if (!lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollDismissesKeyboardMode.Role, &type metadata for ScrollDismissesKeyboardMode.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollDismissesKeyboardMode.Role and conformance ScrollDismissesKeyboardMode.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role;
  if (!lazy protocol witness table cache variable for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollBounceBehavior.Role, &type metadata for ScrollBounceBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollBounceBehavior.Role and conformance ScrollBounceBehavior.Role);
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.onScrollToTopGesture.getter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

void *partial apply for closure #1 in ScrollIndicatorsFlashModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for ScrollIndicatorsFlashModifier(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in ScrollIndicatorsFlashModifier.body(content:)(v9, v5, v6, v7);
}

uint64_t outlined destroy of ScrollEnvironmentTransform?(uint64_t a1)
{
  type metadata accessor for ScrollEnvironmentTransform?(0, &lazy cache variable for type metadata for ScrollEnvironmentTransform?, type metadata accessor for ScrollEnvironmentTransform, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollIndicatorConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollIndicatorConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, lazy protocol witness table accessor for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier, &unk_1EFFD7B70);
    v5[1] = &protocol witness table for TransformScrollStorageModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>)
  {
    type metadata accessor for _ViewModifier_Content<ResetScrollEnvironmentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, lazy protocol witness table accessor for type ScrollIndicatorFlashOnAppearModifier and conformance ScrollIndicatorFlashOnAppearModifier, &unk_1EFFD7B70);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>, &unk_1EFFD8040, &protocol witness table for ScrollIndicatorFlashOnAppearModifier.UpdateIndicators, type metadata accessor for TransformScrollStorageModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier>, TransformScrollStorageModifier<ScrollIndicatorFlashOnAppearModifier.UpdateIndicators>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value()
{
  result = lazy protocol witness table cache variable for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value;
  if (!lazy protocol witness table cache variable for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollIndicatorStyle.Value, &type metadata for ScrollIndicatorStyle.Value, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollIndicatorStyle.Value and conformance ScrollIndicatorStyle.Value);
  }

  return result;
}

Swift::String __swiftcall currentAppName()()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = specialized NSBundle.localizedValue(for:)(0xD000000000000013, 0x800000018CD4F860);
  v4 = v3;

  if (!v4)
  {
    v5 = [v0 mainBundle];
    v2 = specialized NSBundle.localizedValue(for:)(0x656C646E75424643, 0xEC000000656D614ELL);
    v4 = v6;

    if (!v4)
    {
      v7 = [objc_opt_self() processInfo];
      v8 = [v7 processName];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v9;
    }
  }

  v10 = v2;
  v11 = v4;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t specialized NSBundle.localizedValue(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = [v5 localizedInfoDictionary];

  if (v6)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
    {
      outlined init with copy of Any(*(v7 + 56) + 32 * v8, v16);

      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {
    }
  }

  v11 = [v4 mainBundle];
  v12 = [v11 infoDictionary];

  if (!v12)
  {
    return 0;
  }

  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v15 & 1) == 0))
  {

    return 0;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v14, v16);

  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void RotatingDisclosureIndicator.body.getter(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if ((a1 & 0x100) != 0)
  {
    v4 = 1.57079633;
  }

  else
  {
    v4 = 0.0;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0x6465646E61707865;
  }

  else
  {
    v5 = 0x657370616C6C6F63;
  }

  if ((a1 & 0x100) != 0)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  AccessibilityProperties.init()();

  v11[0] = v5;
  v11[1] = v6;
  v12 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v11);
  _s7SwiftUI7BindingVySbGMaTm_7(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);
  static UnitPoint.center.getter();
  *a2 = v2 & 1;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
}

double closure #1 in static RotatingDisclosureIndicator.toggle(_:)(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t closure #1 in closure #1 in static RotatingDisclosureIndicator.toggle(_:)(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI7BindingVySbGMaTm_7(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

void protocol witness for View.body.getter in conformance RotatingDisclosureIndicator(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  RotatingDisclosureIndicator.body.getter(v2 | *v1, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, lazy protocol witness table accessor for type ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E900]);
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>(255);
    type metadata accessor for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>, ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>)
  {
    type metadata accessor for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>)
  {
    lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_DisclosureIndicator, AccessibilityAttachmentModifier>, _RotationEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type _DisclosureIndicator and conformance _DisclosureIndicator()
{
  result = lazy protocol witness table cache variable for type _DisclosureIndicator and conformance _DisclosureIndicator;
  if (!lazy protocol witness table cache variable for type _DisclosureIndicator and conformance _DisclosureIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _DisclosureIndicator, &type metadata for _DisclosureIndicator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DisclosureIndicator and conformance _DisclosureIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<DisclosureIndicatorDifferentiatesWithoutColor> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance DividerShape<A>(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DividerShape<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DividerShape<A>, a3);

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DividerShape<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DividerShape<A>, a3);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for View.body.getter in conformance DividerShape<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DividerShape<A>, a1);

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t one-time initialization function for sharedColor()
{
  lazy protocol witness table accessor for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle();
  result = Color.init<A>(provider:)();
  static PlainDividerShapeStyle.sharedColor = result;
  return result;
}

void protocol witness for ShapeStyle.resolve(in:) in conformance PlainDividerShapeStyle(_DWORD *a1@<X8>, __int128 *a2@<X0>)
{
  specialized PlainDividerShapeStyle.resolve(in:)(a2);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t protocol witness for ColorProvider.tag.getter in conformance PlainDividerShapeStyle@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag(0);
  result = swift_allocObject();
  *(result + 16) = 1;
  *a1 = result;
  return result;
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance PlainDividerShapeStyle(__int128 *a1@<X0>, _DWORD *a2@<X8>)
{
  v7 = *a1;
  specialized PlainDividerShapeStyle.resolve(in:)(&v7);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = 2143289344;
}

double specialized PlainDividerShapeStyle._apply(to:)(uint64_t a1)
{

  v1 = EnvironmentValues.isVisionEnabled.getter();

  if (v1)
  {
    SeparatorShapeStyle._apply(to:)();
  }

  else
  {

    EnvironmentValues.backgroundMaterial.getter();

    if (v4 == 0xFF)
    {
      if (one-time initialization token for sharedColor != -1)
      {
        swift_once();
      }
    }

    else
    {
      outlined consume of Material?(v3, v4);
      static Color.quaternary.getter();
    }

    Color._apply(to:)();
  }

  return result;
}

void TableColumnForEach.IDGenerator.makeID(data:index:offset:)(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X5>, void *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v18 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17 - v14;
  if (a3)
  {
    v16 = dispatch thunk of Collection.subscript.read();
    (*(v12 + 16))(v15);
    v16(v19, 0);
    swift_getAtKeyPath();
    (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v19[0] = a2;
    if (*(*(v18 - 8) + 64) == 8)
    {
      (*(*(v18 - 8) + 16))(a6, v19, v13);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t TableColumnForEach.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 84));

  return v2;
}

void TableColumnForEach.content.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 84));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t TableColumnForEach.init<>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  *(&v19 + 1) = swift_getAssociatedConformanceWitness();
  *&v19 = a9;
  return TableColumnForEach.init(_:id:content:)(a1, KeyPath, a2, a3, a4, a6, a7, a8, x8_0, v19, a10);
}

uint64_t TableColumnForEach.init(_:id:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v19 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v22[0] = a5;
  v22[1] = v19;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  v23 = a10;
  v24 = a11;
  result = type metadata accessor for TableColumnForEach(0, v22);
  *(a9 + *(result + 88)) = a2;
  v21 = (a9 + *(result + 84));
  *v21 = a3;
  v21[1] = a4;
  return result;
}

double TableColumnForEach.init<>(_:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a3;
  v16[7] = a4;
  type metadata accessor for Range<Int>();
  v18 = v17;
  v19 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  (*(*(v18 - 8) + 32))(v26, v25, v18);
  v28[0] = v18;
  v28[1] = MEMORY[0x1E69E6530];
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a7;
  v28[5] = v19;
  v28[6] = MEMORY[0x1E69E6540];
  v28[7] = a8;
  v20 = type metadata accessor for TableColumnForEach(0, v28);
  *(v26 + *(v20 + 88)) = 0;
  v21 = (v26 + *(v20 + 84));
  *v21 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out D);
  v21[1] = v16;
  v22 = v27;
  result = *v26;
  v24 = v26[1];
  *a9 = v26[0];
  *(a9 + 16) = v24;
  *(a9 + 32) = v22;
  return result;
}

uint64_t static TableColumnForEach._makeContent(content:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a10)
{
  *&v27 = a7;
  *(&v27 + 1) = a8;
  v50 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v28 = *a1;
  v15 = a2[3];
  v46[2] = a2[2];
  v47 = v15;
  v48 = a2[4];
  v49 = *(a2 + 20);
  v16 = a2[1];
  v46[0] = *a2;
  v46[1] = v16;
  *&v40 = a3;
  *(&v40 + 1) = a4;
  *&v41 = a7;
  *(&v41 + 1) = a8;
  v42 = a10;
  type metadata accessor for TableColumnForEachState(0, &v40);
  v17 = a2[3];
  v42 = a2[2];
  v43 = v17;
  v44 = a2[4];
  v45 = *(a2 + 20);
  v18 = a2[1];
  v40 = *a2;
  v41 = v18;
  outlined init with copy of _TableColumnInputs(v46, &v38);
  swift_allocObject();
  v19 = TableColumnForEachState.init(inputs:)(&v40);
  LODWORD(v38) = v14;

  *&v40 = a3;
  *(&v40 + 1) = a4;
  *&v41 = a5;
  *(&v41 + 1) = a6;
  v42 = v27;
  v43 = a10;
  type metadata accessor for TableColumnForEach(255, &v40);
  type metadata accessor for _GraphValue();
  v20 = _GraphValue.value.getter();
  v38 = v19;
  v39 = v20;
  *&v40 = a3;
  *(&v40 + 1) = a4;
  v41 = v27;
  v42 = a10;
  v35 = type metadata accessor for TableColumnForEachState.Info(0, &v40);
  *&v40 = a3;
  *(&v40 + 1) = a4;
  v41 = v27;
  v42 = a10;
  v36 = type metadata accessor for TableColumnForEachState.Info.Init(0, &v40);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableColumnForEachState<A, B, C>.Info.Init, v36);
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v34, v36, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

  v19[28] = v40;
  *(v19 + 116) = 0;
  LODWORD(v40) = v28;

  v23 = _GraphValue.value.getter();
  v38 = v19;
  v39 = v23;
  *&v40 = a3;
  *(&v40 + 1) = a4;
  *&v41 = a5;
  *(&v41 + 1) = a6;
  v42 = v27;
  v43 = a10;
  List = type metadata accessor for TableColumnForEach.MakeList(0, &v40);
  v33 = swift_getWitnessTable(protocol conformance descriptor for TableColumnForEach<A, B, C, D, E>.MakeList, List);
  type metadata accessor for Attribute<TableColumnList>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, closure #1 in Attribute.init<A>(_:)partial apply, v31, List, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);

  v19[30] = v40;
  *(v19 + 124) = 0;
  PreferencesOutputs.init()();
  *&v40 = v47;
  DWORD2(v40) = DWORD2(v47);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t TableColumnForEach.MakeList.forEach.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a9;
  v14[7] = a10;
  v11 = type metadata accessor for TableColumnForEach(0, v14);
  Value = AGGraphGetValue();
  return (*(*(v11 - 8) + 16))(a8, Value, v11);
}

uint64_t TableColumnForEach.MakeList.value.getter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = a6;
  v26 = a8;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a10;
  v36 = a11;
  v23 = a10;
  v24 = a11;
  v27 = type metadata accessor for TableColumnForEach(0, &v29);
  v17 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v19 = &v23 - v18;

  v21 = v25;
  v20 = v26;
  TableColumnForEach.MakeList.forEach.getter(a3, a4, a5, v25, a7, v26, v19, a10, a11);
  TableColumnForEachState.update(forEach:)(v19);
  (*(v17 + 8))(v19, v27);
  LODWORD(v17) = *(a1 + *(*a1 + 184));
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = v21;
  v33 = a7;
  v34 = v20;
  v35 = v23;
  v36 = v24;
  result = type metadata accessor for TableColumnForEach.DynamicTableColumnList(0, &v29);
  *(a9 + 24) = result;
  *(a9 + 32) = &protocol witness table for TableColumnForEach<A, B, C, D, E>.DynamicTableColumnList;
  *a9 = a1;
  *(a9 + 8) = v17;
  return result;
}

void TableColumnForEachState.update(forEach:)(uint64_t a1)
{
  v194 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 104);
  v188 = *(v5[1] + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v172 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v190 = (&v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v171 = &v162 - v8;
  v9 = *(v2 + 88);
  v176 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v193 = (&v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v186 = &v162 - v13;
  v14 = *(v2 + 96);
  *&v15 = v4;
  *(&v15 + 1) = v9;
  *&v16 = v14;
  v185 = v5;
  *(&v16 + 1) = v5;
  v197 = v16;
  v189 = v3;
  v17 = *(v3 + 112);
  v205 = v15;
  v206 = v16;
  v174 = v17;
  v207 = v17;
  v18 = *(&v17 + 1);
  v19 = type metadata accessor for TableColumnForEachState.Item(255, &v205);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = type metadata accessor for Optional();
  v166 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v191 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v179 = &v162 - v24;
  v170 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v167 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v162 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v168 = &v162 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v183 = v18;
  v184 = v14;
  v32 = swift_getAssociatedTypeWitness();
  v195 = v4;
  *&v205 = v4;
  *(&v205 + 1) = v9;
  v182 = v31;
  *&v206 = v31;
  *(&v206 + 1) = v32;
  v181 = v32;
  v208 = v174;
  v207 = v197;
  v33 = type metadata accessor for TableColumnForEach(255, &v205);
  v34 = type metadata accessor for Optional();
  v35 = *(v34 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v162 - v39;
  v196 = v1;
  if (!AGSubgraphIsValid())
  {
    return;
  }

  v165 = v37;
  v175 = v21;
  v178 = TupleTypeMetadata2;
  v41 = *(v189 + 184);
  v42 = v196;
  v177 = *(v196 + v41);
  v187 = v41;
  *(v196 + v41) = v177 + 1;
  v43 = v42 + *(*v42 + 160);
  swift_beginAccess();
  v44 = *(v35 + 16);
  v173 = v43;
  v44(v40, v43, v34);
  v45 = v35;
  v46 = *(v33 - 8);
  v47 = *(v46 + 48);
  LODWORD(v43) = v47(v40, 1, v33);
  v164 = v45;
  (*(v45 + 8))(v40, v34);
  v189 = v19;
  *&v197 = v9;
  v48 = v171;
  v180 = v33;
  if (v43 != 1)
  {
    v163 = v47;
    if (v47(v173, 1, v33) == 1)
    {
      goto LABEL_64;
    }

    if (!*&v173[*(v33 + 88)])
    {
      v193 = v34;
      v102 = v195;
      v103 = v170;
      v104 = *(v170 + 16);
      v105 = v168;
      v104(v168, v173, v195);
      v106 = dispatch thunk of Collection.count.getter();
      v107 = *(v103 + 8);
      v183 = v103 + 8;
      v182 = v107;
      v107(v105, v102);
      if (v106 != dispatch thunk of Collection.count.getter())
      {
        v203 = 0;
        v204 = 0xE000000000000000;
        _StringGuts.grow(_:)(205);
        v108 = v180;
        v109 = _typeName(_:qualified:)();
        MEMORY[0x18D00C9B0](v109);

        MEMORY[0x18D00C9B0](0x2820746E756F6320, 0xE800000000000000);
        v110 = v195;
        v200 = dispatch thunk of Collection.count.getter();
        v111 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v111);

        MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD4F950);
        if (v163(v173, 1, v108) == 1)
        {
LABEL_67:
          __break(1u);
          return;
        }

        v112 = v168;
        v104(v168, v173, v110);
        v113 = dispatch thunk of Collection.count.getter();
        v182(v112, v110);
        v200 = v113;
        v114 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v114);

        MEMORY[0x18D00C9B0](0xD0000000000000A7, 0x800000018CD4F970);
        MEMORY[0x18D009810](v203, v204);
      }

      v115 = v180;
      v116 = v163;
      if (v163(v173, 1, v180) == 1)
      {
        goto LABEL_65;
      }

      v117 = v169;
      v118 = v173;
      v119 = v195;
      v104(v169, v173, v195);
      v120 = v165;
      (*(v46 + 16))(v165, v194, v115);
      (*(v46 + 56))(v120, 0, 1, v115);
      swift_beginAccess();
      (*(v164 + 40))(v118, v120, v193);
      v121 = v167;
      v104(v167, v117, v119);
      if (v116(v118, 1, v115) != 1)
      {
        (*(v170 + 40))(v173, v121, v119);
        swift_endAccess();
        v122 = v196;
        v123 = *(*v196 + 176);
        swift_beginAccess();
        v124 = *(v122 + v123);
        v125 = v178;
        v126 = v175;
        v127 = v191;
        v128 = v179;
        if ((v124 & 0xC000000000000001) != 0)
        {
          v129 = __CocoaDictionary.makeIterator()();
          v130 = 0;
          v131 = 0;
          v132 = 0;
          v133 = v129 | 0x8000000000000000;
        }

        else
        {
          v134 = -1 << *(v124 + 32);
          v131 = ~v134;
          v130 = v124 + 64;
          v135 = -v134;
          if (v135 < 64)
          {
            v136 = ~(-1 << v135);
          }

          else
          {
            v136 = -1;
          }

          v132 = (v136 & *(v124 + 64));
          v133 = v124;
        }

        v185 = (v176 + 32);
        AssociatedTypeWitness = v125 - 8;
        v181 = v131;
        v137 = (v131 + 64) >> 6;
        v184 = v176 + 16;
        v190 = (v166 + 32);
        v188 = (v176 + 8);

        v138 = 0;
        v194 = v133;
        while (1)
        {
          v193 = v132;
          if ((v133 & 0x8000000000000000) != 0)
          {
            if (__CocoaDictionary.Iterator.next()())
            {
              v154 = v186;
              v155 = v197;
              _forceBridgeFromObjectiveC<A>(_:_:)();
              swift_unknownObjectRelease();
              _forceBridgeFromObjectiveC<A>(_:_:)();
              swift_unknownObjectRelease();
              v156 = v132;
              v157 = *(v125 + 48);
              v158 = v154;
              v127 = v191;
              v159 = v155;
              v128 = v179;
              (*v185)(v191, v158, v159);
              *&v127[v157] = v200;
              v153 = *(v125 - 8);
              (*(v153 + 56))(v127, 0, 1, v125);
              v142 = v138;
              v132 = v156;
              v126 = v175;
            }

            else
            {
              v153 = *(v125 - 8);
              (*(v153 + 56))(v127, 1, 1, v125);
              v142 = v138;
            }
          }

          else
          {
            v139 = v132;
            v140 = v138;
            if (!v132)
            {
              if (v137 <= v138 + 1)
              {
                v141 = v138 + 1;
              }

              else
              {
                v141 = v137;
              }

              v142 = v141 - 1;
              v143 = v138;
              while (1)
              {
                v140 = v143 + 1;
                if (__OFADD__(v143, 1))
                {
                  break;
                }

                if (v140 >= v137)
                {
                  v153 = *(v125 - 8);
                  (*(v153 + 56))(v127, 1, 1, v125);
                  v132 = 0;
                  goto LABEL_53;
                }

                v139 = *(v130 + 8 * v140);
                ++v143;
                if (v139)
                {
                  goto LABEL_52;
                }
              }

              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              break;
            }

LABEL_52:
            v132 = ((v139 - 1) & v139);
            v144 = __clz(__rbit64(v139)) | (v140 << 6);
            v145 = v176;
            v146 = v186;
            v147 = v197;
            (*(v176 + 16))(v186, *(v133 + 48) + *(v176 + 72) * v144, v197);
            v148 = *(*(v133 + 56) + 8 * v144);
            v149 = *(v178 + 48);
            v150 = *(v145 + 32);
            v151 = v146;
            v126 = v175;
            v125 = v178;
            v152 = v147;
            v127 = v191;
            v150(v191, v151, v152);
            *&v127[v149] = v148;
            v153 = *(v125 - 8);
            (*(v153 + 56))(v127, 0, 1, v125);

            v142 = v140;
LABEL_53:
            v128 = v179;
          }

          (*v190)(v128, v127, v126);
          if ((*(v153 + 48))(v128, 1, v125) == 1)
          {
            v182(v169, v195);
            outlined consume of Set<UIPress>.Iterator._Variant(v194);
            return;
          }

          v160 = *&v128[*(v125 + 48)];
          v161 = *(*v160 + 176);
          v133 = v194;
          if (*(v160 + v161) == v177)
          {
            *(v160 + v161) = *(v196 + v187);
          }

          (*v188)(v128, v197);
          v138 = v142;
        }
      }

      __break(1u);
      goto LABEL_67;
    }
  }

  v49 = v174;
  v50 = v165;
  (*(v46 + 16))(v165, v194, v33);
  (*(v46 + 56))(v50, 0, 1, v33);
  v51 = v173;
  swift_beginAccess();
  (*(v164 + 40))(v51, v50, v34);
  swift_endAccess();
  dispatch thunk of Collection.startIndex.getter();
  v52 = v19;
  dispatch thunk of Collection.endIndex.getter();
  v53 = *(*v196 + 176);
  swift_beginAccess();

  v191 = v49;
  v55 = MEMORY[0x18D00C470](v54, v9, v19, v49);

  if (v55)
  {
    v56 = 0;
    v179 = *(swift_getAssociatedConformanceWitness() + 8);
    v178 = v172 + 24;
    v57 = (v176 + 8);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v58 = v191;
      v59 = v52;
      v60 = v193;
      v61 = v197;
      TableColumnForEach.IDGenerator.makeID(data:index:offset:)(v56, *(v194 + *(v180 + 88)), v197, v193, v184, v185);
      v62 = v48;
      v63 = v196;
      swift_beginAccess();
      v64 = v60;
      v52 = v59;
      MEMORY[0x18D00C560](&v199, v64, *(v63 + v53), v61, v59, v58);
      v65 = v199;
      if (v199)
      {
        swift_endAccess();
        v66 = *(*v65 + 160);
        swift_beginAccess();
        v67 = v65 + v66;
        v68 = v196;
        v52 = v189;
        (*v178)(v67, v62, AssociatedTypeWitness);
        swift_endAccess();
        *(v65 + *(*v65 + 168)) = v56;
        *(v65 + *(*v65 + 176)) = *(v68 + v187);

        --v55;
      }

      else
      {
        swift_endAccess();
      }

      dispatch thunk of Collection.formIndex(after:)();
      (*v57)(v193, v197);
      ++v56;
      v48 = v62;
      if (!v55)
      {
        goto LABEL_12;
      }
    }

    v199 = Array.init()();

    v72 = v197;
    v73 = v52;
    v74 = v191;
    v75 = MEMORY[0x18D00C400](v71, v197, v73, v191);
    v77 = v76;
    v79 = v78;

    v200 = v75;
    v201 = v77;
    v80 = v79 & 1;
    v81 = v189;
    v202 = v80;

    v195 = MEMORY[0x18D00C500](v82, v72, v81, v74);
    v194 = v83;
    LODWORD(v193) = v84;

    do
    {
      if (static Dictionary.Index.== infix(_:_:)())
      {
        break;
      }

      v87 = v196;

      v88 = v186;
      v89 = v197;
      Dictionary.subscript.getter();

      (*v57)(v88, v89);
      if ((*(v198 + *(*v198 + 192)) & 1) != 0 || *(v198 + *(*v198 + 176)) == *(v87 + v187))
      {
        v81 = v189;
      }

      else
      {
        v90 = v189;
        type metadata accessor for Array();

        v81 = v90;
        v89 = v197;
        Array.append(_:)();
        --v55;
      }

      v85 = v191;
      v86 = *(v196 + v53);

      MEMORY[0x18D00C510](&v200, v86, v89, v81, v85);
    }

    while (v55);
    v91 = v199;
    v92 = MEMORY[0x18D00CDE0](v199, v81);
    v93 = v172;
    if (v92)
    {
      v94 = 4;
      do
      {
        v95 = v94 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v97 = *(v91 + 8 * v94);

          v98 = __OFADD__(v95, 1);
          v99 = v94 - 3;
          if (v98)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v97 = _ArrayBuffer._getElementSlowPath(_:)();
          v98 = __OFADD__(v95, 1);
          v99 = v94 - 3;
          if (v98)
          {
LABEL_28:
            __break(1u);
            break;
          }
        }

        TableColumnForEachState.eraseItem(_:)(v97);

        ++v94;
      }

      while (v99 != MEMORY[0x18D00CDE0](v91, v81));
    }

    outlined consume of Set<UIOpenURLContext>.Index._Variant(v195, v194, v193 & 1);

    v100 = *(v93 + 8);
    v101 = AssociatedTypeWitness;
    v100(v190, AssociatedTypeWitness);
    v100(v171, v101);
    outlined consume of Set<UIOpenURLContext>.Index._Variant(v200, v201, v202);
  }

  else
  {
LABEL_12:
    v69 = *(v172 + 8);
    v70 = AssociatedTypeWitness;
    v69(v190, AssociatedTypeWitness);
    v69(v48, v70);
  }
}

uint64_t TableColumnForEach.DynamicTableColumnList.visitColumns<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a10;
  v15[5] = a14;
  v15[6] = a3;
  v16 = a4;
  v17 = a1;
  return TableColumnForEachState.forEachItem(from:do:)(a2, partial apply for closure #1 in TableColumnForEach.DynamicTableColumnList.visitColumns<A>(applying:from:), v15) & 1;
}

uint64_t closure #1 in TableColumnForEach.DynamicTableColumnList.visitColumns<A>(applying:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 124) == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v9;
    v21 = v10;
    v13 = result;
    type metadata accessor for TableColumnList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of _Benchmark(InputValue, v17);
    v15 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    LOBYTE(a8) = (*(v16 + 16))(a5, v13, a8, a9, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return a8 & 1;
  }

  return result;
}

uint64_t TableColumnForEachState.forEachItem(from:do:)(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t), uint64_t a3)
{
  v136 = a3;
  v135 = a2;
  v146 = *v3;
  v142 = v146[13];
  v5 = *(*(v142 + 8) + 8);
  v6 = v146[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v130 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v129 = &v120 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v126 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v120 - v10;
  v141 = v6;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v120 - v15;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v128 = &v120 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v120 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v120 - v28;
  result = AGSubgraphIsValid();
  if (result)
  {
    v127 = v29;
    v160 = 0;
    v31 = TableColumnForEachState.fetchColumnsPerElement()();
    v147 = v5;
    v137 = v8;
    if (v32)
    {
      v120 = v9;
      v125 = v20;
      v138 = v17;
      v151 = 0;
      v33 = *(*v3 + 160);
      swift_beginAccess();
      v34 = v146;
      v35 = v146[15];
      v36 = v146[11];
      v37 = v146[12];
      v38 = swift_getAssociatedTypeWitness();
      v39 = swift_getAssociatedTypeWitness();
      v40 = v34[14];
      v41 = v141;
      v152 = v141;
      v153 = v36;
      v133 = v36;
      v154 = v38;
      v155 = v39;
      v132 = v37;
      v156 = v37;
      v157 = v142;
      v131 = v40;
      v158 = v40;
      v159 = v35;
      v134 = v35;
      v42 = type metadata accessor for TableColumnForEach(0, &v152);
      v43 = *(v42 - 8);
      v123 = *(v43 + 48);
      v122 = v43 + 48;
      result = v123(&v3[v33], 1, v42);
      if (result == 1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v44 = *(v11 + 16);
      v121 = v33;
      v45 = &v3[v33];
      v46 = v3;
      v47 = v149;
      v146 = (v11 + 16);
      v44(v149, v45, v41);
      v48 = v129;
      dispatch thunk of Collection.indices.getter();
      v49 = *(v11 + 8);
      v148 = v11 + 8;
      v144 = v49;
      v50 = (v49)(v47, v41);
      MEMORY[0x1EEE9AC00](v50);
      *(&v120 - 4) = v46;
      *(&v120 - 3) = &v160;
      *(&v120 - 2) = a1;
      *(&v120 - 1) = &v151;
      v51 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v52 = v143;
      Sequence.first(where:)();
      v124 = 0;
      v130[1](v48, v51);
      v17 = v138;
      v53 = *(v138 + 48);
      v54 = v137;
      v55 = v53(v52, 1, v137);
      v145 = v44;
      if (v55 == 1)
      {
        v56 = v121;
        result = v123((v46 + v121), 1, v42);
        if (result == 1)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v57 = (v46 + v56);
        v58 = v149;
        v59 = v141;
        (v145)(v149, v57, v141);
        v60 = v128;
        dispatch thunk of Collection.endIndex.getter();
        v144(v58, v59);
        v61 = v143;
        v8 = v137;
        v62 = v53(v143, 1, v137);
        v63 = v60;
        v20 = v125;
        if (v62 != 1)
        {
          (*(v126 + 8))(v61, v120);
        }
      }

      else
      {
        v63 = v128;
        (*(v17 + 32))(v128, v52, v54);
        v59 = v141;
        v8 = v54;
        v20 = v125;
      }

      v89 = v127;
      (*(v17 + 32))(v127, v63, v8);
      v90 = v150;
      v88 = *a1 - v151;
      if (!__OFSUB__(*a1, v151))
      {
LABEL_18:
        *a1 = v88;
        v106 = *(v17 + 16);
        v105 = v17 + 16;
        v130 = v106;
        (v106)(v90, v89, v8);
        v107 = *(*v46 + 160);
        swift_beginAccess();
        AssociatedTypeWitness = v105 - 8;
        v129 = v88 & ~(v88 >> 63);
        v138 = v105;
        v128 = v107;
        while (1)
        {
          (v130)(v20, v90, v8);
          v108 = v134;
          v109 = v132;
          v110 = swift_getAssociatedTypeWitness();
          v111 = swift_getAssociatedTypeWitness();
          v152 = v59;
          v153 = v133;
          v154 = v110;
          v155 = v111;
          v156 = v109;
          v157 = v142;
          v158 = v131;
          v159 = v108;
          v112 = type metadata accessor for TableColumnForEach(0, &v152);
          v143 = *(*(v112 - 8) + 48);
          result = (v143)(&v107[v46], 1, v112);
          if (result == 1)
          {
            break;
          }

          v113 = v149;
          (v145)(v149, &v107[v46], v59);
          v114 = v140;
          dispatch thunk of Collection.endIndex.getter();
          v144(v113, v59);
          swift_getAssociatedConformanceWitness();
          LOBYTE(v113) = dispatch thunk of static Equatable.== infix(_:_:)();
          v115 = *AssociatedTypeWitness;
          (*AssociatedTypeWitness)(v114, v8);
          v115(v20, v8);
          if (v113)
          {
            v115(v150, v8);
            v115(v127, v8);
            return 1;
          }

          v116 = v160;
          v117 = TableColumnForEachState.item(at:offset:)(v150, v160);
          *a1 = v129;
          if ((v135(a1, v117) & 1) == 0)
          {

            v119 = v137;
            v115(v150, v137);
            v115(v127, v119);
            return 0;
          }

          v160 = v116 + 1;
          *a1 = 0;
          v107 = v128;
          result = (v143)(&v128[v46], 1, v112);
          if (result == 1)
          {
            goto LABEL_28;
          }

          v118 = v149;
          v59 = v141;
          (v145)(v149, &v107[v46], v141);
          v90 = v150;
          dispatch thunk of Collection.formIndex(after:)();

          v144(v118, v59);
          v8 = v137;
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      v46 = v3;
      v148 = v11;
      if (v31 >= 1)
      {
        v125 = v20;
        v138 = v17;
        v64 = *a1;
        AssociatedTypeWitness = v31;
        v130 = v64;
        v129 = v64 / v31;
        v160 = v64 / v31;
        v65 = *(*v3 + 160);
        swift_beginAccess();
        v66 = v146;
        v67 = v146[15];
        v69 = v146[11];
        v68 = v146[12];
        v70 = swift_getAssociatedTypeWitness();
        v71 = swift_getAssociatedTypeWitness();
        v72 = v66[14];
        v73 = v141;
        v152 = v141;
        v153 = v69;
        v133 = v69;
        v154 = v70;
        v155 = v71;
        v74 = v65;
        v132 = v68;
        v156 = v68;
        v157 = v142;
        v131 = v72;
        v158 = v72;
        v159 = v67;
        v134 = v67;
        v75 = type metadata accessor for TableColumnForEach(0, &v152);
        v76 = *(*(v75 - 8) + 48);
        v143 = v46;
        v146 = v76;
        result = (v76)(v46 + v74, 1, v75);
        if (result == 1)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v77 = v148;
        v78 = (v148 + 16);
        v79 = *(v148 + 16);
        v80 = v143;
        v79(v16, &v143[v74], v73);
        result = (v146)(&v80[v74], 1, v75);
        if (result == 1)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v81 = v149;
        v146 = v78;
        v145 = v79;
        v79(v149, &v143[v74], v73);
        v82 = v140;
        dispatch thunk of Collection.startIndex.getter();
        v83 = *(v77 + 8);
        v83(v81, v73);
        v84 = v127;
        v85 = v129;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v86 = v138;
        v87 = v137;
        (*(v138 + 8))(v82, v137);
        v148 = v77 + 8;
        v144 = v83;
        v83(v16, v73);
        v124 = 0;
        v88 = v130 - v85 * AssociatedTypeWitness;
        v46 = v143;
        v8 = v87;
        v89 = v84;
        v59 = v73;
        v17 = v86;
        v90 = v150;
        v20 = v125;
        goto LABEL_18;
      }
    }

    v160 = 0;
    v145 = *(*v46 + 160);
    swift_beginAccess();
    v91 = v146;
    v92 = v146[15];
    v93 = v146[11];
    v94 = v146[12];
    v144 = swift_getAssociatedTypeWitness();
    v95 = swift_getAssociatedTypeWitness();
    v96 = v91[14];
    v59 = v141;
    v152 = v141;
    v153 = v93;
    v133 = v93;
    v97 = v145;
    v154 = v144;
    v155 = v95;
    v132 = v94;
    v156 = v94;
    v157 = v142;
    v131 = v96;
    v158 = v96;
    v159 = v92;
    v134 = v92;
    v98 = type metadata accessor for TableColumnForEach(0, &v152);
    result = (*(*(v98 - 8) + 48))(&v97[v46], 1, v98);
    if (result == 1)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v100 = v148;
    v99 = v149;
    v101 = *(v148 + 16);
    v146 = (v148 + 16);
    v145 = v101;
    (v101)(v149, &v97[v46], v59);
    v102 = v127;
    dispatch thunk of Collection.endIndex.getter();
    v103 = *(v100 + 8);
    v104 = v99;
    v89 = v102;
    v148 = v100 + 8;
    v144 = v103;
    v103(v104, v59);
    v88 = 0;
    v124 = 0;
    v90 = v150;
    goto LABEL_18;
  }

  return result;
}

uint64_t TableColumnForEachState.count()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v26 - v5;
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v7 = TableColumnForEachState.fetchColumnsPerElement()();
  if (v8)
  {
    v35 = 0;
    v36 = 0;
    MEMORY[0x1EEE9AC00](v7);
    *(&v26 - 2) = &v35;
    *(&v26 - 1) = v1;
    TableColumnForEachState.forEachItem(from:do:)(&v36, partial apply for closure #1 in TableColumnForEachState.count(), (&v26 - 2));
    v9 = *(*v1 + 160);
    swift_beginAccess();
    v10 = *(v2 + 120);
    v12 = *(v2 + 88);
    v11 = *(v2 + 96);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = swift_getAssociatedTypeWitness();
    v28 = v3;
    v29 = v12;
    v30 = AssociatedTypeWitness;
    v31 = v14;
    v32 = v11;
    v27 = *(v2 + 104);
    v33 = v27;
    v34 = v10;
    v15 = type metadata accessor for TableColumnForEach(0, &v28);
    result = (*(*(v15 - 8) + 48))(v1 + v9, 1, v15);
    if (result != 1)
    {
      (*(v4 + 16))(v6, v1 + v9, v3);
      v17 = dispatch thunk of Collection.count.getter();
      (*(v4 + 8))(v6, v3);
      return v17;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *&v27 = v7;
  v18 = *(*v1 + 160);
  swift_beginAccess();
  v19 = *(v2 + 120);
  v21 = *(v2 + 88);
  v20 = *(v2 + 96);
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v28 = v3;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v20;
  v26 = *(v2 + 104);
  v33 = v26;
  v34 = v19;
  v24 = type metadata accessor for TableColumnForEach(0, &v28);
  result = (*(*(v24 - 8) + 48))(v1 + v18, 1, v24);
  if (result != 1)
  {
    (*(v4 + 16))(v6, v1 + v18, v3);
    v25 = dispatch thunk of Collection.count.getter();
    (*(v4 + 8))(v6, v3);
    result = v25 * v27;
    if ((v25 * v27) >> 64 == (v25 * v27) >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t TableColumnForEachState.fetchColumnsPerElement()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 104);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v32 - v13;
  v15 = (v1 + v2[21]);
  v16 = v15[8];
  if (v16 != 1 || *v15 != 0)
  {
    if (v16)
    {
      return 0;
    }

    return *v15;
  }

  v38 = v5;
  v39 = v12;
  v33 = v11;
  v34 = v10;
  v19 = v3[15];
  v37 = v3[14];
  v20 = v3[11];
  v21 = v3[12];
  v35 = v9;
  v36 = v20;
  v22 = v3[20];
  swift_beginAccess();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  v40[0] = v6;
  v40[1] = v36;
  v40[2] = v23;
  v40[3] = v24;
  v40[4] = v21;
  v40[5] = v4;
  v40[6] = v37;
  v40[7] = v19;
  v25 = type metadata accessor for TableColumnForEach(0, v40);
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v36 = v26 + 48;
  v37 = v27;
  result = v27(v1 + v22, 1, v25);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v28 = v39;
  v32 = *(v39 + 16);
  v32(v14, v1 + v22, v6);
  v29 = dispatch thunk of Collection.isEmpty.getter();
  v30 = *(v28 + 8);
  v39 = v28 + 8;
  v30(v14, v6);
  if (v29)
  {
    goto LABEL_11;
  }

  result = v37(v1 + v22, 1, v25);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v32(v14, v1 + v22, v6);
  v31 = v33;
  dispatch thunk of Collection.startIndex.getter();
  v30(v14, v6);
  TableColumnForEachState.item(at:offset:)(v31, 0);

  (*(v34 + 8))(v31, v35);
LABEL_11:
  if (v15[8])
  {
    return 0;
  }

  return *v15;
}

uint64_t static TableColumnForEachState.ElementCount.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

id TableColumnForEachState.init(inputs:)(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v31 = a1[2];
  v32 = v3;
  v33 = a1[4];
  v34 = *(a1 + 20);
  v4 = a1[1];
  v29 = *a1;
  v30 = v4;
  v5 = v2;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(v1 + 104) = result;
    *(v1 + 112) = 0;
    *(v1 + 116) = 1;
    *(v1 + 120) = 0;
    *(v1 + 124) = 1;
    v7 = *(*v1 + 160);
    v9 = v5[10];
    v8 = v5[11];
    v10 = v5[15];
    v11 = v5[12];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = swift_getAssociatedTypeWitness();
    v15 = v5[13];
    v14 = v5[14];
    v21 = v9;
    v22 = v8;
    v23 = AssociatedTypeWitness;
    v24 = v13;
    v25 = v11;
    v26 = v15;
    v27 = v14;
    v28 = v10;
    v16 = type metadata accessor for TableColumnForEach(0, &v21);
    (*(*(v16 - 8) + 56))(v1 + v7, 1, 1, v16);
    v17 = v1 + *(*v1 + 168);
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = *(*v1 + 176);
    v21 = v9;
    v22 = v8;
    v23 = v11;
    v24 = v15;
    v25 = v14;
    v26 = v10;
    type metadata accessor for TableColumnForEachState.Item(0, &v21);
    *(v1 + v18) = Dictionary.init()();
    *(v1 + *(*v1 + 184)) = 0;
    v19 = v32;
    *(v1 + 48) = v31;
    *(v1 + 64) = v19;
    *(v1 + 80) = v33;
    *(v1 + 96) = v34;
    v20 = v30;
    *(v1 + 16) = v29;
    *(v1 + 32) = v20;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TableColumnForEachState.eraseItem(_:)(uint64_t a1)
{
  AGSubgraphRef.willRemove()();
  AGSubgraphRemoveChild();
  *(a1 + *(*a1 + 192)) = 1;
  return TableColumnForEachState.Item.release()();
}

uint64_t TableColumnForEachState.item(at:offset:)(uint64_t a1, uint64_t a2)
{
  v106 = a1;
  v107 = a2;
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 104);
  v88 = *(v6[1] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v97 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v86 - v10;
  v100 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v86 - v12;
  v13 = v3[11];
  v105 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v109 = (&v86 - v19);
  v20 = &v2[v3[20]];
  swift_beginAccess();
  v21 = v3[12];
  v110 = *(v4 + 112);
  v22 = *(&v110 + 1);
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  *&v123 = v5;
  *(&v123 + 1) = v13;
  v108 = v13;
  v98 = v24;
  v99 = v23;
  *&v124 = v23;
  *(&v124 + 1) = v24;
  *&v25 = v21;
  v101 = v6;
  *(&v25 + 1) = v6;
  v125 = v25;
  v126 = v110;
  v26 = type metadata accessor for TableColumnForEach(0, &v123);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v91 = v27 + 48;
  v92 = v28;
  result = v28(v20, 1, v26);
  if (result == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v94 = v26;
  v30 = v20;
  v31 = *&v20[*(v26 + 88)];
  v32 = v100;
  v33 = *(v100 + 16);
  v34 = v102;
  v89 = v30;
  v33(v102);

  v104 = v110;
  v103 = v22;
  v35 = v101;
  v36 = v108;
  v37 = v109;
  TableColumnForEach.IDGenerator.makeID(data:index:offset:)(v107, v31, v108, v109, v21, v101);

  (*(v32 + 8))(v34, v5);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v39 = *&v2[v38];
  v102 = v5;
  *&v40 = v5;
  v41 = v104;
  *(&v40 + 1) = v36;
  *&v42 = v21;
  *(&v42 + 1) = v35;
  v123 = v40;
  v124 = v42;
  *&v125 = v110;
  *(&v125 + 1) = v103;
  v43 = type metadata accessor for TableColumnForEachState.Item(0, &v123);
  MEMORY[0x18D00C560](&v112, v37, v39, v36, v43, v41);
  v44 = v112;
  if (v112)
  {
    swift_endAccess();
    v45 = *v44;
    if (*(v44 + *(*v44 + 192)) == 1)
    {
      TableColumnForEachState.uneraseItem(_:)(v44);
      v45 = *v44;
    }

    v46 = v45[22];
    v47 = *(*v2 + 184);
    v48 = v107;
    if (*(v44 + v46) == *&v2[v47])
    {
      v49 = v45[25];
      if ((*(v44 + v49) & 1) == 0)
      {
        v50 = v45[20];
        swift_beginAccess();
        v52 = v96;
        v51 = v97;
        v53 = v87;
        (*(v96 + 16))(v87, v44 + v50, v97);
        swift_getAssociatedConformanceWitness();
        LOBYTE(v50) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v52 + 8))(v53, v51);
        if ((v50 & 1) == 0)
        {
          *(v44 + v49) = 1;
          *&v118[0] = 0;
          *(&v118[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(92);
          v84 = _typeName(_:qualified:)();
          MEMORY[0x18D00C9B0](v84);

          MEMORY[0x18D00C9B0](0x444920656874203ALL, 0xE900000000000020);
          v54 = v108;
          v85 = v109;
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x18D00C9B0](0xD00000000000004FLL, 0x800000018CD4FA20);
          MEMORY[0x18D009810](*&v118[0], *(&v118[0] + 1));

          v83 = v85;
          goto LABEL_20;
        }
      }

      v54 = v108;
    }

    else
    {
      v82 = v45[20];
      swift_beginAccess();
      (*(v96 + 24))(v44 + v82, v106, v97);
      swift_endAccess();
      *(v44 + *(*v44 + 168)) = v48;
      *(v44 + v46) = *&v2[v47];
      v54 = v108;
    }

LABEL_19:
    v83 = v109;
LABEL_20:
    (*(v105 + 8))(v83, v54);
    return v44;
  }

  *&v110 = v38;
  v100 = v21;
  swift_endAccess();
  result = AGSubgraphGetGraph();
  if (v2[124] == 1)
  {
    goto LABEL_23;
  }

  v55 = result;
  v56 = v2;
  v57 = AGSubgraphCreate2();

  AGSubgraphAddChild();
  AGGraphClearUpdate();
  v58 = AGSubgraphGetCurrent();
  v102 = v57;
  AGSubgraphSetCurrent();
  v59 = v109;
  closure #1 in TableColumnForEachState.item(at:offset:)(v2, v109, &v123);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v60 = v123;
  v61 = DWORD2(v123);
  v101 = *(v105 + 16);
  v101(v95, v59, v108);
  *&v123 = v60;
  DWORD2(v123) = v61;
  result = PreferencesOutputs.subscript.getter();
  v63 = v93;
  v62 = v94;
  if ((result & 0x100000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v64 = result;
  (*(v96 + 16))(v93, v106, v97);
  v65 = v63;
  v66 = *v56;
  v67 = v89;
  result = v92(v89, 1, v62);
  if (result != 1)
  {
    v68 = *(v56 + *(v66 + 184));
    v69 = *&v67[*(v62 + 88)];

    swift_allocObject();
    v70 = v102;
    v44 = specialized TableColumnForEachState.Item.init(id:columns:subgraph:index:offset:seed:state:isConstant:)(v95, v64, v102, v65, v107, v68, v56, v69 == 0);
    v54 = v108;
    v101(v90, v109, v108);
    *&v118[0] = v44;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v71 = v70;

    Dictionary.subscript.setter();
    swift_endAccess();
    v72 = v56 + *(*v56 + 168);
    if (*(v72 + 8) != 1 || *v72)
    {
    }

    else
    {
      v73 = *(v56 + 64);
      v74 = *(v56 + 32);
      v119 = *(v56 + 48);
      v120 = v73;
      v75 = *(v56 + 64);
      v121 = *(v56 + 80);
      v76 = *(v56 + 32);
      v118[0] = *(v56 + 16);
      v118[1] = v76;
      v113 = v74;
      v114 = v119;
      v77 = *(v56 + 80);
      v115 = v75;
      v116 = v77;
      v122 = *(v56 + 96);
      v117 = *(v56 + 96);
      v112 = v118[0];
      v78 = *(v103 + 72);
      outlined init with copy of _TableColumnInputs(v118, &v111);
      v79 = v78(&v112);
      v81 = v80;

      v125 = v114;
      v126 = v115;
      v127 = v116;
      v128 = v117;
      v123 = v112;
      v124 = v113;
      outlined destroy of _TableColumnInputs(&v123);
      if (v81)
      {
        *v72 = 1;
        *(v72 + 8) = 1;
      }

      else
      {
        *v72 = v79;
        *(v72 + 8) = 0;
      }
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

void TableColumnForEachState.uneraseItem(_:)(uint64_t a1)
{
  *(a1 + *(*a1 + 192)) = 0;
  AGSubgraphAddChild();
  AGSubgraphRef.didReinsert()();
}

uint64_t closure #1 in TableColumnForEachState.item(at:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v40 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v37 - v6;
  v9 = v8[10];
  v11 = *(v10 + 96);
  v12 = v8[14];
  v13 = v8[15];
  *(v14 + 96) = v9;
  *(v14 + 104) = v4;
  v41 = v11;
  *(v14 + 112) = v11;
  *(v14 + 128) = v12;
  *(v14 + 136) = v13;
  v42 = v13;
  v15 = type metadata accessor for TableColumnForEachState.ChildContent(0, &v56);
  v39 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  if (*(a1 + 116))
  {
    __break(1u);
  }

  v19 = *(a1 + 112);
  (*(v5 + 16))(v7, v38, v4, v16);
  *v18 = v19;
  *&v20 = v9;
  *(&v20 + 1) = v4;
  v56 = v20;
  v57 = v41;
  *&v58 = v12;
  *(&v58 + 1) = v42;
  v21 = type metadata accessor for TableColumnForEachState.ChildContent(0, &v56);
  v22 = (*(v5 + 32))(&v18[*(v21 + 68)], v7, v4);
  MEMORY[0x1EEE9AC00](v22);
  v23 = v41;
  *(&v37 - 4) = v41;
  *(&v37 - 3) = v15;
  *(&v37 - 2) = swift_getWitnessTable(protocol conformance descriptor for TableColumnForEachState<A, B, C>.ChildContent, v15);
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, (&v37 - 6), v15, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  (*(v39 + 8))(v18, v15);
  _GraphValue.init(_:)();
  v26 = *(a1 + 48);
  v27 = *(a1 + 80);
  v53 = *(a1 + 64);
  v54 = v27;
  v28 = *(a1 + 32);
  v52[0] = *(a1 + 16);
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  v52[1] = v28;
  v52[2] = v31;
  v48 = v26;
  v49 = v53;
  v50 = *(a1 + 80);
  v55 = *(a1 + 96);
  v51 = *(a1 + 96);
  v46 = v29;
  v47 = v30;
  v32 = v42;
  v33 = *(v42 + 64);
  outlined init with copy of _TableColumnInputs(v52, &v56);
  v33(&v44, &v43, &v46, v23, v32);
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v56 = v46;
  v57 = v47;
  result = outlined destroy of _TableColumnInputs(&v56);
  v35 = v45;
  v36 = v40;
  *v40 = v44;
  *(v36 + 2) = v35;
  return result;
}

uint64_t TableColumnForEachState.Item.release()()
{
  result = AGSubgraphIsValid();
  if (result)
  {
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      swift_endAccess();
    }

    AGSubgraphRef.willInvalidate(isInserted:)(1);
    return AGSubgraphInvalidate();
  }

  return result;
}

void closure #1 in TableColumnForEachState.forEachItem(from:do:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  TableColumnForEachState.item(at:offset:)(a1, *a3);

  if (*(a2 + 124) == 1)
  {
    goto LABEL_7;
  }

  type metadata accessor for TableColumnList();
  InputValue = AGGraphGetInputValue();
  outlined init with copy of _Benchmark(InputValue, v14);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v12 = (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v13 = *a5 + v12;
  if (__OFADD__(*a5, v12))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (*a4 >= v13)
  {
    *a5 = v13;
    *a3 &= 1uLL;
  }
}

void closure #1 in TableColumnForEachState.count()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 124) != 1)
  {
    type metadata accessor for TableColumnList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of _Benchmark(InputValue, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = (*(v7 + 8))(v6, v7);
    if (!__OFADD__(*a3, v8))
    {
      *a3 += v8;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t TableColumnForEachState.Info.Init.forEach.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = swift_getAssociatedTypeWitness();
  v16[3] = swift_getAssociatedTypeWitness();
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v13 = type metadata accessor for TableColumnForEach(0, v16);
  Value = AGGraphGetValue();
  return (*(*(v13 - 8) + 16))(a8, Value, v13);
}

uint64_t TableColumnForEachState.Info.Init.value.getter(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[3] = a2;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = swift_getAssociatedTypeWitness();
  v21[3] = swift_getAssociatedTypeWitness();
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v15 = type metadata accessor for TableColumnForEach(0, v21);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v20 - v17;

  TableColumnForEachState.Info.Init.forEach.getter(a3, a4, a5, a6, a7, a8, v18);
  TableColumnForEachState.update(forEach:)(v18);
  (*(v16 + 8))(v18, v15);
  return a1;
}

uint64_t protocol witness for Rule.value.getter in conformance TableColumnForEachState<A, B, C>.Info.Init@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TableColumnForEachState.Info.Init.value.getter(*v2, *(v2 + 8), a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t *TableColumnForEachState.Item.deinit()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  swift_weakDestroy();

  v1 = *(*v0 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

void TableColumnForEachState.ChildContent.updateValue()(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 40);
  v8 = *(*(v7 + 8) + 8);
  v9 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v50 - v10;
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v8;
  v62 = swift_getAssociatedTypeWitness();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v50 - v13;
  v14 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = specialized TableColumnForEachState.ChildContent.info.getter(a1);
  v19 = *(v14 + 16);
  v59 = v1;
  v19(v17, v1, a1);
  v20 = *(a1 + 68);
  v21 = *(*v18 + 176);
  swift_beginAccess();
  v22 = *(v18 + v21);
  v23 = *(a1 + 24);
  v64 = *(a1 + 48);

  *&v24 = v9;
  *(&v24 + 1) = v23;
  *&v25 = v3;
  *(&v25 + 1) = v7;
  v67 = v25;
  v66 = v24;
  v68 = v64;
  v26 = type metadata accessor for TableColumnForEachState.Item(0, &v66);
  MEMORY[0x18D00C560](v65, &v17[v20], v22, v23, v26, v64);
  (*(*(v23 - 8) + 8))(&v17[v20], v23);
  v27 = v65[0];
  if (!v65[0])
  {
    swift_endAccess();
LABEL_7:

    return;
  }

  swift_endAccess();
  v28 = *v18;
  if (*(v27 + *(*v27 + 176)) != *(v18 + *(*v18 + 184)))
  {

    goto LABEL_7;
  }

  v52 = v4;
  v29 = *(v28 + 160);
  swift_beginAccess();
  v30 = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  *&v66 = v9;
  *(&v66 + 1) = v23;
  *&v67 = v30;
  *(&v67 + 1) = v31;
  v51 = v3;
  *&v32 = v3;
  *(&v32 + 1) = v7;
  v69 = v64;
  v68 = v32;
  v33 = type metadata accessor for TableColumnForEach(0, &v66);
  if ((*(*(v33 - 8) + 48))(v18 + v29, 1, v33) == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v55;
    v35 = v53;
    (*(v55 + 16))(v53, v18 + v29, v9);
    v36 = *(*v27 + 160);
    swift_beginAccess();
    v37 = v57;
    v38 = v27 + v36;
    v39 = v54;
    v40 = AssociatedTypeWitness;
    (*(v57 + 16))(v54, v38, AssociatedTypeWitness);
    v41 = dispatch thunk of Collection.subscript.read();
    (*(v61 + 16))(v63);
    v41(&v66, 0);
    (*(v37 + 8))(v39, v40);
    v42 = (*(v34 + 8))(v35, v9);
    v43 = MEMORY[0x1EEE9AC00](v42);
    v44 = v63;
    *(&v50 - 2) = v18;
    *(&v50 - 1) = v44;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableColumnForEachState<A, B, C>.ChildContent, a1, v43);
    v46 = v51;
    MEMORY[0x18D000B40](a1, v51, WitnessTable);
    v47 = v60;
    StatefulRule.withObservation<A>(observationCenter:do:)();

    MEMORY[0x1EEE9AC00](v48);
    *(&v50 - 2) = a1;
    *(&v50 - 1) = WitnessTable;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, partial apply for closure #1 in StatefulRule.value.setter, (&v50 - 4), v46, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v49);

    (*(v52 + 8))(v47, v46);
    (*(v61 + 8))(v63, v62);
  }
}

void closure #1 in TableColumnForEachState.ChildContent.updateValue()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  v5 = a1 + *(*a1 + 160);
  swift_beginAccess();
  v6 = *(v3 + 120);
  v7 = *(v3 + 112);
  v10 = *(v4 + 96);
  v11 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = v10;
  v15 = v7;
  v16 = v6;
  v8 = type metadata accessor for TableColumnForEach(0, &v11);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = *&v5[*(v8 + 84)];

    v9(a2);
  }
}

uint64_t TableColumnForEachState.ChildContent.description.getter(uint64_t a1)
{
  MEMORY[0x18D00C9B0](0x697463656C6C6F43, 0xEB000000005B6E6FLL);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  return 0;
}

uint64_t *TableColumnForEachState.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(v0 + 4);
  v18[2] = *(v0 + 3);
  v18[3] = v3;
  v18[4] = *(v0 + 5);
  v19 = *(v0 + 24);
  v4 = *(v0 + 2);
  v18[0] = *(v0 + 1);
  v18[1] = v4;
  v5 = v2;
  outlined destroy of _TableColumnInputs(v18);

  v6 = *(*v0 + 160);
  v7 = *(v1 + 120);
  v8 = *(v1 + 112);
  v11 = *(v5 + 96);
  v12 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  v15 = v11;
  v16 = v8;
  v17 = v7;
  type metadata accessor for TableColumnForEach(255, &v12);
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(v0 + v6, v9);

  return v0;
}

double TableColumnForEachState.Item.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  swift_deallocClassInstance();
  return result;
}

void type metadata accessor for Attribute<TableColumnList>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<TableColumnList>)
  {
    type metadata accessor for TableColumnList();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<TableColumnList>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for TableColumnForEach<A, B, C, D, E>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TableColumnForEach<A, B, C, D, E>);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TableColumnForEach(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumnForEach(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    *((v10 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

double destroy for TableColumnForEach(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TableColumnForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnForEach(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for TableColumnForEach(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for TableColumnForEachState(uint64_t a1)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 80);
  v12 = "T";
  v13 = MEMORY[0x1E69E5CE0] + 64;
  v14 = &unk_18CDB8A00;
  v15 = &unk_18CDB8A00;
  v2 = *(a1 + 112);
  v1 = *(a1 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = v5;
  v10 = v2;
  v11 = v1;
  type metadata accessor for TableColumnForEach(255, &v6);
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v16 = *(result - 8) + 64;
    v17 = &unk_18CDB8A18;
    v18 = MEMORY[0x1E69E5CE8] + 64;
    v19 = MEMORY[0x1E69E5D00] + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for TableColumnForEachState.Item(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t *specialized TableColumnForEachState.Item.init(id:columns:subgraph:index:offset:seed:state:isConstant:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  v15 = *v8;
  swift_weakInit();
  *(v8 + *(*v8 + 192)) = 0;
  *(v8 + *(*v8 + 200)) = 0;
  (*(*(*(v15 + 88) - 8) + 32))(v8 + *(*v8 + 128), a1);
  *(v8 + *(*v8 + 136)) = a2;
  swift_weakAssign();
  *(v8 + *(*v8 + 152)) = a3;
  v16 = *(*v8 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v8 + v16, a4, AssociatedTypeWitness);
  *(v8 + *(*v8 + 168)) = a5;
  *(v8 + *(*v8 + 176)) = a6;
  *(v8 + *(*v8 + 184)) = a8;
  return v8;
}

uint64_t type metadata completion function for TableColumnForEachState.ChildContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-5 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 4) & ~v5, (a2 + v5 + 4) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithCopy for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *initializeWithTake for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithTake for TableColumnForEachState.ChildContent(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnForEachState.ChildContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for TableColumnForEachState.ChildContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t specialized TableColumnForEachState.ChildContent.info.getter(_OWORD *a1)
{
  v1 = a1[2];
  v3[0] = a1[1];
  v3[1] = v1;
  v3[2] = a1[3];
  type metadata accessor for TableColumnForEachState.Info(0, v3);
  return *AGGraphGetValue();
}

uint64_t AppPreview.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AppPreview.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AppPreviewHost.__allocating_init()()
{
  v0 = swift_allocObject();
  AppPreviewHost.init()();
  return v0;
}

uint64_t AppPreviewHost.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = -1;
  type metadata accessor for AppPreviewRootModifierStorage();
  swift_allocObject();
  *(v0 + 40) = AppPreviewRootModifierStorage.init()();
  v2 = static AppGraph.shared;
  if (static AppGraph.shared)
  {

    static Update.ensure<A>(_:)();
    if (*(v11 + 16))
    {
      v3 = *(v11 + 168);
      v4 = *(v11 + 176);
      v5 = *(v11 + 184);
      v6 = *(v1 + 16);
      v7 = *(v1 + 24);
      *(v1 + 16) = v3;
      *(v1 + 24) = v4;
      v8 = *(v1 + 32);
      *(v1 + 32) = v5;
      outlined copy of SceneID(v3, v4, v5);
      outlined consume of SceneID?(v6, v7, v8);

      specialized AppGraph.addObserver(_:)(v9, v2);

      return v1;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall AppPreviewHost.invalidateEverything()()
{
  if (static AppGraph.shared)
  {

    static Update.ensure<A>(_:)();
  }
}

void closure #1 in AppPreviewHost.invalidateEverything()(uint64_t a1)
{
  GraphHost.incrementPhase()();
  swift_beginAccess();
  if (*(a1 + 16))
  {
    AGGraphInvalidateAllValues();
    GraphHost.emptyTransaction(_:)();
    GraphHost.flushTransactions()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AppPreviewHost.previews.getter()
{
  AppPreviewHost.sceneItem()(v33);
  outlined init with copy of SceneList.Item.Value(v33, v27);
  if (v32)
  {
    outlined destroy of SceneList.Item(v33);
    outlined destroy of SceneList.Item.Value(v27);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v2 = v27[0];
    v1 = v27[1];
    v4 = v27[2];
    v3 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
    type metadata accessor for _ContiguousArrayStorage<AppPreview>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AppPreview>, &type metadata for AppPreview, MEMORY[0x1E69E6F90]);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_18CD63400;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    swift_weakInit();
    swift_weakInit();
    swift_weakInit();
    v21 = 2;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v25 = 0;
    v26 = 0;
    *&v17 = v2;
    type metadata accessor for ModifiedContent<AnyView, RootModifier>();
    lazy protocol witness table accessor for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>();

    v8 = AnyView.init<A>(_:)();
    if (v5)
    {
      v14 = v8;
      v9 = EnvironmentValues.init()();
      v16 = v17;
      v15[1] = 0;
      v15[2] = 0;
      MEMORY[0x18D009CB0](v15, v9);
      v10 = Text.resolveString(in:with:idiom:)();
      v12 = v11;

      v8 = v14;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    *(v0 + 32) = v8;
    *(v0 + 40) = v10;
    *(v0 + 48) = v12;

    outlined consume of Text?(v1, v4, v3, v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7);
    outlined destroy of SceneList.Item(v33);
  }

  return v0;
}

uint64_t AppPreviewHost.sceneItem()@<X0>(void *a1@<X8>)
{
  MEMORY[0x18D00ABE0]();
  v3 = *(v1 + 32);
  if (v3 == 255 || !static AppGraph.shared)
  {
    goto LABEL_8;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  outlined copy of SceneID?(v4, v5, *(v1 + 32));

  AppGraph.sceneList(namespace:)(0, 0, 2, __src);

  SceneList.item(id:where:)(v4, v5, v3 & 1, 0, __src);
  outlined consume of SceneID?(v4, v5, v3);

  if (!__src[68])
  {
    outlined destroy of HashableWeakBox<Swift.AnyObject>(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720]);
LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  memcpy(a1, __src, 0x231uLL);

  return static Update.end()();
}

uint64_t AppPreviewHost.deinit()
{
  outlined consume of SceneID?(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

double AppPreviewHost.__deallocating_deinit()
{
  outlined consume of SceneID?(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  swift_deallocClassInstance();
  return result;
}

double protocol witness for AppGraphObserver.scenesDidChange(phaseChanged:) in conformance AppPreviewHost(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(&lazy protocol witness table cache variable for type AppPreviewHost and conformance AppPreviewHost, a2, type metadata accessor for AppPreviewHost, protocol conformance descriptor for AppPreviewHost);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  return result;
}

double AppPreviewRootModifierStorage.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t AppPreviewRootModifierStorage.init()()
{
  v1 = v0;
  type metadata accessor for SceneBridge(0);
  swift_allocObject();
  *(v0 + 16) = SceneBridge.init()();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SceneStorageValues();
  v4 = swift_allocObject();
  v4[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_n(v2);
  v4[6] = 0;
  swift_unknownObjectWeakInit();
  v4[2] = v3;
  v4[4] = *(v3 + 16);
  *(v1 + 24) = v4;
  return v1;
}

uint64_t View.configuredForSceneRoot()(uint64_t a1, uint64_t a2)
{
  v3[0] = implicit closure #2 in implicit closure #1 in variable initialization expression of AppPreviewRootModifier._storage;
  v3[1] = 0;
  v4 = 0;
  return MEMORY[0x18D00A570](v3, a1, &unk_1EFFD89B8, a2);
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of AppPreviewRootModifier._storage()
{
  type metadata accessor for AppPreviewRootModifierStorage();
  swift_allocObject();
  return AppPreviewRootModifierStorage.init()();
}

void AppPreviewRootModifier.body(content:)(uint64_t a4@<X8>)
{
  type metadata accessor for AppPreviewRootModifierStorage();
  lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(&lazy protocol witness table cache variable for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage, 255, type metadata accessor for AppPreviewRootModifierStorage, protocol conformance descriptor for AppPreviewRootModifierStorage);
  StateObject.wrappedValue.getter();

  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  swift_weakInit();

  swift_weakInit();
  swift_weakInit();

  *(a4 + 64) = 2;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = -1;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI15HashableWeakBoxVyyXlGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i4UI15klM10VyyXlG_TG5ALxSbs5Error_pRi_zRi0_zlyAKIsgndzo_Tf1nc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeSet.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v22 = a4;
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(a3 + 48) + 16 * v15, v21);
    v16 = v22(v21);
    result = outlined destroy of HashableWeakBox<Swift.AnyObject>(v21, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return specialized _NativeSet.extractSubset(using:count:)(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *specialized closure #1 in _NativeSet.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return specialized _NativeSet.extractSubset(using:count:)(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for ModifiedContent<AnyView, RootModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>);
    }
  }
}

uint64_t destroy for AppPreview()
{
}

uint64_t *initializeBufferWithCopyOfBuffer for AppPreview(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for AppPreview(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for AppPreview(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

unint64_t lazy protocol witness table accessor for type AppPreviewRootModifier and conformance AppPreviewRootModifier()
{
  result = lazy protocol witness table cache variable for type AppPreviewRootModifier and conformance AppPreviewRootModifier;
  if (!lazy protocol witness table cache variable for type AppPreviewRootModifier and conformance AppPreviewRootModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppPreviewRootModifier, &unk_1EFFD89B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppPreviewRootModifier and conformance AppPreviewRootModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(&lazy protocol witness table cache variable for type _ViewModifier_Content<AppPreviewRootModifier> and conformance _ViewModifier_Content<A>, 255, type metadata accessor for _ViewModifier_Content<AppPreviewRootModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type RootModifier and conformance RootModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>)
  {
    type metadata accessor for _ViewModifier_Content<AppPreviewRootModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AppPreviewRootModifier>, RootModifier>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<AppPreviewRootModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<AppPreviewRootModifier>)
  {
    lazy protocol witness table accessor for type AppPreviewRootModifier and conformance AppPreviewRootModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<AppPreviewRootModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AppPreviewRootModifierStorage and conformance AppPreviewRootModifierStorage(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationPresentationAdaptorModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance NavigationPresentationAdaptorModifier(&v7);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

double static _FocusSectionModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v34 = *(a2 + 32);
  v35 = v5;
  v7 = *(a2 + 48);
  v36 = *(a2 + 64);
  v8 = *(a2 + 16);
  v32 = *a2;
  v33 = v8;
  v22 = v34;
  v23 = v7;
  v24 = *(a2 + 64);
  v37 = *(a2 + 80);
  v25 = *(a2 + 80);
  v20 = v32;
  v21 = v6;
  a3(&v18);
  *&v20 = v35;
  DWORD2(v20) = DWORD2(v35);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for FocusSectionResponder(0);
    v9 = swift_allocObject();
    outlined init with copy of _ViewInputs(&v32, &v20);
    ViewTransform.init()();
    *(v9 + 264) = 0;
    *(v9 + 272) = 0;
    *(v9 + 280) = 512;
    *(v9 + 282) = 0;
    *(v9 + 288) = 0;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v20 = v32;
    v21 = v33;
    v10 = DefaultLayoutViewResponder.init(inputs:)();
    v11 = HIDWORD(v35);
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v20 = v32;
    v21 = v33;
    v12 = _ViewInputs.animatedPosition()();
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v20 = v32;
    v21 = v33;
    swift_beginAccess();
    v13 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v20 = v32;
    v21 = v33;
    v14 = _ViewInputs.isEnabled.getter();
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    v15 = _ViewInputs.layoutDirection.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

    LODWORD(v9) = _ViewOutputs.viewResponders()();

    *&v20 = __PAIR64__(v12, v11);
    *(&v20 + 1) = __PAIR64__(v14, v13);
    *&v21 = __PAIR64__(OffsetAttribute2, v15);
    DWORD2(v21) = v9;
    *&v22 = v10;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for [ViewResponder](0);
    lazy protocol witness table accessor for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter();

    LODWORD(v9) = Attribute.init<A>(body:value:flags:update:)();

    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    outlined init with copy of _ViewInputs(&v32, &v20);
    UIKitHostedFocusItemLifecycle.init(inputs:responders:)(&v26, v9, &v20);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of UIKitHostedFocusItemLifecycle(&v20);
    AGGraphSetFlags();
    LOBYTE(v20) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a4 = v18;
  result = v19;
  a4[1] = v19;
  return result;
}

void FocusSectionResponderFilter.updateValue()()
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v31 = v2;
  v3 = *Value;
  v4 = Value[1];
  v5 = AGGraphGetValue();
  v7 = v6;
  v8 = *v5;
  v9 = *(v5 + 8);
  v26 = *(v5 + 16);
  v27 = *(v5 + 32);

  AGGraphGetValue();
  v11 = v10;
  v12 = AGGraphGetValue();
  v14 = v13;
  v30 = *v12;
  v15 = AGGraphGetValue();
  v17 = v16;
  v29 = *v15;
  v18 = AGGraphGetValue();
  v20 = v19;
  v28 = *v18;
  v21 = *(v0 + 32);
  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v22)
  {

    MultiViewResponder.children.setter();
  }

  if ((v31 & 1) != 0 || (v7 & 1) != 0 || (v11 & 1) != 0 || (v14 & 1) != 0 || (v17 & 1) != 0 || (v20 & 1) != 0 || !AGGraphGetOutputValue())
  {

    ViewTransform.appendPosition(_:)(__PAIR128__(v4, v3));
    *(v21 + 216) = v8;
    *(v21 + 224) = v9;
    *(v21 + 232) = v26;
    *(v21 + 248) = v27;

    *(v21 + 264) = MEMORY[0x18D00B390](v23);
    *(v21 + 272) = v24;
    *(v21 + 280) = v30;
    *(v21 + 281) = v29;
    FocusSectionResponder.speedBumpEdges.setter(v28);
  }

  if (AGGraphGetOutputValue())
  {
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18CD69590;
    *(v25 + 32) = v21;

    AGGraphSetOutputValue();
  }
}

void *FocusSectionResponder.speedBumpEdges.setter(uint64_t a1)
{
  *(v1 + 282) = a1;
  result = *(v1 + 288);
  if (result)
  {
    v4 = *(v1 + 281);
    v9 = *(v1 + 288);
    if (v4 == 2)
    {
      v11 = 0;
      v5 = result;
      v6 = &v11;
    }

    else
    {
      v10 = v4 & 1;
      v7 = result;
      v6 = &v10;
    }

    v8 = specialized UIRectEdge.init(_:layoutDirection:)(a1, v6);
    *(v9 + direct field offset for UIKitFocusSectionResponderItem._focusSpeedBumpEdges) = v8;

    return MEMORY[0x1EEE66BB8](v8, v9);
  }

  return result;
}

void FocusSectionResponder.__ivar_destroyer()
{

  v1 = *(v0 + 288);
}

double FocusSectionResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  v1 = *(v0 + 288);

  swift_deallocClassInstance();
  return result;
}

double protocol witness for BaseFocusResponder.platformItem.getter in conformance FocusSectionResponder()
{
  specialized FocusSectionResponder.hostedItem.getter();

  swift_unknownObjectRetain();
  return result;
}

double protocol witness for AnyUIKitHostedFocusItemResponder.hostedItem.getter in conformance FocusSectionResponder()
{
  specialized FocusSectionResponder.hostedItem.getter();
  swift_unknownObjectRetain();
  return result;
}

id UIKitFocusSectionResponderItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitFocusSectionResponderItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized FocusSectionResponder.hostedItem.getter()
{
  result = *(v0 + 288);
  if (!result)
  {
    v2 = *(v0 + 281);
    v3 = *(v0 + 282);
    if (v2 == 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 & 1;
    }

    v4 = specialized UIRectEdge.init(_:layoutDirection:)(v3, &v10);
    v5 = objc_allocWithZone(type metadata accessor for UIKitFocusSectionResponderItem(0));
    *&v5[direct field offset for UIKitFocusSectionResponderItem._focusSpeedBumpEdges] = v4;
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v5[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v5[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v5[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    type metadata accessor for UIKitContainerFocusResponderItem<FocusSectionResponder>(0);
    v9.receiver = v5;
    v9.super_class = v6;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    v8 = *(v0 + 288);
    *(v0 + 288) = v7;

    return *(v0 + 288);
  }

  return result;
}

void type metadata accessor for UIKitContainerFocusResponderItem<FocusSectionResponder>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusSectionResponder>)
  {
    v2 = type metadata accessor for FocusSectionResponder(255);
    v4 = type metadata accessor for UIKitContainerFocusResponderItem(a1, v2, &protocol witness table for FocusSectionResponder, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusSectionResponder>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter()
{
  result = lazy protocol witness table cache variable for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter;
  if (!lazy protocol witness table cache variable for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusSectionResponderFilter, &unk_1EFFD8C00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusSectionResponderFilter and conformance FocusSectionResponderFilter);
  }

  return result;
}

uint64_t specialized FocusSectionResponder.__allocating_init(inputs:)(uint64_t a1)
{
  type metadata accessor for FocusSectionResponder(0);
  v1 = swift_allocObject();
  ViewTransform.init()();
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 512;
  *(v1 + 282) = 0;
  *(v1 + 288) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t specialized FocusSectionResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusSectionResponder(0);
  v2 = swift_allocObject();
  ViewTransform.init()();
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 280) = 512;
  *(v2 + 282) = 0;
  *(v2 + 288) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t View.accessibilityDirectTouch(_:options:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v9[0] = a1 & 1;
  v9[1] = v6;
  v7 = lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey();
  return View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.TouchInfoKey, v9, 1, a3, &type metadata for AccessibilityProperties.TouchInfoKey, a4, v7);
}

uint64_t ModifiedContent<>.accessibilityDirectTouch(_:options:)@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v9[0] = a1 & 1;
  v9[1] = v6;
  v7 = lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey();
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(&type metadata for AccessibilityProperties.TouchInfoKey, v9, 1, a3, &type metadata for AccessibilityProperties.TouchInfoKey, v7, a4);
}

unint64_t lazy protocol witness table accessor for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions()
{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDirectTouchOptions, &type metadata for AccessibilityDirectTouchOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDirectTouchOptions, &type metadata for AccessibilityDirectTouchOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDirectTouchOptions, &type metadata for AccessibilityDirectTouchOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDirectTouchOptions, &type metadata for AccessibilityDirectTouchOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDirectTouchOptions and conformance AccessibilityDirectTouchOptions);
  }

  return result;
}

uint64_t KeyboardShortcutBridge.updateKeyCommands(_:)(uint64_t result)
{
  v132 = result;
  v129 = (v1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings);
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings + 8);
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_currentBindings);
  if (v2 != -1 && v2 == v3[2])
  {
    return result;
  }

  v4 = *v129;
  *&v155 = *v3;
  v152[0] = v4;
  *&v159 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CollectionChanges<Int, Int>();
  v141 = v1;
  type metadata accessor for [KeyboardShortcutBinding]();
  lazy protocol witness table accessor for type [KeyboardShortcutBinding] and conformance [A]();
  lazy protocol witness table accessor for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding();
  v5 = v1;
  CollectionChanges.formChanges<A, B>(from:to:)();
  v126 = v159;
  v6 = *(v159 + 16);
  if (!v6)
  {
LABEL_84:

    v124 = v129[2];
    *v3 = *v129;
    v3[2] = v124;
  }

  v7 = 0;
  v151 = OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_shortcutMap;
  v125 = v159 + 32;
  v133 = v3;
  while (1)
  {
    if (v7 >= v6)
    {
      goto LABEL_99;
    }

    v8 = v125 + 40 * v7;
    v10 = *v8;
    v9 = *(v8 + 8);
    v130 = *v8;
    v149 = v9;
    v127 = v7;
    if (*(v8 + 32))
    {
      break;
    }

    if (v9 != v10)
    {
      if (v10 >= v9)
      {
LABEL_86:
        __break(1u);
      }

      else
      {
        v52 = v9 - 1;
        v53 = (v9 << 6) - 32;
        while (v52 + 1 >= 1)
        {
          if (v52 >= *(*v3 + 16))
          {
            goto LABEL_88;
          }

          v54 = (*v3 + v53);
          v55 = v54[2];
          v56 = v54[3];
          v57 = v54[1];
          v159 = *v54;
          v160 = v57;
          v161 = v55;
          v162 = v56;
          v58 = v159;
          v59 = v57;
          v60 = BYTE8(v57);
          swift_beginAccess();
          v61 = *(v5 + v151);
          if (*(v61 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(v58, *(&v58 + 1), v59, v60), (v63 & 1) != 0))
          {
            v64 = *(v61 + 56) + 24 * v62;
            v65 = *v64;
            v143 = *(v64 + 8);
            v148 = *(v64 + 16);
            swift_endAccess();
            outlined init with copy of KeyboardShortcutSource?(v132, v152);
            v66 = v153;
            v145 = v65;
            if (v153)
            {
              v67 = v154;
              v137 = v154;
              __swift_project_boxed_opaque_existential_1(v152, v153);
              v68 = *(v67 + 16);
              outlined init with copy of KeyboardShortcutBinding(&v159, &v155);

              v69 = v65;

              v68(v69, v143, v148, v66, v137);
              __swift_destroy_boxed_opaque_existential_1(v152);
            }

            else
            {
              outlined init with copy of KeyboardShortcutBinding(&v159, &v155);

              v70 = v65;

              outlined destroy of KeyboardShortcutSource?(v152);
            }

            swift_beginAccess();
            v71 = specialized Dictionary._Variant.removeValue(forKey:)(v58, *(&v58 + 1), v59, v60);
            v73 = v72;
            v75 = v74;
            swift_endAccess();
            v76 = v75;
            v5 = v141;
            outlined consume of KeyboardShortcutBridge.Shortcut?(v71, v73, v76);

            outlined destroy of KeyboardShortcutBinding(&v159);

            v3 = v133;
            v10 = v130;
          }

          else
          {
            swift_endAccess();
          }

          if (v10 == v52)
          {
            goto LABEL_5;
          }

          if (v10 < v52)
          {
            v53 -= 64;
            if (v149 >= v52--)
            {
              continue;
            }
          }

          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_5:
    v7 = v127 + 1;
    v6 = *(v126 + 16);
    if (v127 + 1 == v6)
    {
      goto LABEL_84;
    }
  }

  if (*(v8 + 32) == 1)
  {
    if (v10 != v9)
    {
      if (v9 < v10)
      {
        goto LABEL_101;
      }

      type metadata accessor for UIKeyCommand();
      if (v10 < v9)
      {
        v11 = (v10 << 6) | 0x20;
        v128 = v9 - 1;
        v12 = v10;
        while (1)
        {
          if (v10 < 0)
          {
            goto LABEL_92;
          }

          if (v12 >= *(*v129 + 16))
          {
            goto LABEL_94;
          }

          v13 = (*v129 + v11);
          v14 = v13[1];
          v16 = v13[2];
          v15 = v13[3];
          v159 = *v13;
          v160 = v14;
          v161 = v16;
          v162 = v15;
          v17 = *(&v16 + 1);
          v18 = *(&v159 + 1);
          v144 = v16;
          v146 = v159;
          v19 = v14;
          v20 = BYTE8(v14);
          v155 = *v13;
          v156 = v13[1];
          v157 = v13[2];
          v158 = v13[3];
          outlined init with copy of KeyboardShortcutBinding(&v159, v152);
          outlined init with copy of KeyboardShortcutBinding(&v159, v152);
          outlined init with copy of KeyboardShortcutBinding(&v159, v152);
          v21 = UIKeyCommand.init(_:)(&v155);

          outlined destroy of KeyboardShortcutBinding(&v159);
          swift_beginAccess();
          if (!*(*(v5 + v151) + 16))
          {
            break;
          }

          specialized __RawDictionaryStorage.find<A>(_:)(v146, v18, v19, v20);
          if ((v22 & 1) == 0)
          {
            break;
          }

          swift_endAccess();
          v10 = v130;
          v23 = v149;
LABEL_33:

          outlined destroy of KeyboardShortcutBinding(&v159);
          if (v128 == v12)
          {
            goto LABEL_5;
          }

          v51 = v12 + 1;
          if (v12 + 1 >= v10)
          {
            v11 += 64;
            ++v12;
            if (v51 < v23)
            {
              continue;
            }
          }

          goto LABEL_89;
        }

        v142 = v20;
        v136 = v12;
        v139 = v19;
        swift_endAccess();
        outlined init with copy of KeyboardShortcutSource?(v132, &v155);
        v24 = *(&v156 + 1);
        v134 = v11;
        if (*(&v156 + 1))
        {
          v25 = v157;
          __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
          v26 = *(v25 + 8);
          v27 = v18;

          v26(v21, v144, v17, v24, v25);
          v28 = v146;
          __swift_destroy_boxed_opaque_existential_1(&v155);
        }

        else
        {

          outlined destroy of KeyboardShortcutSource?(&v155);
          v27 = v18;
          v28 = v146;
        }

        swift_beginAccess();
        v29 = v17;

        v147 = v21;
        v30 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v152[0] = *(v141 + v151);
        v32 = v152[0];
        *(v141 + v151) = 0x8000000000000000;
        v33 = v28;
        v34 = v27;
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27, v139, v142);
        v37 = *(v32 + 16);
        v38 = (v35 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          goto LABEL_96;
        }

        v40 = v35;
        if (*(v32 + 24) < v39)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v27, v139, v142);
          v12 = v136;
          if ((v40 & 1) != (v42 & 1))
          {
            goto LABEL_102;
          }

          v36 = v41;
          if ((v40 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_28:

          v43 = v152[0];
          v44 = *(v152[0] + 56) + 24 * v36;
          v45 = *v44;
          *v44 = v30;
          *(v44 + 8) = v144;
          *(v44 + 16) = v29;

LABEL_32:
          v5 = v141;
          *(v141 + v151) = v43;
          swift_endAccess();
          v10 = v130;
          v21 = v147;
          v23 = v149;
          v3 = v133;
          v11 = v134;
          goto LABEL_33;
        }

        v12 = v136;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v35)
          {
            goto LABEL_28;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v40)
          {
            goto LABEL_28;
          }
        }

LABEL_30:
        v43 = v152[0];
        *(v152[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v46 = v43[6] + 32 * v36;
        *v46 = v33;
        *(v46 + 8) = v34;
        *(v46 + 16) = v139;
        *(v46 + 24) = v142;
        v47 = (v43[7] + 24 * v36);
        *v47 = v30;
        v47[1] = v144;
        v47[2] = v29;
        v48 = v43[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_97;
        }

        v43[2] = v50;
        goto LABEL_32;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_5;
  }

  v79 = *(v8 + 16);
  v78 = *(v8 + 24);
  if (v79 == v78)
  {
    goto LABEL_5;
  }

  if (v78 >= v79)
  {
    if (v79 < v78)
    {
      v80 = (v79 << 6) | 0x20;
      v135 = v78 - 1;
      v138 = *(v8 + 24);
      v81 = *(v8 + 16);
      v131 = v81;
      while ((v79 & 0x8000000000000000) == 0)
      {
        if (v81 >= *(*v129 + 16))
        {
          goto LABEL_93;
        }

        v82 = (*v129 + v80);
        v83 = v82[1];
        v85 = v82[2];
        v84 = v82[3];
        v159 = *v82;
        v160 = v83;
        v161 = v85;
        v162 = v84;
        v86 = v85;
        v87 = v159;
        v88 = v83;
        v89 = BYTE8(v83);
        swift_beginAccess();
        v90 = *(v5 + v151);
        if (*(v90 + 16) && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(v87, *(&v87 + 1), v88, v89), (v92 & 1) != 0))
        {
          v93 = *(v90 + 56) + 24 * v91;
          v94 = *v93;
          v95 = *(v93 + 8);
          v96 = *(v93 + 16);
          outlined init with copy of KeyboardShortcutBinding(&v159, &v155);

          v97 = v94;
          swift_retain_n();
          swift_endAccess();
          outlined consume of KeyboardShortcutBridge.Shortcut?(v94, v95, v96);

          v5 = v141;
          swift_beginAccess();
          v99 = specialized Dictionary.subscript.modify(&v155, v87, *(&v87 + 1), v88, v89);
          if (*v98)
          {
            *(v98 + 8) = v86;

            (v99)(&v155, 0);
            swift_endAccess();

            outlined destroy of KeyboardShortcutBinding(&v159);
          }

          else
          {
            (v99)(&v155, 0);
            swift_endAccess();

            outlined destroy of KeyboardShortcutBinding(&v159);
          }

          v3 = v133;
        }

        else
        {
          v150 = v88;
          v140 = v89;
          swift_endAccess();
          type metadata accessor for UIKeyCommand();
          v155 = v159;
          v156 = v160;
          v157 = v161;
          v158 = v162;
          outlined init with copy of KeyboardShortcutBinding(&v159, v152);
          outlined init with copy of KeyboardShortcutBinding(&v159, v152);
          outlined init with copy of KeyboardShortcutBinding(&v159, v152);

          v100 = UIKeyCommand.init(_:)(&v155);

          outlined destroy of KeyboardShortcutBinding(&v159);
          outlined init with copy of KeyboardShortcutSource?(v132, &v155);
          v101 = *(&v156 + 1);
          if (*(&v156 + 1))
          {
            v102 = v157;
            __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
            (*(v102 + 8))(v100, v86, *(&v86 + 1), v101, v102);
            __swift_destroy_boxed_opaque_existential_1(&v155);
          }

          else
          {
            outlined destroy of KeyboardShortcutSource?(&v155);
          }

          swift_beginAccess();

          v103 = v100;
          v104 = swift_isUniquelyReferenced_nonNull_native();
          v152[0] = *(v141 + v151);
          v105 = v152[0];
          *(v141 + v151) = 0x8000000000000000;
          v106 = v89;
          v108 = specialized __RawDictionaryStorage.find<A>(_:)(v87, *(&v87 + 1), v150, v89);
          v109 = *(v105 + 16);
          v110 = (v107 & 1) == 0;
          v111 = v109 + v110;
          if (__OFADD__(v109, v110))
          {
            goto LABEL_95;
          }

          v112 = v107;
          if (*(v105 + 24) >= v111)
          {
            if ((v104 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v111, v104);
            v113 = specialized __RawDictionaryStorage.find<A>(_:)(v87, *(&v87 + 1), v150, v140);
            if ((v112 & 1) != (v114 & 1))
            {
              goto LABEL_102;
            }

            v108 = v113;
          }

          if (v112)
          {

            v115 = v152[0];
            v116 = *(v152[0] + 56) + 24 * v108;
            v117 = *v116;
            *v116 = v103;
            *(v116 + 8) = v86;
          }

          else
          {
            v118 = v106;
            v115 = v152[0];
            *(v152[0] + 8 * (v108 >> 6) + 64) |= 1 << v108;
            v119 = v115[6] + 32 * v108;
            *v119 = v87;
            *(v119 + 16) = v150;
            *(v119 + 24) = v118;
            v120 = v115[7] + 24 * v108;
            *v120 = v103;
            *(v120 + 8) = v86;
            v121 = v115[2];
            v49 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v49)
            {
              goto LABEL_98;
            }

            v115[2] = v122;
          }

          v5 = v141;
          *(v141 + v151) = v115;
          swift_endAccess();

          outlined destroy of KeyboardShortcutBinding(&v159);
          v3 = v133;
          v79 = v131;
        }

        if (v135 == v81)
        {
          goto LABEL_5;
        }

        v123 = v81 + 1;
        if (v81 + 1 >= v79)
        {
          v80 += 64;
          ++v81;
          if (v123 < v138)
          {
            continue;
          }
        }

        goto LABEL_90;
      }

      goto LABEL_91;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}