double AttributedString.Runs.Validated.run(of:at:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a3;
  v131 = a2;
  v121 = a4;
  v6 = type metadata accessor for AttributeContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for AttributedString.Runs.NSAttributesSlice();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for AttributedString.Runs();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v130 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedSubstring();
  v128 = *(v11 - 8);
  v129 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString();
  v125 = *(v13 - 8);
  v126 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v123 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v96 - v23;
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of AttributedString.Keys.makeIterator()>>.0, MEMORY[0x1E697D940]);
  v26 = v25;
  v122 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v96 - v30;
  v107 = type metadata accessor for OSSignpostID();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v115 = &v96 - v34;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  if (one-time initialization token for signposter != -1)
  {
    v94 = v39;
    v95 = v36;
    swift_once();
    v36 = v95;
    v39 = v94;
  }

  v40 = __swift_project_value_buffer(v36, signposter);
  outlined init with copy of Range<AttributedString.Index>(v40, v38, type metadata accessor for OSSignposter?);
  v41 = type metadata accessor for OSSignposter();
  v103 = *(v41 - 8);
  v42 = *(v103 + 48);
  v104 = v41;
  v43 = v42(v38, 1);
  v44 = MEMORY[0x1E69E7CC0];
  v114 = v6;
  v113 = v7;
  v116 = v24;
  if (v43 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v38, type metadata accessor for OSSignposter?);
    v45 = 0;
  }

  else
  {
    v46 = v115;
    static OSSignpostID.new.getter(v115);

    v47 = v39;
    v48 = OSSignposter.logHandle.getter();
    v100 = static os_signpost_type_t.begin.getter();

    v49 = OS_os_log.signpostsEnabled.getter();
    v102 = v47;
    v101 = v38;
    if (v49)
    {
      v99 = v48;
      v132 = v21;
      v50 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v134[0] = v97;
      v98 = v50;
      *v50 = 136315138;
      v137 = v44;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
      v51 = v137;
      v139 = v47;

      AttributedString.Keys.makeIterator()();

      while (1)
      {
        swift_getOpaqueTypeConformance2();
        dispatch thunk of IteratorProtocol.next()();
        if (!v139)
        {
          break;
        }

        v52 = dispatch thunk of static AttributedStringKey.name.getter();
        v54 = v53;
        v137 = v51;
        v56 = *(v51 + 16);
        v55 = *(v51 + 24);
        if (v56 >= v55 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
          v51 = v137;
        }

        *(v51 + 16) = v56 + 1;
        v57 = v51 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
      }

      (*(v122 + 8))(v31, v26);
      v139 = v51;
      type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v58 = BidirectionalCollection<>.joined(separator:)();
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v134);

      v62 = v98;
      *(v98 + 1) = v61;
      v46 = v115;
      v63 = OSSignpostID.rawValue.getter();
      v64 = v99;
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v99, v100, v63, "AttributedString.Runs.Validated.run", "dependencies: %s", v62, 0xCu);
      v65 = v97;
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x18D0110E0](v65, -1, -1);
      MEMORY[0x18D0110E0](v62, -1, -1);

      v21 = v132;
    }

    else
    {
    }

    v66 = v106;
    v67 = v107;
    (*(v106 + 16))(v105, v46, v107);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v45 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v66 + 8))(v46, v67);
    (*(v103 + 8))(v101, v104);
    v39 = v102;
  }

  v139 = 0;
  v140 = 0;
  v141 = v44;
  v134[0] = v39;

  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  dispatch thunk of IteratorProtocol.next()();
  v68 = v137;
  if (v137)
  {
    do
    {
      v136[0] = v68;
      v136[1] = v138;
      closure #2 in AttributedString.Runs.Validated.run(of:at:)(&v139, v136, v134);

      v69 = v134[0];
      v44 = v135;
      v139 = v134[0];
      v140 = v134[1];
      v141 = v135;
      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
      v68 = v137;
    }

    while (v137);
  }

  else
  {
    v69 = 0;
  }

  (*(v122 + 8))(v28, v26);
  if (v69)
  {
    v70 = v133;
    v71 = v118;
    v72 = *(v118 + v133[9]);
    v122 = v45;
    v74 = v125;
    v73 = v126;
    v75 = *(v125 + 16);
    v132 = v21;
    v76 = v124;
    v75(v124, v72, v126);
    v77 = v108;
    AttributedString.Runs.Validated.tailRange.getter(v70, v108);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v78 = v127;
    AttributedString.subscript.getter();
    outlined destroy of Range<AttributedString.Index>?(v77, type metadata accessor for Range<AttributedString.Index>);
    (*(v74 + 8))(v76, v73);
    v79 = v130;
    AttributedSubstring.runs.getter();
    (*(v128 + 8))(v78, v129);
    static AttributedStringKey.run(at:in:)(v131);
    v80 = v119;
    v81 = v79;
    v45 = v122;
    v82 = v117;
    v21 = v132;
    v83 = v116;
    v84 = v120;
    (*(v119 + 8))(v81, v120);
  }

  else
  {
    v71 = v118;
    AttributedString.Runs.Validated.tailRange.getter(v133, v21);
    v84 = v120;
    v80 = v119;
    v82 = v117;
    v83 = v116;
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v21, v83, type metadata accessor for Range<AttributedString.Index>);
  if (*(v44 + 16))
  {
    v85 = v83;
    v86 = v124;
    v87 = v125;
    v88 = v126;
    (*(v125 + 16))(v124, *(v71 + v133[9]), v126);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v89 = v127;
    AttributedString.subscript.getter();
    (*(v87 + 8))(v86, v88);
    v90 = v130;
    AttributedSubstring.runs.getter();
    (*(v128 + 8))(v89, v129);
    v91 = v109;
    AttributedString.Runs.subscript.getter();

    (*(v80 + 8))(v90, v84);
    v92 = v111;
    AttributedString.Runs.NSAttributesSlice.subscript.getter();
    (*(v113 + 8))(v92, v114);
    (*(v110 + 8))(v91, v112);
    outlined destroy of Range<AttributedString.Index>?(v85, type metadata accessor for Range<AttributedString.Index>);
  }

  else
  {

    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v83, v82, type metadata accessor for Range<AttributedString.Index>);
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v82, v121, type metadata accessor for Range<AttributedString.Index>);
  $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v45, "AttributedString.Runs.Validated.run");

  return result;
}

uint64_t specialized getter of runMightBeDirty #1 in AttributedString.Runs.Validated.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v15 = type metadata accessor for AttributedString.Runs.Validated(0, a3, a4, v14);
  outlined init with copy of Range<AttributedString.Index>(a1 + *(v15 + 60), v13, type metadata accessor for Range<AttributedString.Index>);
  swift_beginAccess();
  outlined init with copy of Range<AttributedString.Index>(a2, v10, type metadata accessor for Range<AttributedString.Index>);
  type metadata accessor for AttributedString.Index();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v16 = dispatch thunk of static Comparable.>= infix(_:_:)() ^ 1;
  }

  else
  {
    v16 = 1;
  }

  outlined destroy of Range<AttributedString.Index>?(v10, type metadata accessor for Range<AttributedString.Index>);
  outlined destroy of Range<AttributedString.Index>?(v13, type metadata accessor for Range<AttributedString.Index>);
  return v16 & 1;
}

uint64_t specialized getter of runMightBeBrokenByDirt #1 in AttributedString.Runs.Validated.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributedString.Index();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v16 = type metadata accessor for AttributedString.Runs.Validated(0, a3, a4, v15);
  v17 = a1 + *(v16 + 60);
  if (*(a1 + *(v16 + 48)) == 1)
  {
    v18 = *(v9 + 16);
    v18(v14, v17, v8);
    swift_beginAccess();
    v18(v11, a2, v8);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v19 = dispatch thunk of static Comparable.>= infix(_:_:)();
  }

  else
  {
    type metadata accessor for Range<AttributedString.Index>(0);
    v21 = v20;
    v22 = *(v9 + 16);
    v22(v14, v17 + *(v20 + 36), v8);
    swift_beginAccess();
    v22(v11, a2 + *(v21 + 36), v8);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v19 = dispatch thunk of static Comparable.<= infix(_:_:)();
  }

  v23 = v19;
  v24 = *(v9 + 8);
  v24(v11, v8);
  v24(v14, v8);
  return v23 & 1;
}

uint64_t AttributedString.Runs.Validated.index(following:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v35 = a1;
  v5 = type metadata accessor for AttributedString.UnicodeScalarView();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  if (*(v3 + a2[12]) == 1)
  {
    v21 = a2[11];
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v29 = v21;
    v30 = v3;
    if (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      v22 = a2[9];
      v23 = v31;
      (*(v31 + 16))(v10, *(v30 + v22), v8);
      AttributedString.unicodeScalars.getter();
      (*(v23 + 8))(v10, v8);
      AttributedString.UnicodeScalarView.index(before:)();
      (*(v32 + 8))(v7, v33);
      v24 = v29;
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        (*(v12 + 8))(v14, v11);
        (*(v12 + 16))(v20, v30 + v24, v11);
      }

      else
      {
        (*(v12 + 32))(v20, v14, v11);
      }

      (*(v12 + 56))(v20, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v20, 1, 1, v11);
    }
  }

  else
  {
    type metadata accessor for Range<AttributedString.Index>(0);
    v26 = *(v25 + 36);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      (*(v12 + 56))(v17, 1, 1, v11);
    }

    else
    {
      (*(v12 + 16))(v17, v35 + v26, v11);
      (*(v12 + 56))(v17, 0, 1, v11);
    }

    v20 = v17;
  }

  return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v20, v34, type metadata accessor for AttributedString.Index?);
}

uint64_t static AttributedStringKey.isEqual(between:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v34 - v7;
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v34 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  AttributeContainer.subscript.getter();
  v37 = a4;
  v38 = a3;
  AttributeContainer.subscript.getter();
  v40 = TupleTypeMetadata2;
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = *(v12 + 16);
  v22(v11, v20, v8);
  v22(&v11[v21], v17, v8);
  v41 = v6;
  v23 = *(v6 + 48);
  if (v23(v11, 1, AssociatedTypeWitness) != 1)
  {
    v35 = v20;
    v22(v42, v11, v8);
    v26 = AssociatedTypeWitness;
    if (v23(&v11[v21], 1, AssociatedTypeWitness) != 1)
    {
      v28 = v41;
      v29 = v36;
      (*(v41 + 32))(v36, &v11[v21], v26);
      swift_getAssociatedConformanceWitness();
      v30 = v42;
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v28 + 8);
      v31(v29, v26);
      v32 = *(v12 + 8);
      v32(v17, v8);
      v32(v35, v8);
      v31(v30, v26);
      v32(v11, v8);
      return v25 & 1;
    }

    v27 = *(v12 + 8);
    v27(v17, v8);
    v27(v35, v8);
    (*(v41 + 8))(v42, v26);
    goto LABEL_6;
  }

  v24 = *(v12 + 8);
  v24(v17, v8);
  v24(v20, v8);
  if (v23(&v11[v21], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v11, v40);
    v25 = 0;
    return v25 & 1;
  }

  v24(v11, v8);
  v25 = 1;
  return v25 & 1;
}

uint64_t static AttributedStringKey.copy<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  AttributeContainer.subscript.getter();
  return dispatch thunk of AttributedStringProtocol.subscript.setter();
}

uint64_t static AttributedStringKey.copy(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4 - 8);
  AttributeContainer.subscript.getter();
  return AttributeContainer.subscript.setter();
}

void $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OSSignposter?(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v28 = v5;
    v29 = v9;
    v16 = one-time initialization token for signposter;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v13, signposter);
    outlined init with copy of Range<AttributedString.Index>(v17, v15, type metadata accessor for OSSignposter?);
    v18 = type metadata accessor for OSSignposter();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {

      outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for OSSignposter?);
    }

    else
    {
      v27 = a2;
      v20 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v26 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v21 = v28;
        if ((*(v28 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
        {
          v22 = "[Error] Interval already ended";
        }

        else
        {
          (*(v21 + 8))(v7, v4);
          v22 = "";
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18BD4A000, v20, v26, v24, v27, v22, v23, 2u);
        MEMORY[0x18D0110E0](v23, -1, -1);
      }

      (*(v29 + 8))(v11, v8);
      (*(v19 + 8))(v15, v18);
    }
  }
}

double closure #2 in AttributedString.Runs.Validated.run(of:at:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v45 = a3;
  v5 = type metadata accessor for AttributedString.AttributeRunBoundaries();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)(0, v7);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.AttributeRunBoundaries?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = *a1;
  v42 = a1[1];
  v43 = v22;
  v44 = a1[2];
  v23 = a2[1];
  v24 = *a2;
  v40 = v23;
  v41 = v24;
  dispatch thunk of static AttributedStringKey.runBoundaries.getter();
  (*(v6 + 104))(v18, *MEMORY[0x1E6968710], v5);
  (*(v6 + 56))(v18, 0, 1, v5);
  v25 = *(v10 + 56);
  outlined init with copy of Range<AttributedString.Index>(v21, v12, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  outlined init with copy of Range<AttributedString.Index>(v18, &v12[v25], type metadata accessor for AttributedString.AttributeRunBoundaries?);
  v26 = *(v6 + 48);
  if (v26(v12, 1, v5) != 1)
  {
    outlined init with copy of Range<AttributedString.Index>(v12, v15, type metadata accessor for AttributedString.AttributeRunBoundaries?);
    if (v26(&v12[v25], 1, v5) != 1)
    {
      v31 = &v12[v25];
      v32 = v39;
      (*(v6 + 32))(v39, v31, v5);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries, MEMORY[0x1E6968718], MEMORY[0x1E6968720]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v6 + 8);
      v34(v32, v5);
      outlined destroy of Range<AttributedString.Index>?(v18, type metadata accessor for AttributedString.AttributeRunBoundaries?);
      outlined destroy of Range<AttributedString.Index>?(v21, type metadata accessor for AttributedString.AttributeRunBoundaries?);
      v34(v15, v5);
      outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for AttributedString.AttributeRunBoundaries?);
      if (v33)
      {
        goto LABEL_9;
      }

LABEL_7:
      v27 = v45;
      v28 = v42;
      *v45 = v43;
      v27[1] = v28;
      _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSAttributedStringKey>, type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18CD63400;
      *(inited + 32) = static AttributedStringKey.nsAttributedStringKey.getter();
      v46 = v44;

      specialized Array.append<A>(contentsOf:)(inited);
      v27[2] = v46;
      return result;
    }

    outlined destroy of Range<AttributedString.Index>?(v18, type metadata accessor for AttributedString.AttributeRunBoundaries?);
    outlined destroy of Range<AttributedString.Index>?(v21, type metadata accessor for AttributedString.AttributeRunBoundaries?);
    (*(v6 + 8))(v15, v5);
