void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void type metadata accessor for Scrollable?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _OpacityEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double ViewGraphRootValueUpdater._sizeThatFits(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for CGSize(0);
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(partial apply for closure #1 in ViewGraphRootValueUpdater._sizeThatFits(_:), a5, v8, a6, &v10);
  result = v10;
  if (v11)
  {
    return 0.0;
  }

  return result;
}

uint64_t AnyShapeStyle.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = *(v6 + 16);
  v17(v22 - v18, a1, a2, v16);
  if (swift_dynamicCast() & 1) != 0 || ((v17)(v14, a1, a2), (swift_dynamicCast()) || ((v17)(v11, a1, a2), (swift_dynamicCast()))
  {
    (*(v6 + 8))(a1, a2);
    return v22[1];
  }

  else
  {
    type metadata accessor for ShapeStyleBox(0, a2, a3, v19);
    (v17)(v8, a1, a2);
    v21 = AnchorBox.__allocating_init(_:)(v8);
    (*(v6 + 8))(a1, a2);
    return v21;
  }
}

uint64_t TrackedValue.unwrap<A>()@<X0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  if (*(v10 + 64) == *(*(a2 - 8) + 64))
  {
    v11 = *(*(a2 - 8) + 16);

    return v11(a5, v5, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t PreferenceValues._index(of:)(unint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    while (1)
    {
      v6 = v5 + (v3 >> 1);
      if (__OFADD__(v5, v3 >> 1))
      {
        break;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v6 >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      outlined init with copy of PreferenceValues.Entry(v2 + 32 + 56 * v6, v8);
      v7 = v8[0];
      result = outlined destroy of PreferenceValues.Entry(v8);
      if (v7 >= v4)
      {
        v3 >>= 1;
      }

      else
      {
        v3 += ~(v3 >> 1);
      }

      if (v7 < v4)
      {
        v5 = v6 + 1;
      }

      if (v3 <= 0)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t Attribute.syncMainIfReferences<A>(do:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a1;
  v31 = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v22 = v21;
  (*(v16 + 16))(v19, Value, a4);
  if ((v22 & 2) == 0)
  {
    v30(v19);
    return (*(v16 + 8))(v19, a4);
  }

  v29 = a6;
  v23 = *(a5 - 8);
  v24 = (*(v23 + 56))(v15, 1, 1, a5);
  MEMORY[0x1EEE9AC00](v24);
  *(&v28 - 6) = a4;
  *(&v28 - 5) = a5;
  v26 = v30;
  v25 = v31;
  *(&v28 - 4) = v15;
  *(&v28 - 3) = v26;
  *(&v28 - 2) = v25;
  *(&v28 - 1) = v19;
  specialized static Update.syncMain(_:)(partial apply for closure #1 in Attribute.syncMainIfReferences<A>(do:), (&v28 - 8));
  (*(v10 + 16))(v12, v15, v9);
  result = (*(v23 + 48))(v12, 1, a5);
  if (result != 1)
  {
    (*(v23 + 32))(v29, v12, a5);
    (*(v10 + 8))(v15, v9);
    return (*(v16 + 8))(v19, a4);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in Attribute.syncMainIfReferences<A>(do:)(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  a2(a4, v12);
  (*(*(a6 - 8) + 56))(v14, 0, 1, a6);
  return (*(v11 + 40))(a1, v14, v10);
}

uint64_t outlined destroy of ObservationTracking._AccessList?(uint64_t a1)
{
  type metadata accessor for ObservationTracking._AccessList?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for _AnyEquatableBox(uint64_t a1)
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

void lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity()
{
  if (!lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewIdentity, &type metadata for ViewIdentity, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewIdentity, &type metadata for ViewIdentity, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016PreferenceBridgeV033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt0B5(v4, v13[0]);
  if (!v7 || (outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value((v7 + 9), v13), v8 = AGCompareValues(), result = outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v13), !v8))
  {
    outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(a2, v13);
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>(0);
    v11 = swift_allocObject();
    outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(v13, v11 + 72);

    value = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10).value;
    outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v13);
    *a1 = value;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t type metadata completion function for PlatformViewChild(uint64_t a1)
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

uint64_t type metadata completion function for ViewLeafView(uint64_t a1)
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

uint64_t static CoreViewRepresentable._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v162 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v84 - v11;
  v14 = type metadata accessor for PlatformViewChild(0, a3, a4, v13);
  v98 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v84 - v15;
  v16 = *(a2 + 16);
  v156 = *a2;
  v157 = v16;
  v17 = *(a2 + 48);
  v158 = *(a2 + 32);
  v100 = *a1;
  v159 = v17;
  v160 = *(a2 + 64);
  v161 = *(a2 + 80);
  v18 = v156;
  v19 = WORD2(v158);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v18, v150);
  if (v20)
  {
    if ((*(v20 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      v85 = a5;
      v92 = v12;
      v153 = v159;
      v154 = v160;
      v155 = v161;
      v150 = v156;
      v151 = v157;
      v152 = v158;
      type metadata accessor for PreferenceBridge();
      swift_allocObject();
      outlined init with copy of _ViewInputs(&v156, &v144);
      v99 = PreferenceBridge.init()();
      (*(a4 + 48))(&v144, a3, a4);
      v93 = DWORD1(v145);
      v94 = v145;
      LODWORD(v131) = v100;
      v95 = *(&v144 + 1);
      v96 = v144;
      outlined copy of DynamicPropertyCache.Fields.Layout(v144, *(&v144 + 1), v145);
      v21 = _DynamicPropertyBuffer.init<A>(fields:container:inputs:)(&v144, &v131, &v150, a3, &v137);
      v22 = v137;
      v23 = DWORD2(v137);
      v24 = HIDWORD(v137);
      v143 = 0uLL;
      (*(a4 + 56))(&v143, a3, a4, v21);
      v25 = v151;
      swift_beginAccess();
      v87 = *(v25 + 16);
      v86 = *(&v151 + 1);
      v26 = v150;
      BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
      v27 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v26, v144);
      v91 = v14;
      if (v27)
      {
        v28 = *(v27 + 72);
      }

      else
      {
        v28 = 0;
      }

      v43 = DWORD2(v160);
      v44 = HIDWORD(v159);
      v45 = v160;
      LODWORD(v131) = v28;
      *&v144 = v22;
      v89 = v24;
      v90 = v23;
      *(&v144 + 1) = __PAIR64__(v24, v23);
      v88 = v22;
      v46 = v143;
      v137 = v143;
      v101 = HIDWORD(v143);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v48 = v92;
      (*(*(AssociatedTypeWitness - 8) + 56))(v92, 1, 1, AssociatedTypeWitness);
      v80 = v48;
      v49 = v97;
      v50 = PlatformViewChild.init(view:environment:transaction:phase:position:size:transform:parentID:bridge:links:features:coordinator:platformView:resetSeed:)(v100, v87, SHIDWORD(v86), v86, v45, v43, v44, &v131, v97, v99, &v144, &v137, v80, 0, 0, a3, a4);
      v92 = &v84;
      MEMORY[0x1EEE9AC00](v50);
      v52 = type metadata accessor for ViewLeafView(0, a3, a4, v51);
      v53 = v91;
      v81[0] = v52;
      v81[1] = v91;
      swift_getWitnessTable(protocol conformance descriptor for PlatformViewChild<A>, v91);
      v82 = v54;
      v55 = type metadata accessor for Attribute();

      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v49, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, &v79, v53, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);
      (*(v98 + 8))(v49, v53);
      v57 = v144;
      *&v137 = v88;
      *(&v137 + 1) = __PAIR64__(v89, v90);
      LODWORD(v131) = v100;
      *&v144 = v96;
      *(&v144 + 1) = v95;
      LOBYTE(v145) = v94;
      DWORD1(v145) = v93;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v131, &v144, a3);
      outlined consume of DynamicPropertyCache.Fields.Layout(v144, *(&v144 + 1), v145);
      v98 = v52;
      _GraphValue.init(_:)(v57, &v144);
      v100 = v144;
      CoreViewRepresentableFeatureProxy.init(base:)(v57, &v144);
      v58 = v144;
      if ((BYTE4(v152) & 0x20) != 0)
      {
        _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v153);
      }

      AGGraphSetFlags();
      v146 = v152;
      v147 = v153;
      v148 = v154;
      v149 = v155;
      v144 = v150;
      v145 = v151;
      v139 = v152;
      v140 = v153;
      v141 = v154;
      v142 = v155;
      v137 = v150;
      v138 = v151;
      result = outlined init with copy of _ViewInputs(&v144, &v131);
      if (v101)
      {
        if (!v46)
        {
          __break(1u);
          goto LABEL_51;
        }

        v59 = 0;
        v60 = v101 - 1;
        do
        {
          v62 = v46 + v59;
          if (v60)
          {
            v59 += *(v62 + 8);
          }

          else
          {
            v59 = 0;
          }

          v61 = v60 | v59;
          *&v131 = v62;
          LODWORD(v129[0]) = v58;
          CoreViewRepresentableFeatureBuffer.Element.modifyViewInputs<A>(inputs:proxy:)(&v137, v129, a3, a4);
          --v60;
        }

        while (v61);
      }

      v63 = v140;
      *&v131 = v140;
      v64 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);

      v65 = *(v63 + 16);
      if (v64 != v65)
      {
        if (v64 >= v65)
        {
          __break(1u);
        }

        if (*(v63 + 16 * v64 + 32) == &type metadata for ViewRespondersKey)
        {
          specialized Array.remove(at:)(v64);
        }
      }

      v133 = v139;
      v134 = v140;
      v135 = v141;
      v136 = v142;
      v131 = v137;
      v132 = v138;
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v123 = v133;
      v124 = v134;
      v125 = v135;
      v126 = v136;
      v121 = v131;
      v122 = v132;
      v128 = v136;
      v67 = v133;
      LODWORD(v123) = 0;
      LODWORD(v113[0]) = v100;
      v127[0] = v131;
      v127[1] = v132;
      v127[3] = v134;
      v127[4] = v135;
      v127[2] = v123;
      v117 = v123;
      v118 = v134;
      v119 = v135;
      v120 = v136;
      v115 = v131;
      v116 = v132;
      outlined init with copy of _ViewInputs(&v131, v129);
      outlined init with copy of _ViewInputs(v127, v129);
      static ViewLeafView._makeView(view:inputs:)(v113, &v115, a3, a4, v102);
      v129[2] = v117;
      v129[3] = v118;
      v129[4] = v119;
      v130 = v120;
      v129[0] = v115;
      v129[1] = v116;
      outlined destroy of _ViewInputs(v129);
      LODWORD(v123) = v67;
      if (ShouldRecordTree)
      {
        specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v102, &v121);
        AGSubgraphEndTreeElement();
      }

      v117 = v123;
      v118 = v124;
      v119 = v125;
      v120 = v126;
      v115 = v121;
      v116 = v122;
      result = outlined destroy of _ViewInputs(&v115);
      if (!v101)
      {
        goto LABEL_39;
      }

      if (v46)
      {
        v68 = 0;
        v69 = v101 - 1;
        do
        {
          v71 = v46 + v68;
          if (v69)
          {
            v68 += *(v71 + 8);
          }

          else
          {
            v68 = 0;
          }

          v70 = v69 | v68;
          *&v113[0] = v71;
          LODWORD(v111[0]) = v58;
          CoreViewRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(outputs:proxy:)(v102, v111, a3, a4);
          *&v113[0] = v71;
          LODWORD(v111[0]) = v58;
          CoreViewRepresentableFeatureBuffer.Element.modifyBridgedInputs<A>(inputs:proxy:)(&v150, v111, a3, a4);
          --v69;
        }

        while (v70);
LABEL_39:
        v111[2] = v152;
        v111[3] = v153;
        v111[4] = v154;
        v112 = v155;
        v111[0] = v150;
        v111[1] = v151;
        v108 = v153;
        v109 = v154;
        v110 = v155;
        v105 = v150;
        v106 = v151;
        v107 = v152;
        outlined init with copy of _ViewInputs(v111, v113);
        PreferenceBridge.wrapOutputs(_:inputs:)(v102, &v105);
        v113[2] = v107;
        v113[3] = v108;
        v113[4] = v109;
        v114 = v110;
        v113[0] = v105;
        v113[1] = v106;
        result = outlined destroy of _ViewInputs(v113);
        v72 = v85;
        if (!v101)
        {
LABEL_46:

          v103[2] = v139;
          v103[3] = v140;
          v103[4] = v141;
          v104 = v142;
          v103[0] = v137;
          v103[1] = v138;
          outlined destroy of _ViewInputs(v103);
          v108 = v153;
          v109 = v154;
          v110 = v155;
          v105 = v150;
          v106 = v151;
          v107 = v152;
          result = outlined destroy of _ViewInputs(&v105);
          *v72 = v102[0];
          v72[1] = v102[1];
          return result;
        }

        if (v46)
        {
          v73 = 0;
          v74 = v101 - 1;
          do
          {
            v76 = v46 + v73;
            if (v74)
            {
              v73 += *(v76 + 8);
            }

            else
            {
              v73 = 0;
            }

            v75 = v74 | v73;
            *&v105 = v76;
            LODWORD(v103[0]) = v58;
            CoreViewRepresentableFeatureBuffer.Element.modifyWrappedOutputs<A>(outputs:proxy:)(v102, v103, a3, a4);
            --v74;
          }

          while (v75);
          goto LABEL_46;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }
  }

  v29 = a5;
  v30 = MEMORY[0x1E69E7CC0];
  *&v137 = MEMORY[0x1E69E7CC0];
  v31 = *MEMORY[0x1E698D3F8];
  DWORD2(v137) = 0;
  HIDWORD(v137) = v31;
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v159);
  if ((result & 1) == 0)
  {
    v42 = 0;
    goto LABEL_13;
  }

  v33 = ++lastIdentity;
  if ((v19 & 0x100) == 0)
  {
    v34 = v33;
LABEL_11:
    v153 = v159;
    v154 = v160;
    v155 = v161;
    v150 = v156;
    v151 = v157;
    v152 = v158;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v150);
    v153 = v159;
    v154 = v160;
    v155 = v161;
    v150 = v156;
    v151 = v157;
    v152 = v158;
    v36 = CachedEnvironment.animatedSize(for:)(&v150);
    v37 = swift_endAccess();
    *&v150 = __PAIR64__(v100, v34);
    *(&v150 + 1) = __PAIR64__(v36, v35);
    LODWORD(v151) = DWORD1(v160);
    MEMORY[0x1EEE9AC00](v37);
    v82 = type metadata accessor for PlatformArchivedDisplayList(0, a3, a4, v38);
    swift_getWitnessTable(protocol conformance descriptor for PlatformArchivedDisplayList<A>, v82);
    v83 = v39;
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v150, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, v81, v82, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
    LOBYTE(v150) = 0;
    result = PreferencesOutputs.subscript.setter(v144, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v137;
    v42 = DWORD2(v137);
    v31 = HIDWORD(v137);
LABEL_13:
    *v29 = v30;
    *(v29 + 2) = v42;
    *(v29 + 3) = v31;
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v18, &v150);
  result = AGWeakAttributeGetAttribute();
  if (result != v31)
  {
    v34 = v33;
    LODWORD(v144) = v33;
    v77 = Attribute<A>.subscript.modify(&v150, result);
    v78 = _DisplayList_StableIdentityScope.pushIdentity(_:)(&v144);
    (v77)(&v150, 0, v78);
    goto LABEL_11;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t PreferenceBridge.init()()
{
  swift_weakInit();
  *(v0 + 24) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v1;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t PlatformViewChild.init(view:environment:transaction:phase:position:size:transform:parentID:bridge:links:features:coordinator:platformView:resetSeed:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, double *a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17)
{
  v18 = *a8;
  v19 = *a11;
  v20 = *a12;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = v18;
  *(a9 + 32) = a10;
  *(a9 + 40) = v19;
  *(a9 + 48) = a11[1];
  *(a9 + 56) = v20;
  *(a9 + 64) = a12[1];
  v21 = type metadata accessor for PlatformViewChild(0, a16, a17, a4);
  v22 = v21[19];
  swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for Optional();
  (*(*(v23 - 8) + 32))(a9 + v22, a13, v23);
  *(a9 + v21[20]) = a14;
  *(a9 + v21[21]) = a15;
  v24 = v21[22];
  type metadata accessor for PropertyList.Tracker();
  v25 = swift_allocObject();
  _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  result = swift_allocObject();
  *(result + 16) = 0;
  v27 = MEMORY[0x1E69E7CC8];
  *(result + 24) = 0;
  *(result + 32) = v27;
  v28 = MEMORY[0x1E69E7CC0];
  *(result + 40) = v27;
  *(result + 48) = v28;
  *(result + 56) = 0;
  *(v25 + 16) = result;
  *(a9 + v24) = v25;
  return result;
}

uint64_t static ViewLeafView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v62 = a3;
  v64 = 0;
  v87 = *MEMORY[0x1E69E9840];
  v61 = *a1;
  v6 = a2[1];
  v58 = *a2;
  v57 = v6;
  v7 = a2[2];
  v69 = a2[3];
  v8 = *(a2 + 9);
  v70 = *(a2 + 8);
  v9 = a2[6];
  v56 = a2[5];
  v10 = *(a2 + 14);
  v59 = *(a2 + 15);
  v11 = *(a2 + 16);
  v12 = *(a2 + 17);
  v13 = *(a2 + 18);
  v14 = *(a2 + 19);
  v60 = *(a2 + 20);
  v66 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  v67 = 0;
  v68 = v15;
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v9);
  if ((result & 1) == 0)
  {
    v30 = a5;
    if ((v8 & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v54 = v13;
  v53 = ++lastIdentity;
  v17 = v7;
  v52 = a5;
  v55 = v14;
  v51 = v10;
  v50 = v11;
  if ((v8 & 0x100) == 0)
  {
    v18 = v9;
    v19 = v59;
    goto LABEL_4;
  }

  v49 = v7;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v58, &v73);
  result = AGWeakAttributeGetAttribute();
  if (result != v15)
  {
    v18 = v9;
    v19 = v59;
    v71[0] = v53;
    v44 = Attribute<A>.subscript.modify(&v73, result);
    v45 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v71);
    (v44)(&v73, 0, v45);
    v17 = v49;
LABEL_4:
    *&v73 = v58;
    *(&v73 + 1) = v57;
    v74 = v17;
    v75 = v69;
    v76 = v70;
    v77 = v8;
    v78 = v56;
    v79 = v18;
    v80 = v51;
    v81 = v19;
    v82 = v50;
    v83 = v12;
    v20 = v12;
    v21 = v17;
    v84 = v54;
    v85 = v55;
    v86 = v60;
    swift_beginAccess();
    LODWORD(v49) = CachedEnvironment.animatedPosition(for:)(&v73);
    *&v73 = v58;
    *(&v73 + 1) = v57;
    v74 = v21;
    v75 = v69;
    v76 = v70;
    v77 = v8;
    v78 = v56;
    v79 = v18;
    v80 = v51;
    v81 = v59;
    v82 = v50;
    v83 = v20;
    v84 = v54;
    v85 = v55;
    v86 = v60;
    v22 = CachedEnvironment.animatedSize(for:)(&v73);
    v23 = swift_endAccess();
    v7 = v21;
    v24 = *(v21 + 16);
    *&v73 = __PAIR64__(v61, v53);
    *(&v73 + 1) = __PAIR64__(v20, v49);
    v74 = __PAIR64__(v59, v22);
    v75 = __PAIR64__(v55, v24);
    LOWORD(v76) = 0;
    MEMORY[0x1EEE9AC00](v23);
    v47 = type metadata accessor for PlatformViewDisplayList(0, v62, v63, v25);
    swift_getWitnessTable(protocol conformance descriptor for PlatformViewDisplayList<A>, v47);
    v48 = v26;
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    v27 = v64;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v73, closure #1 in Attribute.init<A>(_:)partial apply, v46, v47, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
    v64 = v27;
    LOBYTE(v73) = 0;
    result = PreferencesOutputs.subscript.setter(v71[0], &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v52;
    if ((v8 & 2) != 0)
    {
LABEL_5:
      swift_beginAccess();
      v31 = *(v7 + 16);
      type metadata accessor for PropertyList.Tracker();
      v32 = swift_allocObject();
      _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      v34 = MEMORY[0x1E69E7CC8];
      *(v33 + 24) = 0;
      *(v33 + 32) = v34;
      *(v33 + 40) = v34;
      *(v33 + 48) = MEMORY[0x1E69E7CC0];
      *(v33 + 56) = 0;
      *(v32 + 16) = v33;
      v71[0] = v31;
      v72 = v32;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment();
      v35 = Attribute.init<A>(body:value:flags:update:)();

      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      v71[0] = v61;
      v71[1] = v35;
      swift_weakInit();

      MEMORY[0x1EEE9AC00](v36);
      v38 = type metadata accessor for InvalidatableLeafLayoutComputer(0, v62, v63, v37);
      v47 = v38;
      swift_getWitnessTable(protocol conformance descriptor for InvalidatableLeafLayoutComputer<A>, v38);
      v48 = v39;
      _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v71, closure #1 in Attribute.init<A>(_:)partial apply, v46, v38, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
      result = (*(*(v38 - 8) + 8))(v71, v38);
      v42 = v65;
      v43 = v67 | 0x80;
LABEL_8:
      *v30 = v66;
      *(v30 + 8) = v43;
      *(v30 + 12) = v42;
      return result;
    }

LABEL_7:
    v43 = v67;
    v42 = v68;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy34_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void lazy protocol witness table accessor for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment()
{
  if (!lazy protocol witness table cache variable for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for LeafLayoutEnvironment, &unk_1F0055808, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment);
  }
}

void *initializeWithCopy for InvalidatableLeafLayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  return a1;
}

uint64_t PreferenceBridge.wrapOutputs(_:inputs:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v48[6] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[6];
  v44 = *(a2 + 14);
  swift_beginAccess();
  v3[6] = v5;

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    v43 = *MEMORY[0x1E698D3F8];

    v9 = 0;
    v41 = a1;
    v42 = v6;
    v39 = v6 + 32;
    v40 = v7;
    do
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
      }

      v13 = *(v8 + 16 * v9);
      v14 = *(v8 + 16 * v9);
      v15 = *a1;
      if (v14 == &type metadata for HostPreferencesKey)
      {
        v45 = *(v8 + 16 * v9);
        v10 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(v15);
        v11 = v43;
        if ((v10 & 0x100000000) == 0)
        {
          v11 = v10;
        }

        v48[0] = __PAIR64__(v11, v44);
        v48[1] = MEMORY[0x1E69E7CC0];
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type HostPreferencesCombiner and conformance HostPreferencesCombiner();
        v12 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v48[0]) = 0;
        PreferencesOutputs.subscript.setter(v12, &type metadata for HostPreferencesKey, *(&v45 + 1));
        swift_beginAccess();
        v3[7] = AGCreateWeakAttribute();
        swift_endAccess();
        swift_beginAccess();
        v3[8] = AGCreateWeakAttribute();
        swift_endAccess();
      }

      else
      {
        v16 = (v15 + 32);
        v17 = *(v15 + 16) + 1;
        while (--v17)
        {
          v18 = *v16;
          v16 += 3;
          if (v18 == v14)
          {
            goto LABEL_6;
          }
        }

        v45 = *(v8 + 16 * v9);
        v19 = *(&v13 + 1);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v21 = type metadata accessor for Attribute();
        v22 = static Array._allocateUninitialized(_:)();
        v23 = PreferenceCombiner.init(attributes:)(v22, v14, v19, v48);
        v47 = v48[0];
        MEMORY[0x1EEE9AC00](v23);
        v38[2] = AssociatedTypeWitness;
        v25 = type metadata accessor for PreferenceCombiner(0, v14, v19, v24);
        v38[3] = v25;
        swift_getWitnessTable(protocol conformance descriptor for PreferenceCombiner<A>, v25);
        v38[4] = v26;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v47, partial apply for closure #1 in Attribute.init<A>(_:), v38, v25, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v27);

        v28 = v46;
        swift_beginAccess();
        PreferenceKeys.add(_:)(v14, v19);
        swift_endAccess();
        v29 = AGCreateWeakAttribute();
        swift_beginAccess();
        v30 = v3[9];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[9] = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
          v3[9] = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        v34 = v45;
        if (v33 >= v32 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v30);
          v34 = v45;
          v30 = v36;
        }

        *(v30 + 2) = v33 + 1;
        v35 = &v30[24 * v33];
        *(v35 + 2) = v34;
        *(v35 + 6) = v29;
        v3[9] = v30;
        swift_endAccess();
        LOBYTE(v48[0]) = 0;
        a1 = v41;
        PreferencesOutputs.subscript.setter(v28, v14, v19);
        v6 = v42;
        v8 = v39;
        v7 = v40;
      }

LABEL_6:
      ++v9;
    }

    while (v9 != v7);
  }

  else
  {
  }
}

void lazy protocol witness table accessor for type HostPreferencesCombiner and conformance HostPreferencesCombiner()
{
  if (!lazy protocol witness table cache variable for type HostPreferencesCombiner and conformance HostPreferencesCombiner)
  {
    swift_getWitnessTable("9%\raȲ\a", &type metadata for HostPreferencesCombiner, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HostPreferencesCombiner and conformance HostPreferencesCombiner);
  }
}

uint64_t static ViewModifier.makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  static DynamicPropertyCache.fields(of:)(a5, v39);
  v12 = v39[0];
  v11 = v39[1];
  v13 = v40;
  v14 = v41;
  outlined init with copy of _ViewListInputs(a2, v39);
  v27 = v14;
  v28 = v10;
  v30 = v13;
  v31 = v10;
  *&v33 = v12;
  *(&v33 + 1) = v11;
  v34 = v13;
  v35 = v14;
  static ViewModifier.makeBody(modifier:inputs:fields:)(&v32, &v36, &v31, v39, &v33, a5, a6);
  v15 = v32;
  v17 = v36;
  v16 = v37;
  v18 = v38;
  v20 = type metadata accessor for _ViewModifier_Content(0, a5, a6, v19);
  *&v33 = a3;
  *(&v33 + 1) = a4;
  v34 = 1;
  v23 = type metadata accessor for BodyInput(0, v20, v21, v22);
  _GraphInputs.append<A, B>(_:to:)(&v33, v23, v23, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v33) = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v33, v39, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v18 & 1) == 0)
  {
    v36 = v17;
    v37 = v16;
    v32 = v28;
    *&v33 = v12;
    *(&v33 + 1) = v11;
    v34 = v30;
    v35 = v27;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v32, &v33, a5);
  }

  outlined destroy of _ViewListInputs(v39);
  return outlined consume of DynamicPropertyCache.Fields.Layout(v12, v11, v30);
}

