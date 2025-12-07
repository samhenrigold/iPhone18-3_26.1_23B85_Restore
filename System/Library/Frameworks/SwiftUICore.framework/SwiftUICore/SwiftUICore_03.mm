double one-time initialization function for bodyInvoke()
{
  *&result = 332052;
  static Signpost.bodyInvoke = xmmword_18DDB55D0;
  word_1ED539040 = 0;
  byte_1ED539042 = 3;
  return result;
}

unint64_t PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 8);
  v30 = *a1;
  v10 = v30;
  v12 = PreferenceKeys._index(of:)(a5);
  v13 = *(v30 + 16);
  v28 = v11;
  if (v12 == v13)
  {
    goto LABEL_4;
  }

  if (v12 >= v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(v30 + 16 * v12 + 32) == a5)
  {
    v15 = a3();
    LOBYTE(v30) = 0;
    v14 = v6;
    PreferencesOutputs.subscript.setter(v15, a5, a5, a6);
    v16 = 0;
  }

  else
  {
LABEL_4:
    v14 = v6;
    v15 = 0;
    v16 = 1;
  }

  result = (*(a6 + 40))(a5, a6);
  if ((result & 1) == 0)
  {
    return result;
  }

  v30 = v10;
  result = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
  v18 = *(v10 + 16);
  if (result == v18)
  {
    return result;
  }

  if (result >= v18)
  {
LABEL_17:
    __break(1u);
  }

  if (*(v10 + 16 * result + 32) == &type metadata for HostPreferencesKey)
  {
    if (v16)
    {
      v15 = a3();
    }

    v19 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(*v14);
    v20 = *MEMORY[0x1E698D3F8];
    if ((v19 & 0x100000000) == 0)
    {
      v20 = v19;
    }

    ++static HostPreferencesKey.nodeId;
    v30 = __PAIR64__(v28, v15);
    v31 = v20;
    v32 = 0;
    v33 = 0;
    v34 = static HostPreferencesKey.nodeId;
    MEMORY[0x1EEE9AC00](v19);
    v26 = type metadata accessor for HostPreferencesWriter(0, a5, a6, v21);
    swift_getWitnessTable(protocol conformance descriptor for HostPreferencesWriter<A>, v26);
    v27 = v22;
    type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for Attribute<PreferenceValues>, &type metadata for PreferenceValues, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_8, &v25, v26, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
    LOBYTE(v30) = 0;
    return PreferencesOutputs.subscript.setter(v29, &type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
  }

  return result;
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for HostPreferencesKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

void type metadata accessor for Attribute<HoverEffectContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance HostPreferencesWriter<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for HostPreferencesWriter<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t DynamicBody.updateValue()(uint64_t a1)
{
  v2 = v1;
  v75 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v58[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v58[-v10];
  type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v58[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v16 = *(a1 + 32);
  v17 = *(a1 + 16);
  v69 = &v58[-v18];
  v70 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v58[-v21];
  Value = AGGraphGetValue();
  v24 = *(a1 + 64);
  if (*(v1 + v24) != *Value >> 1)
  {
    v73 = *(v1 + *(a1 + 60));
    _DynamicPropertyBuffer.reset()();
    *(v1 + v24) = *AGGraphGetValue() >> 1;
  }

  v25 = AGGraphGetValue();
  v27 = v26;
  (*(v20 + 2))(v22, v25, AssociatedTypeWitness);
  v72 = v27 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v28 = static ObservationCenter._current;
  swift_beginAccess();
  v29 = pthread_getspecific(v28[2]);
  if (!v29)
  {
    v30 = swift_slowAlloc();
    pthread_setspecific(v28[2], v30);
    v74 = type metadata accessor for ObservationCenter();
    v62 = v2;
    *&v73 = v28[3];
    outlined init with take of Any(&v73, v30);
    v2 = v62;

    v29 = v30;
  }

  outlined init with copy of Any(v29, &v73);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v31 = v71;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v31 + 24) = v2;
    goto LABEL_11;
  }

  v68 = AssociatedTypeWitness;
  v59 = CurrentAttribute;
  swift_beginAccess();
  v62 = *(v31 + 24);
  *(v31 + 24) = MEMORY[0x1E69E7CC0];
  v33 = v4;
  v34 = v63;
  (*(v5 + 56))(v63, 1, 1, v33);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v36 = v17;
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v34;
  v38 = *(a1 + 24);
  v39 = *(a1 + 40);
  v60 = v36;
  closure #1 in DynamicBody.updateValue()(v22, v2, &v72, v36, v38, v70, v39);
  *(StatusReg + 848) = v37;
  v40 = v69;
  outlined init with take of ObservationTracking._AccessList?(v34, v69);
  v41 = v64;
  outlined init with copy of ObservationTracking._AccessList?(v40, v64);
  v42 = (*(v5 + 48))(v41, 1, v33);
  v4 = v33;
  v67 = v22;
  if (v42 == 1)
  {
    _sypSgWOhTm_7(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>);
    v43 = v41;
    AssociatedTypeWitness = v68;
    goto LABEL_14;
  }

  v17 = v20;
  v20 = *(v5 + 32);
  v44 = v66;
  (v20)(v66, v41, v33);
  (*(v5 + 16))(v65, v44, v33);
  v2 = *(v31 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 24) = v2;
  AssociatedTypeWitness = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v47 = v2[2];
  v46 = v2[3];
  if (v47 >= v46 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v2);
  }

  v2[2] = v47 + 1;
  (v20)(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v47, v65, v4);
  *(v31 + 24) = v2;
  (*(v5 + 8))(v66, v4);
  v20 = v17;
  v22 = v67;
  v43 = v69;
LABEL_14:
  _sypSgWOhTm_7(v43, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>);
  v48 = *(v31 + 24);
  v49 = *(v48 + 16);
  if (v49)
  {
    v65 = *(v31 + 24);
    v66 = v20;
    v51 = *(v5 + 16);
    v50 = v5 + 16;
    v69 = v51;
    v52 = v48 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v53 = *(v50 + 56);
    v54 = (v50 - 8);

    v55 = v61;
    v56 = v59;
    do
    {
      (v69)(v55, v52, v4);
      swift_getAssociatedTypeWitness();
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v56, v55);
      (*v54)(v55, v4);
      v52 += v53;
      --v49;
    }

    while (v49);

    v22 = v67;
    AssociatedTypeWitness = v68;
    v20 = v66;
  }

  *(v31 + 24) = v62;

  return (*(v20 + 1))(v22, AssociatedTypeWitness);
}

void one-time initialization function for linkUpdate()
{
  *&static Signpost.linkUpdate = "LinkUpdate";
  *(&static Signpost.linkUpdate + 1) = 10;
  word_1ED537610 = 258;
  byte_1ED537612 = 3;
}

uint64_t closure #1 in DynamicBody.updateValue()(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v51[-v16];
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v60 = type metadata accessor for DynamicBody(0, &v68);
  v54 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v51[-v17];
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v18 = a2;
  v66 = a2;
  v67 = a3;
  v58 = a1;
  v59 = AssociatedTypeWitness;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in closure #1 in DynamicBody.updateValue(), v61, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v19);
  v20 = v7;
  LOBYTE(a5) = *a3;
  swift_getAssociatedTypeWitness();
  if (a5)
  {
    v21 = 1;
  }

  else if (AGGraphGetOutputValue())
  {
    v21 = AGGraphCurrentAttributeWasModified();
  }

  else
  {
    v21 = 1;
  }

  v22 = v18;
  v53 = a3;
  *a3 = v21;
  v23 = v18 + *(v60 + 60);
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 12);
  OutputValue = AGGraphGetOutputValue();
  v28 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v49 = v28;
    swift_once();
    v28 = v49;
  }

  v30 = &type metadata instantiation cache for TupleTypeDescription;
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
LABEL_31:
    v52 = v28;
    v30 = &type metadata instantiation cache for TupleTypeDescription;
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v50 = swift_slowAlloc();
      closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v50, v26, v24, v25 | (v26 << 32), OutputValue != 0, v52, 7);
      if (!v20)
      {
        MEMORY[0x193AC4820](v50, -1, -1);
        goto LABEL_29;
      }

      result = MEMORY[0x193AC4820](v50, -1, -1);
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  if (*(static CustomEventTrace.enabledCategories + 100) != 1)
  {
    goto LABEL_29;
  }

  if ((v26 & 0x80000000) != 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  if (v26 >= 129)
  {
    goto LABEL_31;
  }

LABEL_12:
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v51);
  v33 = &v51[-v32];
  v34 = 0;
  v35 = 0;
  v36 = 0;
LABEL_13:
  v37 = -v35;
  while ((v26 + v37) | v34)
  {
    if (!v24)
    {
      goto LABEL_37;
    }

    v39 = v24 + v34;
    if (v26 + v37 == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 += *(v39 + 8);
    }

    v38 = *(v39 + 12);
    --v37;
    if (v38 < 0)
    {
      *&v33[8 * v36] = v38 & 0x7FFFFFFF;
      v35 = -v37;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_13;
    }
  }

  if (v36 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v41 = v30[77];
  if (*(v41 + 16) < 0x45uLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*(v41 + 100) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
    v68 = v33;
    v69 = v36;
    LOBYTE(v70) = OutputValue != 0;
    BYTE1(v70) = v31;
    type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
    AGGraphAddTraceEvent();
  }

LABEL_29:
  v42 = v53;
  v43 = v58;
  v44 = v59;
  v45 = v57;
  v46 = v55;
  (*(v54 + 16))(v55, v22, v60, v29);
  v47 = v56;
  (*(v45 + 16))(v56, v43, v44);
  (*(a6 + 24))(v47, *v42, a4, a6);
  (*(v45 + 8))(v47, v44);
  return (*(*(a4 - 1) + 8))(v46, a4);
}