LABEL_6:
    outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    goto LABEL_7;
  }

  outlined destroy of Range<AttributedString.Index>?(v18, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  outlined destroy of Range<AttributedString.Index>?(v21, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  if (v26(&v12[v25], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for AttributedString.AttributeRunBoundaries?);
LABEL_9:
  v35 = v45;
  if (v43)
  {
    *v45 = v43;
    v36 = v42;
  }

  else
  {
    v36 = v40;
    *v45 = v41;
  }

  v37 = v44;
  v35[1] = v36;
  v35[2] = v37;

  return result;
}

uint64_t static AttributedStringKey.run(at:in:)(uint64_t a1)
{
  v13[1] = a1;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttributedString.Runs.AttributesSlice1();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  AttributedString.Runs.subscript.getter();
  AttributedString.Runs.AttributesSlice1.subscript.getter();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t NSSwiftMutableAttributedString.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

uint64_t NSSwiftMutableAttributedString.content.setter(char *a1)
{
  v2 = v1;
  v70 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v69 = *MEMORY[0x1E69E7D40];
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v53 - v8;
  v9 = type metadata accessor for AttributedString.Index();
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  type metadata accessor for Range<AttributedString.Index>(0);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  NSSwiftMutableAttributedString.beginEditing()();
  v23 = *((*v4 & *v1) + 0x60);
  v60 = *(v18 + 16);
  v61 = v18 + 16;
  v60(v22, v1 + v23, v17);
  v58 = v18;
  v24 = *(v18 + 24);
  v68 = a1;
  v66 = v17;
  v24(v1 + v23, a1, v17);
  NSSwiftMutableAttributedString.invalidateStringCache()();
  v25 = [v1 string];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  swift_beginAccess();
  (*(*(*((v69 & v70) + 0x58) + 8) + 56))(v26, v28, *((v69 & v70) + 0x50));
  swift_endAccess();

  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  v29 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  v69 = v14;
  v70 = v11;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v53 = v2;
  v31 = v72;
  v32 = *(v72 + 32);
  v59 = v29;
  v33 = v64;
  v32(v64, v69, v9);
  v34 = v67;
  v32((v33 + *(v67 + 48)), v70, v9);
  v35 = v63;
  outlined init with copy of Range<AttributedString.Index>(v33, v63, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v36 = *(v34 + 48);
  v32(v71, v35, v9);
  v37 = *(v31 + 8);
  v37(v35 + v36, v9);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v33, v35, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v32(&v71[*(v65 + 36)], v35 + *(v34 + 48), v9);
  v72 = v31 + 8;
  v57 = v37;
  v37(v35, v9);
  v54 = v22;
  v60(v62, v22, v66);
  v38 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v56 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v39 = _NSRange.init<A, B>(_:in:)();
  v55 = v40;
  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v59 = v39;
  v41 = v64;
  v32(v64, v69, v9);
  v42 = v67;
  v32((v41 + *(v67 + 48)), v70, v9);
  v70 = v38;
  v43 = v63;
  outlined init with copy of Range<AttributedString.Index>(v41, v63, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v44 = *(v42 + 48);
  v45 = v71;
  v32(v71, v43, v9);
  v46 = v57;
  v57(v43 + v44, v9);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v41, v43, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v32(&v45[*(v65 + 36)], v43 + *(v42 + 48), v9);
  v46(v43, v9);
  v47 = v55;
  v48 = v66;
  v60(v62, v68, v66);
  result = _NSRange.init<A, B>(_:in:)();
  v50 = v49 - v47;
  if (!__OFSUB__(v49, v47))
  {
    v51.location = v59;
    v51.length = v47;
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(3uLL, v51, v50);
    v52 = *(v58 + 8);
    v52(v54, v48);
    NSSwiftMutableAttributedString.endEditing()();
    return (v52)(v68, v48);
  }

LABEL_7:
  __break(1u);
  return result;
}

void NSSwiftMutableAttributedString.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v37 = *v4;
  v7 = MEMORY[0x1E69E7D40];
  v36 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.beginEditing()();
  v35 = type metadata accessor for Range<AttributedString.Index>;
  v27 = a1;
  outlined init with copy of Range<AttributedString.Index>(a1, v14, type metadata accessor for Range<AttributedString.Index>);
  v15 = *((*v7 & *v4) + 0x60);
  v34 = *(v9 + 16);
  v34(v11, &v4[v15], v8);
  v29 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v26 = _NSRange.init<A, B>(_:in:)();
  v28 = v16;
  AttributedString.replaceSubrange<A>(_:with:)();
  NSSwiftMutableAttributedString.invalidateStringCache()();
  v17 = [v4 string];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  swift_beginAccess();
  (*(*(*((v36 & v37) + 0x58) + 8) + 56))(v18, v20, *((v36 & v37) + 0x50));
  swift_endAccess();

  outlined init with copy of Range<AttributedString.Index>(v27, v14, v35);
  v34(v11, &v5[v15], v8);
  _NSRange.init<A, B>(_:in:)();
  v21 = v28;
  v23 = v22 - v28;
  if (__OFSUB__(v22, v28))
  {
    __break(1u);
  }

  else
  {
    v24 = v26;
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(3uLL, *(&v21 - 1), v23);
    NSSwiftMutableAttributedString.endEditing()();
  }
}

uint64_t NSSwiftMutableAttributedString.update(with:)(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v12 = *a1;
  swift_beginAccess();
  v7 = (*(*(*((v6 & v5) + 0x58) + 8) + 48))(&v12, *((v6 & v5) + 0x50));
  swift_endAccess();
  if (v7)
  {
    v8 = NSAttributedString.range.getter();
    v11.receiver = v2;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel_edited_range_changeInLength_, 1, v8, v9, 0);
  }

  return v7 & 1;
}

uint64_t NSSwiftMutableAttributedString.clean(_:)(uint64_t a1)
{
  v18 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v8 = *((v3 & v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for TextAttributeValidationRecord(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  v16 = *((v3 & v2) + 0x68);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v16], v4);
  (*(v8 + 40))(v18, v4, v8);
  (*(v5 + 8))(v7, v4);
  return (*(v13 + 8))(v15, v12);
}

void *NSSwiftMutableAttributedString.runs(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = closure #1 in NSSwiftMutableAttributedString.runs(for:in:)(&v3[*((*MEMORY[0x1E69E7D40] & *v3) + 0x60)], v3, a1, a2, &v6);
  *a3 = v6;
  return result;
}

uint64_t closure #1 in NSSwiftMutableAttributedString.runs(for:in:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a4;
  v20 = a5;
  v8 = *a2;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - v12;
  v14 = *((v9 & v8) + 0x68);
  swift_beginAccess();
  (*(v11 + 16))(v13, &a2[v14], v10);
  (*(*((v9 & v8) + 0x58) + 32))(v21, a3, v10);
  (*(v11 + 8))(v13, v10);
  v15 = v22;
  v16 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v17 = ValidatingTextAttributeDefinition.runs(fixing:in:options:)(a1, v19, 0, v15, v16);
  *v20 = v17;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t ValidatingTextAttributeDefinition.runs(fixing:in:options:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a2;
  v24 = a1;
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString.Runs.Validated(0, a4, a5, v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - v20;
  (*(v13 + 16))(v16, v6, a4, v19);
  outlined init with copy of Range<AttributedString.Index>(v23, v12, type metadata accessor for Range<AttributedString.Index>);
  AttributedString.Runs.Validated.init(definition:base:range:reversed:longestEffectiveRangeNotRequired:)(v16, v24, v12, (a3 >> 1) & 1, (a3 >> 20) & 1, a4, a5, v21);
  swift_getWitnessTable(protocol conformance descriptor for AttributedString.Runs.Validated<A>, v18);
  return AnySequence.init<A>(_:)();
}

uint64_t protocol witness for NSSwiftAttributedStringProtocol.init(wrapping:resolver:) in conformance NSSwiftMutableAttributedString<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = specialized NSSwiftMutableAttributedString.__allocating_init(wrapping:resolver:)(a1, a2);
  result = (*(*(*(a3 + 80) - 8) + 8))(a2);
  *a4 = v7;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSSwiftMutableAttributedString<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  type metadata accessor for OSSignposter?(0);
  v14 = v13;
  __swift_allocate_value_buffer(v13, signposter);
  v15 = __swift_project_value_buffer(v14, signposter);
  static Log.textEditor.getter();
  outlined init with copy of Range<AttributedString.Index>(v12, v9, type metadata accessor for Logger?);
  v16 = 1;
  if ((*(v1 + 48))(v9, 1, v0) != 1)
  {
    (*(v1 + 32))(v6, v9, v0);
    (*(v1 + 16))(v3, v6, v0);
    OSSignposter.init(logger:)();
    (*(v1 + 8))(v6, v0);
    v16 = 0;
  }

  v17 = type metadata accessor for OSSignposter();
  (*(*(v17 - 8) + 56))(v15, v16, 1, v17);
  return outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for Logger?);
}

void type metadata accessor for PartialRangeFrom<AttributedString.Index>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = type metadata accessor for PartialRangeFrom();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PartialRangeFrom<AttributedString.Index>);
    }
  }
}

void type metadata accessor for PartialRangeUpTo<AttributedString.Index>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PartialRangeUpTo<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = type metadata accessor for PartialRangeUpTo();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PartialRangeUpTo<AttributedString.Index>);
    }
  }
}

uint64_t outlined init with copy of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized closure #2 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for AttributedString.Runs();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString.Index();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = a1[1];
  type metadata accessor for AttributedSubstring();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
  dispatch thunk of AttributedStringProtocol.startIndex.getter();
  dispatch thunk of AttributedStringProtocol.runs.getter();
  static AttributedStringKey.run(at:in:)(v9);
  (*(v18 + 8))(v6, v19);
  v14 = v17;
  (*(v7 + 8))(v9, v17);
  (*(v7 + 16))(v20, &v13[*(v11 + 44)], v14);
  return outlined destroy of Range<AttributedString.Index>?(v13, type metadata accessor for Range<AttributedString.Index>);
}

uint64_t specialized closure #2 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = type metadata accessor for AttributedString.Runs();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedSubstring();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  static AttributedStringKey.run(at:in:)(a2);
  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for AttributedString.Index();
  (*(*(v12 - 8) + 16))(v15, v11, v12);
  return outlined destroy of Range<AttributedString.Index>?(v11, type metadata accessor for Range<AttributedString.Index>);
}

BOOL partial apply for closure #1 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)(uint64_t *a1)
{
  return (static AttributedStringKey.isEqual(between:and:)(*(v1 + 16), *(v1 + 24), *a1, a1[1]) & 1) == 0;
}

{
  return partial apply for closure #1 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)(a1);
}

void type metadata accessor for DefaultIndices<AttributedString.UnicodeScalarView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DefaultIndices<AttributedString.UnicodeScalarView>)
  {
    type metadata accessor for AttributedString.UnicodeScalarView();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0], MEMORY[0x1E69686D0]);
    v1 = type metadata accessor for DefaultIndices();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DefaultIndices<AttributedString.UnicodeScalarView>);
    }
  }
}

void type metadata accessor for Slice<AttributedString.UnicodeScalarView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Slice<AttributedString.UnicodeScalarView>)
  {
    type metadata accessor for AttributedString.UnicodeScalarView();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0], MEMORY[0x1E69686D0]);
    v1 = type metadata accessor for Slice();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Slice<AttributedString.UnicodeScalarView>);
    }
  }
}

uint64_t outlined assign with take of AttributedString.Index?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributedString.Index?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id specialized NSSwiftMutableAttributedString.init(value:resolver:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x70)] = MEMORY[0x1E69E7CC0];
  v9 = &v2[*((*v7 & *v2) + 0x78)];
  *v9 = 0;
  *(v9 + 1) = 0;
  AttributedString.CStringCache.init()();
  AttributedString.UTF16Cache.init()();
  *&v2[*((*v7 & *v2) + 0x90)] = 0;
  *&v2[*((*v7 & *v2) + 0x98)] = 0;
  v10 = *((*v7 & *v2) + 0x60);
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v2[v10], a1, v11);
  (*(*(*((v8 & v6) + 0x50) - 8) + 16))(&v2[*((*v7 & *v2) + 0x68)], a2);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a1, v11);
  return v13;
}

void *specialized NSSwiftMutableAttributedString.__allocating_init(wrapping:resolver:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = objc_allocWithZone(v3);
  v12 = specialized NSSwiftMutableAttributedString.init(value:resolver:)(v10, a2);
  v13 = [v12 string];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  swift_beginAccess();
  (*(*(*(v3 + 11) + 8) + 56))(v14, v16, *(v3 + 10));
  swift_endAccess();

  (*(v7 + 8))(a1, v6);
  return v12;
}

void specialized NSSwiftMutableAttributedString.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + *((*v1 & *v0) + 0x78));
  *v2 = 0;
  v2[1] = 0;
  AttributedString.CStringCache.init()();
  AttributedString.UTF16Cache.init()();
  *(v0 + *((*v1 & *v0) + 0x90)) = 0;
  *(v0 + *((*v1 & *v0) + 0x98)) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for IndexingIterator<AttributedString.UTF16View>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF16View>)
  {
    type metadata accessor for AttributedString.UTF16View();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810], MEMORY[0x1E6968818]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF16View>);
    }
  }
}

void type metadata accessor for (NSAttributedStringKey, Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NSAttributedStringKey, Any))
  {
    type metadata accessor for NSAttributedStringKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSAttributedStringKey, Any));
    }
  }
}

void type metadata accessor for (value: Any?, range: _NSRange)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: Any?, range: _NSRange))
  {
    type metadata accessor for PPTTestCase?(255, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    type metadata accessor for _NSRange(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: Any?, range: _NSRange));
    }
  }
}

void type metadata accessor for ClosedRange<AttributedString.Index>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<AttributedString.Index>);
    }
  }
}

uint64_t partial apply for closure #2 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  result = outlined assign with copy of Any?(a1, v8);
  *v9 = a2;
  v9[1] = a3;
  *a4 = 1;
  return result;
}

void partial apply for closure #3 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4[2];
  v6 = *(v5 + 8);
  v7 = __OFADD__(v6, a3);
  v8 = v6 + a3;
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v4[3];
  v9 = v4[4];
  v7 = __OFSUB__(v10, v9);
  v11 = v10 - v9;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = __OFSUB__(v8, v11);
  v12 = v8 - v11;
  if (!v7)
  {
    *(v5 + 8) = v12;
    *a4 = 1;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t outlined assign with copy of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata completion function for AttributedString.Runs.Validated(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Range<AttributedString.Index>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttributedString.Index?(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedString.Runs.Validated(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for AttributedString.Index();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = v11 + v10;
  v13 = ((v11 + v10) & ~v10) + v11;
  if (*(v9 + 84))
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = v11 + 1;
  }

  v15 = v10 | *(v6 + 80) & 0xF8;
  if (v15 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v14 + v10 + ((v10 + 2 + v13 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10)) & ~v10)) & ~v10) + v13 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    v19 = v18 + (((v15 | 7) + 16) & ~(v15 | 7));
  }

  else
  {
    __n = v14;
    v36 = v10 + 2;
    v37 = v14 + v10;
    v20 = ~v10;
    v21 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v22 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v22 += 15;
    v24 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v24 = v23;
    v24 += 15;
    v25 = (v22 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v24 & 0xFFFFFFFFFFFFFFF8) = *(v22 & 0xFFFFFFFFFFFFFFF8);
    v26 = (v24 & 0xFFFFFFFFFFFFFFF8) + 8;
    v27 = *(v9 + 16);

    v27(v26, v25, v21);
    v27((v12 + v26) & v20, (v12 + v25) & v20, v21);
    v28 = (v13 + v26);
    v29 = v13 + v25;
    *v28 = *(v13 + v25);
    v28[1] = *(v13 + v25 + 1);
    v30 = ((v36 + v13 + v26) & v20);
    v31 = ((v36 + v29) & v20);
    v32 = v21;
    if ((*(v9 + 48))(v31, 1, v21))
    {
      memcpy(v30, v31, __n);
    }

    else
    {
      v27(v30, v31, v21);
      (*(v9 + 56))(v30, 0, 1, v21);
    }

    v33 = (v30 + v37) & v20;
    v27(v33, (v31 + v37) & v20, v32);
    v27((v12 + v33) & v20, (v12 + ((v31 + v37) & v20)) & v20, v32);
    return a1;
  }

  return v19;
}

uint64_t destroy for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for AttributedString.Index();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = (v4 + v8 + 8) & ~v8;
  v16 = *(v6 + 8);
  v16(v10, v5);
  v11 = *(v6 + 64) + v8;
  v16((v11 + v10) & ~v8, v5);
  v12 = (v11 + v10 + (v11 & ~v8) + 2) & ~v8;
  if (!(*(v7 + 48))(v12, 1, v5))
  {
    v16(v12, v5);
  }

  v13 = v11 + v12;
  if (!*(v7 + 84))
  {
    ++v13;
  }

  v14 = v13 & v9;
  v16(v13 & v9, v5);

  return (v16)((v11 + v14) & v9, v5);
}

uint64_t initializeWithCopy for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v34 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v33 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 16);

  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v32 = v17;
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v19 = v11;
  v20 = ((v18 + v14) & ~v14) + v18;
  v21 = (v20 + v15);
  v22 = (v20 + v16);
  *v21 = *v22;
  v21[1] = v22[1];
  v23 = (&v21[v14 + 2] & ~v14);
  v24 = (&v22[v14 + 2] & ~v14);
  if ((*(v13 + 48))(v24, 1, v19))
  {
    v25 = *(v13 + 84);
    if (v25)
    {
      v26 = v18;
    }

    else
    {
      v26 = v18 + 1;
    }

    memcpy(v23, v24, v26);
    v27 = v32;
  }

  else
  {
    v27 = v32;
    v32(v23, v24, v19);
    (*(v13 + 56))(v23, 0, 1, v19);
    v25 = *(v13 + 84);
  }

  if (v25)
  {
    v28 = v18;
  }

  else
  {
    v28 = v18 + 1;
  }

  v29 = (v23 + v14 + v28) & v33;
  v30 = (v24 + v14 + v28) & v33;
  v27(v29, v30, v19);
  v27((v18 + v14 + v29) & v33, (v18 + v14 + v30) & v33, v19);
  return v34;
}

uint64_t assignWithCopy for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v38 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v37 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 24);
  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v19 = v18 + v14;
  v36 = v17;
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v35 = v18;
  v20 = ((v18 + v14) & ~v14) + v18;
  v21 = (v20 + v15);
  v22 = (v20 + v16);
  *v21 = *v22;
  v21[1] = v22[1];
  v23 = (&v21[v14 + 2] & ~v14);
  v24 = (&v22[v14 + 2] & ~v14);
  v25 = *(v13 + 48);
  LODWORD(v16) = v25(v23, 1, v11);
  v26 = v25(v24, 1, v11);
  if (v16)
  {
    if (!v26)
    {
      (*(v13 + 16))(v23, v24, v11);
      (*(v13 + 56))(v23, 0, 1, v11);
      v28 = v35;
      v30 = v36;
      goto LABEL_12;
    }

    v27 = *(v13 + 84);
  }

  else
  {
    if (!v26)
    {
      v30 = v17;
      v17(v23, v24, v11);
      v28 = v35;
      goto LABEL_12;
    }

    (*(v13 + 8))(v23, v11);
    v27 = *(v13 + 84);
  }

  v28 = v35;
  if (v27)
  {
    v29 = v35;
  }

  else
  {
    v29 = v35 + 1;
  }

  memcpy(v23, v24, v29);
  v30 = v36;
LABEL_12:
  if (*(v13 + 84))
  {
    v31 = v28;
  }

  else
  {
    v31 = v28 + 1;
  }

  v32 = (v23 + v14 + v31) & v37;
  v33 = (v24 + v14 + v31) & v37;
  v30(v32, v33, v11);
  v30((v19 + v32) & v37, (v19 + v33) & v37, v11);
  return v38;
}

uint64_t initializeWithTake for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v31 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v30 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 32);
  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v19 = ((v18 + v14) & ~v14) + v18;
  v20 = (v19 + v15);
  v21 = (v19 + v16);
  *v20 = *v21;
  v20[1] = v21[1];
  v22 = (&v20[v14 + 2] & ~v14);
  v23 = (&v21[v14 + 2] & ~v14);
  if ((*(v13 + 48))(v23, 1, v11))
  {
    v24 = *(v13 + 84);
    if (v24)
    {
      v25 = v18;
    }

    else
    {
      v25 = v18 + 1;
    }

    memcpy(v22, v23, v25);
  }

  else
  {
    v17(v22, v23, v11);
    (*(v13 + 56))(v22, 0, 1, v11);
    v24 = *(v13 + 84);
  }

  if (v24)
  {
    v26 = v18;
  }

  else
  {
    v26 = v18 + 1;
  }

  v27 = (v22 + v14 + v26) & v30;
  v28 = (v23 + v14 + v26) & v30;
  v17(v27, v28, v11);
  v17((v18 + v14 + v27) & v30, (v18 + v14 + v28) & v30, v11);
  return v31;
}