uint64_t static ViewModifierContentProvider.providerMakeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  outlined init with copy of _ViewListInputs(a1, v16);
  v7 = type metadata accessor for BodyInput(0, a2, v5, v6);
  v8 = _GraphInputs.popLast<A, B>(_:)(v7, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, v14);
  v9 = v15;
  if (v15 == 255)
  {
    static _ViewListOutputs.emptyViewList(inputs:)(v16, a3);
  }

  else
  {
    v11 = v14[0];
    v10 = v14[1];
    if (v15)
    {
      (v14[0])(v8, v16);
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      outlined copy of BodyInputElement(v11, v10);
      static _ViewListOutputs.unaryViewList<A>(viewType:inputs:body:)(v16, partial apply for closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:), v12, a2, a3);
    }

    outlined consume of BodyInputElement?(v11, v10, v9);
  }

  return outlined destroy of _ViewListInputs(v16);
}

uint64_t sub_18D074038()
{

  return swift_deallocObject();
}

uint64_t static _ViewListOutputs.unaryViewList<A>(view:inputs:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v11 = HIDWORD(v9);
  v12 = *(a2 + 32);
  v46[1] = *(a2 + 16);
  v46[2] = v12;
  v46[0] = *a2;
  v13 = WORD2(v12);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v45[3] = v14;
  v45[4] = &protocol witness table for UnaryElements<A>;
  v15 = swift_allocObject();
  v45[0] = v15;
  *(v15 + 16) = v10;
  *(v15 + 20) = v11;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  v16 = *(a2 + 16);
  *(v15 + 40) = *a2;
  *(v15 + 56) = v16;
  *(v15 + 72) = *(a2 + 32);
  if ((v13 & 0x100) != 0)
  {
    v20 = *&v46[0];
    outlined init with copy of _GraphInputs(v46, v35);
    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v20);
    Attribute = AGWeakAttributeGetAttribute();
    v18 = *MEMORY[0x1E698D3F8];
    v19 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v17 = 0;
    }

    else
    {
      v17 = v21;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v46, v35);
    v17 = 0;
    v18 = *MEMORY[0x1E698D3F8];
    v19 = 1;
  }

  v23 = *(a2 + 64);
  if (v23 != v18)
  {
    goto LABEL_13;
  }

  v24 = !v19;
  if ((*(a2 + 56) & 3) == 1)
  {
    v24 = 1;
  }

  if (v24 & 1) != 0 || (v25 = *(a2 + 128), v25 != 255) && ((v25 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v45, v34);
    v26 = *(a2 + 48);
    v27 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v33 = *(a2 + 112);
    v28 = *(a2 + 128);
    v29 = *(a2 + 72);
    v30 = *(a2 + 80);
    if (v23 == v18)
    {
      v23 = v18;
    }

    outlined init with take of AnyTrackedValue(v34, v35);
    v36 = v26;
    v37 = v27;
    v38 = v17;
    v39 = v19;
    v40 = v33;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v44 = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v31 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v35);
    *a5 = v31;
    *(a5 + 8) = 0;
    *(a5 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v45, a5);
    *(a5 + 40) = 0;
    v26 = *(a2 + 48);
  }

  *(a5 + 48) = v26 + 1;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_18D07438C()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for _ViewListOutputs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _ViewInputs.ScrapeableParentID)
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

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs.KeyValue>, &type metadata for PreferencesOutputs.KeyValue, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceKey.Type>, &lazy cache variable for type metadata for PreferenceKey.Type, &lazy cache variable for type metadata for PreferenceKey, &protocol descriptor for PreferenceKey);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<Attribute<Transaction>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphicsFilter>, &type metadata for GraphicsFilter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<BitVector64>, &type metadata for BitVector64);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformAccessibilitySettingsDefinition.Entry>, &type metadata for PlatformAccessibilitySettingsDefinition.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_Pack.Effect>, &type metadata for _ShapeStyle_Pack.Effect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradientVector.Stop>, &type metadata for ResolvedGradientVector.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ShaderVectorData.Element>, &type metadata for ShaderVectorData.Element);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<GraphHost>>, type metadata accessor for Unmanaged<GraphHost>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<ViewGraph>>, type metadata accessor for Unmanaged<ViewGraph>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<UnsafeRawPointer>, MEMORY[0x1E69E6270]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>, &type metadata for ResolvedGradient.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextVariantsStorage.Variant>, &type metadata for TextVariantsStorage.Variant);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>, &type metadata for Material.Layer.SDFLayer.GroupLayer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<_DisplayList_Identity>, &type metadata for _DisplayList_Identity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<WeakAttribute<_DisplayList_StableIdentityScope>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextSizeCache.Entry>, &type metadata for TextSizeCache.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<MatchedGeometryScope.Frame>, &type metadata for MatchedGeometryScope.Frame);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<WeakAttribute<()>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<Attribute<ViewList>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<LazyPrefetchOperation>, &type metadata for LazyPrefetchOperation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Line>, &type metadata for Text.Layout.Line);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGRect>, type metadata accessor for CGRect, MEMORY[0x1E69E6F90], type metadata accessor for DisplayList.ArchiveIDs?);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapeableContent>, &type metadata for ScrapeableContent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<Range<Int>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<DebugReplaceableView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<AnyView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<AnyView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *static ViewModifierContentProvider.providerMakeView(view:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = a1[3];
  v6 = a1[1];
  v63 = a1[2];
  v64 = v5;
  v7 = a1[3];
  v65 = a1[4];
  v8 = a1[1];
  v61 = *a1;
  v62 = v8;
  v57 = v63;
  v58 = v7;
  v59 = a1[4];
  v66 = *(a1 + 20);
  v60 = *(a1 + 20);
  v55 = v61;
  v56 = v6;
  v9 = type metadata accessor for BodyInput(0, a2, a2, a4);
  outlined init with copy of _ViewInputs(&v61, &v39);
  _ViewInputs.popLast<A, B>(_:)(v9, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, v53);
  v10 = v54;
  if (v54 == 255)
  {
    *a3 = MEMORY[0x1E69E7CC0];
    *(a3 + 8) = 0;
    v23 = *MEMORY[0x1E698D3F8];
    v41 = v57;
    v42 = v58;
    v43 = v59;
    LODWORD(v44) = v60;
    v39 = v55;
    v40 = v56;
    result = outlined destroy of _ViewInputs(&v39);
    *(a3 + 12) = v23;
    return result;
  }

  v11 = v53[0];
  v12 = v53[1];
  if (v54)
  {
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v47 = v55;
    v48 = v56;
    v13 = swift_allocObject();
    v14 = v64;
    *(v13 + 48) = v63;
    *(v13 + 64) = v14;
    *(v13 + 80) = v65;
    *(v13 + 96) = v66;
    v15 = v62;
    *(v13 + 16) = v61;
    *(v13 + 32) = v15;
    *(v13 + 104) = v11;
    *(v13 + 112) = v12;
    v41 = v57;
    v42 = v58;
    v43 = v59;
    LODWORD(v44) = v60;
    v39 = v55;
    v40 = v56;
    *(&v44 + 1) = partial apply for closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:);
    v45 = v13;
    v46 = 0;
    v16 = v47;
    outlined init with copy of _ViewInputs(&v47, &v25);
    outlined init with copy of _ViewInputs(&v61, &v25);
    outlined init with copy of _ViewInputs(&v47, &v25);
    outlined copy of BodyInputElement?(v11, v12, v10);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v16);
    result = (*(v17 + 8))(&v39, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
    v19 = *(&v45 + 1);
    if (!*(&v45 + 1))
    {
      __break(1u);
      return result;
    }

    v20 = v46;
    v21 = HIDWORD(v46);
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;

    outlined destroy of MakeViewRoot(&v25);

    outlined consume of BodyInputElement?(v11, v12, v10);
    outlined destroy of _ViewInputs(&v47);
    *a3 = v19;
    *(a3 + 8) = v20;
    *(a3 + 12) = v21;
    v35 = v57;
    v36 = v58;
    v37 = v59;
    v38 = v60;
    v33 = v55;
    v34 = v56;
    v22 = &v33;
  }

  else
  {
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v47 = v55;
    v48 = v56;
    v35 = v57;
    v36 = v58;
    v37 = v59;
    v38 = v60;
    v33 = v55;
    v34 = v56;
    v24 = outlined init with copy of _ViewInputs(&v47, &v39);
    v11(v24, &v33);
    outlined consume of BodyInputElement?(v11, v12, v10);
    v27 = v35;
    v28 = v36;
    v29 = v37;
    LODWORD(v30) = v38;
    v25 = v33;
    v26 = v34;
    outlined destroy of _ViewInputs(&v25);
    v41 = v57;
    v42 = v58;
    v43 = v59;
    LODWORD(v44) = v60;
    v39 = v55;
    v40 = v56;
    v22 = &v39;
  }

  return outlined destroy of _ViewInputs(v22);
}

uint64_t sub_18D0748B8()
{

  return swift_deallocObject();
}

uint64_t closure #1 in Attribute.setValue(_:)@<X0>(_BYTE *a4@<X8>)
{
  result = AGGraphSetValue();
  *a4 = result;
  return result;
}

uint64_t _GraphInputs.popLast<A, B>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = v5;
  v10 = *(a4 + 8);
  PropertyList.subscript.getter(a2, *v6, a2, v10);
  v13 = type metadata accessor for Stack(0, a3, v11, v12);
  Stack.pop()(v13, x8_0);
  v15[0] = v15[1];
  return PropertyList.subscript.setter(v15, a2, a2, v10);
}

