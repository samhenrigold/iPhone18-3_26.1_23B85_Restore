unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollAnchorStorage.Role, UnitPoint>, lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role, &type metadata for ScrollAnchorStorage.Role, &type metadata for UnitPoint);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t static CountViews._makeViewList(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63[17] = *MEMORY[0x1E69E9840];
  v11 = *a1;
  outlined init with copy of _ViewListInputs(a2, v63);
  v46 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v63[0]);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v63, 0);

  outlined init with copy of _ViewListInputs(v63, v61);
  v62 = 0;
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static CountViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, type metadata accessor for CountViews, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  v44 = v11;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v52);
  v13 = v52;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v49) = v13;
  (*(a5 + 32))(v59, &v49, v61, a3, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v13, a3, a5);
  if (v60)
  {
    outlined init with copy of _ViewListOutputs.Views(v59, v57);
    if (v58)
    {
      v16 = LODWORD(v57[0]);

      outlined init with copy of _ViewListInputs(v63, &v52);
      v17 = v52;
      v18 = DWORD1(v54);
      v19 = *(&v55 + 1);

      outlined destroy of _ViewListInputs(&v52);
      *&v49 = v17;
      *(&v49 + 1) = v19;
      *v50 = v18;
      memset(&v50[8], 0, 33);
      LOBYTE(v51) = 0;
      *(&v51 + 1) = 0;
      v20 = (*(a5 + 40))(&v49, a3, a5);
      v22 = v21;
      v54 = *&v50[16];
      v55 = *&v50[32];
      v56 = v51;
      v52 = v49;
      v53 = *v50;
      outlined destroy of _ViewListCountInputs(&v52);
      if (v22)
      {
        v23 = v16 | (*MEMORY[0x1E698D3F8] << 32);
      }

      else
      {
        v23 = v20;
      }
    }

    else
    {
      outlined init with take of _ViewList_Elements(v57, &v52);
      v24 = *(&v53 + 1);
      v25 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      v23 = (*(v25 + 8))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v52);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v23 = v59[7];
  }

  v26 = type metadata accessor for PlaceholderContentView(0, a3, v14, v15);
  outlined init with copy of _ViewListOutputs(v59, &v52);
  v27 = swift_allocObject();
  v28 = v55;
  *(v27 + 48) = v54;
  *(v27 + 64) = v28;
  *(v27 + 80) = v56;
  v29 = v53;
  *(v27 + 16) = v52;
  *(v27 + 32) = v29;
  _ViewListInputs.pushModifierBody<A>(_:body:)(v26, partial apply for closure #2 in static CountViews._makeViewList(view:inputs:), v27, v26);

  if (v46)
  {
    if (v22)
    {
      KeyPath = swift_getKeyPath();
      LODWORD(v52) = v23;
      *(&v52 + 1) = closure #1 in Attribute.subscript.getterspecialized partial apply;
      *&v53 = KeyPath;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for Map<ViewList, Int>(0);
      lazy protocol witness table accessor for type Map<ViewList, Int> and conformance Map<A, B>();

      v31 = Attribute.init<A>(body:value:flags:update:)();

      LODWORD(v49) = v31;
      DWORD2(v49) = v44;
      *v50 = v23;
      v50[8] = 1;
      v32 = type metadata accessor for Optional();
      *&v52 = a3;
      *(&v52 + 1) = a4;
      *&v53 = a5;
      *(&v53 + 1) = a6;
      DynamicContent = type metadata accessor for CountViews.MakeDynamicContent(0, &v52);
      swift_getWitnessTable(protocol conformance descriptor for CountViews<A, B>.MakeDynamicContent, DynamicContent);
      _GraphValue.init<A>(_:)(&v49, v32, DynamicContent, v34, &v52);
      v35 = v52;
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      LODWORD(v49) = v35;
      static Optional<A>._makeViewList(view:inputs:)(&v49, v63, a6, a7);
      v48 = a6;
      swift_getWitnessTable(protocol conformance descriptor for <A> A?, v32, &v48);
      v37 = v36;
      v38 = v35;
      v39 = v32;
      goto LABEL_23;
    }

    if (v23 < 1)
    {
      static _ViewListOutputs.emptyViewList(inputs:)(v63, a7);
      goto LABEL_24;
    }

    LODWORD(v49) = v44;
    *(&v49 + 1) = v23;
    v50[0] = 0;
  }

  else
  {
    LODWORD(v49) = v44;
    *(&v49 + 1) = v23;
    v50[0] = v22 & 1;
  }

  *&v52 = a3;
  *(&v52 + 1) = a4;
  *&v53 = a5;
  *(&v53 + 1) = a6;
  v40 = type metadata accessor for CountViews.CountHelper(0, &v52);
  swift_getWitnessTable(protocol conformance descriptor for CountViews<A, B>.CountHelper, v40);
  _GraphValue.init<A>(_:)(&v49, a4, v40, v41, &v52);
  v42 = v52;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v49) = v42;
  (*(a6 + 32))(&v49, v63, a4, a6);
  v38 = v42;
  v39 = a4;
  v37 = a6;
LABEL_23:
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v38, v39, v37);
LABEL_24:
  outlined destroy of _ViewListOutputs(v59);
  outlined destroy of _ViewListInputs(v61);
  return outlined destroy of _ViewListInputs(v63);
}

uint64_t sub_18D1C9DD0()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

void TupleView.CountViews.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 88) & 1) != 0 || (v7 = *(v5 + 16), v8 = *(v5 + 48), v23 = *(v5 + 32), v24 = v8, v9 = *(v5 + 48), v25 = *(v5 + 64), v10 = *(v5 + 16), v22[0] = *v5, v22[1] = v10, v19 = v23, v20 = v9, v21 = *(v5 + 64), v11 = *(v5 + 80), v17 = v22[0], v18 = v7, v12 = *(a4 + 40), v13 = a4, outlined init with copy of _ViewListCountInputs(v22, &v16), v14 = v12(&v17, a3, v13), LOBYTE(v13) = v15, v26[2] = v19, v26[3] = v20, v26[4] = v21, v26[0] = v17, v26[1] = v18, outlined destroy of _ViewListCountInputs(v26), (v13))
  {
    *(v5 + 80) = 0;
    *(v5 + 88) = 1;
  }

  else if (__OFADD__(v11, v14))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 80) = v11 + v14;
    *(v5 + 88) = 0;
  }
}

void *static _DelayedPreferenceView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 48);
  v12 = *(a2 + 16);
  v74 = *(a2 + 32);
  v75 = v11;
  v13 = *(a2 + 48);
  v76 = *(a2 + 64);
  v14 = *(a2 + 16);
  v73[0] = *a2;
  v73[1] = v14;
  v69 = v74;
  v70 = v13;
  v71 = *(a2 + 64);
  v15 = *a1;
  v77 = *(a2 + 80);
  v72 = *(a2 + 80);
  v67 = v73[0];
  v68 = v12;
  outlined init with copy of _ViewInputs(v73, &v78);
  PreferencesInputs.add<A>(_:)(a3, a3, a5);
  *&v78 = 0;
  BYTE8(v78) = 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = type metadata accessor for PreferenceValueAttribute(0, a3, a5, v16);
  swift_getWitnessTable(protocol conformance descriptor for PreferenceValueAttribute<A>, v47);
  v48 = v17;
  v18 = type metadata accessor for Attribute();
  v19 = MEMORY[0x1E69E73E0];
  v20 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v78, partial apply for closure #1 in Attribute.init<A>(_:), v45, v47, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v21);
  v22 = v65[0];
  *&v65[0] = __PAIR64__(v65[0], v15);
  v35 = v22;
  v42 = a4;
  *&v78 = a3;
  *(&v78 + 1) = a4;
  *&v79 = a5;
  *(&v79 + 1) = a6;
  v43 = type metadata accessor for DelayedPreferenceChild(0, &v78);
  swift_getWitnessTable(protocol conformance descriptor for DelayedPreferenceChild<A, B>, v43);
  v44 = v23;
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v65, closure #1 in Attribute.init<A>(_:)partial apply, v41, v43, v19, v24, v20, v25);
  _GraphValue.init(_:)(v78, &v37);
  v26 = v37;
  v80 = v69;
  v81 = v70;
  v82 = v71;
  v83 = v72;
  v78 = v67;
  v79 = v68;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v59 = v80;
  v60 = v81;
  v61 = v82;
  v62 = v83;
  v57 = v78;
  v58 = v79;
  v28 = v80;
  LODWORD(v59) = 0;
  LODWORD(v49[0]) = v26;
  v63[0] = v78;
  v63[1] = v79;
  v64 = v83;
  v63[3] = v81;
  v63[4] = v82;
  v63[2] = v59;
  v53 = v59;
  v54 = v81;
  v55 = v82;
  v56 = v83;
  v51 = v78;
  v52 = v79;
  v29 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v78, v65);
  outlined init with copy of _ViewInputs(v63, v65);
  v29(&v38, v49, &v51, a4, a6);
  v65[2] = v53;
  v65[3] = v54;
  v65[4] = v55;
  v66 = v56;
  v65[0] = v51;
  v65[1] = v52;
  outlined destroy of _ViewInputs(v65);
  LODWORD(v59) = v28;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v38, &v57);
    AGSubgraphEndTreeElement();
  }

  v49[2] = v59;
  v49[3] = v60;
  v49[4] = v61;
  v50 = v62;
  v49[0] = v57;
  v49[1] = v58;
  outlined destroy of _ViewInputs(v49);
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = _ViewOutputs.subscript.getter(a3, a3, a5);
  static PreferenceValueAttribute.setSource(_:of:)(v33 | ((HIDWORD(v33) & 1) << 32), v35, a3, a5);
  v53 = v69;
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v51 = v67;
  v52 = v68;
  result = outlined destroy of _ViewInputs(&v51);
  *a7 = v30;
  *(a7 + 8) = v31;
  *(a7 + 12) = v32;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceValueAttribute<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PreferenceValueAttribute<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DelayedPreferenceChild<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DelayedPreferenceChild<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t partial apply for closure #1 in static PreferenceValueAttribute.setSource(_:of:)(uint64_t a1)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t DelayedPreferenceChild.value.getter@<X0>(unint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v9 = a1;
  v64 = a6;
  v80 = *MEMORY[0x1E69E9840];
  v10 = HIDWORD(a1);
  v67 = type metadata accessor for ObservationTracking._AccessList();
  v11 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v58 - v17;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v58 - v25;
  v66 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v58 - v30;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = v65;
  v76 = v9;
  v77 = v10;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(v31[2]);
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v31[2], v33);
    v79 = type metadata accessor for ObservationCenter();
    v31 = v31[3];
    *&v78 = v31;
    outlined init with take of Any(&v78, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v78);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v70;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v36 = v66;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(v34 + 24) = v31;
    goto LABEL_9;
  }

  v59 = v13;
  v60 = CurrentAttribute;
  swift_beginAccess();
  v65 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  v37 = v67;
  v38 = (*(v11 + 56))(v23, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v38);
  *(&v58 - 4) = a3;
  *(&v58 - 3) = partial apply for closure #1 in DelayedPreferenceChild.value.getter;
  *(&v58 - 2) = &v71;
  v39 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v58 - 6), v19, v39, a3, MEMORY[0x1E69E7288], &v70);
  a2 = *(v36 + 32);
  a2(v69, v28, a3);
  v40 = v68;
  outlined init with take of ObservationTracking._AccessList?(v23, v68);
  v41 = v61;
  outlined init with copy of ObservationTracking._AccessList?(v40, v61);
  if ((*(v11 + 48))(v41, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v40);
    v42 = v41;
    v43 = v64;
    goto LABEL_12;
  }

  v19 = *(v11 + 32);
  v44 = v63;
  v19(v63, v41, v37);
  (*(v11 + 16))(v62, v44, v37);
  v31 = *(v34 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 24) = v31;
  v58 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v47 = v31[2];
  v46 = v31[3];
  if (v47 >= v46 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v31);
  }

  v31[2] = v47 + 1;
  v48 = v31 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47;
  v11 = v58;
  v37 = v67;
  v19(v48, v62, v67);
  *(v34 + 24) = v31;
  (*(v11 + 8))(v63, v37);
  v43 = v64;
  v42 = v68;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  a2(v43, v69, a3);
  v49 = *(v34 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v11 + 16);
    v51 = v11 + 16;
    v68 = *(v34 + 24);
    v69 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      (v69)(v56, v53, v37);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v37);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v34 + 24) = v65;
}

uint64_t closure #1 in DelayedPreferenceChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v8 = type metadata accessor for _DelayedPreferenceView(0, v11);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in DelayedPreferenceChild.value.getter, v10, v8, a3, a6);
}

uint64_t static AndOperationViewInputPredicate.evaluate(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v14 = a1[2];
  if ((*(a4 + 8))(&v12))
  {
    v9 = a1[1];
    v12 = *a1;
    v13 = v9;
    v14 = a1[2];
    v10 = (*(a5 + 8))(&v12, a3, a5);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t static ObservationCenter.current.getter()
{
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v1 = static ObservationCenter._current;
  swift_beginAccess();
  v2 = pthread_getspecific(v1[2]);
  if (!v2)
  {
    v3 = swift_slowAlloc();
    pthread_setspecific(v1[2], v3);
    v6 = v0;
    *&v5 = v1[3];
    outlined init with take of Any(&v5, v3);

    v2 = v3;
  }

  outlined init with copy of Any(v2, &v5);
  swift_dynamicCast();
  return v7;
}

uint64_t ObservationCenter._withObservation<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ObservationTracking._AccessList();
  (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  v20 = a5;
  v21 = a3;
  v22 = a4;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v16 = v15;
  v17 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, v19, v16, v17, a5, MEMORY[0x1E69E7288], &v23);
  if (v5)
  {
    return _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(a2, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  }

  else
  {
    return (*(v11 + 32))(a1, v13, a5);
  }
}

Swift::Void __swiftcall _ViewListCountInputs.resetCurrentStyleableView()()
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v0, 0);
}

uint64_t static _ViewListOutputs.groupViewListCount<A, B, C>(inputs:contentType:headerType:footerType:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a1[1];
  v94[0] = *a1;
  v94[1] = v13;
  v14 = a1[1];
  v94[2] = a1[2];
  v15 = a1[2];
  v94[3] = a1[3];
  v16 = a1[3];
  v94[4] = a1[4];
  v90 = v14;
  v91 = v15;
  v17 = *&v94[0];
  v18 = BYTE8(v94[0]);
  v92 = v16;
  v93 = a1[4];
  v19 = *(&v94[0] + 1);
  if ((WORD4(v94[0]) & 0x1000) == 0)
  {
    v20 = *(&v94[0] + 1) & 0xFFFFFFFFFFFFEFF7;
    if ((BYTE8(v94[0]) & 8) == 0)
    {
      v20 = *(&v94[0] + 1);
    }

    if ((v20 & 0x100) != 0)
    {
      v19 = v20 & 0xFFFFFFFFFFFFEEFFLL;
    }

    else
    {
      v19 = v20;
    }
  }

  *&v84 = *&v94[0];
  *(&v84 + 1) = v19;
  v21 = a1[2];
  v85 = a1[1];
  v86 = v21;
  v22 = a1[4];
  v87 = a1[3];
  v88 = v22;
  v81 = v21;
  v82 = v87;
  v83 = v22;
  v79 = v84;
  v80 = v85;
  v23 = *(a8 + 40);
  outlined init with copy of _ViewListCountInputs(v94, v89);
  outlined init with copy of _ViewListCountInputs(&v84, v89);
  v24 = v23(&v79, a5, a8);
  v26 = v25;
  v89[1] = v80;
  v89[2] = v81;
  v89[3] = v82;
  v89[4] = v83;
  v89[0] = v79;
  outlined destroy of _ViewListCountInputs(v89);
  if (v26)
  {
    *&v79 = v17;
    *(&v79 + 1) = v19;
    v27 = a1[2];
    v80 = a1[1];
    v81 = v27;
    v28 = a1[4];
    v82 = a1[3];
    v83 = v28;
    outlined destroy of _ViewListCountInputs(&v79);
    return v24;
  }

  *&v79 = v17;
  *(&v79 + 1) = v19;
  v30 = a1[2];
  v80 = a1[1];
  v81 = v30;
  v31 = a1[4];
  v82 = a1[3];
  v83 = v31;
  v76 = v30;
  v77 = v82;
  v78 = v31;
  v74 = v79;
  v75 = v80;
  if ((v18 & 8) != 0 && (v19 & 0x10) == 0)
  {
    *(&v74 + 1) = v19 | 0x10;
  }

  if ((v18 & 0x20) != 0)
  {
    outlined init with copy of _ViewListCountInputs(&v79, v73);
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v32 = static StyleContextInput.defaultValue;
    outlined init with copy of _ViewListCountInputs(&v79, v73);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v74, v32, *(&v32 + 1));
    outlined destroy of _ViewListCountInputs(&v79);
  }

  else
  {
    outlined init with copy of _ViewListCountInputs(&v79, v73);
  }

  v71[1] = v75;
  v71[2] = v76;
  v71[3] = v77;
  v71[4] = v78;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v71[0] = v74;
  v66 = v74;
  v67 = v75;
  v33 = *(a9 + 40);
  outlined init with copy of _ViewListCountInputs(v71, &v61);
  v29 = v33(&v66);
  v35 = v34;
  v72[2] = v68;
  v72[3] = v69;
  v72[4] = v70;
  v72[0] = v66;
  v72[1] = v67;
  outlined destroy of _ViewListCountInputs(v72);
  v73[2] = v76;
  v73[3] = v77;
  v73[4] = v78;
  v73[0] = v74;
  v73[1] = v75;
  outlined destroy of _ViewListCountInputs(v73);
  if (v35)
  {
    *&v66 = v17;
    *(&v66 + 1) = v19;
    v36 = a1[2];
    v67 = a1[1];
    v68 = v36;
    v37 = a1[4];
    v69 = a1[3];
    v70 = v37;
    outlined destroy of _ViewListCountInputs(&v66);
    return v29;
  }

  v38 = v24 + v29;
  if (__OFADD__(v24, v29))
  {
    __break(1u);
    goto LABEL_31;
  }

  v35 = a10;
  *&v66 = v17;
  *(&v66 + 1) = v19;
  v39 = a1[2];
  v67 = a1[1];
  v68 = v39;
  v40 = a1[4];
  v69 = a1[3];
  v70 = v40;
  v63 = v39;
  v64 = v69;
  v65 = v40;
  v61 = v66;
  v62 = v67;
  if ((v18 & 8) != 0 && (v19 & 8) != 0)
  {
    *(&v61 + 1) = v19 & 0xFFFFFFFFFFFFFFF7;
  }

  if ((v18 & 0x40) != 0)
  {
    outlined init with copy of _ViewListCountInputs(&v66, v60);
    if (one-time initialization token for defaultValue == -1)
    {
LABEL_26:
      v41 = static StyleContextInput.defaultValue;
      outlined init with copy of _ViewListCountInputs(&v66, v60);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v61, v41, *(&v41 + 1));
      outlined destroy of _ViewListCountInputs(&v66);
      goto LABEL_27;
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  outlined init with copy of _ViewListCountInputs(&v66, v60);
LABEL_27:
  v53[1] = v62;
  v53[2] = v63;
  v53[3] = v64;
  v53[4] = v65;
  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53[0] = v61;
  v48 = v61;
  v49 = v62;
  v42 = *(v35 + 40);
  outlined init with copy of _ViewListCountInputs(v53, v47);
  v29 = v42(&v48);
  v44 = v43;
  v54[2] = v50;
  v54[3] = v51;
  v54[4] = v52;
  v54[0] = v48;
  v54[1] = v49;
  outlined destroy of _ViewListCountInputs(v54);
  v55[0] = v17;
  v55[1] = v19;
  v56 = v90;
  v57 = v91;
  v58 = v92;
  v59 = v93;
  outlined destroy of _ViewListCountInputs(v55);
  v60[2] = v63;
  v60[3] = v64;
  v60[4] = v65;
  v60[0] = v61;
  v60[1] = v62;
  result = outlined destroy of _ViewListCountInputs(v60);
  if (v44)
  {
    return v29;
  }

  v46 = __OFADD__(v38, v29);
  v29 += v38;
  if (!v46)
  {
    return v29;
  }

  __break(1u);
  return result;
}