uint64_t assignWithTake for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v38 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v37 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 40);
  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v19 = v18 + v14;
  v36 = v17;
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v35 = v18;
  v20 = ((v18 + v14) & ~v14) + v18;
  v21 = (v20 + v15);
  v22 = (v20 + v16);
  *v21 = *v22;
  v21[1] = v22[1];
  v23 = (&v21[v14 + 2] & ~v14);
  v24 = (&v22[v14 + 2] & ~v14);
  v25 = *(v13 + 48);
  LODWORD(v16) = v25(v23, 1, v11);
  v26 = v25(v24, 1, v11);
  if (v16)
  {
    if (!v26)
    {
      (*(v13 + 32))(v23, v24, v11);
      (*(v13 + 56))(v23, 0, 1, v11);
      v28 = v35;
      v30 = v36;
      goto LABEL_12;
    }

    v27 = *(v13 + 84);
  }

  else
  {
    if (!v26)
    {
      v30 = v17;
      v17(v23, v24, v11);
      v28 = v35;
      goto LABEL_12;
    }

    (*(v13 + 8))(v23, v11);
    v27 = *(v13 + 84);
  }

  v28 = v35;
  if (v27)
  {
    v29 = v35;
  }

  else
  {
    v29 = v35 + 1;
  }

  memcpy(v23, v24, v29);
  v30 = v36;
LABEL_12:
  if (*(v13 + 84))
  {
    v31 = v28;
  }

  else
  {
    v31 = v28 + 1;
  }

  v32 = (v23 + v14 + v31) & v37;
  v33 = (v24 + v14 + v31) & v37;
  v30(v32, v33, v11);
  v30((v19 + v32) & v37, (v19 + v33) & v37, v11);
  return v38;
}

uint64_t getEnumTagSinglePayload for AttributedString.Runs.Validated(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v36 = *(v5 - 8);
  v6 = *(v36 + 84);
  v7 = type metadata accessor for AttributedString.Index();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v36 + 64);
  if (v6 <= v9)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v6;
  }

  v12 = v9 - 1;
  if (!v9)
  {
    v12 = 0;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v14 + v13;
  if (v9)
  {
    v18 = v14 + v13;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v13 + 8;
  v20 = (v17 & ~v13) + v14;
  v21 = v13 + v20 + 2;
  if (a2 <= v16)
  {
    goto LABEL_40;
  }

  v22 = ((v18 + ((v21 + ((v19 + ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v13) + v20;
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_20;
  }

  v25 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v25))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_27;
    }

LABEL_40:
    if (v6 == v16)
    {
      v29 = *(v36 + 48);

      return v29(a1, v6, v5);
    }

    v31 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v15 & 0x80000000) == 0)
    {
      v32 = *v31;
      if (*v31 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }

    v33 = (v31 + v19) & ~v13;
    if (v9 == v16)
    {
      v34 = *(v8 + 48);

      return v34(v33);
    }

    if (v9 >= 2)
    {
      v35 = (*(v8 + 48))((v21 + v33) & ~v13);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

  if (v25 < 2)
  {
    goto LABEL_40;
  }

LABEL_20:
  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_40;
  }

LABEL_27:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v16 + (v28 | v26) + 1;
}

void storeEnumTagSinglePayload for AttributedString.Runs.Validated(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v36 = *(v7 - 8);
  v8 = *(v36 + 84);
  v9 = 0;
  v10 = *(type metadata accessor for AttributedString.Index() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = *(v36 + 64);
  if (v8 <= v12)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  v15 = v12 - 1;
  if (!v12)
  {
    v15 = 0;
  }

  if (v14 > v15)
  {
    v15 = v14;
  }

  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v15 <= v12)
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v15;
  }

  v19 = v16 + 8;
  v20 = v17 + v16;
  v21 = ((v17 + v16) & ~v16) + v17;
  v22 = v16 + v21 + 2;
  if (!v12)
  {
    ++v20;
  }

  v23 = ((v20 + ((v22 + ((v16 + 8 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16)) & ~v16) + v21;
  if (a3 <= v18)
  {
    goto LABEL_29;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v9 = 4;
      if (v18 < a2)
      {
        goto LABEL_30;
      }

LABEL_18:
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          *&a1[v23] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *&a1[v23] = 0;
      }

      else if (v9)
      {
        a1[v23] = 0;
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v8 == v18)
        {
          v28 = *(v36 + 56);

          v28(a1, a2, v8, v7);
        }

        else
        {
          v30 = (((&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) != 0)
          {
            v32 = ~v16;
            v33 = (v30 + v19) & v32;
            v34 = *(v11 + 56);
            if (v12 == v18)
            {
              v35 = a2;
            }

            else
            {
              v33 = (v22 + v33) & v32;
              v35 = (a2 + 1);
            }

            v34(v33, v35);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v31 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v31 = (a2 - 1);
            }

            *v30 = v31;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_37;
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
      v9 = v25;
    }

    else
    {
      v9 = 0;
    }

LABEL_29:
    if (v18 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v9 = 1;
  if (v18 >= a2)
  {
    goto LABEL_18;
  }

LABEL_30:
  v26 = ~v18 + a2;
  if (v23 < 4)
  {
    v27 = (v26 >> (8 * v23)) + 1;
    if (v23)
    {
      v29 = v26 & ~(-1 << (8 * v23));
      bzero(a1, v23);
      if (v23 != 3)
      {
        if (v23 == 2)
        {
          *a1 = v29;
          if (v9 <= 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *a1 = v26;
          if (v9 <= 1)
          {
            goto LABEL_58;
          }
        }

LABEL_32:
        if (v9 == 2)
        {
          *&a1[v23] = v27;
        }

        else
        {
          *&a1[v23] = v27;
        }

        return;
      }

      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    if (v9 <= 1)
    {
      goto LABEL_58;
    }

    goto LABEL_32;
  }

  bzero(a1, v23);
  *a1 = v26;
  v27 = 1;
  if (v9 > 1)
  {
    goto LABEL_32;
  }

LABEL_58:
  if (v9)
  {
    a1[v23] = v27;
  }
}

void type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?))
  {
    type metadata accessor for AttributedString.AttributeRunBoundaries?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    }
  }
}

uint64_t outlined destroy of Range<AttributedString.Index>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DynamicViewContent.onMove(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = a2;
    v8 = swift_allocObject();
    a2 = v7;
    v9 = v8;
    a1 = v6;
    *(v9 + 16) = v6;
    *(v9 + 24) = a2;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13[0] = v10;
  v13[1] = v9;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveTraitKey>, &type metadata for OnMoveTraitKey, &protocol witness table for OnMoveTraitKey);
  MEMORY[0x18D00A570](v13, a3, v11, *(a4 + 8));
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10, v9);
}

uint64_t DynamicViewContent.onMove(clipBackground:perform:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a6;
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveTraitKey>, &type metadata for OnMoveTraitKey, &protocol witness table for OnMoveTraitKey);
  v11 = v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v17 = thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ()partial apply;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v28[0] = v17;
  v28[1] = v16;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  v18 = *(a5 + 8);
  MEMORY[0x18D00A570](v28, a4, v11, v18);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17, v16);
  LOBYTE(v28[0]) = v25 & 1;
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveClipBackgroundTraitKey>, &type metadata for OnMoveClipBackgroundTraitKey, &protocol witness table for OnMoveClipBackgroundTraitKey);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveTraitKey>, &type metadata for OnMoveTraitKey, &protocol witness table for OnMoveTraitKey);
  v27[0] = v18;
  v27[1] = v21;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v27);
  MEMORY[0x18D00A570](v28, v12, v20, WitnessTable);
  return (*(v13 + 8))(v15, v12);
}

Swift::Void __swiftcall MoveInteraction.move(to:)(Swift::Int to)
{
  v3 = type metadata accessor for MoveInteraction(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  if (*v1)
  {
    v7 = v1[1];

    v14 = IndexSet.integerLessThan(_:)(to);
    if (v14.is_nil || (v8 = __OFADD__(to, 1), ++to, !v8))
    {
      v13[16] = 17;
      outlined init with copy of MoveInteraction(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      *(v10 + 24) = v7;
      outlined init with take of MoveInteraction(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
      *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = to;

      static Update.enqueueAction(reason:_:)();
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7);

      return;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(62);
  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD4DE40);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v11);

  MEMORY[0x18D00C9B0](0x209286E220, 0xA500000000000000);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v12);

  MEMORY[0x18D00C9B0](0xD000000000000021, 0x800000018CD4DE60);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t MoveInteraction.description.getter()
{
  _StringGuts.grow(_:)(42);

  type metadata accessor for MoveInteraction(0);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0x6E65746E6F63202CLL, 0xED0000203A444974);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0xD000000000000018;
}

_OWORD *initializeBufferWithCopyOfBuffer for MoveInteraction(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *v4 = *a2;
    v4 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (*a2)
    {
      v7 = a2[1];
      *v4 = *a2;
      *(v4 + 1) = v7;
    }

    else
    {
      *a1 = *a2;
    }

    *(v4 + 16) = *(a2 + 16);
    v9 = *(a3 + 24);
    v10 = type metadata accessor for IndexSet();
    (*(*(v10 - 8) + 16))(v4 + v9, a2 + v9, v10);
    *(v4 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return v4;
}

uint64_t initializeWithCopy for MoveInteraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
  }

  else
  {
    *a1 = *a2;
  }

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for IndexSet();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithCopy for MoveInteraction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (!*a1)
  {
    if (v6)
    {
      v8 = a2[1];
      *a1 = v6;
      *(a1 + 8) = v8;

      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = a2[1];
  *a1 = v6;
  *(a1 + 8) = v7;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for IndexSet();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t initializeWithTake for MoveInteraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithTake for MoveInteraction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (!*a1)
  {
    if (v6)
    {
      v8 = a2[1];
      *a1 = v6;
      *(a1 + 8) = v8;
      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = a2[1];
  *a1 = v6;
  *(a1 + 8) = v7;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for IndexSet();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

unint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet()
{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    v3 = type metadata accessor for IndexSet();
    result = swift_getWitnessTable(MEMORY[0x1E6969B98], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

uint64_t outlined init with copy of MoveInteraction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveInteraction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MoveInteraction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveInteraction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in MoveInteraction.move(to:)()
{
  v1 = type metadata accessor for MoveInteraction(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  return (*(v0 + 16))(v0 + *(v1 + 24) + v3, *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t static Group.create(_:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return Group.init(_content:)();
}

double destroy for SwiftUIAnySortComparator(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(a1 + 4);

  return result;
}

uint64_t initializeWithCopy for SwiftUIAnySortComparator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  (**(v5 - 8))(a1 + 32, a2 + 32);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 112);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  *(a1 + 112) = v6;

  return a1;
}

uint64_t *assignWithCopy for SwiftUIAnySortComparator(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2, a3);
  __swift_assign_boxed_opaque_existential_1(a1 + 4, a2 + 4);
  v5 = a2[10];
  a1[9] = a2[9];
  a1[10] = v5;

  v6 = a2[12];
  a1[11] = a2[11];
  a1[12] = v6;

  v7 = a2[14];
  a1[13] = a2[13];
  a1[14] = v7;

  return a1;
}

uint64_t assignWithTake for SwiftUIAnySortComparator(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  __swift_destroy_boxed_opaque_existential_1((a1 + 32));
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for SwiftUIAnySortComparator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for SwiftUIAnySortComparator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SwiftUIAnySortComparator.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v9);
  AnyHashable.init<A>(_:)();
  a4[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 32))(boxed_opaque_existential_1, a1, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  a4[9] = partial apply for closure #1 in SwiftUIAnySortComparator.init<A>(_:);
  a4[10] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  a4[11] = partial apply for closure #2 in SwiftUIAnySortComparator.init<A>(_:);
  a4[12] = v13;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  a4[13] = partial apply for closure #3 in SwiftUIAnySortComparator.init<A>(_:);
  a4[14] = result;
  return result;
}

uint64_t closure #1 in SwiftUIAnySortComparator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v26);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v25);
  swift_dynamicCast();
  outlined init with copy of Any(v23, v24);
  swift_dynamicCast();
  v19 = dispatch thunk of SortComparator.compare(_:_:)();
  v20 = *(v9 + 8);
  v20(v11, AssociatedTypeWitness);
  v20(v14, AssociatedTypeWitness);
  (*(v15 + 8))(v18, a4);
  return v19;
}

uint64_t closure #2 in SwiftUIAnySortComparator.init<A>(_:)(uint64_t *a1, char a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  outlined init with take of Any(v13, v17);
  swift_dynamicCast();
  dispatch thunk of SortComparator.order.setter();
  a1[3] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v15 = *(v7 + 16);
  v15(boxed_opaque_existential_1, v12, a3);
  v15(v9, v12, a3);
  AnyHashable.init<A>(_:)();
  return (*(v7 + 8))(v12, a3);
}

uint64_t closure #3 in SwiftUIAnySortComparator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v7, v10);
  swift_dynamicCast();
  v8 = dispatch thunk of SortComparator.order.getter();
  (*(v4 + 8))(v6, a2);
  return v8 & 1;
}

void (*protocol witness for SortComparator.order.modify in conformance SwiftUIAnySortComparator(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 40) = v1;
  *(v3 + 48) = (*(v1 + 104))(v1) & 1;
  return protocol witness for SortComparator.order.modify in conformance SwiftUIAnySortComparator;
}

void protocol witness for SortComparator.order.modify in conformance SwiftUIAnySortComparator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  (*(v2 + 88))(v2, *(*a1 + 48));
  outlined assign with take of AnyHashable(v1, v2 + 32);

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwiftUIAnySortComparator()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftUIAnySortComparator(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator()
{
  result = lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator;
  if (!lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIAnySortComparator, &type metadata for SwiftUIAnySortComparator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator;
  if (!lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIAnySortComparator, &type metadata for SwiftUIAnySortComparator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator);
  }

  return result;
}

double View.scrollContentBackground<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v19 = a5;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  swift_getKeyPath();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  v16 = v19;
  *(v15 + 4) = a4;
  *(v15 + 5) = v16;
  (*(v11 + 32))(&v15[v14], v13, v10);
  View.transformEnvironment<A>(_:transform:)();

  return result;
}

uint64_t EnvironmentValues.scrollContentBackground.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

void closure #1 in View.scrollContentBackground<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in closure #1 in View.scrollContentBackground<A>(_:), v9, MEMORY[0x1E69E73E0], MEMORY[0x1E697E0B8], v7, &v10);
  v8 = v10;

  *a1 = v8;
}

void partial apply for closure #1 in View.scrollContentBackground<A>(_:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for Optional() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  closure #1 in View.scrollContentBackground<A>(_:)(a1, v8, v3, v4, v5, v6);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>);
    }
  }
}

uint64_t assignWithCopy for ScrollContentBackground(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for ScrollContentBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollContentBackground(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ScrollContentBackground(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t implicit closure #1 in closure #1 in View.scrollContentBackground<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = AnyShapeStyle.init<A>(_:)();
  *a4 = result;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ScrollContentBackgroundModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = KeyPath;
  a1[1] = partial apply for closure #1 in ScrollContentBackgroundModifier.body(content:);
  a1[2] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScrollContentBackgroundModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<ScrollContentBackgroundModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>)
  {
    type metadata accessor for _ViewModifier_Content<ScrollContentBackgroundModifier>(255);
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ScrollContentBackgroundModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ScrollContentBackgroundModifier>)
  {
    lazy protocol witness table accessor for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<ScrollContentBackgroundModifier>);
    }
  }
}

uint64_t PlatformViewControllerRepresentableAdaptor._identifiedViewTree(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  v6 = *(v5 + 80);
  a3[3] = &type metadata for _IdentifiedViewTree;
  *a3 = swift_allocObject();
  return v6(a1, *(a2 + 16), v5);
}

void specialized View.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL closure #1 in Array<A>.sort(priorities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ToolbarStorage.Entry.id.getter(v11);
  if (*(a3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v5 & 1) != 0) && (v6 = *(*(a3 + 56) + 8 * v4), outlined destroy of ToolbarStorage.Entry.ID(v11), ToolbarStorage.Entry.id.getter(v11), *(a3 + 16)) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v8 & 1) != 0))
  {
    v9 = *(*(a3 + 56) + 8 * v7);
    outlined destroy of ToolbarStorage.Entry.ID(v11);
    return v6 < v9;
  }

  else
  {
    outlined destroy of ToolbarStorage.Entry.ID(v11);
    return 0;
  }
}

uint64_t PlatterButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (a2)
  {
    v8 = static Color.white.getter();
  }

  else
  {
    v8 = static Color.primary.getter();
  }

  v9 = v8;
  result = swift_getKeyPath();
  *a3 = v6;
  *(a3 + 1) = v7;
  *(a3 + 2) = a2 & 1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = 257;
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  return result;
}

double BackgroundShapeStyle._apply(to:)(uint64_t a1, char a2)
{
  if (a2)
  {
    TintShapeStyle._apply(to:)();
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v5[4] = closure #1 in static Color.clarityUIButtonBackground.getter;
    v5[5] = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
    v5[3] = &block_descriptor_44;
    v4 = _Block_copy(v5);
    [v3 initWithDynamicProvider_];
    _Block_release(v4);

    type metadata accessor for UIKitPlatformColorDefinition(0);
    Color.init(_platformColor:definition:)();
    Color.opacity(_:)();

    Color._apply(to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>;
  if (!lazy protocol witness table cache variable for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>)
  {
    type metadata accessor for PlatterButtonStyleView<BackgroundShapeStyle>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for PlatterButtonStyleView<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>);
  }

  return result;
}

void type metadata accessor for PlatterButtonStyleView<BackgroundShapeStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for PlatterButtonStyleView<BackgroundShapeStyle>)
  {
    v4 = type metadata accessor for PlatterButtonStyleView(0, &unk_1EFFD0F90, &protocol witness table for BackgroundShapeStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PlatterButtonStyleView<BackgroundShapeStyle>);
    }
  }
}

