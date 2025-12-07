void MaskDisplayList.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1[4];
  v4 = v1[5];
  v25 = *(v1 + 24);
  v6 = *MEMORY[0x1E698D3F8];
  v7 = MEMORY[0x1E69E7CC0];
  if (v4 == *MEMORY[0x1E698D3F8])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *Value;
    v8 = *(Value + 8);
    v9 = *(Value + 12);

    if (!*(v10 + 16))
    {
      goto LABEL_10;
    }
  }

  v24 = v3;
  if (v5 == v6)
  {
    v12 = 0;
    v13 = 0x40000000;
    v14 = v7;
    if (*(v7 + 16))
    {
LABEL_7:
      type metadata accessor for CGPoint(0);
      v15 = AGGraphGetValue();
      v16 = *v15;
      v17 = v15[1];
      v18 = AGGraphGetValue();
      v19 = v16 - *v18;
      v20 = v17 - v18[1];
      v21 = swift_allocObject();
      *(v21 + 16) = v10;
      *(v21 + 24) = v8;
      *(v21 + 28) = v9;
      *(v21 + 32) = 0;
      type metadata accessor for CGSize(0);
      *&v28 = v19;
      *(&v28 + 1) = v20;
      v22 = *AGGraphGetValue();
      ++static DisplayList.Version.lastValue;
      v29 = v22;
      *v31 = 0x700000000;
      *&v31[8] = v14;
      *&v31[16] = v13 | v12;
      *&v31[24] = v24;
      *&v30 = static DisplayList.Version.lastValue;
      *(&v30 + 1) = v21;
      LOBYTE(v34[0]) = v25;
      DisplayList.Item.canonicalize(options:)(v34);
      v32[2] = v30;
      v33[0] = *v31;
      *(v33 + 12) = *&v31[12];
      v32[0] = v28;
      v32[1] = v29;
      v26[2] = v30;
      v27[0] = *v31;
      *(v27 + 12) = *&v31[12];
      v26[0] = v28;
      v26[1] = v29;
      outlined init with copy of DisplayList.Item(v32, v34);
      DisplayList.init(_:)(v26, a1);
      v34[2] = v30;
      v35[0] = *v31;
      *(v35 + 12) = *&v31[12];
      v34[0] = v28;
      v34[1] = v29;
      outlined destroy of DisplayList.Item(v34);
      return;
    }
  }

  else
  {
    v23 = AGGraphGetValue();
    v14 = *v23;
    v12 = *(v23 + 12) << 32;
    v13 = *(v23 + 8) | 0x40000000;

    if (*(v14 + 16))
    {
      goto LABEL_7;
    }
  }

LABEL_10:

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
}

uint64_t sub_18D281824()
{

  return swift_deallocObject();
}

uint64_t assignWithTake for _AnyAnimatableData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

Swift::Void __swiftcall EnvironmentalViewChild.updateValue()()
{
  v2 = v0;
  v116 = *MEMORY[0x1E69E9840];
  v101 = type metadata accessor for OSSignpostID();
  v82 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v72 - v5;
  v6 = *(v2 + 16);
  v83 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = &v72 - v9;
  v85 = type metadata accessor for UncheckedSendable(0, v6, v10, v11);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v92 = &v72 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v91 = v19;
  v20 = *(v19 + 48);
  v94 = *(v1 + 8);
  Value = AGGraphGetValue();
  v23 = v22;
  v24 = *(*(v6 - 8) + 16);
  v93 = v6;
  v24(v18, Value, v6);
  v89 = v18;
  v18[v20] = v23 & 1;
  v25 = AGGraphGetValue();
  v28 = *v25;
  v27 = v25[1];
  if (v23)
  {
  }

  else
  {
    v29 = v26;

    if ((v29 & 1) == 0 || (v30 = , v31 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v30), , (v31 & 1) == 0))
    {
      if (AGGraphGetOutputValue())
      {
        (*(v90 + 8))(v89, v91);

        return;
      }
    }
  }

  v81 = v27;
  PropertyList.Tracker.reset()();
  if (v28)
  {
    v32 = *(v28 + 64);
  }

  else
  {
    v32 = 0;
  }

  v33 = v87;
  v34 = *(v94 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v34 + 16));
  *(v34 + 24) = v32;
  os_unfair_lock_unlock((v34 + 16));

  v86 = v28;

  (*(v90 + 16))(v15, v89, v91);
  UncheckedSendable.init(_:)(v15, v93, v92);
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v35 = static Signpost.bodyInvoke;
    v36 = word_1ED539040;
    v111 = static Signpost.bodyInvoke;
    v112 = word_1ED539040;
    v80 = HIBYTE(word_1ED539040);
    v113 = byte_1ED539042;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v48 = v92;
      v49 = closure #1 in EnvironmentalViewChild.updateValue()(v86, v94, v93, v83, v33);
      goto LABEL_48;
    }

    v78 = v36;
    v76 = *(&v35 + 1);
    v79 = v35;
    v77 = v8;
    static OSSignpostID.exclusive.getter();
    v37 = static os_signpost_type_t.begin.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_18DDAB4C0;
    v39 = AGTypeID.description.getter();
    v41 = v40;
    v42 = MEMORY[0x1E69E6158];
    *(v38 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v44 = v43;
    *(v38 + 64) = v43;
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    v45 = specialized static Tracing.libraryName(defining:)();
    *(v38 + 96) = v42;
    *(v38 + 104) = v44;
    *(v38 + 72) = v45;
    *(v38 + 80) = v46;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v47 = v79;
    v75 = _signpostLog;
    if (v80)
    {
      break;
    }

    v73 = AssociatedTypeWitness;
    v74 = v2;
    if (v79 == 20)
    {
      v50 = 3;
    }

    else
    {
      v50 = 4;
    }

    AssociatedTypeWitness = bswap32(v79) | (4 * WORD1(v79));
    v2 = v37;
    v51 = v82 + 16;
    v95 = *(v82 + 16);
    v52 = v95(v102, v88, v101);
    v33 = 0;
    LOBYTE(v106[0]) = 1;
    v104 = v50;
    v99 = 16 * v50;
    v96 = v51;
    v100 = (v51 - 8);
    v98 = v38 + 32;
    v97 = v47;
LABEL_21:
    v103 = &v72;
    MEMORY[0x1EEE9AC00](v52);
    v8 = &v72 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = v8 + 8;
    v55 = v104;
    v56 = v8 + 8;
    do
    {
      *(v56 - 1) = 0;
      *v56 = 0;
      v56 += 16;
      --v55;
    }

    while (v55);
    v57 = v98 + 40 * v33;
    v58 = v104;
    while (1)
    {
      v59 = *(v38 + 16);
      if (v33 == v59)
      {
        LOBYTE(v106[0]) = 0;
LABEL_29:
        v63 = v97;
        if (v97 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v8[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v8[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v63 != 20 && v8[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v64 = v101;
        v65 = *v100;
        v66 = v102;
        (*v100)(v102, v101);
        v67 = __swift_project_value_buffer(v64, static OSSignpostID.continuation);
        v52 = v95(v66, v67, v64);
        if ((v106[0] & 1) == 0)
        {
          v65(v102, v101);

          v2 = v74;
          AssociatedTypeWitness = v73;
          v33 = v87;
          goto LABEL_44;
        }

        goto LABEL_21;
      }

      if (v33 >= v59)
      {
        break;
      }

      ++v33;
      outlined init with copy of AnyTrackedValue(v57, &v111);
      v60 = v114;
      v61 = v115;
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      *(v54 - 1) = CVarArg.kdebugValue(_:)(AssociatedTypeWitness | v2, v60, v61);
      *v54 = v62 & 1;
      v54 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v111);
      v57 += 40;
      if (!--v58)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  v110[0] = v37;
  v108 = _signpostLog;
  v109 = &dword_18D018000;
  *&v111 = v79;
  *(&v111 + 1) = v76;
  LOBYTE(v112) = v78;
  v106[0] = "%{public}@.body [in %{public}@]";
  v106[1] = 31;
  v107 = 2;
  v105 = v38;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v110, &v109, &v108, &v111, v88, v106, &v105);

LABEL_44:
  closure #1 in EnvironmentalViewChild.updateValue()(v86, v94, v93, v83, v33);
  static os_signpost_type_t.end.getter();
  v8 = v77;
  v68 = v88;
  if (v80)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    v68 = v88;
    kdebug_trace();
  }

  v49 = (*(v82 + 8))(v68, v101);
  v48 = v92;
LABEL_48:
  v69 = MEMORY[0x1EEE9AC00](v49);
  *(&v72 - 2) = v2;
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentalViewChild<A>, v2, v69);
  *(&v72 - 1) = v70;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v33, partial apply for closure #1 in StatefulRule.value.setter, (&v72 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v71);

  (*(v8 + 1))(v33, AssociatedTypeWitness);
  (*(v90 + 8))(v89, v91);
  (*(v84 + 8))(v48, v85);
}

uint64_t closure #1 in EnvironmentalViewChild.updateValue()@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v12, v13);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v18[-v15];
  closure #1 in closure #1 in EnvironmentalViewChild.updateValue()(a2, a3, a4, a5, &v18[-v15]);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a6, v16, AssociatedTypeWitness);
}

uint64_t closure #1 in closure #1 in EnvironmentalViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  v15[0] = a1;
  v15[1] = a2;
  v13 = *(a4 + 40);

  v13(v15, a3, a4);

  return UncheckedSendable.init(_:)(v12, AssociatedTypeWitness, a5);
}

uint64_t EnvironmentReader.body(environment:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return v2(&v4);
}

void specialized GeometryEffectDisplayList.value.getter(unint64_t a1@<X0>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = BYTE4(a4);
  v6 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] != a4)
  {
    Value = AGGraphGetValue();
    v11 = *Value;
    v9 = *(Value + 12) << 32;
    v10 = *(Value + 8) | 0x40000000;

    if (*(v11 + 16))
    {
      goto LABEL_3;
    }

LABEL_8:

    *a5 = v8;
    *(a5 + 8) = 0;
    *(a5 + 12) = 0;
    return;
  }

  v9 = 0;
  v10 = 0x40000000;
  v11 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_8;
  }

LABEL_3:
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = AGGraphGetValue();
  v16 = v13 - *v15;
  v17 = v14 - v15[1];
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  type metadata accessor for CGSize(0);
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = v22[1];
  v25 = AGGraphGetValue();
  v26 = v20 * v23;
  v27 = v21 * v24;
  if (*v25)
  {
    v19 = (v19 * -128.0 + 0.0) * 0.0078125;
    v28 = v23 - v26;
  }

  else
  {
    v28 = v26;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  *(v29 + 24) = v28;
  *(v29 + 32) = v27;
  *(v29 + 88) = 2;

  *&v34 = v16;
  *(&v34 + 1) = v17;
  v30 = *AGGraphGetValue();
  ++static DisplayList.Version.lastValue;
  v35 = v30;
  *v37 = 0x900000000;
  *&v37[8] = v11;
  *&v37[16] = v10 | v9;
  *&v37[24] = v6;
  *&v36 = static DisplayList.Version.lastValue;
  *(&v36 + 1) = v29;
  LOBYTE(v40[0]) = v5;
  DisplayList.Item.canonicalize(options:)(v40);
  v38[2] = v36;
  v39[0] = *v37;
  *(v39 + 12) = *&v37[12];
  v38[0] = v34;
  v38[1] = v35;
  v32[2] = v36;
  v33[0] = *v37;
  *(v33 + 12) = *&v37[12];
  v32[0] = v34;
  v32[1] = v35;
  outlined init with copy of DisplayList.Item(v38, v40);
  DisplayList.init(_:)(v32, a5);

  v40[2] = v36;
  v41[0] = *v37;
  *(v41 + 12) = *&v37[12];
  v40[0] = v34;
  v40[1] = v35;
  outlined destroy of DisplayList.Item(v40);
}

{
  v6 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] != a4)
  {
    Value = AGGraphGetValue();
    v11 = *Value;
    v9 = *(Value + 12) << 32;
    v10 = *(Value + 8) | 0x40000000;

    if (*(v11 + 16))
    {
      goto LABEL_3;
    }

LABEL_10:

    *a5 = v8;
    *(a5 + 8) = 0;
    *(a5 + 12) = 0;
    return;
  }

  v9 = 0;
  v10 = 0x40000000;
  v11 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_10;
  }

LABEL_3:
  v36 = HIDWORD(a4);
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = AGGraphGetValue();
  v16 = v13 - *v15;
  v17 = v14 - v15[1];
  v18 = AGGraphGetValue();
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  v21 = *(v18 + 48);
  v22 = *(v18 + 56);
  type metadata accessor for CGSize(0);
  v34 = *(v18 + 16);
  v35 = *v18;
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = v23[1];
  v26 = *AGGraphGetValue();
  v27 = v19 * v24;
  v28 = v20 * v25;
  if (v24 > v25)
  {
    v29 = v24;
  }

  else
  {
    v29 = v25;
  }

  if (!v26)
  {
    v24 = NAN;
  }

  v30 = v29 / v22;
  v31 = swift_allocObject();
  *(v31 + 16) = v35;
  *(v31 + 32) = v34;
  *(v31 + 48) = v27;
  *(v31 + 56) = v28;
  *(v31 + 64) = v21;
  *(v31 + 72) = v30;
  *(v31 + 80) = v24;
  *(v31 + 88) = 3;

  *&v39 = v16;
  *(&v39 + 1) = v17;
  v32 = *AGGraphGetValue();
  ++static DisplayList.Version.lastValue;
  v40 = v32;
  *v42 = 0x900000000;
  *&v42[8] = v11;
  *&v42[16] = v10 | v9;
  *&v42[24] = v6;
  *&v41 = static DisplayList.Version.lastValue;
  *(&v41 + 1) = v31;
  LOBYTE(v45[0]) = v36;
  DisplayList.Item.canonicalize(options:)(v45);
  v43[2] = v41;
  v44[0] = *v42;
  *(v44 + 12) = *&v42[12];
  v43[0] = v39;
  v43[1] = v40;
  v37[2] = v41;
  v38[0] = *v42;
  *(v38 + 12) = *&v42[12];
  v37[0] = v39;
  v37[1] = v40;
  outlined init with copy of DisplayList.Item(v43, v45);
  DisplayList.init(_:)(v37, a5);

  v45[2] = v41;
  v46[0] = *v42;
  *(v46 + 12) = *&v42[12];
  v45[0] = v39;
  v45[1] = v40;
  outlined destroy of DisplayList.Item(v45);
}

{
  v6 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] == a4)
  {
    v9 = 0;
    v10 = 0x40000000;
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_3:
      v26 = HIDWORD(a4);
      type metadata accessor for CGPoint(0);
      v25 = *AGGraphGetValue();
      v33 = vsubq_f64(v25, *AGGraphGetValue());
      Value = AGGraphGetValue();
      v13 = Value[1];
      v37[2] = *Value;
      v37[3] = v13;
      v14 = Value[3];
      v37[4] = Value[2];
      v37[5] = v14;
      type metadata accessor for CGSize(0);
      v15 = AGGraphGetValue();
      v16 = *v15;
      v17 = v15[1];
      v18 = AGGraphGetValue();
      _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA010ScalePulseE033_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt4B5(&v33, *v18, v36, v16, v17);
      v19 = *&v36[0];
      v20 = DWORD2(v36[0]);
      v21 = BYTE12(v36[0]);
      v22 = v33;
      outlined copy of DisplayList.Effect(*&v36[0], SBYTE8(v36[0]), SBYTE12(v36[0]));
      v29 = v22;
      v23 = *AGGraphGetValue();
      ++static DisplayList.Version.lastValue;
      v30 = v23;
      *v32 = v20 | (v21 << 32);
      *&v32[8] = v11;
      *&v32[16] = v10 | v9;
      *&v32[24] = v6;
      *&v31 = static DisplayList.Version.lastValue;
      *(&v31 + 1) = v19;
      LOBYTE(v36[0]) = v26;
      DisplayList.Item.canonicalize(options:)(v36);
      v34[2] = v31;
      v35[0] = *v32;
      *(v35 + 12) = *&v32[12];
      v34[0] = v22;
      v34[1] = v30;
      v27[2] = v31;
      v28[0] = *v32;
      *(v28 + 12) = *&v32[12];
      v27[0] = v22;
      v27[1] = v30;
      outlined init with copy of DisplayList.Item(v34, v36);
      DisplayList.init(_:)(v27, a5);
      outlined consume of DisplayList.Effect(v19, v20, v21);
      v36[2] = v31;
      v37[0] = *v32;
      *(v37 + 12) = *&v32[12];
      v36[0] = v29;
      v36[1] = v30;
      outlined destroy of DisplayList.Item(v36);
      return;
    }
  }

  else
  {
    v24 = AGGraphGetValue();
    v11 = *v24;
    v9 = *(v24 + 12) << 32;
    v10 = *(v24 + 8) | 0x40000000;

    if (*(v11 + 16))
    {
      goto LABEL_3;
    }
  }

  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 12) = 0;
}

{
  v6 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] == a4)
  {
    v9 = 0;
    v10 = 0x40000000;
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_3:
      v25 = HIDWORD(a4);
      type metadata accessor for CGPoint(0);
      v24 = *AGGraphGetValue();
      v32 = vsubq_f64(v24, *AGGraphGetValue());
      Value = AGGraphGetValue();
      v13 = *(Value + 16);
      v37[0] = *Value;
      v37[1] = v13;
      v38 = *(Value + 32);
      type metadata accessor for CGSize(0);
      v14 = AGGraphGetValue();
      v15 = *v14;
      v16 = v14[1];
      v17 = AGGraphGetValue();
      _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLV_Tt4B5(v37, &v32, *v17, v35, v15, v16);
      v18 = *&v35[0];
      v19 = DWORD2(v35[0]);
      v20 = BYTE12(v35[0]);
      v21 = v32;
      outlined copy of DisplayList.Effect(*&v35[0], SBYTE8(v35[0]), SBYTE12(v35[0]));
      v28 = v21;
      v22 = *AGGraphGetValue();
      ++static DisplayList.Version.lastValue;
      v29 = v22;
      *v31 = v19 | (v20 << 32);
      *&v31[8] = v11;
      *&v31[16] = v10 | v9;
      *&v31[24] = v6;
      *&v30 = static DisplayList.Version.lastValue;
      *(&v30 + 1) = v18;
      LOBYTE(v35[0]) = v25;
      DisplayList.Item.canonicalize(options:)(v35);
      v33[2] = v30;
      v34[0] = *v31;
      *(v34 + 12) = *&v31[12];
      v33[0] = v21;
      v33[1] = v29;
      v26[2] = v30;
      v27[0] = *v31;
      *(v27 + 12) = *&v31[12];
      v26[0] = v21;
      v26[1] = v29;
      outlined init with copy of DisplayList.Item(v33, v35);
      DisplayList.init(_:)(v26, a5);
      outlined consume of DisplayList.Effect(v18, v19, v20);
      v35[2] = v30;
      v36[0] = *v31;
      *(v36 + 12) = *&v31[12];
      v35[0] = v28;
      v35[1] = v29;
      outlined destroy of DisplayList.Item(v35);
      return;
    }
  }

  else
  {
    v23 = AGGraphGetValue();
    v11 = *v23;
    v9 = *(v23 + 12) << 32;
    v10 = *(v23 + 8) | 0x40000000;

    if (*(v11 + 16))
    {
      goto LABEL_3;
    }
  }

  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 12) = 0;
}

{
  v6 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] == a4)
  {
    v9 = 0;
    v10 = 0x40000000;
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_3:
      v25 = HIDWORD(a4);
      type metadata accessor for CGPoint(0);
      v24 = *AGGraphGetValue();
      v32 = vsubq_f64(v24, *AGGraphGetValue());
      Value = AGGraphGetValue();
      v13 = Value[1];
      v36[2] = *Value;
      v36[3] = v13;
      v36[4] = Value[2];
      type metadata accessor for CGSize(0);
      v14 = AGGraphGetValue();
      v15 = *v14;
      v16 = v14[1];
      v17 = AGGraphGetValue();
      _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA020GlassAppearanceScaleE033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5(&v32, *v17, v35, v15, v16);
      v18 = *&v35[0];
      v19 = DWORD2(v35[0]);
      v20 = BYTE12(v35[0]);
      v21 = v32;
      outlined copy of DisplayList.Effect(*&v35[0], SBYTE8(v35[0]), SBYTE12(v35[0]));
      v28 = v21;
      v22 = *AGGraphGetValue();
      ++static DisplayList.Version.lastValue;
      v29 = v22;
      *v31 = v19 | (v20 << 32);
      *&v31[8] = v11;
      *&v31[16] = v10 | v9;
      *&v31[24] = v6;
      *&v30 = static DisplayList.Version.lastValue;
      *(&v30 + 1) = v18;
      LOBYTE(v35[0]) = v25;
      DisplayList.Item.canonicalize(options:)(v35);
      v33[2] = v30;
      v34[0] = *v31;
      *(v34 + 12) = *&v31[12];
      v33[0] = v21;
      v33[1] = v29;
      v26[2] = v30;
      v27[0] = *v31;
      *(v27 + 12) = *&v31[12];
      v26[0] = v21;
      v26[1] = v29;
      outlined init with copy of DisplayList.Item(v33, v35);
      DisplayList.init(_:)(v26, a5);
      outlined consume of DisplayList.Effect(v18, v19, v20);
      v35[2] = v30;
      v36[0] = *v31;
      *(v36 + 12) = *&v31[12];
      v35[0] = v28;
      v35[1] = v29;
      outlined destroy of DisplayList.Item(v35);
      return;
    }
  }

  else
  {
    v23 = AGGraphGetValue();
    v11 = *v23;
    v9 = *(v23 + 12) << 32;
    v10 = *(v23 + 8) | 0x40000000;

    if (*(v11 + 16))
    {
      goto LABEL_3;
    }
  }

  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 12) = 0;
}