uint64_t closure #1 in closure #1 in DynamicBody.updateValue()(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v10 = type metadata accessor for DynamicBody(0, &v17);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v15 = (a2 + *(v14 + 60));
  v17 = *v15;
  v18 = v15[1];
  (*(v11 + 16))(v13, a2, v10);
  LODWORD(a2) = *AGGraphGetValue();
  (*(v11 + 8))(v13, v10);
  v21 = a2;
  result = _DynamicPropertyBuffer.update(container:phase:)(a1, &v21);
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t static BoxVTable.update(elt:property:phase:)(uint64_t *a1, _BYTE *a2, int *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v66[-v11];
  v13 = *(v3 + 136);
  v12 = *(v3 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v66[-v16];
  v18 = *a1;
  v19 = *a3;
  *&v83 = v18;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  LODWORD(v83) = v19;
  v20 = (*(v12 + 40))(a2, &v83, v13, v12);
  if (v20)
  {
    v76 = v18;
    v21 = *(v15 + 16);
    v69 = v17;
    v70 = AssociatedTypeWitness;
    v75 = v21;
    v21(v17, a2, AssociatedTypeWitness);
    if (one-time initialization token for linkUpdate != -1)
    {
      swift_once();
    }

    v22 = static Signpost.linkUpdate;
    v23 = word_1ED537610;
    v24 = HIBYTE(word_1ED537610);
    v25 = byte_1ED537612;
    LODWORD(v81) = static os_signpost_type_t.event.getter();
    v77 = v22;
    v83 = v22;
    v74 = *(&v22 + 1);
    v26 = v23;
    v84 = v23;
    v85 = v24;
    v86 = v25;
    if (Signpost.isEnabled.getter())
    {
      v67 = v20;
      v68 = v15;
      static OSSignpostID.exclusive.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_18DDAF080;
      v28 = v70;
      v87 = v70;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
      v30 = v69;
      v75(boxed_opaque_existential_1, v69, v28);
      __swift_project_boxed_opaque_existential_1(&v83, v87);
      DynamicType = swift_getDynamicType();
      type metadata accessor for Any.Type();
      v31 = String.init<A>(describing:)();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1(&v83);
      *(v27 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v35 = v34;
      *(v27 + 32) = v31;
      *(v27 + 40) = v33;
      v36 = MEMORY[0x1E69E6870];
      *(v27 + 96) = MEMORY[0x1E69E6810];
      *(v27 + 104) = v36;
      v37 = v76;
      *(v27 + 64) = v34;
      *(v27 + 72) = v37;
      swift_getAssociatedConformanceWitness();
      v38 = DynamicProperty.instrumentsLinkValueDescription.getter(v28);
      *(v27 + 136) = MEMORY[0x1E69E6158];
      *(v27 + 144) = v35;
      *(v27 + 112) = v38;
      *(v27 + 120) = v39;
      if (one-time initialization token for _signpostLog == -1)
      {
        if (v24)
        {
LABEL_7:
          v40 = v26;
          v41 = v71;
          os_signpost(_:dso:log:name:signpostID:_:_:)(v81, &dword_18D018000, _signpostLog, v77, v74, v40, v71, "Updated: %{public}@ [ %p ] - %@", 31, 2, v27);
          (*(v79 + 8))(v41, v78);
          (*(v68 + 8))(v30, v70);
LABEL_37:

          LOBYTE(v20) = v67;
          return v20 & 1;
        }
      }

      else
      {
        swift_once();
        if (v24)
        {
          goto LABEL_7;
        }
      }

      v42 = v77;
      if (v77 == 20)
      {
        v43 = 3;
      }

      else
      {
        v43 = 4;
      }

      v44 = bswap32(v77) | (4 * (v77 >> 16));
      v45 = v81;
      v46 = v79 + 16;
      v72 = *(v79 + 16);
      v47 = v72(v80, v71, v78);
      v48 = 0;
      LOBYTE(DynamicType) = 1;
      v79 = v46;
      v76 = 16 * v43;
      v77 = (v46 - 8);
      v74 = v42;
      v75 = (v27 + 32);
      v73 = v43;
      do
      {
        v81 = v66;
        MEMORY[0x1EEE9AC00](v47);
        v50 = &v66[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v51 = v50 + 8;
        v52 = v43;
        v53 = v50 + 8;
        do
        {
          *(v53 - 1) = 0;
          *v53 = 0;
          v53 += 16;
          --v52;
        }

        while (v52);
        v54 = v75 + 40 * v48;
        while (1)
        {
          v55 = *(v27 + 16);
          if (v48 == v55)
          {
            break;
          }

          if (v48 >= v55)
          {
            __break(1u);
          }

          ++v48;
          outlined init with copy of AnyTrackedValue(v54, &v83);
          v56 = v87;
          v57 = v88;
          __swift_project_boxed_opaque_existential_1(&v83, v87);
          *(v51 - 1) = CVarArg.kdebugValue(_:)(v44 | v45, v56, v57);
          *v51 = v58 & 1;
          v51 += 16;
          __swift_destroy_boxed_opaque_existential_1(&v83);
          v54 += 40;
          if (!--v43)
          {
            goto LABEL_22;
          }
        }

        LOBYTE(DynamicType) = 0;
LABEL_22:
        v59 = v74;
        if (v74 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v43 = v73;
        if (v50[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v50[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v50[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v59 != 20 && v50[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v60 = v78;
        v61 = *v77;
        v62 = v80;
        (*v77)(v80, v78);
        v63 = __swift_project_value_buffer(v60, static OSSignpostID.continuation);
        v47 = v72(v62, v63, v60);
      }

      while ((DynamicType & 1) != 0);
      v64 = v78;
      v61(v80, v78);
      v61(v71, v64);
      (*(v68 + 8))(v69, v70);
      goto LABEL_37;
    }

    (*(v15 + 8))(v69, v70);
  }

  return v20 & 1;
}

uint64_t _DynamicPropertyBuffer.update(container:phase:)(uint64_t result, int *a2)
{
  v3 = *(v2 + 3);
  if (!v3)
  {
    v7 = 0;
    return v7 & 1;
  }

  v4 = *v2;
  if (*v2)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = *a2;
    v9 = v3 - 1;
    do
    {
      v15 = (v4 + v6);
      if (v9)
      {
        v6 += *(v15 + 2);
      }

      else
      {
        v6 = 0;
      }

      v10 = v9 | v6;
      v11 = *(v15 + 3) & 0x7FFFFFFF;
      v12 = *v15;
      v17 = v15;
      v16 = v8;
      v13 = (*(v12 + 120))(&v17, v5 + v11, &v16);
      if (v13)
      {
        v14 = 0x80000000;
      }

      else
      {
        v14 = 0;
      }

      *(v15 + 3) = v14 & 0x80000000 | *(v15 + 3) & 0x7FFFFFFF;
      v7 |= v13;
      --v9;
    }

    while (v10);
    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ObservationTracking._AccessList?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for ObservationTracking._AccessList?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, a3, 255, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t MultiPreferenceCombinerVisitor.visit<A>(key:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v25[6] = *MEMORY[0x1E69E9840];
  v25[0] = *v3;
  v25[3] = a2;
  v25[4] = a3;
  type metadata accessor for [PreferencesOutputs]();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Attribute();
  lazy protocol witness table accessor for type [PreferencesOutputs] and conformance [A]();

  v8 = Sequence.compactMap<A>(_:)();

  v9 = MEMORY[0x193ABF270](v8, v7);
  if (v9 == 2)
  {
    Array.subscript.getter();
    Array.subscript.getter();

    HIDWORD(v25[0]) = v24;
    MEMORY[0x1EEE9AC00](v12);
    v21 = AssociatedTypeWitness;
    v22 = type metadata accessor for PairPreferenceCombiner(0, a2, a3, v13);
    swift_getWitnessTable(protocol conformance descriptor for PairPreferenceCombiner<A>, v22);
    v23 = v14;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, closure #1 in Attribute.init<A>(_:)partial apply, v20, v22, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v15);
LABEL_8:
    v11 = v24;
    LOBYTE(v25[0]) = 0;
    return PreferencesOutputs.subscript.setter(v11, a2, a2, a3);
  }

  if (v9 != 1)
  {
    if (!v9)
    {
    }

    v16 = PreferenceCombiner.init(attributes:)(v8, a2, a3, v25);
    MEMORY[0x1EEE9AC00](v16);
    v21 = AssociatedTypeWitness;
    v22 = type metadata accessor for PreferenceCombiner(0, a2, a3, v17);
    swift_getWitnessTable(protocol conformance descriptor for PreferenceCombiner<A>, v22);
    v23 = v18;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, closure #1 in Attribute.init<A>(_:)partial apply, v20, v22, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v19);

    goto LABEL_8;
  }

  Array.subscript.getter();

  v11 = LODWORD(v25[0]);
  LOBYTE(v24) = 0;
  return PreferencesOutputs.subscript.setter(v11, a2, a2, a3);
}

void lazy protocol witness table accessor for type [PreferencesOutputs] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [PreferencesOutputs] and conformance [A])
  {
    type metadata accessor for [PreferencesOutputs]();
    swift_getWitnessTable(MEMORY[0x1E69E6328], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [PreferencesOutputs] and conformance [A]);
  }
}

uint64_t getEnumTagSinglePayload for _ForegroundLayerLevelColorMatrixEffect(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t outlined destroy of ObservationTracking._AccessList?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_2(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, a2, 255, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, a2, 255, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for [PreferencesOutputs]()
{
  if (!lazy cache variable for type metadata for [PreferencesOutputs])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [PreferencesOutputs]);
    }
  }
}

unint64_t partial apply for closure #1 in MultiPreferenceCombinerVisitor.visit<A>(key:)@<X0>(uint64_t a1@<X8>)
{
  result = PreferencesOutputs.subscript.getter(*(v1 + 16), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply@<X0>(_DWORD *a1@<X8>)
{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10(a1);
}

uint64_t storeEnumTagSinglePayload for _ForegroundLayerLevelColorMatrixEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for DisplayList.ArchiveIDs?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PairPreferenceCombiner<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PairPreferenceCombiner<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t initializeWithCopy for ForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for ForEach(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  type metadata accessor for DisplayList.ArchiveIDs?(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v2 = MEMORY[0x1E69E6720];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v56 - v4;
  v69 = type metadata accessor for ObservationTracking();
  v5 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, 255, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), v2);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ObservationTracking._AccessList();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = AGGraphGetAttributeSubgraph2();
  if (result)
  {
    v60 = result;
    v67 = v7;
    v62 = v5;
    specialized static GraphHost.currentHost.getter();
    v23 = v18;
    swift_weakInit();
    swift_weakAssign();

    v24 = AGCreateWeakAttribute();
    v25 = *(v19 + 16);
    v70 = v23;
    v26 = v23;
    v27 = v25;
    v25(v21, v65, v26);
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v12, v24);
    swift_endAccess();
    v65 = v15;
    v28 = (*(v15 + 48))(v12, 1, v14);
    v61 = v14;
    if (v28 == 1)
    {
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v12, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
    }

    else
    {
      outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v12, v17);
      v29 = *&v17[*(v14 + 48)];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71[0] = *v21;
      *v21 = 0x8000000000000000;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v29, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v71);

      *v21 = v71[0];

      specialized ObservationGraphMutation.cancel()(*(v17 + 2), *(v17 + 3), v31);
      outlined destroy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v17);
    }

    v66 = v21;
    v58 = v27;
    v59 = v19;
    v32 = v63;
    v33 = v70;
    v27(v63, v21, v70);
    (*(v19 + 56))(v32, 0, 1, v33);
    v34 = v67;
    ObservationTracking.init(_:)();
    v35 = swift_allocObject();
    v36 = v68;
    swift_weakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v24;
    v63 = v24;
    v38 = HIDWORD(v24);
    v57 = v38;

    v39 = v60;
    v40 = AGSubgraphAddObserver();

    v41 = MEMORY[0x1E69E6F90];
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObservationTracking>, 255, MEMORY[0x1E69E81D8], MEMORY[0x1E69E6F90]);
    v42 = v62;
    v43 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v44 = swift_allocObject();
    v56 = xmmword_18DDA6EB0;
    *(v44 + 16) = xmmword_18DDA6EB0;
    (*(v42 + 16))(v44 + v43, v34, v69);
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AGSubgraphRef, Int)>, 255, type metadata accessor for (AGSubgraphRef, Int), v41);
    v45 = swift_allocObject();
    *(v45 + 16) = v56;
    *(v45 + 32) = v39;
    *(v45 + 40) = v40;
    v46 = v61;
    v47 = *(v61 + 48);
    v49 = v63;
    v48 = v64;
    *v64 = v36;
    *(v48 + 8) = v49;
    *(v48 + 12) = v38;
    *(v48 + 16) = v44;
    *(v48 + 24) = v45;
    v58(v48 + v47, v66, v70);
    (*(v65 + 56))(v48, 0, 1, v46);
    swift_beginAccess();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v50 = v39;
    LODWORD(v38) = v49;
    specialized Dictionary.subscript.setter(v48, v49);
    swift_endAccess();
    _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(v72, v71, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v36;
    v52 = v57;
    *(v51 + 32) = v38;
    *(v51 + 36) = v52;
    *(v51 + 40) = v44;
    *(v51 + 48) = v45;
    *(v51 + 56) = v38;
    *(v51 + 60) = v52;
    _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(v71, v51 + 64, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    v53 = v50;

    v54 = v53;
    v55 = v67;
    MEMORY[0x193ABDEB0](v67, partial apply for closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:), v51, 0, 0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v42 + 8))(v55, v69);
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v72, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    return (*(v59 + 8))(v66, v70);
  }

  return result;
}

uint64_t sub_18D040DF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D040E30()
{

  return swift_deallocObject();
}

uint64_t sub_18D040E68()
{

  swift_weakDestroy();

  return swift_deallocObject();
}

void type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList))
  {
    type metadata accessor for ObservationTracking._AccessList();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
    }
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v20;
    }

    v10 = *(v9 + 56);
    type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
    v12 = v11;
    v19 = *(v11 - 8);
    outlined init with take of LinkDestination.Configuration?(v10 + *(v19 + 72) * v7, a1, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a1, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v19 = v23;
      }

      outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v19 + 56) + *(v11 + 72) * v17, v8, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
      specialized _NativeDictionary._delete(at:)(v17, v19);
      *v3 = v19;
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v8, 1, 1, v10);
    }

    return _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v8, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?);
  }

  else
  {
    outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v14, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
      return outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    type metadata accessor for AGWeakAttribute(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

uint64_t outlined init with take of ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ObservationTracking._AccessList?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, a3, 255, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t ForEach.init(_:idGenerator:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a2;
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a10;
  v16 = type metadata accessor for ForEach(0, v22);
  *(a9 + v16[17]) = 0;
  v17 = *(a5 - 8);
  (*(v17 + 16))(a9, a1, a5);
  *(a9 + v16[16]) = v15;
  v18 = (a9 + v16[15]);
  *v18 = a3;
  v18[1] = a4;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v19 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v19)
    {
      goto LABEL_7;
    }

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = AGMakeUniqueID();
LABEL_10:
  result = (*(v17 + 8))(a1, a5);
  *(a9 + v16[18]) = v20;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<AGWeakAttribute, (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)>(0);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v8 + 56);
      *&v10 = *(*(v8 + 48) + 8 * v23);
      v39 = v10;
      v25 = *(v37 + 72);
      v26 = v24 + v25 * v23;
      if (v38)
      {
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v26, v7, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
      }

      else
      {
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v26, v7, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v39);
      Hasher._combine(_:)(DWORD1(v39));
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v39;
      result = _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v7, *(v11 + 56) + v25 * v19, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<ConstantKey, AGAttribute>, type metadata accessor for AGAttribute, lazy protocol witness table accessor for type ConstantKey and conformance ConstantKey, &type metadata for ConstantKey);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v24 = *(*(v5 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v23);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

void type metadata accessor for _DictionaryStorage<AGWeakAttribute, (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGWeakAttribute, (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)>)
  {
    type metadata accessor for AGWeakAttribute(255);
    type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGWeakAttribute and conformance AGWeakAttribute, type metadata accessor for AGWeakAttribute, MEMORY[0x1E698D3F0]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AGWeakAttribute, (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)>);
    }
  }
}