uint64_t static DefaultPickerStyle._makeView<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v37[2] = *(a2 + 32);
  v37[3] = v7;
  v37[4] = *(a2 + 64);
  v38 = *(a2 + 80);
  v8 = *(a2 + 16);
  v37[0] = *a2;
  v37[1] = v8;
  type metadata accessor for ResolvedPicker(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>(255);
  v20 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  v22 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  v23 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  v21 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v15 = type metadata accessor for ModifiedContent();
  v36 = v6;
  v35[0] = &type metadata for DefaultPickerStyle;
  v35[1] = a3;
  v35[2] = &protocol witness table for DefaultPickerStyle;
  v35[3] = a4;
  type metadata accessor for _PickerValue(255, v35);
  type metadata accessor for _GraphValue();
  LODWORD(v35[0]) = _GraphValue.value.getter();
  v17 = type metadata accessor for DefaultPickerStyle.Body(0, a3, a4, v16);
  swift_getWitnessTable("M)\rbxS\t", v17);
  _GraphValue.init<A>(_:)();
  v34[0] = &protocol witness table for ResolvedPicker<A>;
  v34[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v18 = MEMORY[0x1E697E858];
  v33[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v34);
  v33[1] = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  v32[0] = swift_getWitnessTable(v18, v10, v33);
  v32[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v31[0] = swift_getWitnessTable(v18, v11, v32);
  v31[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v30[0] = swift_getWitnessTable(v18, v12, v31);
  v30[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v29[0] = swift_getWitnessTable(v18, v13, v30);
  v29[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v28[0] = swift_getWitnessTable(v18, v14, v29);
  v28[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v27[0] = swift_getWitnessTable(v18, v20, v28);
  v27[1] = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  v26[0] = swift_getWitnessTable(v18, v22, v27);
  v26[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v25[0] = swift_getWitnessTable(v18, v23, v26);
  v25[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v24[0] = swift_getWitnessTable(v18, v21, v25);
  v24[1] = &protocol witness table for PickerStyleWriter<A>;
  swift_getWitnessTable(v18, v15, v24);
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<HostingConfigurationContext>, MEMORY[0x1E69807C8]);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<ListMenuPickerStyle>, &type metadata for ListMenuPickerStyle, &protocol witness table for ListMenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<ListMenuPickerStyle>, &type metadata for ListMenuPickerStyle, &protocol witness table for ListMenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>, &type metadata for GroupedListStyleContext);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, &type metadata for InsetGroupedListStyleContext);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<InlinePickerStyle>, &type metadata for InlinePickerStyle, &protocol witness table for InlinePickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<MenuPickerStyle>, &type metadata for MenuPickerStyle, &protocol witness table for MenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<MenuPickerStyle>, &type metadata for MenuPickerStyle, &protocol witness table for MenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<HostingConfigurationContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<HostingConfigurationContext>, MEMORY[0x1E69807C8]);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList()
{
  result = lazy protocol witness table cache variable for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList;
  if (!lazy protocol witness table cache variable for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseMenuPickerStyleInList, &type metadata for UseMenuPickerStyleInList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>, &type metadata for GroupedListStyleContext);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetGroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, &type metadata for InsetGroupedListStyleContext);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for PickerStyleWriter<A>;
    v7[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar()
{
  result = lazy protocol witness table cache variable for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar;
  if (!lazy protocol witness table cache variable for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseMenuPickerStyleInToolbar, &unk_1EFFD1070, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>, MEMORY[0x1E697EC40]);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DefaultPickerStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  type metadata accessor for ResolvedPicker(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>(255);
  v18 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  v20 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  v21 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  v19 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v13 = type metadata accessor for ModifiedContent();
  LODWORD(v34) = v6;
  v33[0] = &type metadata for DefaultPickerStyle;
  v33[1] = a3;
  v33[2] = &protocol witness table for DefaultPickerStyle;
  v33[3] = a4;
  type metadata accessor for _PickerValue(255, v33);
  type metadata accessor for _GraphValue();
  LODWORD(v33[0]) = _GraphValue.value.getter();
  v15 = type metadata accessor for DefaultPickerStyle.Body(0, a3, a4, v14);
  swift_getWitnessTable("M)\rbxS\t", v15);
  _GraphValue.init<A>(_:)();
  v32[0] = &protocol witness table for ResolvedPicker<A>;
  v32[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v16 = MEMORY[0x1E697E858];
  v31[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v32);
  v31[1] = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  v30[0] = swift_getWitnessTable(v16, v8, v31);
  v30[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v29[0] = swift_getWitnessTable(v16, v9, v30);
  v29[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v28[0] = swift_getWitnessTable(v16, v10, v29);
  v28[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v27[0] = swift_getWitnessTable(v16, v11, v28);
  v27[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v26[0] = swift_getWitnessTable(v16, v12, v27);
  v26[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v25[0] = swift_getWitnessTable(v16, v18, v26);
  v25[1] = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  v24[0] = swift_getWitnessTable(v16, v20, v25);
  v24[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v23[0] = swift_getWitnessTable(v16, v21, v24);
  v23[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v22[0] = swift_getWitnessTable(v16, v19, v23);
  v22[1] = &protocol witness table for PickerStyleWriter<A>;
  swift_getWitnessTable(v16, v13, v22);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t DefaultPickerStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for DefaultPickerStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for DefaultPickerStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _PickerValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t DefaultPickerStyle.Body.value.getter@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v98 = a1;
  v118 = a5;
  v97 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, a4);
  v7 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v86 - v8;
  v129[0] = &type metadata for DefaultPickerStyle;
  v129[1] = a2;
  v129[2] = &protocol witness table for DefaultPickerStyle;
  v129[3] = a3;
  v9 = type metadata accessor for _PickerValue(0, v129);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v86 - v10;
  v87 = type metadata accessor for ResolvedPicker(0, a2, a3, v11);
  v91 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v13 = &v86 - v12;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  v14 = type metadata accessor for ModifiedContent();
  v94 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  v17 = type metadata accessor for ModifiedContent();
  v101 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v86 - v18;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v19 = type metadata accessor for ModifiedContent();
  v104 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v86 - v20;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v95 = type metadata accessor for ModifiedContent();
  v107 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v86 - v21;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v99 = type metadata accessor for ModifiedContent();
  v109 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v86 - v22;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  v103 = type metadata accessor for ModifiedContent();
  v110 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v96 = &v86 - v23;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>(255);
  v105 = type metadata accessor for ModifiedContent();
  v112 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v100 = &v86 - v24;
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  v108 = type metadata accessor for ModifiedContent();
  v114 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v102 = &v86 - v25;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  v113 = type metadata accessor for ModifiedContent();
  v116 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v106 = &v86 - v26;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  v115 = type metadata accessor for ModifiedContent();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = &v86 - v27;
  v28 = v88;
  DefaultPickerStyle.Body.base.getter(a2, a3, v88);
  v29 = v92;
  (*(v7 + 32))(v92, v28, v97);
  v31 = ResolvedPicker.init(configuration:)(v29, a2, a3, v30, v13);
  v32 = v87;
  View.pickerStyle<A, B>(_:in:)(v31, v33, v87, &type metadata for ListMenuPickerStyle, MEMORY[0x1E69807C8], &protocol witness table for ResolvedPicker<A>, MEMORY[0x1E69807C0], v16);
  (*(v91 + 8))(v13, v32);
  v34 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v128[0] = &protocol witness table for ResolvedPicker<A>;
  v128[1] = v34;
  v35 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v128);
  v37 = lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList();
  v38 = v86;
  View.pickerStyle<A, B>(_:if:)(v37, v14, &type metadata for ListMenuPickerStyle, WitnessTable, v37, v86);
  (*(v94 + 8))(v16, v14);
  LOBYTE(v129[0]) = 2;
  v39 = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  v127[0] = WitnessTable;
  v127[1] = v39;
  v40 = swift_getWitnessTable(v35, v17, v127);
  v41 = lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
  v42 = v89;
  View.pickerStyle<A, B>(_:in:)(v129, v43, v17, &type metadata for NavigationLinkPickerStyle, &type metadata for GroupedListStyleContext, v40, v41, v89);
  (*(v101 + 8))(v38, v17);
  LOBYTE(v129[0]) = 2;
  v44 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v126[0] = v40;
  v126[1] = v44;
  v45 = swift_getWitnessTable(v35, v19, v126);
  v46 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  v47 = v90;
  View.pickerStyle<A, B>(_:in:)(v129, v48, v19, &type metadata for NavigationLinkPickerStyle, &type metadata for InsetGroupedListStyleContext, v45, v46, v90);
  (*(v104 + 8))(v42, v19);
  LOBYTE(v129[0]) = 2;
  v49 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v125[0] = v45;
  v125[1] = v49;
  v50 = v95;
  v51 = swift_getWitnessTable(v35, v95, v125);
  v52 = lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();
  v53 = v93;
  View.pickerStyle<A, B>(_:in:)(v129, v54, v50, &type metadata for NavigationLinkPickerStyle, &type metadata for SidebarListStyleContext, v51, v52, v93);
  (*(v107 + 8))(v47, v50);
  LOBYTE(v129[0]) = 2;
  v55 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v124[0] = v51;
  v124[1] = v55;
  v56 = v99;
  v57 = swift_getWitnessTable(v35, v99, v124);
  v58 = lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();
  v59 = v96;
  View.pickerStyle<A, B>(_:in:)(v129, v60, v56, &type metadata for NavigationLinkPickerStyle, &type metadata for GroupedFormStyleContext, v57, v58, v96);
  (*(v109 + 8))(v53, v56);
  v61 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v123[0] = v57;
  v123[1] = v61;
  v62 = v103;
  v63 = swift_getWitnessTable(v35, v103, v123);
  v64 = v100;
  View.pickerStyle<A, B>(_:in:)(v63, v65, v62, &type metadata for InlinePickerStyle, MEMORY[0x1E697EA18], v63, MEMORY[0x1E697EA10], v100);
  (*(v110 + 8))(v59, v62);
  v66 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v122[0] = v63;
  v122[1] = v66;
  v67 = v105;
  v68 = swift_getWitnessTable(v35, v105, v122);
  v69 = lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar();
  v70 = v102;
  View.pickerStyle<A, B>(_:if:)(v69, v67, &type metadata for MenuPickerStyle, v68, v69, v102);
  (*(v112 + 8))(v64, v67);
  v71 = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  v121[0] = v68;
  v121[1] = v71;
  v72 = v108;
  v73 = swift_getWitnessTable(v35, v108, v121);
  v74 = v106;
  View.pickerStyle<A, B>(_:in:)(v73, v75, v72, &type metadata for SegmentedPickerStyle, MEMORY[0x1E697F860], v73, MEMORY[0x1E697F858], v106);
  (*(v114 + 8))(v70, v72);
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  v76 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v120[0] = v73;
  v120[1] = v76;
  v77 = v113;
  v78 = swift_getWitnessTable(v35, v113, v120);
  v79 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>, MEMORY[0x1E697EC40]);
  v80 = v111;
  View.pickerStyle<A, B>(_:if:)(v79, v77, &type metadata for MenuPickerStyle, v78, v79, v111);
  (*(v116 + 8))(v74, v77);
  v81 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v119[0] = v78;
  v119[1] = v81;
  v82 = v35;
  v83 = v115;
  v84 = swift_getWitnessTable(v82, v115, v119);
  View.pickerStyle<A>(_:)(v84, v83, &type metadata for WheelPickerStyle, v84);
  return (*(v117 + 8))(v80, v83);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DefaultPickerStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for ResolvedPicker(255, *(a1 + 16), *(a1 + 24), a2);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseMenuPickerStyleInList(__int128 *a1)
{
  if ((static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0 && (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  return static SemanticFeature.isEnabled.getter() & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseMenuPickerStyleInToolbar(_OWORD *a1)
{
  if ((static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>, MEMORY[0x1E697EC30]);
  return static SemanticFeature.isEnabled.getter() & 1;
}

void type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t DismissImmersiveSpaceAction.callAsFunction()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction(id:destination:), v1, v0);
}

uint64_t PresentationSizing.proposedSize(for:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  swift_unknownObjectWeakLoadStrong();
  v14 = *(a1 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v10 = (*(a4 + 16))(v13, v12, a3, a4);
  outlined destroy of weak FallbackResponderProvider?(v13);
  return v10;
}

{
  return PresentationSizing.proposedSize(for:context:)(a1, a2, a3, a4);
}

uint64_t PresentationSizing.proposedSize(for:context:)(uint64_t a1, __int128 *a2)
{
  return specialized PresentationSizing.proposedSize(for:context:)(a1, a2);
}

{
  return specialized PresentationSizing.proposedSize(for:context:)(a1, a2);
}

void PresentationSizing.sizingOptions(context:)(void *a1@<X8>)
{
  PresentationSizing.sizingOptions(context:)(a1);
}

{
  *a1 = 0;
}

double PresentationSubview.sizeThatFits(_:)(uint64_t a1, char a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0.0;
  }

  swift_getObjectType();
  _ProposedSize.init(_:)();
  ViewRendererHost.sizeThatFits(_:)();
  v3 = v2;
  swift_unknownObjectRelease();
  return v3;
}

double PresentationSizingRoot.sizeThatFits(_:)(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    _ProposedSize.init(_:)();
    ViewRendererHost.sizeThatFits(_:)();
    v5 = v4;
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    return 10.0;
  }

  else
  {
    return *&a1;
  }

  return v5;
}

uint64_t PresentationSizing.sticky(horizontal:vertical:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 | v9;
  (*(v8 + 16))(v12, v4, v10);
  (*(v8 + 32))(a4, v12, a2);
  result = type metadata accessor for StickyPresentationSizing(0, a2, a3, v16);
  *(a4 + *(result + 36)) = v15;
  return result;
}

uint64_t PresentationSizing.fitted(horizontal:vertical:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, v12);
  (*(v11 + 32))(a5, v14, a3);
  result = type metadata accessor for _FittedPresentationSizing(0, a3, a4, v15);
  *(a5 + *(result + 36)) = v9;
  *(a5 + *(result + 40)) = a2;
  return result;
}

uint64_t SharedBuiltinSheetMetrics.proposedSize.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  if (*v0)
  {
    if (*v0 != 1)
    {
      *&result = COERCE_DOUBLE(static ProposedViewSize.unspecified.getter());
      return result;
    }

    _UISheetPageSize();
  }

  else
  {
    v7 = [*(v0 + 8) window];
    if (!v7 || (v8 = v7, v9 = [v7 screen], v8, !v9))
    {
      v9 = [objc_opt_self() mainScreen];
    }

    v10 = objc_opt_self();
    [v9 bounds];
    v12 = v11;
    v14 = v13;

    [v10 defaultFormSheetSizeForScreenSize_];
  }

  v15 = 0.0;
  v16 = v2;
  v17 = 240.0;
  if (v3)
  {
    v18 = 240.0;
  }

  else
  {
    v18 = v2;
  }

  if (!v5)
  {
    v17 = v4;
  }

  v19 = v18 + v17;
  if (v3)
  {
    v16 = 240.0;
  }

  if (v1 == 2)
  {
    v15 = v16;
  }

  if (v1 == 3)
  {
    v15 = v19;
  }

  *&result = v6 + v15;
  return result;
}

uint64_t AutomaticPresentationSizing.proposedSize(for:context:)(uint64_t a1, _OWORD *a2, char a3)
{
  v3 = a2[1];
  v4 = a2[3];
  v14 = a2[2];
  v15 = v4;
  v5 = a2[5];
  v6 = a2[3];
  v16 = a2[4];
  v17 = v5;
  v7 = a2[1];
  v13[0] = *a2;
  v13[1] = v7;
  *&v12[7] = v13[0];
  *&v12[87] = a2[5];
  *&v12[23] = v3;
  *&v12[71] = v16;
  *&v12[55] = v6;
  *&v12[39] = v14;
  v18[0] = a3;
  *&v18[33] = *&v12[32];
  *&v18[17] = *&v12[16];
  *&v18[1] = *v12;
  *&v18[96] = *&v12[95];
  *&v18[81] = *&v12[80];
  *&v18[65] = *&v12[64];
  *&v18[49] = *&v12[48];
  v10[10] = *&v18[64];
  v10[11] = *&v18[80];
  v11 = *&v18[96];
  v10[6] = *v18;
  v10[7] = *&v18[16];
  v10[8] = *&v18[32];
  v10[9] = *&v18[48];
  outlined init with copy of PresentationSizingContext(v13, v10);
  v8 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of SharedBuiltinSheetMetrics(v18);
  return v8;
}

uint64_t PagePresentationSizing.sizingOptions(context:)@<X0>(uint64_t *a1@<X8>)
{
  result = AnyInterfaceIdiom.accepts<A>(_:)();
  v3 = 2;
  if (result)
  {
    v3 = 4;
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for PresentationSizing.sizingOptions(context:) in conformance PagePresentationSizing@<X0>(uint64_t *a1@<X8>)
{
  result = AnyInterfaceIdiom.accepts<A>(_:)();
  v3 = 2;
  if (result)
  {
    v3 = 4;
  }

  *a1 = v3;
  return result;
}

uint64_t FittedPresentationSizing.proposedSize(for:context:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for PresentationSizing.proposedSize(for:context:) in conformance FittedPresentationSizing(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  swift_unknownObjectWeakLoadStrong();
  v7 = *(a1 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  outlined destroy of weak FallbackResponderProvider?(v6);
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

{
  v2 = *(a2 + 16);
  if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t _FittedPresentationSizing.proposedSize(for:context:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v6 = a2[5];
  v9[4] = a2[4];
  v9[5] = v6;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  result = (*(*(a3 + 24) + 16))(a1, v9, *(a3 + 16));
  if (*(v3 + *(a3 + 36)))
  {
    return 0;
  }

  return result;
}

double View.presentationSizing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  View.transformPreference<A>(_:_:)();

  return result;
}

uint64_t closure #1 in View.presentationSizing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[3] = a4;
  v11[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  return outlined assign with take of PresentationSizing?(v11, a1 + 96);
}

uint64_t StickyPresentationSizing.proposedSize(for:context:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v14 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 32);
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = *(a2 + 33);
  v19 = *(a2 + 49);
  v20[0] = *(a2 + 65);
  *(v20 + 15) = a2[5];
  v6 = COERCE_DOUBLE((*(*(a3 + 24) + 16))(a1, &v14, *(a3 + 16)));
  v8 = v7;
  if ((v5 & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      LOBYTE(v14) = v8 & 1;
      _ProposedSize.init(_:)();
      ViewRendererHost.sizeThatFits(_:)();
      v10 = v9;
      swift_unknownObjectRelease();
    }

    else if (v8)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = v6;
    }

    v11 = Axis.Set.contains(_:)();
    if (v10 < v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = v10;
    }

    if (v11)
    {
      v6 = v12;
    }

    Axis.Set.contains(_:)();
  }

  return *&v6;
}

uint64_t _FittedPresentationSizing.sizingOptions(context:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(*(a2 + 24) + 24))(v6, *(a2 + 16));
}

uint64_t FormPresentationSizing.sizingOptions(context:)@<X0>(uint64_t *a1@<X8>)
{
  result = AnyInterfaceIdiom.accepts<A>(_:)();
  if (result)
  {
    v3 = 4;
  }

  else
  {
    result = AnyInterfaceIdiom.accepts<A>(_:)();
    v3 = 2;
    if (result)
    {
      v3 = 4;
    }
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for PresentationSizing.proposedSize(for:context:) in conformance FormPresentationSizing(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2[3];
  v19 = a2[2];
  v20 = v7;
  v8 = a2[5];
  v21 = a2[4];
  v22 = v8;
  v9 = a2[1];
  v17 = *a2;
  v18 = v9;
  swift_unknownObjectWeakLoadStrong();
  v16 = *(a1 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *&v14[7] = v17;
  *&v14[23] = v18;
  *&v14[39] = v19;
  *&v14[87] = v22;
  *&v14[71] = v21;
  *&v14[55] = v20;
  v23[0] = a5;
  *&v23[33] = *&v14[32];
  *&v23[17] = *&v14[16];
  *&v23[1] = *v14;
  *&v23[96] = *(&v22 + 1);
  *&v23[81] = *&v14[80];
  *&v23[65] = *&v14[64];
  *&v23[49] = *&v14[48];
  v12[10] = *&v23[64];
  v12[11] = *&v23[80];
  v13 = *&v23[96];
  v12[6] = *v23;
  v12[7] = *&v23[16];
  v12[8] = *&v23[32];
  v12[9] = *&v23[48];
  outlined init with copy of PresentationSizingContext(&v17, v12);
  v10 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of weak FallbackResponderProvider?(v15);
  outlined destroy of SharedBuiltinSheetMetrics(v23);
  return v10;
}

uint64_t protocol witness for PresentationSizing.proposedSize(for:context:) in conformance FormPresentationSizing(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2[1];
  v6 = a2[3];
  v16 = a2[2];
  v17 = v6;
  v7 = a2[5];
  v8 = a2[3];
  v18 = a2[4];
  v19 = v7;
  v9 = a2[1];
  v15[0] = *a2;
  v15[1] = v9;
  *&v14[7] = v15[0];
  *&v14[87] = a2[5];
  *&v14[23] = v5;
  *&v14[71] = v18;
  *&v14[55] = v8;
  *&v14[39] = v16;
  v20[0] = a5;
  *&v20[33] = *&v14[32];
  *&v20[17] = *&v14[16];
  *&v20[1] = *v14;
  *&v20[96] = *&v14[95];
  *&v20[81] = *&v14[80];
  *&v20[65] = *&v14[64];
  *&v20[49] = *&v14[48];
  v12[10] = *&v20[64];
  v12[11] = *&v20[80];
  v13 = *&v20[96];
  v12[6] = *v20;
  v12[7] = *&v20[16];
  v12[8] = *&v20[32];
  v12[9] = *&v20[48];
  outlined init with copy of PresentationSizingContext(v15, v12);
  v10 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of SharedBuiltinSheetMetrics(v20);
  return v10;
}

id *specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v1 + 88);
  v43[2] = *(v1 + 72);
  v43[3] = v5;
  v6 = *(v1 + 120);
  v43[4] = *(v1 + 104);
  v43[5] = v6;
  v7 = *(v1 + 56);
  v43[0] = *(v1 + 40);
  v43[1] = v7;
  v8 = *(v1 + 88);
  v39 = *(v1 + 72);
  v40 = v8;
  v9 = *(v1 + 120);
  v41 = *(v1 + 104);
  v42 = v9;
  v10 = *(v1 + 56);
  v37 = *(v1 + 40);
  v38 = v10;
  v11 = *(v4 + 16);
  outlined init with copy of PresentationSizingContext(v43, v44);
  v11(a1, &v37, v3, v4);
  v13 = v12;
  v44[2] = v39;
  v44[3] = v40;
  v44[4] = v41;
  v44[5] = v42;
  v44[0] = v37;
  v44[1] = v38;
  outlined destroy of OpenURLOptions(v44);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    LOBYTE(v37) = v13 & 1;
    _ProposedSize.init(_:)();
    *&v31 = v37;
    BYTE8(v31) = BYTE8(v37);
    *&v32 = v38;
    BYTE8(v32) = BYTE8(v38);
    ViewRendererHost.sizeThatFits(_:)();
    swift_unknownObjectRelease();
  }

  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v14);
  v16 = *(v1 + 88);
  v33 = *(v1 + 72);
  v34 = v16;
  v17 = *(v1 + 120);
  v35 = *(v1 + 104);
  v36 = v17;
  v18 = *(v1 + 56);
  v31 = *(v1 + 40);
  v32 = v18;
  v19 = *(v1 + 88);
  v26 = *(v1 + 72);
  v27 = v19;
  v20 = *(v1 + 120);
  v28 = *(v1 + 104);
  v29 = v20;
  v21 = *(v1 + 56);
  v24 = *(v1 + 40);
  v25 = v21;
  v22 = *(v15 + 24);
  outlined init with copy of PresentationSizingContext(&v31, &v37);
  v22(&v30, &v24, v14, v15);
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v37 = v24;
  v38 = v25;
  return outlined destroy of OpenURLOptions(&v37);
}

uint64_t specialized PresentationSizing.proposedSize(for:context:)(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v15 = a2[2];
  v16 = v2;
  v3 = a2[5];
  v17 = a2[4];
  v18 = v3;
  v4 = a2[1];
  v13 = *a2;
  v14 = v4;
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CD63400;
  _StringGuts.grow(_:)(38);

  v6 = StaticString.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](58, 0xE100000000000000);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = 0xD00000000000007ALL;
  *(v5 + 40) = 0x800000018CD4DEB0;
  print(_:separator:terminator:)();

  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  *&v12[87] = v18;
  *&v12[71] = v17;
  *&v12[55] = v16;
  v19[0] = 0;
  *&v19[33] = *&v12[32];
  *&v19[17] = *&v12[16];
  *&v19[1] = *v12;
  *&v19[96] = *(&v18 + 1);
  *&v19[81] = *&v12[80];
  *&v19[65] = *&v12[64];
  *&v19[49] = *&v12[48];
  v10[10] = *&v19[64];
  v10[11] = *&v19[80];
  v11 = *&v19[96];
  v10[6] = *v19;
  v10[7] = *&v19[16];
  v10[8] = *&v19[32];
  v10[9] = *&v19[48];
  outlined init with copy of PresentationSizingContext(&v13, v10);
  v8 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of SharedBuiltinSheetMetrics(v19);
  return v8;
}

uint64_t outlined init with copy of PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  v5 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 16) = v5;
  v6 = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 40) = v6;
  v7 = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 56) = v7;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  v8 = v3;
  return a2;
}

uint64_t dispatch thunk of PresentationSizing.proposedSize(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))(a1, a2, a3);
}

{
  return (*(a4 + 16))(a1, a2, a3);
}

uint64_t initializeWithCopy for PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v7;
  v8 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  v9 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v9;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationSizingContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for PresentationSizingContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PresentationSizeBehaviorContext(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for PresentationSizeBehaviorContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v7;
  return a1;
}

uint64_t assignWithTake for PresentationSizeBehaviorContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t type metadata completion function for _FittedPresentationSizing(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _FittedPresentationSizing(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 2) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    v11 = v3 + v5;
    *v11 = *(a2 + v5);
    v11[1] = *(a2 + v5 + 1);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithCopy for _FittedPresentationSizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t initializeWithTake for _FittedPresentationSizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for _FittedPresentationSizing(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for _FittedPresentationSizing(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t type metadata completion function for StickyPresentationSizing(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickyPresentationSizing(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
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
        return (*(v4 + 48))();
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

char *storeEnumTagSinglePayload for StickyPresentationSizing(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 1;
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (*(v5 + 64) != -1)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t initializeWithCopy for SharedBuiltinSheetMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for SharedBuiltinSheetMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v8;
  v9 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v9;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for SharedBuiltinSheetMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options()
{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationSizingOptions.Options, &unk_1EFFD1788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationSizingOptions.Options, &unk_1EFFD1788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationSizingOptions.Options, &unk_1EFFD1788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationSizingOptions.Options, &unk_1EFFD1788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

uint64_t outlined assign with take of PresentationSizing?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PresentationSizing?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for PresentationSizing()
{
  result = lazy cache variable for type metadata for PresentationSizing;
  if (!lazy cache variable for type metadata for PresentationSizing)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PresentationSizing);
  }

  return result;
}

void destroy for SheetSizing(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v2 = a1[5];
}

uint64_t initializeWithCopy for SheetSizing(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for SheetSizing(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  v8 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v8;
  v9 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v9;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t assignWithTake for SheetSizing(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for SheetSizing(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for SheetSizing(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing()
{
  result = lazy protocol witness table cache variable for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing;
  if (!lazy protocol witness table cache variable for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing, &unk_1EFFD1960, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing);
  }

  return result;
}

uint64_t type metadata accessor for ControlWidgetTemplateGraph(uint64_t a1)
{
  result = type metadata singleton initialization cache for ControlWidgetTemplateGraph;
  if (!type metadata singleton initialization cache for ControlWidgetTemplateGraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in ControlWidgetTemplateGraph.init<A>(_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v14[0] = a1[2];
  *(v14 + 12) = *(a1 + 44);
  v11[2] = a3;
  v8 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, closure #1 in Attribute.init(value:)partial apply, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  _GraphValue.init(_:)();
  return (*(a4 + 40))(&v12, v13, a3, a4);
}

Swift::Void __swiftcall ControlWidgetTemplateGraph.uninstantiateOutputs()()
{
  swift_beginAccess();
  *(v0 + 132) = AGCreateWeakAttribute();
  swift_endAccess();
}

double ControlWidgetTemplateGraph.__deallocating_deinit()
{
  GraphHost.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t specialized ControlWidgetTemplateGraph.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, a2, v9);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, a2);
  *(v3 + 176) = partial apply for closure #1 in ControlWidgetTemplateGraph.init<A>(_:);
  *(v3 + 184) = v12;
  GraphHost.Data.init()();
  v13 = AGSubgraphGetCurrent();
  v14 = *(&v29[0] + 1);
  AGSubgraphSetCurrent();
  v15 = v14;
  static CustomEventTrace.instantiateBegin(_:)();

  v20[2] = a2;
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v20, a2, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  *(v3 + 192) = v22;
  v26 = v29[4];
  v27 = v29[5];
  v28 = v30;
  v22 = v29[0];
  v23 = v29[1];
  v24 = v29[2];
  v25 = v29[3];
  outlined init with copy of GraphHost.Data(v29, &v21);
  v18 = GraphHost.init(data:)();

  AGSubgraphSetCurrent();
  static CustomEventTrace.instantiateEnd(_:)();

  outlined destroy of GraphHost.Data(v29);
  return v18;
}

uint64_t static ClarityUIInterfaceIdiomModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v25 = a2[2];
  v26 = v4;
  v6 = a2[3];
  v27 = a2[4];
  v7 = a2[1];
  v23 = *a2;
  v24 = v7;
  v19 = v25;
  v20 = v6;
  v21 = a2[4];
  v28 = *(a2 + 20);
  v22 = *(a2 + 20);
  v17 = v23;
  v18 = v5;
  outlined init with copy of _ViewInputs(&v23, v33);
  AnyInterfaceIdiom.init<A>(_:)();
  v31[0] = v33[0];
  PropertyList.subscript.setter();
  v8 = v24;
  swift_beginAccess();
  LODWORD(v33[0]) = *(v8 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ClarityUIEnvironment and conformance ClarityUIEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v30 = v22;
  v29[0] = v17;
  v29[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v29, v33);
  a3(v9, &v11);
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v32 = v16;
  v31[0] = v11;
  v31[1] = v12;
  outlined destroy of _ViewInputs(v31);
  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v34 = v22;
  v33[0] = v17;
  v33[1] = v18;
  return outlined destroy of _ViewInputs(v33);
}

double ClarityUIEnvironment.value.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  *&v14 = v6;
  *(&v14 + 1) = v5;

  EnvironmentValues.dynamicTypeSize.getter();
  if (v13[0] <= 6u)
  {
    v13[0] = 7;
    EnvironmentValues.dynamicTypeSize.setter();
  }

  v7 = EnvironmentValues.dividerThickness.setter();
  LODWORD(v12[0]) = v2;
  MEMORY[0x1EEE9AC00](v7);
  v8 = lazy protocol witness table accessor for type ClarityUIEnvironment and conformance ClarityUIEnvironment();
  MEMORY[0x18D000B90](&unk_1EFFD1A58, &type metadata for ScrollEnvironmentProperties, v8);
  Rule.withObservation<A>(observationCenter:do:)();

  v13[120] = 2;
  v13[144] = 2;
  outlined init with copy of ScrollEnvironmentProperties(v13, v12);
  type metadata accessor for ScrollEnvironmentStorage(0);
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  swift_allocObject();
  v12[0] = ScrollEnvironmentStorage.init(_:transform:)(v12, v10);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(&v14 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    outlined destroy of ScrollEnvironmentProperties(v13);
  }

  else
  {
    outlined destroy of ScrollEnvironmentProperties(v13);
  }

  result = *&v14;
  *a2 = v14;
  return result;
}

void closure #1 in ClarityUIEnvironment.value.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v8 + 16, a2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v8 + 280, &v8);
  if (v9)
  {
    outlined init with take of ScrollEnvironmentTransform(&v8, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 8))(a2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

unint64_t lazy protocol witness table accessor for type ClarityUIEnvironment and conformance ClarityUIEnvironment()
{
  result = lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment;
  if (!lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClarityUIEnvironment, &unk_1EFFD1A58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment;
  if (!lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment)
  {
    result = swift_getWitnessTable("i\rbpR\t", &unk_1EFFD1A58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment);
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.alwaysOnFrameSpecifier.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>, &unk_1EFFD1C90, &protocol witness table for AlwaysOnFrameSpecifier);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnFrameSpecifier> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>, &unk_1EFFD1C90, &protocol witness table for AlwaysOnFrameSpecifier);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>, &unk_1EFFD1C90, &protocol witness table for AlwaysOnFrameSpecifier);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnFrameSpecifier> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>, &unk_1EFFD1C90, &protocol witness table for AlwaysOnFrameSpecifier);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double specialized implicit closure #1 in _GraphInputs.alwaysOnInvalidationHandler.getter(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>, &unk_1EFFD1CB0, &protocol witness table for AlwaysOnInvalidationKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnInvalidationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>, &unk_1EFFD1CB0, &protocol witness table for AlwaysOnInvalidationKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>, &unk_1EFFD1CB0, &protocol witness table for AlwaysOnInvalidationKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnInvalidationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>, &unk_1EFFD1CB0, &protocol witness table for AlwaysOnInvalidationKey);

    PropertyList.subscript.getter();
  }

  return result;
}

Swift::Void __swiftcall AlwaysOnBridge.invalidate(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = specialized UIHostingController.host.getter();

    v6 = [v5 window];
    if (v6)
    {
      v7 = [v6 windowScene];

      if (v7)
      {
        v8 = [v7 _backlightSceneEnvironment];

        if (v8)
        {
          v9 = MEMORY[0x18D00C850](countAndFlagsBits, object);
          [v8 invalidateAllTimelinesForReason_];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t AlwaysOnBridge.update(environment:)(void *a1)
{
  if (AlwaysOnBridge.isActiveHost.getter())
  {
    v6 = *(v1 + 32);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>, &unk_1EFFD1C90, &protocol witness table for AlwaysOnFrameSpecifier);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnFrameSpecifier> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>, &unk_1EFFD1C90, &protocol witness table for AlwaysOnFrameSpecifier);
    v3 = v6;

    PropertyList.subscript.setter();
    if (a1[1])
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  swift_weakInit();
  outlined init with copy of TimelineInvalidationAction(&v6, &v5);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>, &unk_1EFFD1CB0, &protocol witness table for AlwaysOnInvalidationKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnInvalidationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>, &unk_1EFFD1CB0, &protocol witness table for AlwaysOnInvalidationKey);

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of weak AnyGestureResponder?(&v6);
  result = EnvironmentValues.isLuminanceReduced.getter();
  *(v1 + 40) = result & 1;
  return result;
}

void AlwaysOnBridge.update(with:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  *(v1 + 41) = 1;
  v4 = v1[4];
  v2[4] = a1;
  v5 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = Strong;
  v8 = specialized UIHostingController.host.getter();

  _UIHostingView.viewGraph.getter(v9);
  Transaction.disablesAnimations.setter();
  Transaction.disablesContentTransitions.setter();
  GraphHost.emptyTransaction(_:)();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = specialized UIHostingController.host.getter();

  v14 = type metadata accessor for _UIHostingView(0, *(v3 + 104), *(v3 + 112), v13);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v14);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = specialized UIHostingController.host.getter();

    [v17 layoutIfNeeded];

    *(v2 + 41) = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t AlwaysOnBridge.timelines(for:)()
{
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BLSAlwaysOnTimeline, 0x1E698E508);

    v2 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BLSAlwaysOnTimeline, 0x1E698E508);
    v2 = v1;
  }

  return v2;
}

double AlwaysOnBridge.configureTransaction(_:)()
{
  ++*(v0 + 24);

  Transaction.addAnimationListener(allFinished:)();

  return result;
}

uint64_t closure #1 in AlwaysOnBridge.configureTransaction(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in closure #1 in AlwaysOnBridge.configureTransaction(_:);
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_45;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  v10 = MEMORY[0x1E69E7F60];
  type metadata accessor for [UIViewController & _UIBacklightEnvironmentObserver](0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v10, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x18D00DA20](0, v7, v4, v9);
  _Block_release(v9);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

uint64_t AlwaysOnBridge.__ivar_destroyer()
{
  MEMORY[0x18D011290](v0 + 16);
}

uint64_t protocol witness for Rule.value.getter in conformance AlwaysOnTimelinePreferenceWriter@<X0>(uint64_t *a1@<X8>)
{
  result = AlwaysOnTimelinePreferenceWriter.value.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t TableRowContent.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return ModifiedContent.init(content:modifier:)();
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance OnDeleteTableRowModifier@<X0>(uint64_t a2@<X1>, void (*x2_0)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v4;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v5 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v5;
  v6 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v6;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnDeletecdF0V_Tt3B5(v9, x2_0, a3);
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA021_TypeSelectEquivalentcdF0V_Tt3B5@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v7 = v39;
  v8 = v40;
  v9 = *(a2 + 112);
  v35 = *(a2 + 96);
  v36 = v9;
  v37 = *(a2 + 128);
  v38 = *(a2 + 144);
  v10 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v10;
  v11 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v11;
  v12 = *(a2 + 16);
  v29 = *a2;
  v30 = v12;
  v19 = v39;
  LOBYTE(v20) = v40;
  DWORD1(v20) = DWORD1(v40);
  outlined init with copy of _TableRowInputs(a2, &v39);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_TypeSelectEquivalentTableRowModifier>, lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier, &type metadata for _TypeSelectEquivalentTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<_TypeSelectEquivalentTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_TypeSelectEquivalentTableRowModifier>, lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier, &type metadata for _TypeSelectEquivalentTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v40;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA23TypeSelectEquivalentKeyV_Tt3B5(v18, &v39, a3);
  v14 = v19;
  v15 = DWORD2(v19);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TypeSelectEquivalentKey>, &type metadata for TypeSelectEquivalentKey, &protocol witness table for TypeSelectEquivalentKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  outlined destroy of _TableRowInputs(&v19);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA014DeleteDisabledcdF0V_Tt3B5@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v7 = v39;
  v8 = v40;
  v9 = *(a2 + 112);
  v35 = *(a2 + 96);
  v36 = v9;
  v37 = *(a2 + 128);
  v38 = *(a2 + 144);
  v10 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v10;
  v11 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v11;
  v12 = *(a2 + 16);
  v29 = *a2;
  v30 = v12;
  v19 = v39;
  LOBYTE(v20) = v40;
  DWORD1(v20) = DWORD1(v40);
  outlined init with copy of _TableRowInputs(a2, &v39);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DeleteDisabledTableRowModifier>, lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier, &type metadata for DeleteDisabledTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<DeleteDisabledTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DeleteDisabledTableRowModifier>, lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier, &type metadata for DeleteDisabledTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v40;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA016IsDeleteDisabledC3KeyV_Tt3B5(v18, &v39, a3);
  v14 = v19;
  v15 = DWORD2(v19);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  outlined destroy of _TableRowInputs(&v19);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA012ItemProvidercdF0V_Tt3B5@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v7 = v39;
  v8 = v40;
  v9 = *(a2 + 112);
  v35 = *(a2 + 96);
  v36 = v9;
  v37 = *(a2 + 128);
  v38 = *(a2 + 144);
  v10 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v10;
  v11 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v11;
  v12 = *(a2 + 16);
  v29 = *a2;
  v30 = v12;
  v19 = v39;
  LOBYTE(v20) = v40;
  DWORD1(v20) = DWORD1(v40);
  outlined init with copy of _TableRowInputs(a2, &v39);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<ItemProviderTableRowModifier>, lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier, &type metadata for ItemProviderTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<ItemProviderTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<ItemProviderTableRowModifier>, lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier, &type metadata for ItemProviderTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v40;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA012ItemProviderC3KeyV_Tt3B5(v18, &v39, a3);
  v14 = v19;
  v15 = DWORD2(v19);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<ItemProviderTraitKey>, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  outlined destroy of _TableRowInputs(&v19);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnInsertcdF0V_Tt3B5@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v7 = v39;
  v8 = v40;
  v9 = *(a2 + 112);
  v35 = *(a2 + 96);
  v36 = v9;
  v37 = *(a2 + 128);
  v38 = *(a2 + 144);
  v10 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v10;
  v11 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v11;
  v12 = *(a2 + 16);
  v29 = *a2;
  v30 = v12;
  v19 = v39;
  LOBYTE(v20) = v40;
  DWORD1(v20) = DWORD1(v40);
  outlined init with copy of _TableRowInputs(a2, &v39);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnInsertTableRowModifier>, lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier, &type metadata for OnInsertTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<OnInsertTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnInsertTableRowModifier>, lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier, &type metadata for OnInsertTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v40;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08OnInsertC3KeyV_Tt3B5(v18, &v39, a3);
  v14 = v19;
  v15 = DWORD2(v19);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnInsertTraitKey>, &type metadata for OnInsertTraitKey, &protocol witness table for OnInsertTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  outlined destroy of _TableRowInputs(&v19);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnDeletecdF0V_Tt3B5@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v7 = v39;
  v8 = v40;
  v9 = *(a2 + 112);
  v35 = *(a2 + 96);
  v36 = v9;
  v37 = *(a2 + 128);
  v38 = *(a2 + 144);
  v10 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v10;
  v11 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v11;
  v12 = *(a2 + 16);
  v29 = *a2;
  v30 = v12;
  v19 = v39;
  LOBYTE(v20) = v40;
  DWORD1(v20) = DWORD1(v40);
  outlined init with copy of _TableRowInputs(a2, &v39);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnDeleteTableRowModifier>, lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier, &type metadata for OnDeleteTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<OnDeleteTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnDeleteTableRowModifier>, lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier, &type metadata for OnDeleteTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v40;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08OnDeleteC3KeyV_Tt3B5(v18, &v39, a3);
  v14 = v19;
  v15 = DWORD2(v19);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnDeleteTraitKey>, &type metadata for OnDeleteTraitKey, &protocol witness table for OnDeleteTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  outlined destroy of _TableRowInputs(&v19);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08DropOntocdF0V_Tt3B5@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v7 = v39;
  v8 = v40;
  v9 = *(a2 + 112);
  v35 = *(a2 + 96);
  v36 = v9;
  v37 = *(a2 + 128);
  v38 = *(a2 + 144);
  v10 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v10;
  v11 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v11;
  v12 = *(a2 + 16);
  v29 = *a2;
  v30 = v12;
  v19 = v39;
  LOBYTE(v20) = v40;
  DWORD1(v20) = DWORD1(v40);
  outlined init with copy of _TableRowInputs(a2, &v39);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>, lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier, &type metadata for DropOntoTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>, lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier, &type metadata for DropOntoTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v40;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08DropOntoC3KeyV_Tt3B5(v18, &v39, a3);
  v14 = v19;
  v15 = DWORD2(v19);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<DropOntoTraitKey>, &type metadata for DropOntoTraitKey, &protocol witness table for DropOntoTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  outlined destroy of _TableRowInputs(&v19);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA06_HovercdF0V_Tt3B5@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v7 = v39;
  v8 = v40;
  v9 = *(a2 + 112);
  v35 = *(a2 + 96);
  v36 = v9;
  v37 = *(a2 + 128);
  v38 = *(a2 + 144);
  v10 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v10;
  v11 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v11;
  v12 = *(a2 + 16);
  v29 = *a2;
  v30 = v12;
  v19 = v39;
  LOBYTE(v20) = v40;
  DWORD1(v20) = DWORD1(v40);
  outlined init with copy of _TableRowInputs(a2, &v39);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_HoverTableRowModifier>, lazy protocol witness table accessor for type _HoverTableRowModifier and conformance _HoverTableRowModifier, &type metadata for _HoverTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<_HoverTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_HoverTableRowModifier>, lazy protocol witness table accessor for type _HoverTableRowModifier and conformance _HoverTableRowModifier, &type metadata for _HoverTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v40;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA0ef11HoverActionC3KeyV_Tt3B5(v18, &v39, a3);
  v14 = v19;
  v15 = DWORD2(v19);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TableRowHoverActionTraitKey>, &type metadata for TableRowHoverActionTraitKey, &protocol witness table for TableRowHoverActionTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  outlined destroy of _TableRowInputs(&v19);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v7, *(&v7 + 1), v8);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZs5NeverO_Tt3B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = MEMORY[0x1E69E73E0];
  static DynamicPropertyCache.fields(of:)();
  v8 = v41;
  v9 = v42;
  v10 = a2[7];
  v37 = a2[6];
  v38 = v10;
  v39 = a2[8];
  v40 = *(a2 + 18);
  v11 = a2[3];
  v33 = a2[2];
  v34 = v11;
  v12 = a2[5];
  v35 = a2[4];
  v36 = v12;
  v13 = a2[1];
  v31 = *a2;
  v32 = v13;
  v21 = v41;
  LOBYTE(v22) = v42;
  DWORD1(v22) = DWORD1(v42);
  outlined init with copy of _TableRowInputs(a2, &v41);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<Never>, v7, &protocol witness table for Never, type metadata accessor for TableRowContentModifierBodyAccessor);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<Never> and conformance TableRowContentModifierBodyAccessor<A>();
  BodyAccessor.makeBody(container:inputs:fields:)();
  v14 = v42;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v41 = v31;
  v42 = v32;
  outlined init with copy of _TableRowInputs(&v41, &v21);
  _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZs5NeverO_Tt3B5(v20, &v41, a3, a4, &v21);
  outlined destroy of _TableRowInputs(&v41);
  v15 = v21;
  v16 = DWORD2(v21);
  if ((v14 & 1) == 0)
  {
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  outlined destroy of _TableRowInputs(&v21);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
  *a5 = v15;
  *(a5 + 8) = v16;
  return result;
}

uint64_t static _TableRowContentModifier._makeRows(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a1;
  v11 = a2[7];
  v65 = a2[6];
  v66 = v11;
  v67 = a2[8];
  v68 = *(a2 + 18);
  v12 = a2[3];
  v61 = a2[2];
  v62 = v12;
  v13 = a2[5];
  v63 = a2[4];
  v64 = v13;
  v14 = a2[1];
  v59 = *a2;
  v60 = v14;
  static DynamicPropertyCache.fields(of:)();
  v15 = *(&v79 + 1);
  v16 = v80;
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  LODWORD(v33) = v10;
  v31 = v79;
  v69 = v79;
  LOBYTE(v70) = v80;
  v29 = DWORD1(v80);
  DWORD1(v70) = DWORD1(v80);
  outlined init with copy of _TableRowInputs(&v59, &v79);
  v18 = type metadata accessor for TableRowContentModifierBodyAccessor(0, a5, a6, v17);
  swift_getWitnessTable(protocol conformance descriptor for TableRowContentModifierBodyAccessor<A>, v18);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v19 = v39;
  v20 = *(&v79 + 1);
  v28 = v79;
  v21 = v80;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = v55;
  v76 = v56;
  v77 = v57;
  v71 = v51;
  v72 = v52;
  v73 = v53;
  v74 = v54;
  v69 = v49;
  v70 = v50;
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v78 = v58;
  LODWORD(v38[0]) = v39;
  v48 = v58;
  v39 = v49;
  v40 = v50;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _TableRowInputs(&v69, &v79);
  v24(&v33, v38, &v39, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  v85 = v45;
  v86 = v46;
  v87 = v47;
  v88 = v48;
  v81 = v41;
  v82 = v42;
  v83 = v43;
  v84 = v44;
  v79 = v39;
  v80 = v40;
  outlined destroy of _TableRowInputs(&v79);
  v25 = v33;
  v26 = v34;
  if ((v21 & 1) == 0)
  {
    v38[0] = v28;
    v38[1] = v20;
    v37 = v19;
    v33 = v31;
    v34 = v15;
    v35 = v16;
    v36 = v29;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v45 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v39 = v49;
  v40 = v50;
  outlined destroy of _TableRowInputs(&v39);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v31, v15, v16);
  *a7 = v25;
  *(a7 + 8) = v26;
  return result;
}

uint64_t static _TableRowContentModifier._tableRowCount(inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v7;
  v14[8] = *(a1 + 128);
  v15 = *(a1 + 144);
  v8 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v8;
  v9 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v9;
  v10 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v14, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance DeleteDisabledTableRowModifier@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA014DeleteDisabledcdF0V_Tt3B5(v10, a3, a5);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance ItemProviderTableRowModifier@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA012ItemProvidercdF0V_Tt3B5(v10, a3, a5);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance OnInsertTableRowModifier@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnInsertcdF0V_Tt3B5(v10, a3, a5);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance DropOntoTableRowModifier@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08DropOntocdF0V_Tt3B5(v10, a3, a5);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance _TypeSelectEquivalentTableRowModifier@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA021_TypeSelectEquivalentcdF0V_Tt3B5(v10, a3, a5);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance _HoverTableRowModifier@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA06_HovercdF0V_Tt3B5(v10, a3, a5);
}

uint64_t protocol witness for static _TableRowContentModifier._tableRowCount(inputs:body:) in conformance OnDeleteTableRowModifier(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v2;
  v7[8] = *(a1 + 128);
  v8 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v3;
  v4 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v4;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return a2(v7);
}

uint64_t TableRowContentModifierBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for TableRowContentModifierBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for TableRowContentModifierBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance Never@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZs5NeverO_Tt3B5(v10, a3, a4, a5);
}

double static ModifiedContent<>._makeRows(content:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v19[8] = *(a2 + 128);
  v20 = *(a2 + 144);
  v12 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v12;
  v13 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v13;
  v14 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v14;
  v18 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = v10;
  (*(a6 + 32))(v17, v19, partial apply for closure #2 in static ModifiedContent<>._makeRows(content:inputs:), v15, a4, a6);

  return result;
}

uint64_t closure #1 in static ModifiedContent<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 + 36);
  v10[2] = v5;
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #2 in static ModifiedContent<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a2 + 112);
  v16[6] = *(a2 + 96);
  v16[7] = v9;
  v16[8] = *(a2 + 128);
  v17 = *(a2 + 144);
  v10 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v10;
  v11 = *(a2 + 80);
  v16[4] = *(a2 + 64);
  v16[5] = v11;
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v12;
  v15 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 48))(v14, v16, a4, a6);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ModifiedContent();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static ModifiedContent<>._tableRowCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v9;
  v16[8] = *(a1 + 128);
  v17 = *(a1 + 144);
  v10 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v10;
  v11 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v11;
  v12 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v12;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v14 = (*(a5 + 40))(v16, partial apply for closure #1 in static ModifiedContent<>._tableRowCount(inputs:), v13, a3, a5);

  return v14;
}

uint64_t partial apply for closure #1 in static ModifiedContent<>._tableRowCount(inputs:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(v2 + 56))(v8);
}

uint64_t static ModifiedContent<>._containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v9[8] = *(a1 + 128);
  v10 = *(a1 + 144);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return (*(a4 + 64))(v9) & 1;
}

uint64_t instantiation function for generic protocol witness table for <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  v6[0] = *(*a3 + 8);
  v6[1] = v4;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, a2, v6);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _TraitWritingTableRowModifier(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TraitWritingTableRowModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v6 + 80) & 0x100000) == 0)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));
  }

  return a1;
}

uint64_t destroy for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for _TraitWritingTableRowModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void storeEnumTagSinglePayload for _TraitWritingTableRowModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
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

  else if (v10)
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
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA23TypeSelectEquivalentKeyV_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 37);
  v39 = *(a2 + 36);
  v6 = a2[7];
  v36 = a2[6];
  v37 = v6;
  v38 = a2[8];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v8 = a2[5];
  v34 = a2[4];
  v35 = v8;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TypeSelectEquivalentKey>.AddTrait, &type metadata for TypeSelectEquivalentKey, &protocol witness table for TypeSelectEquivalentKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<TypeSelectEquivalentKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TypeSelectEquivalentKey>.AddTrait, &type metadata for TypeSelectEquivalentKey, &protocol witness table for TypeSelectEquivalentKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA016IsDeleteDisabledC3KeyV_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 37);
  v39 = *(a2 + 36);
  v6 = a2[7];
  v36 = a2[6];
  v37 = v6;
  v38 = a2[8];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v8 = a2[5];
  v34 = a2[4];
  v35 = v8;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>.AddTrait, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>.AddTrait, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA012ItemProviderC3KeyV_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 37);
  v39 = *(a2 + 36);
  v6 = a2[7];
  v36 = a2[6];
  v37 = v6;
  v38 = a2[8];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v8 = a2[5];
  v34 = a2[4];
  v35 = v8;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<ItemProviderTraitKey>.AddTrait, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<ItemProviderTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<ItemProviderTraitKey>.AddTrait, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08OnInsertC3KeyV_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 37);
  v39 = *(a2 + 36);
  v6 = a2[7];
  v36 = a2[6];
  v37 = v6;
  v38 = a2[8];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v8 = a2[5];
  v34 = a2[4];
  v35 = v8;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnInsertTraitKey>.AddTrait, &type metadata for OnInsertTraitKey, &protocol witness table for OnInsertTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<OnInsertTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnInsertTraitKey>.AddTrait, &type metadata for OnInsertTraitKey, &protocol witness table for OnInsertTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08OnDeleteC3KeyV_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 37);
  v39 = *(a2 + 36);
  v6 = a2[7];
  v36 = a2[6];
  v37 = v6;
  v38 = a2[8];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v8 = a2[5];
  v34 = a2[4];
  v35 = v8;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait, &type metadata for OnDeleteTraitKey, &protocol witness table for OnDeleteTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait, &type metadata for OnDeleteTraitKey, &protocol witness table for OnDeleteTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08DropOntoC3KeyV_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 37);
  v39 = *(a2 + 36);
  v6 = a2[7];
  v36 = a2[6];
  v37 = v6;
  v38 = a2[8];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v8 = a2[5];
  v34 = a2[4];
  v35 = v8;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<DropOntoTraitKey>.AddTrait, &type metadata for DropOntoTraitKey, &protocol witness table for DropOntoTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<DropOntoTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA0ef11HoverActionC3KeyV_Tt3B5(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 37);
  v39 = *(a2 + 36);
  v6 = a2[7];
  v36 = a2[6];
  v37 = v6;
  v38 = a2[8];
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v8 = a2[5];
  v34 = a2[4];
  v35 = v8;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TableRowHoverActionTraitKey>.AddTrait, &type metadata for TableRowHoverActionTraitKey, &protocol witness table for TableRowHoverActionTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<TableRowHoverActionTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TableRowHoverActionTraitKey>.AddTrait, &type metadata for TableRowHoverActionTraitKey, &protocol witness table for TableRowHoverActionTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _TraitWritingTableRowModifier.AddTrait.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for _TraitWritingTableRowModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t _TraitWritingTableRowModifier.AddTrait.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v13 = type metadata accessor for _TraitWritingTableRowModifier(0, a2, a3, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18 - v14;
  TableRow.MakeList.traits.getter(a1, &v18);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    ViewTraitCollection.init()();
  }

  _TraitWritingTableRowModifier.AddTrait.modifier.getter(a2, a3, v16, v15);
  (*(v9 + 32))(v11, v15, AssociatedTypeWitness);
  result = ViewTraitCollection.subscript.setter();
  *a4 = v19;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TraitWritingTableRowModifier<A>.AddTrait(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _TraitWritingTableRowModifier<A>.AddTrait, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t static _TraitWritingTableRowModifier._makeRows(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void, uint64_t, uint64_t), const char *a9, uint64_t a10)
{
  v66 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 112);
  v16 = *(a2 + 80);
  v62 = *(a2 + 96);
  v63 = v15;
  v17 = *(a2 + 112);
  v64 = *(a2 + 128);
  v18 = *(a2 + 48);
  v19 = *(a2 + 16);
  v58 = *(a2 + 32);
  v59 = v18;
  v20 = *(a2 + 48);
  v21 = *(a2 + 80);
  v60 = *(a2 + 64);
  v61 = v21;
  v22 = *(a2 + 16);
  v57[0] = *a2;
  v57[1] = v22;
  v53 = v62;
  v54 = v17;
  v55 = *(a2 + 128);
  v49 = v58;
  v50 = v20;
  v51 = v60;
  v52 = v16;
  v65 = *(a2 + 144);
  v56 = *(a2 + 144);
  v47 = v57[0];
  v48 = v19;
  outlined init with copy of _TableRowInputs(v57, v44);
  a7(255, a5, a6);
  type metadata accessor for _GraphValue();
  LODWORD(v44[0]) = _GraphValue.value.getter();
  DWORD1(v44[0]) = HIDWORD(v65);
  v28 = a8(0, a5, a6);
  WitnessTable = swift_getWitnessTable(a9, v28);
  type metadata accessor for Attribute<ViewTraitCollection>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v44, a10, v27, v28, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  LODWORD(a8) = v42[0];
  v40[6] = v53;
  v40[7] = v54;
  v40[8] = v55;
  v40[2] = v49;
  v40[3] = v50;
  v40[4] = v51;
  v40[5] = v52;
  v40[0] = v47;
  v40[1] = v48;
  v41 = __PAIR64__(v42[0], v56);
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v39 = __PAIR64__(v42[0], v56);
  v32 = v49;
  v33 = v50;
  v34 = v51;
  v35 = v52;
  v30 = v47;
  v31 = v48;
  v25 = outlined init with copy of _TableRowInputs(v40, v44);
  a3(v25, &v30);
  v42[6] = v36;
  v42[7] = v37;
  v42[8] = v38;
  v43 = v39;
  v42[2] = v32;
  v42[3] = v33;
  v42[4] = v34;
  v42[5] = v35;
  v42[0] = v30;
  v42[1] = v31;
  outlined destroy of _TableRowInputs(v42);
  v44[6] = v53;
  v44[7] = v54;
  v44[8] = v55;
  v44[2] = v49;
  v44[3] = v50;
  v44[4] = v51;
  v44[5] = v52;
  v44[0] = v47;
  v44[1] = v48;
  v45 = v56;
  v46 = a8;
  return outlined destroy of _TableRowInputs(v44);
}