{
  v6 = a1;
  v8 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] == a4)
  {
    v9 = 0;
    v10 = 0x40000000;
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_3:
      v23 = HIDWORD(a4);
      type metadata accessor for CGPoint(0);
      v22 = *AGGraphGetValue();
      v30 = vsubq_f64(v22, *AGGraphGetValue());
      Value = AGGraphGetValue();
      v13 = *(Value + 16);
      v35[0] = *Value;
      v35[1] = v13;
      v35[2] = *(Value + 32);
      type metadata accessor for CGSize(0);
      v14 = *AGGraphGetValue();
      v15 = AGGraphGetValue();
      _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA010_TransformE0V_Tt4B5(v35, &v30, *v15, v33, v14);
      v16 = *&v33[0];
      v17 = DWORD2(v33[0]);
      v18 = BYTE12(v33[0]);
      v19 = v30;
      outlined copy of DisplayList.Effect(*&v33[0], SBYTE8(v33[0]), SBYTE12(v33[0]));
      v26 = v19;
      v20 = *AGGraphGetValue();
      ++static DisplayList.Version.lastValue;
      v27 = v20;
      *v29 = v17 | (v18 << 32);
      *&v29[8] = v11;
      *&v29[16] = v10 | v9;
      *&v29[24] = v6;
      *&v28 = static DisplayList.Version.lastValue;
      *(&v28 + 1) = v16;
      LOBYTE(v33[0]) = v23;
      DisplayList.Item.canonicalize(options:)(v33);
      v31[2] = v28;
      v32[0] = *v29;
      *(v32 + 12) = *&v29[12];
      v31[0] = v19;
      v31[1] = v27;
      v24[2] = v28;
      v25[0] = *v29;
      *(v25 + 12) = *&v29[12];
      v24[0] = v19;
      v24[1] = v27;
      outlined init with copy of DisplayList.Item(v31, v33);
      DisplayList.init(_:)(v24, a5);
      outlined consume of DisplayList.Effect(v16, v17, v18);
      v33[2] = v28;
      v34[0] = *v29;
      *(v34 + 12) = *&v29[12];
      v33[0] = v26;
      v33[1] = v27;
      outlined destroy of DisplayList.Item(v33);
      return;
    }
  }

  else
  {
    v21 = AGGraphGetValue();
    v11 = *v21;
    v9 = *(v21 + 12) << 32;
    v10 = *(v21 + 8) | 0x40000000;

    if (*(v11 + 16))
    {
      goto LABEL_3;
    }
  }

  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 12) = 0;
}

void specialized RendererEffectDisplayList.value.getter(uint64_t a1@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v37 = v5;
  v38 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v35 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v34 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v32 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v31 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v33 = v7;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v36 = v6;
  v21 = HIDWORD(v19);
  _threadGeometryProxyData();
  *&v47 = __PAIR64__(v35, v9);
  *(&v47 + 1) = __PAIR64__(v34, v11);
  *&v48 = __PAIR64__(v32, v13);
  *(&v48 + 1) = __PAIR64__(v31, v15);
  *&v49 = __PAIR64__(v18, v17);
  *(&v49 + 1) = __PAIR64__(v21, v20);
  LODWORD(v50[0]) = v33;
  _setThreadGeometryProxyData();
  AGGraphGetValue();
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = v22[1];
  v25 = AGGraphGetValue();
  v26 = v23 - *v25;
  v27 = v24 - v25[1];
  v28 = AGGraphGetValue();
  v29 = *v1;
  *&v42 = v26;
  *(&v42 + 1) = v27;
  v43 = *v28;
  *&v44[8] = xmmword_18DDE4990;
  *&v44[24] = v36;
  *&v44[32] = v37 | v38;
  *&v44[40] = v29;
  *v44 = v33;
  LOBYTE(v47) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v47);
  v45[2] = *v44;
  v46[0] = *&v44[16];
  *(v46 + 12) = *&v44[28];
  v45[0] = v42;
  v45[1] = v43;
  v40[2] = *v44;
  v41[0] = *&v44[16];
  *(v41 + 12) = *&v44[28];
  v40[0] = v42;
  v40[1] = v43;
  outlined init with copy of DisplayList.Item(v45, &v47);
  DisplayList.init(_:)(v40, a1);
  v49 = *v44;
  v50[0] = *&v44[16];
  *(v50 + 12) = *&v44[28];
  v47 = v42;
  v48 = v43;
  outlined destroy of DisplayList.Item(&v47);
}

{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v42 = v5;
  v43 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v40 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v39 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v37 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v41 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v38 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v62 = __PAIR64__(v40, v9);
  *(&v62 + 1) = __PAIR64__(v39, v11);
  *&v63 = __PAIR64__(v37, v13);
  *(&v63 + 1) = __PAIR64__(v16, v15);
  *&v64 = __PAIR64__(v19, v18);
  *(&v64 + 1) = __PAIR64__(v22, v21);
  LODWORD(v65[0]) = v38;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v45 = *v23;
  v46 = *(v23 + 16);
  *v47 = *(v23 + 32);
  *&v47[13] = *(v23 + 45);
  AGGraphGetValue();
  v24 = swift_allocObject();
  v54 = v45;
  v55 = v46;
  *v56 = *v47;
  *&v56[13] = *&v47[13];
  _s7SwiftUI14GraphicsFilterOWOi3_(&v54);
  v25 = v58;
  v24[5] = v57;
  v24[6] = v25;
  v24[7] = v59[0];
  *(v24 + 124) = *(v59 + 12);
  v26 = v55;
  v24[1] = v54;
  v24[2] = v26;
  v27 = *&v56[16];
  v24[3] = *v56;
  v24[4] = v27;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];

  v34 = AGGraphGetValue();
  v35 = *v1;
  *&v50 = v32;
  *(&v50 + 1) = v33;
  v51 = *v34;
  *v53 = 0xA00000000;
  *&v53[8] = v41;
  *&v53[16] = v42 | v43;
  *&v53[24] = v35;
  *&v52 = v38;
  *(&v52 + 1) = v24;
  LOBYTE(v62) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v62);
  v60[2] = v52;
  v61[0] = *v53;
  *(v61 + 12) = *&v53[12];
  v60[0] = v50;
  v60[1] = v51;
  v48[2] = v52;
  v49[0] = *v53;
  *(v49 + 12) = *&v53[12];
  v48[0] = v50;
  v48[1] = v51;
  outlined init with copy of DisplayList.Item(v60, &v62);
  DisplayList.init(_:)(v48, a1);

  v64 = v52;
  v65[0] = *v53;
  *(v65 + 12) = *&v53[12];
  v62 = v50;
  v63 = v51;
  outlined destroy of DisplayList.Item(&v62);
}

{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v8 = *AGGraphGetValue();
  AGGraphGetValue();
  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = AGGraphGetValue();
  v14 = v11 - *v13;
  v15 = v12 - v13[1];
  v16 = AGGraphGetValue();
  v17 = *v1;
  *&v22 = v14;
  *(&v22 + 1) = v15;
  v23 = *v16;
  *v25 = 0x200000000;
  *&v25[8] = v6;
  *&v25[16] = v5 | v4;
  *&v25[24] = v17;
  *&v24 = v7;
  *(&v24 + 1) = v9;
  LOBYTE(v28[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v28);
  v26[2] = v24;
  v27[0] = *v25;
  *(v27 + 12) = *&v25[12];
  v26[0] = v22;
  v26[1] = v23;
  v20[2] = v24;
  v21[0] = *v25;
  *(v21 + 12) = *&v25[12];
  v20[0] = v22;
  v20[1] = v23;
  outlined init with copy of DisplayList.Item(v26, v28);
  DisplayList.init(_:)(v20, a1);
  v28[2] = v24;
  v29[0] = *v25;
  *(v29 + 12) = *&v25[12];
  v28[0] = v22;
  v28[1] = v23;
  outlined destroy of DisplayList.Item(v28);
}

{
  v59 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v42 = v5;
  v43 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v40 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v39 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v37 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v41 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v38 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v55 = __PAIR64__(v40, v9);
  *(&v55 + 1) = __PAIR64__(v39, v11);
  *&v56 = __PAIR64__(v37, v13);
  *(&v56 + 1) = __PAIR64__(v16, v15);
  *&v57 = __PAIR64__(v19, v18);
  *(&v57 + 1) = __PAIR64__(v22, v21);
  LODWORD(v58[0]) = v38;
  _setThreadGeometryProxyData();
  v23 = *AGGraphGetValue();

  AGGraphGetValue();
  v24 = swift_allocObject();
  *&v51[0] = v23;
  _s7SwiftUI14GraphicsFilterOWOi21_(v51);
  v25 = v51[5];
  v24[5] = v51[4];
  v24[6] = v25;
  v24[7] = v52[0];
  *(v24 + 124) = *(v52 + 12);
  v26 = v51[1];
  v24[1] = v51[0];
  v24[2] = v26;
  v27 = v51[3];
  v24[3] = v51[2];
  v24[4] = v27;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];

  v34 = AGGraphGetValue();
  v35 = *v1;
  *&v47 = v32;
  *(&v47 + 1) = v33;
  v48 = *v34;
  *v50 = 0xA00000000;
  *&v50[8] = v41;
  *&v50[16] = v42 | v43;
  *&v50[24] = v35;
  *&v49 = v38;
  *(&v49 + 1) = v24;
  LOBYTE(v55) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v55);
  v53[2] = v49;
  v54[0] = *v50;
  *(v54 + 12) = *&v50[12];
  v53[0] = v47;
  v53[1] = v48;
  v45[2] = v49;
  v46[0] = *v50;
  *(v46 + 12) = *&v50[12];
  v45[0] = v47;
  v45[1] = v48;
  outlined init with copy of DisplayList.Item(v53, &v55);
  DisplayList.init(_:)(v45, a1);

  v57 = v49;
  v58[0] = *v50;
  *(v58 + 12) = *&v50[12];
  v55 = v47;
  v56 = v48;
  outlined destroy of DisplayList.Item(&v55);
}

{
  v59 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v44 = v5;
  v45 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v41 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v40 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v39 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v43 = v6;
  v38 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v42 = v7;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v21 = HIDWORD(v19);
  _threadGeometryProxyData();
  *&v55 = __PAIR64__(v41, v9);
  *(&v55 + 1) = __PAIR64__(v40, v11);
  *&v56 = __PAIR64__(v39, v13);
  *(&v56 + 1) = __PAIR64__(v38, v15);
  *&v57 = __PAIR64__(v18, v17);
  *(&v57 + 1) = __PAIR64__(v21, v20);
  LODWORD(v58[0]) = v7;
  _setThreadGeometryProxyData();
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = *(v22 + 12);
  v25 = *(v22 + 8);
  LOBYTE(v41) = *(v22 + 14);
  LOBYTE(v11) = *(v22 + 15);
  v26 = *(v22 + 16);
  v27 = *(v22 + 24);
  LOBYTE(v9) = *(v22 + 13);
  outlined copy of ContentTransition.Storage(*v22, v25 | (v24 << 32), v9);

  AGGraphGetValue();
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 28) = v24;
  *(v28 + 24) = v25;
  *(v28 + 29) = v9;
  *(v28 + 30) = v41;
  *(v28 + 31) = v11;
  *(v28 + 32) = v26;
  *(v28 + 40) = v27;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v49 = v33;
  *(&v49 + 1) = v34;
  v50 = *v35;
  *v52 = 0xC00000000;
  *&v52[8] = v43;
  *&v52[16] = v44 | v45;
  *&v52[24] = v36;
  *&v51 = v42;
  *(&v51 + 1) = v28;
  LOBYTE(v55) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v55);
  v53[2] = v51;
  v54[0] = *v52;
  *(v54 + 12) = *&v52[12];
  v53[0] = v49;
  v53[1] = v50;
  v47[2] = v51;
  v48[0] = *v52;
  *(v48 + 12) = *&v52[12];
  v47[0] = v49;
  v47[1] = v50;
  outlined init with copy of DisplayList.Item(v53, &v55);
  DisplayList.init(_:)(v47, a1);

  v57 = v51;
  v58[0] = *v52;
  *(v58 + 12) = *&v52[12];
  v55 = v49;
  v56 = v50;
  outlined destroy of DisplayList.Item(&v55);
}

{
  v55 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v5 = *(Value + 12) << 32;
    v42 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v5 = 0;
  v42 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v39 = v5;
  v40 = v6;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v38 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v37 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v35 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v41 = a1;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v36 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v51 = __PAIR64__(v38, v9);
  *(&v51 + 1) = __PAIR64__(v37, v11);
  *&v52 = __PAIR64__(v35, v13);
  *(&v52 + 1) = __PAIR64__(v16, v15);
  *&v53 = __PAIR64__(v19, v18);
  *(&v53 + 1) = __PAIR64__(v22, v21);
  LODWORD(v54[0]) = v36;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  outlined copy of GraphicsBlendMode(*v23, v25);
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = v26[1];
  v29 = AGGraphGetValue();
  v30 = v27 - *v29;
  v31 = v28 - v29[1];
  outlined copy of GraphicsBlendMode(v24, v25);
  v32 = AGGraphGetValue();
  v33 = *v1;
  *&v45 = v30;
  *(&v45 + 1) = v31;
  v46 = *v32;
  *v48 = v25 | 0x500000000;
  *&v48[8] = v40;
  *&v48[16] = v42 | v39;
  *&v48[24] = v33;
  *&v47 = v36;
  *(&v47 + 1) = v24;
  LOBYTE(v51) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v51);
  v49[2] = v47;
  v50[0] = *v48;
  *(v50 + 12) = *&v48[12];
  v49[0] = v45;
  v49[1] = v46;
  v43[2] = v47;
  v44[0] = *v48;
  *(v44 + 12) = *&v48[12];
  v43[0] = v45;
  v43[1] = v46;
  outlined init with copy of DisplayList.Item(v49, &v51);
  DisplayList.init(_:)(v43, v41);
  outlined consume of GraphicsBlendMode(v24, v25);
  v53 = v47;
  v54[0] = *v48;
  *(v54 + 12) = *&v48[12];
  v51 = v45;
  v52 = v46;
  outlined destroy of DisplayList.Item(&v51);
}

{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v49 = v5;
  v50 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v47 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v46 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v44 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v48 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v45 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v67 = __PAIR64__(v47, v9);
  *(&v67 + 1) = __PAIR64__(v46, v11);
  *&v68 = __PAIR64__(v44, v13);
  *(&v68 + 1) = __PAIR64__(v16, v15);
  *&v69 = __PAIR64__(v19, v18);
  *(&v69 + 1) = __PAIR64__(v22, v21);
  LODWORD(v70[0]) = v45;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  LODWORD(v19) = *(v23 + 24);
  v27 = *v23;
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = swift_allocObject();
  *&v58 = v24;
  *(&v58 + 1) = v25;
  *&v59 = v26;
  DWORD2(v59) = v19;
  *&v60 = v29;
  *(&v60 + 1) = v30;
  _s7SwiftUI14GraphicsFilterOWOi17_(&v58);
  v32 = v63;
  v31[5] = v62;
  v31[6] = v32;
  v31[7] = v64[0];
  *(v31 + 124) = *(v64 + 12);
  v33 = v59;
  v31[1] = v58;
  v31[2] = v33;
  v34 = v61;
  v31[3] = v60;
  v31[4] = v34;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = v35[1];
  v38 = AGGraphGetValue();
  v39 = v36 - *v38;
  v40 = v37 - v38[1];

  v41 = AGGraphGetValue();
  v42 = *v1;
  *&v54 = v39;
  *(&v54 + 1) = v40;
  v55 = *v41;
  *v57 = 0xA00000000;
  *&v57[8] = v48;
  *&v57[16] = v49 | v50;
  *&v57[24] = v42;
  *&v56 = v45;
  *(&v56 + 1) = v31;
  LOBYTE(v67) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v67);
  v65[2] = v56;
  v66[0] = *v57;
  *(v66 + 12) = *&v57[12];
  v65[0] = v54;
  v65[1] = v55;
  v52[2] = v56;
  v53[0] = *v57;
  *(v53 + 12) = *&v57[12];
  v52[0] = v54;
  v52[1] = v55;
  outlined init with copy of DisplayList.Item(v65, &v67);
  DisplayList.init(_:)(v52, a1);

  v69 = v56;
  v70[0] = *v57;
  *(v70 + 12) = *&v57[12];
  v67 = v54;
  v68 = v55;
  outlined destroy of DisplayList.Item(&v67);
}

{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v5 = *(Value + 12) << 32;
    v6 = *(Value + 8) | 0x40000000;

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v5 = 0;
  v6 = 0x40000000;
  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v26 = v6;
  v27 = v5;
  v28 = a1;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v9 = AGGraphGetValue();
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 28);

  AGGraphGetValue();
  if (v14)
  {

    v15 = 0;
    v16 = 20;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;
    *(v15 + 32) = v13;
    *(v15 + 36) = 0;
    v16 = 19;
    *(v15 + 40) = v11;
  }

  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = v18[1];
  v21 = AGGraphGetValue();
  v22 = v19 - *v21;
  v23 = v20 - v21[1];
  outlined copy of DisplayList.Effect(v15, 0, v16);
  v24 = AGGraphGetValue();
  v25 = *v1;
  *&v31 = v22;
  *(&v31 + 1) = v23;
  v32 = *v24;
  *v34 = v16 << 32;
  *&v34[8] = v7;
  *&v34[16] = v26 | v27;
  *&v34[24] = v25;
  *&v33 = v8;
  *(&v33 + 1) = v15;
  LOBYTE(v37[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v37);
  v35[2] = v33;
  v36[0] = *v34;
  *(v36 + 12) = *&v34[12];
  v35[0] = v31;
  v35[1] = v32;
  v29[2] = v33;
  v30[0] = *v34;
  *(v30 + 12) = *&v34[12];
  v29[0] = v31;
  v29[1] = v32;
  outlined init with copy of DisplayList.Item(v35, v37);
  DisplayList.init(_:)(v29, v28);
  outlined consume of DisplayList.Effect(v15, 0, v16);
  v37[2] = v33;
  v38[0] = *v34;
  *(v38 + 12) = *&v34[12];
  v37[0] = v31;
  v37[1] = v32;
  outlined destroy of DisplayList.Item(v37);
}

{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v44 = v5;
  v45 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v41 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v40 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v38 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v43 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v39 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v62 = __PAIR64__(v41, v9);
  *(&v62 + 1) = __PAIR64__(v40, v11);
  *&v63 = __PAIR64__(v38, v13);
  *(&v63 + 1) = __PAIR64__(v16, v15);
  *&v64 = __PAIR64__(v19, v18);
  *(&v64 + 1) = __PAIR64__(v22, v21);
  LODWORD(v65[0]) = v39;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v42 = *v23;
  v24 = *(v23 + 16);
  AGGraphGetValue();
  v25 = swift_allocObject();
  v53 = v42;
  LODWORD(v54) = 2143289344;
  *(&v54 + 4) = vrev64_s32(v24);
  _s7SwiftUI14GraphicsFilterOWOi13_(&v53);
  v26 = v58;
  v25[5] = v57;
  v25[6] = v26;
  v25[7] = v59[0];
  *(v25 + 124) = *(v59 + 12);
  v27 = v54;
  v25[1] = v53;
  v25[2] = v27;
  v28 = v56;
  v25[3] = v55;
  v25[4] = v28;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v49 = v33;
  *(&v49 + 1) = v34;
  v50 = *v35;
  *v52 = 0xA00000000;
  *&v52[8] = v43;
  *&v52[16] = v44 | v45;
  *&v52[24] = v36;
  *&v51 = v39;
  *(&v51 + 1) = v25;
  LOBYTE(v62) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v62);
  v60[2] = v51;
  v61[0] = *v52;
  *(v61 + 12) = *&v52[12];
  v60[0] = v49;
  v60[1] = v50;
  v47[2] = v51;
  v48[0] = *v52;
  *(v48 + 12) = *&v52[12];
  v47[0] = v49;
  v47[1] = v50;
  outlined init with copy of DisplayList.Item(v60, &v62);
  DisplayList.init(_:)(v47, a1);

  v64 = v51;
  v65[0] = *v52;
  *(v65 + 12) = *&v52[12];
  v62 = v49;
  v63 = v50;
  outlined destroy of DisplayList.Item(&v62);
}