uint64_t static TupleView._viewListCount(inputs:)(__int128 *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v29 = a1[2];
  v30 = v3;
  v31 = a1[4];
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a2, &v22);
  v5 = v22;
  if ((BYTE9(v27) & 2) != 0)
  {
    v12 = *(v22 + 16);
  }

  else
  {
    v24 = v29;
    v25 = v30;
    *v26 = v31;
    v22 = v27;
    v23 = v28;
    *&v26[16] = 0;
    v26[24] = 0;
    v6 = *(v5 + 16);
    outlined init with copy of _ViewListCountInputs(&v27, &v17);
    if (v6)
    {
      v9 = 0;
      v10 = 40;
      while (1)
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
        }

        v17 = *(v5 + v10);
        v11 = type metadata accessor for TupleView.CountViews(0, a2, v7, v8);
        TypeConformance<>.visitType<A>(visitor:)(&v22, v11, &protocol witness table for TupleView<A>.CountViews);
        if (v26[24])
        {
          break;
        }

        ++v9;
        v10 += 24;
        if (v6 == v9)
        {
          goto LABEL_7;
        }
      }

      v12 = *&v26[16];

      v19 = v24;
      v20 = v25;
      v21[0] = *v26;
      *(v21 + 9) = *&v26[9];
      v17 = v22;
      v18 = v23;
      (*(*(v11 - 8) + 8))(&v17, v11);
    }

    else
    {
LABEL_7:

      v12 = *&v26[16];
      v19 = v24;
      v20 = v25;
      v21[0] = *v26;
      *(v21 + 9) = *&v26[9];
      v17 = v22;
      v18 = v23;
      v15 = type metadata accessor for TupleView.CountViews(0, a2, v13, v14);
      (*(*(v15 - 8) + 8))(&v17, v15);
    }
  }

  return v12;
}

uint64_t protocol witness for _ViewList_Elements.makeElements(from:inputs:indirectMap:body:) in conformance EmptyViewListElements(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return 1;
}

uint64_t one-time initialization function for bottomTrailing()
{
  if (one-time initialization token for trailing != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.trailing;
  if (one-time initialization token for bottom != -1)
  {
    result = swift_once();
  }

  static Alignment.bottomTrailing = v0;
  unk_1ED51F140 = static VerticalAlignment.bottom;
  return result;
}

id SystemColorType.kitColor.getter()
{
  v1 = *v0;
  if (v1 > 0xC)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *off_1E7243A28[v1]];
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle>, &type metadata for Rectangle, &protocol witness table for Rectangle, type metadata accessor for ViewBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>);
    }
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollPositionKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollStateRequestKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollStateRequestKey>, &type metadata for _GraphInputs.ScrollStateRequestKey, &protocol witness table for _GraphInputs.ScrollStateRequestKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollStateRequestKey, 0, v6);
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollStateRequestKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

unint64_t _ViewOutputs.viewResponders()()
{
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(*v0);
  if ((result & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for [ViewResponder](0);
    v3 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v2, 0);

    return v3;
  }

  return result;
}

Swift::Void __swiftcall _GraphInputs.convertScrollStateInputsToContent()()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v5);
  if (v2)
  {
    v3 = *(v2 + 72) | (*(v2 + 76) << 32);
  }

  else
  {
    v3 = 0xFF00000000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v0, v3);

  v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(*v0);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v0, v4);
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v7) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ScrollPositionStorage?, &type metadata for ScrollPositionStorage, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v5 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionKey>, &type metadata for _GraphInputs.ContentScrollPositionKey, &protocol witness table for _GraphInputs.ContentScrollPositionKey, type metadata accessor for TypedElement);
    v6 = swift_allocObject();
    *(v6 + 76) = BYTE4(a2);
    *(v6 + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ContentScrollPositionKey, 0, v5);
  }
}

uint64_t specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for LinearGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for LinearGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v6 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, v6, a1, &type metadata for GlassEffectLocalModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), v6);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm(a2, a3, v11, v6, a1, &type metadata for GlassEffectLocalModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), v6);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
    type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AnyShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AnyShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AnyShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Path, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Path, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Path>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContentCaptureProtectionViewModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0);
    type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContentCaptureProtectionViewModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0);
    type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<ContentCaptureProtectionViewModifier>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for FlexibleButtonFrameModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0);
    type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for FlexibleButtonFrameModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0);
    type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<FlexibleButtonFrameModifier>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for SafeAreaPaddingModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
    type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for SafeAreaPaddingModifier, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
      type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
    type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Rectangle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _TestApp.RootView, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _TestApp.RootView, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Ellipse._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Capsule._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for Circle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for PartialContainerRelativeShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for PartialContainerRelativeShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for DefaultGlassEffectShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for DefaultGlassEffectShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<DefaultGlassEffectShape>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for UnevenRoundedRectangle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ImplicitContainerShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ImplicitContainerShape, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ContainerRelativeShape._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingSummarySymbol, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingSummarySymbol, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingSummarySymbol>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingText, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for _IntelligenceSupport.AnimatingText, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<_IntelligenceSupport.AnimatingText>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ConcentricRectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for ConcentricRectangle, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for EllipticalGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for EllipticalGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<EllipticalGradient>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RoundedRectangle._Inset, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AngularGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, AngularGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for AngularGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, AngularGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<AngularGradient>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RadialGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, RadialGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for RadialGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, RadialGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<RadialGradient>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a4 & 1;
  v14 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for MeshGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      goto LABEL_6;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v14);
    LOBYTE(v19) = v11;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v11, a5, a1, &type metadata for MeshGradient, &v19);
    v15 = v19;
    v16 = v20;
    v17 = HIDWORD(v20);
    if (HIDWORD(v20))
    {
      v19 = __PAIR64__(*(a1 + 24), a5);
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
      type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
LABEL_6:
      result = Attribute.init<A>(body:value:flags:update:)();
      *a6 = result;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16 | (v17 << 32);
      *(a6 + 24) = 0;
      return result;
    }

    v20 = v20;
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v19) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
    type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  result = Attribute.init<A>(body:value:flags:update:)();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

void lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle>, &type metadata for Rectangle, &protocol witness table for Rectangle, type metadata accessor for ViewBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>);
  }
}

void static Layout.layoutProperties.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 2) = 0;
}

{
  static Layout.layoutProperties.getter(a1);
}

uint64_t _GraphInputs.layoutDirection.getter()
{
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  return v1;
}

uint64_t _GraphInputs.isEnabled.getter()
{
  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.isEnabled;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.isEnabled.getter, 0);
  swift_endAccess();
  return v1;
}

uint64_t _GraphInputs.scrollAnchors.getter()
{
  if (one-time initialization token for scrollAnchors != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.scrollAnchors;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.scrollAnchors.getter, 0);
  swift_endAccess();
  return v1;
}

uint64_t one-time initialization function for scrollAnchors(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.scrollAnchors = result;
  return result;
}

unsigned int *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ViewFrame(unsigned int *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ViewFrameV_Tt1B5(a1, v4);
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ViewFrameV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ViewFrame> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA10EdgeInsetsV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<EdgeInsets> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unsigned int *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance EdgeInsets(unsigned int *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA10EdgeInsetsV_Tt1B5(a1, v4);
}

void lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets()
{
  if (!lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets)
  {
    swift_getWitnessTable(protocol conformance descriptor for EdgeInsets, &type metadata for EdgeInsets, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets);
  }
}

uint64_t _GraphInputs.scrollPositionBinding(kind:)(_BYTE *a1)
{
  v2 = *v1;
  if (*a1)
  {
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v6);
    if (!v3)
    {
      return *MEMORY[0x1E698D3F8];
    }
  }

  else
  {
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v6);
    if (!v3)
    {
      return *MEMORY[0x1E698D3F8];
    }
  }

  if (*(v3 + 76) == 255 || ((*(v3 + 76) << 32) & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  return *(v3 + 72);
}

Swift::Bool __swiftcall _GraphInputs.hasValueScrollPosition(kind:)(SwiftUI::ScrollStateInputKind kind)
{
  v2 = *v1;
  if (*kind)
  {
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v5);
    if (!v3)
    {
      return v3;
    }

    goto LABEL_5;
  }

  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v2, v5);
  if (v3)
  {
LABEL_5:
    LOBYTE(v3) = *(v3 + 76) != 255;
  }

  return v3;
}

double _GraphInputs.updateScrollStateRequest.setter(int a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(v1, a1);

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionAnchorKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.ScrollPositionAnchorKey.defaultValue;
  }

  return *v3;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollPositionAnchorKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionAnchorKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionAnchorKey>, &type metadata for _GraphInputs.ContentScrollPositionAnchorKey, &protocol witness table for _GraphInputs.ContentScrollPositionAnchorKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ContentScrollPositionAnchorKey, 0, v6);
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ContentScrollPositionAnchorKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v7) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ScrollPositionStorage?, &type metadata for ScrollPositionStorage, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v5 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollPositionKey>, &type metadata for _GraphInputs.ScrollPositionKey, &protocol witness table for _GraphInputs.ScrollPositionKey, type metadata accessor for TypedElement);
    v6 = swift_allocObject();
    *(v6 + 76) = BYTE4(a2);
    *(v6 + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollPositionKey, 0, v5);
  }
}

Swift::Void __swiftcall _GraphInputs.resetScrollPosition(kind:)(SwiftUI::ScrollStateInputKind kind)
{
  v2 = *kind;

  if (v2)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v1, 0xFF00000000);

    v3 = *MEMORY[0x1E698D3F8];

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v1, v3);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v1, 0xFF00000000);

    v4 = *MEMORY[0x1E698D3F8];

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v1, v4);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionAnchorKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020ScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollPositionAnchorKey>, &type metadata for _GraphInputs.ScrollPositionAnchorKey, &protocol witness table for _GraphInputs.ScrollPositionAnchorKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollPositionAnchorKey, 0, v6);
  }
}

void *static ResetScrollInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v34 = *(a2 + 32);
  v35 = v4;
  v6 = *(a2 + 48);
  v36 = *(a2 + 64);
  v7 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v7;
  v29 = v34;
  v30 = v6;
  v31 = *(a2 + 64);
  v37 = *(a2 + 80);
  v32 = *(a2 + 80);
  v27 = v33[0];
  v28 = v5;
  v8 = v6;
  *&v23[0] = v6;
  v9 = PreferenceKeys._index(of:)(&type metadata for ScrollPhasePreferenceKey);
  outlined init with copy of _ViewInputs(v33, v25);

  v11 = *(v8 + 16);
  if (v9 != v11)
  {
    if (v9 >= v11)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (*(v8 + 16 * v9 + 32) == &type metadata for ScrollPhasePreferenceKey)
    {
      specialized Array.remove(at:)(v9);
      v8 = v30;
    }
  }

  *&v25[0] = v8;
  v12 = PreferenceKeys._index(of:)(&type metadata for ScrollGeometryPreferenceKey);

  v13 = *(v8 + 16);
  if (v12 == v13)
  {
LABEL_9:
    v21[2] = v29;
    v21[3] = v30;
    v21[4] = v31;
    v22 = v32;
    v21[0] = v27;
    v21[1] = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v15 = v27;
    v16 = v28;
    v14 = outlined init with copy of _ViewInputs(v21, v25);
    a3(v14, &v15);
    v23[2] = v17;
    v23[3] = v18;
    v23[4] = v19;
    v24 = v20;
    v23[0] = v15;
    v23[1] = v16;
    outlined destroy of _ViewInputs(v23);
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v26 = v32;
    v25[0] = v27;
    v25[1] = v28;
    return outlined destroy of _ViewInputs(v25);
  }

  if (v12 < v13)
  {
    if (*(v8 + 16 * v12 + 32) == &type metadata for ScrollGeometryPreferenceKey)
    {
      specialized Array.remove(at:)(v12);
    }

    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ScrollTargetRoleV0G0O_SayAC20ScrollableCollection_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>, type metadata accessor for [ScrollableCollection], lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role, &type metadata for ScrollTargetRole.Role);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v68 = a5;
  v69 = a4;
  v62 = a3;
  v72 = a9;
  v98 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = *(a2 + 48);
  *v97 = *(a2 + 32);
  *&v97[16] = v14;
  *&v97[32] = *(a2 + 64);
  *&v97[48] = *(a2 + 80);
  v15 = *(a2 + 16);
  v95 = *a2;
  v96 = v15;
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v14);
  v63 = a7;
  v61 = a10;
  closure #1 in static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(1, a6, a7, a8);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v66 = v96;
  v18 = *&v97[4];
  v67 = OffsetAttribute2;
  v64 = v95;
  v70 = v16;
  if ((v97[4] & 0x20) != 0 || (v16) && (v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20MatchedGeometryScope33_F035CBEF00D3D777B3359545F684D774LLC_Tt2g5(v95)) != 0)
  {
    v75 = &v60;
    v20 = *MEMORY[0x1E698D3F8];
    *&v82 = __PAIR64__(OffsetAttribute2, v13);
    *(&v82 + 1) = vrev64_s32(*(&v96 + 8));
    LODWORD(v83) = *&v97[40];
    *(&v83 + 4) = vrev64_s32(*&v97[28]);
    v84[0] = v19;
    v73 = 1;
    LOBYTE(v84[1]) = 1;
    *(&v84[1] + 4) = v20;
    BYTE12(v84[1]) = 0;
    MEMORY[0x1EEE9AC00](v19);
    v22 = type metadata accessor for MatchedSharedFrame(0, a6, a8, v21);
    v58 = v22;
    swift_getWitnessTable(protocol conformance descriptor for MatchedSharedFrame<A>, v22);
    v59 = v23;
    type metadata accessor for Attribute<(ViewFrame?, AnyOptionalAttribute)>(0);
    v25 = v24;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v82, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_4, v57, v22, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v86 = v82;
    v87 = v83;
    v88[0] = v84[0];
    *(v88 + 13) = *(v84 + 13);
    (*(*(v22 - 8) + 8))(&v86, v22);
    v27 = v78;
    AGGraphSetFlags();

    v74 = *&v97[4];
  }

  else
  {
    v27 = 0;
    v73 = 0;
    v74 = *&v97[4];
  }

  v93 = v95;
  v94 = v96;
  v28 = *v97;
  v91 = *&v97[8];
  v92 = *&v97[24];
  v29 = *&v97[36];
  LODWORD(v75) = *&v97[32];
  v30 = *&v97[40];
  v31 = *&v97[44];
  v65 = 0;
  HIDWORD(v60) = v27;
  if (v18 & 0x20) != 0 && (v73)
  {
    v32 = *MEMORY[0x1E698D3F8];
    *&v82 = __PAIR64__(v67, v27);
    *(&v82 + 1) = __PAIR64__(v75, *&v97[40]);
    *&v83 = __PAIR64__(v32, *&v97[28]);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(&v95, &v86);
    lazy protocol witness table accessor for type MatchedFrame and conformance MatchedFrame();
    Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v75) = AGGraphCreateOffsetAttribute2();
    v30 = AGGraphCreateOffsetAttribute2();
    v28 |= 0x18u;
    v88[0] = *v97;
    v88[1] = *&v97[16];
    v89 = *&v97[32];
    v90 = *&v97[48];
    v86 = v95;
    v87 = v96;
    swift_beginAccess();
    v29 = CachedEnvironment.animatedPosition(for:)(&v86);
    swift_endAccess();
    v33 = 0;
    v74 = v18 | 2;
  }

  else
  {
    outlined init with copy of _ViewInputs(&v95, &v86);
    v33 = 1;
  }

  v82 = v93;
  v83 = v94;
  *&v84[0] = __PAIR64__(v74, v28);
  *(&v84[1] + 1) = v92;
  *(v84 + 8) = v91;
  *&v85[0] = __PAIR64__(v29, v75);
  DWORD2(v85[0]) = v30;
  v71 = v31;
  *(v85 + 12) = v31;
  v80[0] = v84[0];
  v80[1] = v84[1];
  v81[0] = v85[0];
  LODWORD(v81[1]) = HIDWORD(v31);
  v78 = v93;
  v79 = v94;
  v34 = outlined init with copy of _ViewInputs(&v82, &v86);
  v69(v76, v34, &v78);
  v88[0] = v80[0];
  v88[1] = v80[1];
  v89 = v81[0];
  v90 = v81[1];
  v86 = v78;
  v87 = v79;
  v35 = outlined destroy of _ViewInputs(&v86);
  if ((v33 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v35);
    MEMORY[0x1EEE9AC00](v36);
    v58 = partial apply for closure #4 in static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:);
    v59 = v37;
    AGGraphMutateAttribute();
  }

  if ((v70 & v73) != 1)
  {
    goto LABEL_19;
  }

  v38 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v76[0]);
  if ((v38 & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  v39 = v38;
  v40 = lastIdentity + 1;
  lastIdentity = v40;
  v73 = v40;
  if ((v18 & 0x100) == 0)
  {
LABEL_15:
    v80[0] = *v97;
    v80[1] = *&v97[16];
    v81[0] = *&v97[32];
    LODWORD(v81[1]) = *&v97[48];
    v78 = v95;
    v79 = v96;
    swift_beginAccess();
    v41 = CachedEnvironment.animatedPosition(for:)(&v78);
    v80[0] = *v97;
    v80[1] = *&v97[16];
    v81[0] = *&v97[32];
    LODWORD(v81[1]) = *&v97[48];
    v78 = v95;
    v79 = v96;
    v42 = CachedEnvironment.animatedSize(for:)(&v78);
    swift_endAccess();
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v43 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v64, v78);
    if (v43)
    {
      v44 = *(v43 + 72);
    }

    else
    {
      v44 = 0;
    }

    *&v78 = __PAIR64__(HIDWORD(v60), v73);
    *(&v78 + 1) = __PAIR64__(v39, v67);
    *&v79 = __PAIR64__(v42, v41);
    *(&v79 + 1) = __PAIR64__(*&v97[36], *&v97[28]);
    LODWORD(v80[0]) = v62;
    BYTE4(v80[0]) = v44;
    MEMORY[0x1EEE9AC00](v43);
    v48 = type metadata accessor for MatchedDisplayList(0, v45, v46, v47);
    v58 = v48;
    swift_getWitnessTable(protocol conformance descriptor for MatchedDisplayList<A>, v48);
    v59 = v49;
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_2(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v78, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, v57, v48, MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v51);
    LOBYTE(v78) = 0;
    PreferencesOutputs.subscript.setter(v77[0], &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_19:
    v78 = v93;
    v79 = v94;
    *&v80[0] = __PAIR64__(v74, v28);
    *(v80 + 8) = v91;
    *(&v80[1] + 1) = v92;
    *&v81[0] = __PAIR64__(v29, v75);
    DWORD2(v81[0]) = v30;
    *(v81 + 12) = v71;
    result = outlined destroy of _ViewInputs(&v78);
    v53 = v72;
    *v72 = v76[0];
    v53[1] = v76[1];
    return result;
  }

  v54 = v65;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v64, &v78);
  v65 = v54;
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v77[0] = v40;
    v55 = Attribute<A>.subscript.modify(&v78, result);
    v56 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v77);
    (v55)(&v78, 0, v56);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t static _MatchedGeometryEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v13;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  v15 = *MEMORY[0x1E698D3F8];
  v20 = v12;
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  return static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(&v20, v18, v15, a3, a4, a5, &type metadata for Rectangle, a6, a7, v16);
}