void TableRowTraitTransformerModifier.TransformTrait.value.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  TableRow.MakeList.traits.getter(a1, &v12);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v8 = ViewTraitCollection.init()();
  }

  v12 = a1;
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for TableRowTraitTransformerModifier.TransformTrait(0, a2, a3, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRowTraitTransformerModifier<A>.TransformTrait, v10);
  MEMORY[0x18D000B90](v10, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  *a4 = v13;
}

uint64_t closure #1 in closure #1 in TableRowTraitTransformerModifier.TransformTrait.value.getter(void (**a1)(char *), void *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = v11 - v7;
  v9 = *a1;
  v11[1] = *a2;
  ViewTraitCollection.subscript.getter();
  v9(v8);
  return ViewTraitCollection.subscript.setter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TableRowTraitTransformerModifier<A>.TransformTrait(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRowTraitTransformerModifier<A>.TransformTrait, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void type metadata accessor for Attribute<ViewTraitCollection>()
{
  if (!lazy cache variable for type metadata for Attribute<ViewTraitCollection>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingTableRowModifier<DropOntoTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait()
{
  result = lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<DropOntoTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait;
  if (!lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<DropOntoTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<DropOntoTraitKey>.AddTrait, &type metadata for DropOntoTraitKey, &protocol witness table for DropOntoTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
    result = swift_getWitnessTable(protocol conformance descriptor for _TraitWritingTableRowModifier<A>.AddTrait, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<DropOntoTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<Never> and conformance TableRowContentModifierBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<Never> and conformance TableRowContentModifierBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<Never> and conformance TableRowContentModifierBodyAccessor<A>)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for TableRowContentModifierBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for TableRowContentModifierBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<Never> and conformance TableRowContentModifierBodyAccessor<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for TableRowContentModifierBodyAccessor<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(255, a2, a3, a4, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
    result = swift_getWitnessTable(protocol conformance descriptor for _TraitWritingTableRowModifier<A>.AddTrait, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for TableRowContentModifierBodyAccessor(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double UIViewControllerRepresentable._identifiedViewTree(in:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = 2;
  return result;
}

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA020CustomizableDocumentgdE0V_Tt2B5@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD00000000000002FLL, 0x800000018CD4E460);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v22 = a2[6];
    DWORD2(v22) = *(a2 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v6 = v22;
      v7 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v7;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v8 = *(a2 + 1);
      v22 = *a2;
      v23 = v8;
      LODWORD(v20) = v6;
      _ViewInputs.pushIdentity(_:)();
      v9 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v9;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v10 = *(a2 + 1);
      v22 = *a2;
      v23 = v10;
      v11 = _ViewInputs.animatedPosition()();
      v12 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v12;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v13 = *(a2 + 1);
      v22 = *a2;
      v23 = v13;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v15 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v15;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v23 = *(a2 + 1);
      *&v22 = __PAIR64__(v11, v6);
      DWORD2(v22) = v14;
      HIDWORD(v22) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a3 = v19[0];
    a3[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD00000000000002FLL, 0x800000018CD4E460);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<CustomizableDocumentViewControllerRepresentable>, &type metadata for CustomizableDocumentViewControllerRepresentable, &protocol witness table for CustomizableDocumentViewControllerRepresentable, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v20) = Attribute.unsafeBitCast<A>(to:)();
      v16 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v16;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v17 = *(a2 + 1);
      v22 = *a2;
      v23 = v17;
      v18 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = a2[6];
      DWORD2(v22) = *(a2 + 14);
      v20 = a2[6];
      v21 = *(a2 + 14);
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA12TabItemGroupV04HostG0V_Tt2B5@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0x7765695674736F48, 0xE800000000000000);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v22 = a2[6];
    DWORD2(v22) = *(a2 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v6 = v22;
      v7 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v7;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v8 = *(a2 + 1);
      v22 = *a2;
      v23 = v8;
      LODWORD(v20) = v6;
      _ViewInputs.pushIdentity(_:)();
      v9 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v9;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v10 = *(a2 + 1);
      v22 = *a2;
      v23 = v10;
      v11 = _ViewInputs.animatedPosition()();
      v12 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v12;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v13 = *(a2 + 1);
      v22 = *a2;
      v23 = v13;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v15 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v15;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v23 = *(a2 + 1);
      *&v22 = __PAIR64__(v11, v6);
      DWORD2(v22) = v14;
      HIDWORD(v22) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a3 = v19[0];
    a3[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0x7765695674736F48, 0xE800000000000000);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<TabItemGroup.HostView>, &type metadata for TabItemGroup.HostView, &protocol witness table for TabItemGroup.HostView, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v20) = Attribute.unsafeBitCast<A>(to:)();
      v16 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v16;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v17 = *(a2 + 1);
      v22 = *a2;
      v23 = v17;
      v18 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = a2[6];
      DWORD2(v22) = *(a2 + 14);
      v20 = a2[6];
      v21 = *(a2 + 14);
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA017UIKitAdaptableTabG033_297C74A0A9EE1F5608C7BAFAEAD53B28LLV_Tt2B5@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD00000000000003CLL, 0x800000018CD4E610);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v22 = a2[6];
    DWORD2(v22) = *(a2 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v6 = v22;
      v7 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v7;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v8 = *(a2 + 1);
      v22 = *a2;
      v23 = v8;
      LODWORD(v20) = v6;
      _ViewInputs.pushIdentity(_:)();
      v9 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v9;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v10 = *(a2 + 1);
      v22 = *a2;
      v23 = v10;
      v11 = _ViewInputs.animatedPosition()();
      v12 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v12;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v13 = *(a2 + 1);
      v22 = *a2;
      v23 = v13;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v15 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v15;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v23 = *(a2 + 1);
      *&v22 = __PAIR64__(v11, v6);
      DWORD2(v22) = v14;
      HIDWORD(v22) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a3 = v19[0];
    a3[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitAdaptableTabView(0), (AGTypeID.isValueType.getter() & 1) == 0))
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD00000000000003CLL, 0x800000018CD4E610);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<UIKitAdaptableTabView>, type metadata accessor for UIKitAdaptableTabView, &protocol witness table for UIKitAdaptableTabView, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      type metadata accessor for UIKitAdaptableTabView(0);
      LODWORD(v20) = Attribute.unsafeBitCast<A>(to:)();
      v16 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v16;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v17 = *(a2 + 1);
      v22 = *a2;
      v23 = v17;
      v18 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = a2[6];
      DWORD2(v22) = *(a2 + 14);
      v20 = a2[6];
      v21 = *(a2 + 14);
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA023CustomizableURLDocumentgdE033_C5D9187052031207E3ECDA2B55F1D5F4LLV_Tt2B5@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD000000000000059, 0x800000018CD4E2E0);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v22 = a2[6];
    DWORD2(v22) = *(a2 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v6 = v22;
      v7 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v7;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v8 = *(a2 + 1);
      v22 = *a2;
      v23 = v8;
      LODWORD(v20) = v6;
      _ViewInputs.pushIdentity(_:)();
      v9 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v9;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v10 = *(a2 + 1);
      v22 = *a2;
      v23 = v10;
      v11 = _ViewInputs.animatedPosition()();
      v12 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v12;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v13 = *(a2 + 1);
      v22 = *a2;
      v23 = v13;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v15 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v15;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v23 = *(a2 + 1);
      *&v22 = __PAIR64__(v11, v6);
      DWORD2(v22) = v14;
      HIDWORD(v22) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a3 = v19[0];
    a3[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD000000000000059, 0x800000018CD4E2E0);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<CustomizableURLDocumentViewControllerRepresentable>, &type metadata for CustomizableURLDocumentViewControllerRepresentable, &protocol witness table for CustomizableURLDocumentViewControllerRepresentable, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v20) = Attribute.unsafeBitCast<A>(to:)();
      v16 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v16;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v17 = *(a2 + 1);
      v22 = *a2;
      v23 = v17;
      v18 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = a2[6];
      DWORD2(v22) = *(a2 + 14);
      v20 = a2[6];
      v21 = *(a2 + 14);
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA017BridgedNavigationG033_5CA1A8E478DE1CCC152817066BF4C09BLLV_Tt2B5@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD00000000000003CLL, 0x800000018CD4E3A0);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v22 = a2[6];
    DWORD2(v22) = *(a2 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v6 = v22;
      v7 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v7;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v8 = *(a2 + 1);
      v22 = *a2;
      v23 = v8;
      LODWORD(v20) = v6;
      _ViewInputs.pushIdentity(_:)();
      v9 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v9;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v10 = *(a2 + 1);
      v22 = *a2;
      v23 = v10;
      v11 = _ViewInputs.animatedPosition()();
      v12 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v12;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v13 = *(a2 + 1);
      v22 = *a2;
      v23 = v13;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v15 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v15;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v23 = *(a2 + 1);
      *&v22 = __PAIR64__(v11, v6);
      DWORD2(v22) = v14;
      HIDWORD(v22) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a3 = v19[0];
    a3[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD00000000000003CLL, 0x800000018CD4E3A0);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<BridgedNavigationView>, &type metadata for BridgedNavigationView, &protocol witness table for BridgedNavigationView, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v20) = Attribute.unsafeBitCast<A>(to:)();
      v16 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v16;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v17 = *(a2 + 1);
      v22 = *a2;
      v23 = v17;
      v18 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = a2[6];
      DWORD2(v22) = *(a2 + 14);
      v20 = a2[6];
      v21 = *(a2 + 14);
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

void *specialized WithCommandFlag.SetFlag.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  v2 = type metadata accessor for CommandsList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v13 - v7);
  if (*MEMORY[0x1E698D3F8] == v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = *AGGraphGetValue();
  }

  _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
  *v8 = *AGGraphGetValue();
  type metadata accessor for CommandsList.Item.Value(0);
  swift_storeEnumTagMultiPayload();
  DisplayList.Version.init(forUpdate:)();
  *(v8 + *(v2 + 20)) = v13[1];
  outlined init with copy of SearchToolbarItem(v8, v5, type metadata accessor for CommandsList.Item);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  outlined destroy of PrimitiveAdaptableTabView.BodyContent(v8, type metadata accessor for CommandsList.Item);
  v9[2] = v11 + 1;
  outlined init with take of ArchivableLinkModifier(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, type metadata accessor for CommandsList.Item);
  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CustomizableDocumentViewControllerRepresentable@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA020CustomizableDocumentgdE0V_Tt2B5(v6, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance TabItemGroup.HostView@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA12TabItemGroupV04HostG0V_Tt2B5(v6, a3);
}

double specialized UpdateEnvironment.value.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = Value[1];
  *a2 = *Value;
  a2[1] = v5;
  _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();
  if (v5)
  {
    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  specialized static InspectorBarManagement.makeBridgeProperties(modifier:properties:)(a1, &v7);
  _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v5)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double specialized UpdateEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;
  _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();
  if (v4)
  {
    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  specialized static NavigationCommonTransformBridgeProperties.makeBridgeProperties(properties:)(&v6);
  _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, __n128 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  v102 = 0uLL;
  *v103 = 0;
  *&v103[8] = a9;
  outlined init with copy of ViewGraphBridgeProperties?(&v102, &v97, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
  if (*(&v98 + 1) == 7)
  {
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(&v102, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
    v17 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a2);
    v18 = *(v17 + 2);
    if (!v18)
    {
    }
  }

  else
  {
    type metadata accessor for [ContentScrollViewBox](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    v20 = v97;
    v21 = v98;
    *(v19 + 16) = xmmword_18CD63400;
    *(v19 + 32) = v20;
    *(v19 + 48) = v21;
    *(v19 + 64) = v99;
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(&v102, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6720]);
    v17 = v19;
    v18 = *(v19 + 16);
    if (!v18)
    {
    }
  }

  v22 = 0;
  v23 = (v17 + 32);
  v80 = v18 - 1;
  v82 = a4;
  v81 = v17;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(v23, v113);
    v24 = *a1;
    if (*(*a1 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v113), (v26 & 1) != 0))
    {
      v27 = *(v24 + 56) + 80 * v25;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 16);
      *&v104[9] = *(v27 + 57);
      v102 = *v27;
      *v103 = v30;
      *&v103[16] = v29;
      *v104 = v28;
      v31 = *&v104[16];
      v33 = *(&v102 + 1);
      v32 = v30;
      v91 = v102;
      v34 = BYTE1(v102);
      v35 = *(v27 + 2);
      v112 = *(v27 + 6);
      v111 = v35;
      v36 = BYTE8(v30);
      v37 = *(v27 + 25);
      *(v110 + 3) = *(v27 + 28);
      v110[0] = v37;
      v89 = v29;
      v109 = BYTE8(v29);
      v38 = *(v27 + 41);
      *(v108 + 3) = *(v27 + 44);
      v108[0] = v38;
      v93 = v28;
      v107 = BYTE8(v28);
      v39 = BYTE9(v28);
      v40 = BYTE10(v28);
      v41 = *(v27 + 59);
      v106 = *(v27 + 63);
      v105 = v41;
      v86 = v104[24];
      outlined init with copy of ToolbarAppearanceConfiguration(&v102, &v97);
      v95 = v33;
      v96 = v31;
      v94 = v32;
      v42 = v89;
    }

    else
    {
      v86 = 0;
      v95 = 0;
      v96 = 0;
      v40 = 0;
      v93 = 0;
      v94 = 0;
      v42 = 0;
      v36 = 0;
      v34 = 0;
      v109 = 1;
      v91 = 1;
      v107 = 1;
      v39 = 2;
    }

    if (a3 == 3)
    {
      v43 = v34;
    }

    else
    {
      v43 = a3;
    }

    v90 = v43;
    if (v82)
    {

      v94 = v82;
    }

    if (a5 == 4)
    {
      v44 = v36;
    }

    else
    {
      v44 = a5;
    }

    if ((a7 & 1) == 0)
    {
      v109 = 0;
      v42 = a6;
    }

    if ((a10 & 1) == 0)
    {
      v107 = 0;
      v93 = a8;
    }

    if (a11 == 2)
    {
      v45 = v39;
    }

    else
    {
      v45 = a11;
    }

    if (a12 == 3)
    {
      v46 = v40;
    }

    else
    {
      v46 = a12;
    }

    v87 = v46;
    v88 = v45;
    if (a13)
    {

      v95 = a13;
    }

    if (a14)
    {

      v96 = a14;
    }

    v47 = a15 == 3 ? v86 : a15;
    outlined init with copy of ToolbarPlacement.Role(v113, v101);
    LOBYTE(v102) = v91;
    BYTE1(v102) = v90;
    *(&v102 + 2) = v111;
    WORD3(v102) = v112;
    *(&v102 + 1) = v95;
    *v103 = v94;
    v48 = v44;
    v103[8] = v44;
    *&v103[9] = v110[0];
    *&v103[12] = *(v110 + 3);
    v49 = v42;
    *&v103[16] = v42;
    v50 = v109;
    v103[24] = v109;
    *&v103[28] = *(v108 + 3);
    *&v103[25] = v108[0];
    *v104 = v93;
    v51 = v107;
    v104[8] = v107;
    v104[9] = v88;
    v104[10] = v87;
    *&v104[11] = v105;
    v104[15] = v106;
    *&v104[16] = v96;
    v104[24] = v47;
    outlined init with copy of ToolbarAppearanceConfiguration(&v102, &v97);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *a1;
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
    v56 = v53[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      break;
    }

    v60 = v55;
    if (v53[3] < v59)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v59, isUniquelyReferenced_nonNull_native);
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_51;
      }