{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v44 = v5;
  v45 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v41 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v40 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v38 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v43 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v39 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v62 = __PAIR64__(v41, v9);
  *(&v62 + 1) = __PAIR64__(v40, v11);
  *&v63 = __PAIR64__(v38, v13);
  *(&v63 + 1) = __PAIR64__(v16, v15);
  *&v64 = __PAIR64__(v19, v18);
  *(&v64 + 1) = __PAIR64__(v22, v21);
  LODWORD(v65[0]) = v39;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *(v23 + 16);
  v42 = *v23;
  AGGraphGetValue();
  v25 = swift_allocObject();
  v53 = v42;
  LODWORD(v54) = 2143289344;
  DWORD1(v54) = v24;
  _s7SwiftUI14GraphicsFilterOWOi18_(&v53);
  v26 = v58;
  v25[5] = v57;
  v25[6] = v26;
  v25[7] = v59[0];
  *(v25 + 124) = *(v59 + 12);
  v27 = v54;
  v25[1] = v53;
  v25[2] = v27;
  v28 = v56;
  v25[3] = v55;
  v25[4] = v28;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v1;
  *&v49 = v33;
  *(&v49 + 1) = v34;
  v50 = *v35;
  *v52 = 0xA00000000;
  *&v52[8] = v43;
  *&v52[16] = v44 | v45;
  *&v52[24] = v36;
  *&v51 = v39;
  *(&v51 + 1) = v25;
  LOBYTE(v62) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v62);
  v60[2] = v51;
  v61[0] = *v52;
  *(v61 + 12) = *&v52[12];
  v60[0] = v49;
  v60[1] = v50;
  v47[2] = v51;
  v48[0] = *v52;
  *(v48 + 12) = *&v52[12];
  v47[0] = v49;
  v47[1] = v50;
  outlined init with copy of DisplayList.Item(v60, &v62);
  DisplayList.init(_:)(v47, a1);

  v64 = v51;
  v65[0] = *v52;
  *(v65 + 12) = *&v52[12];
  v62 = v49;
  v63 = v50;
  outlined destroy of DisplayList.Item(&v62);
}

{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v42 = v5;
  v43 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v39 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v38 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v36 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v41 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v37 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v60 = __PAIR64__(v39, v9);
  *(&v60 + 1) = __PAIR64__(v38, v11);
  *&v61 = __PAIR64__(v36, v13);
  *(&v61 + 1) = __PAIR64__(v16, v15);
  *&v62 = __PAIR64__(v19, v18);
  *(&v62 + 1) = __PAIR64__(v22, v21);
  LODWORD(v63[0]) = v37;
  _setThreadGeometryProxyData();
  v40 = *AGGraphGetValue();
  AGGraphGetValue();
  v23 = swift_allocObject();
  v51 = v40;
  LODWORD(v52) = 2143289344;
  _s7SwiftUI14GraphicsFilterOWOi6_(&v51);
  v24 = v56;
  v23[5] = v55;
  v23[6] = v24;
  v23[7] = v57[0];
  *(v23 + 124) = *(v57 + 12);
  v25 = v52;
  v23[1] = v51;
  v23[2] = v25;
  v26 = v54;
  v23[3] = v53;
  v23[4] = v26;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = v27[1];
  v30 = AGGraphGetValue();
  v31 = v28 - *v30;
  v32 = v29 - v30[1];

  v33 = AGGraphGetValue();
  v34 = *v1;
  *&v47 = v31;
  *(&v47 + 1) = v32;
  v48 = *v33;
  *v50 = 0xA00000000;
  *&v50[8] = v41;
  *&v50[16] = v42 | v43;
  *&v50[24] = v34;
  *&v49 = v37;
  *(&v49 + 1) = v23;
  LOBYTE(v60) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v60);
  v58[2] = v49;
  v59[0] = *v50;
  *(v59 + 12) = *&v50[12];
  v58[0] = v47;
  v58[1] = v48;
  v45[2] = v49;
  v46[0] = *v50;
  *(v46 + 12) = *&v50[12];
  v45[0] = v47;
  v45[1] = v48;
  outlined init with copy of DisplayList.Item(v58, &v60);
  DisplayList.init(_:)(v45, a1);

  v62 = v49;
  v63[0] = *v50;
  *(v63 + 12) = *&v50[12];
  v60 = v47;
  v61 = v48;
  outlined destroy of DisplayList.Item(&v60);
}

{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v5 = *(Value + 12) << 32;
    v6 = *(Value + 8) | 0x40000000;

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v5 = 0;
  v6 = 0x40000000;
  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v21 = v6;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  specialized closure #1 in RendererEffectDisplayList.value.getter(&v32);
  _setThreadGeometryProxyData();
  v9 = v32;
  v10 = v33;
  v11 = v34;
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = AGGraphGetValue();
  v16 = v13 - *v15;
  v17 = v14 - v15[1];
  outlined copy of DisplayList.Effect(v9, v10, v11);
  v18 = AGGraphGetValue();
  v19 = *v1;
  *&v24 = v16;
  *(&v24 + 1) = v17;
  v25 = *v18;
  *v27 = v10 | (v11 << 32);
  *&v27[8] = v7;
  *&v27[16] = v21 | v5;
  *&v27[24] = v19;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  LOBYTE(v30[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v30);
  v28[2] = v26;
  v29[0] = *v27;
  *(v29 + 12) = *&v27[12];
  v28[0] = v24;
  v28[1] = v25;
  v22[2] = v26;
  v23[0] = *v27;
  *(v23 + 12) = *&v27[12];
  v22[0] = v24;
  v22[1] = v25;
  outlined init with copy of DisplayList.Item(v28, v30);
  DisplayList.init(_:)(v22, a1);
  outlined consume of DisplayList.Effect(v9, v10, v11);
  v30[2] = v26;
  v31[0] = *v27;
  *(v31 + 12) = *&v27[12];
  v30[0] = v24;
  v30[1] = v25;
  outlined destroy of DisplayList.Item(v30);
}

{
  v55 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D3F8];
  v4 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v5 = *(Value + 12) << 32;
    v42 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v5 = 0;
  v42 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v3)
  {
    __break(1u);
  }

  v39 = v5;
  v40 = v6;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v38 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v37 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v35 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v41 = a1;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v36 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v51 = __PAIR64__(v38, v9);
  *(&v51 + 1) = __PAIR64__(v37, v11);
  *&v52 = __PAIR64__(v35, v13);
  *(&v52 + 1) = __PAIR64__(v16, v15);
  *&v53 = __PAIR64__(v19, v18);
  *(&v53 + 1) = __PAIR64__(v22, v21);
  LODWORD(v54[0]) = v36;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  outlined copy of GraphicsBlendMode(*v23, v25);
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = v26[1];
  v29 = AGGraphGetValue();
  v30 = v27 - *v29;
  v31 = v28 - v29[1];
  outlined copy of GraphicsBlendMode(v24, v25);
  v32 = AGGraphGetValue();
  v33 = *v1;
  *&v45 = v30;
  *(&v45 + 1) = v31;
  v46 = *v32;
  *v48 = v25 | 0x500000000;
  *&v48[8] = v40;
  *&v48[16] = v42 | v39;
  *&v48[24] = v33;
  *&v47 = v36;
  *(&v47 + 1) = v24;
  LOBYTE(v51) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(&v51);
  v49[2] = v47;
  v50[0] = *v48;
  *(v50 + 12) = *&v48[12];
  v49[0] = v45;
  v49[1] = v46;
  v43[2] = v47;
  v44[0] = *v48;
  *(v44 + 12) = *&v48[12];
  v43[0] = v45;
  v43[1] = v46;
  outlined init with copy of DisplayList.Item(v49, &v51);
  DisplayList.init(_:)(v43, v41);
  outlined consume of GraphicsBlendMode(v24, v25);
  v53 = v47;
  v54[0] = *v48;
  *(v54 + 12) = *&v48[12];
  v51 = v45;
  v52 = v46;
  outlined destroy of DisplayList.Item(&v51);
}

{
  v70 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  v3 = MEMORY[0x1E69E7CC0];
  if (v1[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v6 = *Value;
    v4 = *(Value + 12) << 32;
    v5 = *(Value + 8) | 0x40000000;

    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return;
  }

  v4 = 0;
  v5 = 0x40000000;
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v2)
  {
    __break(1u);
  }

  v48 = v5;
  v49 = v4;
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v46 = HIDWORD(v8);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v45 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v43 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v47 = v6;
  v16 = HIDWORD(v14);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v44 = v7;
  v19 = HIDWORD(v17);
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v22 = HIDWORD(v20);
  _threadGeometryProxyData();
  *&v66 = __PAIR64__(v46, v9);
  *(&v66 + 1) = __PAIR64__(v45, v11);
  *&v67 = __PAIR64__(v43, v13);
  *(&v67 + 1) = __PAIR64__(v16, v15);
  *&v68 = __PAIR64__(v19, v18);
  *(&v68 + 1) = __PAIR64__(v22, v21);
  LODWORD(v69[0]) = v44;
  _setThreadGeometryProxyData();
  v23 = AGGraphGetValue();
  v24 = v23[3];
  v26 = *v23;
  v25 = v23[1];
  v61 = v23[2];
  v62 = v24;
  v59 = v26;
  v60 = v25;
  v28 = v23[5];
  v27 = v23[6];
  v29 = v23[4];
  *(v65 + 12) = *(v23 + 108);
  v64 = v28;
  v65[0] = v27;
  v63 = v29;
  outlined init with copy of GraphicsFilter(&v59, v57);
  AGGraphGetValue();
  v30 = swift_allocObject();
  v31 = v64;
  v30[5] = v63;
  v30[6] = v31;
  v30[7] = v65[0];
  *(v30 + 124) = *(v65 + 12);
  v32 = v60;
  v30[1] = v59;
  v30[2] = v32;
  v33 = v62;
  v30[3] = v61;
  v30[4] = v33;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = v34[1];
  v37 = AGGraphGetValue();
  v38 = v35 - *v37;
  v39 = v36 - v37[1];

  v40 = AGGraphGetValue();
  v41 = *v1;
  *&v53 = v38;
  *(&v53 + 1) = v39;
  v54 = *v40;
  *v56 = 0xA00000000;
  *&v56[8] = v47;
  *&v56[16] = v48 | v49;
  *&v56[24] = v41;
  *&v55 = v44;
  *(&v55 + 1) = v30;
  LOBYTE(v57[0]) = *(v1 + 36);
  DisplayList.Item.canonicalize(options:)(v57);
  v68 = v55;
  v69[0] = *v56;
  *(v69 + 12) = *&v56[12];
  v66 = v53;
  v67 = v54;
  v51[2] = v55;
  v52[0] = *v56;
  *(v52 + 12) = *&v56[12];
  v51[0] = v53;
  v51[1] = v54;
  outlined init with copy of DisplayList.Item(&v66, v57);
  DisplayList.init(_:)(v51, a1);

  v57[2] = v55;
  v58[0] = *v56;
  *(v58 + 12) = *&v56[12];
  v57[0] = v53;
  v57[1] = v54;
  outlined destroy of DisplayList.Item(v57);
}

void DisplayList.Item.backdropFilter(size:)(_OWORD *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v57 = *v3;
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v10 = *(v3 + 56);
  v9 = *(v3 + 64);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = a2;
  v59.size.height = a3;
  if (CGRectEqualToRect(v57, v59) && (v9 & 0xC0000000) == 0x40000000 && (v8 & 0xFF00000000) == 0xA00000000)
  {
    v17 = v7[6];
    v52 = v7[5];
    v53 = v17;
    *v54 = v7[7];
    *&v54[12] = *(v7 + 124);
    v18 = v7[2];
    v48 = v7[1];
    v49 = v18;
    v19 = v7[4];
    v50 = v7[3];
    v51 = v19;
    v20 = v7[6];
    v45 = v7[5];
    v46 = v20;
    v47[0] = v7[7];
    *(v47 + 12) = *(v7 + 124);
    v21 = v7[2];
    v41 = v7[1];
    v42 = v21;
    v22 = v7[4];
    v43 = v7[3];
    v44 = v22;
    outlined init with copy of GraphicsFilter(&v48, &v34);
    specialized _ColorMatrix.init(_:premultiplied:)(&v41, 0, v55);
    if ((v56 & 1) == 0)
    {
      if (*(v10 + 2) == 1)
      {
        v23 = v10[4];
        v24 = v10[5];
        v25 = v10[6];
        v26 = v10[7];
        v28 = *(v10 + 9);
        v27 = *(v10 + 10);
        v30 = *(v10 + 11);
        v29 = *(v10 + 12);
        outlined copy of DisplayList.Item.Value(v28, v27, v30, v29);
        v60.origin.x = 0.0;
        v60.origin.y = 0.0;
        v58.origin.x = v23;
        v58.origin.y = v24;
        v58.size.width = v25;
        v58.size.height = v26;
        v60.size.width = a2;
        v60.size.height = a3;
        if (!CGRectEqualToRect(v58, v60) || (v29 & 0xC0000000) != 0 || v28 >> 60)
        {
          outlined consume of DisplayList.Item.Value(v28, v27, v30, v29);
        }

        else
        {
          v31 = *(v28 + 32);
          outlined consume of DisplayList.Item.Value(v28, v27, v30, v29);
          if (v31 == 0.0)
          {
            v36 = v55[2];
            v37 = v55[3];
            v38 = v55[4];
            v34 = v55[0];
            v35 = v55[1];
            LODWORD(v39) = 2139095040;
            BYTE4(v39) = 0;
            _s7SwiftUI14GraphicsFilterOWOi14_(&v34);
            v45 = v38;
            v46 = v39;
            v47[0] = v40[0];
            *(v47 + 12) = *(v40 + 12);
            v41 = v34;
            v42 = v35;
            v43 = v36;
            v44 = v37;
            _ViewInputs.base.modify();
LABEL_19:
            v32 = v46;
            a1[4] = v45;
            a1[5] = v32;
            a1[6] = v47[0];
            *(a1 + 108) = *(v47 + 12);
            v33 = v42;
            *a1 = v41;
            a1[1] = v33;
            v15 = v43;
            v16 = v44;
            goto LABEL_9;
          }
        }
      }

      _s7SwiftUI14GraphicsFilterOSgWOi0_(&v41);
      goto LABEL_19;
    }
  }

  _s7SwiftUI14GraphicsFilterOSgWOi0_(&v48);
  v13 = v53;
  a1[4] = v52;
  a1[5] = v13;
  a1[6] = *v54;
  *(a1 + 108) = *&v54[12];
  v14 = v49;
  *a1 = v48;
  a1[1] = v14;
  v15 = v50;
  v16 = v51;
LABEL_9:
  a1[2] = v15;
  a1[3] = v16;
}

uint64_t outlined init with copy of (Path, FillStyle)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (Path, FillStyle)?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (Path, FillStyle)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Path, FillStyle)?)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (Path, FillStyle), &type metadata for Path, &type metadata for FillStyle);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (Path, FillStyle)?);
    }
  }
}

uint64_t *$defer #1 () in DisplayList.Index.skip(item:)(uint64_t *result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(result + 16);
  if ((v4 & 0xC) != 0)
  {
    v5 = *result;
    if ((result[2] & 4) != 0)
    {
      *result = result[1];
    }

    if ((v4 & 8) != 0)
    {
      result[1] = v5;
    }
  }

  if (v4)
  {
    *result = a2;
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
LABEL_8:
    *(result + 16) = a4;
    return result;
  }

  result[1] = a3;
  *(result + 16) = a4;
  return result;
}

void DisplayList.ViewUpdater.Model.State.adjust(for:)(_OWORD *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(v1 + 96);
  if (v4 || *(*(v1 + 88) + 16))
  {
    *&__dst.a = *a1;
    *&__dst.c = v2;
    *&__dst.tx = v3;
    v38.width = 1.0;
    v38.height = 1.0;
    width = CGSizeApplyAffineTransform(v38, &__dst).width;
    if (fabs(width + -1.0) > 0.001)
    {
      v32 = 1.0 / width;
      if (v4)
      {
        swift_beginAccess();
        v6 = v4[2].f64[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_beginAccess();
          type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for MutableBox<ResolvedShadowStyle>, &type metadata for ResolvedShadowStyle, type metadata accessor for MutableBox);
          v7 = swift_allocObject();
          memmove((v7 + 16), &v4[1], 0x35uLL);

          v4 = v7;
        }

        swift_beginAccess();
        v4[2].f64[1] = v32 * v6;
        v31 = vbicq_s8(vmulq_n_f64(v4[3], v32), vceqzq_f64(v4[3]));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_beginAccess();
          type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for MutableBox<ResolvedShadowStyle>, &type metadata for ResolvedShadowStyle, type metadata accessor for MutableBox);
          v8 = swift_allocObject();
          memmove((v8 + 16), &v4[1], 0x35uLL);

          v4 = v8;
        }

        swift_beginAccess();
        v4[3] = v31;

        *(v1 + 96) = v4;
      }

      v9 = *(v1 + 88);
      v10 = *(v9 + 2);
      if (v10)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (*(v9 + 2))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          if (*(v9 + 2))
          {
LABEL_13:
            v11 = 0;
            v12 = v10 - 1;
            v13 = 32;
            do
            {
              v14 = &v9[v13];
              memmove(&__dst, &v9[v13], 0x7CuLL);
              if (!_s7SwiftUI14GraphicsFilterOWOg(&__dst))
              {
                v15 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
                v16 = *v15;
                v17 = *(v15 + 8);
                v18 = *(v15 + 9);
                v20 = *(v14 + 2);
                v19 = *(v14 + 3);
                v21 = *(v14 + 1);
                v33[0] = *v14;
                v33[1] = v21;
                v33[2] = v20;
                v33[3] = v19;
                v22 = *(v14 + 108);
                v23 = *(v14 + 6);
                v24 = *(v14 + 4);
                v33[5] = *(v14 + 5);
                v34[0] = v23;
                *(v34 + 12) = v22;
                v33[4] = v24;
                outlined destroy of GraphicsFilter(v33);
                *v35 = v32 * v16;
                BYTE8(v35[0]) = v17;
                BYTE9(v35[0]) = v18;
                _s7SwiftUI14GraphicsFilterOWOi_(v35);
                v25 = v35[0];
                v26 = v35[1];
                v27 = v35[3];
                *(v14 + 2) = v35[2];
                *(v14 + 3) = v27;
                *v14 = v25;
                *(v14 + 1) = v26;
                v28 = v35[4];
                v29 = v35[5];
                v30 = v36[0];
                *(v14 + 108) = *(v36 + 12);
                *(v14 + 5) = v29;
                *(v14 + 6) = v30;
                *(v14 + 4) = v28;
              }

              if (v12 == v11)
              {
                goto LABEL_19;
              }

              ++v11;
              v13 += 128;
            }

            while (v11 < *(v9 + 2));
          }
        }

        __break(1u);
LABEL_19:
        *(v1 + 88) = v9;
      }
    }
  }
}

void DisplayList.Item.opaqueContentPath()(int8x16_t *a1@<X8>)
{
  v2 = v1[4].i64[0];
  if ((v2 & 0xC0000000) != 0)
  {
    goto LABEL_2;
  }

  v6 = *v1;
  v7 = v1[2].u64[1];
  if (v7 >> 60 == 4)
  {
    v34 = *v1;
    v32 = a1;
    v19 = v1[3].i64[0];
    v18 = v1[3].u64[1];
    v20 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v22 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v39 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v38[0] = v20;
    v38[1] = v21;
    v29 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v30 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v24 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
    v25 = *(**((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x38) + 104);
    v26 = outlined copy of DisplayList.Content.Value(v7);
    if (v25(v26))
    {
      if (*v34.i64 == 0.0 && *&v34.i64[1] == 0.0)
      {
        outlined init with copy of Path(v38, &v37);
      }

      else
      {
        CGAffineTransformMakeTranslation(&v37, *v34.i64, *&v34.i64[1]);
        Path.applying(_:)(&v37.a, v35);
        v29 = v35[1];
        v30 = v35[0];
        v22 = v36;
      }

      outlined consume of DisplayList.Item.Value(v7, v19, v18, v2);
      if (v23)
      {
        v27 = 256;
      }

      else
      {
        v27 = 0;
      }

      if (v24)
      {
        v28 = 0x10000;
      }

      else
      {
        v28 = 0;
      }

      v4 = v28 | v27 | v22;
      a1 = v32;
      v5 = v29;
      v3 = v30;
    }

    else
    {
      outlined consume of DisplayList.Item.Value(v7, v19, v18, v2);
      v3 = 0uLL;
      v4 = 512;
      v5 = 0uLL;
      a1 = v32;
    }
  }

  else
  {
    if (v7 >> 60 != 1 || *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x1C) != 1.0)
    {
LABEL_2:
      v3 = 0uLL;
      v4 = 512;
      v5 = 0uLL;
      goto LABEL_3;
    }

    v8 = v1[1];
    v31 = v8;
    v33 = *v1;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
    v10 = v6.i64[1];
    v11 = v8.i64[1];
    v12 = a1;
    IsNull = CGRectIsNull(*v6.i8);
    a1 = v12;
    if (IsNull)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = vdupq_n_s64(v14);
    v5 = vbicq_s8(v31, v15);
    v3 = vbicq_s8(v33, v15);
    if (IsNull)
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    if (v9)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    v4 = v17 | v16;
  }

LABEL_3:
  *a1 = v3;
  a1[1] = v5;
  a1[2].i8[2] = BYTE2(v4);
  a1[2].i16[0] = v4;
}