uint64_t Stack.pop()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v4 = *(a1 + 16);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v6 = swift_projectBox();
    v7 = *(v6 + *(TupleTypeMetadata2 + 48));
    v8 = *(v4 - 8);
    (*(v8 + 16))(a2, v6, v4);
    *v2 = v7;
    (*(v8 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(*(*(a1 + 16) - 8) + 56);

    return v10(a2, 1, 1);
  }
}

uint64_t storeEnumTagSinglePayload for BodyInputElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t static Stack<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v16 = *v15;
  if (!*v14)
  {
    if (!v16)
    {
      v27 = 1;
      return v27 & 1;
    }

LABEL_8:
    v27 = 0;
    return v27 & 1;
  }

  type metadata accessor for Stack(255, a3, v10, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = swift_projectBox();
  if (!v16)
  {
    goto LABEL_8;
  }

  v19 = *(TupleTypeMetadata2 + 48);
  v32 = *(v18 + v19);
  v20 = v18;
  v21 = swift_projectBox();
  v34 = v16;
  v22 = v21;
  v33 = *(v21 + v19);
  v23 = v6;
  v24 = *(v6 + 16);
  v24(v13, v20, a3);
  v25 = v22;
  v26 = v33;
  v24(v8, v25, a3);

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {

    v29 = *(v23 + 8);
    v29(v8, a3);
    v29(v13, a3);

    goto LABEL_8;
  }

  v35 = v26;
  v36 = v32;
  v27 = static Stack<A>.== infix(_:_:)(&v36, &v35, a3, a4);
  v28 = *(v23 + 8);
  v28(v8, a3);
  v28(v13, a3);

  return v27 & 1;
}

void *static ViewModifier.makeBody(modifier:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(38);

    v20 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v20);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = *(a5 + 5);
    v16 = *(a5 + 16);
    v24 = *a3;
    v21 = *a5;
    v22 = v16;
    v23 = v15;
    v17 = type metadata accessor for ModifierBodyAccessor(0, a6, a7, v14);
    swift_getWitnessTable(protocol conformance descriptor for ModifierBodyAccessor<A>, v17);
    return BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, &v24, a4, &v21, v17, v18);
  }

  return result;
}

uint64_t type metadata accessor for ModifierBodyAccessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for ModifierBodyAccessor);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for ModifierBodyAccessor);
}

uint64_t _GraphInputs.append<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = type metadata accessor for Stack(255, a4, a3, a4);
  v17 = a6;
  swift_getWitnessTable(protocol conformance descriptor for <A> Stack<A>, v12, &v17);
  _GraphInputs.recordReusableInput<A>(_:)(a3, a3, a5);
  v13 = *(a5 + 8);
  PropertyList.subscript.getter(a3, *v7, a3, v13);
  v14 = swift_checkMetadataState();
  Stack.push(_:)(a1, v14);
  v16[0] = v16[1];
  return PropertyList.subscript.setter(v16, a3, a3, v13);
}

uint64_t _GraphInputs.recordReusableInput<A>(_:)(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  v7 = &static GraphReuseOptions.overrideValue;
  result = swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      result = swift_once();
    }

    v7 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v7 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(a1);
    v9 = *v3;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v9, v16);
    if (v10)
    {
      v11 = (v10 + 72);
      v12 = (v10 + 80);
    }

    else
    {
      v11 = &static ReusableInputs.defaultValue;
      v12 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v13 = *v11;
    v14 = *v12;

    if (!v14 || *(v14 + 16) != a2)
    {
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = a3;
      v15[4] = v14;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v3, v13 | v16, v15);
    }
  }

  return result;
}

uint64_t sub_18D0752C4()
{

  return swift_deallocObject();
}

uint64_t Stack.push(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = swift_allocBox();
  v8 = v7;
  v9 = *(TupleTypeMetadata2 + 48);
  result = (*(*(v4 - 8) + 16))(v7, a1, v4);
  *(v8 + v9) = *v2;
  *v2 = v6;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BodyInputElement(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of BodyInputElement(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t outlined consume of BodyInputElement?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of BodyInputElement(a1, a2);
  }

  return a1;
}

void lazy protocol witness table accessor for type Stack<BodyInputElement> and conformance <A> Stack<A>()
{
  if (!lazy protocol witness table cache variable for type Stack<BodyInputElement> and conformance <A> Stack<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(255, &lazy cache variable for type metadata for Stack<BodyInputElement>, &type metadata for BodyInputElement, type metadata accessor for Stack);
    v3 = v2;
    lazy protocol witness table accessor for type BodyInputElement and conformance BodyInputElement();
    v6[0] = v4;
    swift_getWitnessTable(protocol conformance descriptor for <A> Stack<A>, v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Stack<BodyInputElement> and conformance <A> Stack<A>);
  }
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

uint64_t closure #1 in variable initialization expression of static GraphReuseOptions.defaultsValue@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v2 = static NSUserDefaults.swiftUI;
  if (!static NSUserDefaults.swiftUI)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_11:
    _s2os6LoggerVSgWOhTm_2(&v9, type metadata accessor for Any?);
    goto LABEL_12;
  }

  v3 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DE17B10);
  v4 = [v2 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v6 = v7;
    goto LABEL_15;
  }

LABEL_12:
  result = getenv("SWIFTUI_GRAPH_REUSE_OPTIONS");
  if (result)
  {
    result = atoi(result);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

LABEL_15:
  *a1 = v6;
  return result;
}

void one-time initialization function for swiftUI()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD750C0);
  v2 = [v0 initWithSuiteName_];

  static NSUserDefaults.swiftUI = v2;
}

uint64_t outlined destroy of Logger?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s2os6LoggerVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s2os6LoggerVSgMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s2os6LoggerVSgMaTm_2(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AtomicBuffer<TrackerData>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void lazy protocol witness table accessor for type BodyInputElement and conformance BodyInputElement()
{
  if (!lazy protocol witness table cache variable for type BodyInputElement and conformance BodyInputElement)
  {
    swift_getWitnessTable(protocol conformance descriptor for BodyInputElement, &type metadata for BodyInputElement, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BodyInputElement and conformance BodyInputElement);
  }
}

unint64_t type metadata accessor for Any.Type()
{
  result = lazy cache variable for type metadata for Any.Type;
  if (!lazy cache variable for type metadata for Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Any.Type);
  }

  return result;
}

void lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init()
{
  if (!lazy protocol witness table cache variable for type BaseViewList.Init and conformance BaseViewList.Init)
  {
    swift_getWitnessTable(protocol conformance descriptor for BaseViewList.Init, &type metadata for BaseViewList.Init, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BaseViewList.Init and conformance BaseViewList.Init);
  }
}

uint64_t ConditionalMetadata<>.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31[4] = *MEMORY[0x1E69E9840];
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26[-3] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 32);
  if (*(v4 + 85))
  {
    v9 = specialized _GraphInputs.pushScope<A>(id:)(v12);
  }

  v13 = *v4;
  LODWORD(v27) = *(v5 + 24);
  v28 = v13;
  v25 = *(v5 + 8);
  v29 = v25;
  v30 = v12;
  MEMORY[0x1EEE9AC00](v9);
  *(&v25 - 4) = a3;
  v31[0] = &type metadata for ViewDescriptor;
  v31[1] = v14;
  v31[2] = a3;
  v31[3] = &protocol witness table for ViewDescriptor;
  v15 = type metadata accessor for UnwrapConditional(0, v31);
  *(&v25 - 3) = v15;
  swift_getWitnessTable(protocol conformance descriptor for UnwrapConditional<A, B, C>, v15);
  *(&v25 - 2) = v16;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v13);
  v17 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v25 - 3), v15, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v28);
  v19 = *(v5 + 40);
  if (!v19)
  {
    __break(1u);
  }

  v20 = LODWORD(v31[0]);
  v21 = (*(v8 + 16))(v11, v19, a3);
  MEMORY[0x1EEE9AC00](v21);
  *(&v25 - 2) = a3;
  *(&v25 - 2) = v20;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in Attribute.setValue(_:), (&v25 - 2), a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v22);
  (*(v8 + 8))(v11, a3);
  _GraphValue.init(_:)(v20, v31);
  v23 = LODWORD(v31[0]);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v26[0] = v23;
  (*(a4 + 32))(&v27, v26, v5 + 48, a3, a4);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v23, a3, a4);
  return outlined assign with take of _ViewListOutputs?(&v27, v5 + 184);
}

void lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers()
{
  if (!lazy protocol witness table cache variable for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewListOutputs.ApplyModifiers, &type metadata for _ViewListOutputs.ApplyModifiers, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers);
  }
}

uint64_t initializeWithCopy for CachedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t closure #1 in DynamicViewList.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v39 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v34 - v8;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DynamicViewList(0, a2, a3, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v18 = a1;
  outlined init with copy of _ViewListInputs(a1 + *(v17 + 40), v42);
  v19 = v43;
  swift_beginAccess();
  v20 = v19[3];
  v46[1] = v19[2];
  v46[2] = v20;
  v21 = v19[5];
  v46[3] = v19[4];
  v46[4] = v21;
  v46[0] = v19[1];
  type metadata accessor for MutableBox<CachedEnvironment>(0, v22, v23, v24);
  v25 = swift_allocObject();
  memmove((v25 + 16), v19 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v46, v40);

  v43 = v25;
  if (((*(a3 + 32))(a2, a3) & 1) != 0 && (v45 & 1) == 0)
  {
    v45 |= 1uLL;
  }

  v44 = 0;
  (*(v14 + 16))(v16, v18, v13);
  v26 = *(v13 + 16);
  Value = AGGraphGetValue();
  (*(*(v26 - 8) + 16))(v11, Value, v26);
  (*(v14 + 8))(v16, v13);
  v29 = v36;
  v28 = v37;
  v30 = v38;
  (*(v37 + 16))(v36, v18, v38);
  (*(a3 + 72))(v40, v29, *(v18 + *(v13 + 36)), v42, a2, a3);
  (*(v28 + 8))(v29, v30);
  (*(v35 + 8))(v11, a2);
  LODWORD(v26) = _ViewListOutputs.makeAttribute(inputs:)(v42);
  outlined destroy of _ViewListInputs(v42);
  v31 = v39;
  *v39 = v26;
  v32 = v40[7];
  LOBYTE(v30) = v41;
  result = outlined destroy of _ViewListOutputs(v40);
  *(v31 + 4) = (v32 == 1) & ~v30;
  return result;
}

uint64_t specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t *, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!(a5 >> 62))
  {
    v33 = a5;
    v34 = a6;
    v14 = a2;
    v15 = a1;
    return a3(v14, &v33, v15);
  }

  if (a5 >> 62 != 1)
  {
    v17 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v20 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v31 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    v32 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    EnumTag = AGTypeGetEnumTag();
    v22 = AGTypeProjectEnumData();
    if (EnumTag == 1)
    {
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v27 = a4;
      v28 = v18;
      v29 = v19;
    }

    else
    {
      v25 = a2 + v20;
      if (__OFADD__(a2, v20))
      {
        goto LABEL_18;
      }

      v24 = a1;
      v26 = a3;
      v27 = a4;
      v29 = v31;
      v28 = v32;
    }

    specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(v24, v25, v26, v27, v28, v29);
    v22 = v17;
    v25 = EnumTag;
LABEL_14:
    v23 = a1;

    return MEMORY[0x1EEDEECD8](v22, v25, v23);
  }

  v10 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v13 = AGTypeGetEnumTag();
  if (v13 == 1)
  {
    v33 = 0;
    v34 = 0;
    v14 = a2;
    v15 = 0;
    return a3(v14, &v33, v15);
  }

  v30 = v13;
  v22 = AGTypeProjectEnumData();
  v25 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, v25, a3, a4, v11, v12);
    v22 = v10;
    v25 = v30;
    goto LABEL_14;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return MEMORY[0x1EEDEECD8](v22, v25, v23);
}

uint64_t closure #1 in ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *(a4 + 32) = result;
    *(a4 + 40) = a3;
    List = type metadata accessor for ConditionalMetadata<>.MakeList(0, a5, a3, a4);
    return TypeConformance<>.visitType<A>(visitor:)(a4, List, &protocol witness table for ConditionalMetadata<A><>.MakeList<A1>);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnwrapConditional<A, B, C>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UnwrapConditional<A, B, C>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t destroy for ConditionalMetadata<>.MakeList(uint64_t a1)
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*a1);

  result = swift_weakDestroy();
  v3 = *(a1 + 224);
  if (v3 != 255)
  {
    if (v3)
    {
    }

    else
    {

      return __swift_destroy_boxed_opaque_existential_1((a1 + 184));
    }
  }

  return result;
}

uint64_t type metadata completion function for DynamicViewList.WrappedList(uint64_t a1)
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

uint64_t _ViewInputs.intern<A>(_:id:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = v3[1];
  v16[0] = *v3;
  v16[1] = v6;
  v8 = *v3;
  v7 = v3[1];
  v16[2] = v3[2];
  v9 = *a2;
  v13 = v8;
  v14 = v7;
  v15 = v3[2];
  v12 = v9;
  outlined init with copy of _GraphInputs(v16, v17);
  v10 = _GraphInputs.intern<A>(_:id:)(a1, &v12, a3);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  outlined destroy of _GraphInputs(v17);
  return v10;
}

uint64_t protocol witness for static _VariadicView_ImplicitRoot.implicitRoot.getter in conformance _VStackLayout@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static HorizontalAlignment.center;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ImplicitRootType)
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

uint64_t type metadata completion function for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for ImplicitRootType);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static ImplicitRootType.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t _ViewInputs.implicitRootBodyInputs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v12 = v1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v10, v9[0]);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 64) = *MEMORY[0x1E698D3F8];
  *(a1 + 72) = MEMORY[0x1E69E7CD0];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  swift_weakInit();
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  v6 = v11;
  *a1 = v10;
  *(a1 + 16) = v6;
  *(a1 + 32) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  outlined init with copy of _GraphInputs(&v10, v9);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v7 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = static Semantics.forced >= v7;
    if (static Semantics.forced >= v7)
    {
      return result;
    }
  }

  if ((v5 & 2) == 0)
  {
    *(a1 + 56) = v5 | 2;
  }

  return result;
}

uint64_t _GraphInputs.intern<A>(_:id:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  specialized static GraphHost.currentHost.getter();
  v9 = v5;
  default argument 1 of GraphHost.intern<A>(_:for:id:)();
  v7 = GraphHost.intern<A>(_:for:id:)(a1, v6, &v9, a3);

  return v7;
}

char *static _ConditionalContent.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v9 = type metadata accessor for _ConditionalContent(0, a2, a3, a4);
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(v9, partial apply for closure #1 in static _ConditionalContent.makeConditionalMetadata<A>(_:), a4, a5, &v11);
  return ConditionalMetadata.init(_:)(&v11, x8_0);
}

uint64_t static ViewDescriptor.fetchConditionalType(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for conditionalCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static ViewDescriptor.conditionalCache;
  if (*(static ViewDescriptor.conditionalCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = v4[7] + 24 * v5;
    v8 = *v7;
    *a2 = *v7;
    *(a2 + 8) = *(v7 + 8);
    outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v8);
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0xF000000000000007;
  }

  return swift_endAccess();
}

uint64_t initializeWithCopy for DynamicViewList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 3;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = v9 + 11;
  v11 = *v9;
  v9 += 147;
  v12 = v8 + 11;
  *v8 = v11;
  v8 += 147;
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  v14 = v10 & 0xFFFFFFFFFFFFFFF8;
  *v13 = *(v10 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v13 + 16) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v13 + 24) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v13 + 28) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 28);
  *(v13 + 32) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v13 + 36) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 36);
  *(v13 + 40) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v13 + 48) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v13 + 56) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 56);
  *(v13 + 64) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 64);
  *(v13 + 72) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 72);
  *(v13 + 80) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 80);
  *(v13 + 88) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 88);

  swift_weakCopyInit();
  v15 = *(v14 + 112);
  *(v13 + 128) = *(v14 + 128);
  *(v13 + 112) = v15;
  v16 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v8 & 0xFFFFFFFFFFFFFFF8) = v16;
  v17 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = v16;

  return a1;
}

void type metadata accessor for _ConditionalContent<(), ()>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<(), ()>)
  {
    v4 = type metadata accessor for _ConditionalContent(0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8] + 8, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _ConditionalContent<(), ()>);
    }
  }
}

uint64_t one-time initialization function for conditionalTypeDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ConditionalContent<(), ()>(0, a2, a3, a4);
  result = MEMORY[0x193AC2090]();
  if (result)
  {
    conditionalTypeDescriptor = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for optionalTypeDescriptor()
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8);
  result = MEMORY[0x193AC2090]();
  if (result)
  {
    optionalTypeDescriptor = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for ConditionalTypeDescriptor<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, type metadata accessor for ConditionalTypeDescriptor);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>);
    }
  }
}

void type metadata accessor for UniqueID?()
{
  if (!lazy cache variable for type metadata for UniqueID?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UniqueID?);
    }
  }
}

unint64_t *initializeWithCopy for ConditionalMetadata(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

id DynamicViewList.init(metadata:view:inputs:lastItem:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for DynamicViewList(0, a5, a6, v15);
  *(a7 + v16[9]) = a2;
  outlined init with take of _ViewListInputs(a3, a7 + v16[10]);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a7 + v16[11]) = result;
    v19 = v16[12];
    type metadata accessor for DynamicViewList.Item(255, a5, a6, v18);
    type metadata accessor for Unmanaged();
    v20 = type metadata accessor for Array();
    type metadata accessor for MutableBox(0, v20, v21, v22);
    v23 = Array.init()();
    result = MutableBox.__allocating_init(_:)(&v23);
    *(a7 + v19) = result;
    *(a7 + v16[13]) = a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DynamicView.makeDynamicViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v26 = a1;
  v32 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v25 - v12;
  v15 = type metadata accessor for DynamicViewList(0, a4, a5, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  LODWORD(a2) = *a2;
  (*(v11 + 16))(v13, v26, AssociatedTypeWitness, v17);
  v20 = v27;
  outlined init with copy of _ViewListInputs(v27, v31);
  DynamicViewList.init(metadata:view:inputs:lastItem:)(v13, a2, v31, 0, a4, a5, v19);
  v29 = v15;
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>, v15);
  v30 = v21;
  type metadata accessor for Attribute<ViewList>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in Attribute.init<A>(_:)partial apply, v28, v15, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  result = (*(v16 + 8))(v19, v15);
  *a6 = v31[0];
  *(a6 + 8) = 0;
  *(a6 + 40) = 1;
  *(a6 + 48) = *(v20 + 48);
  *(a6 + 56) = 0;
  *(a6 + 64) = 1;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicViewList<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t destroy for ConditionalMetadata(unint64_t *a1)
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*a1);
}