LABEL_40:
      if (v60)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v69 = v54;
    specialized _NativeDictionary.copy()();
    v54 = v69;
    if (v60)
    {
LABEL_41:
      v62 = (v53[7] + 80 * v54);
      v97 = *v62;
      v63 = v62[1];
      v64 = v62[2];
      v65 = v62[3];
      *&v100[9] = *(v62 + 57);
      v99 = v64;
      *v100 = v65;
      v98 = v63;
      v67 = *&v103[16];
      v66 = *v104;
      v68 = *v103;
      *(v62 + 57) = *&v104[9];
      v62[2] = v67;
      v62[3] = v66;
      v62[1] = v68;
      *v62 = v102;
      outlined destroy of ToolbarAppearanceConfiguration(&v97);
      outlined destroy of ToolbarPlacement.Role(v101);
      outlined destroy of ToolbarPlacement.Role(v113);
      goto LABEL_45;
    }

LABEL_43:
    v53[(v54 >> 6) + 8] |= 1 << v54;
    v70 = v54;
    outlined init with copy of ToolbarPlacement.Role(v101, v53[6] + 40 * v54);
    v71 = (v53[7] + 80 * v70);
    v72 = *&v104[9];
    v74 = *&v103[16];
    v73 = *v104;
    v71[1] = *v103;
    v71[2] = v74;
    v71[3] = v73;
    *(v71 + 57) = v72;
    *v71 = v102;
    outlined destroy of ToolbarPlacement.Role(v101);
    outlined destroy of ToolbarPlacement.Role(v113);
    v75 = v53[2];
    v58 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v58)
    {
      goto LABEL_50;
    }

    v53[2] = v76;