uint64_t getEnumTagSinglePayload for _FixedSizeLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t outlined destroy of (Path, FillStyle)?(uint64_t a1)
{
  type metadata accessor for (Path, FillStyle)?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DisplayList.ViewUpdater.Platform.updateProperties(_:state:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 104);
  v6 = *v2 & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 152))((v5 >> 1) & 1, *(a1 + 8));
  v7 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v7;
  v8 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v8;
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v10 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v10;
  v11 = *(&v15[0] + 1);
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v15, &v14);
  v12 = CoreViewLayer(v4 & 3, v11);
  [v12 setDisableUpdateMask_];

  result = outlined destroy of DisplayList.ViewUpdater.ViewInfo(v15);
  if (*(a1 + 64) != 17)
  {
    return (*(v6 + 160))((v5 >> 8) & 1, v11);
  }

  return result;
}

uint64_t Path.intersectRoundedRects(_:)(uint64_t a1)
{
  v2 = *v1;
  v4 = v1[1].i64[0];
  v3 = v1[1].i64[1];
  v5 = v1[2].u8[0];
  if (v5 == 2)
  {
    v11 = *(v2.i64[0] + 16);
    v7 = *(v2.i64[0] + 32);
    v8 = *(v2.i64[0] + 40);
    v9 = *(v2.i64[0] + 48);
    v10 = *(v2.i64[0] + 56);
    v6 = *(v2.i64[0] + 64);
  }

  else
  {
    if (v5 == 1)
    {
      v7 = *v1[1].i64;
      v8 = *&v1[1].i64[1];
      if (vabdd_f64(*&v4, *&v3) >= 0.001)
      {
        return 0;
      }

      v6 = 0;
      v9 = *&v4 * 0.5;
      v10 = *&v4 * 0.5;
    }

    else
    {
      if (v1[2].i8[0])
      {
        return 0;
      }

      v6 = 0;
      v7 = *v1[1].i64;
      v8 = *&v1[1].i64[1];
      v9 = 0.0;
      v10 = 0.0;
    }

    v11 = *v1;
  }

  v12 = *a1;
  v13 = *(a1 + 32);
  if (v13 == 2)
  {
    v15 = *(*&v12 + 32);
    v18 = *(*&v12 + 48);
    v16 = *(*&v12 + 64);
    v17 = *(*&v12 + 16);
    v14 = *(*&v12 + 24);
  }

  else
  {
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v13 == 1)
    {
      if (fabs(vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0]) >= 0.001)
      {
        return 0;
      }

      v16 = 0;
      v17 = *a1;
      v18 = vdupq_lane_s64(COERCE__INT64(0.5 * v15.width), 0);
    }

    else
    {
      if (*(a1 + 32))
      {
        return 0;
      }

      v16 = 0;
      v17 = *a1;
      v18 = 0;
    }
  }

  v19.f64[0] = v9;
  v19.f64[1] = v10;
  v41 = v11;
  v43 = v15;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v19), vceqzq_f64(v18))))) & 1) == 0)
  {
    outlined consume of Path.Storage(v2.i64[0], v2.i64[1], v4, v3, v5);
    *&v50.origin.x = v41.i64[0];
    v52.size.width = v43.width;
    *&v50.origin.y = v41.i64[1];
    v52.size.height = v43.height;
    v50.size.width = v7;
    v50.size.height = v8;
    v52.origin.x = v17;
    v52.origin.y = v14;
    v51 = CGRectIntersection(v50, v52);
    y = v51.origin.y;
    x = v51.origin.x;
    height = v51.size.height;
    width = v51.size.width;
    IsNull = CGRectIsNull(v51);
    *v26.i64 = x;
    *&v26.i64[1] = y;
    *v27.i64 = width;
    *&v27.i64[1] = height;
    if (IsNull)
    {
      v24 = 6;
    }

    else
    {
      v24 = 0;
    }

    if (IsNull)
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    v29 = vdupq_n_s64(v28);
    *v1 = vbicq_s8(v26, v29);
    v1[1] = vbicq_s8(v27, v29);
    goto LABEL_56;
  }

  v20 = v9 == v18.width && v10 == v18.height;
  v37 = v10;
  v39 = v9;
  if (!v20 || ((v6 ^ v16) & 1) != 0)
  {
LABEL_49:
    v35 = *v1;
    v36 = v18;
    v46 = v11;
    v47.width = v7;
    v47.height = v8;
    v48.width = v9;
    v48.height = v10;
    v49 = v6;
    v45.rect.origin.x = v17;
    v45.rect.origin.y = v14;
    v45.rect.size = v15;
    v45.cornerSize = v18;
    v45.style = v16;
    if (FixedRoundedRect.contains(_:)(&v45))
    {
      outlined consume of Path.Storage(v35.i64[0], v35.i64[1], v4, v3, v5);
      v33 = swift_allocObject();
      *(v33 + 16) = v17;
      *(v33 + 24) = v14;
      *(v33 + 32) = v43;
      *(v33 + 48) = v36;
      *(v33 + 64) = v16;
LABEL_53:
      v1->i64[0] = v33;
      v1->i64[1] = 0;
      v24 = 2;
      v1[1].i64[0] = 0;
      v1[1].i64[1] = 0;
      goto LABEL_56;
    }

    *v46.i64 = v17;
    *&v46.i64[1] = v14;
    v47 = v43;
    v48 = v36;
    v49 = v16;
    v45.rect.origin = v41;
    v45.rect.size.width = v7;
    v45.rect.size.height = v8;
    v45.cornerSize.width = v39;
    v45.cornerSize.height = v37;
    v45.style = v6;
    if (FixedRoundedRect.contains(_:)(&v45))
    {
      outlined consume of Path.Storage(v35.i64[0], v35.i64[1], v4, v3, v5);
      v33 = swift_allocObject();
      *(v33 + 16) = v41;
      *(v33 + 32) = v7;
      *(v33 + 40) = v8;
      *(v33 + 48) = v39;
      *(v33 + 56) = v37;
      *(v33 + 64) = v6;
      goto LABEL_53;
    }

    return 0;
  }

  if (vabdd_f64(*v11.i64, v17) >= 0.001 || vabdd_f64(v7, v15.width) >= 0.001)
  {
    v30 = v11.i64[1];
    if (vabdd_f64(*&v11.i64[1], v14) < 0.001 && vabdd_f64(v8, v15.height) < 0.001)
    {
      outlined consume of Path.Storage(v2.i64[0], v2.i64[1], v4, v3, v5);
      if (*v41.i64 > v17)
      {
        v31 = *v41.i64;
      }

      else
      {
        v31 = v17;
      }

      v32 = *v41.i64 + v7;
      if (v43.width + v17 < *v41.i64 + v7)
      {
        v32 = v43.width + v17;
      }

      if (v31 < v32)
      {
        v7 = v32 - v31;
        v23 = swift_allocObject();
        *(v23 + 16) = v31;
        *(v23 + 24) = v30;
        goto LABEL_32;
      }

LABEL_55:
      *v1 = 0u;
      v1[1] = 0u;
      v24 = 6;
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  outlined consume of Path.Storage(v2.i64[0], v2.i64[1], v4, v3, v5);
  if (*&v41.i64[1] > v14)
  {
    v21 = *&v41.i64[1];
  }

  else
  {
    v21 = v14;
  }

  v22 = *&v41.i64[1] + v8;
  if (v14 + v43.height < *&v41.i64[1] + v8)
  {
    v22 = v14 + v43.height;
  }

  if (v21 >= v22)
  {
    goto LABEL_55;
  }

  v8 = v22 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v41.i64[0];
  *(v23 + 24) = v21;
LABEL_32:
  *(v23 + 32) = v7;
  *(v23 + 40) = v8;
  *(v23 + 48) = v39;
  *(v23 + 56) = v37;
  *(v23 + 64) = v6;
  v1->i64[0] = v23;
  v1->i64[1] = 0;
  v24 = 2;
  v1[1].i64[0] = 0;
  v1[1].i64[1] = 0;
LABEL_56:
  v1[2].i8[0] = v24;
  return 1;
}

uint64_t CombiningTransition.body(content:phase:)@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, char a4@<W1>)
{
  v21[1] = a3;
  v6 = type metadata accessor for PlaceholderContentView(255, a1, a1, a2);
  v7 = a1[2];
  v8 = a1[4];
  v10 = type metadata accessor for ApplyTransitionModifier(255, v7, v8, v9);
  v12 = type metadata accessor for ModifiedContent(0, v6, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  Transition.apply<A>(content:phase:)(v16, a4, v7, v6, v8, &protocol witness table for PlaceholderContentView<A>);
  v17 = a1[3];
  v18 = a1[5];
  v22[0] = &protocol witness table for PlaceholderContentView<A>;
  v22[1] = &protocol witness table for ApplyTransitionModifier<A>;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v22);
  Transition.apply<A>(content:phase:)(v15, a4, v17, v12, v18, v19);
  return (*(v13 + 8))(v15, v12);
}

__n128 protocol witness for Transition.body(content:phase:) in conformance ScaleTransition@<Q0>(char a1@<W1>, __n128 *a2@<X8>)
{
  v3 = *v2;
  if (a1 == 1)
  {
    v3 = 1.0;
  }

  a2->n128_f64[0] = v3;
  a2->n128_f64[1] = v3;
  result = *(v2 + 8);
  a2[1] = result;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV11ViewUpdaterC5ModelO4ClipV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  for (i = v2 - 1; ; --i)
  {
    v6 = v3[3];
    *v38 = v3[2];
    *&v38[16] = v6;
    *&v38[32] = v3[4];
    *&v38[43] = *(v3 + 75);
    v7 = v3[1];
    v36 = *v3;
    v37 = v7;
    v8 = v4[3];
    *v40 = v4[2];
    *&v40[16] = v8;
    *&v40[32] = v4[4];
    *&v40[43] = *(v4 + 75);
    v9 = v4[1];
    v39[0] = *v4;
    v39[1] = v9;
    v10 = *&v36;
    v11 = *v39;
    if (v38[0] > 2u)
    {
      break;
    }

    if (!v38[0])
    {
      if (v40[0])
      {
        goto LABEL_59;
      }

LABEL_22:
      v13 = *(&v37 + 1);
      v14 = *&v37;
      v15 = *(&v36 + 1);
      v16 = *(v39 + 1);
      v17 = v9;
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
      v47.origin.x = v10;
      v47.origin.y = v15;
      v47.size.width = v14;
      v47.size.height = v13;
      v49.origin.x = v11;
      v49.origin.y = v16;
      v49.size = v17;
      if (!CGRectEqualToRect(v47, v49))
      {
        goto LABEL_58;
      }

      goto LABEL_47;
    }

    if (v38[0] == 1)
    {
      if (v40[0] != 1)
      {
        goto LABEL_59;
      }

      goto LABEL_22;
    }

    if (v40[0] != 2)
    {
      return 0;
    }

    v19 = *(v36 + 48);
    v18 = *(v36 + 56);
    v20 = *(v36 + 64);
    v33 = *(v36 + 32);
    v34 = *(v36 + 40);
    v22 = *(v36 + 16);
    v21 = *(v36 + 24);
    v31 = *(*&v39[0] + 24);
    v32 = *(*&v39[0] + 16);
    v23 = *(*&v39[0] + 32);
    v24 = *(*&v39[0] + 40);
    v26 = *(*&v39[0] + 48);
    v25 = *(*&v39[0] + 56);
    v27 = *(*&v39[0] + 64);
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
    v48.origin.x = v22;
    v48.origin.y = v21;
    v48.size.width = v33;
    v48.size.height = v34;
    v50.origin.y = v31;
    v50.origin.x = v32;
    v50.size.width = v23;
    v50.size.height = v24;
    if (!CGRectEqualToRect(v48, v50) || v19 != v26 || v18 != v25 || v20 != v27)
    {
LABEL_58:
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v39);
LABEL_59:
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v36);
      return 0;
    }

LABEL_47:
    v29 = v40[56];
    if (v38[56])
    {
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v39);
      result = outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v36);
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v40[56])
      {
        goto LABEL_58;
      }

      v41 = *&v38[8];
      v42 = *&v38[24];
      v43 = *&v38[40];
      v44 = *&v40[8];
      v45 = *&v40[24];
      v46 = *&v40[40];
      v30 = static CGAffineTransform.== infix(_:_:)();
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v39);
      result = outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v36);
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    if (v38[57] != v40[57] || v40[58] != v38[58])
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v4 += 6;
    v3 += 6;
  }

  if (v38[0] <= 4u)
  {
    if (v38[0] == 3)
    {
      if (v40[0] != 3)
      {
        return 0;
      }
    }

    else if (v40[0] != 4)
    {
      return 0;
    }

    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
    v28 = &v36;
LABEL_35:
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v28, v35);
    goto LABEL_47;
  }

  if (v38[0] != 5)
  {
    if (v40[0] != 6 || *(&v39[0] + 1) | *&v39[0] | *&v9.width | *&v9.height)
    {
      goto LABEL_59;
    }

    v28 = v39;
    goto LABEL_35;
  }

  if (v40[0] != 5)
  {
    return 0;
  }

  if (*(v36 + 16))
  {
    if (*(v36 + 16) == 1)
    {
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
      result = outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
      v12 = *(*&v11 + 16);
      if (*(*&v11 + 16))
      {
LABEL_19:
        if (v12 != 1 && one-time initialization token for bufferCallbacks != -1)
        {
          swift_once();
        }

LABEL_46:
        if ((RBPathEqualToPath() & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_47;
      }
    }

    else
    {
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
      result = outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
      if (one-time initialization token for bufferCallbacks != -1)
      {
        result = swift_once();
      }

      v12 = *(*&v11 + 16);
      if (*(*&v11 + 16))
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (!*(v36 + 24))
    {
      goto LABEL_61;
    }

    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
    result = outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
    v12 = *(*&v11 + 16);
    if (*(*&v11 + 16))
    {
      goto LABEL_19;
    }
  }

  if (*(*&v11 + 24))
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MaskLayer.setClips(_:transform:)(Swift::OpaquePointer _, CGAffineTransform *transform)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC7SwiftUI9MaskLayer_clips] = _;

  v6 = &v2[OBJC_IVAR____TtC7SwiftUI9MaskLayer_clipTransform];
  v7 = *&transform->tx;
  *(v6 + 1) = *&transform->c;
  *(v6 + 2) = v7;
  *v6 = *&transform->a;
  v8 = *(_._rawValue + 2);
  if (v8 == 1)
  {
    v9 = *(_._rawValue + 5);
    v41 = *(_._rawValue + 4);
    v42 = v9;
    v43[0] = *(_._rawValue + 6);
    *(v43 + 11) = *(_._rawValue + 107);
    v10 = *(_._rawValue + 3);
    v39 = *(_._rawValue + 2);
    v40 = v10;
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v39, v34);
    specialized static MaskLayer.update(layer:clip:transform:)(v2, &v39, &transform->a);
    outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v39);
    type metadata accessor for CALayer();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v3 setSublayers_];

    return;
  }

  if (!v8)
  {
    [v2 setPath_];
    type metadata accessor for CALayer();
    v32 = Array._bridgeToObjectiveC()().super.isa;
    [v2 setSublayers_];

    return;
  }

  [v2 setPath_];
  v12 = [v2 sublayers];
  v31 = v2;
  if (v12)
  {
    v13 = v12;
    type metadata accessor for CALayer();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v38 = v14;

  v15 = 0;
  v16 = 0;
  v17 = 32;
  do
  {
    v19 = *(_._rawValue + v17 + 48);
    v35 = *(_._rawValue + v17 + 32);
    v36 = v19;
    v37[0] = *(_._rawValue + v17 + 64);
    v20 = v37[0];
    *(v37 + 11) = *(_._rawValue + v17 + 75);
    v21 = *(_._rawValue + v17 + 16);
    v34[0] = *(_._rawValue + v17);
    v34[1] = v21;
    v39 = v34[0];
    v40 = v21;
    v41 = v35;
    v42 = v19;
    v43[0] = v20;
    *(v43 + 11) = *(v37 + 11);
    if (v14 >> 62)
    {
      if (v15 >= __CocoaSet.count.getter())
      {
LABEL_20:
        v27 = objc_allocWithZone(MEMORY[0x1E69794A0]);
        outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v34, v33);
        v25 = [v27 init];
        [v25 setAnchorPoint_];
        MEMORY[0x193ABF170]([v25 setNoAnimationDelegate]);
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = 1;
        v14 = v38;
        goto LABEL_23;
      }
    }

    else if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v34, v33);
      v23 = MEMORY[0x193AC03C0](v15, v14);
    }

    else
    {
      if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v15 + 32);
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v34, v33);
      v23 = v22;
    }

    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClassUnconditional();
    v26 = v24;
LABEL_23:
    specialized static MaskLayer.update(layer:clip:transform:)(v25, &v39, &transform->a);
    if (v15)
    {
      v33[0] = 0x6E49656372756F73;
      v33[1] = 0xE800000000000000;
      v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v18 = 0;
    }

    ++v15;
    [v25 setCompositingFilter_];
    swift_unknownObjectRelease();

    outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v39);
    v17 += 96;
  }

  while (v8 != v15);

  if (v14 >> 62)
  {
LABEL_30:
    v29 = __CocoaSet.count.getter();
    if (v8 >= v29)
    {
      goto LABEL_31;
    }

LABEL_28:
    specialized Array.replaceSubrange<A>(_:with:)(v8, v29, v28);
LABEL_32:
    type metadata accessor for CALayer();
    v30 = Array._bridgeToObjectiveC()().super.isa;
    [v31 setSublayers_];

    return;
  }

  v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 < v29)
  {
    goto LABEL_28;
  }

LABEL_31:
  if (v16)
  {
    goto LABEL_32;
  }
}

id specialized static MaskLayer.update(layer:clip:transform:)(void *a1, uint64_t a2, double *a3)
{
  a = *a3;
  b = a3[1];
  c = a3[2];
  d = a3[3];
  tx = a3[4];
  ty = a3[5];
  v11 = *(a2 + 16);
  v52[0] = *a2;
  v52[1] = v11;
  v53 = *(a2 + 32);
  v54[0] = v52[0];
  v54[1] = v11;
  v55 = v53;
  outlined init with copy of Path.Storage(v54, &v56);
  ShapeType.init(_:)(v52, &v56);
  v12 = v61;
  if (v69)
  {
    if (v69 != 1)
    {
      if (v69 == 3 && !((v62 << 8) | ((v63 | (v64 << 16)) << 40) | v61 | v68 | v67 | v66 | *&v56 | *&v57 | *&v58 | *&v59 | *&v60 | *&v65))
      {
        [a1 setPath_];
        v13 = 0.0;
        [a1 setBorderWidth_];
        [a1 setBackgroundColor_];
      }

      else
      {
        outlined destroy of ShapeType(&v56);
        v13 = 0.0;
        [a1 setPosition_];
        [a1 setBorderWidth_];
        [a1 setBackgroundColor_];
        v14 = Path.cgPath.getter();
        [a1 setPath_];

        v15 = MEMORY[0x1E69797F8];
        if ((*(a2 + 89) & 1) == 0)
        {
          v15 = MEMORY[0x1E6979800];
        }

        v16 = *v15;
        [a1 setFillRule_];
      }

      v17 = 0.0;
      if (*(a2 + 88))
      {
        goto LABEL_14;
      }

LABEL_13:
      v29 = *(a2 + 56);
      *&t1.a = *(a2 + 40);
      *&t1.c = v29;
      *&t1.tx = *(a2 + 72);
      t2.a = a;
      t2.b = b;
      t2.c = c;
      t2.d = d;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v49, &t1, &t2);
      a = v49.a;
      b = v49.b;
      c = v49.c;
      d = v49.d;
      tx = v49.tx;
      ty = v49.ty;
      goto LABEL_14;
    }

    v17 = v56;
    v13 = v57;
    v43 = d;
    v45 = a;
    v18 = ty;
    v19 = v58;
    v47 = tx;
    v20 = b;
    v21 = c;
    v22 = v59;
    v23 = v60;
    v42 = v65;
    [a1 setPosition_];
    v24 = v19;
    ty = v18;
    d = v43;
    v25 = v22;
    c = v21;
    b = v20;
    tx = v47;
    [a1 setBounds_];
    [a1 setPath_];
    v26 = v23;
    a = v45;
    [a1 setCornerRadius_];
    v27 = MEMORY[0x1E69796E8];
    if ((v12 & 1) == 0)
    {
      v27 = MEMORY[0x1E69796E0];
    }

    v28 = *v27;
    [a1 setCornerCurve_];

    [a1 setBorderWidth_];
    [a1 setBackgroundColor_];
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = v56;
    v13 = v57;
    v46 = b;
    v48 = tx;
    v31 = c;
    v32 = a;
    v33 = v58;
    v34 = d;
    v35 = ty;
    v36 = v59;
    v44 = v60;
    [a1 setPosition_];
    v37 = v33;
    a = v32;
    c = v31;
    v38 = v36;
    ty = v35;
    d = v34;
    b = v46;
    tx = v48;
    [a1 setBounds_];
    [a1 setPath_];
    [a1 setCornerRadius_];
    v39 = MEMORY[0x1E69796E8];
    if ((v12 & 1) == 0)
    {
      v39 = MEMORY[0x1E69796E0];
    }

    v40 = *v39;
    [a1 setCornerCurve_];

    [a1 setBorderWidth_];
    v41 = [a1 borderColor];
    [a1 setBackgroundColor_];

    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx + v13 * c + v17 * a - v17;
  t1.ty = ty + v13 * d + v17 * b - v13;
  return [a1 setAffineTransform_];
}