void type metadata accessor for (AGSubgraphRef, Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AGSubgraphRef, Int))
  {
    type metadata accessor for AGSubgraphRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AGSubgraphRef, Int));
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for StateObject(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of StateObject<A>.Storage<A>(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t outlined consume of StateObject<A>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t outlined copy of StateObject<A>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t static CustomEventTrace.instantiateBegin(_:)(uint64_t a1)
{

  return static CustomEventTrace.instantiateBegin(_:)(a1, 66);
}

uint64_t type metadata completion function for LinkDestination(uint64_t a1)
{
  result = type metadata accessor for LinkDestination.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LinkDestination.Configuration(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeWithCopy for _EnvironmentKeyWritingModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

uint64_t State.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + *(type metadata accessor for State(0, a2, a3, a4) + 28)) = 0;
  v8 = *(*(a2 - 8) + 32);

  return v8(a5, a1, a2);
}

uint64_t initializeWithCopy for AnyTransition.RemovalVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for _EnvironmentKeyWritingModifier(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t closure #1 in GraphHost.intern<A>(_:for:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v9[2] = a2;
  v6 = type metadata accessor for Attribute();
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  *a3 = v10;
  return result;
}

uint64_t closure #1 in Attribute.init(value:)(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[2] = a2;
  v5[3] = a1;
  v2 = type metadata accessor for Attribute();
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v2, partial apply for closure #1 in closure #1 in Attribute.init(value:), v5, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = a1;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = v9;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, v9, v21);
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void lazy protocol witness table accessor for type ConstantKey and conformance ConstantKey()
{
  if (!lazy protocol witness table cache variable for type ConstantKey and conformance ConstantKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConstantKey, &type metadata for ConstantKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConstantKey and conformance ConstantKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type ConstantKey and conformance ConstantKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConstantKey, &type metadata for ConstantKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConstantKey and conformance ConstantKey);
  }
}

uint64_t partial apply for closure #1 in closure #1 in Attribute.init(value:)@<X0>(_DWORD *a2@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

uint64_t GraphHost.intern<A>(_:for:id:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a3;
  swift_beginAccess();
  v10 = *(v4 + 120);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, v9);
    if (v12)
    {
      return *(*(v10 + 56) + 4 * v11);
    }
  }

  swift_beginAccess();
  v14 = *(v5 + 24);
  AGGraphClearUpdate();
  v15 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in GraphHost.intern<A>(_:for:id:)(a1, a4, v19);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v13 = v19[0];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 120);
  *(v5 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, v9, isUniquelyReferenced_nonNull_native);
  *(v5 + 120) = v18;
  swift_endAccess();
  return v13;
}

uint64_t static ProtocolDescriptor.conformance(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(a3 + 8))(a2, a3);
  result = swift_conformsToProtocol();
  if (result)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
  a4[1] = result;
  return result;
}

void *initializeWithCopy for Environment(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

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
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    *a1 = *a2;

    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

uint64_t destroy for Environment(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
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
        goto LABEL_17;
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
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
  }
}

uint64_t View.environment<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - v8;
  v12 = type metadata accessor for _EnvironmentKeyWritingModifier(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v21 - v15);
  (*(v7 + 16))(v9, a2, v6, v14);
  _EnvironmentKeyWritingModifier.init(keyPath:value:)(a1, v9, v17, v18, v16);
  View.modifier<A>(_:)();
  v19 = *(v13 + 8);

  return v19(v16, v12);
}

uint64_t _EnvironmentKeyWritingModifier.init(keyPath:value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v7 = *a1;
  *a5 = a1;
  v8 = *(v7 + *MEMORY[0x1E69E6CE8] + 8);
  v9 = type metadata accessor for _EnvironmentKeyWritingModifier(0, v8, a3, a4);
  v10 = *(*(v8 - 8) + 32);
  v11 = a5 + *(v9 + 28);

  return v10(v11, a2, v8);
}

uint64_t _ConditionalContent<>.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for _ConditionalContent.Storage(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t initializeWithCopy for _ConditionalContent(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 16))(a1);
  *(a1 + v6) = v12;
  return a1;
}

uint64_t destroy for _ConditionalContent(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 24) - 8;
  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v4 = *(*(*(a2 + 16) - 8) + 64);
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
        goto LABEL_17;
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
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_17:
  if (v5 == 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = *(*(a2 + 16) - 8);
  }

  return (*(v10 + 8))();
}

uint64_t ViewGraphRootValueUpdater._preferenceValue<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v11 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a1;
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(partial apply for closure #1 in ViewGraphRootValueUpdater._preferenceValue<A>(_:), a2, AssociatedTypeWitness, a4, &v19 - v14);
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 48);
  if (v17(v15, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v16 + 32))(v20, v15, AssociatedTypeWitness);
  }

  (*(v11 + 16))(a3, v11);
  result = (v17)(v15, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v19 + 8))(v15, v13);
  }

  return result;
}

unint64_t GraphHost.preferenceValue<A>(_:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for PreferenceValues.Value(0, AssociatedTypeWitness, v9, v10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  swift_beginAccess();
  v14 = *AGGraphGetValue();
  v23 = v14;
  result = PreferenceKeys._index(of:)(a1);
  v16 = *(v14 + 16);
  if (result == v16)
  {
    goto LABEL_4;
  }

  if (result >= v16)
  {
    __break(1u);
    return result;
  }

  if (*(v14 + 16 * result + 32) == a1)
  {
    GraphHost.instantiateIfNeeded()();
    swift_beginAccess();
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v20 = *WeakValue;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v22 = v20;
    PreferenceValues.subscript.getter(a1, a1, v7, v13);

    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v13, AssociatedTypeWitness);
  }

  else
  {
LABEL_4:
    AGGraphClearUpdate();
    closure #1 in GraphHost.addPreference<A>(_:)(v3, a1, a2);
    AGGraphSetUpdate();
    GraphHost.instantiateIfNeeded()();
    swift_beginAccess();
    v17 = AGGraphGetWeakValue();
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v22 = v18;
    PreferenceValues.subscript.getter(a1, a1, v7, v13);

    (*(*(AssociatedTypeWitness - 8) + 32))(a3, v13, AssociatedTypeWitness);
    AGGraphClearUpdate();
    closure #1 in GraphHost.removePreference<A>(_:)(v3, a1, a2);
    return AGGraphSetUpdate();
  }
}

uint64_t Box.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t destroy for CachedEnvironment(uint64_t a1)
{
}

uint64_t specialized static Update.syncMain(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[0] = partial apply for thunk for @callee_guaranteed () -> ();
  v8[1] = v5;
  v9 = AGSubgraphGetCurrent();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v6 = one-time initialization token for _lock;

  if (v6 != -1)
  {
    swift_once();
  }

  _MovableLockSyncMain(static Update._lock, v8, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
  v7 = v9;

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t one-time initialization function for v5()
{
  result = swiftUI_v5_0_os_versions();
  static Semantics.v5 = HIDWORD(result);
  return result;
}

uint64_t BodyAccessor.setBody(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v86 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v55 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v55 - v13;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v14 = static Signpost.bodyInvoke;
  v15 = word_1ED539040;
  v16 = HIBYTE(word_1ED539040);
  v17 = byte_1ED539042;
  LODWORD(v73) = static os_signpost_type_t.begin.getter();
  v80 = v14;
  v81 = v15;
  v82 = v16;
  v83 = v17;
  if (Signpost.isEnabled.getter())
  {
    v56 = a1;
    v57 = AssociatedTypeWitness;
    v59 = a4;
    v58 = a3;
    swift_getAssociatedTypeWitness();
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
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v16)
      {
LABEL_6:
        v79[0] = v73;
        v77 = _signpostLog;
        v78 = &dword_18D018000;
        v80 = v14;
        v81 = v15;
        v75[0] = "%{public}@.body [in %{public}@]";
        v75[1] = 31;
        v76 = 2;
        v74 = v18;
        v27 = v63;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v79, &v78, &v77, &v80, v63, v75, &v74);
        (*(v70 + 8))(v27, v69);
LABEL_35:

        a4 = v59;
        a3 = v58;
        AssociatedTypeWitness = v57;
        a1 = v56;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      if (v16)
      {
        goto LABEL_6;
      }
    }

    if (v14 == 20)
    {
      v28 = 3;
    }

    else
    {
      v28 = 4;
    }

    v29 = bswap32(v14) | (4 * WORD1(v14));
    v30 = v73;
    v31 = v70 + 16;
    v64 = *(v70 + 16);
    v32 = v64(v71, v63, v69);
    v33 = 0;
    LOBYTE(v75[0]) = 1;
    v73 = v28;
    v70 = v31;
    v67 = 16 * v28;
    v68 = (v31 - 8);
    v66 = v18 + 32;
    v65 = v14;
    do
    {
      v72 = &v55;
      MEMORY[0x1EEE9AC00](v32);
      v35 = &v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = v35 + 8;
      v37 = v73;
      v38 = v35 + 8;
      do
      {
        *(v38 - 1) = 0;
        *v38 = 0;
        v38 += 16;
        --v37;
      }

      while (v37);
      v39 = v66 + 40 * v33;
      v40 = v73;
      while (1)
      {
        v41 = *(v18 + 16);
        if (v33 == v41)
        {
          break;
        }

        if (v33 >= v41)
        {
          __break(1u);
        }

        ++v33;
        outlined init with copy of AnyTrackedValue(v39, &v80);
        v42 = v84;
        v43 = v85;
        __swift_project_boxed_opaque_existential_1(&v80, v84);
        *(v36 - 1) = CVarArg.kdebugValue(_:)(v29 | v30, v42, v43);
        *v36 = v44 & 1;
        v36 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v80);
        v39 += 40;
        if (!--v40)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v75[0]) = 0;
LABEL_20:
      v45 = v65;
      if (v65 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v35[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v35[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v35[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v45 != 20 && v35[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v46 = v69;
      v47 = *v68;
      v48 = v71;
      (*v68)(v71, v69);
      v49 = __swift_project_value_buffer(v46, static OSSignpostID.continuation);
      v32 = v64(v48, v49, v46);
    }

    while ((v75[0] & 1) != 0);
    v50 = v69;
    v47(v71, v69);
    v47(v63, v50);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v51 = v60;
  a1();
  AGGraphSetUpdate();
  v52 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v52);
  *(&v55 - 2) = a3;
  *(&v55 - 1) = a4;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s7SwiftUI12BodyAccessorPAAE03setC0yy0C0QzyXEFySPyAFGXEfU0_TA_0, (&v55 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v53);
  return (*(v61 + 8))(v51, AssociatedTypeWitness);
}

uint64_t AnyView.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v6 + 16);
  v11(v16 - v12, a1, a2, v10);
  if (swift_dynamicCast())
  {
    v14 = v16[1];
  }

  else
  {
    type metadata accessor for AnyViewStorage(0, a2, a3, v13);
    (v11)(v8, a1, a2);
    v14 = _AnyMaterialCustomFillProvider.__allocating_init(_:)(v8);
  }

  (*(v6 + 8))(a1, a2);
  return v14;
}

uint64_t _AnyMaterialCustomFillProvider.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 128) - 8) + 32))(v2 + *(*v2 + 144), a1);
  return v2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ProposedSize(uint64_t a1)
{
  Hasher.init(_seed:)();
  _ProposedSize.hash(into:)();
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize()
{
  if (!lazy protocol witness table cache variable for type _ProposedSize and conformance _ProposedSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ProposedSize, &type metadata for _ProposedSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ProposedSize and conformance _ProposedSize);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ProposedSize and conformance _ProposedSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ProposedSize, &type metadata for _ProposedSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ProposedSize and conformance _ProposedSize);
  }
}

void _ProposedSize.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) != 1)
  {
    v4 = *v0;
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x193AC11E0](v5);
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x193AC11E0](v3);
}

void one-time initialization function for unspecified()
{
  static _ProposedSize.unspecified = 0;
  byte_1ED52ECF8 = 1;
  qword_1ED52ED00 = 0;
  byte_1ED52ED08 = 1;
}

uint64_t View.environmentObject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  EnvironmentObjectKey.init()();
  v11[1] = a5;
  KeyPath = swift_getKeyPath();
  v11[0] = a1;
  swift_unknownObjectRetain();
  View.environment<A>(_:_:)(KeyPath, v11, a2, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_18D044784@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = specialized EnvironmentValues.subscript.getter(*(a1 + a2 - 16), a1, a2, a4);
  *a3 = result;
  return result;
}

__n128 sub_18D0447F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata completion function for _AnyMaterialCustomFillProvider(uint64_t a1)
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

uint64_t $defer #3 <A>() in static Update.dispatchImmediately<A>(reason:_:)(uint64_t result, char a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
      type metadata accessor for (UInt32, UInt32?)(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t specialized StoredLocation.init(initialValue:host:signal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + 40) = 0;
  swift_weakAssign();
  *(v3 + 40) = a3;

  return specialized StoredLocationBase.init(initialValue:)(a1);
}