LABEL_45:
    *a1 = v53;
    LOBYTE(v97) = v91;
    BYTE1(v97) = v90;
    *(&v97 + 2) = v111;
    WORD3(v97) = v112;
    *(&v97 + 1) = v95;
    *&v98 = v94;
    BYTE8(v98) = v48;
    *(&v98 + 9) = v110[0];
    HIDWORD(v98) = *(v110 + 3);
    *&v99 = v49;
    BYTE8(v99) = v50;
    HIDWORD(v99) = *(v108 + 3);
    *(&v99 + 9) = v108[0];
    *v100 = v93;
    v100[8] = v51;
    v100[9] = v88;
    v100[10] = v87;
    v100[15] = v106;
    *&v100[11] = v105;
    *&v100[16] = v96;
    v100[24] = v47;
    outlined destroy of ToolbarAppearanceConfiguration(&v97);
    if (v80 == v22)
    {
    }

    ++v22;
    v23 += 40;
    if (v22 >= *(v81 + 2))
    {
      __break(1u);
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t key path getter for EnvironmentValues.fontModifiers : EnvironmentValues@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.fontModifiers.getter();
  *a3 = result;
  return result;
}

double UIViewControllerRepresentableContext.environment.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

void UIViewControllerRepresentableContext.animate(changes:completion:)(uint64_t (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = Transaction.animation.getter();
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = Transaction.disablesAnimations.getter();
  if ((v10 & 1) == 0)
  {
    v21[1] = v21;
    MEMORY[0x1EEE9AC00](v10);
    v20[2] = a1;
    v20[3] = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = -1;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for thunk for @callee_guaranteed () -> (@error @owned Error);
    *(v14 + 24) = v20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = _sxs5Error_pIgrzo_xsAA_pIegrzo_lTRyt_Tg5TA_0;
    v15[4] = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = _sSo6UIViewC7SwiftUIE7animate_7changes10completionyAC9AnimationV_yyXEyycSgtFZySb_SbtcfU_TA_0;
    *(v16 + 24) = v12;

    outlined copy of AppIntentExecutor?(a3, a4);
    static UIView.animate(bridgedAnimation:animations:completion:)();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v18 = *(v13 + 24);
      if (v18 != 255)
      {
        if ((v18 & 1) == 0)
        {

          return;
        }

LABEL_13:
        v22 = *(v13 + 16);
        v19 = v22;
        type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
        swift_willThrowTypedImpl();
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  v11 = a1(v9);
  if (a3)
  {
    a3(v11);
  }
}

uint64_t UnsupportedDisplayList.value.getter(uint64_t a1)
{
  DisplayList.Version.init(forUpdate:)();
  if (v11)
  {
    v1 = (2 * (((33 * WORD1(v11)) ^ v11) & 0x7FFFLL)) | 1;
  }

  else
  {
    v1 = 0;
  }

  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E697E990];
  *(v2 + 40) = MEMORY[0x1E697E9A0];
  *(v2 + 48) = v3;
  *&v11 = v2 | 0x9000000000000000;
  *(&v11 + 1) = v1;
  v12 = 0uLL;
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v11) = 0;
  DisplayList.Item.canonicalize(options:)();
  v9[2] = v7;
  v10[0] = *v8;
  *(v10 + 12) = *&v8[12];
  v9[0] = v5;
  v9[1] = v6;
  outlined init with copy of DisplayList.Item(v9, &v11);
  DisplayList.init(_:)();
  v13 = v7;
  v14[0] = *v8;
  *(v14 + 12) = *&v8[12];
  v11 = v5;
  v12 = v6;
  return outlined destroy of DisplayList.Item(&v11);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitAdaptableTabView@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA017UIKitAdaptableTabG033_297C74A0A9EE1F5608C7BAFAEAD53B28LLV_Tt2B5(v6, a3);
}

double specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(void *a1, uint64_t a2)
{
  if (*AGGraphGetValue() == 1 && (*(AGGraphGetValue() + 8) & 1) == 0)
  {

    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v4 = *(&static AccessibilityNodesKey.defaultValue + 1);
    *a1 = static AccessibilityNodesKey.defaultValue;
    a1[1] = v4;
  }

  return result;
}

uint64_t specialized CommandGroup.MakeList.value.getter(uint64_t a1)
{
  type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CommandsList.Item(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of SearchToolbarItem(Value, v3, type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>);
  outlined init with take of ArchivableLinkModifier(v3, v8, type metadata accessor for CommandOperation);
  type metadata accessor for CommandsList.Item.Value(0);
  swift_storeEnumTagMultiPayload();
  DisplayList.Version.init(forUpdate:)();
  *&v8[*(v5 + 28)] = v13[1];
  type metadata accessor for Binding<AttributedString>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandsList.Item>, type metadata accessor for CommandsList.Item, MEMORY[0x1E69E6F90]);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  outlined init with take of ArchivableLinkModifier(v8, v11 + v10, type metadata accessor for CommandsList.Item);
  return v11;
}

uint64_t specialized MakeRepresentable.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = BYTE4(a1);
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0);
  Value = AGGraphGetValue();
  v7 = *Value + *((*MEMORY[0x1E69E7D40] & **Value) + 0x110);
  swift_beginAccess();
  if (*(v7 + 8))
  {
    v8 = MEMORY[0x1E6981948];
    outlined init with copy of ViewGraphBridgeProperties?(v7, &v20, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
    type metadata accessor for [ContentScrollViewBox](0, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v8);
    MEMORY[0x18D00ACC0](v22);
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(&v20, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v8);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
  }

  _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(v22, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  v9 = *AGGraphGetValue();
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v12 = HIDWORD(v10);
  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v15 = HIDWORD(v13);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v18 = HIDWORD(v16);
  result = AGCreateWeakAttribute();
  *a4 = v9;
  *(a4 + 8) = v4 & 1;
  *(a4 + 9) = v20;
  *(a4 + 11) = v21;
  *(a4 + 12) = v11;
  *(a4 + 16) = v12;
  *(a4 + 20) = v14;
  *(a4 + 24) = v15;
  *(a4 + 28) = v17;
  *(a4 + 32) = v18;
  *(a4 + 36) = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CustomizableURLDocumentViewControllerRepresentable@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA023CustomizableURLDocumentgdE033_C5D9187052031207E3ECDA2B55F1D5F4LLV_Tt2B5(v6, a3);
}

uint64_t specialized ArchivableDisplayList.value.getter(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v4 = a1;
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    DisplayList.init()();
    v5 = v31;
    v19 = v32;
    v18 = v33;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v19 = *(Value + 8);
    v18 = *(Value + 12);
  }

  v7 = swift_allocObject();
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 9);
  AGGraphGetValue();
  v12 = MEMORY[0x18D00B390]();
  v14 = v13;
  type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>(0);
  v7[5] = v15;
  v7[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, protocol conformance descriptor for ArchivableFactory<A>);
  v16 = swift_allocObject();
  v7[2] = v16;
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  *(v16 + 25) = v11;
  *(v16 + 28) = v4;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v27 = v7;
  *(&v27 + 1) = 0xD00000000;
  *&v28 = v5;
  *(&v28 + 1) = v19 | (v18 << 32) | 0x40000000;

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v27) = a4;
  DisplayList.Item.canonicalize(options:)();
  v25[2] = v23;
  v26[0] = *v24;
  *(v26 + 12) = *&v24[12];
  v25[0] = v21;
  v25[1] = v22;
  outlined init with copy of DisplayList.Item(v25, &v27);
  DisplayList.init(_:)();

  v29 = v23;
  v30[0] = *v24;
  *(v30 + 12) = *&v24[12];
  v27 = v21;
  v28 = v22;
  return outlined destroy of DisplayList.Item(&v27);
}