unint64_t type metadata accessor for CALayer()
{
  result = lazy cache variable for type metadata for CALayer[0];
  if (!lazy cache variable for type metadata for CALayer[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for CALayer);
  }

  return result;
}

uint64_t MatchedSharedFrame.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Pair(0, v7, &type metadata for Namespace.ID, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = *(a1 + 24);
  v14 = type metadata accessor for _MatchedGeometryEffect(0, v7, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = *(v5 + 13);
  if (v18 == *MEMORY[0x1E698D3F8])
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == v18)
    {
      __break(1u);
    }

    *(v5 + 13) = CurrentAttribute;
    v18 = CurrentAttribute;
  }

  v34 = v15;
  v35 = v12;
  v36 = v9;
  v37 = v8;
  v20 = *(v5 + 14);
  v21 = *(v5 + 60);
  if (v20 != *AGGraphGetValue() >> 1)
  {
    v31 = *(v5 + 60);
    *(v5 + 14) = *AGGraphGetValue() >> 1;
    if ((v5[3] & 1) == 0)
    {
      MatchedGeometryScope.releaseFrame(index:owner:)(*(v5 + 5), *(v5 + 13));
      *(v5 + 5) = 0;
      *(v5 + 48) = 1;
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    LOBYTE(v41[0]) = 1;
    v50 = 0u;
    *v51 = 0u;
    v49 = 0u;
    v51[16] = 1;
    *&v51[20] = v18;
    type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
    return AGGraphSetOutputValue();
  }

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_6:
  v22 = v5[1];
  v49 = *v5;
  v50 = v22;
  *v51 = v5[2];
  *&v51[13] = *(v5 + 45);

  MatchedSharedFrame.modifier.getter(a1, v23, v17);
  _MatchedGeometryEffect.qualifiedID.getter(v14, v11);
  (*(v34 + 8))(v17, v14);
  v24 = *(v5 + 1);
  v25 = *(v5 + 2);
  v26 = *(v5 + 6);
  v27 = *(v5 + 1);
  lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID();
  v46[0] = v35;
  v46[1] = v28;
  v29 = v37;
  swift_getWitnessTable(protocol conformance descriptor for <> Pair<A, B>, v37, v46);
  LODWORD(v24) = MatchedGeometryScope.frame<A>(index:for:view:)(v47, v5 + 40, v11, (v18 | (v27 << 32)), v24, v25, v26, v29, v30);

  (*(v36 + 8))(v11, v29);
  v38 = v48;
  v41[0] = v47[0];
  v41[1] = v47[1];
  v41[2] = v47[2];
  v42 = v48;
  v43 = v39;
  v44 = v40;
  v45 = v24;
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
  return AGGraphSetOutputValue();
}

uint64_t _MatchedGeometryEffect.qualifiedID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v2, v5, v6);
  v12 = *(v2 + *(a1 + 36));
  return Pair.init(_:_:)(v8, &v12, v5, &type metadata for Namespace.ID, a2);
}

double base witness table accessor for Equatable in <> Pair<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 16) + 8);
  v5[0] = *(*(a3 - 8) + 8);
  v5[1] = v3;
  return swift_getWitnessTable("I", a1, v5);
}

double closure #3 in MatchedGeometryScope.frame<A>(index:for:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_beginAccess();
  *&v21 = __PAIR64__(*(v7 + 16), v6);
  *(&v21 + 1) = a1;
  *&v22 = a2;
  v8 = MEMORY[0x1E69E7CC0];
  v23 = 0;
  v24 = 0;
  *(&v22 + 1) = MEMORY[0x1E69E7CC0];
  v18 = v21;
  v19 = v22;
  v25 = 0;
  memset(v20, 0, 20);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
  lazy protocol witness table accessor for type SharedFrame and conformance SharedFrame();

  LODWORD(a2) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of SharedFrame(&v21);
  AGGraphSetFlags();
  outlined init with copy of AnyHashable(a3, &v18 + 8);
  LODWORD(v18) = a2;
  *&v20[16] = v8;
  *&v20[24] = 0;
  v20[28] = 0;
  swift_beginAccess();
  v9 = *(a1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 112) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(a1 + 112) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[64 * v12];
  v14 = v18;
  v15 = v19;
  v16 = *v20;
  *(v13 + 77) = *&v20[13];
  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  *(v13 + 2) = v14;
  *(a1 + 112) = v9;
  swift_endAccess();
  return result;
}

void lazy protocol witness table accessor for type SharedFrame and conformance SharedFrame()
{
  if (!lazy protocol witness table cache variable for type SharedFrame and conformance SharedFrame)
  {
    swift_getWitnessTable(protocol conformance descriptor for SharedFrame, &unk_1F005C398, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SharedFrame and conformance SharedFrame);
  }
}

uint64_t initializeWithCopy for SharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  return a1;
}

double destroy for SharedFrame(void *a1)
{

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> Pair<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Pair<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v9 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v9;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, a2, 1, a3, a4, a5, v15);
  *v6 = v8;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v7;
  v11 = v10 + 32 + 28 * result;
  if (v9)
  {
    v12 = *(v10 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = v11 + 28 * a3;
      v15 = (v10 + 32 + 28 * a2);
      if (result != v15 || result >= v15 + 28 * v14)
      {
        v17 = a3;
        v18 = a7;
        v19 = a6;
        v20 = a5;
        v21 = a4;
        result = memmove(result, v15, 28 * v14);
        a4 = v21;
        a5 = v20;
        a6 = v19;
        a3 = v17;
        a7 = v18;
      }

      v22 = *(v10 + 16);
      v13 = __OFADD__(v22, v9);
      v23 = v22 + v9;
      if (!v13)
      {
        *(v10 + 16) = v23;
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
    *v11 = a4;
    *(v11 + 8) = a5;
    *(v11 + 16) = a6;
    *(v11 + 24) = a7;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MatchedGeometryScope.Frame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);

  return a1;
}

void SharedFrame.updateValue()()
{
  v7 = v0;
  v130 = *MEMORY[0x1E69E9840];
  v9 = *(v0 + 8);
  v8 = *(v0 + 16);
  swift_beginAccess();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_85;
  }

  v10 = *(v9 + 112);
  if (v8 >= *(v10 + 16))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v2 = v8 << 6;
  v0 = *(v10 + (v8 << 6) + 80);
  v11 = *(v0 + 16);

  v3 = -v11;
  v4 = -1;
  v12 = 36;
  do
  {
    if (v4 - v11 == -1)
    {

      SharedFrame.reset()();
      v16 = *MEMORY[0x1E698D3F8];
      LOBYTE(v125.f64[0]) = 1;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v116 = 1;
      v117 = v16;
LABEL_46:
      type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
      AGGraphSetOutputValue();
      return;
    }

    if (++v4 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_74;
    }

    v5 = v12 + 28;
    type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
    Value = AGGraphGetValue();
    v12 = v5;
  }

  while (*(Value + 24) != 1);

  if (*(v7 + 32))
  {
    v14 = AGGraphGetValue();
    if (v15)
    {
      v6 = *v14;
    }

    else
    {
      v6 = -INFINITY;
    }
  }

  else
  {
    v6 = -INFINITY;
  }

  Attribute = AGWeakAttributeGetAttribute();
  v1 = Attribute;
  LODWORD(v4) = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v18 = *(v9 + 112);
    if (v8 >= *(v18 + 16))
    {
      goto LABEL_89;
    }

    v19 = *(v18 + v2 + 80);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + 44;
      while (*(v21 - 12) != Attribute)
      {
        v21 += 28;
        if (!--v20)
        {
          goto LABEL_23;
        }
      }

      v0 = *(v7 + 40);
      if (v0 != *AGGraphGetValue() >> 1)
      {
        v0 = v7;
        SharedFrame.reset()();
      }
    }

LABEL_23:
    LODWORD(v5) = v1;
  }

  v2 = *(v7 + 8);
  v9 = *(v7 + 16);
  swift_beginAccess();
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

  v8 = *(v2 + 112);
  if (v9 >= *(v8 + 16))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v3 = v9 << 6;
  if (*(*(v8 + (v9 << 6) + 80) + 16) < 2uLL || (v0 = v2, MatchedGeometryScope.sourceViewIndex(frameIndex:)(v9), v8 = *(v2 + 112), (v23 & 1) != 0))
  {
    v24 = 0;
    goto LABEL_29;
  }

  if (v9 >= *(v8 + 16))
  {
    goto LABEL_90;
  }

  if ((*(v8 + v3 + 92) & 1) == 0)
  {
    v24 = (v22 + 1) < *(*(v8 + v3 + 80) + 16);
    if (!v22)
    {
      goto LABEL_29;
    }

LABEL_61:
    v109 = v24;
    v0 = v22;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 112) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_62;
  }

  v24 = 0;
  if (v22)
  {
    goto LABEL_61;
  }

  while (1)
  {
LABEL_29:
    if (v9 >= *(v8 + 16))
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v25 = *(v8 + v3 + 80);
    v26 = *(v25 + 16);
    if (!v26)
    {
      SharedFrame.reset()();
      LOBYTE(v125.f64[0]) = 1;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v116 = 1;
      v117 = v4;
      goto LABEL_46;
    }

    v8 = *(v25 + 36);
    v27 = v1 != v4 && v5 == *(v25 + 32);
    LODWORD(v5) = *(v25 + 32);
    v28 = v27;
    if (v26 == 1 || (v28 & 1) != 0)
    {
      if (!v24)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v108 = *(v25 + 32);
    v109 = v24;
    v1 = AGGraphClearUpdate();
    v0 = *AGGraphGetValue();

    AGGraphSetUpdate();
    v103 = Transaction.animationIgnoringTransitionPhase.getter(v0);
    if (!v103)
    {

      v88 = v109;
      goto LABEL_82;
    }

    v29 = *(v2 + 112);
    if (v9 >= *(v29 + 16))
    {
      goto LABEL_91;
    }

    v102 = v0;
    if (*(*(v29 + v3 + 80) + 16) >= 2uLL)
    {
      v30 = AGGraphGetValue();
      v113 = 0uLL;
      v114 = *v30;
      v106 = v114;
      v115 = v30[1];
      v31 = AGGraphGetValue();
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = *(v31 + 24);
      v36 = *(v31 + 32);
      v37 = *(v31 + 40);
      type metadata accessor for CGPoint(0);

      v38 = AGGraphGetValue();
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = v40 - v35;
      v42 = v36 - (*v38 - v34);
      v43 = v37 - v41;
      v44 = AGGraphGetValue();
      v45 = vmuld_lane_f64(*(v44 + 16), v106, 1) + 0.0;
      v113.f64[0] = *(v44 + 8) * v106.f64[0] + 0.0;
      v113.f64[1] = v45;
      v123 = 0.0;
      v121 = 0u;
      v122 = 0u;
      LOBYTE(v124) = 2;
      v125.f64[0] = v32;
      v125.f64[1] = v33;
      v126 = v39;
      v127 = v40;
      v128 = v42;
      v129 = v43;
      specialized ApplyViewTransform.convert(to:transform:)(&v121, &v125);
      outlined destroy of CoordinateSpace(&v121);
      v46 = AGGraphGetValue();
      v118 = 0uLL;
      v47 = v46[1];
      v119 = *v46;
      v104 = v119;
      v120 = v47;
      v48 = AGGraphGetValue();
      v50 = *v48;
      v49 = *(v48 + 8);
      v51 = *(v48 + 16);
      v52 = *(v48 + 24);
      v53 = *(v48 + 32);
      v54 = *(v48 + 40);

      v55 = AGGraphGetValue();
      v56 = *v55;
      v57 = *(v55 + 8);
      v58 = v53 - (*v55 - v51);
      v59 = AGGraphGetValue();
      v60 = vmuld_lane_f64(*(v59 + 16), v104, 1) + 0.0;
      v118.f64[0] = *(v59 + 8) * v104.f64[0] + 0.0;
      v118.f64[1] = v60;
      memset(v112, 0, 40);
      v112[40] = 2;
      v121.f64[0] = v50;
      v121.f64[1] = v49;
      *&v122 = v56;
      *(&v122 + 1) = v57;
      v123 = v58;
      v124 = v54 - (v57 - v52);
      specialized ApplyViewTransform.convert(to:transform:)(v112, &v121);
      outlined destroy of CoordinateSpace(v112);
      v61 = vsubq_f64(v118, v113);
      v62 = vsubq_f64(v104, v106);
      v3 = v102;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v61), vceqzq_f64(v62))))) & 1) == 0)
      {
        goto LABEL_81;
      }

      v105 = v62;
      v107 = v61;
      v6 = *AGGraphGetValue();
      if (*(v7 + 32))
      {
        v63 = *(v7 + 4);

        v112[0] = 0;
        v64.n128_u64[0] = *&v107.f64[1];
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v103, v102, v63, v107, v64, v105, v105.n128_f64[1], v6);

        goto LABEL_77;
      }

      type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
      v0 = swift_allocObject();
      v89 = MEMORY[0x1E69E7CC0];
      v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *(v0 + 124) = 1;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 108) = 0u;
      *(v0 + 128) = v89;
      *(v0 + 136) = v89;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 168) = v89;
      *(v0 + 16) = v103;
      *(v0 + 24) = v90;
      swift_beginAccess();
      *(v0 + 48) = v105;
      *(v0 + 32) = v107;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 64) = v6;
      *(v0 + 80) = v6;
      swift_retain_n();

      v92 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v91));
      if (v93)
      {

        v94 = 0;
        *(v0 + 72) = 0;
LABEL_69:
        LOBYTE(v95) = 1;
        goto LABEL_76;
      }

      if (v92 > 0.0)
      {
        v96 = log2(v92 * 240.0);
        v97 = exp2(floor(v96 + 0.01)) * 0.00416666667;
        *(v0 + 72) = v97;
        if (v97 >= 0.0166666667)
        {

          v94 = 0;
          goto LABEL_69;
        }

LABEL_75:
        v98 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v3);
        v94 = v98;
        v95 = HIDWORD(v98) & 1;

LABEL_76:
        *(v0 + 120) = v94;
        *(v0 + 124) = v95;
        *(v7 + 32) = v0;
LABEL_77:
        v99 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v3);
        if (v99)
        {
          v1 = v99[9];
          if (v1)
          {
            v100 = swift_retain_n();
            MEMORY[0x193ABF170](v100);
            if (*((*(v7 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_97;
            }

            goto LABEL_80;
          }
        }

        goto LABEL_81;
      }

LABEL_74:
      *(v0 + 72) = 0;
      goto LABEL_75;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    *(v2 + 112) = v8;
LABEL_62:
    v111 = v4;
    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v4 = v8 + v3;
    specialized Array.remove(at:)(v0, &v113);
    v85 = v113;
    v86 = v114;
    v87 = DWORD2(v114);
    *(v2 + 112) = v8;
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_95;
    }

    v0 = v4 + 80;
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, *&v85.f64[0], *&v85.f64[1], v86, v87);
    *(v2 + 112) = v8;
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_96;
    }

    ++*(v4 + 88);
    *(v2 + 112) = v8;
    swift_endAccess();
    v8 = *(v2 + 112);
    LODWORD(v4) = v111;
    v24 = v109;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_80:
  v101 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(*v1 + 88))(v101);

LABEL_81:

  v88 = v109;
LABEL_82:
  LODWORD(v5) = v108;
  if (v88)
  {
LABEL_48:
    AGGraphClearUpdate();
    closure #4 in SharedFrame.updateValue()(v7);
    AGGraphSetUpdate();
  }

LABEL_49:
  *(v7 + 44) = AGCreateWeakAttribute();
  *(v7 + 40) = *AGGraphGetValue() >> 1;
  v65 = AGGraphGetValue();
  v66 = *v65;
  v67 = *(v65 + 24);
  *v112 = 0uLL;
  *&v112[16] = v66;
  *&v112[24] = *(v65 + 8);
  v110 = *&v112[24];
  *&v112[40] = v67;
  v68 = AGGraphGetValue();
  v69 = *v68;
  v70 = *(v68 + 8);
  v71 = *(v68 + 16);
  v72 = *(v68 + 24);
  v73 = *(v68 + 32);
  v74 = *(v68 + 40);
  type metadata accessor for CGPoint(0);

  v75 = AGGraphGetValue();
  v76 = *v75;
  v77 = *(v75 + 8);
  v78 = v73 - (*v75 - v71);
  v79 = AGGraphGetValue();
  v80 = *(v79 + 16) * v110 + 0.0;
  *v112 = v66 * *(v79 + 8) + 0.0;
  *&v112[8] = v80;
  *&v115 = 0;
  v113 = 0u;
  v114 = 0u;
  BYTE8(v115) = 2;
  v118.f64[0] = v69;
  v118.f64[1] = v70;
  v119.f64[0] = v76;
  v119.f64[1] = v77;
  v120.f64[0] = v78;
  v120.f64[1] = v74 - (v77 - v72);
  specialized ApplyViewTransform.convert(to:transform:)(&v113, &v118);
  outlined destroy of CoordinateSpace(&v113);
  if (*(v7 + 32))
  {
    v113 = *v112;
    *&v114 = v66;
    *(&v114 + 1) = v110;
    v81 = *(v7 + 4);

    if (specialized AnimatorState.update(_:at:environment:)(&v113, v81, v6))
    {

      *(v7 + 32) = 0;
      _s7SwiftUI11SharedFrame33_F035CBEF00D3D777B3359545F684D774LLV14AttributeGraph08ObservedL0AaeFP7destroyyyFTW_0();
    }

    else
    {
      specialized AnimatorState.nextUpdate()();
    }

    v82 = v113;
    v83 = v114;
    *v112 = v113;
    *&v112[16] = v114;
  }

  else
  {
    v82 = *v112;
    v83 = *&v112[16];
    LODWORD(v4) = v5;
  }

  v113 = v82;
  v114 = v83;
  v115 = *&v112[32];
  v116 = 0;
  v117 = v4;
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
  AGGraphSetOutputValue();
}

void _s7SwiftUI11SharedFrame33_F035CBEF00D3D777B3359545F684D774LLV14AttributeGraph08ObservedL0AaeFP7destroyyyFTW_0()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  if (!__CocoaSet.count.getter())
  {
    return;
  }

  v6 = __CocoaSet.count.getter();
  if (v6)
  {
    v3 = v6;
    if (v6 >= 1)
    {
LABEL_3:
      for (i = 0; i != v3; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x193AC03C0](i, v2);
        }

        else
        {
          v5 = *(v2 + 8 * i + 32);
        }

        (*(*v5 + 96))();
      }

      goto LABEL_12;
    }

    __break(1u);
  }

LABEL_12:

  *(v1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of MatchedGeometryScope.Frame(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));

  return a1;
}

void instantiation function for generic protocol witness table for RoundedRectangle._Inset(uint64_t a1)
{
  lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset()
{
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }
}