uint64_t closure #1 in static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _MatchedGeometryEffect(0, a2, a4, a4);
  v6 = *(v5 + 40);
  v12[2] = v5;
  type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

void type metadata accessor for Attribute<(ViewFrame?, AnyOptionalAttribute)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<(ViewFrame?, AnyOptionalAttribute)>)
  {
    type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(255);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<(ViewFrame?, AnyOptionalAttribute)>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MatchedSharedFrame<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MatchedSharedFrame<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t initializeWithCopy for MatchedSharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);

  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MatchedDisplayList<A>(uint64_t a1)
{

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type MatchedFrame and conformance MatchedFrame()
{
  if (!lazy protocol witness table cache variable for type MatchedFrame and conformance MatchedFrame)
  {
    swift_getWitnessTable(protocol conformance descriptor for MatchedFrame, &unk_1F005C1D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MatchedFrame and conformance MatchedFrame);
  }
}

double LayoutPriorityLayout.placement(of:in:)@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v25 = *(a1 + 1);
  v26 = a1[3];
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v29 = *(a1 + 2);
  v6 = *(a1 + 48);
  v24 = v3;
  v27 = v4;
  v28 = v5;
  v30 = v6;
  PlacementContext.proposedSize.getter(&v20);
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  if (v6)
  {
    InputValue = AGGraphGetInputValue();
    v12 = *InputValue;
    v13 = InputValue[1];
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  result = v12 * 0.5;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  __asm { FMOV            V2.2D, #0.5 }

  *(a2 + 32) = _Q2;
  *(a2 + 48) = result;
  *(a2 + 56) = v13 * 0.5;
  return result;
}

uint64_t static Font.system(size:weight:design:)(uint64_t a1, char a2, char *a3, double a4)
{
  v7 = *a3;
  type metadata accessor for FontBox<Font.SystemProvider>(0, &lazy cache variable for type metadata for FontBox<Font.SystemProvider>, lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider, &type metadata for Font.SystemProvider);
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a1;
  *(result + 32) = a2 & 1;
  *(result + 33) = v7;
  *(result + 34) = 14;
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

void type metadata accessor for FontBox<Font.SystemProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for FontBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider()
{
  if (!lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.SystemProvider, &type metadata for Font.SystemProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.SystemProvider, &type metadata for Font.SystemProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.SystemProvider, &type metadata for Font.SystemProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.SystemProvider and conformance Font.SystemProvider);
  }
}

double destroy for FullEnvironmentBox(void *a1)
{

  if (a1[2] != 1)
  {
  }

  return result;
}

void FullEnvironmentBox.update(property:phase:)(uint64_t *a1)
{
  if ((a1[2] & 1) == 0)
  {
    v2 = v1;
    v5 = *a1;
    v4 = a1[1];

    v7 = *AGGraphGetValue();
    if (v1[1])
    {
      v8 = v6;
      v16 = v1[1];
      type metadata accessor for KeyPath<EnvironmentValues, EnvironmentValues>();
      outlined copy of Environment<EnvironmentValues>.Content(v5, v4, 0);
      outlined copy of Environment<EnvironmentValues>.Content(v5, v4, 0);

      v9 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v9)
      {
        outlined consume of Environment<EnvironmentValues>.Content(v5, v4, 0);
        if ((v8 & 1) == 0)
        {
LABEL_15:
          v13 = v2[2];
          if (v13 == 1)
          {
            __break(1u);
          }

          else
          {
            v14 = v2[3];
            outlined copy of EnvironmentValues?(v13, v14);
            outlined consume of Environment<EnvironmentValues>.Content(v5, v4, 0);
            outlined consume of Environment<EnvironmentValues>.Content(*a1, a1[1], *(a1 + 16));

            *a1 = v13;
            a1[1] = v14;
            *(a1 + 16) = 1;
          }

          return;
        }

LABEL_8:

        swift_getAtKeyPath();

        if (v2[2] == 1 || (PropertyList.Tracker.hasDifferentUsedValues(_:)(v7) & 1) != 0)
        {
          v15 = v4;
          v10 = v2[4];
          PropertyList.Tracker.reset()();
          if (v16)
          {
            v11 = *(v16 + 64);
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v10 + 16);
          swift_retain_n();

          os_unfair_lock_lock((v12 + 16));
          *(v12 + 24) = v11;
          os_unfair_lock_unlock((v12 + 16));

          outlined consume of EnvironmentValues?(v2[2], v2[3]);
          v2[2] = v16;
          v2[3] = v10;
          v4 = v15;
        }

        else
        {
        }

        goto LABEL_15;
      }
    }

    else
    {
      outlined copy of Environment<EnvironmentValues>.Content(v5, v4, 0);
      outlined copy of Environment<EnvironmentValues>.Content(v5, v4, 0);
    }

    v2[1] = v5;
    goto LABEL_8;
  }
}

double outlined copy of Environment<EnvironmentValues>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }

  return result;
}

double outlined consume of Environment<EnvironmentValues>.Content(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FullEnvironmentBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = (a2 + 16);
  v4 = *(a2 + 16);

  if (v4 == 1)
  {
    *(a1 + 16) = *v5;
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
  }

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t LeafResponderFilter.init(data:size:position:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  *a5 = result;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t View.staticIf<A, B>(_:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  closure #1 in View.staticIf<A, B>(_:then:)(a2, a3, v6, a4, a5, a6);
  type metadata accessor for StaticIf(0, a5, a6, a4);
  return closure #2 in View.staticIf<A, B>(_:then:)(v6, a4);
}

uint64_t type metadata completion function for _LazyLayoutViewCache(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t type metadata completion function for _LazyStack_Cache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MinorProperties(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for EstimationCache(319);
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheChildren>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, &type metadata for LazyLayoutCacheChildren);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v6 = *(i - 6);
      v5 = *(i - 5);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6 | (v5 << 32), v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v6;
      *(v12 + 4) = v5;
      *(v12 + 8) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
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

void lazy protocol witness table accessor for type PinnedScrollableViews and conformance PinnedScrollableViews()
{
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    swift_getWitnessTable(protocol conformance descriptor for PinnedScrollableViews, &type metadata for PinnedScrollableViews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }
}

{
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    swift_getWitnessTable(protocol conformance descriptor for PinnedScrollableViews, &type metadata for PinnedScrollableViews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }
}

{
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    swift_getWitnessTable(protocol conformance descriptor for PinnedScrollableViews, &type metadata for PinnedScrollableViews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }
}

{
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    swift_getWitnessTable(protocol conformance descriptor for PinnedScrollableViews, &type metadata for PinnedScrollableViews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for BackdropProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double LazySubviewPlacements.init(layout:cache:inputs:)@<D0>(int a1@<W0>, int a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3[3];
  v7 = a3[1];
  v27 = a3[2];
  v6 = v27;
  *v28 = v5;
  *&v28[16] = a3[4];
  v29 = *(a3 + 20);
  v8 = a3[1];
  v25 = *a3;
  v9 = v25;
  v26 = v8;
  v10 = *MEMORY[0x1E698D3F8];
  *(a4 + 40) = *MEMORY[0x1E698D3F8];
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E695F050];
  *(a4 + 96) = MEMORY[0x1E69E7CC0];
  *(a4 + 104) = v11;
  *&v5 = *v12;
  *&v8 = v12[1];
  *(a4 + 112) = *v12;
  *(a4 + 120) = v8;
  *(a4 + 144) = v5;
  *(a4 + 152) = v8;
  *(a4 + 176) = v5;
  *(a4 + 184) = v8;
  *&v5 = v12[2];
  *&v8 = v12[3];
  *(a4 + 128) = v5;
  *(a4 + 136) = v8;
  *(a4 + 160) = v5;
  *(a4 + 168) = v8;
  *(a4 + 192) = v5;
  *(a4 + 200) = v8;
  *(a4 + 208) = 0;
  *(a4 + 256) = 0;
  *(a4 + 264) = 0;
  *(a4 + 248) = 0;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0u;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 448) = 1;
  *(a4 + 468) = 0;
  *(a4 + 452) = 0;
  *(a4 + 460) = 0;
  *(a4 + 472) = 1;
  *(a4 + 20) = a2;
  LODWORD(v11) = *&v28[24];
  *a4 = a1;
  *(a4 + 4) = v11;
  *(a4 + 8) = vrev64_s32(*&v28[12]);
  v23 = v7;
  v24 = v6;
  v22 = v9;
  swift_beginAccess();
  *(a4 + 16) = *(v26 + 16);
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v25);
  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
  if (v13 != v10)
  {
    v14 = AGCreateWeakAttribute();
    v15 = HIDWORD(v14);
  }

  *(a4 + 24) = v14;
  *(a4 + 28) = v15;
  v16 = _s7SwiftUI12_GraphInputsV3topyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalU0VyAA0ijK0VGTt0B5();
  v17 = v29;
  if ((v16 & 0x100000000) != 0)
  {
    v18 = v10;
  }

  else
  {
    v18 = v16;
  }

  *(a4 + 32) = v18;
  *(a4 + 36) = v17;
  outlined init with copy of _GraphInputs(&v25, &v21);
  outlined destroy of _ViewInputs(&v25);
  v19 = v23;
  *(a4 + 48) = v22;
  *(a4 + 64) = v19;
  result = *&v24;
  *(a4 + 80) = v24;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for ScrollPrefetchState);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19ScrollPrefetchStateV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static ScrollPrefetchState.defaultValue;
  }

  return *v3;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19ScrollPrefetchStateV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19ScrollPrefetchStateV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ScrollPrefetchState)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 132);
  v9 = v8 == *MEMORY[0x1E698D3F8];
  if (v8 == *MEMORY[0x1E698D3F8])
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  type metadata accessor for LazySubviewPlacements(0, a3, a4, v7);
  return LazySubviewPlacements.$layoutComputer.setter(v10 | (v9 << 32));
}

void lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment()
{
  if (!lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalAlignment, &type metadata for HorizontalAlignment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalAlignment, &type metadata for HorizontalAlignment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment);
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 196) - *(*v14 + 196) >= 0)
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = (v4 >> 1);
    if (v4 >= 2)
    {
      type metadata accessor for LazyLayoutCacheItem();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
    v18[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t one-time initialization function for lazyLayoutReuse()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.lazyLayoutReuse);
  v5 = __swift_project_value_buffer(v1, static Log.lazyLayoutReuse);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000028, 0x800000018DD83660);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