uint64_t destroy for DynamicViewList(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = (a1 + *(v4 + 56) + 3) & 0xFFFFFFFFFFFFFFFCLL;

  swift_weakDestroy();
}

uint64_t static _ConditionalContent<>._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = type metadata accessor for _ConditionalContent(0, a3, a4, a4);
  static _ConditionalContent.makeConditionalMetadata<A>(_:)(a3, a4, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v22);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  v18 = v13;
  v17[0] = a5;
  v17[1] = a6;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v14, v17);
  static DynamicView.makeDynamicViewList(metadata:view:inputs:)(&v19, &v18, a2, v14, v15, a7);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v19);
}

uint64_t closure #1 in static _ConditionalContent.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v24 = a2;
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(a2, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a3, a4, &v19);
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(a1, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a3, a4, &v19);
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = swift_allocObject();
  result = type metadata accessor for _ConditionalContent.Storage(0, a1, a2, v17);
  *(v16 + 16) = result;
  *(v16 + 24) = v10;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  *(v16 + 48) = v13;
  *(v16 + 56) = v14;
  *(v16 + 64) = v15;
  if (__OFADD__(v12, v15))
  {
    __break(1u);
  }

  else
  {
    *a5 = v16 | 0x8000000000000000;
    a5[1] = 0;
    a5[2] = v12 + v15;
  }

  return result;
}

uint64_t outlined assign with take of _ViewListOutputs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _ViewListOutputs?, &type metadata for _ViewListOutputs);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ConditionalContent<>.makeChildViewList(metadata:view:inputs:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12[1] = *(a4 + 16);
  v13 = a5;
  v14 = a6;
  v15 = *a1;
  v16 = v9;
  v17 = v10;
  v18 = a2;
  v19 = a3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in _ConditionalContent<>.makeChildViewList(metadata:view:inputs:), v12, a4, MEMORY[0x1E69E73E0], &type metadata for _ViewListOutputs, MEMORY[0x1E69E7410], a8);
}

char *ConditionalMetadata.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (v5)
    {
      v8 = v5;
      do
      {
        result = AGMakeUniqueID();
        v10 = *(v7 + 2);
        v9 = *(v7 + 3);
        if (v10 >= v9 >> 1)
        {
          v11 = result;
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
          result = v11;
        }

        *(v7 + 2) = v10 + 1;
        *&v7[8 * v10 + 32] = result;
        --v8;
      }

      while (v8);
    }

    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v7;
  }

  return result;
}

uint64_t type metadata completion function for DynamicViewList(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for DynamicViewList.Item(uint64_t a1)
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

uint64_t MutableBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t initializeWithCopy for _TraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t destroy for _TraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of AnyTrackedValue(&v12, v10 + 40 * a1 + 32);
}

uint64_t static PropertyKey.valuesEqual(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = a2;
  v11 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13compareValues__7optionsSbx_xSo19AGComparisonOptionsVtlFSbSPyxGXEfU_TA_0, &v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v6);
  return v12;
}

{
  return static PropertyKey.valuesEqual(_:_:)(a1, a2, a3, a4) & 1;
}

uint64_t _s14AttributeGraph13compareValues__7optionsSbx_xSo19AGComparisonOptionsVtlFSbSPyxGXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = a1;
  v15 = v10;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:), &v12, v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:)@<X0>(_BYTE *a2@<X8>)
{
  result = AGCompareValues();
  *a2 = result;
  return result;
}

uint64_t AnyHashable2.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyHashableBox(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = GradientBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t protocol witness for _ViewList_SublistTransform_Item.apply(sublist:) in conformance ModifiedViewList.Transform(uint64_t a1)
{
  v3 = *v1;
  v10 = &type metadata for ModifiedElements;
  v11 = &protocol witness table for ModifiedElements;
  v4 = swift_allocObject();
  *&v9 = v4;
  outlined init with copy of AnyTrackedValue(a1 + 32, v4 + 16);
  *(v4 + 56) = *(v3 + 40);
  *(v4 + 64) = *(v3 + 24);
  v5 = *(v3 + 80);
  v13 = *(v3 + 64);
  v14 = v5;
  v12 = *(v3 + 48);
  v6 = v12;
  *(v4 + 96) = v13;
  *(v4 + 112) = v5;
  *(v4 + 80) = v6;
  outlined init with copy of _GraphInputs(&v12, v8);
  __swift_destroy_boxed_opaque_existential_1((a1 + 32));
  return outlined init with take of AnyTrackedValue(&v9, a1 + 32);
}

uint64_t protocol witness for ViewList.applyNodes(from:style:list:transform:to:) in conformance ModifiedViewList(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v11 = *a2;
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *(v10 + 40);
  v16[3] = a1;
  v16[4] = v11;
  v17 = a3;
  v18 = BYTE4(a3) & 1;
  v19 = a5;
  v20 = a6;
  return (a10)(v14, a9, v16, v12, v13, a6, a7, a8) & 1;
}

uint64_t type metadata completion function for AnyGestureStorage(uint64_t a1)
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

uint64_t _ViewList_TemporarySublistTransform.apply(sublist:)(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  if (*(v2 + 8) == 1)
  {
    v5 = *v4;
    v6 = v4[1];

    specialized Array.reserveCapacity(_:)(v6, v7);
    v8 = v5[2];
    if (!v8)
    {
    }

    v9 = &v5[5 * v8 - 1];
    while (v8 <= v5[2])
    {
      --v8;
      outlined init with copy of AnyTrackedValue(v9, v15);
      v10 = v16;
      v11 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v11 + 16))(a1, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v9 -= 40;
      if (!v8)
      {
      }
    }

    __break(1u);
    return specialized Array.reserveCapacity(_:)(0, a2);
  }

  if (!v4)
  {
    return specialized Array.reserveCapacity(_:)(0, a2);
  }

  specialized Array.reserveCapacity(_:)(v4[6], a2);
  do
  {
    outlined init with copy of AnyTrackedValue((v4 + 1), v15);
    v13 = v16;
    v14 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v14 + 16))(a1, v13, v14);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v4 = *v4;
  }

  while (v4);
  return result;
}

uint64_t closure #1 in ModifiedViewList.applyNodes(from:style:list:transform:to:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v21 = a4;
  v19 = v14;
  v20 = v15;
  result = (*(v17 + 64))(a3, &v21, a5 | ((HIDWORD(a5) & 1) << 32), &v19, a6, a7, v16, v17);
  *a8 = result & 1;
  return result;
}

uint64_t _ViewListOutputs.makeAttribute(inputs:)(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListOutputs.Views(v1, v20);
  if (v21)
  {
    v3 = LODWORD(v20[0]);
    if (*(&v20[0] + 1))
    {
      LODWORD(v17[0]) = v20[0];
      *(&v17[0] + 1) = *(&v20[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();
      v3 = Attribute.init<A>(body:value:flags:update:)();
    }
  }

  else
  {
    outlined init with take of AnyTrackedValue(v20, v19);
    outlined init with copy of AnyTrackedValue(v19, v16);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56) & 3;
    if (*(a1 + 37))
    {
      v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*a1);
      Attribute = AGWeakAttributeGetAttribute();
      v7 = Attribute == *MEMORY[0x1E698D3F8];
      if (Attribute == *MEMORY[0x1E698D3F8])
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    *&v14 = 0;
    BYTE8(v14) = 0;
    outlined init with copy of AnyTrackedValue(v16, &v11);
    *(&v13 + 1) = v4;

    *&v14 = MEMORY[0x1E69E7CD0];
    BYTE8(v14) = 0;
    v15 = MEMORY[0x1E69E7CC0];
    if (v5 == 1)
    {
      _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(1);
    }

    if (!v7)
    {
      _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = v14;
    v18 = v15;
    v17[0] = v11;
    *(&v12 + 1) = &unk_1F0084288;
    lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
    *&v13 = v9;
    *&v11 = swift_allocObject();
    outlined init with copy of BaseViewList(v17, v11 + 16);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    v3 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList(v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  return v3;
}

uint64_t sub_18D078EA8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<CanTransitionTraitKey>, &type metadata for CanTransitionTraitKey, &protocol witness table for CanTransitionTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for CanTransitionTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t destroy for BaseViewList.Init(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void _ViewList_Node.applySublists(from:style:transform:to:)(void *a1, unint64_t *a2, unint64_t *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v9 = *a2;
  v37 = *a3;
  v38 = *(a3 + 8);
  v10 = outlined init with copy of _ViewList_Node(v5, &v44);
  if (v49 <= 1u)
  {
    if (v49)
    {
      *&v40[16] = v46;
      v41 = v47;
      v42[0] = *v48;
      *(v42 + 13) = *&v48[13];
      v39 = v44;
      *v40 = v45;
      v26 = v44.n128_i64[1];
      if (v9)
      {
        v26 = v44.n128_u64[1] * (v9 >> 1);
        if ((v44.n128_i64[1] * (v9 >> 1)) >> 64 != v26 >> 63)
        {
          goto LABEL_22;
        }
      }

      v27 = *a1 - v26;
      if (*a1 >= v26)
      {
        outlined destroy of _ViewList_Sublist(&v39);
        *a1 = v27;
      }

      else
      {
        *&v43[0] = v37;
        BYTE8(v43[0]) = v38;
        _ViewList_TemporarySublistTransform.apply(sublist:)(&v39, v44);
        a4(&v39);
        outlined destroy of _ViewList_Sublist(&v39);
        *a1 = 0;
      }
    }

    else
    {
      v11 = DWORD2(v46);
      v12 = BYTE12(v46);
      outlined init with take of AnyTrackedValue(&v44, &v39);
      v14 = *&v40[8];
      v13 = *&v40[16];
      __swift_project_boxed_opaque_existential_1(&v39, *&v40[8]);
      v53[0] = v9;
      v51 = v37;
      v52 = v38;
      *&v43[1] = a4;
      *(&v43[1] + 1) = a5;
      v15 = *(v13 + 64);
      v50 = v12;
      v15(a1, v53, v11 | (v12 << 32), &v51, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v43, v14, v13);
      __swift_destroy_boxed_opaque_existential_1(&v39);
    }

    return;
  }

  if (v49 != 2)
  {
    v39.n128_u32[0] = v44.n128_u32[0];
    v39.n128_u64[1] = v44.n128_u64[1];
    *v40 = v45;
    v40[8] = BYTE8(v45);
    v51 = v9;
    *&v43[0] = v37;
    BYTE8(v43[0]) = v38;
    MEMORY[0x1EEE9AC00](a1);
    v30 = a4;
    v31 = a5;
    _ViewList_Section.applyNodes(from:style:transform:to:)(v28, &v51, v43, partial apply for closure #2 in _ViewList_Node.applySublists(from:style:transform:to:), v29);

    return;
  }

  v36 = v9;
  v32[1] = v32;
  MEMORY[0x1EEE9AC00](v10);
  v34 = v16;
  v35 = v29;
  v17 = 0;
  v30 = a4;
  v31 = a5;
  v18 = *(v16 + 16);
  v33 = v16 + 32;
  while (1)
  {
    if (v17 == v18)
    {
      v17 = v18;
      memset(v43, 0, 44);
      goto LABEL_11;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v34 + 16))
    {
      goto LABEL_21;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v33 + 48 * v17++, v43, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
LABEL_11:
    *&v40[12] = *(&v43[1] + 12);
    v39 = v43[0];
    *v40 = v43[1];
    if (*(&v43[1] + 1))
    {
      v19 = a1;
      v20 = *&v40[24];
      outlined init with take of AnyTrackedValue(&v39, v43);
      v21 = *(&v43[1] + 1);
      v22 = *&v43[2];
      __swift_project_boxed_opaque_existential_1(v43, *(&v43[1] + 1));
      v53[0] = v36;
      v51 = v37;
      v52 = v38;
      v23 = *(v22 + 64);
      v50 = 0;
      v24 = v20;
      a1 = v19;
      v25 = v23(v19, v53, v24, &v51, partial apply for closure #1 in _ViewList_Node.applySublists(from:style:transform:to:), v35, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v43);
      if (v25)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v12 = *v6;
  v13 = *(v6 + 8);
  (*(a6 + 8))(&v27, a5, a6);
  v14 = v27;
  if (v13 == 1)
  {
    specialized _ViewList_SublistTransform.push(_:flags:)(a1, &v27, v12, a5, a6);
    v27 = v12;
    v28[0] = 1;
    a2(&v27);
    LOBYTE(v27) = v14;
    return _ViewList_SublistTransform.pop(flags:)(&v27);
  }

  else
  {
    v25 = a5;
    v26 = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    if (v12)
    {
      v17 = v12[6];
      v18 = v12[7] + 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = v17 + (v14 & 1);
    v27 = v12;
    v20 = outlined init with take of AnyTrackedValue(&v24, v28);
    v29 = v19;
    v30 = v18;
    MEMORY[0x1EEE9AC00](v20);
    v22[2] = v23;
    v22[3] = a5;
    v22[4] = a6;
    v22[5] = a2;
    v22[6] = a3;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v27, partial apply for closure #1 in _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:), v22, &type metadata for _ViewList_TemporarySublistTransform.ItemNode, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v21);
    return outlined destroy of _AnyAnimatableData(&v27);
  }
}

char *_ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  AnyHashable2.init<A>(_:)(v12, a5, &v21);
  v14 = v21;
  v15 = *(v5 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    v15 = result;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[24 * v18];
  *(v19 + 4) = v14;
  *(v19 + 5) = a4;
  *(v19 + 12) = a2;
  v19[52] = a3 & 1;
  *(v5 + 8) = v15;
  return result;
}

uint64_t partial apply for closure #1 in _ViewList_Node.applySublists(from:style:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *a4;
  v8 = *(a4 + 8);
  v13 = *a2;
  v11 = v7;
  v12 = v8;
  _ViewList_Node.applySublists(from:style:transform:to:)(a1, &v13, &v11, v6, v5);
  return v9 & 1;
}

uint64_t initializeWithCopy for _ViewList_Node(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 93);
  if (v3 >= 4)
  {
    v3 = *a2 + 4;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      *a1 = *a2;
      *(a1 + 93) = 2;
LABEL_11:

      return a1;
    }

    *a1 = *a2;
    v12 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v12;
    *(a1 + 24) = *(a2 + 24);
    v11 = 3;
LABEL_10:
    *(a1 + 93) = v11;

    goto LABEL_11;
  }

  if (v3)
  {
    *a1 = *a2;
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    v6 = *(a2 + 7);
    *(a1 + 56) = v6;
    v7 = v6;
    v8 = **(v6 - 8);

    v8(a1 + 32, a2 + 4, v7);
    v10 = a2[10];
    *(a1 + 72) = a2[9];
    *(a1 + 80) = v10;
    *(a1 + 88) = *(a2 + 22);
    *(a1 + 92) = *(a2 + 92);
    v11 = 1;
    goto LABEL_10;
  }

  v4 = *(a2 + 3);
  *(a1 + 24) = v4;
  (**(v4 - 8))(a1);
  *(a1 + 40) = *(a2 + 10);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 93) = 0;
  return a1;
}

uint64_t initializeWithCopy for _ViewList_Sublist(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 32, a2 + 32, v5);
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);

  return a1;
}

uint64_t BaseViewList.applyNodes(from:style:list:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, unint64_t *, uint64_t *, uint64_t *))
{
  v6 = v5;
  v9 = *a2;
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = v5[3];
  v13 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v12);
  result = (*(v13 + 8))(v12, v13);
  v15 = result;
  v16 = result;
  if (v9)
  {
    v16 = result * (v9 >> 1);
    if ((result * (v9 >> 1)) >> 64 != v16 >> 63)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

  v17 = *a1;
  v18 = __OFSUB__(*a1, v16);
  v19 = *a1 - v16;
  if (v19 < 0 == v18)
  {
    *a1 = v19;
    v22 = 1;
    return v22 & 1;
  }

  v20 = *(v6 + 40);
  if (v20 < 0xFFFFFFFF80000000)
  {
    goto LABEL_10;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    outlined init with copy of AnyTrackedValue(v6, v33);
    v21 = *(v6 + 64);
    v29[0] = v17;
    v29[1] = v15;
    v30 = 0;
    v31 = v20;
    v32 = MEMORY[0x1E69E7CC0];
    v33[5] = MEMORY[0x1E69E7CC0];
    v33[6] = v21;
    v34 = a3;
    v35 = BYTE4(a3) & 1;
    v28 = v9;
    outlined init with copy of _ViewList_Sublist(v29, v26);
    v27 = 1;
    v24 = v10;
    v25 = v11;

    v22 = a5(a1, &v28, v26, &v24);
    outlined destroy of _ViewList_Node(v26);
    outlined destroy of _ViewList_Sublist(v29);
    *a1 = 0;
    return v22 & 1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for BaseViewList.Init(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);

  return a1;
}

__n128 BaseViewList.Init.value.getter@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  outlined init with copy of AnyTrackedValue(v1, v23);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  v7 = *(v1 + 60);
  v17 = *(v1 + 72);
  v18 = *(v1 + 64);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v2 + 96);
  LODWORD(v2) = *(v2 + 100);
  v11 = *MEMORY[0x1E698D3F8];

  if (v2 == v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = *AGGraphGetValue();
  }

  a1[3] = &unk_1F0084288;
  lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
  a1[4] = v13;
  v14 = swift_allocObject();
  *a1 = v14;
  *&v21 = 0;
  BYTE8(v21) = 0;
  outlined init with copy of AnyTrackedValue(v23, v19);
  *(&v20 + 1) = v4;

  *&v21 = v9;
  BYTE8(v21) = v10;
  v22 = v12;
  if (!v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_10:
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(v6);
    if (v8 == 255)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(1);
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v8 != 255)
  {
LABEL_7:
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA0C13ContentOffsetO_Tt0B5(v18, v17, v8);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v23);
  v15 = v21;
  *(v14 + 48) = v20;
  *(v14 + 64) = v15;
  *(v14 + 80) = v22;
  result = v19[1];
  *(v14 + 16) = v19[0];
  *(v14 + 32) = result;
  return result;
}

uint64_t ModifiedViewList.ListModifier.apply(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    (*(*v4 + 80))(a1);
  }

  outlined init with take of AnyTrackedValue(a1, v8);
  *(a1 + 24) = &unk_1F0084AE0;
  lazy protocol witness table accessor for type ModifiedViewList and conformance ModifiedViewList();
  *(a1 + 32) = v5;
  v6 = swift_allocObject();
  *a1 = v6;
  outlined init with take of AnyTrackedValue(v8, v6 + 16);
  *(v6 + 56) = v2;
}

uint64_t _ConditionalContent<>.childInfo(metadata:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v14[1] = *(a3 + 16);
  v15 = a4;
  v16 = a5;
  v17 = *a2;
  v18 = v8;
  v19 = v9;
  type metadata accessor for (Any.Type, UniqueID?)(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in _ConditionalContent<>.childInfo(metadata:), v14, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  result = v20;
  v13 = v22;
  *a1 = v21;
  *(a1 + 8) = v13;
  return result;
}

void type metadata accessor for ConditionalMetadata<ViewDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ConditionalMetadata<ViewDescriptor>)
  {
    v4 = type metadata accessor for ConditionalMetadata(0, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ConditionalMetadata<ViewDescriptor>);
    }
  }
}