uint64_t specialized StoredLocationBase.init(initialValue:)(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - v5;
  v9 = type metadata accessor for StoredLocationBase.Data(0, v3, v7, v8);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  *(v1 + 24) = 0;
  (*(v4 + 16))(v6, a1, v3, v11);
  v14 = Array.init()();
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12AnyHashable2V_AC7WeakBoxVyAC0E12LocationBaseCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  (*(v4 + 32))(v13, v6, v3);
  *&v13[*(v10 + 36)] = v14;
  *&v13[*(v10 + 40)] = v15;
  swift_beginAccess();
  property wrapper backing initializer of StoredLocationBase.data(v13, v3, v16, v17, (v1 + 16));
  swift_endAccess();
  return AnyLocation.init()();
}

uint64_t destroy for AnyTransition.RemovalVisitor(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12AnyHashable2V_AC7WeakBoxVyAC0E12LocationBaseCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)(v4, &v10, type metadata accessor for (AnyHashable2, WeakBox<AnyLocationBase>));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v10;
      result = outlined init with take of WeakBox<AnyLocationBase>(&v11, v3[7] + 8 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 16;
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

uint64_t type metadata completion function for LocationBox(uint64_t a1)
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

uint64_t LocationBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LocationBox.init(_:)(a1);
  return v2;
}

uint64_t *LocationBox.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12AnyHashable2V_AC7WeakBoxVyAC0E12LocationBaseCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = *(v3 + 168);
  type metadata accessor for AtomicBuffer<LocationProjectionCache>(0, v7, v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = v5;
  *(v1 + v4) = v10;
  (*(*(v6 - 8) + 32))(v1 + *(*v1 + 184), a1, v6);
  return v1;
}

void type metadata accessor for AtomicBuffer<LocationProjectionCache>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AtomicBuffer<LocationProjectionCache>)
  {
    v4 = type metadata accessor for AtomicBuffer(0, &type metadata for LocationProjectionCache, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AtomicBuffer<LocationProjectionCache>);
    }
  }
}

uint64_t type metadata completion function for StoredLocationBase.Data(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t property wrapper backing initializer of StoredLocationBase.data@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for StoredLocationBase.Data(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  AtomicBox.init(wrappedValue:)(v11, v7, v12, v13, a5);
  return (*(v8 + 8))(a1, v7);
}

uint64_t initializeWithCopy for StoredLocationBase.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t AtomicBox.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for AtomicBuffer(0, a2, a3, a4);
  v8 = static AtomicBuffer.allocate(value:)(a1);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

uint64_t static AtomicBuffer.allocate(value:)(uint64_t a1)
{
  v3 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  closure #2 in static AtomicBuffer.allocate(value:)(v3 + ((*(*(*(v1 + class metadata base offset for AtomicBuffer) - 8) + 80) + 20) & ~*(*(*(v1 + class metadata base offset for AtomicBuffer) - 8) + 80)), a1, *(v1 + class metadata base offset for AtomicBuffer));
  return v3;
}

uint64_t closure #2 in static AtomicBuffer.allocate(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return _sSpsRi_zrlE10initialize2toyxn_tF(v7, a1, a3);
}

uint64_t destroy for StoredLocationBase.Data(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA025AccessibilityButtonShapesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityButtonShapesKey>, &type metadata for AccessibilityButtonShapesKey, &protocol witness table for AccessibilityButtonShapesKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA025AccessibilityButtonShapesV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityButtonShapesKey>, &type metadata for AccessibilityButtonShapesKey, &protocol witness table for AccessibilityButtonShapesKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityButtonShapesKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA030AccessibilityDimFlashingLightsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>, &type metadata for AccessibilityDimFlashingLightsKey, &protocol witness table for AccessibilityDimFlashingLightsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA030AccessibilityDimFlashingLightsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>, &type metadata for AccessibilityDimFlashingLightsKey, &protocol witness table for AccessibilityDimFlashingLightsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>, &type metadata for AccessibilityPlayAnimatedImagesKey, &protocol witness table for AccessibilityPlayAnimatedImagesKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA031AccessibilityPlayAnimatedImagesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>, &type metadata for AccessibilityPlayAnimatedImagesKey, &protocol witness table for AccessibilityPlayAnimatedImagesKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilityPlayAnimatedImagesV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024AccessibilityOnOffLabelsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>, &type metadata for AccessibilityOnOffLabelsKey, &protocol witness table for AccessibilityOnOffLabelsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024AccessibilityOnOffLabelsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>, &type metadata for AccessibilityOnOffLabelsKey, &protocol witness table for AccessibilityOnOffLabelsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityOnOffLabelsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA038AccessibilityDifferentiateWithoutColorF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>, &type metadata for AccessibilityDifferentiateWithoutColorKey, &protocol witness table for AccessibilityDifferentiateWithoutColorKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA038AccessibilityDifferentiateWithoutColorV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>, &type metadata for AccessibilityDifferentiateWithoutColorKey, &protocol witness table for AccessibilityDifferentiateWithoutColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA025AccessibilityInvertColorsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityInvertColorsKey>, &type metadata for AccessibilityInvertColorsKey, &protocol witness table for AccessibilityInvertColorsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA025AccessibilityInvertColorsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityInvertColorsKey>, &type metadata for AccessibilityInvertColorsKey, &protocol witness table for AccessibilityInvertColorsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityInvertColorsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA040AccessibilityPrefersCrossFadeTransitionsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RootDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *initializeWithCopy for Binding(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v6 + v9 + 8;
  v11 = v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8);

  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

uint64_t destroy for Binding(void *a1, uint64_t a2)
{
  v3 = a1 + 15;

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = ((v3 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t EnvironmentValues.preferenceBridge.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016PreferenceBridgeI033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt1g5(v1, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(v1, &v4);
  }

  Strong = swift_weakLoadStrong();
  outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(&v4);
  return Strong;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityOnOffLabelsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityOnOffLabelsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>, &type metadata for AccessibilityOnOffLabelsKey, &protocol witness table for AccessibilityOnOffLabelsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityOnOffLabelsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>, &type metadata for AccessibilityDifferentiateWithoutColorKey, &protocol witness table for AccessibilityDifferentiateWithoutColorKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityInvertColorsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityInvertColorsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityInvertColorsKey>, &type metadata for AccessibilityInvertColorsKey, &protocol witness table for AccessibilityInvertColorsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityInvertColorsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityButtonShapesKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityButtonShapesKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityButtonShapesKey>, &type metadata for AccessibilityButtonShapesKey, &protocol witness table for AccessibilityButtonShapesKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityButtonShapesKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>, &type metadata for AccessibilityDimFlashingLightsKey, &protocol witness table for AccessibilityDimFlashingLightsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>, &type metadata for AccessibilityPlayAnimatedImagesKey, &protocol witness table for AccessibilityPlayAnimatedImagesKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t ViewGraphFeatureBuffer.subscript.getter(uint64_t result)
{
  v2 = *(v1 + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  if (*v1)
  {
    v4 = result;
    v5 = 0;
    for (i = v2 - 1; ; --i)
    {
      v8 = (v3 + v5);
      if ((*(*v8 + 80))() == v4)
      {
        break;
      }

      if (i)
      {
        v5 += v8[2];
      }

      else
      {
        v5 = 0;
      }

      if (!(i | v5))
      {
        return 0;
      }
    }

    return _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ViewInputs.privacyReductionAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderV0024_7799685610985DBA9248562L7E4D5E6ELLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderV0024_7799685610985DBA9248562L7E4D5E6ELLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.PrivacyReductionAccessibilityProviderKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.TextAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE025TextAccessibilityProviderV033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for TextAccessibilityProvider.Type, &lazy cache variable for type metadata for TextAccessibilityProvider, &protocol descriptor for TextAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.TextAccessibilityProviderKey>, &type metadata for _GraphInputs.TextAccessibilityProviderKey, &protocol witness table for _GraphInputs.TextAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.TextAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.textAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE025TextAccessibilityProviderV033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE025TextAccessibilityProviderV033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.TextAccessibilityProviderKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ImageAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE026ImageAccessibilityProviderV033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for ImageAccessibilityProvider.Type, &lazy cache variable for type metadata for ImageAccessibilityProvider, &protocol descriptor for ImageAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ImageAccessibilityProviderKey>, &type metadata for _GraphInputs.ImageAccessibilityProviderKey, &protocol witness table for _GraphInputs.ImageAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ImageAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.imageAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PrivacyReductionAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderV0024_7799685610985DBA9248562L7E4D5E6ELLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for PrivacyReductionAccessibilityProvider.Type, &lazy cache variable for type metadata for PrivacyReductionAccessibilityProvider, &protocol descriptor for PrivacyReductionAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.PrivacyReductionAccessibilityProviderKey>, &type metadata for _GraphInputs.PrivacyReductionAccessibilityProviderKey, &protocol witness table for _GraphInputs.PrivacyReductionAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.PrivacyReductionAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LayoutAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027LayoutAccessibilityProviderV033_BD5DB579992638706C312416A6669149LLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for LayoutAccessibilityProvider.Type, &lazy cache variable for type metadata for LayoutAccessibilityProvider, &protocol descriptor for LayoutAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.LayoutAccessibilityProviderKey>, &type metadata for _GraphInputs.LayoutAccessibilityProviderKey, &protocol witness table for _GraphInputs.LayoutAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.LayoutAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.layoutAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027LayoutAccessibilityProviderV033_BD5DB579992638706C312416A6669149LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027LayoutAccessibilityProviderV033_BD5DB579992638706C312416A6669149LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.LayoutAccessibilityProviderKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.GestureAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028GestureAccessibilityProviderV033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for GestureAccessibilityProvider.Type, &lazy cache variable for type metadata for GestureAccessibilityProvider, &protocol descriptor for GestureAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.GestureAccessibilityProviderKey>, &type metadata for _GraphInputs.GestureAccessibilityProviderKey, &protocol witness table for _GraphInputs.GestureAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.GestureAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.gestureAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028GestureAccessibilityProviderV033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028GestureAccessibilityProviderV033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.GestureAccessibilityProviderKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.OpacityAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028OpacityAccessibilityProviderV033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for OpacityAccessibilityProvider.Type, &lazy cache variable for type metadata for OpacityAccessibilityProvider, &protocol descriptor for OpacityAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.OpacityAccessibilityProviderKey>, &type metadata for _GraphInputs.OpacityAccessibilityProviderKey, &protocol witness table for _GraphInputs.OpacityAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.OpacityAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.opacityAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentShapeAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE033ContentShapeAccessibilityProviderV033_8830DB57DA6E30576C7025120AC232CCLLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for ContentShapeAccessibilityProvider.Type, &lazy cache variable for type metadata for ContentShapeAccessibilityProvider, &protocol descriptor for ContentShapeAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentShapeAccessibilityProviderKey>, &type metadata for _GraphInputs.ContentShapeAccessibilityProviderKey, &protocol witness table for _GraphInputs.ContentShapeAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ContentShapeAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.contentShapeAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.AllowsHitTestingAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderV033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for AllowsHitTestingAccessibilityProvider.Type, &lazy cache variable for type metadata for AllowsHitTestingAccessibilityProvider, &protocol descriptor for AllowsHitTestingAccessibilityProvider), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.AllowsHitTestingAccessibilityProviderKey>, &type metadata for _GraphInputs.AllowsHitTestingAccessibilityProviderKey, &protocol witness table for _GraphInputs.AllowsHitTestingAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.AllowsHitTestingAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.allowsHitTestingAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderV033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderV033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.AllowsHitTestingAccessibilityProviderKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.CorePlatfromProvidersDefinitionKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v4, v7) || (type metadata accessor for CorePlatformProvidersDefinition.Type(), result = AGCompareValues(), !result))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.CorePlatfromProvidersDefinitionKey>, &type metadata for _GraphInputs.CorePlatfromProvidersDefinitionKey, &protocol witness table for _GraphInputs.CorePlatfromProvidersDefinitionKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.CorePlatfromProvidersDefinitionKey, 0, v6);
  }

  return result;
}

uint64_t _GraphInputs.platformProvidersDefinition.setter(uint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v1, a1);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.CorePlatfromProvidersDefinitionKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.TextAlwaysOnProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020TextAlwaysOnProviderV033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt0B5(v6, v10) || (type metadata accessor for TextAlwaysOnProvider.Type?(0), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.TextAlwaysOnProviderKey>, &type metadata for _GraphInputs.TextAlwaysOnProviderKey, &protocol witness table for _GraphInputs.TextAlwaysOnProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.TextAlwaysOnProviderKey, 0, v8);
  }

  return result;
}