uint64_t static LazyLayout._makeView(root:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v76 = *(a2 + 32);
  v77 = v10;
  v12 = *(a2 + 48);
  v78 = *(a2 + 64);
  v13 = *(a2 + 16);
  v74 = *a2;
  v75 = v13;
  v70 = v76;
  v71 = v12;
  v72 = *(a2 + 64);
  v14 = *a1;
  v79 = *(a2 + 80);
  v15 = v74;
  v73 = *(a2 + 80);
  v68 = v74;
  v69 = v11;
  outlined init with copy of _ViewInputs(&v74, v65);
  v38 = a4;
  (*(a5 + 32))(v65, a4, a5);
  v37 = a6;
  if (LOBYTE(v65[0]) == 1)
  {
    v16 = DWORD1(v70) | 0xC;
  }

  else
  {
    v16 = DWORD1(v70) & 0xFFFFFFF3;
    if (LOBYTE(v65[0]) == 2)
    {
      v16 |= 4u;
    }
  }

  DWORD1(v70) = v16;

  v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v17);
  if (!v18 || *(v18 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v68 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v15);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v68, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v68);
  static CorePlatformProvidersDefinition.providers.getter(v65);
  if (v66)
  {
    (*(v67 + 8))(&v68);
  }

  v60[2] = v70;
  v60[3] = v71;
  v60[4] = v72;
  v61 = v73;
  v60[0] = v68;
  v60[1] = v69;
  v42 = v70;
  v43 = v71;
  v44 = v72;
  v45 = v73;
  v40 = v68;
  v41 = v69;
  v19 = outlined init with copy of _ViewInputs(v60, v62);
  a3(v59, v19, &v40);
  v62[2] = v42;
  v62[3] = v43;
  v62[4] = v44;
  v63 = v45;
  v62[0] = v40;
  v62[1] = v41;
  outlined destroy of _ViewInputs(v62);
  LODWORD(v44) = *MEMORY[0x1E698D3F8];
  *(&v44 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v45) = 0;
  v46 = 0;
  v47 = 0;
  swift_weakInit();
  v48 = 0;
  v49 = 0;
  v50 = -1;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = 0uLL;
  outlined init with copy of _GraphInputs(&v74, v57);
  outlined init with copy of _GraphInputs(&v74, v57);
  v20 = _ViewListOutputs.makeAttribute(inputs:)(&v40);
  outlined destroy of _ViewListInputs(&v40);
  LODWORD(v57[0]) = v14;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v21 = a5;
  v22 = static Animatable.makeAnimatable(value:inputs:)(v57, &v40, v38, *(a5 + 8));
  v64[0] = v40;
  v64[1] = v41;
  v64[2] = v42;
  outlined destroy of _GraphInputs(v64);
  v24 = WORD2(v76);
  if ((WORD2(v76) & 0x1000) == 0)
  {
LABEL_19:
    v30 = v21;
    type metadata accessor for _LazyLayoutViewCache(0, v38, v21, v23);
    v57[2] = v70;
    v57[3] = v71;
    v57[4] = v72;
    v58 = v73;
    v57[0] = v68;
    v57[1] = v69;
    v42 = v70;
    v43 = v71;
    v44 = v72;
    v45 = v73;
    v40 = v68;
    v41 = v69;
    outlined init with copy of _ViewInputs(v57, v55);
    v31 = _LazyLayoutViewCache.__allocating_init(layout:list:inputs:)(v22, v20, &v40);
    swift_beginAccess();
    v32 = *(v31 + 120);
    v33 = *(v31 + 128);
    v53 = v32;
    v54 = v33;
    if ((v24 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v15);
      static CorePlatformProvidersDefinition.providers.getter(&v40);
      v34 = v51;
      if (v51)
      {
        v35 = v52;
        v55[2] = v76;
        v55[3] = v77;
        v55[4] = v78;
        v56 = v79;
        v55[0] = v74;
        v55[1] = v75;
        v36 = *(v31 + 148);

        static LazyLayout.accessibilityRole.getter(v30, &v39);
        (*(v35 + 8))(&v53, v55, v36, &v39, v34, v35);

        outlined destroy of _ViewListOutputs(v59);
        v42 = v70;
        v43 = v71;
        v44 = v72;
        v45 = v73;
        v40 = v68;
        v41 = v69;
        result = outlined destroy of _ViewInputs(&v40);
        v32 = v53;
        v33 = v54;
LABEL_25:
        *v37 = v32;
        v37[1] = v33;
        return result;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v59);
    v42 = v70;
    v43 = v71;
    v44 = v72;
    v45 = v73;
    v40 = v68;
    v41 = v69;
    result = outlined destroy of _ViewInputs(&v40);
    goto LABEL_25;
  }

  v25 = v71;
  *&v40 = v71;
  v26 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v28 = *(v25 + 2);
  if (v26 != v28)
  {
    if (v26 >= v28)
    {
      goto LABEL_27;
    }

    if (*&v25[16 * v26 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_19;
    }
  }

  if (v28 >= v26)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v28 >= *(v25 + 3) >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v28 + 1, 1, v25);
      *&v71 = v25;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v26, v26, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v71 = v25;
    goto LABEL_19;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache()
{
  if (!lazy protocol witness table cache variable for type UpdateViewCache and conformance UpdateViewCache)
  {
    swift_getWitnessTable(protocol conformance descriptor for UpdateViewCache, &type metadata for UpdateViewCache, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UpdateViewCache and conformance UpdateViewCache);
  }
}

void type metadata accessor for Attribute<[_LazyLayout_PlacedSubview]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<[_LazyLayout_PlacedSubview]>)
  {
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<[_LazyLayout_PlacedSubview]>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazySubviewPlacements<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LazySubviewPlacements<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazyPreference<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LazyPreference<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews()
{
  if (!lazy protocol witness table cache variable for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyPreferencePrefetchSubviews, &type metadata for LazyPreferencePrefetchSubviews, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazyLayoutComputer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LazyLayoutComputer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t LazySubviewPlacements.$layoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 40) = v2;
  return result;
}

void LazyPreference.updateCache(_:)(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  if (*(a2 + 16) == &type metadata for DisplayList.Key)
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for [LazyLayoutCacheItem], v5, type metadata accessor for LazyLayoutCacheItem, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems();

    v6 = Attribute.init<A>(body:value:flags:update:)();

    *(v2 + 4) = v6;
  }
}

_OWORD *initializeWithCopy for LazyScrollable(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_weakCopyInit();
  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for LazyLayoutReuseIdleInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(a1, v3);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for FocusableFillerBounds.Key);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for FocusableFillerBounds.Key;
  }

  __break(1u);
  return result;
}

void *static LazyLayout.accessibilityRole.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 32))(&v5);
  if ((v5 & 1) != 0 || (v5 & 0x100) == 0)
  {
    v4 = (BYTE1(v5) >> 1) & 1;
    if ((v5 & 2) != 0)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  *a2 = v4;
  return result;
}

uint64_t _ViewInputs.accessibilityEnabled.getter()
{
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.accessibilityEnabled.getter, 0);
  swift_endAccess();
  return v1;
}

void static Canvas._makeView(view:inputs:)(unsigned int *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v132 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v128 = *(a2 + 32);
  v129 = v9;
  v130 = *(a2 + 64);
  v131 = *(a2 + 80);
  v10 = *(a2 + 16);
  v126 = *a2;
  v127 = v10;
  v90 = MEMORY[0x1E69E7CC0];
  v11 = *MEMORY[0x1E698D3F8];
  LODWORD(v91) = 0;
  HIDWORD(v91) = v11;
  v87 = v11;
  v85 = v129;
  v89 = a4;
  v86 = a3;
  v88 = v8;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v129) & 1) == 0)
  {
    v35 = a3;
    goto LABEL_24;
  }

  v81 = a5;
  v79 = v126;
  LODWORD(v84) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v126);
  v12 = swift_beginAccess();
  v82 = v127;
  LODWORD(v114) = *(v127 + 16);
  MEMORY[0x1EEE9AC00](v12);
  v75 = type metadata accessor for Canvas.ChildEnvironment(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for Canvas<A>.ChildEnvironment, v75);
  v76 = v14;
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, MEMORY[0x1E698D388]);
  v15 = a3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v114, closure #1 in Attribute.init<A>(_:)partial apply, v74, v75, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v83 = v101[0];
  if (a3 == &type metadata for EmptyView)
  {
    v34 = v88;
    v80 = v87;
    v31 = &v93;
    goto LABEL_21;
  }

  LODWORD(v118) = v87;
  *(&v118 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v119) = 0;
  v121 = 0;
  v120 = 0;
  v18 = swift_weakInit();
  v123 = 0;
  v122 = 0;
  v124 = -1;
  v114 = v126;
  v115 = v127;
  v116 = v128;
  v117 = 0uLL;
  MEMORY[0x1EEE9AC00](v18);
  v75 = a3;
  v76 = a4;
  LODWORD(v93) = v88;
  outlined init with copy of _GraphInputs(&v126, v101);
  v20 = type metadata accessor for Canvas(255, a3, a4, v19);
  type metadata accessor for _GraphValue(0, v20, v21, v22);
  _GraphValue.subscript.getter(partial apply for closure #1 in static Canvas._makeView(view:inputs:), a3, v101);
  v23 = LODWORD(v101[0]);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  *v104 = v23;
  v24 = v89;
  (*(v89 + 32))(v113, v104, &v114, v15, v89);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v23, v15, v24);
  v80 = _ViewListOutputs.makeAttribute(inputs:)(&v114);
  v25 = specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v78 = v25;
  v26 = swift_dynamicCastClassUnconditional();
  v111 = v130;
  v109 = v128;
  v110 = v129;
  v107 = v126;
  v112 = v131;
  v108 = v127;
  v27 = v128;
  LODWORD(v111) = *(v26 + 248);
  DWORD1(v111) = v111;
  memset(v125, 0, sizeof(v125));
  outlined init with copy of _ViewInputs(&v126, v101);
  LODWORD(v24) = specialized GraphHost.intern<A>(_:for:id:)(v125, &type metadata for ViewTransform, 0);
  outlined destroy of ViewTransform(v125);
  v77 = v27;
  HIDWORD(v110) = v24;
  LODWORD(v109) = v27 | 0xC;
  v28 = MEMORY[0x1E69E7CC0];
  LODWORD(v25) = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], &type metadata for PreferenceKeys, 0);

  *&v110 = v28;
  DWORD2(v110) = v25;
  *&v101[0] = v28;
  v29 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

  v30 = *(v28 + 16);
  v31 = &v93;
  if (v29 == v30)
  {
    goto LABEL_8;
  }

  if (v29 >= v30)
  {
    goto LABEL_33;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16 * v29 + 32) != &type metadata for DisplayList.Key)
  {
LABEL_8:
    if (v30 >= v29)
    {
      v32 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = v32;
      if (!isUniquelyReferenced_nonNull_native || v30 >= *(v32 + 3) >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v110 = v32;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v29, v29, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      *&v110 = v32;
      goto LABEL_13;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_13:
  DWORD1(v109) = DWORD1(v128) | 0x22;
  if (v84)
  {
    v34 = v88;
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(&v107, 1);

    LOBYTE(v101[0]) = 1;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v38 = swift_allocObject();
    *(v38 + 16) = v83;
    *(v38 + 24) = v36;
    *(v38 + 32) = 0u;
    *(v38 + 48) = 0u;
    *(v38 + 64) = 0u;
    *(v38 + 80) = 256;
    *(v38 + 88) = v37;

    *&v108 = v38;
    v34 = v88;
    if ((v77 & 0x20) == 0)
    {
      LODWORD(v109) = v77 | 0x2C;
    }
  }

  v105[2] = v109;
  v105[3] = v110;
  v105[4] = v111;
  v106 = v112;
  v105[0] = v107;
  v105[1] = v108;
  *&v104[36] = v109;
  *&v104[52] = v110;
  *&v104[68] = v111;
  *&v104[84] = v112;
  *&v104[4] = v107;
  *&v104[20] = v108;
  v39 = AGSubgraphGetCurrent();
  if (!v39)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  LODWORD(v101[0]) = v80;
  *(v101 + 4) = *v104;
  *(&v101[1] + 4) = *&v104[16];
  *(&v101[5] + 4) = *&v104[80];
  *(&v101[4] + 4) = *&v104[64];
  *(&v101[3] + 4) = *&v104[48];
  *(&v101[2] + 4) = *&v104[32];
  *&v102 = v39;
  *(&v102 + 1) = MEMORY[0x1E69E7CC8];
  v98 = v101[5];
  v99 = v102;
  v93 = v101[0];
  v94 = v101[1];
  v95 = v101[2];
  v103 = 0;
  v100 = 0;
  v96 = v101[3];
  v97 = v101[4];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(v105, &v92);
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for [CanvasSymbols.Child], &type metadata for CanvasSymbols.Child, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type CanvasSymbols and conformance CanvasSymbols();
  v80 = Attribute.init<A>(body:value:flags:update:)();

  outlined destroy of _ViewListOutputs(v113);
  outlined destroy of _ViewListInputs(&v114);
  outlined destroy of CanvasSymbols(v101);
  v96 = v110;
  v97 = v111;
  LODWORD(v98) = v112;
  v93 = v107;
  v94 = v108;
  v95 = v109;
  outlined destroy of _ViewInputs(&v93);
LABEL_21:
  LODWORD(a5) = ++lastIdentity;
  if (BYTE5(v128))
  {
    goto LABEL_30;
  }

  for (i = v34; ; i = v88)
  {
    LODWORD(v93) = a5;
    v116 = v128;
    v117 = v129;
    v118 = v130;
    LODWORD(v119) = v131;
    v114 = v126;
    v115 = v127;
    swift_beginAccess();
    v41 = CachedEnvironment.animatedPosition(for:)(&v114);
    v116 = v128;
    v117 = v129;
    v118 = v130;
    LODWORD(v119) = v131;
    v114 = v126;
    v115 = v127;
    v42 = CachedEnvironment.animatedCGSize(for:)(&v114);
    swift_endAccess();
    v43 = *MEMORY[0x1E695F040];
    v44 = *(MEMORY[0x1E695F040] + 8);
    v45 = *(MEMORY[0x1E695F040] + 16);
    v46 = *(MEMORY[0x1E695F040] + 24);
    v47 = v89;
    v76 = v89;
    v35 = v86;
    v75 = v86;
    v48 = CanvasDisplayList.init(identity:view:position:containerPosition:size:transform:environment:symbols:lastBounds:isFlattened:cachedSymbols:)(&v93, i, v41, SDWORD1(v130), v42, SHIDWORD(v129), v83, v80, v101, v43, v44, v45, v46, v84 & 1, 0);
    MEMORY[0x1EEE9AC00](v48);
    v50 = type metadata accessor for CanvasDisplayList(0, v35, v47, v49);
    v75 = v50;
    swift_getWitnessTable(protocol conformance descriptor for CanvasDisplayList<A>, v50);
    v76 = v51;
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v101, closure #1 in Attribute.init<A>(_:)partial apply, v74, v50, MEMORY[0x1E69E73E0], v52, MEMORY[0x1E69E7410], v53);
    v54 = v31[11];
    v116 = v31[10];
    v117 = v54;
    v118 = v31[12];
    v119 = *&v101[5];
    v55 = v31[9];
    v114 = v31[8];
    v115 = v55;
    (*(v50[-1].Description + 1))(&v114, v50);
    LOBYTE(v101[0]) = 0;
    PreferencesOutputs.subscript.setter(*v104, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v81;
    v8 = v88;
LABEL_24:
    v116 = v128;
    v117 = v129;
    v118 = v130;
    LODWORD(v119) = v131;
    v114 = v126;
    v115 = v127;
    swift_beginAccess();
    v56 = CachedEnvironment.animatedSize(for:)(&v114);
    v116 = v128;
    v117 = v129;
    v118 = v130;
    LODWORD(v119) = v131;
    v114 = v126;
    v115 = v127;
    v57 = CachedEnvironment.animatedPosition(for:)(&v114);
    swift_endAccess();
    v58 = HIDWORD(v129);
    v60 = type metadata accessor for Canvas(0, v35, v89, v59);
    LeafResponderFilter.init(data:size:position:transform:)(v8, v56, v57, v58, &v114);
    v84 = v114;
    v61 = v115;
    v31 = v85;
    *&v114 = v85;
    v62 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v63 = *(v31 + 2);
    if (v62 == v63)
    {
      break;
    }

    if (v62 < v63)
    {
      if (*&v31[v62 + 2] == &type metadata for ViewRespondersKey)
      {
        v114 = v84;
        *&v115 = v61;
        MEMORY[0x1EEE9AC00](v62);
        v65 = type metadata accessor for LeafResponderFilter(0, v60, &protocol witness table for Canvas<A>, v64);
        v75 = v65;
        swift_getWitnessTable(protocol conformance descriptor for LeafResponderFilter<A>, v65);
        v76 = v66;
        _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
        v68 = v67;

        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v114, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v74, v65, MEMORY[0x1E69E73E0], v68, MEMORY[0x1E69E7410], v69);

        LOBYTE(v114) = 0;
        v62 = PreferencesOutputs.subscript.setter(LODWORD(v101[0]), &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }

      break;
    }

    __break(1u);
LABEL_30:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v79, &v114);
    Attribute = AGWeakAttributeGetAttribute();
    if (Attribute == v87)
    {
      goto LABEL_35;
    }

    LODWORD(v101[0]) = a5;
    v71 = Attribute<A>.subscript.modify(&v114, Attribute);
    v72 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v101);
    (v71)(&v114, 0, v72);
  }

  v116 = v128;
  v117 = v129;
  v118 = v130;
  LODWORD(v119) = v131;
  v114 = v126;
  v115 = v127;
  MEMORY[0x1EEE9AC00](v62);
  v74[0] = v86;
  v74[1] = v89;
  LODWORD(v75) = v88;
  _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v114, partial apply for implicit closure #1 in static RendererLeafView.makeLeafView(view:inputs:), &v73, v87, v60, &protocol witness table for Canvas<A>);

  *a5 = v90;
  a5[1] = v91;
}

uint64_t CanvasDisplayList.init(identity:view:position:containerPosition:size:transform:environment:symbols:lastBounds:isFlattened:cachedSymbols:)@<X0>(_DWORD *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14, uint64_t a15)
{
  *a9 = *a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = a8;
  type metadata accessor for PropertyList.Tracker();
  v20 = swift_allocObject();
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  result = swift_allocObject();
  *(result + 16) = 0;
  v22 = MEMORY[0x1E69E7CC8];
  v23 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = v22;
  *(result + 40) = v22;
  *(result + 48) = v23;
  *(result + 56) = 0;
  *(v20 + 16) = result;
  *(a9 + 32) = v20;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 64) = a13;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  return result;
}

double Alignment.fraction.getter(unint64_t a1, unint64_t a2)
{
  AlignmentKey.fraction.getter(a1);
  v4 = v3;
  AlignmentKey.fraction.getter(a2);
  return v4;
}

uint64_t type metadata completion function for Canvas(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance Canvas<A>.ChildEnvironment(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Canvas<A>.ChildEnvironment, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CanvasDisplayList<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CanvasDisplayList<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for LazyTransition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazyTransition<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LazyTransition<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, a2, a3, type metadata accessor for _EnvironmentKeyWritingModifier);
  v7 = type metadata accessor for ModifiedContent(255, v3, v5, v6);
  v9[0] = v4;
  v9[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

uint64_t *assignWithCopy for EnvironmentObject(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_CompositingGroupEffect>, &type metadata for _CompositingGroupEffect, &protocol witness table for _CompositingGroupEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>);
  }
}

uint64_t MutableBox.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t static Group<A>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for DisplayList.BackdropGroup(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

double static ModifiedContent<>._makeCustomHoverEffect(effect:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[3];
  v24[2] = a2[2];
  v24[3] = v15;
  v25[0] = a2[4];
  *(v25 + 12) = *(a2 + 76);
  v16 = a2[1];
  v24[0] = *a2;
  v24[1] = v16;
  v23[1] = v14;
  v17 = type metadata accessor for ModifiedContent(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v17, v18, v19);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a6, v23);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = a7;
  *(v20 + 40) = a8;
  *(v20 + 48) = v14;
  *(v20 + 56) = a3;
  *(v20 + 64) = a4;
  v21 = *(a8 + 32);

  v21(v23, v24, partial apply for closure #2 in static ModifiedContent<>._makeCustomHoverEffect(effect:inputs:body:), v20, a6, a8);

  return result;
}

uint64_t sub_18D1D2144()
{

  return swift_deallocObject();
}

uint64_t View.foregroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ForegroundStyleModifier(0, v8, v10, v9);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v5 + 16))(v7, a1, a3, v13);
  (*(v5 + 32))(v15, v7, a3);
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