{
  v4 = a1;
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    DisplayList.init()();
    v5 = v30;
    v18 = v31;
    v6 = v32;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v18 = *(Value + 8);
    v6 = *(Value + 12);
  }

  v8 = swift_allocObject();
  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 8);
  outlined copy of Environment<Selector?>.Content(*v9, v11);
  AGGraphGetValue();
  v12 = MEMORY[0x18D00B390]();
  v14 = v13;
  type metadata accessor for ArchivableFactory<InvalidatableContentModifier>(0);
  v8[5] = v15;
  v8[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type ArchivableFactory<InvalidatableContentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<InvalidatableContentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  v16 = swift_allocObject();
  v8[2] = v16;
  *(v16 + 16) = v10;
  *(v16 + 24) = v11;
  *(v16 + 28) = v4;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v26 = v8;
  *(&v26 + 1) = 0xD00000000;
  *&v27 = v5;
  *(&v27 + 1) = v18 | (v6 << 32) | 0x40000000;

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v26) = a4;
  DisplayList.Item.canonicalize(options:)();
  v24[2] = v22;
  v25[0] = *v23;
  *(v25 + 12) = *&v23[12];
  v24[0] = v20;
  v24[1] = v21;
  outlined init with copy of DisplayList.Item(v24, &v26);
  DisplayList.init(_:)();

  v28 = v22;
  v29[0] = *v23;
  *(v29 + 12) = *&v23[12];
  v26 = v20;
  v27 = v21;
  return outlined destroy of DisplayList.Item(&v26);
}

{
  v4 = a1;
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    DisplayList.init()();
    v5 = v44;
    v6 = v45;
    v7 = v46;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v6 = *(Value + 8);
    v7 = *(Value + 12);
    v44 = *Value;
    v45 = v6;
    v46 = v7;
  }

  v9 = swift_allocObject();
  v10 = AGGraphGetValue();
  v31 = *v10;
  v12 = *(v10 + 32);
  v11 = *(v10 + 48);
  v13 = *(v10 + 16);
  v35 = *(v10 + 64);
  v33 = v12;
  v34 = v11;
  v32 = v13;
  outlined init with copy of ArchivableToggleAppIntentModifier(&v31, &v40);
  v14 = AGGraphGetValue();
  v15 = v14[1];
  v40 = *v14;
  v41 = v15;
  v16 = MEMORY[0x18D00B390]();
  v18 = v17;
  type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>(0);
  v9[5] = v19;
  v9[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableToggleAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  v20 = swift_allocObject();
  v9[2] = v20;
  v21 = v34;
  *(v20 + 48) = v33;
  *(v20 + 64) = v21;
  *(v20 + 80) = v35;
  v22 = v32;
  *(v20 + 16) = v31;
  *(v20 + 32) = v22;
  *(v20 + 84) = v4;
  *(v20 + 88) = v16;
  *(v20 + 96) = v18;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v40 = v9;
  *(&v40 + 1) = 0xD00000000;
  *&v41 = v5;
  *(&v41 + 1) = v6 | (v7 << 32) | 0x40000000;

  v23 = AGGraphGetValue();
  v24 = v23[1];
  v36 = *v23;
  v37 = v24;
  MEMORY[0x18D00B390]();
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v40) = a4;
  DisplayList.Item.canonicalize(options:)();
  v38 = v29;
  v39[0] = *v30;
  *(v39 + 12) = *&v30[12];
  v36 = v27;
  v37 = v28;
  outlined init with copy of DisplayList.Item(&v36, &v40);
  DisplayList.init(_:)();

  v42 = v29;
  v43[0] = *v30;
  *(v43 + 12) = *&v30[12];
  v40 = v27;
  v41 = v28;
  return outlined destroy of DisplayList.Item(&v40);
}

{
  v4 = a1;
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    DisplayList.init()();
    v20 = v32;
    v19 = v33;
    v18 = v34;
  }

  else
  {
    Value = AGGraphGetValue();
    v19 = *(Value + 8);
    v18 = *(Value + 12);
    v20 = *Value;
  }

  v6 = swift_allocObject();
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v7, v9, v10);

  AGGraphGetValue();
  v12 = MEMORY[0x18D00B390]();
  v14 = v13;
  type metadata accessor for ArchivableFactory<ArchivableAccessibilityViewModifier>(0);
  v6[5] = v15;
  v6[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableAccessibilityViewModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  v16 = swift_allocObject();
  v6[2] = v16;
  *(v16 + 16) = v8;
  *(v16 + 24) = v9;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 48) = v4;
  *(v16 + 56) = v12;
  *(v16 + 64) = v14;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v28 = v6;
  *(&v28 + 1) = 0xD00000000;
  *&v29 = v20;
  *(&v29 + 1) = v19 | (v18 << 32) | 0x40000000;

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v28) = a4;
  DisplayList.Item.canonicalize(options:)();
  v26[2] = v24;
  v27[0] = *v25;
  *(v27 + 12) = *&v25[12];
  v26[0] = v22;
  v26[1] = v23;
  outlined init with copy of DisplayList.Item(v26, &v28);
  DisplayList.init(_:)();

  v30 = v24;
  v31[0] = *v25;
  *(v31 + 12) = *&v25[12];
  v28 = v22;
  v29 = v23;
  return outlined destroy of DisplayList.Item(&v28);
}

{
  v4 = a1;
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    DisplayList.init()();
    v22 = v35;
    v21 = v36;
    v20 = v37;
  }

  else
  {
    Value = AGGraphGetValue();
    v21 = *(Value + 8);
    v20 = *(Value + 12);
    v22 = *Value;
  }

  v6 = swift_allocObject();
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 40);
  v12 = *(v7 + 48);
  v24 = *(v7 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v7, v9, v10);
  v13 = v24;

  AGGraphGetValue();
  v14 = MEMORY[0x18D00B390]();
  v16 = v15;
  type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>(0);
  v6[5] = v17;
  v6[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableButtonAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  v18 = swift_allocObject();
  v6[2] = v18;
  *(v18 + 16) = v8;
  *(v18 + 24) = v9;
  *(v18 + 32) = v10;
  *(v18 + 40) = v24;
  *(v18 + 56) = v11;
  *(v18 + 64) = v12;
  *(v18 + 68) = v4;
  *(v18 + 72) = v14;
  *(v18 + 80) = v16;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v31 = v6;
  *(&v31 + 1) = 0xD00000000;
  *&v32 = v22;
  *(&v32 + 1) = v21 | (v20 << 32) | 0x40000000;

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v31) = a4;
  DisplayList.Item.canonicalize(options:)();
  v29[2] = v27;
  v30[0] = *v28;
  *(v30 + 12) = *&v28[12];
  v29[0] = v25;
  v29[1] = v26;
  outlined init with copy of DisplayList.Item(v29, &v31);
  DisplayList.init(_:)();

  v33 = v27;
  v34[0] = *v28;
  *(v34 + 12) = *&v28[12];
  v31 = v25;
  v32 = v26;
  return outlined destroy of DisplayList.Item(&v31);
}

{
  v4 = a1;
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    DisplayList.init()();
    v20 = v32;
    v19 = v33;
    v18 = v34;
  }

  else
  {
    Value = AGGraphGetValue();
    v19 = *(Value + 8);
    v18 = *(Value + 12);
    v20 = *Value;
  }

  v6 = swift_allocObject();
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v7, v9, v10);

  AGGraphGetValue();
  v12 = MEMORY[0x18D00B390]();
  v14 = v13;
  type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>(0);
  v6[5] = v15;
  v6[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableAccessibilityActionModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>, protocol conformance descriptor for ArchivableFactory<A>);
  v16 = swift_allocObject();
  v6[2] = v16;
  *(v16 + 16) = v8;
  *(v16 + 24) = v9;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 48) = v4;
  *(v16 + 56) = v12;
  *(v16 + 64) = v14;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v28 = v6;
  *(&v28 + 1) = 0xD00000000;
  *&v29 = v20;
  *(&v29 + 1) = v19 | (v18 << 32) | 0x40000000;

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v28) = a4;
  DisplayList.Item.canonicalize(options:)();
  v26[2] = v24;
  v27[0] = *v25;
  *(v27 + 12) = *&v25[12];
  v26[0] = v22;
  v26[1] = v23;
  outlined init with copy of DisplayList.Item(v26, &v28);
  DisplayList.init(_:)();

  v30 = v24;
  v31[0] = *v25;
  *(v31 + 12) = *&v25[12];
  v28 = v22;
  v29 = v23;
  return outlined destroy of DisplayList.Item(&v28);
}