uint64_t _ViewInputs.textAlwaysOnProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v2, a1, a2);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020TextAlwaysOnProviderV033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020TextAlwaysOnProviderV033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.TextAlwaysOnProviderKey)
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

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028OpacityAccessibilityProviderV033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028OpacityAccessibilityProviderV033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.OpacityAccessibilityProviderKey)
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA040AccessibilityPrefersCrossFadeTransitionsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA040AccessibilityPrefersCrossFadeTransitionsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t static SemanticFeature.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if ((*(a2 + 24))(a1, a2))
  {
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C524)
    {
      return dyld_program_minos_at_least();
    }

    v6 = dword_1ED53C520;
  }

  else
  {
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      return dyld_program_sdk_at_least();
    }

    v6 = static Semantics.forced;
  }

  return v6 >= v4;
}

uint64_t storeEnumTagSinglePayload for RootDisplayList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE026ImageAccessibilityProviderV033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE026ImageAccessibilityProviderV033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ImageAccessibilityProviderKey)
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

void lazy protocol witness table accessor for type AnimatableFrameAttributeVFD and conformance AnimatableFrameAttributeVFD()
{
  if (!lazy protocol witness table cache variable for type AnimatableFrameAttributeVFD and conformance AnimatableFrameAttributeVFD)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnimatableFrameAttributeVFD, &type metadata for AnimatableFrameAttributeVFD, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnimatableFrameAttributeVFD and conformance AnimatableFrameAttributeVFD);
  }
}

uint64_t initializeWithCopy for AnimatableFrameAttributeVFD(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  *(a1 + 145) = *(a2 + 145);

  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE033ContentShapeAccessibilityProviderV033_8830DB57DA6E30576C7025120AC232CCLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE033ContentShapeAccessibilityProviderV033_8830DB57DA6E30576C7025120AC232CCLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ContentShapeAccessibilityProviderKey)
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

Swift::Void __swiftcall GraphHost.startTransactionUpdate(id:)(Swift::UInt32_optional id)
{
  *(v1 + 152) = 1;
  if ((*&id.value & 0x100000000) == 0)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 16980;
      AGGraphAddTraceEvent();
    }
  }

  swift_beginAccess();
  AGGraphGetValue();
  AGGraphSetValue();
}

Swift::Bool __swiftcall Edge.Set.contains(_:)(SwiftUI::Edge a1)
{
  if (a1 >= 8u)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 1 << a1;
  }

  if (a1 > 8u)
  {
    LOBYTE(v2) = 0;
  }

  return (v2 & ~v1) == 0;
}

void type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t one-time initialization function for v3()
{
  result = swiftUI_v3_0_os_versions();
  static Semantics.v3 = HIDWORD(result);
  return result;
}

uint64_t ConditionalTypeDescriptor.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = MEMORY[0x193AC2090]();
  if (one-time initialization token for conditionalTypeDescriptor == -1)
  {
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23 = v8;
    swift_once();
    v8 = v23;
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  if (v8 == conditionalTypeDescriptor)
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v33 = a2;
    v34 = a3;
    v35 = v9;
    static ConditionalTypeDescriptor.descriptor(type:constructor:)(v9, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, &v29);
    v11 = v29;
    v12 = v30;
    v13 = v31;
    v33 = a2;
    v34 = a3;
    v35 = v10;
    static ConditionalTypeDescriptor.descriptor(type:constructor:)(v10, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, &v29);
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v18 = type metadata accessor for _ConditionalContent.Storage(0, v10, v9, v17);
    swift_beginAccess();
    result = swift_beginAccess();
    if (!v18)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    result = swift_allocObject();
    *(result + 16) = v18;
    *(result + 24) = v11;
    *(result + 32) = v12;
    *(result + 40) = v13;
    *(result + 48) = v14;
    *(result + 56) = v15;
    *(result + 64) = v16;
    v20 = v13 + v16;
    if (!__OFADD__(v13, v16))
    {
      v21 = 0;
      v22 = result | 0x8000000000000000;
LABEL_16:
      *a4 = v22;
      a4[1] = v21;
      a4[2] = v20;
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_8:
  if (one-time initialization token for optionalTypeDescriptor == -1)
  {
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v28 = v8;
    swift_once();
    v8 = v28;
    if (!v28)
    {
      goto LABEL_14;
    }
  }

  if (v8 == optionalTypeDescriptor)
  {
    v24 = *(a1 + 16);
    v33 = a2;
    v34 = a3;
    v35 = v24;
    static ConditionalTypeDescriptor.descriptor(type:constructor:)(v24, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, &v29);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    result = swift_allocObject();
    *(result + 16) = a1;
    *(result + 24) = v25;
    *(result + 32) = v26;
    *(result + 40) = v27;
    v20 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      v21 = 0;
      v22 = result | 0x4000000000000000;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_14:
  result = static ProtocolDescriptor.conformance(of:)(a1, a2, *(a3 + 8), v32);
  v22 = v32[0];
  if (v32[0])
  {
    v21 = v32[1];
    v20 = 1;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *static ConditionalTypeDescriptor.descriptor(type:constructor:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = (*(a4 + 16))(&v14, a1, a3, a4);
  v11 = v14;
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v12 = v15;
    v13 = v16;
  }

  else
  {
    a2(&v14, result);
    v11 = v14;
    v12 = v15;
    v13 = v16;
    result = (*(a4 + 24))(a1, &v14, a3, a4);
  }

  *a5 = v11;
  a5[1] = v12;
  a5[2] = v13;
  return result;
}

void type metadata accessor for HitTestableEvent?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ShapeStyle_Pack.Style?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 48 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 80);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[80 * v10])
    {
      memmove(v14, v15, 80 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 95;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 7);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[128 * v10])
    {
      memmove(v15, v16, v10 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 120);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[120 * v10])
    {
      memmove(v14, v15, 120 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 112);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 112 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t protocol witness for static ConditionalProtocolDescriptor.insertConditionalType(key:value:) in conformance ViewDescriptor(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (one-time initialization token for conditionalCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = static ViewDescriptor.conditionalCache;
  static ViewDescriptor.conditionalCache = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v4, v5, a1, isUniquelyReferenced_nonNull_native);
  static ViewDescriptor.conditionalCache = v8;
  return swift_endAccess();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 24 * v13);
    v25 = *v24;
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;

    return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v25);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a4, a1, a2, a3, v23);
  }
}

{
  v6 = v5;
  v11 = a1;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FFFFFFFFFFFFLL);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FFFFFFFFFFFFLL);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 4 * result) = v11;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a4 & 0x1FFFFFFFFFFFFLL, v11, v23);
  }

  return result;
}

uint64_t one-time initialization function for center()
{
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.center;
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  *&static Alignment.center = v0;
  *(&static Alignment.center + 1) = static VerticalAlignment.center;
  return result;
}

void one-time initialization function for center(uint64_t a1)
{
  one-time initialization function for top(a1, &unk_1F008FB70, &protocol witness table for VerticalAlignment.Center, &static VerticalAlignment.center);
}

{
  one-time initialization function for leading(a1, &unk_1F008FB50, &protocol witness table for HorizontalAlignment.Center, &static HorizontalAlignment.center);
}

void one-time initialization function for top(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v7 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a2, a3);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  *a4 = 2 * v7 + 3;
}

void one-time initialization function for typeCache()
{
  static AlignmentKey.typeCache = 0;
  qword_1ED537F50 = MEMORY[0x1E69E7CC8];
  off_1ED537F58 = MEMORY[0x1E69E7CC0];
}

{
  static ViewDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static StyleContextDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static GestureDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static GestureModifierDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

void one-time initialization function for leading(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v7 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a2, a3);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  *a4 = 2 * v7 + 2;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AlignmentID.Type>, &lazy cache variable for type metadata for AlignmentID.Type, &lazy cache variable for type metadata for AlignmentID, &protocol descriptor for AlignmentID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<Attribute<ViewList>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UniqueID>, &type metadata for UniqueID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID.Explicit>, &type metadata for _ViewList_ID.Explicit);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>, &type metadata for ResolvedGradient.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradientVector.Stop>, &type metadata for ResolvedGradientVector.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<GraphHost>>, type metadata accessor for Unmanaged<GraphHost>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<Attribute<Transaction>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<ViewGraph>>, type metadata accessor for Unmanaged<ViewGraph>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(PreferenceKey.Type, AGAttribute)>, type metadata accessor for (PreferenceKey.Type, AGAttribute), MEMORY[0x1E69E6F90], type metadata accessor for DisplayList.ArchiveIDs?);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<AnyView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<AnyView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Effect>, &type metadata for DisplayList.Effect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MatchedGeometryScope.Frame>, &type metadata for MatchedGeometryScope.Frame);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Line>, &type metadata for Text.Layout.Line);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<Range<Int>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextSizeCache.Entry>, &type metadata for TextSizeCache.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.Filter>, &type metadata for Material.Layer.Filter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UnsafeRawPointer>, MEMORY[0x1E69E6270]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.CharacterIndex>, &type metadata for Text.Layout.CharacterIndex);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityText>, &type metadata for AccessibilityText);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformAccessibilitySettingsDefinition.Entry>, &type metadata for PlatformAccessibilitySettingsDefinition.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_Pack.Effect>, &type metadata for _ShapeStyle_Pack.Effect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ShaderVectorData.Element>, &type metadata for ShaderVectorData.Element);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(offset: UInt64, size: UInt64)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.ResolvedProperties.Transition>, &type metadata for Text.ResolvedProperties.Transition);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<DebugReplaceableView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CustomAttributeWriter.Type>, &lazy cache variable for type metadata for CustomAttributeWriter.Type, &lazy cache variable for type metadata for CustomAttributeWriter, &protocol descriptor for CustomAttributeWriter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem.StaticKind>, &type metadata for PlatformItem.StaticKind);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any.Type>, type metadata accessor for Any.Type);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject.Type>, type metadata accessor for Swift.AnyObject.Type);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_SymbolEffect.Identified>, &type metadata for _SymbolEffect.Identified);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityCustomContentEntry>, &type metadata for AccessibilityCustomContentEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ConvertiblePath>, &type metadata for ConvertiblePath);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Decorations.Fragment>, &type metadata for Text.Layout.Decorations.Fragment, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventSourceType>, &type metadata for EventSourceType);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of AnyTrackedValue, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of _ViewList_Elements, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.BitmapKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
      return outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1, v19[7] + 96 * v13, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.BitmapKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  if ((v17 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v21;
  v19 = *v4;
  if (v17)
  {
    return outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1, v19[7] + 96 * v13, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
  }

LABEL_11:
  outlined init with copy of NamedImage.VectorKey(a2, v10, type metadata accessor for NamedImage.BitmapKey);
  return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
}

{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.VectorKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, NamedImage.VectorKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of NamedImage.VectorKey(a2, v10, type metadata accessor for NamedImage.VectorKey);
      return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 88 * v13;

  return outlined assign with take of NamedImage.VectorInfo(a1, v20);
}

{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
      return outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v20[7] + 8 * v14, type metadata accessor for WeakBox<CUICatalog>);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v22;
  v20 = *v4;
  if (v18)
  {
    return outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v20[7] + 8 * v14, type metadata accessor for WeakBox<CUICatalog>);
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of AnyTrackedValue, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

uint64_t type metadata completion function for DynamicContainerInfo(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicContainerInfo<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicContainerInfo<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicLayoutComputer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicPreferenceCombiner<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicPreferenceCombiner<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t closure #1 in project #1 <A><A1>(key:) in closure #1 in static DynamicContainer.makeContainer<A>(adaptor:inputs:)(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = type metadata accessor for DynamicPreferenceCombiner(0, a4, a6, a4);
  *a1 = a2;
  return result;
}

uint64_t initializeWithCopy for DynamicContainerInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 60) = *(v8 + 60);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 68) = *(v8 + 68);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 76) = *(v8 + 76);
  *(v7 + 80) = *(v8 + 80);
  v9 = (v7 + 91) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 12) = *(v10 + 12);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  *v11 = *v12;
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);
  *(v14 + 24) = *(v15 + 24);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 40) = *(v15 + 40);
  *(v14 + 44) = *(v15 + 44);
  v16 = ((v15 + 51) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16 + 11;
  v18 = ((v14 + 51) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v16;
  v18[1] = v16[1];
  v19 = (v18 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *(v17 & 0xFFFFFFFFFFFFFFF8);
  *(v19 + 4) = *((v17 & 0xFFFFFFFFFFFFFFF8) + 4);

  v20 = v13;

  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE21RemovePreferenceInput33_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE21RemovePreferenceInput33_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.RemovePreferenceInput)
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

void *initializeBufferWithCopyOfBuffer for SizeFittingTextLayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t initializeWithCopy for DynamicLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollTargetRoleKey)
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

uint64_t partial apply for closure #1 in project #1 <A><A1>(key:) in closure #1 in static DynamicContainer.makeContainer<A>(adaptor:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 24);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);
  result = type metadata accessor for DynamicPreferenceCombiner(0, v6, v7, a4);
  *a1 = v8;
  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ScrollablePreferenceKey;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollTargetRoleKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(a1, v5);
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

    v3 = &static _GraphInputs.ScrollTargetRoleKey.defaultValue;
  }

  return *v3;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ScrollTargetRole.ContentKey;
  }

  __break(1u);
  return result;
}