void lazy protocol witness table accessor for type HorizontalEdge and conformance HorizontalEdge()
{
  if (!lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalEdge, &type metadata for HorizontalEdge, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalEdge, &type metadata for HorizontalEdge, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalEdge and conformance HorizontalEdge);
  }
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>);
  }
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>);
    }
  }
}

void instantiation function for generic protocol witness table for Circle._Inset(uint64_t a1)
{
  lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset();
  *(a1 + 8) = v2;
}

uint64_t closure #1 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModifiedContent(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a3;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

void _OpacityShapeStyle._apply(to:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 36));
  if (v3 == 1.0)
  {
LABEL_2:
    v4 = *(*(a2 + 24) + 32);

    v4();
    return;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      MEMORY[0x1EEE9AC00](a1);
      v19 = *(v18 + 24);
      v30 = *(v18 + 16);
      v31 = v19;
      v32 = v2;
      v21 = v20;
      type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for _OpacityShapeStyle);
      ShapeStyle.mapCopiedStyle<A>(in:body:)(v21, partial apply for closure #2 in _OpacityShapeStyle._apply(to:), &v29, v30, v22, v19, &protocol witness table for _OpacityShapeStyle<A>);
      return;
    }

    if (v8 == 4 || !(v7 | v5 | v6))
    {
      goto LABEL_2;
    }
  }

  else if (*(a1 + 24))
  {
    if (v8 == 1)
    {
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v12 = (*(v10 + 32))(a1, v11, v10);
      v34 = v6;
      MEMORY[0x1EEE9AC00](v12);
      v30 = v11;
      v31 = v10;
      v32 = v2;
      if (*(a1 + 40) == 1)
      {
        v14 = *(v13 + 32);
        v15 = v13;

        outlined consume of _ShapeStyle_Shape.Result(v16, 1u);
        *(v15 + 32) = 0;
        *(v15 + 40) = 5;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v33 = v14;
      _ShapeStyle_Pack.modify(name:levels:_:)(&v34, v5, v7, partial apply for closure #1 in _OpacityShapeStyle._apply(to:));
      v26 = v14;
      v27 = a1[4];
      v28 = *(a1 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v27, v28);
      a1[4] = v26;
      *(a1 + 40) = 1;
    }

    else
    {
      (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
      if (*(a1 + 40) == 3)
      {
        v23 = a1[4];
        _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v3;

        outlined consume of _ShapeStyle_Shape.Result(v25, 3u);
        a1[4] = v24;
        *(a1 + 40) = 3;
      }
    }
  }

  else
  {
    outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
    a1[4] = 0;
    *(a1 + 40) = 0;
  }
}

void type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata completion function for _BlendModeShapeStyle(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #2 in static ModifiedContent<>._makeCustomHoverEffect(effect:inputs:body:)(_OWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1[3];
  v18[2] = a1[2];
  v18[3] = v11;
  v19[0] = a1[4];
  *(v19 + 12) = *(a1 + 76);
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  v17[1] = a2;
  v13 = type metadata accessor for ModifiedContent(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v13, v14, v15);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a5, v17);
  return (*(a7 + 32))(v17, v18, a3, a4, a5, a7);
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance HStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06HStackC0V_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v79 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v73 = v7;
  v72 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v95 = *a2;
  v96 = v10;
  v97 = *(a2 + 32);
  v11 = v95;
  outlined init with copy of _GraphInputs(&v95, &v87);
  v80 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v82 = DWORD1(v97);
  v74 = a4;
  v77 = v11;
  if ((WORD2(v97) & 0x1000) != 0)
  {
    v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v81 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v78 = v12;
  if (v79 & 1 | ((v82 & 0x22) != 0) || (v15 = v12, (v81 & 1) != 0))
  {
    v16 = v96;
    swift_beginAccess();
    *&v87 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v87) = v12;
    *&v88[0] = MEMORY[0x1E69E7CC0];
    *(&v88[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v88[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v87) = *(a2 + 72);
    *(&v87 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v91 = *(a2 + 32);
  v92 = v19;
  v93 = *(a2 + 64);
  v94 = *(a2 + 80);
  v20 = *(a2 + 16);
  v89 = *a2;
  v90 = v20;
  DWORD1(v91) = v82 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v92;
    *&v98[0] = v92;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v87);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v92;
      }
    }

    *&v87 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v87);
  }

  v26 = v78;
  if (v80 != v78)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v89, v78);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v89, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v89, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v89, v78);
  }

  v98[2] = v91;
  v98[3] = v92;
  v98[4] = v93;
  v99 = v94;
  v98[0] = v89;
  v98[1] = v90;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v83, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v98);

  v86 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v78;
  }

  if (!((v79 | v81) & 1 | (v80 != v26)))
  {
    outlined destroy of _GraphInputs(&v95);
    v38 = v74;
    goto LABEL_43;
  }

  v76 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v71 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v70 = HIDWORD(v32);
  v64 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v69 = HIDWORD(v34);
  v63 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v68 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v77) == v26)
  {
    LODWORD(v66) = 0;
    v67 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v66 = HIDWORD(v39);
    v67 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v83);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v65 = HIDWORD(v40);
  if ((v79 | v81))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v76;
    *(v43 + 24) = v31;
    *(v43 + 28) = v71;
    *(v43 + 32) = v33;
    *(v43 + 36) = v70;
    *(v43 + 40) = v35;
    *(v43 + 44) = v69;
    *(v43 + 48) = v37;
    *(v43 + 52) = v68;
    *(v43 + 56) = v67;
    *(v43 + 60) = v66;
    *(v43 + 64) = v41;
    *(v43 + 68) = v65;
    *&v87 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v87) = 0;
    v45 = v44;
    v26 = v78;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v80 != v26)
  {
    *(&v88[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v88[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v87 = v46;
    *(v46 + 16) = v76;
    *(v46 + 24) = v31;
    *(v46 + 28) = v71;
    *(v46 + 32) = v33;
    *(v46 + 36) = v70;
    *(v46 + 40) = v35;
    *(v46 + 44) = v69;
    *(v46 + 48) = v37;
    *(v46 + 52) = v68;
    *(v46 + 56) = v67;
    *(v46 + 60) = v66;
    *(v46 + 64) = v41;
    *(v46 + 68) = v65;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v87);
    *&v87 = v73;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v73 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v88[4] + 8, 0, 28);
      *(&v88[3] + 8) = 0u;
      *&v87 = __PAIR64__(v63, v64);
      *(&v87 + 1) = __PAIR64__(v47, DWORD2(v96));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      v56 = swift_endAccess();
      LODWORD(v88[0]) = v55;
      *(v88 + 8) = v95;
      *(&v88[1] + 8) = v96;
      *(&v88[2] + 8) = v97;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v87);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v73 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v87 = __PAIR64__(v47, v80);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v83);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v87 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v87) = 0;
        v26 = v78;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v95);
LABEL_41:
  v38 = v74;
  if (v81)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v77);
    v57 = *(a2 + 48);
    v88[1] = *(a2 + 32);
    v88[2] = v57;
    v88[3] = *(a2 + 64);
    LODWORD(v88[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v87 = *a2;
    v88[0] = v58;
    (*(v59 + 8))(&v87, &v83);
  }

LABEL_43:
  if ((v82 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v84 | 0x80;
  }

  else
  {

    v61 = v84;
    v60 = v85;
  }

  v88[1] = v91;
  v88[2] = v92;
  v88[3] = v93;
  LODWORD(v88[4]) = v94;
  v87 = v89;
  v88[0] = v90;
  outlined destroy of _ViewInputs(&v87);

  *v38 = v83;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
}

double protocol witness for CoordinateSpaceProtocol.coordinateSpace.getter in conformance LocalCoordinateSpace@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2;
  return result;
}

uint64_t one-time initialization function for trailing()
{
  if (one-time initialization token for trailing != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.trailing;
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  static Alignment.trailing = v0;
  unk_1ED526120 = static VerticalAlignment.center;
  return result;
}

void lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset()
{
  if (!lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Circle._Inset, &type metadata for Circle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Circle._Inset, &type metadata for Circle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Circle._Inset, &type metadata for Circle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset);
  }
}

uint64_t storeEnumTagSinglePayload for DisplayList.BackdropGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext()
{
  if (!lazy protocol witness table cache variable for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext)
  {
    swift_getWitnessTable("q;\raԽ\a", &type metadata for UpdateEnvironmentCustomHoverEffectContext, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext);
  }
}

uint64_t static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v63 = a2[2];
  v64 = v11;
  v65[0] = a2[4];
  *(v65 + 12) = *(a2 + 76);
  v12 = a2[1];
  v61 = *a2;
  v62 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(44);

    v26 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v26);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    static DynamicPropertyCache.fields(of:)(a5, &v56);
    v48 = v63;
    v49 = v64;
    v50[0] = v65[0];
    *(v50 + 12) = *(v65 + 12);
    v46 = v61;
    v47 = v62;
    v28 = DWORD1(v57);
    v29 = v10;
    LODWORD(v41) = v10;
    v32 = *(&v56 + 1);
    v33 = v56;
    v51 = v56;
    v31 = v57;
    LOBYTE(v52) = v57;
    DWORD1(v52) = DWORD1(v57);
    outlined init with copy of _CustomHoverEffectInputs(&v61, &v56);
    v14 = type metadata accessor for ModifierBodyAccessor(0, a5, a6, v13);
    swift_getWitnessTable(protocol conformance descriptor for ModifierBodyAccessor<A>, v14);
    BodyAccessor.makeBody(container:inputs:fields:)(v40, &v56, &v41, &v46, &v51, v14, v15);
    v16 = *(&v56 + 1);
    v27 = v56;
    v17 = v57;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v53 = v48;
    v54 = v49;
    v55[0] = v50[0];
    *(v55 + 12) = *(v50 + 12);
    v51 = v46;
    v52 = v47;
    v43 = v48;
    v44 = v49;
    v45[0] = v50[0];
    *(v45 + 12) = *(v50 + 12);
    v41 = v46;
    v42 = v47;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = *(AssociatedConformanceWitness + 32);
    outlined init with copy of _CustomHoverEffectInputs(&v51, &v56);
    v20(&v36, v40, &v41, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
    v58 = v43;
    v59 = v44;
    v60[0] = v45[0];
    *(v60 + 12) = *(v45 + 12);
    v56 = v41;
    v57 = v42;
    outlined destroy of _CustomHoverEffectInputs(&v56);
    v21 = v36;
    v22 = v37;
    if (v17)
    {
      v43 = v48;
      v44 = v49;
      v45[0] = v50[0];
      *(v45 + 12) = *(v50 + 12);
      v41 = v46;
      v42 = v47;
      outlined destroy of _CustomHoverEffectInputs(&v41);
      v24 = v32;
      v23 = v33;
    }

    else
    {
      v40[0] = v27;
      v40[1] = v16;
      v35 = v29;
      v36 = v33;
      v37 = v32;
      v38 = v31;
      v39 = v28;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v35, &v36, a5);
      v43 = v48;
      v44 = v49;
      v45[0] = v50[0];
      *(v45 + 12) = *(v50 + 12);
      v41 = v46;
      v42 = v47;
      outlined destroy of _CustomHoverEffectInputs(&v41);
      v23 = v33;
      v24 = v32;
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout(v23, v24, v31);
    *a7 = v21;
    a7[1] = v22;
  }

  return result;
}

{
  return static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t initializeWithCopy for _CustomHoverEffectInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 22);

  return a1;
}

void ShapeStyle.mapCopiedStyle<A>(in:body:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v16 + 24) == 3)
  {
    (*(v12 + 32))(a1, v11, v12, v13);
    if (*(a1 + 40) == 2)
    {
      v17 = *(a1 + 32);

      a2(v18);
      v19 = AnyShapeStyle.init<A>(_:)(v15, a5, a7);
      outlined consume of _ShapeStyle_Shape.Result(v17, 2u);
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v19;
      *(a1 + 40) = 2;
    }
  }
}

void type metadata accessor for _BlendModeShapeStyle<AnyShapeStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _BlendModeShapeStyle<AnyShapeStyle>)
  {
    v4 = type metadata accessor for _BlendModeShapeStyle(0, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _BlendModeShapeStyle<AnyShapeStyle>);
    }
  }
}

void _BlendModeShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v43 = *(a1 + 8);
  v45 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 <= 2)
  {
    if (*(a1 + 24))
    {
      if (v4 == 1)
      {
        (*(*(a2 + 24) + 32))();
        v48 = *(v2 + *(a2 + 36));
        GraphicsBlendMode.init(_:)(&v48, &v46);
        v7 = v46;
        v8 = v47;
        v9 = *(a1 + 40);
        v41 = a1;
        if (v9 == 1)
        {
          v10 = *(a1 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v11, 1u);
          *(a1 + 32) = 0;
          *(a1 + 40) = 5;
        }

        else
        {
          v10 = MEMORY[0x1E69E7CC0];
        }

        v46 = v10;
        v48 = v3;
        v21 = _ShapeStyle_Pack.indices(of:)(&v48);
        v23 = v22;

        if (v21 == v23)
        {
LABEL_18:
          outlined consume of GraphicsBlendMode(v7, v8);
          v24 = v41;
          outlined consume of _ShapeStyle_Shape.Result(*(v41 + 32), *(v41 + 40));
          *(v41 + 32) = v10;
          *(v24 + 40) = 1;
          return;
        }

        if (v23 < v21)
        {
          goto LABEL_56;
        }

        v3 = v43;
        if (v21 >= v23)
        {
LABEL_57:
          __break(1u);
        }

        else if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_23:
          v44 = v10 + 4;
          v42 = v10;
          while (1)
          {
            if (v21 < 0)
            {
              goto LABEL_54;
            }

            if (v21 >= v10[2])
            {
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v25 = &v44[16 * v21];
            v26 = *(v25 + 1);
            if (v3 <= v26 && v45 > v26)
            {
              break;
            }

LABEL_25:
            if (++v21 == v23)
            {
              goto LABEL_18;
            }
          }

          if (one-time initialization token for semantic != -1)
          {
            swift_once();
          }

          v28 = static Semantics_v6.semantic;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C == 1)
          {
            if ((dyld_program_sdk_at_least() & 1) == 0)
            {
LABEL_38:
              v29 = 0;
              v10 = v42;
LABEL_41:
              v30 = v25[13];
              v31 = *(v25 + 112);
              outlined copy of GraphicsBlendMode(v7, v8);
              outlined consume of GraphicsBlendMode?(v30, v31);
              v25[13] = v7;
              *(v25 + 112) = v8;
LABEL_42:
              v32 = v25[15];
              v33 = *(v32 + 2);
              if (v33)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v25[15] = v32;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
                }

                v10 = 0;
                v25[15] = v32;
                v3 = (v32 + 104);
                while (1)
                {
                  if (!v29)
                  {
                    goto LABEL_50;
                  }

                  if (v10 >= *(v32 + 2))
                  {
                    goto LABEL_53;
                  }

                  if (*v3 == 255)
                  {
LABEL_50:
                    outlined copy of GraphicsBlendMode(v7, v8);
                    if (v10 >= *(v32 + 2))
                    {
                      __break(1u);
LABEL_53:
                      __break(1u);
LABEL_54:
                      __break(1u);
                      goto LABEL_55;
                    }

                    v35 = *(v3 - 8);
                    *(v3 - 8) = v7;
                    v36 = *v3;
                    *v3 = v8;
                    outlined consume of GraphicsBlendMode?(v35, v36);
                  }

                  v10 = (v10 + 1);
                  v3 += 80;
                  if (v33 == v10)
                  {
                    v25[15] = v32;
                    v10 = v42;
                    v3 = v43;
                    goto LABEL_25;
                  }
                }
              }

              goto LABEL_25;
            }
          }

          else if (static Semantics.forced < v28)
          {
            goto LABEL_38;
          }

          v29 = 1;
          v10 = v42;
          if (*(v25 + 112) != 255)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        goto LABEL_23;
      }
    }

    else if (*(v2 + *(a2 + 36)))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return;
    }

    goto LABEL_12;
  }

  if (v4 == 3)
  {
    MEMORY[0x1EEE9AC00](a1);
    v15 = *(v14 + 24);
    v38 = *(v14 + 16);
    v39 = v15;
    v40 = v2;
    v17 = v16;
    type metadata accessor for _BlendModeShapeStyle<AnyShapeStyle>(0, v14, v18, v19);
    ShapeStyle.mapCopiedStyle<A>(in:body:)(v17, partial apply for closure #2 in _BlendModeShapeStyle._apply(to:), &v37, v38, v20, v15, &protocol witness table for _BlendModeShapeStyle<A>);
    return;
  }

  if (v4 == 4 || !(v45 | v43 | v3))
  {
LABEL_12:
    v13 = *(*(a2 + 24) + 32);

    v13();
  }
}

char *PreferenceKeys.remove(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = PreferenceKeys._index(of:)(a1);

  v7 = *(v4 + 16);
  if (v5 != v7)
  {
    if (v5 >= v7)
    {
      __break(1u);
    }

    else if (*(v4 + 16 * v5 + 32) == a1)
    {

      return specialized Array.remove(at:)(v5);
    }
  }

  return result;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA20DisableRemoteEffectsV_Ttg5Tm()
{
  swift_beginAccess();
  v0 = static DisableRemoteEffects.cachedValue;
  if (static DisableRemoteEffects.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD770B0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v8, v9);
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD770B0);
      v0 = [v5 BOOLForKey_];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      swift_beginAccess();
      v0 = static DisableRemoteEffects.defaultFeatureValue;
    }

    static DisableRemoteEffects.cachedValue = v0;
  }

  return v0 & 1;
}