double GeometryProxy.frame<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  specialized static Update.begin()();
  v10 = 0;
  v11 = 0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v10 = *InputValue;
    v11 = InputValue[1];
  }

  static Update.end()();
  (*(a3 + 8))(v33, a2, a3);
  specialized static Update.begin()();
  v32[0] = 0;
  v32[1] = 0;
  v32[2] = v10;
  v32[3] = v11;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v13 = *(v3 + 2);
  v29 = *(v3 + 1);
  v30 = v13;
  v31 = v3[12];
  v14 = GeometryProxy.placementContext.getter(v24);
  MEMORY[0x1EEE9AC00](v14);
  v22[2] = v32;
  v22[3] = v33;
  v23 = v15;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(closure #1 in GeometryProxy.rect(_:in:)partial apply, v22, v17, v18, v19, v16 | (v15 << 32));
  v20 = *v32;
  static Update.end()();
  outlined destroy of CoordinateSpace(v33);
  return v20;
}

void MatchedGeometryScope.sourceViewIndex(frameIndex:)(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = a1;
    swift_beginAccess();
    v3 = 0;
    v4 = v2 << 6;
    v12 = v2;
    while (1)
    {
      v5 = *(v1 + 112);
      v6 = *(v5 + 16);
      if (v6 <= v2)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v7 = *(v5 + v4 + 88);
      v8 = *(v5 + v4 + 80);
      v9 = *(v8 + 16);
      if (v9)
      {
        break;
      }

      if (v6 <= v2)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (*(v5 + v4 + 88) != v7 && ++v3 != 8)
      {
        continue;
      }

      return;
    }

    v10 = 0;
    v11 = v8 + 44;
    do
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      if ((*AGGraphGetValue() & 1) == 0)
      {
        type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
        if (*(AGGraphGetValue() + 24) == 1)
        {
          break;
        }
      }

      ++v10;
      v11 += 28;
    }

    while (v9 != v10);
    v5 = *(v1 + 112);
    v2 = v12;
    if (*(v5 + 16) > v12)
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t MatchedSharedFrame.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for _MatchedGeometryEffect(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t Pair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for Pair(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

unint64_t MatchedGeometryScope.frame<A>(index:for:view:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9)
{
  v11 = v9;
  LODWORD(v48) = a7;
  *&v47 = a6;
  v46 = a5;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v21, v16);
  AnyHashable.init<A>(_:)();
  if (*(a2 + 8))
  {
LABEL_8:
    swift_beginAccess();
    v22 = *(v11 + 120);
    if (*(v22 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
      if (v27)
      {
        a9 = *(*(v22 + 56) + 8 * v26);
        swift_endAccess();
        v10 = 1;
        goto LABEL_22;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v22 = *(v11 + 112);
    v28 = *(v22 + 16);

    if (v28)
    {
      a9 = 0;
      v10 = 92;
      do
      {
        if (a9 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        outlined init with copy of MatchedGeometryScope.Frame(v22 + v10 - 60, v50);
        v29 = *(v51 + 16);
        outlined destroy of MatchedGeometryScope.Frame(v50);
        if (!v29)
        {

          swift_beginAccess();
          v22 = *(v11 + 112);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v11 + 112) = v22;
          if ((result & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_18;
        }

        ++a9;
        v10 += 64;
      }

      while (v28 != a9);
    }

    a9 = *(*(v11 + 112) + 16);
    AGGraphClearUpdate();
    v30 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #3 in MatchedGeometryScope.frame<A>(index:for:view:)(v11, a9, v52);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v10 = 0;
    goto LABEL_21;
  }

  v22 = *a2;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v23 = *(v11 + 112);
  if (v22 >= *(v23 + 16))
  {
    goto LABEL_38;
  }

  v10 = v22 << 6;
  outlined init with copy of AnyHashable(v23 + (v22 << 6) + 40, v50);
  a9 = MEMORY[0x193AC01F0](v50, v52);
  outlined destroy of AnyHashable(v50);
  if ((a9 & 1) == 0)
  {
    MatchedGeometryScope.releaseFrame(index:owner:)(v22, a4);
    goto LABEL_8;
  }

  v24 = *(v11 + 112);
  if (v22 < *(v24 + 16))
  {
    v25 = v24 + v10;
LABEL_30:
    outlined init with copy of MatchedGeometryScope.Frame(v25 + 32, v50);
    type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
    Value = AGGraphGetValue();
    v39 = *(Value + 32);
    v40 = *(Value + 40);
    v41 = *(Value + 48);
    v42 = *(Value + 52);
    v43 = *(Value + 16);
    v48 = *Value;
    v47 = v43;
    outlined destroy of MatchedGeometryScope.Frame(v50);
    v44 = v47;
    *a1 = v48;
    *(a1 + 16) = v44;
    *(a1 + 32) = v39;
    *(a1 + 40) = v40;
    *(a1 + 48) = v41;
    outlined destroy of AnyHashable(v52);
    return v42;
  }

  while (1)
  {
    __break(1u);
LABEL_40:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
    v22 = result;
    *(v11 + 112) = result;
LABEL_18:
    if (a9 >= *(v22 + 16))
    {
      break;
    }

    result = outlined assign with copy of AnyHashable(v52, v22 + v10 - 52);
    *(v11 + 112) = v22;
    if (a9 >= *(v22 + 16))
    {
      goto LABEL_42;
    }

    *(v22 + v10) = 0;
    *(v11 + 112) = v22;
    swift_endAccess();
    outlined init with copy of MatchedGeometryScope.Frame(v22 + v10 - 60, v50);
    outlined destroy of MatchedGeometryScope.Frame(v50);
    v10 = 1;
    AGGraphMutateAttribute();
LABEL_21:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v11 + 120);
    *(v11 + 120) = 0x8000000000000000;
    v22 = &v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a9, v52, isUniquelyReferenced_nonNull_native);
    *(v11 + 120) = v49;
    swift_endAccess();
LABEL_22:
    swift_beginAccess();
    v18 = *(v11 + 112);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 112) = v18;
    if (v33)
    {
      if ((a9 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_32:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v11 + 112) = v18;
      if ((a9 & 0x8000000000000000) != 0)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    if (a9 >= *(v18 + 2))
    {
      goto LABEL_34;
    }

    v34 = &v18[64 * a9];
    v22 = (v34 + 80);
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, a4, v46, v47, v48);
    *(v11 + 112) = v18;
    if (a9 >= *(v18 + 2))
    {
      goto LABEL_35;
    }

    ++*(v34 + 22);
    *(v11 + 112) = v18;
    swift_endAccess();
    if (v10)
    {
      outlined init with copy of MatchedGeometryScope.Frame((v34 + 32), v50);
      outlined destroy of MatchedGeometryScope.Frame(v50);
      v35 = AGCreateWeakAttribute();
      v10 = specialized static GraphHost.currentHost.getter();
      v36 = v35;
      v22 = v10;
      specialized GraphHost.continueTransaction<A>(_:)(v36);
    }

    *a2 = a9;
    *(a2 + 8) = 0;
    v37 = *(v11 + 112);
    if (a9 < *(v37 + 16))
    {
      v25 = v37 + (a9 << 6);
      goto LABEL_30;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t CoordinateSpace.Name.space.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of CoordinateSpace.Name(v1, v6);
  if (v8)
  {
    *a1 = *&v6[0];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t static Pair<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Pair(0, a3, a4, v8);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t ModifierTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v28 = a4;
  v27 = a2;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PlaceholderContentView(255, v11, v11, v12);
  v15 = type metadata accessor for ModifiedContent(0, v13, v7, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v26[-v21];
  if (v27 == 1)
  {
    v5 += *(a3 + 36);
  }

  (*(v8 + 16))(v10, v5, v7, v20);
  View.modifier<A>(_:)();
  (*(v8 + 8))(v10, v7);
  v23 = *(a3 + 24);
  v29[0] = &protocol witness table for PlaceholderContentView<A>;
  v29[1] = v23;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v29);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v16 + 8);
  v24(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v22, v15);
}

void type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
    v3 = v2;
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v5 = v4;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v9[0] = v3;
    v9[1] = MEMORY[0x1E69E7DE0];
    v9[2] = v5;
    v9[3] = v6;
    v7 = type metadata accessor for AnimatablePair(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    }
  }
}

void lazy protocol witness table accessor for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

void key path getter for EnvironmentValues.displayScale : EnvironmentValues(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 1.0;
    }
  }

  *a2 = v4;
}

uint64_t @objc closure #1 in closure #1 in closure #1 in ShapeType.initFromFilled(type:shape:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v5;
  v8 = *(a1 + 40);

  ShapeType.initFromStroked(type:shape:style:)(v4, a3, v7);
  return outlined destroy of StrokeStyle(v7);
}

void ShapeType.initFromStroked(type:shape:style:)(int a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a3 + 24) + 16))
  {
    return;
  }

  if (a1 != 3)
  {
    if (a1 == 1)
    {
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      v12 = *(a2 + 64);
      v13 = *(a2 + 72);
      v44.origin.x = v10;
      v44.origin.y = v11;
      v44.size.width = v12;
      v44.size.height = v13;
      Width = CGRectGetWidth(v44);
      v45.origin.x = v10;
      v45.origin.y = v11;
      v45.size.width = v12;
      v45.size.height = v13;
      if (Width != CGRectGetHeight(v45))
      {
        return;
      }

      v17 = *(a2 + 16);
      *&v40.a = *a2;
      *&v40.c = v17;
      *&v40.tx = *(a2 + 32);
      if (!CGAffineTransformIsIdentity(&v40))
      {
        return;
      }

      v18 = *(v3 + 48);
      *&v40.tx = *(v3 + 32);
      v41 = v18;
      v42 = *(v3 + 64);
      v43 = *(v3 + 80);
      v19 = *(v3 + 16);
      *&v40.a = *v3;
      *&v40.c = v19;
      outlined destroy of ShapeType(&v40);
      v20 = *a3;
      v46.origin.x = v10;
      v46.origin.y = v11;
      v46.size.width = v12;
      v46.size.height = v13;
      v21 = CGRectGetWidth(v46) * 0.5;
      if (v21 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v20 * 0.5 + v21;
      }

      v47.origin.x = v10;
      v47.origin.y = v11;
      v47.size.width = v12;
      v47.size.height = v13;
      *v3 = CGRectInset(v47, v20 * -0.5, v20 * -0.5);
      *(v3 + 32) = v22;
      *(v3 + 40) = 0;
      *(v3 + 48) = v20;
    }

    else
    {
      if (a1)
      {
        return;
      }

      if (*(a3 + 12))
      {
        return;
      }

      if (*(a3 + 16) <= 1.4142)
      {
        return;
      }

      v4 = *(a2 + 16);
      *&v40.a = *a2;
      *&v40.c = v4;
      *&v40.tx = *(a2 + 32);
      if (!CGAffineTransformIsIdentity(&v40))
      {
        return;
      }

      v7 = *(v3 + 48);
      *&v40.tx = *(v3 + 32);
      v41 = v7;
      v42 = *(v3 + 64);
      v43 = *(v3 + 80);
      v8 = *(v3 + 16);
      *&v40.a = *v3;
      *&v40.c = v8;
      outlined destroy of ShapeType(&v40);
      v9 = *a3;
      *v3 = CGRectInset(*(a2 + 48), *a3 * -0.5, *a3 * -0.5);
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = v9;
    }

LABEL_27:
    *(v3 + 80) = 1;
    return;
  }

  v23 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = *(a2 + 48);
  v26 = *(a2 + 56);
  v27 = *(a2 + 64);
  v28 = *(a2 + 72);
  v30 = *(a2 + 80);
  v29 = *(a2 + 88);
  v31 = *(a2 + 96) == 1;
  if (v30 == v29 || vabdd_f64(v30, v29) < 0.001)
  {
    *&v40.a = *a2;
    *&v40.c = v23;
    *&v40.tx = v24;
    if (CGAffineTransformIsIdentity(&v40))
    {
      v33 = *(v3 + 48);
      *&v40.tx = *(v3 + 32);
      v41 = v33;
      v42 = *(v3 + 64);
      v43 = *(v3 + 80);
      v34 = *(v3 + 16);
      *&v40.a = *v3;
      *&v40.c = v34;
      outlined destroy of ShapeType(&v40);
      v35 = *a3;
      v48.origin.x = v25;
      v48.origin.y = v26;
      v48.size.width = v27;
      v48.size.height = v28;
      v36 = CGRectGetWidth(v48);
      v49.origin.x = v25;
      v49.origin.y = v26;
      v49.size.width = v27;
      v49.size.height = v28;
      Height = CGRectGetHeight(v49);
      if (Height >= v36)
      {
        Height = v36;
      }

      v38 = Height * 0.5;
      if (v38 >= v30)
      {
        v38 = v30;
      }

      if (v38 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v35 * 0.5 + v38;
      }

      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v27;
      v50.size.height = v28;
      *v3 = CGRectInset(v50, v35 * -0.5, v35 * -0.5);
      *(v3 + 32) = v39;
      *(v3 + 40) = v31;
      *(v3 + 48) = v35;
      goto LABEL_27;
    }
  }
}

uint64_t _ShapeStyle_Pack.Style.modifyStyle(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v38.a = a1;
  *&v38.b = a2;
  *&v38.c = a3;
  result = RBSymbolUpdateLayerGetFillType();
  if (result == 2 && !*(v3 + 85))
  {
    v8 = *(v3 + 16);
    v41 = *v3;
    v42 = v8;
    RBSymbolUpdateLayerGetGradientAxis();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    *&v38.a = a1;
    *&v38.b = a2;
    *&v38.c = a3;
    RBSymbolUpdateLayerFillRect();
    v19 = v18 + v10 * v17;
    v22 = v21 + v12 * v20;
    v36 = v21 + v16 * v20;
    v37 = v18 + v14 * v17;
    RBSymbolUpdateLayerFillTransform();
    v23 = *&a1;
    d = v38.d;
    tx = v38.tx;
    ty = v38.ty;
    ResolvedGradient.init(standardColor:style:)(&v41, &v38);
    a = v38.a;
    b_low = LOBYTE(v38.b);
    b_high = HIDWORD(v38.b);
    c_low = LOBYTE(v38.c);
    v38.a = v23;
    *&v38.b = a2;
    *&v38.c = a3;
    v38.d = d;
    v38.tx = tx;
    v38.ty = ty;
    v43.x = v19;
    v43.y = v22;
    v31 = CGPointApplyAffineTransform(v43, &v38);
    v38.a = v23;
    *&v38.b = a2;
    *&v38.c = a3;
    v38.d = d;
    v38.tx = tx;
    v38.ty = ty;
    v44.y = v36;
    v44.x = v37;
    v32 = CGPointApplyAffineTransform(v44, &v38);
    LOBYTE(v38.a) = c_low;
    _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
    v33 = swift_allocObject();
    *(v33 + 16) = a;
    *(v33 + 24) = b_low;
    *(v33 + 28) = b_high;
    *(v33 + 32) = c_low;
    *(v33 + 40) = v31;
    *(v33 + 56) = v32;
    *(v33 + 72) = 0;
    v34 = *(v3 + 48);
    *&v38.tx = *(v3 + 32);
    v39 = v34;
    v40[0] = *(v3 + 64);
    *(v40 + 14) = *(v3 + 78);
    v35 = *(v3 + 16);
    *&v38.a = *v3;
    *&v38.c = v35;
    result = outlined destroy of _ShapeStyle_Pack.Fill(&v38);
    *v3 = v33;
    *(v3 + 85) = 1;
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance LayoutSubviews(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = 0;
}

uint64_t LayoutComputer.explicitAlignment(_:at:)(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v9 = a1;
    v11 = a2[1];
    v13 = *a2;
    swift_once();
    v4 = v11;
    v3 = v13;
    a1 = v9;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v10 = v4;
  v12 = v3;
  v6 = a1;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  a1 = v6;
  v4 = v10;
  v3 = v12;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v14[0] = v3;
    v14[1] = v4;
    return (*(*v5 + 144))(a1, v14);
  }

  return result;
}

uint64_t type metadata completion function for AnyTransition.RemovalVisitor(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void SharedFrame.reset()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        v3 = v6;
        if (v6 >= 1)
        {
LABEL_3:
          for (i = 0; i != v3; ++i)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v5 = MEMORY[0x193AC03C0](i, v2);
            }

            else
            {
              v5 = *(v2 + 8 * i + 32);
            }

            (*(*v5 + 96))();
          }

          goto LABEL_12;
        }

        __break(1u);
      }

LABEL_12:

      *(v1 + 24) = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
}

void type metadata accessor for TransitionBox<PushTransition>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TransitionBox<PushTransition>)
  {
    lazy protocol witness table accessor for type PushTransition and conformance PushTransition();
    v4 = type metadata accessor for TransitionBox(a1, &type metadata for PushTransition, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransitionBox<PushTransition>);
    }
  }
}

uint64_t static AnyTransition.push(from:)(char a1)
{
  type metadata accessor for TransitionBox<PushTransition>(0);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void lazy protocol witness table accessor for type PushTransition and conformance PushTransition()
{
  if (!lazy protocol witness table cache variable for type PushTransition and conformance PushTransition)
  {
    swift_getWitnessTable(protocol conformance descriptor for PushTransition, &type metadata for PushTransition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PushTransition and conformance PushTransition);
  }
}

void AnyTransition.FirstVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyTransition.SecondVisitor(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(v5 + 16))(v7, a1, a2, v13);
  (*(v5 + 32))(v15, v7, a2);
  *&v15[*(v11 + 36)] = 0;
  AnyTransition.visitBase<A>(applying:)(v15, *v2, v11, &protocol witness table for AnyTransition.SecondVisitor<A>);
  v16 = *&v15[*(v11 + 36)];
  v17 = *(v12 + 8);

  v17(v15, v11);

  v2[1] = v16;
}

uint64_t AnyTransition.combined(with:)(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = 0;
  v2 = *(*a2 + 80);

  result = v2(&v5, &unk_1F00ADAC8, &protocol witness table for AnyTransition.FirstVisitor);
  v4 = v6;
  if (v6)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for AnyTransition.SecondVisitor(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t AnyTransition.SecondVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v50 = a2;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v47 = a1;
  v48 = v7;
  v51[0] = v8;
  v51[1] = a3;
  v51[2] = v7;
  v51[3] = a4;
  v9 = type metadata accessor for CombiningTransition(255, v51);
  v12 = type metadata accessor for UncheckedSendable(0, v9, v10, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v40 - v13;
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v40 - v15;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for UncheckedSendable(0, a3, v20, v21);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v23 = &v40 - v22;
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UncheckedSendable(0, v8, v28, v29);
  v40 = *(v30 - 8);
  v41 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v40 - v32;
  (*(v24 + 16))(v27, v5, v8, v31);
  UncheckedSendable.init(_:)(v27, v8, v33);
  (*(v16 + 16))(v19, v47, a3);
  UncheckedSendable.init(_:)(v19, a3, v23);
  v34 = v44;
  closure #1 in AnyTransition.SecondVisitor.visit<A>(_:)(v23, v8, a3, v48, v49, v44);
  v35 = v45;
  v36 = v42;
  (*(v45 + 32))(v42, v34, v9);
  swift_getWitnessTable(protocol conformance descriptor for CombiningTransition<A, B>, v9);
  v37 = specialized AnyTransition.init<A>(_:)(v36, v9);
  (*(v35 + 8))(v36, v9);
  v38 = *(v50 + 36);

  *(v5 + v38) = v37;
  (*(v43 + 8))(v23, v46);
  return (*(v40 + 8))(v33, v41);
}

uint64_t closure #1 in AnyTransition.SecondVisitor.visit<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v12 = type metadata accessor for CombiningTransition(0, v16);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v16 - v13;
  Transition.combined<A>(with:)(a1, a2, a3, a4, a5, v16 - v13);
  return UncheckedSendable.init(_:)(v14, v12, a6);
}

uint64_t Transition.combined<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return CombiningTransition.init(transition1:transition2:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t CombiningTransition.init(transition1:transition2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for CombiningTransition(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t getEnumTagSinglePayload for GroupElementsOfContent(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x40)
  {
    v3 = 64;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = (v3 & 0xFFFFFFFFFFFFFFF8) + 24;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483646;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_5:
      v4 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v12 = v11 - 1;
  if (v7)
  {
    v12 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v12) ^ 0x80000000;
}

__n128 _StrokedShape.init(shape:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for _StrokedShape(0, a3, a4, v9) + 36);
  result = *a2;
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v12;
  *(v10 + 32) = *(a2 + 32);
  return result;
}

uint64_t _BackgroundModifier.init(background:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for _BackgroundModifier(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t static CustomAnimationModifiedContent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for CustomAnimationModifiedContent(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void closure #4 in SharedFrame.updateValue()(uint64_t a1)
{
  v2 = a1;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(v4 + 112);
  if (v3 >= *(v5 + 16))
  {
    goto LABEL_19;
  }

  v6 = *(v5 + (v3 << 6) + 80);
  v7 = *(v6 + 16);
  if (v7 >= 2)
  {

    v8 = v6 + 72;
    v9 = 1;
    v4 = &type metadata for _GraphInputs.Phase;
    while (1)
    {
      if (v9 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      v1 = *(v8 - 8);
      if ((*AGGraphGetValue() & 1) == 0)
      {
        type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
        if (*(AGGraphGetValue() + 24) == 1)
        {
          break;
        }
      }

      ++v9;
      v8 += 28;
      if (v7 == v9)
      {

        return;
      }
    }

    v1 = *(v2 + 1);
    v4 = *(v2 + 2);
    swift_beginAccess();
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    v10 = *(v1 + 112);
    if (v4 < *(v10 + 16))
    {
      outlined init with copy of AnyHashable(v10 + (v4 << 6) + 40, v13);
      _StringGuts.grow(_:)(98);
      MEMORY[0x193ABEDD0](0xD000000000000032, 0x800000018DD792E0);
      v11 = AnyHashable.description.getter();
      MEMORY[0x193ABEDD0](v11);

      MEMORY[0x193ABEDD0](0xD00000000000002ELL, 0x800000018DD79320);
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

      v4 = *(v2 + 1);
      v1 = *(v2 + 2);
      swift_beginAccess();
      v2 = *(v4 + 112);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 112) = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_22;
      }

      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    if ((v1 & 0x8000000000000000) == 0)
    {
LABEL_13:
      if (v1 < *(v2 + 2))
      {
        v2[64 * v1 + 92] = 1;
        *(v4 + 112) = v2;
        swift_endAccess();

        outlined destroy of AnyHashable(v13);

        return;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t assignWithCopy for HoverEffectContext(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];

  return a1;
}

uint64_t assignWithCopy for StateObject(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of StateObject<A>.Storage<A>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of StateObject<A>.Storage<A>(v6, v7, v8);
  return a1;
}

uint64_t specialized static DisplayList.BackdropGroup.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return 1;
}

uint64_t StaticLayoutComputer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 4);
  v8 = *(v1 + 8);
  v9 = *(a1 + 24);
  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, a1);
  StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v6, v7, v8, a1, v3, v11, v9);
  return (*(v4 + 8))(v6, v3);
}

double destroy for ContentTransition.State(uint64_t a1)
{
  outlined consume of ContentTransition.Storage(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 13));

  return result;
}

void type metadata accessor for (Int, RBDisplayListContents)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Int, RBDisplayListContents))
  {
    type metadata accessor for RBDisplayListContents();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, RBDisplayListContents));
    }
  }
}