uint64_t DynamicViewList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v107 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90 = &v82[-v7];
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Optional();
  v97 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v82[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v82[-v20];
  Value = AGGraphGetValue();
  (*(v8 + 16))(v11, Value, v4);
  v23 = *(v5 + 56);
  v100 = v5;
  v24 = v23(v21, v2, v4, v5);
  v25 = *(v8 + 8);
  v99 = v4;
  v25(v11, v4);
  v26 = a1;
  v27 = *(a1 + 52);
  v101 = v2;
  v28 = *(v2 + v27);
  v94 = v12;
  v95 = v18;
  v89 = AssociatedTypeWitness;
  v92 = v27;
  v96 = v21;
  if (v28)
  {
    v29 = v98;
    (*(v98 + 16))(v18, v28 + *(*v28 + 136), AssociatedTypeWitness);
    (*(v29 + 56))(v18, 0, 1, AssociatedTypeWitness);

    v30 = DynamicViewList.Item.matches(type:id:)(v24);
    v31 = *(v28 + 24);
    v32 = v26;
    if (v30)
    {
      if (v31)
      {
        if (AGSubgraphIsValid())
        {

          v33 = v28;
          v34 = v12;
          v35 = v96;
          v36 = v99;
          goto LABEL_34;
        }

        goto LABEL_8;
      }
    }

    else if (v31)
    {
LABEL_8:
      v38 = *(v28 + 16);
      if (AGSubgraphIsValid())
      {

        v39 = v38;
        AGSubgraphApply();

        v40 = *(v28 + 16);

        AGSubgraphRemoveChild();

        v31 = *(v28 + 24);
      }

      *(v28 + 24) = v31 - 1;
      if (v31 == 1)
      {
        DynamicViewList.Item.invalidate()();
        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(0);
          AGSubgraphInvalidate();
        }
      }

      goto LABEL_14;
    }

    *(v28 + 24) = -1;
LABEL_14:

    v37 = v101;
    *(v101 + v27) = 0;
    v36 = v99;
    goto LABEL_15;
  }

  (*(v98 + 56))(v18, 1, 1, AssociatedTypeWitness);
  v37 = v101;
  v36 = v99;
  v32 = v26;
LABEL_15:
  v41 = *(v37 + *(v32 + 48));
  swift_beginAccess();
  v88 = v41;
  v42 = *(v41 + 16);
  v87 = type metadata accessor for DynamicViewList.Item(255, v36, v100, v43);
  v44 = type metadata accessor for Unmanaged();

  v46 = MEMORY[0x193ABF2C0](v45, v44);
  v35 = v96;
  if (!v46)
  {
    goto LABEL_27;
  }

  v47 = 4;
  while (1)
  {
    v48 = v47 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v33 = *(v42 + 8 * v47);
    v50 = __OFADD__(v48, 1);
    v51 = v47 - 3;
    if (v50)
    {
      goto LABEL_26;
    }

LABEL_21:

    if (!v28 || v33 != v28) && (DynamicViewList.Item.matches(type:id:)(v24))
    {

      ++*(v33 + 24);
      v73 = v101;

      AGSubgraphAddChild();
      v74 = *(v33 + 16);

      AGSubgraphApply();

      *(v73 + v92) = v33;
      v34 = v94;
LABEL_34:
      v68 = v97;
      v75 = v95;
LABEL_37:

      DynamicViewList.Item.list.getter(v103);
      v76 = v93;
      (*(v68 + 16))(v93, v75, v34);
      if (AGGraphGetCurrentAttribute() != *MEMORY[0x1E698D3F8])
      {
        type metadata accessor for ViewList();

        TransactionID.init<A>(context:)(&v102);
        v105 = type metadata accessor for DynamicViewList.WrappedList(0, v36, v100, v77);
        swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedList, v105);
        v106 = v78;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
        DynamicViewList.WrappedList.init(base:item:lastID:lastTransaction:)(v103, v33, v76, &v102, boxed_opaque_existential_1);
        AGGraphSetOutputValue();

        v80 = *(v68 + 8);
        v80(v75, v34);
        v80(v35, v34);
        return __swift_destroy_boxed_opaque_existential_1(v104);
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

    ++v47;
    if (v51 == MEMORY[0x193ABF2C0](v42, v44))
    {
      goto LABEL_27;
    }
  }

  v33 = _ArrayBuffer._getElementSlowPath(_:)();
  swift_unknownObjectRelease();
  v50 = __OFADD__(v48, 1);
  v51 = v47 - 3;
  if (!v50)
  {
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
LABEL_27:

  v52 = v101;
  if (AGSubgraphIsValid())
  {
    v53 = AGSubgraphGetGraph();
    v54 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v55 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in DynamicViewList.updateValue()(v52, v36, v100, v104);
    AGSubgraphSetCurrent();

    v56 = v104[0];
    v57 = BYTE4(v104[0]);
    AGGraphSetUpdate();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute != *MEMORY[0x1E698D3F8])
    {
      v83 = CurrentAttribute;
      v84 = v56;
      v85 = v57;
      v86 = v54;
      v59 = v91;
      v60 = v94;
      (*(v97 + 16))(v91, v35);
      v61 = v98;
      v62 = *(v98 + 48);
      v63 = v89;
      if (v62(v59, 1, v89) == 1)
      {
        v64 = v90;
        (*(v100 + 48))();
        v65 = v91;
        v66 = v62(v91, 1, v63);
        v67 = v64;
        v34 = v60;
        v68 = v97;
        v69 = v88;
        if (v66 != 1)
        {
          (*(v97 + 8))(v65, v34);
        }
      }

      else
      {
        v67 = v90;
        (*(v61 + 32))(v90, v59, v63);
        v34 = v60;
        v68 = v97;
        v69 = v88;
      }

      swift_allocObject();

      v33 = specialized DynamicViewList.Item.init(type:owner:list:id:isUnary:subgraph:allItems:)(v24, v83, v84, v67, v85, v86, v69);
      (*(v61 + 8))(v67, v63);
      *(v101 + v92) = v33;
      v75 = v95;
      v36 = v99;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  v105 = &type metadata for EmptyViewList;
  lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
  v106 = v70;
  type metadata accessor for ViewList();
  AGGraphSetOutputValue();

  v71 = *(v97 + 8);
  v72 = v94;
  v71(v95, v94);
  v71(v35, v72);
  return __swift_destroy_boxed_opaque_existential_1(v104);
}

void type metadata accessor for (Any.Type, UniqueID?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Any.Type, UniqueID?))
  {
    type metadata accessor for Any.Type();
    type metadata accessor for UniqueID?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Any.Type, UniqueID?));
    }
  }
}

unint64_t ConditionalMetadata.childInfo<A>(ptr:emptyType:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *(v5 + 24);
  v23 = 0;
  v24 = 0;
  v22 = *(v5 + 8);
  v11 = *(a4 + 24);
  v16 = *(a4 + 16);
  v17 = a5;
  v18 = v11;
  v19 = &v24;
  v20 = &v23;
  v21 = v9;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v9);
  v13 = type metadata accessor for ConditionalTypeDescriptor(0, v16, v11, v12);
  ConditionalTypeDescriptor.project(at:baseIndex:_:)(a2, 0, partial apply for closure #1 in ConditionalMetadata.childInfo<A>(ptr:emptyType:), &v15, v13);
  result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v24 >= *(v10 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v23)
  {
    result = v23;
  }

  else
  {
    result = a3;
  }

  *a1 = *(v10 + 8 * v24 + 32);
  *(a1 + 8) = 0;
  return result;
}

uint64_t ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = *v5 >> 62;
  if (!v10)
  {
    v20 = v5[1];
    v32 = *v5;
    v33 = v20;
    v18 = a2;
    v19 = a1;
    return a3(v18, &v32, v19);
  }

  v12 = *v5 & 0x3FFFFFFFFFFFFFFFLL;
  if (v10 == 1)
  {
    v14 = *((*v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((*v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *(v12 + 32);
    v16 = *(v12 + 40);
    EnumTag = AGTypeGetEnumTag();
    if (EnumTag == 1)
    {
      v32 = 0;
      v33 = 0;
      v18 = a2;
      v19 = 0;
      return a3(v18, &v32, v19);
    }

    v29 = EnumTag;
    AGTypeProjectEnumData();
    closure #1 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, v13, v15, v16, a2, a3, a4, *(a5 + 16), *(a5 + 24));
    v27 = v14;
    v28 = v29;
  }

  else
  {
    v22 = *((*v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = *(v12 + 24);
    v23 = *(v12 + 32);
    v24 = *(v12 + 40);
    v30 = *(v12 + 48);
    v25 = *(v12 + 64);
    v26 = AGTypeGetEnumTag();
    AGTypeProjectEnumData();
    closure #2 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, v26, v31, v23, v24, a2, a3, a4, v30, *(&v30 + 1), v25, *(a5 + 16), *(a5 + 24));
    v27 = v22;
    v28 = v26;
  }

  return MEMORY[0x1EEDEECD8](v27, v28, a1);
}

uint64_t closure #1 in ConditionalMetadata.childInfo<A>(ptr:emptyType:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  *a4 = a1;
  if (v9)
  {
    type metadata accessor for TypeConformance(0, a6, *(a8 + 8), a4);
    result = TypeConformance.type.getter();
  }

  else
  {
    result = 0;
  }

  *a5 = result;
  return result;
}

uint64_t closure #1 in ObservationCenter._withObservation<A>(do:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 848);
  *(StatusReg + 848) = a1;
  result = a2();
  *(StatusReg + 848) = v8;
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

void closure #1 in closure #1 in UnwrapConditional.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v11 = *(a7 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v17 + 32) == v18)
  {
    if (v12)
    {
      v19 = v13;
      v20 = (*(v11 + 16))(v16, v12, v13, v14);
      MEMORY[0x1EEE9AC00](v20);
      v25[0] = a5;
      v25[1] = a6;
      v25[2] = v19;
      v25[3] = a8;
      v21 = type metadata accessor for UnwrapConditional(0, v25);
      *(&v24 - 2) = v21;
      swift_getWitnessTable(protocol conformance descriptor for UnwrapConditional<A, B, C>, v21);
      *(&v24 - 1) = v22;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in StatefulRule.value.setter, (&v24 - 4), v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v23);
      (*(v11 + 8))(v16, v19);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t UnwrapConditional.updateValue()(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  v12 = *(a1 + 16);
  v13 = v3;
  v14 = *(a1 + 32);
  v15 = v1;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in UnwrapConditional.updateValue(), v11, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v8);
  return (*(v4 + 8))(v6, v3);
}

unint64_t closure #1 in UnwrapConditional.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 8);
  v13[6] = a2;
  v14 = v9;
  v15 = *(a2 + 16);
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v9);
  v11 = type metadata accessor for ConditionalTypeDescriptor(0, a3, a6, v10);
  ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, 0, partial apply for closure #1 in closure #1 in UnwrapConditional.updateValue(), v13, v11);
  return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v14);
}

unint64_t closure #1 in _ConditionalContent<>.childInfo(metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t *a7@<X8>)
{
  type metadata accessor for ConditionalMetadata<ViewDescriptor>(0, a2, a3, a4);
  v12 = v11;
  v14 = type metadata accessor for _ConditionalContent(0, a5, a6, v13);
  result = ConditionalMetadata.childInfo<A>(ptr:emptyType:)((a7 + 1), a1, &type metadata for EmptyView, v12, v14);
  *a7 = result;
  return result;
}

uint64_t getEnumTag for _ConditionalContent.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

uint64_t closure #2 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a6;
  v16 = result;
  if (a2 != 1 && (v15 = a6 + a5, __OFADD__(a6, a5)))
  {
    __break(1u);
  }

  else
  {
    v17 = type metadata accessor for ConditionalTypeDescriptor(0, a12, a13, a4);
    return ConditionalTypeDescriptor.project(at:baseIndex:_:)(v16, v15, a7, a8, v17);
  }

  return result;
}

void destructiveInjectEnumTag for _ConditionalContent.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v5 = *(*(a3 + 24) - 8);
    if (*(v5 + 64) <= *(*(*(a3 + 16) - 8) + 64))
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = *(v5 + 64);
    }

    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    v3 = *(*(a3 + 24) - 8);
    v4 = *(*(*(a3 + 16) - 8) + 64);
    if (*(v3 + 64) > v4)
    {
      v4 = *(v3 + 64);
    }

    a1[v4] = a2;
  }
}

uint64_t partial apply for closure #1 in ObservationCenter._withObservation<A>(do:)(uint64_t a1, void *a2)
{
  return closure #1 in ObservationCenter._withObservation<A>(do:)(a1, *(v2 + 24), *(v2 + 32), *(v2 + 16), a2);
}

{
  v5 = *(v2 + 24);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 848);
  *(StatusReg + 848) = a1;
  result = v5();
  *(StatusReg + 848) = v7;
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

char *DynamicViewList.Item.bindID(_:)()
{
  v1 = *(*v0 + 136);
  v2 = *(v0 + *(*v0 + 144));
  v3 = v0[4];
  v4 = *(v0 + *(*v0 + 160));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(v0 + v1, v2, v4, v3, AssociatedTypeWitness);
}

uint64_t DynamicViewList.Transform.apply(sublist:)(uint64_t a1, uint64_t a2)
{
  DynamicViewList.Item.bindID(_:)();

  MEMORY[0x193ABF170](v3);
  if (*((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t DynamicViewList.Item.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();

  return outlined init with copy of AnyTrackedValue(Value, a1);
}

uint64_t partial apply for closure #1 in _ConditionalContent<>.makeChildViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  v10 = type metadata accessor for _ConditionalContent(0, *(v5 + 16), *(v5 + 24), a4);
  return ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)(a1, v8, v9, v10, x8_0);
}

void type metadata accessor for MutableBox<CachedEnvironment>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for MutableBox<CachedEnvironment>)
  {
    v4 = type metadata accessor for MutableBox(0, &type metadata for CachedEnvironment, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>);
    }
  }
}

uint64_t ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[2];
  outlined init with copy of _ViewListInputs(a3, v23);
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = a2;
  v31 = 0;
  v32 = 0;
  outlined init with take of _ViewListInputs(v23, &v33);
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v36 = 255;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v14 = v27;
  v15 = v28;
  v22[2] = a4;
  v22[3] = &v27;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v11);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v14);
  specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, 0, partial apply for closure #1 in ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:), v22, v14, v15);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v14);
  outlined init with copy of _ViewListOutputs?(v34, v23);
  if (BYTE8(v24) == 0xFF)
  {
    static _ViewListOutputs.emptyViewList(inputs:)(a3, a5);
    if (BYTE8(v24) != 0xFF)
    {
      outlined destroy of _ViewListOutputs?(v23);
    }
  }

  else
  {
    v18 = v25;
    *(a5 + 32) = v24;
    *(a5 + 48) = v18;
    *(a5 + 64) = v26;
    v19 = v23[1];
    *a5 = v23[0];
    *(a5 + 16) = v19;
  }

  List = type metadata accessor for ConditionalMetadata<>.MakeList(0, a4, v16, v17);
  return (*(*(List - 8) + 8))(&v27, List);
}