uint64_t initializeBufferWithCopyOfBuffer for DisplayList.BackdropGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t initializeWithCopy for HoverEffectContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v4, *&v16[0]);
  if (!v7 || (v8 = *(v7 + 11), v16[0] = *(v7 + 9), v16[1] = v8, v16[2] = *(v7 + 13), v17 = v7[15], v9 = MEMORY[0x1E69E6720], outlined init with copy of HoverEffectContext?(v16, v15, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]), v10 = _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018HoverEffectContextD033_B2E20BEC96D7E01EE3D55A38320E6294LLV_Tt1B5(a2, v16), outlined destroy of HoverEffectContext?(v16, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v9), (v10 & 1) == 0))
  {
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>(0);
    v13 = swift_allocObject();
    v14 = *(a2 + 16);
    *(v13 + 72) = *a2;
    *(v13 + 88) = v14;
    *(v13 + 104) = *(a2 + 32);
    *(v13 + 120) = *(a2 + 48);
    outlined init with copy of HoverEffectContext?(a2, v15, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v12);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t getEnumTagSinglePayload for HoverEffectContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for HoverEffectContext(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = a2;
    }
  }

  return result;
}

void specialized ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v62 - v16;
  if (a2)
  {
    v68 = v13;
    v66 = a1;
    v67 = v17;
    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v18 = static Signpost.bodyInvoke;
    v19 = word_1ED539040;
    v20 = HIBYTE(word_1ED539040);
    v21 = byte_1ED539042;
    v22 = static os_signpost_type_t.begin.getter();
    v85 = v18;
    v86 = v19;
    v87 = v20;
    v88 = v21;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_37;
    }

    LODWORD(v78) = v22;
    v62 = v15;
    v63 = AssociatedTypeWitness;
    v65 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18DDAB4C0;
    v24 = AGTypeID.description.getter();
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v29 = v28;
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v64 = a3;
    v30 = specialized static Tracing.libraryName(defining:)();
    *(v23 + 96) = v27;
    *(v23 + 104) = v29;
    *(v23 + 72) = v30;
    *(v23 + 80) = v31;
    if (one-time initialization token for _signpostLog == -1)
    {
      v32 = v78;
      if (v20)
      {
LABEL_7:
        v84[0] = v32;
        v82 = _signpostLog;
        v83 = &dword_18D018000;
        v85 = v18;
        v86 = v19;
        v80[0] = "%{public}@.body [in %{public}@]";
        v80[1] = 31;
        v81 = 2;
        v79 = v23;
        v33 = v68;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v84, &v83, &v82, &v85, v68, v80, &v79);
        (*(v76 + 8))(v33, v75);
LABEL_36:

        a4 = v65;
        a3 = v64;
        AssociatedTypeWitness = v63;
        v15 = v62;
LABEL_37:
        AGGraphClearUpdate();
        v56 = v67;
        (*(a4 + 24))();
        AGGraphSetUpdate();
        v57 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        MEMORY[0x1EEE9AC00](v57);
        v59 = type metadata accessor for ModifierBodyAccessor(0, a3, a4, v58);
        *(&v62 - 2) = v59;
        swift_getWitnessTable(protocol conformance descriptor for ModifierBodyAccessor<A>, v59);
        *(&v62 - 1) = v60;
        _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v56, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v62 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v61);
        (*(v15 + 8))(v56, AssociatedTypeWitness);
        return;
      }
    }

    else
    {
      swift_once();
      v32 = v78;
      if (v20)
      {
        goto LABEL_7;
      }
    }

    if (v18 == 20)
    {
      v34 = 3;
    }

    else
    {
      v34 = 4;
    }

    v35 = bswap32(v18) | (4 * WORD1(v18));
    v36 = v32;
    v37 = v76 + 16;
    v69 = *(v76 + 16);
    v38 = v69(v77, v68, v75);
    v39 = 0;
    LOBYTE(v80[0]) = 1;
    v76 = v37;
    v73 = 16 * *(&v18 + 1);
    v74 = (v37 - 8);
    v72 = v23 + 32;
    v71 = v18;
    v70 = *(&v18 + 1);
    do
    {
      v78 = &v62;
      MEMORY[0x1EEE9AC00](v38);
      v41 = &v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = v41 + 8;
      v43 = v34;
      v44 = v41 + 8;
      do
      {
        *(v44 - 1) = 0;
        *v44 = 0;
        v44 += 16;
        --v43;
      }

      while (v43);
      v45 = v72 + 40 * v39;
      while (1)
      {
        v46 = *(v23 + 16);
        if (v39 == v46)
        {
          break;
        }

        if (v39 >= v46)
        {
          __break(1u);
        }

        ++v39;
        outlined init with copy of AnyTrackedValue(v45, &v85);
        v47 = v89;
        v48 = v90;
        __swift_project_boxed_opaque_existential_1(&v85, v89);
        *(v42 - 1) = CVarArg.kdebugValue(_:)(v35 | v36, v47, v48);
        *v42 = v49 & 1;
        v42 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v85);
        v45 += 40;
        if (!--v34)
        {
          goto LABEL_21;
        }
      }

      LOBYTE(v80[0]) = 0;
LABEL_21:
      v50 = v71;
      if (v71 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v41[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v41[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v41[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v50 != 20 && v41[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v51 = v75;
      v52 = *v74;
      v53 = v77;
      (*v74)(v77, v75);
      v54 = __swift_project_value_buffer(v51, static OSSignpostID.continuation);
      v38 = v69(v53, v54, v51);
      v34 = v70;
    }

    while ((v80[0] & 1) != 0);
    v55 = v75;
    v52(v77, v75);
    v52(v68, v55);
    goto LABEL_36;
  }
}

uint64_t protocol witness for static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:) in conformance EmptyHoverEffect(uint64_t a1, _OWORD *a2, uint64_t (*a3)(_OWORD *))
{
  v3 = a2[3];
  v6[2] = a2[2];
  v6[3] = v3;
  v7[0] = a2[4];
  *(v7 + 12) = *(a2 + 76);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return a3(v6);
}

Swift::Void __swiftcall _CustomHoverEffectInputs.removeContextFromEnvironment()()
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment();
  v0 = Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter(v0);
}

void lazy protocol witness table accessor for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment()
{
  if (!lazy protocol witness table cache variable for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for ClearCustomHoverEffectContextFromEnvironment, &unk_1F0051308, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment);
  }
}

uint64_t static _CALayerView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v7;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v9 = type metadata accessor for _CALayerView(0, a3, a3, a4);
  v13 = v6;
  return static RendererLeafView.makeLeafView(view:inputs:)(&v13, v11, v9, &protocol witness table for _CALayerView<A>, a5);
}

uint64_t static RendererLeafView.makeLeafView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v67 = a4;
  v65 = a3;
  v58 = a5;
  v5 = 0;
  v93 = *MEMORY[0x1E69E9840];
  v62 = *a1;
  v6 = *(a2 + 8);
  v70 = *a2;
  v7 = *(a2 + 24);
  v64 = *(a2 + 16);
  v76 = v7;
  LODWORD(v7) = *(a2 + 32);
  v69 = *(a2 + 36);
  v77 = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v63 = *(a2 + 60);
  LODWORD(v7) = *(a2 + 68);
  v61 = *(a2 + 64);
  v68 = v7;
  v11 = *(a2 + 72);
  v75 = *(a2 + 80);
  v74 = v11;
  v72 = MEMORY[0x1E69E7CC0];
  v12 = *MEMORY[0x1E698D3F8];
  LODWORD(v73) = 0;
  HIDWORD(v73) = v12;
  v59 = v12;
  v66 = v9;
  v60 = v8;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v9))
  {
    v56 = v10;
    v13 = ++lastIdentity;
    v55 = v6;
    v54 = lastIdentity;
    if ((v69 & 0x100) != 0)
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v70, &v80);
      result = AGWeakAttributeGetAttribute();
      if (result == v12)
      {
        __break(1u);
        return result;
      }

      v57 = 0;
      v14 = v63;
      LODWORD(v78) = v13;
      v47 = Attribute<A>.subscript.modify(&v80, result);
      v48 = _DisplayList_StableIdentityScope.pushIdentity(_:)(&v78);
      (v47)(&v80, 0, v48);
      v6 = v55;
      v8 = v60;
    }

    else
    {
      v57 = 0;
      v14 = v63;
    }

    *&v80 = v70;
    *(&v80 + 1) = v6;
    v81 = v64;
    v82 = v76;
    v83 = v77;
    v84 = v69;
    v85 = v8;
    v86 = v66;
    v87 = v56;
    v88 = v14;
    v89 = v61;
    v90 = v68;
    v91 = v74;
    v92 = v75;
    swift_beginAccess();
    v53 = CachedEnvironment.animatedPosition(for:)(&v80);
    *&v80 = v70;
    *(&v80 + 1) = v6;
    v81 = v64;
    v82 = v76;
    v83 = v77;
    v84 = v69;
    v85 = v8;
    v86 = v66;
    v87 = v56;
    v88 = v14;
    v89 = v61;
    v90 = v68;
    v91 = v74;
    v92 = v75;
    CachedEnvironment.animatedSize(for:)(&v80);
    swift_endAccess();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v70, v80);
    if (v16)
    {
      v17 = *(v16 + 72);
    }

    else
    {
      v17 = 0;
    }

    v5 = v57;
    *&v80 = __PAIR64__(v62, v54);
    *(&v80 + 1) = __PAIR64__(OffsetAttribute2, v53);
    LODWORD(v81) = v68;
    BYTE4(v81) = v17;
    HIWORD(v81) = 0;
    MEMORY[0x1EEE9AC00](v16);
    v51 = type metadata accessor for LeafDisplayList(0, v65, v18, v19);
    swift_getWitnessTable(protocol conformance descriptor for LeafDisplayList<A>, v51);
    v52 = v20;
    type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v80, closure #1 in Attribute.init<A>(_:)partial apply, v50, v51, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    LOBYTE(v80) = 0;
    PreferencesOutputs.subscript.setter(v78, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v6 = v55;
    v9 = v66;
    v8 = v60;
    v10 = v56;
  }

  v23 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v9);
  if (v23)
  {
    *&v80 = v70;
    *(&v80 + 1) = v6;
    v57 = v5;
    v24 = v64;
    v81 = v64;
    v82 = v76;
    v25 = v69;
    v83 = v77;
    v84 = v69;
    v85 = v8;
    v86 = v9;
    v26 = v63;
    v87 = v10;
    v88 = v63;
    v27 = v61;
    v28 = v68;
    v89 = v61;
    v90 = v68;
    v91 = v74;
    v92 = v75;
    swift_beginAccess();
    v29 = CachedEnvironment.animatedSize(for:)(&v80);
    *&v80 = v70;
    *(&v80 + 1) = v6;
    v81 = v24;
    v82 = v76;
    v83 = v77;
    v84 = v25;
    v85 = v8;
    v86 = v66;
    v87 = v10;
    v88 = v26;
    v30 = v10;
    v89 = v27;
    v90 = v28;
    v91 = v74;
    v92 = v75;
    v31 = CachedEnvironment.animatedPosition(for:)(&v80);
    swift_endAccess();
    v32 = *(v67 + 8);
    v33 = v62;
    v34 = v65;
    v35 = LeafResponderFilter.init(data:size:position:transform:)(v62, v29, v31, v26, &v80);
    v78 = v80;
    v79 = v81;
    MEMORY[0x1EEE9AC00](v35);
    v36 = v34;
    v10 = v30;
    v38 = type metadata accessor for LeafResponderFilter(0, v36, v32, v37);
    v51 = v38;
    swift_getWitnessTable(protocol conformance descriptor for LeafResponderFilter<A>, v38);
    v52 = v39;
    _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    v40 = v38;
    v9 = v66;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v78, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_1, v50, v40, MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v42);

    LOBYTE(v80) = 0;
    v23 = PreferencesOutputs.subscript.setter(v71, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    v43 = v60;
  }

  else
  {
    v43 = v8;
    v32 = *(v67 + 8);
    v33 = v62;
    v27 = v61;
  }

  *&v80 = v70;
  *(&v80 + 1) = v6;
  v81 = v64;
  v82 = v76;
  v83 = v77;
  v84 = v69;
  v85 = v43;
  v86 = v9;
  v87 = v10;
  v88 = v63;
  v89 = v27;
  v90 = v68;
  v91 = v74;
  v92 = v75;
  MEMORY[0x1EEE9AC00](v23);
  v50[0] = v65;
  v50[1] = v44;
  LODWORD(v51) = v33;
  result = _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v80, partial apply for implicit closure #1 in static RendererLeafView.makeLeafView(view:inputs:), &v49, v59, v65, v32);
  v46 = v58;
  *v58 = v72;
  v46[1] = v73;
  return result;
}

uint64_t _ViewOutputs.attachIndirectOutputs(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v11 = *v1;
  v12 = v5;
  v9 = v2;
  v10 = v3;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v9);

  if (v6 != *MEMORY[0x1E698D3F8] && v4 != *MEMORY[0x1E698D3F8])
  {

    return AGGraphSetIndirectAttribute();
  }

  return result;
}

uint64_t outlined init with copy of HoverEffectContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HoverEffectContext?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018HoverEffectContextD033_B2E20BEC96D7E01EE3D55A38320E6294LLV_Tt1B5(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  v43 = v9;
  v44 = v8;
  v41 = v7;
  v42 = v6;
  v40 = v4;
  if (v10 == 1)
  {
    if (v17 == 1)
    {
      v18 = MEMORY[0x1E69E6720];
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v18, type metadata accessor for HoverEffectContext?);
      v19 = 1;
      v20 = v5;
      v21 = v40;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      v25 = v44;
      v26 = 1;
LABEL_9:
      outlined consume of HoverEffectContext?(v20, v21, v22, v23, v24, v25, v26);
      return v19 & 1;
    }

    v37 = *a2;
    v38 = a2[1];
    v39 = a2[2];
    v34 = MEMORY[0x1E69E6720];
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v34, type metadata accessor for HoverEffectContext?);
    v29 = v43;
    v28 = v44;
    v31 = v41;
    v30 = v42;
    v33 = v5;
    v32 = v40;
  }

  else
  {
    *&v55 = *a1;
    *(&v55 + 1) = v4;
    *&v56 = v7;
    *(&v56 + 1) = v6;
    *&v57 = v9;
    *(&v57 + 1) = v8;
    v58 = v10;
    if (v17 != 1)
    {
      *&v45 = v12;
      *(&v45 + 1) = v11;
      *&v46 = v13;
      *(&v46 + 1) = v14;
      *&v47 = v16;
      *(&v47 + 1) = v15;
      v48 = v17;
      v19 = specialized static HoverEffectContext.== infix(_:_:)(&v55, &v45);
      v49[0] = v45;
      v49[1] = v46;
      v49[2] = v47;
      v50 = v48;
      v35 = MEMORY[0x1E69E6720];
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v51, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, &v51, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v35, type metadata accessor for HoverEffectContext?);
      outlined copy of HoverEffectContext?(v5, v40, v41, v42, v43, v44, v10);
      outlined destroy of HoverEffectContext(v49);
      v51 = v55;
      v52 = v56;
      v53 = v57;
      v54 = v58;
      outlined destroy of HoverEffectContext(&v51);
      v20 = v5;
      v21 = v40;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      v25 = v44;
      v26 = v10;
      goto LABEL_9;
    }

    v37 = v12;
    v38 = v11;
    v39 = v13;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v54 = v58;
    v27 = MEMORY[0x1E69E6720];
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, v49, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, v49, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v27, type metadata accessor for HoverEffectContext?);
    outlined copy of HoverEffectContext?(v5, v40, v41, v42, v43, v44, v10);
    outlined destroy of HoverEffectContext(&v51);
    v28 = v44;
    v29 = v43;
    v30 = v42;
    v31 = v41;
    v32 = v40;
    v33 = v5;
  }

  outlined consume of HoverEffectContext?(v33, v32, v31, v30, v29, v28, v10);
  outlined consume of HoverEffectContext?(v37, v38, v39, v14, v16, v15, v17);
  v19 = 0;
  return v19 & 1;
}

void type metadata accessor for HoverEffectContext?()
{
  if (!lazy cache variable for type metadata for HoverEffectContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HoverEffectContext?);
    }
  }
}