uint64_t destroy for DynamicContainerInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5Tm(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t))
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t outlined destroy of DynamicContainerInfo<DynamicLayoutViewAdaptor>(uint64_t a1)
{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for DynamicContainerInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainerInfo);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v46 = a1;
  v85 = *MEMORY[0x1E69E9840];
  v50 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  LODWORD(v51) = 0;
  HIDWORD(v51) = v5;
  v6 = *(a5 + 6);
  v52 = v6;
  v47 = v6;
  v48 = a5;
  v53 = *(a5 + 14);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of PreferencesInputs(&v52, &v56);
    v8 = (v6 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = DynamicPreferenceCombiner.init()();
      *&v49 = v41;
      LODWORD(v56) = v11;
      MEMORY[0x1EEE9AC00](v11);
      *&v41[-32] = swift_getAssociatedTypeWitness();
      v13 = type metadata accessor for DynamicPreferenceCombiner(0, v10, v9, v12);
      *&v41[-24] = v13;
      swift_getWitnessTable(protocol conformance descriptor for DynamicPreferenceCombiner<A>, v13);
      *&v41[-16] = v14;
      v15 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v56, partial apply for closure #1 in Attribute.init<A>(_:), &v41[-48], v13, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
      v17 = v79;
      swift_beginAccess();
      LOBYTE(v79) = 0;
      _ViewOutputs.subscript.setter(v17, v10, v10, v9);
      swift_endAccess();
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v52, &v56);
  }

  swift_beginAccess();
  v18 = v50;
  v20 = v51;
  v19 = HIDWORD(v51);
  v21 = v48;
  v22 = v48[3];
  v81 = v48[2];
  v82 = v22;
  v83 = v48[4];
  v84 = *(v48 + 20);
  v23 = v48[1];
  v79 = *v48;
  v80 = v23;
  v24 = AGSubgraphGetCurrent();
  if (!v24)
  {
    __break(1u);
  }

  v25 = v24;
  v61 = v81;
  v62 = v82;
  v63 = v83;
  v59 = v79;
  v27 = v43;
  v26 = v44;
  v47 = HIDWORD(v43);
  v64 = v84;
  v60 = v80;
  v56 = v43;
  v28 = v45;
  v57 = v44;
  v58 = v45;
  v65 = v18;
  v66 = v20;
  v67 = v19;
  v68 = v24;
  v69 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC8];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 1;
  v49 = xmmword_18DDE0580;
  v77 = xmmword_18DDE0580;
  v78 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v42 = v20;

  outlined init with copy of _ViewInputs(v21, &v54);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for DynamicContainerInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainerInfo);
  lazy protocol witness table accessor for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>();
  v29 = Attribute.init<A>(body:value:flags:update:)();
  v61 = v81;
  v62 = v82;
  v63 = v83;
  v59 = v79;
  v56 = __PAIR64__(v47, v27);
  v57 = v26;
  v58 = v28;
  v64 = v84;
  v60 = v80;
  v65 = v18;
  v66 = v42;
  v67 = v19;
  v68 = v25;
  v69 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC8];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 1;
  v75 = v54;
  v76 = v55;
  v77 = v49;
  v78 = 0;
  outlined destroy of DynamicContainerInfo<DynamicLayoutViewAdaptor>(&v56);
  AGGraphSetFlags();
  v30 = v50;
  v31 = *(v50 + 16);
  if (v31)
  {

    v33 = v30 + 48;
    do
    {
      v33 += 24;
      MEMORY[0x1EEE9AC00](v32);
      *&v41[-32] = v34;
      *&v41[-24] = v35;
      *&v41[-16] = v29;
      v37 = type metadata accessor for DynamicPreferenceCombiner(0, v34, v35, v36);
      MEMORY[0x1EEE9AC00](v37);
      *&v41[-32] = v38;
      *&v41[-24] = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZyAA13PreferenceKey_pXp_So11AGAttributeatXEfU_7projectL_3keyyqd__m_tAaQRzAaRRd__r__lFyAA0cO8Combiner33_E7D4CD2D59FB8C77D6C7E9C534464C17LLVyqd__GzXEfU_TA_0;
      *&v41[-16] = &v41[-48];
      v32 = AGGraphMutateAttribute();
      --v31;
    }

    while (v31);

    v30 = v50;
  }

  v39 = v46;
  *v46 = v30;
  v39[1] = v51;
  return v29;
}

void lazy protocol witness table accessor for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for DynamicContainerInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainerInfo);
    swift_getWitnessTable(protocol conformance descriptor for DynamicContainerInfo<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>);
  }
}

void type metadata accessor for _ContiguousArrayStorage<NSCalendarUnit>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t type metadata accessor for ViewList()
{
  result = lazy cache variable for type metadata for ViewList;
  if (!lazy cache variable for type metadata for ViewList)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewList);
  }

  return result;
}

uint64_t DynamicPreferenceCombiner.info.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == result)
  {
    v3 = 0;
    *(a2 + 40) = 0;
    v4 = 0uLL;
    *a2 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v6 = *(Value + 8);
    v9 = *(Value + 16);
    v3 = *(Value + 32);
    v7 = *(Value + 40);
    v8 = *(Value + 44);
    *a2 = *Value;
    *(a2 + 8) = v6;
    *(a2 + 40) = v7;
    *(a2 + 44) = v8;

    v4 = v9;
  }

  *(a2 + 16) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t static HorizontalAlignment.center.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t DynamicPreferenceCombiner.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = v34 - v8;
  result = DynamicPreferenceCombiner.info.getter(a1, &v51);
  v10 = v51;
  if (!v51)
  {
    goto LABEL_65;
  }

  v11 = v52;
  v12 = v53;
  v13 = v55;
  v43 = v54;
  v14 = v56;
  v45 = v51 >> 62;
  if (v51 >> 62)
  {
    goto LABEL_60;
  }

  result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = (result - v55);
  if (__OFSUB__(result, v55))
  {
    goto LABEL_62;
  }