uint64_t initializeWithCopy for UnwrapConditional(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t outlined init with copy of _ViewListOutputs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _ViewListOutputs?, &type metadata for _ViewListOutputs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized DynamicViewList.Item.init(type:owner:list:id:isUnary:subgraph:allItems:)(uint64_t a1, int a2, int a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v13 = *v8;
  *(v8 + 4) = a1;
  *&v8[*(v13 + 144)] = a2;
  *&v8[*(*v8 + 152)] = a3;
  v14 = *(*v8 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8[v14], a4, AssociatedTypeWitness);
  v8[*(*v8 + 160)] = a5;
  *&v8[*(*v8 + 168)] = a7;
  *(v8 + 6) = 1;
  *(v8 + 2) = a6;
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  type metadata accessor for Array();

  v16 = a6;

  Array.append(_:)();
  swift_endAccess();

  return v8;
}

uint64_t DynamicViewList.WrappedList.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *a4;
  v23 = *(a4 + 8);
  v22[0] = *(v7 + 40);
  v22[1] = v9;
  v10 = *(a7 + 24);
  v14 = *(a7 + 16);
  v15 = v10;
  v16 = a1;
  v17 = v8;
  v18 = a3;
  v19 = BYTE4(a3) & 1;
  v20 = a5;
  v21 = a6;
  v11 = type metadata accessor for DynamicViewList.Transform(0, v14, v10, a4);

  _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(v22, partial apply for closure #1 in DynamicViewList.WrappedList.applyNodes(from:style:list:transform:to:), &v13, MEMORY[0x1E69E6370], v11, &protocol witness table for DynamicViewList<A>.Transform);

  return v24;
}

void TransactionID.init<A>(context:)(uint64_t *a2@<X8>)
{
  v3 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  *a2 = Counter;
}

uint64_t DynamicViewList.WrappedList.init(base:item:lastID:lastTransaction:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *a4;
  outlined init with take of _ViewList_Elements(a1, a5);
  *(a5 + 40) = a2;
  v11 = type metadata accessor for DynamicViewList.WrappedList(0, *(v8 + 112), *(v8 + 120), v10);
  v12 = *(v11 + 40);
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a3, v13);
  *(a5 + *(v11 + 44)) = v9;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicViewList.WrappedList(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = *(v6 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 > 7 || v10 != 0 || ((v9 + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    v15 = *(a2 + 3);
    *(a1 + 24) = v15;
    (**(v15 - 8))(a1, a2);
    v16 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16 + 1;
    v18 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v16;
    v19 = v18 + 1;
    v20 = *(v6 + 48);

    if (v20(v17, 1, v14))
    {
      memcpy(v19, v17, v9);
    }

    else
    {
      (*(v6 + 16))(v19, v17, v14);
      (*(v6 + 56))(v19, 0, 1, v14);
    }

    *((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

void lazy protocol witness table accessor for type MergedEnvironment and conformance MergedEnvironment()
{
  if (!lazy protocol witness table cache variable for type MergedEnvironment and conformance MergedEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for MergedEnvironment, &unk_1F009D778, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MergedEnvironment and conformance MergedEnvironment);
  }
}

uint64_t _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5()
{
  v1 = &static GraphReuseOptions.overrideValue;
  result = swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      result = swift_once();
    }

    v1 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v1 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v3 = *v0;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v3, v10);
    if (v4)
    {
      v5 = (v4 + 72);
      v6 = (v4 + 80);
    }

    else
    {
      v5 = &static ReusableInputs.defaultValue;
      v6 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v7 = *v5;
    v8 = *v6;

    if (!v8 || *(v8 + 16) != &type metadata for _ViewInputs.ScrapeableParentID)
    {
      v9 = swift_allocObject();
      v9[2] = &type metadata for _ViewInputs.ScrapeableParentID;
      v9[3] = &protocol witness table for _ViewInputs.ScrapeableParentID;
      v9[4] = v8;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v0, v7 | v10, v9);
    }
  }

  return result;
}

uint64_t sub_18D07C7D4()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.ScrapeableParentID>, &type metadata for _ViewInputs.ScrapeableParentID, &protocol witness table for _ViewInputs.ScrapeableParentID, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.ScrapeableParentID, 0, v6);
  }

  return result;
}

uint64_t _ViewInputs.pushModifierBody<A>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 0;
  v4 = type metadata accessor for BodyInput(0, a4, a3, a4);
  return _ViewInputs.append<A, B>(_:to:)(v6, v4, v4, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
}

void *static PlaceholderContentView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
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
  v9 = type metadata accessor for PlaceholderContentView(0, a3, a3, a5);
  v13 = v6;
  return static ViewModifierContentProvider.providerMakeView(view:inputs:)(v11, v9, a4, &protocol witness table for PlaceholderContentView<A>);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for DisplayList.Options)
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

uint64_t destroy for AnimatableAttribute(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + ((((v2 + (*(v4 + 80) | 7) + 4) & ~*(v4 + 80) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 4) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v5, AssociatedTypeWitness);
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AGAttribute>(0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x193AC1150](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t type metadata completion function for AnimatableAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AnimatableAttributeHelper(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnimatableAttribute<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AGAttribute>(0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x193AC1150](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x193AC1170](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void lazy protocol witness table accessor for type CGSize and conformance CGSize(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void type metadata accessor for _SetStorage<AGAttribute>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<AGAttribute>)
  {
    type metadata accessor for AGAttribute(255);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, MEMORY[0x1E698D3E8]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<AGAttribute>);
    }
  }
}

void lazy protocol witness table accessor for type MergedTransaction and conformance MergedTransaction()
{
  if (!lazy protocol witness table cache variable for type MergedTransaction and conformance MergedTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for MergedTransaction, &unk_1F009D7F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MergedTransaction and conformance MergedTransaction);
  }
}

uint64_t specialized Set._Variant.insert(_:)(unsigned int *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = MEMORY[0x193AC1150](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != v3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = v3;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unsigned int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x193AC1150](*(*v3 + 40), a1, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for AGAttribute(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

_DWORD *initializeWithCopy for AnimatableAttribute(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = v4 + v9;
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = (v10 & ~(v8 | 7));
  *v12 = *v11;
  v12[1] = v11[1];
  v13 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + v8 + 4) & ~v8);
  v16 = ((v14 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness))
  {
    v17 = *(v7 + 84);
    v18 = *(v7 + 64);
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v15, v16, v19);
  }

  else
  {
    (*(v7 + 16))(v15, v16, AssociatedTypeWitness);
    v21 = *(v7 + 56);
    v20 = v7 + 56;
    v21(v15, 0, 1, AssociatedTypeWitness);
    v17 = *(v20 + 28);
    v18 = *(v20 + 8);
  }

  if (v17)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + 1;
  }

  v23 = ((v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>)
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(255, &lazy cache variable for type metadata for PlaceholderContentView<OpacityTransition>, &type metadata for OpacityTransition, type metadata accessor for PlaceholderContentView);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for OpacityRendererEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>);
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>(255);
    v4[0] = &protocol witness table for PlaceholderContentView<A>;
    v4[1] = &protocol witness table for OpacityRendererEffect;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>);
  }
}

void type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for DynamicContainer._ItemInfo(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for ViewListTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TransitionHelper(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for TransitionHelper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ViewListTransition<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ViewListTransition<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance RendererEffectDisplayList<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t specialized closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(uint64_t *a1, void *a2, int a3, int a4, void *a5, int a6, int a7)
{
  v63 = a7;
  v64 = a6;
  v65 = a5;
  LODWORD(v7) = a4;
  LODWORD(v8) = a3;
  v11 = *(a1 + 5);
  v84[0] = *(a1 + 3);
  v84[1] = v11;
  v12 = *(a1 + 9);
  v84[2] = *(a1 + 7);
  v84[3] = v12;
  v84[4] = *(a1 + 11);
  v85 = *(a1 + 26);
  v13 = v11;
  v67 = *(&v84[0] + 1);
  v14 = *&v84[0];
  v15 = *(a1 + 3);
  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  *(v83 + 12) = *(a1 + 92);
  v82 = v16;
  v83[0] = v17;
  v81 = v15;
  swift_beginAccess();
  v18 = v13[3];
  v86[1] = v13[2];
  v86[2] = v18;
  v19 = v13[5];
  v86[3] = v13[4];
  v86[4] = v19;
  v86[0] = v13[1];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v69 = swift_allocObject();
  memmove((v69 + 16), v13 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v84, &v75);
  outlined init with copy of CachedEnvironment(v86, &v75);

  v20 = *a1;
  v22 = a1[1];
  v21 = a1[2];
  v70[4] = v7;
  v70[5] = v8;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v23 = v75;

  v68 = v14;
  v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, v23);
  if (v24)
  {
    v25 = (v24 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v25 = &static ArchivedViewInput.defaultValue;
  }

  LODWORD(v26) = *v25 & 1;
  v27 = a2[8];

  if ((_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v27) & 1) == 0)
  {

    v30 = 0;
    goto LABEL_23;
  }

  if (one-time initialization token for opacity != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v66 = v22;
    v28 = static AnyTransition.opacity;
    v29 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v27);
    v30 = v29;
    if (v26)
    {
    }

    else
    {
      v31 = (*(*v29 + 96))(v29);

      if (v31)
      {

        v30 = 0;
        v22 = v66;
        goto LABEL_23;
      }
    }

    v61 = v28;
    v62 = v21;

    AGGraphClearUpdate();
    swift_beginAccess();
    Value = AGGraphGetValue();
    v35 = *Value;
    v34 = Value[1];
    if (v34)
    {

      v36 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v35);
    }

    else
    {
      v36 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*Value);
    }

    if (v36 == 2)
    {
      v75 = v35;
      v76 = v34;
      LOBYTE(v72[0]) = 3;
      v36 = EnvironmentValues.accessibilitySettingEnabled(_:)(v72);
    }

    v22 = v66;
    v37 = AGGraphSetUpdate();
    if ((*(*v30 + 104))(v37))
    {
      v21 = v62;
      if (v36)
      {
        v38 = v61;

        v30 = v38;
      }

      else
      {
      }
    }

    else
    {

      v21 = v62;
    }

LABEL_23:
    v66 = &v61;
    LODWORD(v62) = v8;
    v74[0] = v8;
    v74[1] = 0;
    MEMORY[0x1EEE9AC00](v32);
    v52[2] = partial apply for closure #1 in closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:);
    v52[3] = v70;
    v53 = v7;
    v54 = v20;
    v55 = v22;
    v56 = v21;
    v22 = v21;
    v57 = v74;
    v58 = v30;
    v59 = a2;
    v60 = v26;
    v27 = swift_allocObject();
    v8 = v52;
    *(v27 + 16) = partial apply for closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:);
    *(v27 + 24) = v52;
    v71[0] = 0;
    MEMORY[0x1EEE9AC00](v27);
    v51[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
    v51[3] = v39;
    v75 = a2[7];
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v40 = a2[5];
      v26 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v40);
      v75 = v68;
      v76 = v67;
      v77 = v69;
      v78 = v81;
      v79 = v82;
      v80[0] = v83[0];
      *(v80 + 12) = *(v83 + 12);
      (*(v26 + 16))(v72, v71, &v75, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v51, v40, v26);
      v21 = *(&v72[0] + 1);
      v7 = *&v72[0];
    }

    else
    {
      v21 = 0;
      v7 = 0;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v75 = a2[7];

    v27 = _ViewList_SublistSubgraphStorage.retain()();

    outlined init with copy of DynamicViewListItem(a2, v72);
    v42 = a2[5];
    v8 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v42);
    v43 = (v8[1])(v42, v8);
    if (v43 < 0xFFFFFFFF80000000)
    {
      goto LABEL_36;
    }

    v44 = v43;
    if (v43 <= 0x7FFFFFFF)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  if (v7)
  {
    v45 = HIDWORD(v21);
  }

  else
  {
    v45 = *MEMORY[0x1E698D3F8];
  }

  if (!v7)
  {
    LODWORD(v21) = 0;
    v7 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for DynamicContainer._ItemInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainer._ItemInfo);
  v46 = swift_allocObject();
  v47 = v72[0];
  *(v46 + 104) = v72[1];
  *(v46 + 120) = v72[2];
  *(v46 + 136) = v73[0];
  *(v46 + 149) = *(v73 + 13);
  *(v46 + 88) = v47;
  *(v46 + 168) = v27;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 56) = 0;
  *(v46 + 80) = 0;
  *(v46 + 84) = 3;
  v48 = v65;
  *(v46 + 16) = v65;
  *(v46 + 24) = v62;
  *(v46 + 28) = v44;
  *(v46 + 32) = v7;
  *(v46 + 40) = v21;
  *(v46 + 44) = v45;
  *(v46 + 48) = v63 & 1;
  swift_beginAccess();
  *(v46 + 84) = v64;
  v75 = v68;
  v76 = v67;
  v77 = v69;
  v78 = v81;
  v79 = v82;
  v80[0] = v83[0];
  *(v80 + 12) = *(v83 + 12);
  v49 = v48;
  outlined destroy of _ViewInputs(&v75);
  return v46;
}

void *closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *)@<X3>, unsigned int a5@<W5>, uint64_t a6@<X6>, void (*a7)(uint64_t (*)(), double)@<X7>, void *a8@<X8>, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, char a13)
{
  v13 = HIDWORD(a6);
  v81 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 48);
  v18 = *(a1 + 16);
  v76 = *(a1 + 32);
  v77 = v17;
  v19 = *(a1 + 48);
  v78 = *(a1 + 64);
  v20 = *(a1 + 16);
  v75[0] = *a1;
  v75[1] = v20;
  v71 = v76;
  v72 = v19;
  v73 = *(a1 + 64);
  v79 = *(a1 + 80);
  v21 = v20;
  v22 = BYTE4(v76);
  v74 = *(a1 + 80);
  v69 = v75[0];
  v70 = v18;
  swift_beginAccess();
  v23 = v21[3];
  v80[1] = v21[2];
  v80[2] = v23;
  v24 = v21[5];
  v80[3] = v21[4];
  v80[4] = v24;
  v80[0] = v21[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v25 = swift_allocObject();
  memmove((v25 + 16), v21 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v75, &v40);
  outlined init with copy of CachedEnvironment(v80, &v40);

  *&v70 = v25;
  a4(&v69);
  if ((v22 & 0x20) != 0)
  {
    if (*MEMORY[0x1E698D3F8] == v13)
    {
      __break(1u);
    }

    *&v40 = __PAIR64__(v13, a5);
    *(&v40 + 1) = *a10;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    DWORD2(v73) = AGGraphCreateOffsetAttribute2();
    LODWORD(v73) = AGGraphCreateOffsetAttribute2();
    *&v71 = vorr_s8(*&v71, 0x200000018);
  }

  if (!a11)
  {
    v65 = v71;
    v66 = v72;
    v67 = v73;
    v68 = v74;
    v63 = v69;
    v64 = v70;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v69;
    v58 = v70;
    outlined init with copy of _ViewInputs(&v63, &v40);
    a2(&v37, &v57);
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v40 = v57;
    v41 = v58;
    v32 = outlined destroy of _ViewInputs(&v40);
    v29 = v37;
    v31 = v38;
    v30 = v39;
    goto LABEL_8;
  }

  v26 = *a10;
  outlined init with copy of DynamicViewListItem(a12, &v40 + 8);
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  *&v40 = __PAIR64__(v26, a5);
  v47 = v70;
  v46 = v69;
  v51 = v74;
  v49 = v72;
  v48 = v71;
  v50 = v73;
  v52 = a2;
  v53 = a3;
  v54 = 0;
  v55 = 0;
  v56 = a13 & 1;
  v27 = *(*a11 + 80);

  outlined init with copy of _ViewInputs(&v63, &v57);
  result = v27(&v40, &unk_1F007DB60, &protocol witness table for DynamicLayoutViewAdaptor.MakeTransition);
  v29 = v54;
  if (v54)
  {
    v31 = v55;
    v30 = HIDWORD(v55);

    outlined destroy of DynamicLayoutViewAdaptor.MakeTransition(&v40);

LABEL_8:
    v33 = MEMORY[0x1EEE9AC00](v32);
    a7(partial apply for closure #1 in closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:), v33);
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v40 = v69;
    v41 = v70;
    result = outlined destroy of _ViewInputs(&v40);
    ++a10[1];
    *a8 = v29;
    a8[1] = v31 | (v30 << 32);
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(_DWORD *a1, int a2, int a3)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type DynamicTransaction and conformance DynamicTransaction();
  a1[7] = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type DynamicViewPhase and conformance DynamicViewPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  a1[6] = result;
  v5 = a1[8];
  if ((v5 & 0x40) == 0)
  {
    a1[8] = v5 | 0x40;
  }

  return result;
}

void lazy protocol witness table accessor for type DynamicTransaction and conformance DynamicTransaction()
{
  if (!lazy protocol witness table cache variable for type DynamicTransaction and conformance DynamicTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicTransaction, &unk_1F007B050, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicTransaction and conformance DynamicTransaction);
  }
}

void lazy protocol witness table accessor for type DynamicViewPhase and conformance DynamicViewPhase()
{
  if (!lazy protocol witness table cache variable for type DynamicViewPhase and conformance DynamicViewPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicViewPhase, &unk_1F007AFC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicViewPhase and conformance DynamicViewPhase);
  }
}

void lazy protocol witness table accessor for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutViewChildGeometry, &unk_1F007DAD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry);
  }
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21OpacityRendererEffectV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07OpacitycD0V_Tt3B5@<X0>(unsigned int a1@<W0>, void *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type MergedPhase and conformance MergedPhase()
{
  if (!lazy protocol witness table cache variable for type MergedPhase and conformance MergedPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for MergedPhase, &unk_1F009D878, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MergedPhase and conformance MergedPhase);
  }
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>);
  }
}

void type metadata accessor for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (id: DynamicContainerID, value: LayoutProxyAttributes), &type metadata for DynamicContainerID, &type metadata for LayoutProxyAttributes, "id value ");
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>);
    }
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a4 = v17;
        a5 = v16;
        a3 = v15;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ViewListTransition(0, a2, a3, a4);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v8;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v14 = type metadata accessor for TransitionHelper(0, a2, a3, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v20;
  if (*(v4 + 84))
  {
    v22 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v22 = *(v4 + 20);
  }

  v23 = *v4;
  (*(v9 + 16))(v12, v51, a2, v19);
  *v21 = v22;
  *(v21 + 4) = v23;
  (*(v9 + 32))(&v21[*(v14 + 44)], v12, a2);
  v21[*(v14 + 48)] = 1;
  if (v4[26])
  {
    DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)(v21, a2, v52, v24);
    return (*(v15 + 8))(v21, v14);
  }

  else
  {
    v47 = v15;
    (*(v15 + 16))(v17, v21, v14);
    v26 = *(v15 + 32);
    v27 = v14;
    v46 = v14;
    v28 = v48;
    v29 = v26(v48, v17, v27);
    MEMORY[0x1EEE9AC00](v29);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v31 = v50;
    *(&v45 - 4) = AssociatedTypeWitness;
    *(&v45 - 3) = v31;
    swift_getWitnessTable(protocol conformance descriptor for ViewListTransition<A>, v31);
    *(&v45 - 2) = v32;
    v33 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v45 - 6), v31, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
    (*(v49 + 8))(v28, v31);
    _GraphValue.init(_:)(LODWORD(v63[0]), &v53);
    v35 = *(v4 + 15);
    v36 = *(v4 + 19);
    v61[3] = *(v4 + 17);
    v61[4] = v36;
    v62 = *(v4 + 42);
    v61[0] = *(v4 + 11);
    v61[1] = *(v4 + 13);
    v61[2] = v35;
    v37 = *(v4 + 17);
    v57 = *(v4 + 15);
    v58 = v37;
    v59 = *(v4 + 19);
    v60 = *(v4 + 42);
    v38 = *(v4 + 13);
    v55 = *(v4 + 11);
    v56 = v38;
    v40 = v4[22];
    v39 = v4[23];
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v39;
    outlined init with copy of _ViewInputs(v61, v63);

    v42 = v4;
    static Transition.makeView(view:inputs:body:)(&v53, &v55, partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:), v41, a2, v54);

    v63[2] = v57;
    v63[3] = v58;
    v63[4] = v59;
    v64 = v60;
    v63[0] = v55;
    v63[1] = v56;
    outlined destroy of _ViewInputs(v63);
    (*(v47 + 8))(v21, v46);
    v43 = v54[0];
    v44 = v54[1];

    v42[24] = v43;
    v42[25] = v44;
  }

  return result;
}