uint64_t outlined consume of HoverEffectContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t type metadata completion function for MinorProperties(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for EstimationCache(uint64_t a1)
{
  result = type metadata accessor for IndexSet();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _LazyLayoutViewCache.__allocating_init(layout:list:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  _LazyLayoutViewCache.init(layout:list:inputs:)(a1, a2, a3);
  return v6;
}

uint64_t _LazyLayoutViewCache.init(layout:list:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v7 = a1;
  v8 = *v3;
  v9 = *(*v3 + 440);
  v10 = *(v8 + 448);
  (*(v10 + 40))(v9, v10);
  *(v4 + 98) = v7;

  return LazyLayoutViewCache.init<A>(layout:list:inputs:)(v7, v6, a3, v9, v10);
}

uint64_t LazyLayoutViewCache.init<A>(layout:list:inputs:)(int a1, int a2, uint64_t a3, void (*a4)(uint64_t a1), uint64_t a5)
{
  v177 = a5;
  v178 = a4;
  v215 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 48);
  v212 = *(a3 + 32);
  *v213 = v9;
  *&v213[16] = *(a3 + 64);
  v214 = *(a3 + 80);
  v10 = *(a3 + 16);
  v210 = *a3;
  v211 = v10;
  swift_weakInit();
  *(v5 + 184) = 0;
  *(v5 + 156) = 0;
  v179 = *MEMORY[0x1E698D3F8];
  *(v5 + 164) = v179;
  *(v5 + 176) = MEMORY[0x1E69E7CC8];
  *(v5 + 192) = xmmword_18DD85520;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  v11 = *(MEMORY[0x1E695F050] + 16);
  *(v5 + 232) = *MEMORY[0x1E695F050];
  *(v5 + 248) = v11;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 280) = -1;
  *(v5 + 288) = -1;
  *(v5 + 296) = 0;
  *(v5 + 304) = 0;
  *(v5 + 312) = 0;
  *(v5 + 336) = 0;
  *(v5 + 320) = 0;
  *(v5 + 328) = 0;
  *(v5 + 340) = 16777471;
  *(v5 + 344) = 0;
  *(v5 + 352) = 1;
  swift_weakInit();
  v12 = MEMORY[0x1E69E7CC0];
  *(v5 + 368) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5(MEMORY[0x1E69E7CC0]);
  *(v5 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(v12);
  *(v5 + 384) = 0;
  v165[1] = v5 + 184;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  v181 = v5;
  swift_weakAssign();

  v13 = v210;
  v14 = *(a3 + 48);
  v206 = *(a3 + 32);
  v207 = v14;
  v208 = *(a3 + 64);
  v209 = *(a3 + 80);
  v15 = *(a3 + 16);
  v204 = *a3;
  v205 = v15;
  outlined init with copy of _ViewInputs(&v210, v201);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v13);
  static CorePlatformProvidersDefinition.providers.getter(v201);
  if (*&v201[8])
  {
    (*(*(&v201[8] + 1) + 16))(&v204);
  }

  v174 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v13);
  v170 = *v213;
  v173 = *&v213[8];
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(*v213);
  v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v13);
  if (v16 & 1) != 0 && (v17)
  {
    v18 = v207;
    *&v201[0] = v207;
    v19 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    v20 = *(v18 + 16);
    if (v19 != v20)
    {
      if (v19 >= v20)
      {
        __break(1u);
        goto LABEL_83;
      }

      if (*(v18 + 16 * v19 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v19);
        v18 = v207;
      }
    }

    *&v201[0] = v18;
    v21 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v22 = *(v18 + 16);
    if (v21 == v22)
    {
      goto LABEL_13;
    }

    if (v21 < v22)
    {
      if (*(v18 + 16 * v21 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v21);
      }

      goto LABEL_13;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_13:
  v23 = v179;
  if (v174 != v179)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v204, v179);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v204, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v204, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v204, v179);
  }

  v24 = v181;
  v25 = AGSubgraphGetCurrent();
  if (!v25)
  {
LABEL_85:
    __break(1u);
  }

  *(v181 + 24) = v25;
  *(v24 + 136) = a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v26 = static CachedEnvironment.ID.layoutDirection;
  v27 = v211;
  swift_beginAccess();
  v28 = specialized CachedEnvironment.attribute<A>(id:_:)(v26, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  *(v24 + 140) = v28;
  if (one-time initialization token for nearestScrollableAxes != -1)
  {
    swift_once();
  }

  v29 = static CachedEnvironment.ID.nearestScrollableAxes;
  swift_beginAccess();
  v30 = specialized CachedEnvironment.attribute<A>(id:_:)(v29, specialized implicit closure #1 in _GraphInputs.nearestScrollableAxes.getter, 0);
  swift_endAccess();
  *(v24 + 144) = v30;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v13, *&v201[0]);
  v32 = v23;
  if (v31)
  {
    v32 = v23;
    if (*(v31 + 76) != 255)
    {
      v32 = *(v31 + 72);
      if (((*(v31 + 76) << 32) & 0x100000000) != 0)
      {
        v32 = v23;
      }
    }
  }

  v175 = v13;
  *(v24 + 164) = v32;
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v33 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33, specialized implicit closure #1 in _GraphInputs.accessibilityEnabled.getter, 0);
  swift_endAccess();
  *(v24 + 168) = v34;
  v166 = DWORD2(v211);
  LODWORD(v201[0]) = DWORD2(v211);
  *(&v201[0] + 1) = 0;
  LODWORD(v201[1]) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutViewCache();
  lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache();
  v35 = Attribute.init<A>(body:value:flags:update:)();
  v201[2] = v212;
  v201[3] = *v213;
  v201[4] = *&v213[16];
  LODWORD(v201[5]) = v214;
  v201[0] = v210;
  v201[1] = v211;
  outlined init with copy of _ViewInputs(&v210, v200);
  v169 = a1;
  v36 = a1;
  v37 = v177;
  v38 = v178;
  LazySubviewPlacements.init(layout:cache:inputs:)(v36, v35, v201, v200);
  v39 = memcpy(v199, v200, 0x1D9uLL);
  MEMORY[0x1EEE9AC00](v39);
  v41 = type metadata accessor for LazySubviewPlacements(0, v38, v37, v40);
  v163 = v41;
  swift_getWitnessTable(protocol conformance descriptor for LazySubviewPlacements<A>, v41);
  v164 = v42;
  type metadata accessor for Attribute<[_LazyLayout_PlacedSubview]>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v199, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_13, &AssociatedTypeWitness, v41, MEMORY[0x1E69E73E0], v43, MEMORY[0x1E69E7410], v44);
  memcpy(v201, v199, 0x1D9uLL);
  v45 = *(*(v41 - 8) + 8);
  v168 = v41;
  v45(v201, v41);
  *(v24 + 148) = v202[0];
  *(v24 + 152) = Attribute.init<A>(body:value:flags:update:)();
  *(v24 + 156) = AGCreateWeakAttribute();
  LODWORD(v199[0]) = *(v24 + 148);
  v172 = v35;
  DWORD1(v199[0]) = v35;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v47 = v46;
  lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements();
  v176 = v47;
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *(v24 + 120) = MEMORY[0x1E69E7CC0];
  v48 = v179;
  *(v24 + 128) = 0;
  *(v24 + 132) = v48;
  v49 = v206;
  v50 = v207;
  v202[2] = v206;
  v202[3] = v207;
  v51 = v208;
  v202[4] = v208;
  v52 = v209;
  v203 = v209;
  v53 = v204;
  v202[0] = v204;
  v202[1] = v205;
  v54 = v204;
  v55 = (v24 + 32);
  *(v24 + 48) = v205;
  *(v24 + 32) = v53;
  *(v24 + 112) = v52;
  *(v24 + 96) = v51;
  *(v24 + 64) = v49;
  *(v24 + 80) = v50;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v56 = *&v199[0];
  outlined init with copy of _ViewInputs(v202, v199);
  v57 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v54, v56);
  if (v57)
  {
    outlined init with copy of LazyLayoutCacheParent(v57 + 72, &v183);
    v58 = v184;
    if ((v184 & 0x8000000000000000) == 0 && swift_weakLoadStrong())
    {
      LazyLayoutViewCache.addChildCache(_:seed:)(v24, v58);
    }
  }

  else
  {
    swift_weakInit();
    v184 = -1;
  }

  v171 = v27;
  v193 = v206;
  v194 = v207;
  v195 = v208;
  v196 = v209;
  v191 = v204;
  v192 = v205;
  swift_beginAccess();
  v59 = *(v24 + 80);
  v197[2] = *(v24 + 64);
  v197[3] = v59;
  v197[4] = *(v24 + 96);
  v198 = *(v24 + 112);
  v60 = *(v24 + 48);
  v197[0] = *v55;
  v197[1] = v60;
  v61 = v194;
  *(v24 + 64) = v193;
  *(v24 + 80) = v61;
  *(v24 + 96) = v195;
  *(v24 + 112) = v196;
  v62 = v192;
  *v55 = v191;
  *(v24 + 48) = v62;
  outlined init with copy of _ViewInputs(&v191, v199);
  outlined destroy of _ViewInputs(v197);
  v63 = *(v207 + 16);
  v180 = v24 + 120;
  v167 = v207;
  if (v63)
  {

    v65 = (v64 + 40);
    do
    {
      v73 = *(v65 - 1);
      v74 = *v65;
      v75 = *(v24 + 148);
      if (v73 == &type metadata for DisplayList.Key)
      {
        LODWORD(v199[0]) = *(v24 + 148);
        *(&v199[0] + 1) = v24;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews();

        v75 = Attribute.init<A>(body:value:flags:update:)();
      }

      v182 = v165;
      v199[0] = __PAIR64__(v179, v75);
      MEMORY[0x1EEE9AC00](v64);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v67 = type metadata accessor for LazyPreference(0, v73, v74, v66);
      v162 = v67;
      swift_getWitnessTable(protocol conformance descriptor for LazyPreference<A>, v67);
      v163 = v68;
      v69 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v199, partial apply for closure #1 in Attribute.init<A>(_:), &v165[-6], v67, MEMORY[0x1E69E73E0], v69, MEMORY[0x1E69E7410], v70);
      v71 = v185;
      swift_beginAccess();
      _ViewOutputs.appendPreference<A>(key:value:)(v73, v71, v73, v74, v72);
      v64 = swift_endAccess();
      v65 += 2;
      --v63;
      v24 = v181;
    }

    while (v63);
  }

  else
  {
  }

  if ((BYTE4(v212) & 2) != 0)
  {
    v78 = v171;
    v80 = v169;
    v79 = v177;
    v81 = v178;
    *&v199[0] = LazyLayoutComputer.init(layout:environment:cache:containerSize:)(v169, *(v171 + 16));
    *(&v199[0] + 1) = v82;
    MEMORY[0x1EEE9AC00](*&v199[0]);
    v84 = type metadata accessor for LazyLayoutComputer(0, v81, v79, v83);
    v163 = v84;
    swift_getWitnessTable(protocol conformance descriptor for LazyLayoutComputer<A>, v84);
    v164 = v85;
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v199, closure #1 in Attribute.init<A>(_:)partial apply, &AssociatedTypeWitness, v84, MEMORY[0x1E69E73E0], v86, MEMORY[0x1E69E7410], v87);
    v88 = v185;
    swift_beginAccess();
    *(v24 + 132) = v88;
    v89 = *(v24 + 128);
    v76 = v175;
    if ((v89 & 0x80) == 0)
    {
      *(v24 + 128) = v89 | 0x80;
    }

    v77 = v179;
  }

  else
  {
    v76 = v175;
    v77 = v179;
    v78 = v171;
    v79 = v177;
    v80 = v169;
  }

  v90 = v172;
  v91 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(v76);
  if (v91 != v77)
  {
    v92 = *(v78 + 16);
    v164 = v79;
    v93 = v178;
    v163 = v178;
    LazySubviewPrefetcher.init(layout:size:position:transform:environment:prefetchState:cache:containerSize:)(v80, *&v213[24], *&v213[16], *&v213[12], v92, v91, v90, v214, &v185);
    MEMORY[0x1EEE9AC00](v94);
    v96 = type metadata accessor for LazySubviewPrefetcher(0, v93, v79, v95);
    v163 = v96;
    swift_getWitnessTable(protocol conformance descriptor for LazySubviewPrefetcher<A>, v96);
    v164 = v97;
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v185, partial apply for closure #1 in Attribute.init<A>(_:), &AssociatedTypeWitness, v96, MEMORY[0x1E69E73E0], v98, MEMORY[0x1E69E7410], v99);
    v199[2] = v187;
    v199[3] = v188[0];
    *(&v199[3] + 9) = *(v188 + 9);
    v199[0] = v185;
    v199[1] = v186;
    (*(*(v96 - 8) + 8))(v199, v96);
    AGGraphAddInput();
    v91 = AGGraphSetFlags();
  }

  v100 = v168;
  MEMORY[0x1EEE9AC00](v91);
  v163 = _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0RzlufcyAA06UpdateeF033_EB2336F1CBB87914F55D10FF4F9B475ALLVzXEfU_TA_0;
  v164 = v24;
  AGGraphMutateAttribute();
  MEMORY[0x1EEE9AC00](*(v24 + 148));
  MEMORY[0x1EEE9AC00](v101);
  AssociatedTypeWitness = v100;
  v162 = partial apply for closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  v163 = v102;
  AGGraphMutateAttribute();
  v103 = v207;
  v104 = *(v207 + 16);
  if (v104)
  {

    v105 = (v103 + 40);
    do
    {
      v110 = *(v105 - 1);
      v111 = *v105;
      swift_beginAccess();
      if ((_ViewOutputs.subscript.getter(v110, v110, v111) & 0x100000000) != 0)
      {
        swift_endAccess();
      }

      else
      {
        v106 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v106);
        v165[-6] = v178;
        v165[-5] = v110;
        v108 = type metadata accessor for LazyPreference(0, v110, v111, v107);
        MEMORY[0x1EEE9AC00](v108);
        AssociatedTypeWitness = v109;
        v162 = _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0Rzlufc12updateOutputL_3keyyqd__m_tAaORzAA13PreferenceKeyRd__r__lFyAA0cQ033_EB2336F1CBB87914F55D10FF4F9B475ALLVyqd__GzXEfU_TA_0;
        v163 = &v165[-8];
        AGGraphMutateAttribute();
      }

      v105 += 2;
      --v104;
    }

    while (v104);
  }

  else
  {
  }

  v112 = v170;
  v113 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v170);
  v114 = v179;
  if ((v113 & 1) == 0 && v174 == v179)
  {
    v115 = v181;
    v116 = v175;
    goto LABEL_66;
  }

  v117 = *&v213[16];

  v118 = AGCreateWeakAttribute();
  v119 = *&v213[12];
  v120 = AGCreateWeakAttribute();
  v121 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v175);
  LODWORD(v182) = v117;
  LODWORD(v176) = v119;
  if (v121 == v114)
  {
    v122 = 0;
    v123 = 0;
  }

  else
  {
    v124 = AGCreateWeakAttribute();
    v123 = v124 & 0xFFFFFFFF00000000;
    v122 = v124;
  }

  swift_beginAccess();
  v115 = v181;
  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(*(v181 + 120));
  v125 = AGCreateWeakAttribute();

  v126 = v123 | v122;
  v127 = v177;
  v128 = v178;
  LazyScrollable.init(position:transform:parent:children:cache:)(v118, v120, v126, v125, v190);
  if (v113)
  {
    type metadata accessor for [Scrollable](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_18DDA6EB0;
    v132 = type metadata accessor for LazyScrollable(0, v178, v127, v131);
    *(v130 + 56) = v132;
    *(v130 + 64) = &protocol witness table for LazyScrollable<A>;
    v133 = swift_allocObject();
    *(v130 + 32) = v133;
    (*(*(v132 - 8) + 16))(v133 + 16, v190, v132);
    *&v199[0] = v130;
    v115 = v181;
    v128 = v178;
    type metadata accessor for [Scrollable](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    LODWORD(v132) = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    LOBYTE(v185) = 0;
    PreferencesOutputs.subscript.setter(v132, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    swift_endAccess();
  }

  v114 = v179;
  if (v174 != v179)
  {
    v134 = type metadata accessor for LazyScrollable(0, v128, v127, v129);
    *(&v199[1] + 1) = v134;
    *&v199[2] = &protocol witness table for LazyScrollable<A>;
    *&v199[0] = swift_allocObject();
    v135 = *(v134 - 8);
    (*(v135 + 16))(*&v199[0] + 16, v190, v134);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
    v136 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(v199);
    swift_beginAccess();
    v112 = v170;
    *&v185 = v170;
    v137 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v138 = *(v112 + 16);
    if (v137 == v138)
    {
      goto LABEL_63;
    }

    if (v137 < v138)
    {
      v112 = v170;
      if (*(v170 + 16 * v137 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v185 = __PAIR64__(v136, v174);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();

        v157 = Attribute.init<A>(body:value:flags:update:)();
        v158 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(*(v181 + 120));
        v159 = v179;
        if ((v158 & 0x100000000) == 0)
        {
          v159 = v158;
        }

        *&v185 = __PAIR64__(v159, v157);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v160 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v185) = 0;
        PreferencesOutputs.subscript.setter(v160, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
        goto LABEL_64;
      }

LABEL_63:

LABEL_64:
      swift_endAccess();

      *(&v199[6] + 4) = 0u;
      *(&v199[5] + 8) = 0u;
      *(&v199[4] + 8) = 0u;
      *&v199[0] = __PAIR64__(v176, v182);
      *(&v199[0] + 1) = __PAIR64__(v136, v166);
      v139 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      outlined init with copy of _ViewInputs(&v210, &v185);
      v140 = specialized CachedEnvironment.attribute<A>(id:_:)(v139, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      LODWORD(v199[1]) = v140;
      outlined init with copy of _GraphInputs(&v210, &v185);
      v141 = outlined destroy of _ViewInputs(&v210);
      *(&v199[1] + 8) = v210;
      *(&v199[2] + 8) = v211;
      *(&v199[3] + 8) = v212;
      MEMORY[0x1EEE9AC00](v141);
      v163 = v199;
      swift_beginAccess();
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v112, v173, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
      swift_endAccess();
      v115 = v181;

      (*(v135 + 8))(v190, v134);
      outlined destroy of ScrollStateRequestTransform(v199);
      v116 = v175;
      v114 = v179;
      goto LABEL_66;
    }

    goto LABEL_84;
  }

  v142 = type metadata accessor for LazyScrollable(0, v128, v127, v129);
  (*(*(v142 - 8) + 8))(v190, v142);

  v116 = v175;
  v112 = v170;
LABEL_66:
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(v112))
  {
    swift_beginAccess();
    v143 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(*(v115 + 120));
    v144 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(*(v115 + 120));
    v145 = *(v115 + 148);
    if ((v143 & 0x100000000) != 0)
    {
      v146 = v114;
    }

    else
    {
      v146 = v143;
    }

    if ((v144 & 0x100000000) != 0)
    {
      v147 = v114;
    }

    else
    {
      v147 = v144;
    }

    LOBYTE(v185) = 1;
    v148 = *&v213[12];
    v149 = *&v213[24];
    outlined init with copy of _ViewInputs(&v210, v199);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v150 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v151 = specialized CachedEnvironment.attribute<A>(id:_:)(v150, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    outlined destroy of _ViewInputs(&v210);
    *(v199 + 4) = v148;
    LODWORD(v199[0]) = v166;
    HIDWORD(v199[0]) = v149;
    *&v199[1] = __PAIR64__(v151, v145);
    *(&v199[1] + 1) = __PAIR64__(v147, v146);
    LODWORD(v199[2]) = 0;
    *&v199[3] = 0;
    *(&v199[2] + 1) = 0;
    BYTE8(v199[3]) = v185;
    *&v199[4] = MEMORY[0x1E69E7CC8];
    v187 = *&v199[2];
    v188[0] = v199[3];
    *&v188[1] = MEMORY[0x1E69E7CC8];
    v185 = v199[0];
    v186 = v199[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [FocusableFillerBounds], &type metadata for FocusableFillerBounds, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider();
    v152 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of LazyFocusableFillerBoundsProvider(v199);
    swift_beginAccess();
    v189 = 0;
    PreferencesOutputs.subscript.setter(v152, &type metadata for FocusableFillerBounds.Key, &protocol witness table for FocusableFillerBounds.Key);
    swift_endAccess();
    v115 = v181;
  }

  v153 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(v116);
  v155 = v154;
  outlined destroy of weak AnyGestureResponder?(&v183);
  outlined destroy of _ViewInputs(&v210);
  v199[2] = v206;
  v199[3] = v207;
  v199[4] = v208;
  LODWORD(v199[5]) = v209;
  v199[0] = v204;
  v199[1] = v205;
  outlined destroy of _ViewInputs(v199);
  if ((v155 & 1) == 0)
  {
    swift_beginAccess();
    *(v115 + 192) = v153;
  }

  return v115;
}

uint64_t sub_18D1D8A08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Int, _ViewList_ID.Canonical>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for nearestScrollableAxes(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.nearestScrollableAxes = result;
  return result;
}

void lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements()
{
  if (!lazy protocol witness table cache variable for type LazyCollectedPlacements and conformance LazyCollectedPlacements)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyCollectedPlacements, &type metadata for LazyCollectedPlacements, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyCollectedPlacements and conformance LazyCollectedPlacements);
  }
}

void _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0Rzlufc12updateOutputL_3keyyqd__m_tAaORzAA13PreferenceKeyRd__r__lFyAA0cQ033_EB2336F1CBB87914F55D10FF4F9B475ALLVyqd__GzXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = v4[5];
  v7 = v4[6];
  v8 = type metadata accessor for LazyPreference(0, v5, v6, a4);
  LazyPreference.updateCache(_:)(v7, v8);
}

void lazy protocol witness table accessor for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems()
{
  if (!lazy protocol witness table cache variable for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyPreferencePrefetchItems, &unk_1F00A2498, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems);
  }
}

double LazyScrollable.init(position:transform:parent:children:cache:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  swift_weakInit();

  return result;
}

uint64_t type metadata completion function for LazyLayoutComputer.Engine(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

Swift::Void __swiftcall LazyLayoutComputer.updateValue()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v9 = type metadata accessor for LazyLayoutComputer.Engine(0, v3, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = CurrentAttribute;
    v31 = v12;
    v32 = v2;
    v33 = v10;
    v34 = v9;
    v15 = *(v1 + 4);
    v30 = v7;
    v16 = *(v1 + 12);
    Value = AGGraphGetValue();
    (*(v4 + 16))(v35, Value, v3);
    LODWORD(v47) = v14;
    *(&v47 + 4) = __PAIR64__(v15, v14);
    HIDWORD(v47) = v16;
    type metadata accessor for LazyLayoutViewCache();
    v18 = *AGGraphGetValue();

    v19 = AGGraphGetValue();
    v20 = *(*v19 + 320);
    v21 = *(*v19 + 328);
    v50 = 1;
    v49 = 1;
    v48 = 1;
    memset(v36, 0, 48);
    memset(&v46[7], 0, 48);
    memset(&v45[7], 0, 48);
    v36[48] = 1;
    *&v39[15] = 0;
    *v39 = *&v46[32];
    v38 = *&v46[16];
    v37 = *v46;
    v40 = 1;
    *&v43[15] = 0;
    *v43 = *&v45[32];
    v42 = *&v45[16];
    v41 = *v45;
    v44 = 1;
    v22 = v31;
    *&v23 = LazyLayoutComputer.Engine.init(layout:context:cache:maxSize:sizeCache:)(v35, &v47, v18, v36, v3, v30, v31, v20, v21).n128_u64[0];
    v24 = v32;
    swift_getWitnessTable(protocol conformance descriptor for LazyLayoutComputer<A>, v32, v23);
    v26 = v25;
    v27 = v22;
    v28 = v22;
    v29 = v34;
    StatefulRule<>.update<A>(to:)(v27, v24, v34, v26, &protocol witness table for LazyLayoutComputer<A>.Engine);
    (*(v33 + 8))(v28, v29);
  }
}

_DWORD *UpdateViewCache.updateValue()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  result = AGGraphGetValue();
  if (v2 != *result >> 1)
  {
    v4 = *(v1 + 8);
    if (!v4)
    {
      __break(1u);
      goto LABEL_9;
    }

    (*(*v4 + 384))();
    *(v1 + 16) = *AGGraphGetValue() >> 1;
  }

  type metadata accessor for LazyLayoutViewCache();
  result = AGGraphGetOutputValue();
  if (result)
  {
    return result;
  }

  if (!*(v1 + 8))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return AGGraphSetOutputValue();
}