LABEL_4:
  v16 = &v15[-v43];
  if (__OFSUB__(v15, v43))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v49 = v10;
  v35 = v11;
  v36 = v7;
  if (v15 == v16)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a3 + 32))(a2, a3);
  }

  v10 = a2;
  result = (*(a3 + 16))(a2, a3);
  if (v11)
  {
    v7 = v15;
  }

  else
  {
    v7 = v16;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (v7)
  {
    v34[2] = v14;
    v17 = 0;
    v50 = v49 & 0xC000000000000001;
    v18 = v49 & 0xFFFFFFFFFFFFFF8;
    v47 = v12 + 32;
    v48 = v49 & 0xFFFFFFFFFFFFFF8;
    if (v49 < 0)
    {
      v18 = v49;
    }

    v40 = v18;
    v34[1] = v13;
    v44 = v49 + 32;
    v39 = a3 + 24;
    v38 = (v36 + 2);
    v37 = (v36 + 1);
    v36 += 4;
    v14 = -(v13 + v43);
    v13 = 1;
    v19 = v11;
    while (1)
    {
      if (__OFADD__(v17, 1))
      {
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
LABEL_60:
        result = __CocoaSet.count.getter();
        v15 = (result - v13);
        if (!__OFSUB__(result, v13))
        {
          goto LABEL_4;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (v12)
      {
        if (v11)
        {
          if (v45)
          {
            v20 = __CocoaSet.count.getter();
          }

          else
          {
            v20 = *(v48 + 16);
          }

          v23 = v20 + v14;
          if (v20 + v14 < 0)
          {
            goto LABEL_57;
          }

          if (v23 >= *(v12 + 16))
          {
            goto LABEL_59;
          }

          v21 = *(v47 + 4 * v23);
LABEL_33:
          if (v50)
          {
            goto LABEL_34;
          }

          goto LABEL_40;
        }

        if (v17 >= *(v12 + 16))
        {
          goto LABEL_58;
        }

        v21 = *(v47 + 4 * v17);
        if (v50)
        {
LABEL_34:
          v24 = MEMORY[0x193AC03C0](v21, v49);
          goto LABEL_43;
        }
      }

      else
      {
        v21 = v17;
        if ((v11 & 1) == 0)
        {
          goto LABEL_33;
        }

        if (v45)
        {
          v22 = __CocoaSet.count.getter();
        }

        else
        {
          v22 = *(v48 + 16);
        }

        if (v17 < v43)
        {
          v21 = v22 + v14;
        }

        else
        {
          v21 = v17 - v43;
        }

        if (v50)
        {
          goto LABEL_34;
        }
      }

LABEL_40:
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      if (v21 >= *(v48 + 16))
      {
        goto LABEL_56;
      }

      v24 = *(v44 + 8 * v21);

LABEL_43:
      ++v17;
      v25 = *(v24 + 32);

      v26 = *(v24 + 40);

      v51 = v25;
      v52 = v26;
      v10 = _ViewOutputs.subscript.getter(a2, a2, a3);

      if ((v10 & 0x100000000) != 0)
      {
        v11 = v19;
        if (v17 == v7)
        {
          return outlined consume of DynamicContainer.Info?(v49, v35, v12);
        }
      }

      else if (v13)
      {
        v28 = AssociatedTypeWitness;
        Value = AGGraphGetValue();
        v30 = v41;
        (*v38)(v41, Value, v28);
        v10 = v46;
        (*v37)(v46, v28);
        (*v36)(v10, v30, v28);
        if (v17 == v7)
        {
          return outlined consume of DynamicContainer.Info?(v49, v35, v12);
        }

        v13 = 0;
        v11 = v19;
      }

      else
      {
        v31 = MEMORY[0x1EEE9AC00](v27);
        v34[-4] = a2;
        v34[-3] = a3;
        LODWORD(v34[-2]) = v10;
        v10 = a2;
        (*(a3 + 24))(v46, partial apply for closure #1 in DynamicPreferenceCombiner.value.getter, v31);
        if (v17 == v7)
        {
          return outlined consume of DynamicContainer.Info?(v49, v35, v12);
        }

        v11 = v19;
        v13 = 0;
      }

      ++v14;
      if (v17 >= v7)
      {
        goto LABEL_54;
      }
    }
  }

  v32 = v49;
  v33 = v35;

  return outlined consume of DynamicContainer.Info?(v32, v33, v12);
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color(uint64_t *a1@<X8>, void *a2@<X0>)
{
  _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c5ColorE0C_Tt1g5(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t type metadata completion function for ZStack(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree(319, &type metadata for _ZStackLayout, *(a1 + 16), &protocol witness table for _ZStackLayout);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ViewList.applySublists(from:style:list:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v10[0] = BYTE4(a3) & 1;
  v16 = v7;
  v14 = 0;
  v15 = 0;
  v11 = a4;
  v12 = a5;
  v8 = *(a7 + 64);
  v13 = BYTE4(a3) & 1;
  return v8(a1, &v16, a3 | ((BYTE4(a3) & 1) << 32), &v14, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v10, a6) & 1;
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2B5(Swift::UInt *a1, _OWORD *a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(v4, v11) || (result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>(0);
    v9 = swift_allocObject();
    v10 = a2[1];
    *(v9 + 72) = *a2;
    *(v9 + 88) = v10;
    *(v9 + 104) = a2[2];
    *(v9 + 113) = *(a2 + 41);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>);
    }
  }
}

uint64_t specialized DynamicContainerInfo.updateItems(disableTransitions:)(char a1)
{
  v2 = v1;
  *v44 = 0;
  v4 = *v1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  Value = AGGraphGetValue();
  v7 = v6;
  outlined init with copy of AnyTrackedValue(Value, v37);
  if (v7)
  {
    outlined init with take of AnyTrackedValue(v37, &v38);
    if (!*(&v39 + 1))
    {
      goto LABEL_35;
    }

    outlined init with take of AnyTrackedValue(&v38, v41);
    v36 = 0;
    v8 = *(v2 + 17);
    if (v8 >> 62)
    {
      goto LABEL_48;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v34 = &v34;
    v35 = v9;
    MEMORY[0x1EEE9AC00](v9);
    v31[2] = &v36;
    v31[3] = &v35;
    v31[4] = v2;
    v31[5] = &v44[1];
    v31[6] = v41;
    v32 = a1 & 1;
    v33 = v44;
    *&v38 = 0;
    v10 = v42;
    v11 = v43;
    v12 = __swift_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x1EEE9AC00](v12);
    v30[2] = partial apply for specialized closure #1 in DynamicContainerInfo.updateItems(disableTransitions:);
    v30[3] = v31;

    LOBYTE(v37[0]) = 0;
    v13 = v4;
    v4 = v12;
    ViewList.applySublists(from:list:to:)(&v38, v13, partial apply for closure #1 in DynamicLayoutViewAdaptor.foreachItem(items:_:), v30, v10, v11);

    v14 = v35;
    v15 = v36;
    if (v36 >= v35)
    {
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v41);
      v16 = v44[0];
      goto LABEL_36;
    }

    while (1)
    {
      if (v15 >= v14)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v9 = __CocoaSet.count.getter();
        goto LABEL_6;
      }

      v17 = v14 - 1;
      v18 = *(v2 + 17);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](v14 - 1);
      }

      else
      {
        if (v14 < 1)
        {
          goto LABEL_41;
        }

        if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v19 = *(v18 + 8 * v14 + 24);
      }

      swift_beginAccess();
      v20 = *(v19 + 84);

      v4 = v2;
      if ((specialized DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(v14 - 1, a1 & 1) & 1) == 0)
      {
        v21 = *(v2 + 17);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = *(MEMORY[0x193AC03C0](v14 - 1, *(v2 + 17)) + 64);
          v44[0] = v44[0] & 1 | (v26 != 0.0);
          v27 = *(MEMORY[0x193AC03C0](v15, v21) + 64);

          if (v26 != v27)
          {
            *(MEMORY[0x193AC03C0](v14 - 1, v21) + 64) = v26;

            v44[1] = 1;
          }

          v25 = MEMORY[0x193AC03C0](v14 - 1, v21);
        }

        else
        {
          if (v14 < 1)
          {
            goto LABEL_43;
          }

          if (v17 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = v21 + 8 * v14;
          v4 = *(v22 + 24);
          v23 = *(v4 + 64);
          v24 = v44[0];

          v44[0] = v24 & 1 | (v23 != 0.0);
          if (v15 < 0)
          {
            goto LABEL_45;
          }

          if (v23 != *(*(v21 + 32 + 8 * v15) + 64))
          {
            if (v17 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            *(*(v22 + 24) + 64) = v23;
            v44[1] = 1;
          }

          if (v17 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v25 = *(v22 + 24);
        }

        swift_beginAccess();
        v4 = *(v25 + 84);

        if (v4 == 3)
        {
          if (v20 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v20 != 3 && v4 == v20)
        {
          goto LABEL_9;
        }
      }

      v44[1] = 1;
LABEL_9:
      v14 = v17;
      if (v15 == v17)
      {
        goto LABEL_7;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
LABEL_35:
  outlined destroy of ViewList?(&v38, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  v16 = *(v2 + 19) != 0;
LABEL_36:
  if (v16)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  return v28 | v44[1];
}

uint64_t static Alignment.center.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  return *a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t sub_18D04B7BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void type metadata accessor for (Path, FillStyle)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UncheckedSendable(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v17[-v15];
  if (a2)
  {
    (*(v7 + 16))(v9, a1, v6, v14);
    UncheckedSendable.init(_:)(v9, v6, v16);
    closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v16, v6, *(a3 + 24));
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t closure #1 in ViewBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
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
  (*(v63 + 48))(v65, v63);
  AGGraphSetUpdate();
  v52 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v52);
  v54 = type metadata accessor for ViewBodyAccessor(0, v51, v49, v53);
  v59[-2] = v54;
  swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v54);
  v59[-1] = v55;
  v56 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v50, partial apply for closure #2 in BodyAccessor.setBody(_:), &v59[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v57);
  return (*(v61 + 8))(v50, v56);
}

uint64_t specialized DynamicContainerInfo.updateValue()()
{
  v4 = v0;
  v5 = *AGGraphGetValue() >> 1;
  v133 = v0;
  if (v5 != *(v0 + 192))
  {
    *(v0 + 192) = v5;
    v6 = 1;
    if ((*(v0 + 196) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = *(v0 + 136);
    if (v7 >> 62)
    {
      goto LABEL_45;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = 0;
    if (v8)
    {
LABEL_7:
      v3 = 0;
      v9 = v7 & 0xC000000000000001;
      v4 = v7 & 0xFFFFFFFFFFFFFF8;
      do
      {
        v1 = v3;
        while (1)
        {
          if (v1 >= v8)
          {
            goto LABEL_42;
          }

          v3 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_43;
          }

          if (v9)
          {
            v10 = MEMORY[0x193AC03C0](v1, v7);
          }

          else
          {
            if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v10 = *(v7 + 8 * v1 + 32);
          }

          swift_beginAccess();
          v11 = *(v10 + 84);

          if (!v11)
          {
            break;
          }

          ++v1;
          if (v3 == v8)
          {
            goto LABEL_23;
          }
        }

        if (v9)
        {
          v1 = MEMORY[0x193AC03C0](v1, v7);
        }

        else
        {
          if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v1 = *(v7 + 8 * v1 + 32);
        }

        v2 = 1;
        swift_beginAccess();
        *(v1 + 84) = 1;
      }

      while (v3 != v8);
    }

LABEL_23:
    v4 = v133;
    *(v133 + 196) = 0;
    goto LABEL_24;
  }

  v6 = *(v0 + 60) & 1;
  if (*(v0 + 196) == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = 0;
LABEL_24:
  v7 = v4;
  LOWORD(v3) = specialized DynamicContainerInfo.updateItems(disableTransitions:)(v6);
  if (v3)
  {
    goto LABEL_54;
  }

  v13 = *(v4 + 136);
  if (v13 >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_53;
  }

  do
  {
    v14 = v1;
    while (v1 >= v14)
    {
      v15 = v14 - 1;
      v16 = *(v4 + 136);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v14 - 1);
      }

      else
      {
        if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v7 = *(v16 + 8 * v14 + 24);
      }

      swift_beginAccess();
      v17 = *(v7 + 84);

      if (v17 == 2)
      {
        v7 = v4;
        if ((specialized DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(v14 - 1, v6) & 1) == 0)
        {
          goto LABEL_29;
        }

        v2 = 1;
        if (!--v14)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v17 != 3)
        {
          goto LABEL_53;
        }

LABEL_29:
        --v14;
        if (!v15)
        {
          goto LABEL_53;
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v12 = __CocoaSet.count.getter();
    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_50:
      v8 = v12;
      v2 = 0;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_47:
    v12 = __CocoaSet.count.getter();
    if (v12 < 0)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v1 = v12;
  }

  while (v12);
LABEL_53:
  if ((v2 & 1) == 0)
  {
    v24 = *(v4 + 136);
    if (!(v24 >> 62))
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_205;
      }

      goto LABEL_62;
    }

LABEL_314:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_205;
    }

LABEL_62:
    result = AGGraphGetOutputValue();
    if (!result)
    {
      goto LABEL_205;
    }

    return result;
  }

LABEL_54:
  LOWORD(v126) = v3;
  v18 = *(v4 + 136);
  v118 = (v4 + 136);
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  v20 = v18 >> 62;
  if (v18 >> 62)
  {
    goto LABEL_301;
  }

  v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v119 = *(v4 + 168);
  v120 = v21;
  v115 = (v4 + 168);
  v114 = (v4 + 160);
  v127 = *(v4 + 160);
  v22 = v21 - v119 - v127;
  v134 = v21 - v119;
  if (v22 < v21 - v119)
  {
    if (v21 >= v22)
    {
      goto LABEL_57;
    }

LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

LABEL_106:
  v18 = *(v4 + 144);
  if (*(v18 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = *(v4 + 144);
    type metadata accessor for _NativeDictionary<UInt32, Int>();
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    v18 = v135;
    *(v4 + 144) = v135;
  }

  *(v4 + 176) = 1;
  v50 = v134;
  if (v134 < 0)
  {
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v19 = v120;
  v125 = v22;
  if (v120 == v119)
  {
    goto LABEL_138;
  }

  if (!v134)
  {
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      if ((v18 & 0x8000000000000000) != 0)
      {
        v1 = v18;
      }

      else
      {
        v1 = v19;
      }

      v111 = __CocoaSet.count.getter();
      v114 = (v4 + 160);
      v115 = (v4 + 168);
      v119 = *(v4 + 168);
      v120 = v111;
      v127 = *(v4 + 160);
      v22 = v111 - v119 - v127;
      v134 = v111 - v119;
      if (v22 >= v111 - v119)
      {
        goto LABEL_106;
      }

      if (__CocoaSet.count.getter() < v22)
      {
        goto LABEL_306;
      }

LABEL_57:
      if (v22 < 0)
      {
        goto LABEL_309;
      }

      if (v20)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v23 < v134)
      {
        goto LABEL_310;
      }

      if (v134 < 0)
      {
        goto LABEL_311;
      }

      if ((v18 & 0xC000000000000001) != 0 && v127)
      {
        v1 = type metadata accessor for DynamicContainer.ItemInfo();

        v26 = v22;
        do
        {
          v27 = v26 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v26);
          v26 = v27;
        }

        while (v134 != v27);
        if (!v20)
        {
LABEL_72:
          v28 = v18 & 0xFFFFFFFFFFFFFF8;
          v18 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v134) | 1;
          v29 = v22;
          goto LABEL_75;
        }
      }

      else
      {

        if (!v20)
        {
          goto LABEL_72;
        }
      }

      v28 = _CocoaArrayWrapper.subscript.getter();
      v18 = v30;
      v29 = v31;
      v4 = v32;
LABEL_75:
      v19 = v4 >> 1;
      if (v29 == v4 >> 1)
      {
        goto LABEL_105;
      }

      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
      }

      if (v20 == v19)
      {
        goto LABEL_105;
      }

      v124 = v22;
      while (v20 >= v29)
      {
        v19 = v4 >> 1;
        if (v20 >= (v4 >> 1))
        {
          break;
        }

        v2 = *(v18 + 8 * v20);

        v128 = v20;
        v33 = v20;
        while (1)
        {
          v20 = v33 - 1;
          if (__OFSUB__(v33, 1))
          {
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
            goto LABEL_272;
          }

          if (v20 < v29)
          {
            goto LABEL_268;
          }

          v34 = v4 >> 1;
          if (v20 >= (v4 >> 1))
          {
            goto LABEL_268;
          }

          v35 = *(v18 + 8 * v20);
          if (*(v2 + 72) >= *(v35 + 72))
          {
            break;
          }

          swift_retain_n();
          if ((v4 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
          {
            _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(v18, v29, v4, v36);
            v38 = v37;
            v18 = v39;
            v29 = v40;
            v4 = v41;
            swift_unknownObjectRelease();
            v34 = v4 >> 1;
            v28 = v38;
          }

          if (v33 < v29 || v33 >= v34)
          {
            goto LABEL_269;
          }

          v1 = *(v18 + 8 * v33);
          *(v18 + 8 * v33) = v35;

          --v33;
          v42 = v20;
          if (v20 == v29)
          {
            goto LABEL_94;
          }
        }

        v20 = v33;
        v42 = v29;
LABEL_94:
        if (v20 == v128)
        {

          v29 = v42;
          v22 = v124;
          goto LABEL_103;
        }

        v22 = v124;
        if (v4 & 1) != 0 && (swift_isUniquelyReferenced_nonNull())
        {
          v29 = v42;
        }

        else
        {
          _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(v18, v42, v4, v43);
          v45 = v44;
          v18 = v46;
          v29 = v47;
          v4 = v48;
          swift_unknownObjectRelease();
          v28 = v45;
        }

        if (v20 < v29)
        {
          goto LABEL_299;
        }

        v19 = v4 >> 1;
        if (v20 >= (v4 >> 1))
        {
          goto LABEL_299;
        }

        v1 = *(v18 + 8 * v20);
        *(v18 + 8 * v20) = v2;

LABEL_103:
        v20 = v128;
        if (__OFADD__(v128, 1))
        {
          goto LABEL_296;
        }

        v20 = v128 + 1;
        if (v128 + 1 == v4 >> 1)
        {
LABEL_105:
          specialized Array.subscript.setter(v28, v18, v29, v4, v22, v134);
          swift_unknownObjectRelease();
          v4 = v133;
          goto LABEL_106;
        }
      }
    }
  }

  v1 = 0;
  v51 = 0;
  v19 = v118;
  v52 = *v118;
  v53 = *v118 & 0xC000000000000001;
  v54 = *v118 & 0xFFFFFFFFFFFFFF8;
  v20 = 1;
  v129 = v54;
  while (1)
  {
    v55 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_276;
    }

    if (v53)
    {
      v56 = MEMORY[0x193AC03C0](v1, v52);
    }

    else
    {
      v19 = *(v54 + 16);
      if (v1 >= v19)
      {
        goto LABEL_286;
      }
    }

    v2 = *(v56 + 24);

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 144);
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
    v60 = *(v18 + 16);
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v19 = v60 + v61;
    if (v62)
    {
      goto LABEL_277;
    }

    v4 = v59;
    if (*(v18 + 24) >= v19)
    {
      if ((v57 & 1) == 0)
      {
        v65 = v58;
        specialized _NativeDictionary.copy()();
        v58 = v65;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v57);
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
      if ((v4 & 1) != (v63 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_322:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    v54 = v129;
    if (v4)
    {
      *(*(v18 + 56) + 8 * v58) = v1;
    }

    else
    {
      *(v18 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      *(*(v18 + 48) + 4 * v58) = v2;
      *(*(v18 + 56) + 8 * v58) = v1;
      v64 = *(v18 + 16);
      v62 = __OFADD__(v64, 1);
      v19 = v64 + 1;
      if (v62)
      {
        goto LABEL_283;
      }

      *(v18 + 16) = v19;
    }

    v4 = v133;
    *(v133 + 144) = v18;
    if (v53)
    {
      *(MEMORY[0x193AC03C0](v1, v52) + 76) = v51;

      v2 = *(MEMORY[0x193AC03C0](v1, v52) + 28);
      swift_unknownObjectRelease();
      if (v20)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v19 = *(v129 + 16);
      if (v1 >= v19)
      {
        goto LABEL_287;
      }

      v19 = v52 + 8 * v1;
      *(*(v19 + 32) + 76) = v51;
      if (v1 >= *(v129 + 16))
      {
        goto LABEL_288;
      }

      v19 = *(v19 + 32);
      v2 = *(v19 + 28);
      if (v20)
      {
LABEL_129:
        v20 = v2 == 1;
        goto LABEL_134;
      }
    }

    v20 = 0;
LABEL_134:
    v50 = v134;
    if (v55 == v134)
    {
      break;
    }

    v51 += v2;
    ++v1;
    if (v55 >= v134)
    {
      goto LABEL_272;
    }
  }

  *(v133 + 176) = v20;
  v22 = v125;
LABEL_138:
  if (*(v18 + 16) != v50)
  {
    goto LABEL_322;
  }

  if ((v126 & 0x100) != 0)
  {
    v67 = v22;
    if (v127)
    {
      v67 = v22 + v50;
      if (__OFADD__(v22, v50))
      {
        __break(1u);
LABEL_317:
        swift_once();
LABEL_178:
        v83 = static Semantics.v5;
        v2 = v116;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        v18 = &static Semantics.forced;
        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_182:
            if (!v22)
            {
LABEL_196:
              addRemoved #1 <A>() in DynamicContainerInfo.updateValue()(v22, v134, v113);
              goto LABEL_197;
            }

            v20 = 0;
LABEL_187:
            swift_beginAccess();
            v84 = 0;
            do
            {
              if (v22 == v84)
              {
                goto LABEL_289;
              }

              v18 = *v116;
              v85 = *(*v116 + 2);
              if (v84 >= v85)
              {
                goto LABEL_290;
              }

              v86 = *(v18 + 4 * v84 + 32);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85 + 1, 1, v18);
              }

              v88 = *(v18 + 16);
              v87 = *(v18 + 24);
              if (v88 >= v87 >> 1)
              {
                v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v18);
              }

              ++v84;
              *(v18 + 16) = v88 + 1;
              v19 = v18 + 4 * v88;
              *(v19 + 32) = v86;
              *v116 = v18;
            }

            while (v22 != v84);
            if (v20)
            {
              goto LABEL_197;
            }

            goto LABEL_196;
          }
        }

        else if (static Semantics.forced < v83)
        {
          goto LABEL_182;
        }

        addRemoved #1 <A>() in DynamicContainerInfo.updateValue()(v22, v134, v113);
        if (!v22)
        {
LABEL_197:
          v89 = v22 + v134;
          if (__OFADD__(v22, v134))
          {
            goto LABEL_319;
          }

          if (v89 < v22)
          {
            goto LABEL_320;
          }

          swift_beginAccess();
          v90 = *v116;
          if (*(*v116 + 2) < v89)
          {
            goto LABEL_321;
          }

          v4 = v90 + 32;
          v1 = (2 * v89) | 1;
          v2 = v125;
          v112 = v89;
          if (v125 != v89)
          {
            v20 = v125 + 1;
            if (v125 + 1 != v112)
            {
LABEL_234:
              v132 = *v118 & 0xC000000000000001;
              v126 = *v118;
              v121 = *v118 + 32;
              v123 = *v118 & 0xFFFFFFFFFFFFFF8;

              while (v20 >= v2)
              {
                v19 = v1 >> 1;
                if (v20 >= (v1 >> 1))
                {
                  break;
                }

                v98 = *(v4 + 4 * v20);
                v117 = v20;
                while (1)
                {
                  v99 = v20 - 1;
                  if (__OFSUB__(v20, 1))
                  {
                    goto LABEL_273;
                  }

                  if (v99 < v2)
                  {
                    goto LABEL_274;
                  }

                  v100 = v1 >> 1;
                  if (v99 >= (v1 >> 1))
                  {
                    goto LABEL_274;
                  }

                  v18 = *(v4 + 4 * v99);
                  if (v132)
                  {
                    v101 = *(MEMORY[0x193AC03C0](v98, v126) + 64);

                    v102 = MEMORY[0x193AC03C0](v18, v126);
                  }

                  else
                  {
                    v19 = *(v123 + 16);
                    if (v19 <= v98)
                    {
                      goto LABEL_284;
                    }

                    if (v19 <= v18)
                    {
                      goto LABEL_285;
                    }

                    v101 = *(*(v121 + 8 * v98) + 64);
                  }

                  v103 = *(v102 + 64);

                  if (v101 >= v103)
                  {
                    break;
                  }

                  if ((v1 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
                  {
                    v104 = _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vys6UInt32VG_Tt1g5Tf4gX_n(v4, v2, v1);
                    v4 = v105;
                    v2 = v106;
                    v1 = v107;
                    swift_unknownObjectRelease();
                    v100 = v1 >> 1;
                    v90 = v104;
                  }

                  if (v20 < v2 || v20 >= v100)
                  {
                    goto LABEL_275;
                  }

                  *(v4 + 4 * v20--) = v18;
                  v18 = v99;
                  if (v99 == v2)
                  {
                    goto LABEL_255;
                  }
                }

                v99 = v20;
                v18 = v2;
LABEL_255:
                if (v99 == v117)
                {
                  v2 = v18;
                }

                else
                {
                  if (v1 & 1) != 0 && (swift_isUniquelyReferenced_nonNull())
                  {
                    v2 = v18;
                  }

                  else
                  {
                    v18 = _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vys6UInt32VG_Tt1g5Tf4gX_n(v4, v18, v1);
                    v4 = v108;
                    v2 = v109;
                    v1 = v110;
                    swift_unknownObjectRelease();
                    v90 = v18;
                  }

                  if (v99 < v2)
                  {
                    goto LABEL_312;
                  }

                  v19 = v1 >> 1;
                  if (v99 >= (v1 >> 1))
                  {
                    goto LABEL_312;
                  }

                  *(v4 + 4 * v99) = v98;
                }

                if (__OFADD__(v117, 1))
                {
                  goto LABEL_307;
                }

                v20 = v117 + 1;
                if (v117 + 1 == v1 >> 1)
                {
                  goto LABEL_203;
                }
              }

              goto LABEL_300;
            }
          }

LABEL_203:
          specialized Array.subscript.setter(v90, v4, v2, v1, v125, v112);
          swift_endAccess();
          swift_unknownObjectRelease();
          v4 = v133;
          goto LABEL_204;
        }

        v20 = 1;
        goto LABEL_187;
      }
    }

    v68 = v4;
    v18 = v67 & ~(v67 >> 63);
    v69 = swift_allocObject();
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0, MEMORY[0x1E69E7CC0]);
    v113 = v69;
    *(v69 + 16) = v70;
    v116 = (v69 + 16);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v4 = v70;
      if (v22)
      {
        v71 = 0;
        v20 = 0x100000000;
        do
        {
          if (v71 == 0x100000000)
          {
            goto LABEL_282;
          }

          v1 = *(v4 + 16);
          v72 = *(v4 + 24);
          v18 = v1 + 1;
          if (v1 >= v72 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v1 + 1, 1, v4);
          }

          *(v4 + 4 * v1 + 32) = v71;
          v19 = v71 + 1;
          *(v4 + 16) = v18;
          v71 = v19;
        }

        while (v22 != v19);
        *v116 = v4;
      }

      if (v120 > 31)
      {
        v4 = v68;
        specialized MutableCollection<>.sort(by:)(v116, v68);
        if (v127)
        {
          goto LABEL_177;
        }
      }

      else
      {
        v19 = *(v4 + 16);
        if (v19 < 2)
        {
          v4 = v68;
          if (!v127)
          {
            goto LABEL_204;
          }

LABEL_177:
          if (one-time initialization token for v5 == -1)
          {
            goto LABEL_178;
          }

          goto LABEL_317;
        }

        v1 = *v118;
        v20 = *v118 & 0xC000000000000001;
        v122 = v4 + 32;
        v130 = *v118 & 0xFFFFFFFFFFFFFF8;
        v73 = *v118 + 32;
        v74 = (v4 + 36);
        for (i = 1; i != v19; ++i)
        {
          if (i >= v19)
          {
            goto LABEL_297;
          }

          v76 = 0;
          v18 = *(v122 + 4 * i);
          v126 = v74;
          v77 = v74;
          while (1)
          {
            v2 = i + v76;
            v19 = i + v76 - 1;
            if (v19 >= *(v4 + 16))
            {
              goto LABEL_270;
            }

            v78 = *(v77 - 1);
            if (v20)
            {
              v79 = *(MEMORY[0x193AC03C0](v18, v1) + 64);

              v80 = MEMORY[0x193AC03C0](v78, v1);
            }

            else
            {
              v19 = *(v130 + 16);
              if (v19 <= v18)
              {
                goto LABEL_278;
              }

              if (v19 <= v78)
              {
                goto LABEL_279;
              }

              v79 = *(*(v73 + 8 * v18) + 64);
            }

            v81 = *(v80 + 64);

            if (v79 >= v81)
            {
              break;
            }

            v19 = *(v4 + 16);
            if (v2 >= v19)
            {
              goto LABEL_271;
            }

            *v77-- = v78;
            --v76;
            if (!(i + v76))
            {
              v19 = 0;
              v22 = v125;
              v82 = v126;
              goto LABEL_174;
            }
          }

          v22 = v125;
          v82 = v126;
          if (v76)
          {
            v19 = i + v76;
LABEL_174:
            if (v19 >= *(v4 + 16))
            {
              goto LABEL_298;
            }

            *(v122 + 4 * v19) = v18;
          }

          v19 = *(v4 + 16);
          v74 = (v82 + 4);
        }

        *v116 = v4;
        v4 = v133;
        if (v127)
        {
          goto LABEL_177;
        }
      }

LABEL_204:
      swift_beginAccess();
      v18 = *(v113 + 16);

      *(v4 + 152) = v18;
      v66 = v134;
      if (v120 != v119)
      {
        goto LABEL_207;
      }

      goto LABEL_205;
    }

    goto LABEL_313;
  }

  v66 = v134;
  v18 = 0;
  *(v4 + 152) = 0;
  if (v120 != v119)
  {
LABEL_207:
    v91 = 0;
    v92 = *v118;
    v93 = *v118 & 0xC000000000000001;
    v90 = *v118 & 0xFFFFFFFFFFFFFF8;
    v125 = *v114;
    v19 = *v115 + *v114;
    v131 = v18 + 32;
    v126 = *v118 + 32;
    v20 = -v19;
    v94 = *v118 >> 62;
    do
    {
      if (v91 >= v66)
      {
        goto LABEL_280;
      }

      if (__OFADD__(v91, 1))
      {
        goto LABEL_281;
      }

      if (v18)
      {
        if (v127)
        {
          if (v94)
          {
            v19 = __CocoaSet.count.getter() + v20;
            if ((v19 & 0x8000000000000000) != 0)
            {
LABEL_233:
              __break(1u);
              goto LABEL_234;
            }
          }

          else
          {
            v19 = *(v90 + 16) + v20;
            if ((v19 & 0x8000000000000000) != 0)
            {
              goto LABEL_233;
            }
          }

          if (v19 >= *(v18 + 16))
          {
            goto LABEL_291;
          }

          v96 = *(v131 + 4 * v19);
          if (v93)
          {
LABEL_213:
            v2 = MEMORY[0x193AC03C0](v96, v92);
            goto LABEL_214;
          }
        }

        else
        {
          v19 = *(v18 + 16);
          if (v91 >= v19)
          {
            goto LABEL_294;
          }

          v19 = v18 + 32;
          v96 = *(v131 + 4 * v91);
          if (v93)
          {
            goto LABEL_213;
          }
        }
      }

      else
      {
        v96 = v91;
        v19 = v127;
        if (v127)
        {
          if (v94)
          {
            v95 = __CocoaSet.count.getter();
          }

          else
          {
            v95 = *(v90 + 16);
          }

          v19 = v91 - v125;
          if (v91 < v125)
          {
            v96 = v95 + v20;
          }

          else
          {
            v96 = v91 - v125;
          }
        }

        if (v93)
        {
          goto LABEL_213;
        }
      }

      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_292;
      }

      v19 = *(v90 + 16);
      if (v96 >= v19)
      {
        goto LABEL_293;
      }

      v2 = *(v126 + 8 * v96);

LABEL_214:
      v97 = *(v2 + 16);

      AGSubgraphSetIndex();

      ++v20;
      v1 = ++v91;
      v4 = v133;
      v66 = v134;
    }

    while (v91 != v134);
  }

LABEL_205:
  ++*(v4 + 180);
  return AGGraphSetOutputValue();
}