uint64_t sub_18D07FA50()
{

  return swift_deallocObject();
}

void *static Transition.makeView(view:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v47 = *(a2 + 32);
  v48 = v10;
  v12 = *(a2 + 48);
  v49 = *(a2 + 64);
  v13 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v13;
  v42 = v47;
  v43 = v12;
  v44 = *(a2 + 64);
  v14 = *a1;
  v50 = *(a2 + 80);
  v45 = *(a2 + 80);
  v40 = v46[0];
  v41 = v11;
  v15 = type metadata accessor for PlaceholderContentView(0, a5, a3, a4);
  outlined init with copy of _ViewInputs(v46, &v51);
  _ViewInputs.pushModifierBody<A>(_:body:)(v15, a3, a4, v15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  v51 = v40;
  v52 = v41;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v32 = v53;
  v33 = v54;
  v34 = v55;
  v35 = v56;
  v30 = v51;
  v31 = v52;
  v18 = v53;
  LODWORD(v32) = 0;
  LODWORD(v22[0]) = v14;
  v36[0] = v51;
  v36[1] = v52;
  v37 = v56;
  v36[3] = v54;
  v36[4] = v55;
  v36[2] = v32;
  v26 = v32;
  v27 = v54;
  v28 = v55;
  v29 = v56;
  v24 = v51;
  v25 = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v51, v38);
  outlined init with copy of _ViewInputs(v36, v38);
  v20(v22, &v24, AssociatedTypeWitness, AssociatedConformanceWitness);
  v38[2] = v26;
  v38[3] = v27;
  v38[4] = v28;
  v39 = v29;
  v38[0] = v24;
  v38[1] = v25;
  outlined destroy of _ViewInputs(v38);
  LODWORD(v32) = v18;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v30);
    AGSubgraphEndTreeElement();
  }

  v22[2] = v42;
  v22[3] = v43;
  v22[4] = v44;
  v23 = v45;
  v22[0] = v40;
  v22[1] = v41;
  outlined destroy of _ViewInputs(v22);
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  return outlined destroy of _ViewInputs(&v24);
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

void lazy protocol witness table accessor for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>()
{
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for AnimatableAttribute);
    swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>);
  }
}

uint64_t destroy for _ViewList_Sublist(void *a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 4);
}

uint64_t destroy for _ViewList_Node(uint64_t *a1)
{
  v1 = *(a1 + 93);
  if (v1 >= 4)
  {
    v1 = *a1 + 4;
  }

  if (v1 > 1)
  {
    if (v1 != 2)
    {
    }
  }

  else
  {
    if (!v1)
    {
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 4);
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      if ((*(v4 + 8))(v3, v4) == &type metadata for ZIndexTraitKey)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v7);
      if (!--v1)
      {
        return result;
      }
    }

    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(&v10, MEMORY[0x1E69E63B0], v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

void type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t initializeWithCopy for DynamicViewListItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 16, a2 + 16, v5);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);

  return a1;
}

uint64_t destroy for DynamicViewListItem(void *a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t DynamicViewPhase.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v8 = *(result + 8);
  if (!*(v8 + 16))
  {
    goto LABEL_12;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(*(v8 + 56) + 8 * result);
  result = AGGraphGetValue();
  v11 = *result;
  if ((*result & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x193AC03C0](v10, v11);
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v12 = *(v11 + 8 * v10 + 32);
  }

  LODWORD(v11) = *(v12 + 80);

  result = AGGraphGetValue();
  a1 = *result;
  if ((*result & 0xC000000000000001) != 0)
  {
LABEL_15:

    v13 = MEMORY[0x193AC03C0](v10, a1);

    goto LABEL_11;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a1 + 8 * v10 + 32);

LABEL_11:
    swift_beginAccess();
    v14 = *(v13 + 84);

    v6 = (v6 + 2 * v11) | (v14 == 2);
LABEL_12:
    *a3 = v6;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (*(v2 + 76))
  {
    v3 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v3 = (v2 + 72);
  }

  v4 = *v3;
  v7[0] = *(v0 + 36);
  v7[1] = v4;
  v6 = *v1;
  return DynamicLayoutMap.subscript.setter(v7, &v6);
}

uint64_t destroy for DynamicLayoutViewAdaptor.MakeTransition(void *a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 3);
}

uint64_t specialized DynamicLayoutComputer.updateValue()(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  Value = AGGraphGetValue();
  result = *(v2 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 4);
    v7 = *(Value + 16);
    v9 = *Value;
    v8 = *(Value + 8);
    v10 = AGGraphGetValue();
    v11 = *(v10 + 8);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v14 = *(v10 + 44);
    v16[0] = *v10;
    v16[1] = v11;
    v17 = *(v10 + 16);
    v18 = v12;
    v19 = v13;
    v20 = v14;

    v15 = specialized DynamicLayoutMap.attributes(info:)(v16);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v9, v8, v7, v6, v15, a2);
  }

  return result;
}

uint64_t specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = result | (result << 32);

    a6(v6, v15, a4, v14, a5, a1, a2, a3 & 1);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = result | (result << 32);

    a6(v6, v15, a4, v14, a5, a1, a2, a3 & 1);
  }

  return result;
}

unsigned int *DynamicLayoutMap.subscript.getter@<X0>(unsigned int *result@<X0>, float32x2_t *a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = 0;
    v6 = *result;
    v5 = result[1];
    v7 = *v2 + 32;
    v8 = *(*v2 + 16);
    while (1)
    {
      v9 = v8 >> 1;
      v10 = v4 + (v8 >> 1);
      if (__OFADD__(v4, v8 >> 1))
      {
        break;
      }

      if (v10 >= v3)
      {
        goto LABEL_21;
      }

      v11 = (v7 + 16 * v10);
      result = *v11;
      if (result < v6 || ((v12 = v11[1], result == v6) ? (v13 = v12 < v5) : (v13 = 0), v13))
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_22;
        }

        v9 = v8 + ~v9;
      }

      v8 = v9;
      if (v9 <= 0)
      {
        if (v4 == v3)
        {
          goto LABEL_15;
        }

        if (v4 < v3)
        {
          v16 = (v7 + 16 * v4);
          if (v16->i32[0] == v6 && v16->i32[1] == v5)
          {
            *a2 = v16[1];
            return result;
          }

          goto LABEL_15;
        }

LABEL_23:
        __break(1u);
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_15:
  v14 = MEMORY[0x1E698D3F8];
  v15 = vld1_dup_f32(v14);
  *a2 = v15;
  return result;
}

uint64_t DynamicLayoutMap.subscript.setter(uint64_t result, unsigned int *a2)
{
  v3 = *result;
  v4 = *(result + 4);
  v5 = *a2;
  v6 = a2[1];
  v7 = *v2;
  v8 = *(*v2 + 16);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = v7 + 32;
  v11 = *(*v2 + 16);
  do
  {
    v12 = v11 >> 1;
    v13 = v9 + (v11 >> 1);
    if (__OFADD__(v9, v11 >> 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
LABEL_34:
      if (v9 < *(v7 + 16))
      {
        v20 = v7 + 16 * v9;
        *(v20 + 40) = v3;
        *(v20 + 44) = v4;
        *v2 = v7;
        goto LABEL_27;
      }

      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      goto LABEL_37;
    }

    v14 = (v10 + 16 * v13);
    v15 = *v14;
    if (*v14 < v5 || ((v16 = v14[1], v15 == v5) ? (v17 = v16 < v6) : (v17 = 0), v17))
    {
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_38;
      }

      v12 = v11 + ~v12;
    }

    v11 = v12;
  }

  while (v12 > 0);
  if (v9 == v8)
  {
    goto LABEL_15;
  }

  if (v9 >= v8)
  {
    goto LABEL_39;
  }

  if (*(v10 + 16 * v9) == __PAIR64__(v6, v5))
  {
    if (v3 == *MEMORY[0x1E698D3F8] && v4 == *MEMORY[0x1E698D3F8])
    {
      result = specialized Array.remove(at:)(v9, &v21);
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_15:
  if (v3 == *MEMORY[0x1E698D3F8] && v4 == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_27;
  }

  if (v8 >= v9)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_21:
  if (v3 != *MEMORY[0x1E698D3F8] || v4 != *MEMORY[0x1E698D3F8])
  {
    v9 = 0;
LABEL_26:
    result = specialized Array.replaceSubrange<A>(_:with:)(v9, v9, v5 | (v6 << 32), v3 | (v4 << 32));
  }

LABEL_27:
  v2[4] = 0;
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for CanTransitionTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t specialized closure #1 in DynamicContainerInfo.updateItems(disableTransitions:)(unint64_t CurrentAttribute, unint64_t *a2, uint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6, char a7, _BYTE *a8)
{
  v14 = *a2;
  v15 = *a3;
  if (*a3 < *a2)
  {
    goto LABEL_73;
  }

  v10 = a4;
  v16 = CurrentAttribute;
  v62 = CurrentAttribute;
  if (v14 != v15)
  {
    v61 = *(CurrentAttribute + 72);
    v9 = *(CurrentAttribute + 76);
    v59 = *a3;
    v58 = *(CurrentAttribute + 76);
    do
    {
      if (v14 >= v15)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v23 = *(v10 + 136);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AC03C0](v14);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (v14 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v8 = *(v23 + 8 * v14 + 32);
      }

      swift_beginAccess();
      outlined init with copy of DynamicViewListItem((v8 + 11), v68);
      if (v71)
      {
        if (v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v70 == v61)
        {
          v24 = v9;
        }

        else
        {
          v24 = 1;
        }

        if ((v24 & 1) == 0)
        {
LABEL_24:
          v63 = v14;
          v15 = v69;
          v25 = *(v16 + 8);
          if (v68[0] == *v16 && v68[1] == *(v16 + 4))
          {
            v26 = *(v69 + 16);
            if (v26 == *(v25 + 16))
            {
              if (!v26 || v69 == v25)
              {

LABEL_53:
                outlined destroy of DynamicViewListItem(v68);

                v10 = a4;
                if (v63 != *a2)
                {
                  v15 = a4 + 136;
                  specialized MutableCollection.swapAt(_:_:)(*a2, v63, v44);
                  *a5 = 1;
                }

                swift_beginAccess();
                outlined assign with copy of DynamicViewListItem(v62, (v8 + 11));
                swift_endAccess();
                swift_beginAccess();
                if (*(v8 + 84) == 1)
                {

                  v9 = a5;
                  v8 = a2;
                }

                else
                {
                  v8 = a2;
                  v15 = a4;
                  specialized DynamicContainerInfo.unremoveItem(at:)(*a2);

                  v9 = a5;
                  *a5 = 1;
                }

                v42 = a8;
                goto LABEL_59;
              }

              v27 = 0;
              v64 = v25;
              v65 = v15;
              while (1)
              {
                v28 = v15 + v27;
                v29 = *(v15 + v27 + 32);
                v30 = *(v28 + 40);
                v31 = *(v28 + 48);
                v32 = *(v28 + 52);
                v12 = *(v25 + v27 + 40);
                v33 = *(v25 + v27 + 48);
                v34 = *(v25 + v27 + 52);
                if (v29 == *(v25 + v27 + 32))
                {
                  v37 = v30 == v12 && v31 == v33;
                  v25 = v64;
                  v15 = v65;
                  if (!v37 || ((v32 ^ v34) & 1) != 0)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  v35 = *(*v29 + 112);
                  v66 = *(v25 + v27 + 52);
                  v67 = v32;

                  v11 = v35(v36);

                  v25 = v64;
                  v15 = v65;
                  if (v11 & 1) == 0 || v30 != v12 || v31 != v33 || ((v67 ^ v66))
                  {
                    goto LABEL_45;
                  }
                }

                v27 += 24;
                if (!--v26)
                {
                  goto LABEL_53;
                }
              }
            }
          }

LABEL_45:
          outlined destroy of DynamicViewListItem(v68);

          v15 = v59;
          v10 = a4;
          v14 = v63;
          v9 = v58;
          v16 = v62;
          goto LABEL_11;
        }
      }

      outlined destroy of DynamicViewListItem(v68);
LABEL_11:
      ++v14;
      swift_beginAccess();
    }

    while (v14 != v15);
  }

  LODWORD(v12) = *(v10 + 184) + 1;
  *(v10 + 184) = v12;
  v17 = AGGraphGetCurrentAttribute();
  if (v17 == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_77;
  }

  LODWORD(v9) = v17;
  v15 = *(v16 + 64);
  v11 = v16;
  if (_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v15))
  {
    if (one-time initialization token for opacity == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_82;
  }

  v20 = 0;
  v21 = 1;
  while (1)
  {
    v38 = AGSubgraphGetGraph();
    v39 = v11;
    v40 = AGSubgraphCreate2();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v11 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    specialized closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(v10, v39, v12, v9, v40, v21, v20 & 1);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    MEMORY[0x193ABF170]();
    if (*((*(v10 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v15 = v10 + 136;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = a5;
      v8 = a2;
      v42 = a8;
      v43 = *a3;
      if (*a2 < *a3)
      {
        v15 = v10 + 136;
        specialized MutableCollection.swapAt(_:_:)(*a2, v43, v41);
        v43 = *a3;
      }

      *a3 = v43 + 1;
      *a5 = 1;
LABEL_59:
      _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*(v62 + 64));
      v13 = v45;
      *v42 = *v42 & 1 | (v45 != 0.0);
      CurrentAttribute = *v8;
      v46 = *(v10 + 136);
      if ((v46 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((CurrentAttribute & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (CurrentAttribute < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_63;
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

LABEL_74:
    v47 = MEMORY[0x193AC03C0](CurrentAttribute);
LABEL_63:
    v48 = *(v47 + 64);

    if (v13 == v48)
    {
      goto LABEL_69;
    }

    v50 = *v8;
    v51 = *(v10 + 136);
    if ((v51 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v50 < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_68;
    }

    __break(1u);
LABEL_82:
    swift_once();
LABEL_6:
    v18 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v15);
    v19 = (*(*v18 + 96))(v18);

    v20 = v19 ^ 1;
    v21 = 1;
    if ((v19 & 1) == 0 && (a7 & 1) == 0)
    {
      AGGraphGetCurrentAttribute();
      v22 = AGCreateWeakAttribute();
      specialized static GraphHost.currentHost.getter();
      specialized GraphHost.continueTransaction<A>(_:)(v22);

      v21 = 0;
      v20 = 1;
      *(v10 + 196) = 1;
    }
  }

  v52 = MEMORY[0x193AC03C0](v50);
LABEL_68:
  *(v52 + 64) = v13;

  *v9 = 1;
LABEL_69:
  ++*v8;
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    while (1)
    {
      outlined init with copy of AnyTrackedValue(v4, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for TransitionTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, &type metadata for AnyTransition, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v13;
  }

  else
  {
LABEL_5:
  }

  return a1;
}

uint64_t closure #1 in DynamicLayoutViewAdaptor.foreachItem(items:_:)(uint64_t a1, void (*a2)(void *))
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  outlined init with copy of _ViewList_SubgraphElements(a1 + 32, v11);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 92);
  v10[0] = v5;
  v10[1] = v4;
  v11[6] = v6;
  v12 = v7;
  v13 = v8;

  a2(v10);
  outlined destroy of DynamicViewListItem(v10);
  return 1;
}

uint64_t ViewTraitCollection.AnyTrait.subscript.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 16))(&v9 - v6, v3, AssociatedTypeWitness, v5);
  return swift_dynamicCast();
}

BOOL TransitionBox.isIdentity.getter()
{
  v1 = *(*v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AssociatedTypeWitness == type metadata accessor for PlaceholderContentView(0, v1, v3, v4);
}

void type metadata accessor for ColorBox<Color.OpacityColor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ColorBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t one-time initialization function for opacity()
{
  _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(0, &lazy cache variable for type metadata for TransitionBox<OpacityTransition>, lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition, &type metadata for OpacityTransition, type metadata accessor for TransitionBox);
  result = swift_allocObject();
  static AnyTransition.opacity = result;
  return result;
}

void lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition()
{
  if (!lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition)
  {
    swift_getWitnessTable(protocol conformance descriptor for OpacityTransition, &type metadata for OpacityTransition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition);
  }
}

uint64_t ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UncheckedSendable(0, v11, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19[-v16];
  (*(v8 + 16))(v10, a1, a3, v15);
  UncheckedSendable.init(_:)(v10, a3, v17);
  if (a2)
  {
    closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v17, a3, a4);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
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
  (*(v63 + 48))();
  AGGraphSetUpdate();
  v52 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v52);
  v54 = type metadata accessor for ModifierBodyAccessor(0, v51, v49, v53);
  v59[-2] = v54;
  swift_getWitnessTable(protocol conformance descriptor for ModifierBodyAccessor<A>, v54);
  v59[-1] = v55;
  v56 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v50, partial apply for closure #2 in BodyAccessor.setBody(_:), &v59[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v57);
  return (*(v61 + 8))(v50, v56);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  type metadata accessor for _SetStorage<AGAttribute>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

SwiftUI::BloomFilter TypedElement.copy(before:after:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 248);
  swift_allocObject();

  return specialized TypedElement.init(value:before:after:)(v2 + v5, a1, a2);
}

uint64_t initializeWithCopy for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18D0824E0(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t _ViewInputs.materialSubstrate.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v3);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v3, v7);
    if (result)
    {
      v6 = (result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v6 = &static ArchivedViewInput.defaultValue;
    }

    v5 = 2 * (*v6 & 1);
  }

  *a1 = v5;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for UsingGraphicsRenderer)
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

void *static HStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v41 = a2[2];
  v42 = v9;
  v43 = a2[4];
  v44 = *(a2 + 20);
  v10 = a2[1];
  v39 = *a2;
  v40 = v10;
  v21 = a3;
  v22 = a4;
  v20[1] = v8;
  v11 = type metadata accessor for HStack(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v11, v12, v13);
  v14 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _HStackLayout, a3, &protocol witness table for _HStackLayout);
  _GraphValue.subscript.getter(partial apply for closure #1 in static HStack._makeView(view:inputs:), v14, v20);
  v15 = v20[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  v36 = v44;
  v17 = v41;
  LODWORD(v31) = 0;
  v19 = v15;
  v35[0] = v39;
  v35[1] = v40;
  v35[3] = v42;
  v35[4] = v43;
  v35[2] = v31;
  v25 = v31;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v23 = v39;
  v24 = v40;
  outlined init with copy of _ViewInputs(&v39, v37);
  outlined init with copy of _ViewInputs(v35, v37);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v19, &v23, &type metadata for _HStackLayout, a3, &protocol witness table for _HStackLayout, a4);
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v38 = v28;
  v37[0] = v23;
  v37[1] = v24;
  outlined destroy of _ViewInputs(v37);
  LODWORD(v31) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

uint64_t type metadata completion function for DerivedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_getAssociatedTypeWitness();
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for Attribute<DisplayList>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Attribute();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[24 * a1];
    v7 = *(v6 + 4);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 56, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[8 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 40, 8 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3[a1 + 32];
    memmove(&v3[a1 + 32], &v3[a1 + 33], v5 - 1 - a1);
    *(v3 + 2) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[32 * a1];
    v7 = *(v6 + 4);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 64, 32 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

Swift::Void __swiftcall PropertyList.Tracker.reset()()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 16));
  *(v1 + 24) = 0;
  if (*(*(v1 + 32) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 32);
    *(v1 + 32) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(0);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v1 + 32) = v6;
  }

  if (*(*(v1 + 40) + 16))
  {
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 40);
    *(v1 + 40) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(0);
    _NativeDictionary.removeAll(isUnique:)(v3);
    *(v1 + 40) = v7;
  }

  v4 = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 48);
  if (v4)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16));
  }

  else
  {
    *(v1 + 48) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(0, *(v5 + 24) >> 1);
  }

  *(v1 + 56) = 0;
  os_unfair_lock_unlock((v1 + 16));
}