__n128 LazyLayoutComputer.Engine.init(layout:context:cache:maxSize:sizeCache:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v18 = type metadata accessor for LazyLayoutComputer.Engine(0, a5, a6, v17);
  *(a7 + v18[9]) = *a2;
  *(a7 + v18[10]) = a3;
  v19 = (a7 + v18[11]);
  *v19 = a8;
  v19[1] = a9;
  v20 = a7 + v18[12];
  v21 = *(a4 + 16);
  *v20 = *a4;
  *(v20 + 16) = v21;
  v22 = *(a4 + 80);
  *(v20 + 64) = *(a4 + 64);
  *(v20 + 80) = v22;
  v23 = *(a4 + 48);
  *(v20 + 32) = *(a4 + 32);
  *(v20 + 48) = v23;
  *(v20 + 160) = *(a4 + 160);
  v24 = *(a4 + 144);
  *(v20 + 128) = *(a4 + 128);
  *(v20 + 144) = v24;
  result = *(a4 + 96);
  v26 = *(a4 + 112);
  *(v20 + 96) = result;
  *(v20 + 112) = v26;
  return result;
}

uint64_t initializeWithCopy for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;

  return a1;
}

double destroy for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

double partial apply for specialized closure #1 in SizeAndSpacingContext.update<A>(_:)()
{
  return specialized closure #1 in SizeAndSpacingContext.update<A>(_:)(*(v0 + 16), *(v0 + 24));
}

{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v4);
  result = *v4;
  v3 = v4[1];
  *v1 = v4[0];
  *(v1 + 16) = v3;
  *(v1 + 32) = 0;
  return result;
}

{
  return specialized closure #1 in SizeAndSpacingContext.update<A>(_:)(*(v0 + 16), *(v0 + 24));
}

uint64_t closure #1 in LazyLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

double specialized closure #1 in SizeAndSpacingContext.update<A>(_:)(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = 0;
  return result;
}

Swift::Int LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v66 = a7;
  v67 = a5;
  LODWORD(v65) = a4;
  v16 = type metadata accessor for _LazyStack_Cache(0, a8, a9, a4);
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v58[-v17];
  v19 = type metadata accessor for MinorProperties(255, a8, a9, v18);
  v60 = type metadata accessor for Optional();
  v20 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v22 = &v58[-v21];
  v70 = v19;
  v69 = *(v19 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v68 = &v58[-v25];
  v59 = *(a6 + 12);
  v26 = (*(a9 + 32))(a8, a9, v24);
  v63 = v26;
  if (v26)
  {
    a3 = a1;
  }

  v27 = v10;
  if ((v26 & 1) == 0)
  {
    a2 = v65;
  }

  v28 = *&a3;
  if (a2)
  {
    v28 = (*(a9 + 64))(v67, a8, a9);
  }

  v74[0] = v28;
  v29 = v66;
  v65 = v27;
  LazyStack<>.resolveMinorProperties(minorSize:cache:)(v74, a8, a9, v22);
  v31 = v69;
  v30 = v70;
  if ((*(v69 + 48))(v22, 1, v70) == 1)
  {
    v32 = (*(v20 + 8))(v22, v60);
    MEMORY[0x1EEE9AC00](v32);
    *&v58[-16] = v74;
    return specialized LazyStack<>.log(_:)(partial apply for implicit closure #2 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:), &v58[-32], a8);
  }

  v60 = a3;
  (*(v31 + 32))(v68, v22, v30);
  v35 = v61;
  v34 = v62;
  v36 = v64;
  (*(v61 + 16))(v64, v29, v62);
  v37 = 0.0;
  v38 = 0.0;
  if (v59 != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v37 = *Value;
    v38 = Value[1];
  }

  if (v63)
  {
    v37 = v38;
  }

  if (specialized LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)(0, 1, *&v37, 0, v36, a8, a9))
  {
    _LazyStack_Cache.resetEstimates()(v34);
  }

  v72 = 0.0;
  v73 = 0;
  v40 = v68;
  LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v72, &v73, v68, v67, v36, a8, a9);
  *&v41 = COERCE_DOUBLE(EstimationCache.average.getter());
  v43 = v42;
  v44 = *&v41;
  v46 = v45;
  v47 = *v40;
  v71 = 2 * v47;
  result = _ViewList_Node.estimatedCount(style:)(&v71);
  if (__OFSUB__(result, v73))
  {
    __break(1u);
    goto LABEL_37;
  }

  v48 = (result - v73) & ~((result - v73) >> 63);
  if (v47 != 1)
  {
    v49 = __OFADD__(v48, v47);
    v50 = v48 + v47;
    if (!v49)
    {
      if (v47)
      {
        v51 = v50 - 1;
        if (v51 != 0x8000000000000000 || v47 != -1)
        {
          v48 = v51 / v47;
          goto LABEL_24;
        }

LABEL_39:
        __break(1u);
        return result;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_24:
  if (v46)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v44;
  }

  v54 = v72 + (v43 + v53) * v48;
  if (v73)
  {
    v55 = 1;
  }

  else
  {
    v55 = v48 == 0;
  }

  v56 = v55;
  v57 = v54 - v44;
  if ((v56 | v46))
  {
    v57 = v54;
  }

  v72 = v57;
  MEMORY[0x1EEE9AC00](result);
  *&v58[-16] = v74;
  *&v58[-8] = &v72;
  specialized LazyStack<>.log(_:)(partial apply for implicit closure #4 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:), &v58[-32], a8);
  (*(v35 + 8))(v64, v34);
  return (*(v69 + 8))();
}

uint64_t closure #1 in closure #1 in LazyLayoutComputer.Engine.sizeThatFits(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, double *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25[1] = a7;
  v25[0] = a5;
  v25[2] = a4;
  v28 = a2;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v25 - v18;
  LazyLayoutViewCache.subviews(context:)(a2, v30);
  (*(*a1 + 400))(AssociatedTypeWitness, AssociatedTypeWitness);
  v20 = *(a11 + 48);
  v27 = a6 & 1;
  v26 = a8 & 1;
  v21 = v20(v25[0]);
  v23 = v22;
  (*(v17 + 8))(v19, AssociatedTypeWitness);
  result = outlined destroy of _LazyLayout_Subviews(v30);
  *a9 = v21;
  *(a9 + 1) = v23;
  return result;
}

double _LazyLayoutViewCache.copyCacheState<A>(type:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9[2] = *(*v2 + 440);
  v9[3] = a2;
  v9[4] = *(v4 + 448);
  v5 = *(v4 + 464);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v2 + v5, partial apply for closure #1 in _LazyLayoutViewCache.copyCacheState<A>(type:), v9, AssociatedTypeWitness, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v7);
  swift_endAccess();
  return result;
}

uint64_t ForEachState.EditsBuilder.finalize()(uint64_t a1)
{
  v100[6] = *MEMORY[0x1E69E9840];
  v93 = *(a1 + 40);
  v3 = *(*(v93 + 8) + 8);
  v4 = *(a1 + 16);
  v96 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = &v68 - v5;
  v6 = *(a1 + 24);
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v3;
  v92 = v4;
  v84 = swift_getAssociatedTypeWitness();
  v71 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v97 = &v68 - v9;
  v90 = type metadata accessor for IndexSet.Index();
  v80 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>(0);
  v76 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexSetBuilder(0);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexSet();
  v70 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v1 + *(a1 + 76));
  v19 = v18[1];
  v99[0] = *v18;
  v99[1] = v19;
  v20 = *(a1 + 48);
  swift_bridgeObjectRetain_n();

  v94 = v20;
  v95 = v6;
  v21 = Set.count.getter();

  v22 = v1;
  v23 = v1 + *(a1 + 72);
  v24 = IndexSet.count.getter();
  v25 = 0;
  v26 = v14;
  v27 = v23 + *(v14 + 20);
  if ((*(v27 + 16) & 1) == 0)
  {
    v29 = *v27;
    v28 = *(v23 + *(v14 + 20) + 8);
    v30 = __OFSUB__(v28, v29);
    v25 = v28 - v29;
    if (v30)
    {
LABEL_16:
      __break(1u);
    }
  }

  v30 = __OFADD__(v24, v25);
  v31 = v24 + v25;
  if (v30)
  {
    __break(1u);
    goto LABEL_15;
  }

  v32 = v21 + v31;
  if (__OFADD__(v21, v31))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for Set();
  Set.reserveCapacity(_:)(v32);
  v33 = v91;
  outlined init with copy of IndexSetBuilder(v23, v91);
  if ((*(v33 + *(v26 + 20) + 16) & 1) == 0)
  {
    IndexSet.insert(integersIn:)();
  }

  v34 = v69;
  (*(v70 + 32))(v69, v33, v16);
  if (*(v22 + *(a1 + 68)))
  {

    v35 = KeyPath.makeGetFunction()();
    v98 = 0;
    MEMORY[0x1EEE9AC00](v35);
    v36 = v95;
    *(&v68 - 12) = v92;
    *(&v68 - 11) = v36;
    v82 = *(a1 + 32);
    v37 = v93;
    *(&v68 - 10) = v82;
    *(&v68 - 9) = v37;
    v38 = *(a1 + 56);
    *(&v68 - 8) = v94;
    *(&v68 - 7) = v38;
    v81 = v38;
    *(&v68 - 6) = &v98;
    *(&v68 - 5) = v34;
    v83 = v39;
    *(&v68 - 4) = v39;
    *(&v68 - 3) = v40;
    v91 = v40;
    v66 = v99;
    v41 = v34;
    dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
    if ((v98 & 1) == 0)
    {
      v79 = v22;
      IndexSet.makeIterator()();
      v42 = *(v76 + 36);
      _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      ++v80;
      v74 = (v73 + 2);
      ++v73;
      ++v72;
      ++v71;
      v78 = v16;
      v77 = v13;
      v76 = v42;
      v75 = v43;
      v44 = v94;
      while (1)
      {
        v45 = v89;
        dispatch thunk of Collection.endIndex.getter();
        _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
        v46 = v90;
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v80)(v45, v46);
        if (v47)
        {
          break;
        }

        v48 = dispatch thunk of Collection.subscript.read();
        v50 = *v49;
        v48(v100, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v51 = v92;
        Collection.index(atOffset:)(v50, v92, v88);
        v52 = dispatch thunk of Collection.subscript.read();
        v53 = v86;
        v54 = AssociatedTypeWitness;
        (*v74)(v86);
        v55 = v52(v100, 0);
        v96 = &v68;
        MEMORY[0x1EEE9AC00](v55);
        v56 = v95;
        *(&v68 - 8) = v51;
        *(&v68 - 7) = v56;
        v57 = v82;
        v58 = v93;
        *(&v68 - 6) = v82;
        *(&v68 - 5) = v58;
        v59 = v81;
        *(&v68 - 4) = v44;
        *(&v68 - 3) = v59;
        v66 = v83;
        v67 = v91;
        v60 = v85;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v53, thunk for @callee_guaranteed (@unowned UnsafePointer<A.Sequence.Element>) -> (@out B)partial apply, (&v68 - 10), v54, MEMORY[0x1E69E73E0], v56, MEMORY[0x1E69E7410], v61);
        (*v73)(v53, v54);
        v100[0] = v51;
        v100[1] = v56;
        v100[2] = v57;
        v100[3] = v58;
        v100[4] = v44;
        v100[5] = v59;
        v62 = type metadata accessor for ForEachState.Edits(0, v100);
        ForEachState.Edits.appendInsert(id:)(v60, v62);
        v63 = v60;
        v13 = v77;
        (*v72)(v63, v56);
        v16 = v78;
        (*v71)(v97, v84);
      }

      outlined destroy of IndexingIterator<IndexSet>(v13);
      v41 = v69;
    }

    v64 = v99[0];

    (*(v70 + 8))(v41, v16);

    return v64;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}