void specialized Array._customRemoveLast()(void *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v4 = *(v3 + 2);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v4 = *(v3 + 2);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = v4 - 1;
  memmove(a1, &v3[128 * v4 - 96], 0x7CuLL);
  *(v3 + 2) = v5;
  *v1 = v3;

  _ViewInputs.base.modify();
}

double Transaction._animationFrameInterval.setter(uint64_t a1, char a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v2, a1, a2 & 1);

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(v6, v13);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(v9 + 80);
  if (a3)
  {
    if (*(v9 + 80))
    {
      return;
    }

LABEL_8:
    v11 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>(0);
    v12 = swift_allocObject();
    *(v12 + 72) = *&a2;
    *(v12 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v11);

    return;
  }

  if (*(v9 + 9) != *&a2)
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_8;
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>);
  }
}

double Transaction._animationReason.setter(unint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1, a1 | ((HIDWORD(a1) & 1) << 32));

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(v4, v11);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *(v7 + 76);
  if ((a2 & 0x100000000) != 0)
  {
    if (*(v7 + 76))
    {
      return;
    }

LABEL_8:
    v9 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationReasonKey>>(0);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 76) = BYTE4(a2) & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (*(v7 + 18) != a2)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CoreSystem(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for AnimatorState.Fork(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEffectLocalModifier, type metadata accessor for GlassEffectLocalModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Rectangle.AsymmetricalInset, type metadata accessor for Rectangle.AsymmetricalInset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _GlassContainerStorageView, type metadata accessor for _GlassContainerStorageView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEntryContainerView, type metadata accessor for GlassEntryContainerView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for CombinedContentShape, type metadata accessor for CombinedContentShape.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassTransitionStateModifier, type metadata accessor for GlassTransitionStateModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for KickModifier, type metadata accessor for KickModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEffectShapeModifier, type metadata accessor for GlassEffectShapeModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for FlexInteractionModifier, type metadata accessor for FlexInteractionModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for VariableBlurEffect, type metadata accessor for VariableBlurEffect.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEffectView, type metadata accessor for GlassEffectView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEntryView, type metadata accessor for GlassEntryView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for SummarySymbol, type metadata accessor for SummarySymbol.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassItemView, type metadata accessor for GlassItemView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for DistanceGesture, type metadata accessor for DistanceGesture.Type);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _GeometryGroupEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t specialized MaterialProvider.foregroundEnvironment(_:for:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 | (*(a2 + 12) << 32);
  v6 = *a1;
  outlined copy of Material.ID(*a2, *(a2 + 8));
  swift_retain_n();
  outlined copy of Material.ID(v3, v4);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a1, v3, v5);

  outlined consume of Material.ID(v3, v4);
  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v6, *a1);
  }

  return outlined consume of Material.ID(v3, v4);
}

uint64_t one-time initialization function for kitTracking()
{
  result = MEMORY[0x193ABEC20](0x696B636172545443, 0xEA0000000000676ELL);
  static NSAttributedStringKey.kitTracking = result;
  return result;
}

void specialized closure #1 in DynamicBody.updateValue()(_OWORD *a1, uint64_t a2, char *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = *(a2 + 8);
  LODWORD(v33[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v35 = v15;
          *(&v35 + 1) = v16;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), v30, v31, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  v23 = a1[1];
  v33[0] = *a1;
  v33[1] = v23;
  v34[0] = a1[2];
  v24 = v34[0];
  *(v34 + 9) = *(a1 + 41);
  v25 = *a3;
  v35 = v33[0];
  v36 = v23;
  v37[0] = v24;
  *(v37 + 9) = *(v34 + 9);
  if (v25)
  {
    outlined init with copy of GlassEffectLocalModifier(v33, v32);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v35);
    outlined destroy of GlassEffectLocalModifier(v33);
  }
}

{
  v37 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  LODWORD(v32[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v34 = v15;
          *(&v34 + 1) = v16;
          LOBYTE(v35) = OutputValue != 0;
          BYTE1(v35) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), v29, v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  v23 = a1[1];
  v32[0] = *a1;
  v32[1] = v23;
  v33[0] = a1[2];
  *(v33 + 9) = *(a1 + 41);
  if (*a3)
  {
    v24 = a1[1];
    v34 = *a1;
    v35 = v24;
    v36[0] = a1[2];
    *(v36 + 9) = *(a1 + 41);
    outlined init with copy of _GlassContainerStorageView(v32, v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v34);
    outlined destroy of _GlassContainerStorageView(v32);
  }
}

{
  v5 = v3;
  v52 = *MEMORY[0x1E69E9840];
  v44 = *(a2 + 8);
  LODWORD(v37[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v37) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>(0), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>(0);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v34 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v44 = v18;
            *(&v44 + 1) = v19;
            LOBYTE(v45) = v5 != 0;
            BYTE1(v45) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v35 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v33 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v33, v12, v10, v11 | (v12 << 32), v5 != 0, v35, 7);
  if (v4)
  {

    MEMORY[0x193AC4820](v33, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v33, -1, -1);
LABEL_28:
  v27 = a1[5];
  v40 = a1[4];
  v41 = v27;
  v28 = a1[7];
  v42 = a1[6];
  v43 = v28;
  v29 = a1[1];
  v37[0] = *a1;
  v37[1] = v29;
  v30 = a1[3];
  v38 = a1[2];
  v39 = v30;
  v31 = *a3;
  v46 = v38;
  v47 = v30;
  v44 = v37[0];
  v45 = v29;
  v50 = v42;
  v51 = v28;
  v48 = v40;
  v49 = v27;
  if (v31)
  {
    outlined init with copy of TranslationKickModifier<Int>(v37, &v36);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v44);
    outlined destroy of TranslationKickModifier<Int>(v37);
  }
}

{
  v37 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  LODWORD(v32[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v34 = v15;
          *(&v34 + 1) = v18;
          LOBYTE(v35) = OutputValue != 0;
          BYTE1(v35) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), v29, v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  v23 = a1[1];
  v32[0] = *a1;
  v32[1] = v23;
  v33[0] = a1[2];
  *(v33 + 10) = *(a1 + 42);
  if (*a3 == 1)
  {
    v24 = a1[1];
    v34 = *a1;
    v35 = v24;
    v36[0] = a1[2];
    *(v36 + 10) = *(a1 + 42);
    outlined init with copy of MeshGradient(v32, v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v34);
    outlined destroy of MeshGradient(v32);
  }
}

uint64_t partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 44);
  v8 = *MEMORY[0x1E698D3F8];
  result = a2(0, v5, v6);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v8 == v7)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  *(a1 + 8) = v11;
  return result;
}

uint64_t partial apply for closure #2 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 44);
  v9 = *MEMORY[0x1E698D3F8];
  result = type metadata accessor for UnaryChildGeometry(0, v6, v7, a4);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v9 == v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  *(a1 + 12) = v12;
  return result;
}

{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 44);
  v9 = *MEMORY[0x1E698D3F8];
  result = type metadata accessor for UnaryPositionAwareChildGeometry(0, v6, v7, a4);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v9 == v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  *(a1 + 24) = v12;
  return result;
}

void lazy protocol witness table accessor for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>()
{
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttribute);
    swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>);
  }
}

void type metadata accessor for VTable<_AnyAnimatableData.Empty>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VTable<_AnyAnimatableData.Empty>)
  {
    lazy protocol witness table accessor for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty();
    v4 = type metadata accessor for VTable(a1, &unk_1F004E668, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for VTable<_AnyAnimatableData.Empty>);
    }
  }
}

void one-time initialization function for empty()
{
  type metadata accessor for VTable<_AnyAnimatableData.Empty>(0);
  qword_1EAB14480 = &type metadata for EmptyAnimatableData;
  static _AnyAnimatableData.empty = v0;
}

double specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v7 = a4;
  v8 = a3;
  v10 = *a1;

  return _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA03AnyD0V_Tt3B5(v10, v8, v7, a5, x8_0);
}

double _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA03AnyD0V_Tt3B5@<D0>(uint64_t a1@<X0>, Swift::UInt32 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 120) = 1;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 1;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 0u;
  *(a6 + 232) = 1;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  v10 = MEMORY[0x1E69E7CC0];
  *(a6 + 352) = 0;
  *(a6 + 280) = 0;
  *(a6 + 288) = 0;
  *(a6 + 272) = v10;
  *(a6 + 296) = 0;
  *(a6 + 304) = 0;
  *(a6 + 312) = 0;
  *(a6 + 320) = 0;
  *(a6 + 328) = 0;
  *(a6 + 336) = 0;
  *(a6 + 344) = 0;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(v15) = 0;
  v11 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a6 + 64) = v11;
  *a6 = a1;
  v15 = a4;
  v16 = a5;
  v17 = 0;
  v18 = v11;
  v12 = *(*a1 + 88);

  v12(&v15);

  return result;
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance _VStackLayout(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, void, void, void))
{
  if (*(a1 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return a4(*a1, *(a1 + 1), v5 | *(a1 + 16), *v4, *(v4 + 8), *(v4 + 16));
}

uint64_t _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA03AnyC0VG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    outlined init with copy of ViewLayoutEngine<AnyLayout>(a1, v10);
    type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<AnyLayout>>(0);
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

    *(v4 + 376) = v7;
    *(v4 + 380) = v6;
    v8 = (v4 + 16);
  }

  else
  {
    outlined init with copy of ViewLayoutEngine<AnyLayout>(a1, v10);
    type metadata accessor for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>(0);
    v4 = swift_allocObject();
    v8 = (v4 + 16);
  }

  memcpy(v8, v10, 0x168uLL);
  result = outlined destroy of ViewLayoutEngine<AnyLayout>(a1);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

double static Material.Layer.Filter.colorMatrix(_:isPremultiplied:)@<D0>(__int128 *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = a1[3];
  v12 = a1[2];
  v13 = v4;
  v14 = a1[4];
  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  LOBYTE(v15) = a2;
  _s7SwiftUI14GraphicsFilterOWOi5_(&v10);
  v6 = v15;
  a3[4] = v14;
  a3[5] = v6;
  a3[6] = v16[0];
  *(a3 + 108) = *(v16 + 12);
  v7 = v11;
  *a3 = v10;
  a3[1] = v7;
  result = *&v12;
  v9 = v13;
  a3[2] = v12;
  a3[3] = v9;
  return result;
}

double one-time initialization function for defaultContentGroup()
{
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_18DDBA140;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0x80;
  *(v0 + 40) = v2;
  *(v0 + 48) = v2;
  static SDFStyle.defaultContentGroup = v0 | 0x8000000000000000;
  return result;
}

uint64_t sub_18D28B1B8()
{

  return swift_deallocObject();
}

uint64_t static RendererEffect._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

void Material._apply(to:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(a1 + 24);
  if (v6 > 2)
  {
    if (v6 != 3 && v6 == 4)
    {
      v15 = a1 + 6;
      v16 = a1[6];
      outlined copy of Material.ID(*v1, *(v1 + 8));

      outlined copy of Material.ID(v3, v4);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v15, v3, v4 | (v5 << 32));

      outlined consume of Material.ID(v3, v4);
      if (v15[1])
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v16, *v15);
      }

      outlined consume of Material.ID(v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    if (v6 == 1)
    {
      v7 = a1[1];
      if (v7 == a1[2])
      {
        return;
      }

      v22 = *a1;
      v8 = a1[6];
      v9 = a1[7];
      v10 = *(a1 + 105);
      v11 = *(a1 + 106);
      v37 = v8;
      v38 = v9;
      *&v35[0] = v3;
      BYTE8(v35[0]) = v4;
      HIDWORD(v35[0]) = v5;
      v12 = EnvironmentValues.materialProvider(for:)(v35);
      if (v12)
      {
        v29 = 1;
        v28 = 1;
        *&v30 = v8;
        *(&v30 + 1) = v9;
        LOBYTE(v31) = v10;
        BYTE1(v31) = v11;
        v32 = 0;
        *&v33 = 0;
        BYTE8(v33) = 1;
        memset(v34, 0, 24);
        v34[24] = 1;
        v25 = v33;
        v26[0] = 0uLL;
        *(v26 + 9) = *&v34[9];
        v23 = v30;
        v24 = v31;
        v21 = *(*v12 + 80);
        outlined copy of Material.ID(v3, v4);

        outlined init with copy of Material.Context(&v30, &v37);
        v21(&v27, &v23);

        v35[2] = v25;
        v36[0] = v26[0];
        *(v36 + 9) = *(v26 + 9);
        v35[0] = v23;
        v35[1] = v24;
        outlined destroy of Material.Context(v35);
        v37 = v8;
        v38 = v9;
        v39 = v10;
        v40 = v11;
        v41 = 0;
        v42 = 0;
        v43 = 1;
        v45 = 0;
        v46 = 0;
        v44 = 0;
        v47 = 1;
        outlined destroy of Material.Context(&v37);
        v13 = v27;
        outlined consume of Material.ID(v3, v4);
        LOBYTE(v4) = 2;
        outlined copy of Material.ID(v13, 2u);
        outlined consume of Material.ID(v13, 2u);
        v3 = v13;
      }

      else
      {
        v37 = v8;
        v38 = v9;

        LODWORD(v5) = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v37) | v5;
        outlined copy of Material.ID(v3, v4);
      }

      v37 = v3;
      LOBYTE(v38) = v4;
      HIDWORD(v38) = v5;
      v48 = 3;
      v49 = 1065353216;
      v50 = 0;
      v51 = -1;
      v52 = MEMORY[0x1E69E7CC0];
      LOBYTE(v30) = v22;
      if (*(a1 + 40) == 1)
      {
        v19 = a1[4];
        outlined copy of Material.ID(v3, v4);
        outlined copy of _ShapeStyle_Shape.Result(v19, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v19, 1u);
        a1[4] = 0;
        *(a1 + 40) = 5;
      }

      else
      {
        outlined copy of Material.ID(v3, v4);
        v19 = MEMORY[0x1E69E7CC0];
      }

      *&v35[0] = v19;
      _ShapeStyle_Pack.subscript.setter(&v37, &v30, v7);
      outlined consume of Material.ID(v3, v4);
      v20 = *&v35[0];
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = v20;
      v18 = 1;
    }

    else
    {
      type metadata accessor for MaterialView<Rectangle>(0, &lazy cache variable for type metadata for ColorBox<Color.BackgroundColorProvider>, lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider, &type metadata for Color.BackgroundColorProvider, type metadata accessor for ColorBox);
      v17 = swift_allocObject();
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = v17;
      v18 = 3;
    }

    *(a1 + 40) = v18;
  }

  else
  {
    outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
    a1[4] = 0;
    *(a1 + 40) = 0;
  }
}

double static Material.Layer.Filter.luminanceCurve(_:amount:)@<D0>(__n128 *a1@<X8>, __n128 a2@<Q0>, double a3@<D1>)
{
  v4 = a3;
  v9 = a2;
  v10.n128_f32[0] = v4;
  _s7SwiftUI14GraphicsFilterOWOi15_(&v9);
  v5 = v14;
  a1[4] = v13;
  a1[5] = v5;
  a1[6] = v15[0];
  *(a1 + 108) = *(v15 + 12);
  v6 = v10;
  *a1 = v9;
  a1[1] = v6;
  result = v11.n128_f64[0];
  v8 = v12;
  a1[2] = v11;
  a1[3] = v8;
  return result;
}

double static Material.Layer.Filter.saturation(amount:)@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  *v7 = a2;
  _s7SwiftUI14GraphicsFilterOWOi9_(v7);
  v3 = v11;
  a1[4] = v10;
  a1[5] = v3;
  a1[6] = v12[0];
  *(a1 + 108) = *(v12 + 12);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double static Material.Layer.Filter.brightness(amount:)@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  *v7 = a2;
  _s7SwiftUI14GraphicsFilterOWOi10_(v7);
  v3 = v11;
  a1[4] = v10;
  a1[5] = v3;
  a1[6] = v12[0];
  *(a1 + 108) = *(v12 + 12);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Any>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Any>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
    }
  }
}

unint64_t type metadata accessor for NSArray()
{
  result = lazy cache variable for type metadata for NSArray;
  if (!lazy cache variable for type metadata for NSArray)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSArray);
  }

  return result;
}