_DWORD *initializeWithCopy for PlatformViewChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = *(v25 + 80);
  v27 = ((v22 + v26 + 16) & ~v26);
  v28 = ((v23 + v26 + 16) & ~v26);
  v29 = *(v25 + 48);

  if (v29(v28, 1, AssociatedTypeWitness))
  {
    v30 = *(v25 + 84);
    v31 = *(v25 + 64);
    if (v30)
    {
      v32 = *(v25 + 64);
    }

    else
    {
      v32 = v31 + 1;
    }

    memcpy(v27, v28, v32);
  }

  else
  {
    (*(v25 + 16))(v27, v28, AssociatedTypeWitness);
    v34 = *(v25 + 56);
    v33 = v25 + 56;
    v34(v27, 0, 1, AssociatedTypeWitness);
    v30 = *(v33 + 28);
    v31 = *(v33 + 8);
  }

  if (v30)
  {
    v35 = v31;
  }

  else
  {
    v35 = v31 + 1;
  }

  v36 = ((v27 + v35 + 7) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v28 + v35 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v38 = ((v36 + 11) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  *((v38 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v39 + 11) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectRetain();

  return a1;
}

uint64_t destroy for PlatformViewChild(uint64_t a1, uint64_t a2)
{
  v2 = ((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15;

  v3 = ((v2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = (v3 + *(v5 + 80) + 16) & ~*(v5 + 80);
  if (!(*(v5 + 48))(v6, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v6, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();
}

uint64_t static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v40 = a2[2];
  v41 = v9;
  v42 = a2[4];
  v43 = *(a2 + 20);
  v10 = a2[1];
  v38 = *a2;
  v39 = v10;
  v11 = v9;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v9))
  {
    v31[0] = v8;
    v12 = a2[1];
    v32 = *a2;
    v33 = v12;
    v34 = a2[2];
    swift_retain_n();
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14_OpacityEffectV_Tt1B5(v31, &v32);
    v13 = v31[0];

    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n(v13, &v38, a3, v8, a5);
  }

  v15 = a2[3];
  v34 = a2[2];
  v35 = v15;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v16 = a2[1];
  v32 = *a2;
  v33 = v16;
  v17 = swift_retain_n();
  a3(v30, v17, &v32);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v11))
  {
    v18 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v30[0]);
    type metadata accessor for OpacityViewResponder();
    v19 = swift_allocObject();
    *(v19 + 216) = 0x3FF0000000000000;
    v20 = v41;
    *(v19 + 120) = v40;
    *(v19 + 136) = v20;
    *(v19 + 152) = v42;
    v21 = v39;
    *(v19 + 88) = v38;
    *(v19 + 184) = 0u;
    *(v19 + 200) = 0u;
    *(v19 + 168) = v43;
    *(v19 + 104) = v21;
    v22 = AGSubgraphGetCurrent();
    if (!v22)
    {
      outlined init with copy of _ViewInputs(&v38, &v32);

      __break(1u);

      __break(1u);
      return result;
    }

    if ((v18 & 0x100000000) != 0)
    {
      v23 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v23 = v18;
    }

    v24 = MEMORY[0x1E69E7CC0];
    *(v19 + 176) = v22;
    *(v19 + 40) = v24;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = v24;
    *(v19 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v38, &v32);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v25 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v26 = *(v25 + 208);

    swift_beginAccess();
    *(v19 + 24) = v26;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v32 = __PAIR64__(v23, v8);
    *(&v32 + 1) = v19;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v27 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v32) = 0;
    PreferencesOutputs.subscript.setter(v27, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v38);
  MEMORY[0x1EEE9AC00](v28);
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v32 = v38;
  v33 = v39;
  (*(v29 + 8))(partial apply for implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:));

  *a5 = v30[0];
  a5[1] = v30[1];
  return result;
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14_OpacityEffectV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>()
{
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for AnimatableAttribute);
    swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnimatableAttribute<_OpacityEffect> and conformance AnimatableAttribute<A>);
  }
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA08_OpacityD0V_Tt3B503_s7a5UI14_nd3V9_e32View8modifier6inputs4bodyAA01_F7j6VAA11_kl6VyACG_s3_F6M29VAiA01_K0V_ANtctFZAiP_ANtcfU_ApnIIegnnr_AKyARGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  v71 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v67 = *(a2 + 32);
  v68 = v10;
  v69 = v11;
  v70 = *(a2 + 80);
  v12 = *(a2 + 16);
  v65 = *a2;
  v66 = v12;
  v48 = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 36);
  if ((v14 & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) != 0 && (v14 & 0x2000) == 0)
  {
    v15 = v6;
    outlined init with copy of _ViewInputs(a2, &v59);
    v16 = AGMakeUniqueID();
    _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

    v46 = v16;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v65, v16);

    v6 = v15;
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v59);
    v46 = 0;
  }

  v45 = *(a2 + 48);
  v17 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v45);
  if (v17)
  {
    v18 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v18;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v19 = *(a2 + 16);
    v59 = *a2;
    v60 = v19;
    swift_beginAccess();
    v20 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    DWORD1(v69) = v20;
  }

  v57[2] = v67;
  v57[3] = v68;
  v57[4] = v69;
  v58 = v70;
  v57[0] = v65;
  v57[1] = v66;
  v53 = v67;
  v54 = v68;
  v55 = v69;
  v56 = v70;
  v51 = v65;
  v52 = v66;
  v21 = outlined init with copy of _ViewInputs(v57, &v59);
  closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)(v21, &v51, a3, v6, v49);
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v59 = v51;
  v60 = v52;
  outlined destroy of _ViewInputs(&v59);
  if ((v17 & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = ++lastIdentity;
  if ((v14 & 0x100) == 0)
  {
    v23 = *MEMORY[0x1E698D3F8];
LABEL_11:
    v24 = *(a2 + 48);
    v53 = *(a2 + 32);
    v54 = v24;
    v55 = *(a2 + 64);
    v56 = *(a2 + 80);
    v25 = *(a2 + 16);
    v51 = *a2;
    v52 = v25;
    swift_beginAccess();
    v26 = CachedEnvironment.animatedPosition(for:)(&v51);
    v27 = *(a2 + 48);
    v53 = *(a2 + 32);
    v54 = v27;
    v55 = *(a2 + 64);
    v56 = *(a2 + 80);
    v28 = *(a2 + 16);
    v51 = *a2;
    v52 = v28;
    v29 = CachedEnvironment.animatedSize(for:)(&v51);
    swift_endAccess();
    v30 = *(v13 + 16);
    v31 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v49[0]);
    if ((v31 & 0x100000000) == 0)
    {
      v23 = v31;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v32 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v48, v51);
    if (v32)
    {
      v33 = *(v32 + 72);
    }

    else
    {
      v33 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v34 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v48, v51);
    if (v34)
    {
      v35 = *(v34 + 72);
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a2 + 60);
    v37 = *(a2 + 68);
    v38 = *(a2 + 76);
    *&v51 = __PAIR64__(a1, v22);
    *(&v51 + 1) = __PAIR64__(v29, v26);
    *&v52 = __PAIR64__(v37, v36);
    *(&v52 + 1) = __PAIR64__(v38, v30);
    LODWORD(v53) = v23;
    BYTE4(v53) = v33;
    *(&v53 + 1) = __PAIR64__(v35, v46);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>();
    v39 = Attribute.init<A>(body:value:flags:update:)();
    if ((v14 & 0x20) != 0)
    {
      v40 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v45);
      if (v14 & 0x2000) == 0 && (v40)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }

    LOBYTE(v51) = 0;
    PreferencesOutputs.subscript.setter(v39, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_24:
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v56 = v70;
    v51 = v65;
    v52 = v66;
    outlined destroy of _ViewInputs(&v51);

    *a6 = v49[0];
    a6[1] = v49[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v48, &v51);
  Attribute = AGWeakAttributeGetAttribute();
  v23 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v50[0] = v22;
    v43 = Attribute<A>.subscript.modify(&v51, Attribute);
    v44 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v50);
    (v43)(&v51, 0, v44);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

id closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, unsigned int a4@<W4>, void *a5@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = a2[1];
  v32 = a2[2];
  v33 = v7;
  v9 = a2[3];
  v34 = a2[4];
  v10 = a2[1];
  v30 = *a2;
  v31 = v10;
  v26 = v32;
  v27 = v9;
  v28 = a2[4];
  v35 = *(a2 + 20);
  v29 = *(a2 + 20);
  v24 = v30;
  v25 = v8;
  a3(v23, a1, &v24);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v33) & 1) == 0)
  {
LABEL_7:
    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v30);
    MEMORY[0x1EEE9AC00](v21);
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    result = (*(v22 + 8))(implicit closure #1 in closure #1 in static _OpacityEffect._makeView(modifier:inputs:body:)partial apply);
    *a5 = v23[0];
    a5[1] = v23[1];
    return result;
  }

  v11 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v23[0]);
  type metadata accessor for OpacityViewResponder();
  v12 = swift_allocObject();
  *(v12 + 216) = 0x3FF0000000000000;
  v13 = v33;
  *(v12 + 120) = v32;
  *(v12 + 136) = v13;
  *(v12 + 152) = v34;
  v14 = v31;
  *(v12 + 88) = v30;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 168) = v35;
  *(v12 + 104) = v14;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    if ((v11 & 0x100000000) != 0)
    {
      v16 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v16 = v11;
    }

    v17 = MEMORY[0x1E69E7CC0];
    *(v12 + 176) = result;
    *(v12 + 40) = v17;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = v17;
    *(v12 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(&v30, &v24);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v18 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v19 = *(v18 + 208);

    swift_beginAccess();
    *(v12 + 24) = v19;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v24 = __PAIR64__(v16, a4);
    *(&v24 + 1) = v12;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter();
    v20 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v24) = 0;
    PreferencesOutputs.subscript.setter(v20, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type OpacityResponderFilter and conformance OpacityResponderFilter()
{
  if (!lazy protocol witness table cache variable for type OpacityResponderFilter and conformance OpacityResponderFilter)
  {
    swift_getWitnessTable(protocol conformance descriptor for OpacityResponderFilter, &type metadata for OpacityResponderFilter, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type OpacityResponderFilter and conformance OpacityResponderFilter);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.OpacityAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028OpacityAccessibilityProviderV033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.OpacityAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t IDView.makeChildViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31 = a1;
  v33 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 + 16);
  *&v14 = v13;
  *(&v14 + 1) = v8;
  v34 = *(v12 + 32);
  v39[0] = v14;
  v39[1] = v34;
  v15 = type metadata accessor for CachedView(0, v39);
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30[-v16];
  outlined init with copy of _ViewListInputs(a2, v39);
  v18 = *(a3 + 52);
  _GraphInputs.pushStableID<A>(_:)(v5 + v18, v8);
  (*(v9 + 16))(v11, v5 + v18, v8);
  *v17 = v31;
  v40[0] = v13;
  v40[1] = v8;
  v41 = v34;
  v19 = type metadata accessor for CachedView(0, v40);
  (*(v9 + 32))(&v17[*(v19 + 52)], v11, v8);
  v38[2] = v13;
  v38[3] = v15;
  swift_getWitnessTable(protocol conformance descriptor for CachedView<A, B>, v15);
  v38[4] = v20;
  v21 = type metadata accessor for Attribute();
  v22 = MEMORY[0x1E69E73E0];
  v23 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v38, v15, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v24);
  (*(v32 + 8))(v17, v15);
  v25 = LODWORD(v40[0]);
  v36[2] = v13;
  v37 = v40[0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in Attribute.setValue(_:), v36, v13, v22, MEMORY[0x1E69E6370], v23, v26);
  _GraphValue.init(_:)(v25, v40);
  v27 = LODWORD(v40[0]);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v35[0] = v27;
  v28 = v34;
  (*(v34 + 32))(v35, v39, v13, v34);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v27, v13, v28);
  return outlined destroy of _ViewListInputs(v39);
}

uint64_t IDView.childInfo(metadata:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  (*(v6 + 16))(a1, v2 + *(a2 + 52), v5);
  (*(v6 + 56))(a1, 0, 1, v5);
  return v4;
}

uint64_t static IDView._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v10 = type metadata accessor for IDView(0, v13);
  LODWORD(v13[0]) = v9;
  swift_getWitnessTable(protocol conformance descriptor for IDView<A, B>, v10, v13[0]);
  return static DynamicView.makeDynamicViewList(metadata:view:inputs:)(v11, v13, a2, v10, v11, a7);
}

uint64_t initializeWithTake for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithCopy for Update.Action(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t static _TraitWritingModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, ValueMetadata *a5, uint64_t a6, uint64_t (*a7)(void, ValueMetadata *, uint64_t), uint64_t (*a8)(void, ValueMetadata *, uint64_t, double), const char *a9, uint64_t a10)
{
  v36 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  if (a5 != &type metadata for LayoutPriorityTraitKey || (*(a2 + 56) & 0x80) != 0)
  {
    v21 = outlined init with copy of _ViewListInputs(a2, v34);
    v31 = a3;
    v22 = *(a2 + 64);
    v33[0] = v15;
    v33[1] = v22;
    v23 = MEMORY[0x1EEE9AC00](v21);
    v29 = a8(0, a5, a6, v23);
    swift_getWitnessTable(a9, v29);
    v30 = v24;
    type metadata accessor for Attribute<ViewTraitCollection>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v33, a10, &v28, v29, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v35 = v32;
    v27 = _ViewListInputs.addTraitKey<A>(_:)(a5, a5);
    v31(v27, v34);
    return outlined destroy of _ViewListInputs(v34);
  }

  else
  {
    v16 = a7(0, &type metadata for LayoutPriorityTraitKey, a6);
    v17 = Attribute.unsafeBitCast<A>(to:)(&type metadata for LayoutPriorityLayout, v15, v16, &type metadata for LayoutPriorityLayout);
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      v19 = AGSubgraphBeginTreeElement();
      a3(v19, a2);
      specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v17, a2, &type metadata for LayoutPriorityLayout, &protocol witness table for LayoutPriorityLayout);

      return AGSubgraphEndTreeElement();
    }

    else
    {
      a3(ShouldRecordTree, a2);
      return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v17, a2, &type metadata for LayoutPriorityLayout, &protocol witness table for LayoutPriorityLayout);
    }
  }
}

uint64_t _ViewListInputs.addTraitKey<A>(_:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 72))
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80) & 1;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    ViewTraitKeys.insert<A>(_:)(result, a2);

    *(v2 + 72) = v3;
    *(v2 + 80) = v4;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TraitWritingModifier<A>.AddTrait(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _TraitWritingModifier<A>.AddTrait, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x193AC1170](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  (*(*a2 + 120))(v16);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      if (v11 == a2)
      {
        break;
      }

      v12 = *(*v11 + 112);

      LOBYTE(v12) = v12(a2);

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v9);

    return 0;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v14, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16[0];
    *a1 = a2;
    return 1;
  }
}

{
  v5 = *v2;
  v6 = MEMORY[0x193AC1170](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x193AC1170](*(*v3 + 40), result);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyKeyPath();
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x193AC1150](*(*v3 + 40), v4, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}