Swift::Void __swiftcall Path.addCurve(to:control1:control2:)(CGPoint to, CGPoint control1, CGPoint control2)
{
  v4 = v3;
  y = control2.y;
  x = control2.x;
  v7 = control1.y;
  v8 = control1.x;
  v9 = to.y;
  v10 = to.x;
  v25 = *MEMORY[0x1E69E9840];
  v11 = *v3;
  v13 = (v3 + 8);
  v12 = *(v3 + 8);
  v14 = *(v3 + 32);
  if (v14 == 5)
  {
    v15 = *v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v15 = swift_allocObject();
      *(v15 + 24) = 0u;
      *(v15 + 40) = 0u;
      *(v15 + 56) = 0u;
      *(v15 + 72) = 0u;
      *(v15 + 88) = 0u;
      *(v15 + 104) = 0u;
      v16 = *(v11 + 16);
      *(v15 + 16) = v16;
      if (v16)
      {
        if (v16 == 1)
        {

          *(v15 + 24) = RBPathRetain();
          *(v15 + 32) = v17;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v21 = *(v11 + 24);
        if (!v21)
        {
          __break(1u);
          return;
        }

        *(v15 + 24) = v21;
        v22 = v21;
      }
    }

    v11 = 0;
    v12 = 0;
    v18 = 0;
    v19 = 0;
    LOBYTE(v14) = 6;
  }

  else
  {
    v18 = *(v3 + 16);
    v19 = *(v3 + 24);
    type metadata accessor for Path.PathBox();
    v15 = swift_allocObject();
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0u;
    *(v15 + 16) = 2;
    RBPathStorageInit();
    v20 = *(v15 + 16);

    if (v20 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v23[6] = v11;
    v23[7] = v12;
    v23[8] = v18;
    v23[9] = v19;
    v24 = v14;
    Path.append(to:)(v15 + 24);
  }

  outlined consume of Path.Storage(v11, v12, v18, v19, v14);
  *v4 = v15;
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *(v4 + 32) = 5;
  if (*(v15 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v23 = v8;
  *&v23[1] = v7;
  *&v23[2] = x;
  *&v23[3] = y;
  *&v23[4] = v10;
  *&v23[5] = v9;
  MEMORY[0x193AC35E0](v15 + 24, 3, v23, 0);
}

void Path.trimmedPath(from:to:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  if (v11 <= 2)
  {
    if (v11 >= 2)
    {
      if (CGRectIsNull(*(v7 + 16)))
      {
        goto LABEL_23;
      }
    }

    else if (CGRectIsNull(*v3))
    {
      goto LABEL_23;
    }

LABEL_18:
    if (a2 <= 0.0 && a3 >= 1.0)
    {
      outlined copy of Path.Storage(v7, v8, v9, v10, v11);
      goto LABEL_24;
    }

    if (a3 > a2)
    {
      Path.retainRBPath()();
      type metadata accessor for Path.PathBox();
      v7 = swift_allocObject();
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 16) = 2;
      RBPathStorageInit();
      *v14 = a2;
      *&v14[1] = a3;
      MEMORY[0x193AC35E0](v7 + 24, 18, v14, 0);
      Path.append(to:)(v7 + 24);
      MEMORY[0x193AC35E0](v7 + 24, 16, 0, 0);
      RBPathRelease();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      LOBYTE(v11) = 5;
      goto LABEL_24;
    }

LABEL_23:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 6;
    goto LABEL_24;
  }

  if (v11 == 5)
  {
    if (*(v7 + 16))
    {
      if (*(v7 + 16) != 1)
      {
        v12 = one-time initialization token for bufferCallbacks;

        if (v12 != -1)
        {
          swift_once();
        }

LABEL_17:
        IsEmpty = RBPathIsEmpty();
        outlined destroy of Path(v3);
        if (IsEmpty)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_8:

      goto LABEL_17;
    }

    if (*(v7 + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (v11 == 6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_24:
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in Path.forEach(_:)(void (**a1)(__int128 *), uint64_t a2)
{
  LODWORD(v2) = *a2;
  if (*a2 <= 1)
  {
    if (!v2)
    {
      v3 = *a1;
      v8 = **(a2 + 8);
      v9 = 0u;
      v10 = 0u;
      v11 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = *a1;
      v8 = **(a2 + 8);
      v9 = 0u;
      v10 = 0u;
      LOBYTE(v2) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = *a1;
        v2 = *(a2 + 8);
        v4 = *v2;
        v8 = v2[1];
        v9 = v4;
        v10 = 0uLL;
        LOBYTE(v2) = 2;
        goto LABEL_11;
      case 3:
        v3 = *a1;
        v2 = *(a2 + 8);
        v5 = v2[1];
        v6 = *v2;
        v8 = v2[2];
        v9 = v6;
        v10 = v5;
        LOBYTE(v2) = 3;
        goto LABEL_11;
      case 4:
        v3 = *a1;
        v8 = 0u;
        v9 = 0u;
        v10 = 0u;
LABEL_11:
        v11 = v2;
LABEL_12:

        v3(&v8);

        break;
    }
  }

  return 1;
}

double _BackgroundShapeModifier.shape(in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  (*(*(a2 + 40) + 24))(v15, *(a2 + 24), 0.0, 0.0, a3, a4);
  v7 = v16;
  v8 = (v4 + *(a2 + 56));
  v9 = *v8;
  LODWORD(v8) = v8[1];
  v10 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v10;
  v11 = v8 == 0;
  v12 = 0x10000;
  if (v11)
  {
    v12 = 0;
  }

  v11 = v9 == 0;
  v13 = 256;
  if (v11)
  {
    v13 = 0;
  }

  *(a1 + 32) = v13 | v7 | v12;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  return 0.0;
}

uint64_t static Material.Layer.backdrop(scale:color:filters:)@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>, double a3@<D0>, unsigned int a4@<S1>, unsigned int a5@<S2>, unsigned int a6@<S3>, unsigned int a7@<S4>)
{
  a2[2].i32[1] = 1065353216;
  v11 = one-time initialization token for normal;

  if (v11 != -1)
  {
    swift_once();
  }

  *&v12 = a3;
  v13 = static GraphicsBlendMode.normal;
  v14 = byte_1ED52F818;
  a2[2].i64[1] = static GraphicsBlendMode.normal;
  a2[3].i8[0] = v14;
  v15.i64[0] = v12;
  v15.i64[1] = a5;
  *a2 = vorrq_s8(vshll_n_s32(__PAIR64__(a6, a4), 0x20uLL), v15);
  a2[1].i64[0] = a7 | 0x7FC0000000000000;
  a2[1].i64[1] = a1;
  a2[2].i8[0] = 1;

  return outlined copy of GraphicsBlendMode(v13, v14);
}

void _ShapeStyle_RenderedShape.bounds.getter()
{
  v1 = v0[1];
  v48 = *v0;
  v49 = v1;
  *&v53[12] = *(v0 + 92);
  v2 = v0[5];
  v52 = v0[4];
  *v53 = v2;
  v3 = v0[3];
  v50 = v0[2];
  v51 = v3;
  v4 = *&v53[24] >> 29;
  if (*&v53[24] >> 29 == 4)
  {
    return;
  }

  v5 = v48;
  if (v4 == 1)
  {
    v11 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
    v14 = *(v48 + 16);
    if (!v14)
    {
LABEL_28:
      v57.origin.x = v11;
      v57.origin.y = v10;
      v57.size.width = v13;
      v57.size.height = v12;
      CGRectIsNull(v57);
      return;
    }

    v15 = 0;
    v16 = (v48 + 64);
    v44 = *(MEMORY[0x1E695F050] + 24);
    v45 = *(MEMORY[0x1E695F050] + 16);
    v46 = *(MEMORY[0x1E695F050] + 8);
    v47 = *MEMORY[0x1E695F050];
    while (1)
    {
      if (v15 >= *(v5 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v21 = *(v16 - 4);
      v22 = *(v16 - 3);
      v23 = *(v16 - 2);
      v24 = *(v16 - 1);
      v25 = *v16;
      if (v25 > 2)
      {
        if (v25 == 5)
        {
          if (*(v21 + 16))
          {
            if (*(v21 + 16) == 1)
            {
              outlined copy of Path.Storage(*(v16 - 4), *(v16 - 3), *(v16 - 2), *(v16 - 1), 5u);
              v5 = v48;
              RBPathGetBoundingRect();
            }

            else
            {
              v36 = outlined copy of Path.Storage(*(v16 - 4), *(v16 - 3), *(v16 - 2), *(v16 - 1), 5u);
              v30 = MEMORY[0x193AC3640](v21 + 24, v36);
            }

            v17 = v30;
            v18 = v31;
            v19 = v32;
            v20 = v33;
            goto LABEL_11;
          }

          v34 = *(v21 + 24);
          if (!v34)
          {
            goto LABEL_43;
          }

          v35 = v34;
          outlined copy of Path.Storage(v21, v22, v23, v24, 5u);
          outlined copy of Path.Storage(v21, v22, v23, v24, 5u);
          PathBoundingBox = CGPathGetPathBoundingBox(v35);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;

          outlined consume of Path.Storage(v21, v22, v23, v24, 5u);
          goto LABEL_24;
        }

        v18 = v46;
        v17 = v47;
        v20 = v44;
        v19 = v45;
        if (v25 != 6)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v25 >= 2)
        {
          x = *(v21 + 16);
          y = *(v21 + 24);
          width = *(v21 + 32);
          height = *(v21 + 40);
          outlined copy of Path.Storage(*(v16 - 4), *(v16 - 3), *(v16 - 2), *(v16 - 1), 2u);
LABEL_24:
          v20 = height;
          v19 = width;
          v18 = y;
          v17 = x;
          goto LABEL_11;
        }

        v17 = *(v16 - 4);
        v18 = *(v16 - 3);
        v19 = *(v16 - 2);
        v20 = *(v16 - 1);
      }

LABEL_11:
      ++v15;
      v54.origin.x = v11;
      v54.origin.y = v10;
      v54.size.width = v13;
      v54.size.height = v12;
      v55 = CGRectUnion(v54, *&v17);
      v11 = v55.origin.x;
      v10 = v55.origin.y;
      v13 = v55.size.width;
      v12 = v55.size.height;
      outlined consume of Path.Storage(v21, v22, v23, v24, v25);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_28;
      }
    }
  }

  if (!v4)
  {
    if (v50 > 2u)
    {
      if (v50 == 5)
      {
        if (*(v48 + 16))
        {
          if (*(v48 + 16) == 1)
          {
            outlined copy of Path.Storage(v48, *(&v48 + 1), v49, *(&v49 + 1), 5u);
            RBPathGetBoundingRect();
          }

          else
          {
            v43 = outlined copy of Path.Storage(v48, *(&v48 + 1), v49, *(&v49 + 1), 5u);
            v37 = MEMORY[0x193AC3640](v48 + 24, v43);
          }

          v6 = v37;
          v7 = v38;
          v8 = v39;
          v9 = v40;
        }

        else
        {
          v41 = *(v48 + 24);
          if (!v41)
          {
            goto LABEL_44;
          }

          v42 = v41;
          outlined copy of Path.Storage(v48, *(&v48 + 1), v49, *(&v49 + 1), 5u);
          v58 = CGPathGetPathBoundingBox(v42);
          v6 = v58.origin.x;
          v7 = v58.origin.y;
          v8 = v58.size.width;
          v9 = v58.size.height;
        }

        outlined destroy of _ShapeStyle_RenderedShape.Shape(&v48);
      }

      else
      {
        if (v50 != 6)
        {
          goto LABEL_45;
        }

        v6 = *MEMORY[0x1E695F050];
        v7 = *(MEMORY[0x1E695F050] + 8);
        v8 = *(MEMORY[0x1E695F050] + 16);
        v9 = *(MEMORY[0x1E695F050] + 24);
      }
    }

    else if (v50 && v50 != 1)
    {
      v6 = *(v48 + 16);
      v7 = *(v48 + 24);
      v8 = *(v48 + 32);
      v9 = *(v48 + 40);
    }

    else
    {
      v7 = *(&v48 + 1);
      v6 = *&v48;
      v9 = *(&v49 + 1);
      v8 = *&v49;
    }

    v59.origin.x = v6;
    v59.origin.y = v7;
    v59.size.width = v8;
    v59.size.height = v9;
    CGRectIsNull(v59);
  }
}

uint64_t Material.ResolvedMaterial.layers.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  if (v2 == 3)
  {
    if ((v1 & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      type metadata accessor for _ContiguousArrayStorage<Material.Layer>();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_18DDA6EB0;
      v6 = v1;
      v7 = 3;
      v8 = v3;
      Material.ResolvedMaterial.intelligenceLightSourceLayer.getter(v4 + 32);
      return v4;
    }
  }

  else if (v2 == 2)
  {
    outlined copy of Material.ID(v1, 2u);
    return v1;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static CoreMaterialCache.shared);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  outlined copy of Material.ID(v1, v2);
  v1 = CoreMaterialCache.subscript.getter(&v6);
  outlined consume of Material.ID(v6, v7);
  os_unfair_lock_unlock(&static CoreMaterialCache.shared);
  return v1;
}

void *MaterialLayers.append(item:opacity:blendMode:)(_OWORD *a1, uint64_t a2, float a3)
{
  v4 = v3;
  v5 = a1[1];
  v6 = a1[3];
  v43 = a1[2];
  v44[0] = v6;
  *(v44 + 12) = *(a1 + 60);
  v7 = a1[1];
  v42[0] = *a1;
  v42[1] = v7;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = a1[3];
  v40 = v43;
  *v41 = v10;
  *&v41[12] = *(a1 + 60);
  v11 = v7;
  v38 = v42[0];
  v39 = v5;
  if (a3 == 1.0)
  {
    outlined init with copy of DisplayList.Item(v42, &v34);
  }

  else
  {
    v12 = LODWORD(a3);
    v13 = *v41;
    v14 = *&v41[16];
    v15 = *(&v40 + 1);
    v34 = 0uLL;
    v35 = v7;
    v36 = v40;
    *v37 = *v41;
    *&v37[16] = *&v41[16];
    *&v37[24] = 0;
    outlined init with copy of DisplayList.Item(v42, v32);
    outlined copy of DisplayList.Item.Value(v15, v13, *(&v13 + 1), v14);
    DisplayList.init(_:)(&v34, v32);
    v16 = *&v32[0];
    v17 = WORD4(v32[0]) | (HIDWORD(v32[0]) << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(v15, v13, *(&v13 + 1), v14);
    *(&v40 + 1) = v12;
    *v41 = 0x400000000;
    *&v41[8] = v16;
    *&v41[16] = v17;
  }

  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v18 = static GraphicsBlendMode.normal;
  if (v9)
  {
    if (byte_1ED52F818)
    {
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, 1);
      outlined copy of GraphicsBlendMode(v8, 1);
      outlined consume of GraphicsBlendMode(v8, 1);
      outlined consume of GraphicsBlendMode(v18, 1);
      if (v8 == v18)
      {
        goto LABEL_13;
      }

LABEL_12:
      v19 = *v41;
      v20 = *&v41[16];
      v21 = *(&v40 + 1);
      v34 = 0uLL;
      v35 = v11;
      v36 = v40;
      *v37 = *v41;
      *&v37[16] = *&v41[16];
      *&v37[24] = 0;
      outlined copy of GraphicsBlendMode(v8, v9);
      outlined copy of DisplayList.Item.Value(v21, v19, *(&v19 + 1), v20);
      DisplayList.init(_:)(&v34, v32);
      v22 = *&v32[0];
      v23 = WORD4(v32[0]) | (HIDWORD(v32[0]) << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(v21, v19, *(&v19 + 1), v20);
      *(&v40 + 1) = v8;
      *v41 = v9 | 0x500000000;
      *&v41[8] = v22;
      *&v41[16] = v23;
      goto LABEL_13;
    }

LABEL_11:
    swift_unknownObjectRetain();
    outlined consume of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v18, v9 ^ 1);
    goto LABEL_12;
  }

  if (byte_1ED52F818)
  {
    goto LABEL_11;
  }

  outlined consume of GraphicsBlendMode(v8, 0);
  outlined consume of GraphicsBlendMode(v18, 0);
  if (v8 != v18)
  {
    goto LABEL_12;
  }

LABEL_13:
  LOBYTE(v34) = *v4;
  DisplayList.Item.canonicalize(options:)(&v34);
  v36 = v40;
  *v37 = *v41;
  *&v37[12] = *&v41[12];
  v34 = v38;
  v35 = v39;
  v24 = *(v4 + 8);
  outlined init with copy of DisplayList.Item(&v34, v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[80 * v26];
  *(v27 + 2) = v34;
  v28 = v35;
  v29 = v36;
  v30 = *v37;
  *(v27 + 92) = *&v37[12];
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  *(v27 + 3) = v28;
  *(v4 + 8) = v24;
  v32[2] = v40;
  v33[0] = *v41;
  *(v33 + 12) = *&v41[12];
  v32[0] = v38;
  v32[1] = v39;
  return outlined destroy of DisplayList.Item(v32);
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = (v10 - v12);
  v14 = specialized Sequence._copySequenceContents(initializing:)(&v82, &v5[128 * v12 + 32], v10 - v12, a1);
  if (v14 < v4)
  {
    goto LABEL_15;
  }

  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = *(v5 + 2);
  v16 = __OFADD__(v15, v14);
  v17 = v14 + v15;
  if (!v16)
  {
    *(v5 + 2) = v17;
LABEL_12:
    if (v14 != v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    v13 = &v61;
    v2 = *(v5 + 2);
    if (!v83)
    {
      goto LABEL_39;
    }

    v3 = v83 - 1;
    if (__OFSUB__(v83, 1))
    {
      __break(1u);
    }

    else if ((v3 & 0x8000000000000000) == 0)
    {
      if (v3 < *(v82 + 16))
      {
        v18 = (v82 + (v3 << 7));
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[5];
        v70 = v18[4];
        v71 = v21;
        v68 = v19;
        v69 = v20;
        v22 = v18[6];
        v23 = v18[7];
        v24 = v18[8];
        *(v74 + 12) = *(v18 + 140);
        v73 = v23;
        v74[0] = v24;
        v72 = v22;
        memmove(&__dst, v18 + 2, 0x7CuLL);
        _ViewInputs.base.modify();
        outlined init with copy of GraphicsFilter(&v68, &v61);
        goto LABEL_21;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  __break(1u);
  do
  {
    while (1)
    {
      v25 = *(v5 + 3);
      v26 = v25 >> 1;
      if ((v25 >> 1) < v2 + 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v2 + 1, 1, v5);
        v26 = *(v5 + 3) >> 1;
      }

      v28 = v80;
      v58 = v79;
      v27 = v79;
      v59 = v80;
      v60[0] = v81[0];
      v29 = v81[0];
      *(v60 + 12) = *(v81 + 12);
      v31 = v76;
      __src = __dst;
      v30 = __dst;
      v55 = v76;
      v33 = v78;
      v56 = v77;
      v32 = v77;
      v57 = v78;
      *(v13 + 108) = *(v81 + 12);
      v66 = v28;
      v67[0] = v29;
      v64 = v33;
      v65 = v27;
      v62 = v31;
      v63 = v32;
      v61 = v30;
      if (_s7SwiftUI14GraphicsFilterOSgWOg(&v61) != 1 && v2 < v26)
      {
        break;
      }

LABEL_25:
      *(v5 + 2) = v2;
      v72 = v79;
      v73 = v80;
      v74[0] = v81[0];
      v13 = &v61;
      *(v74 + 12) = *(v81 + 12);
      v68 = __dst;
      v69 = v76;
      v70 = v77;
      v71 = v78;
      if (_s7SwiftUI14GraphicsFilterOSgWOg(&v68) == 1)
      {
        goto LABEL_22;
      }
    }

    v13 = v82;
    v34 = &v5[128 * v2 + 32];
    while (1)
    {
      v50[4] = v79;
      v50[5] = v80;
      v51[0] = v81[0];
      *(v51 + 12) = *(v81 + 12);
      v50[0] = __dst;
      v50[1] = v76;
      v50[2] = v77;
      v50[3] = v78;
      v52[2] = v56;
      v52[3] = v57;
      v52[0] = __src;
      v52[1] = v55;
      *(v53 + 12) = *(v60 + 12);
      v52[5] = v59;
      v53[0] = v60[0];
      v52[4] = v58;
      outlined init with copy of GraphicsFilter(v52, &v43);
      outlined destroy of HitTestableEvent?(v50, &lazy cache variable for type metadata for GraphicsFilter?, &type metadata for GraphicsFilter);
      memmove(v34, &__src, 0x7CuLL);
      if (v3)
      {
        break;
      }

      _s7SwiftUI14GraphicsFilterOSgWOi0_(&v43);
      v79 = v47;
      v80 = v48;
      v81[0] = v49[0];
      *(v81 + 12) = *(v49 + 12);
      __dst = v43;
      v76 = v44;
      v77 = v45;
      v78 = v46;
LABEL_34:
      ++v2;
      v58 = v79;
      v59 = v80;
      v60[0] = v81[0];
      *(v60 + 12) = *(v81 + 12);
      __src = __dst;
      v55 = v76;
      v56 = v77;
      v57 = v78;
      *(v67 + 12) = *(v81 + 12);
      v66 = v80;
      v67[0] = v81[0];
      v64 = v78;
      v65 = v79;
      v62 = v76;
      v63 = v77;
      v61 = __dst;
      if (_s7SwiftUI14GraphicsFilterOSgWOg(&v61) != 1)
      {
        v34 += 128;
        if (v2 < v26)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    if (--v3 < *(v13 + 2))
    {
      v35 = &v13[8 * v3 + 2];
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[3];
      v45 = v35[2];
      v46 = v38;
      v43 = v36;
      v44 = v37;
      v39 = v35[4];
      v40 = v35[5];
      v41 = v35[6];
      *(v49 + 12) = *(v35 + 108);
      v48 = v40;
      v49[0] = v41;
      v47 = v39;
      memmove(&__dst, v35, 0x7CuLL);
      _ViewInputs.base.modify();
      outlined init with copy of GraphicsFilter(&v43, &v42);
      goto LABEL_34;
    }

    __break(1u);
LABEL_39:
    _s7SwiftUI14GraphicsFilterOSgWOi0_(&__dst);
    v3 = 0;
LABEL_21:
    v72 = v79;
    v73 = v80;
    v74[0] = v81[0];
    *(v13 + 236) = *(v81 + 12);
    v68 = __dst;
    v69 = v76;
    v70 = v77;
    v71 = v78;
  }

  while (_s7SwiftUI14GraphicsFilterOSgWOg(&v68) != 1);
LABEL_22:
  v65 = v79;
  v66 = v80;
  v67[0] = v81[0];
  *(v13 + 108) = *(v81 + 12);
  v61 = __dst;
  v62 = v76;
  v63 = v77;
  v64 = v78;
  outlined destroy of HitTestableEvent?(&v61, &lazy cache variable for type metadata for GraphicsFilter?, &type metadata for GraphicsFilter);
LABEL_13:

  *v1 = v5;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for (AGSubgraphRef, Int)(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for ObservationTracking();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[128 * v8 + 32], (a1 + 32), v2 << 7);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[24 * v8 + 32], (a1 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v8 + 32], (a1 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[40 * v8 + 32], (a1 + 32), 40 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for (ContentShapeKinds, ConvertiblePath)();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[112 * v8 + 32], (a1 + 32), 112 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[36 * v8 + 32], (a1 + 32), 36 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for (name: String, value: String)();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}