uint64_t PausedFormatStyle.discreteInput(after:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a3;
  v60 = a1;
  v6 = a2[4];
  v56 = a2[2];
  v57 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v47 - v8;
  _s10Foundation4DateVSgMaTm_4(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = AssociatedTypeWitness;
  v55 = &v47 - v17;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  dispatch thunk of DiscreteFormatStyle.discreteInput(after:)();
  v24 = v4;
  PausedFormatStyle.endDate.getter(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    _s10Foundation4DateVSgWOhTm_3(v11, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    return (*(v19 + 32))(v59, v23, v18);
  }

  else
  {
    v49 = v23;
    v50 = v19;
    v51 = v18;
    v26 = v55;
    (*(v13 + 32))(v55, v11, v12);
    v27 = *(v57 + 48);
    v28 = v60;
    v60 = v24;
    v27(v28, v56);
    v29 = static Date.< infix(_:_:)();
    v30 = *(v13 + 8);
    v30(v15, v12);
    if (v29)
    {
      v48 = v30;
      v32 = v49;
      v31 = v50;
      v33 = v51;
      v34 = v52;
      (*(v50 + 16))(v52, v49, v51);
      v35 = v54;
      if ((*(v58 + 48))(v34, 1, v54) == 1)
      {
        v36 = *(v31 + 8);
        v36(v34, v33);
        (*(v57 + 72))(v56);
        v48(v55, v12);
        return (v36)(v32, v33);
      }

      else
      {
        v37 = *(v58 + 32);
        v38 = v53;
        v52 = (v58 + 32);
        v47 = v37;
        v37(v53, v34, v35);
        v39 = v38;
        v41 = v56;
        v40 = v57;
        (v27)(v39, v56, v57);
        v42 = v55;
        v43 = static Date.< infix(_:_:)();
        v44 = v48;
        v48(v15, v12);
        if (v43)
        {
          v44(v42, v12);
          (*(v50 + 8))(v49, v51);
          v45 = v59;
          v46 = v54;
          v47(v59, v53, v54);
          return (*(v58 + 56))(v45, 0, 1, v46);
        }

        else
        {
          (*(v40 + 72))(v41, v40);
          (*(v58 + 8))(v53, v54);
          v44(v42, v12);
          return (*(v50 + 8))(v49, v51);
        }
      }
    }

    else
    {
      v30(v26, v12);
      (*(v50 + 8))(v49, v51);
      return (*(v58 + 56))(v59, 1, 1, v54);
    }
  }
}

uint64_t static PausedFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for PausedFormatStyle(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t PausedFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PausedFormatStyle.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1702060386;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t PausedFormatStyle.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v14 = a2[2];
  v15[0] = v14;
  v5 = a2[4];
  v4 = a2[5];
  v13[2] = v3;
  v13[3] = v5;
  v15[1] = v3;
  v15[2] = v5;
  v13[1] = v4;
  v15[3] = v4;
  v6 = type metadata accessor for PausedFormatStyle.CodingKeys(255, v15);
  swift_getWitnessTable(protocol conformance descriptor for PausedFormatStyle<A, B>.CodingKeys, v6);
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15[0]) = 0;
  v11 = v15[5];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    LOBYTE(v15[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t PausedFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v42 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v53 = v16;
  v54 = v17;
  v55 = v18;
  v19 = type metadata accessor for PausedFormatStyle.CodingKeys(255, &v52);
  swift_getWitnessTable(protocol conformance descriptor for PausedFormatStyle<A, B>.CodingKeys, v19);
  v51 = type metadata accessor for KeyedDecodingContainer();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v21 = &v38 - v20;
  v47 = a2;
  v48 = a5;
  v52 = a2;
  v53 = a3;
  v49 = a4;
  v54 = a4;
  v55 = a5;
  v22 = type metadata accessor for PausedFormatStyle(0, &v52);
  v41 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v24;
  v39 = v22;
  v40 = a3;
  v27 = v44;
  v28 = v45;
  v56 = a1;
  v29 = v46;
  v30 = v47;
  LOBYTE(v52) = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = *(v28 + 32);
  v49 = v26;
  v31(v26, v50, v30);
  LOBYTE(v52) = 1;
  v32 = v29;
  v33 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 8))(v21, v51);
  v34 = v39;
  v35 = v49;
  (*(v42 + 32))(&v49[*(v39 + 52)], v32, v33);
  v36 = v41;
  (*(v41 + 16))(v43, v35, v34);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return (*(v36 + 8))(v35, v34);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PausedFormatStyle<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PausedFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PausedFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PausedFormatStyle<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PausedFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PausedFormatStyle<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MixedFormatStyle.base(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ClosedRange();
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    v4 = v3 + *(a2 + 72);
  }

  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v4, v7);
}

uint64_t MixedFormatStyle.effectiveInput(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = v3 + *(a2 + 68);
  v9 = *(a2 + 32);
  type metadata accessor for ClosedRange();
  if (dispatch thunk of static Comparable.> infix(_:_:)() & 1) != 0 && (v10 = *(a2 + 40), v11 = *(a2 + 48), v12 = *(a2 + 56), v14 = AssociatedTypeWitness, v15 = v9, v16 = v10, v17 = v11, v18 = v12, type metadata accessor for TimeDataFormatting.FormatTransition(0, &v14), (dispatch thunk of static Comparable.< infix(_:_:)()) || (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 && (v10 = *(a2 + 40), v11 = *(a2 + 48), v12 = *(a2 + 56), v14 = AssociatedTypeWitness, v15 = v9, v16 = v10, v17 = v11, v18 = v12, type metadata accessor for TimeDataFormatting.FormatTransition(0, &v14), (dispatch thunk of static Comparable.> infix(_:_:)()))
  {
    v14 = AssociatedTypeWitness;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    a1 = v8 + *(type metadata accessor for TimeDataFormatting.FormatTransition(0, &v14) + 60);
  }

  return (*(*(AssociatedTypeWitness - 8) + 16))(a3, a1, AssociatedTypeWitness);
}

uint64_t MixedFormatStyle.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v14 - v11;
  MixedFormatStyle.effectiveInput(for:)(a1, a2, v14 - v11);
  MixedFormatStyle.base(for:)(a2, v8);
  dispatch thunk of FormatStyle.format(_:)();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t MixedFormatStyle.discreteInput(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v93 = a3;
  v7 = *(a2 + 16);
  v91 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v98 = v9;
  v99 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v87 = (&v82 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v90 = (&v82 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  v92 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v29);
  v82 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v86 = &v82 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v84 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v82 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v82 - v39;
  MixedFormatStyle.effectiveInput(for:)(a1, a2, &v82 - v39);
  MixedFormatStyle.base(for:)(a2, v28);
  v95 = v7;
  v96 = v28;
  dispatch thunk of DiscreteFormatStyle.discreteInput(before:)();
  v41 = (v4 + *(a2 + 68));
  v42 = *(a2 + 32);
  v89 = *(type metadata accessor for ClosedRange() + 36);
  v43 = dispatch thunk of static Comparable.> infix(_:_:)();
  v94 = v25;
  if (v43)
  {
    v44 = v99;
    v90 = *(v99 + 16);
    v91 = v41;
    v90(v22, v25, v98);
    v45 = v97;
    v87 = *(v97 + 48);
    if (v87(v22, 1, AssociatedTypeWitness) == 1)
    {
      v46 = v98;
      (*(v44 + 8))(v22, v98);
      v47 = v96;
    }

    else
    {
      (*(v45 + 32))(v37, v22, AssociatedTypeWitness);
      v53 = *(a2 + 56);
      v100[0] = AssociatedTypeWitness;
      v100[1] = v42;
      v101 = *(a2 + 40);
      v102 = v53;
      type metadata accessor for TimeDataFormatting.FormatTransition(0, v100);
      v54 = dispatch thunk of static Comparable.< infix(_:_:)();
      v55 = *(v45 + 8);
      v55(v37, AssociatedTypeWitness);
      v47 = v96;
      v46 = v98;
      if (v54)
      {
        (*(v99 + 8))(v94, v98);
        (*(v92 + 8))(v47, v95);
        v55(v40, AssociatedTypeWitness);
        v56 = v97;
LABEL_11:
        v62 = v93;
        (*(v56 + 16))(v93, v89 + v91, AssociatedTypeWitness);
        return (*(v56 + 56))(v62, 0, 1, AssociatedTypeWitness);
      }
    }

    v57 = v88;
    v58 = v94;
    v90(v88, v94, v46);
    v59 = v46;
    if (v87(v57, 1, AssociatedTypeWitness) == 1)
    {
      v60 = *(v99 + 8);
      v60(v58, v59);
      (*(v92 + 8))(v47, v95);
      v61 = v57;
      v56 = v97;
      (*(v97 + 8))(v40, AssociatedTypeWitness);
      v60(v61, v59);
      goto LABEL_11;
    }

    v64 = v97;
    v65 = v84;
    (*(v97 + 32))(v84, v57, AssociatedTypeWitness);
    v66 = v93;
    max<A>(_:_:)();
    v67 = *(v64 + 8);
    v67(v65, AssociatedTypeWitness);
    (*(v99 + 8))(v58, v46);
    (*(v92 + 8))(v96, v95);
    v67(v40, AssociatedTypeWitness);
    return (*(v64 + 56))(v66, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v49 = v97;
    v48 = v98;
    if ((dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0)
    {
      (*(v92 + 8))(v96, v95);
      (*(v49 + 8))(v40, AssociatedTypeWitness);
      return (*(v99 + 32))(v93, v94, v48);
    }

    v50 = v96;
    dispatch thunk of DiscreteFormatStyle.input(before:)();
    v51 = v87;
    v91 = *(v99 + 16);
    v91(v87, v94, v48);
    v52 = *(v49 + 48);
    if ((v52)(v51, 1, AssociatedTypeWitness) == 1)
    {
      v91 = v52;
      (*(v92 + 8))(v50, v95);
      (*(v49 + 8))(v40, AssociatedTypeWitness);
    }

    else
    {
      v89 = *(v49 + 32);
      v89(v86, v51, AssociatedTypeWitness);
      v51 = v83;
      v91(v83, v90, v48);
      if ((v52)(v51, 1, AssociatedTypeWitness) != 1)
      {
        v76 = v82;
        v89(v82, v51, AssociatedTypeWitness);
        v77 = v93;
        v78 = v86;
        max<A>(_:_:)();
        v79 = *(v49 + 8);
        v79(v76, AssociatedTypeWitness);
        v79(v78, AssociatedTypeWitness);
        v80 = v98;
        v81 = *(v99 + 8);
        v81(v90, v98);
        v81(v94, v80);
        (*(v92 + 8))(v96, v95);
        v79(v40, AssociatedTypeWitness);
        return (*(v49 + 56))(v77, 0, 1, AssociatedTypeWitness);
      }

      v91 = v52;
      v68 = *(v49 + 8);
      v68(v86, AssociatedTypeWitness);
      (*(v92 + 8))(v96, v95);
      v68(v40, AssociatedTypeWitness);
      v48 = v98;
    }

    v69 = v99;
    v70 = *(v99 + 8);
    v71 = v48;
    v70(v51, v48);
    v72 = *(v69 + 32);
    v73 = v85;
    v72(v85, v94, v48);
    v74 = v91;
    if ((v91)(v73, 1, AssociatedTypeWitness) == 1)
    {
      v72(v93, v90, v71);
      result = v74(v73, 1, AssociatedTypeWitness);
      if (result != 1)
      {
        return (v70)(v73, v71);
      }
    }

    else
    {
      v70(v90, v71);
      v75 = v93;
      (*(v49 + 32))(v93, v73, AssociatedTypeWitness);
      return (*(v49 + 56))(v75, 0, 1, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t MixedFormatStyle.discreteInput(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v102 = a3;
  v7 = *(a2 + 16);
  v100 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = type metadata accessor for Optional();
  v108 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v94 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v96 = (&v91 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v99 = (&v91 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v95 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v93 = &v91 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v91 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v91 - v37;
  MixedFormatStyle.effectiveInput(for:)(a1, a2, &v91 - v37);
  MixedFormatStyle.base(for:)(a2, v26);
  v104 = v26;
  v105 = v7;
  dispatch thunk of DiscreteFormatStyle.discreteInput(after:)();
  v39 = v4 + *(a2 + 68);
  v40 = *(a2 + 32);
  v41 = dispatch thunk of static Comparable.< infix(_:_:)();
  v106 = v23;
  if (v41)
  {
    v98 = v38;
    v42 = v108;
    v43 = v103;
    v99 = *(v108 + 16);
    v100 = v39;
    v99(v20, v23, v103);
    v44 = v107;
    v96 = *(v107 + 48);
    if (v96(v20, 1, AssociatedTypeWitness) == 1)
    {
      (*(v42 + 8))(v20, v43);
      v45 = v43;
    }

    else
    {
      (*(v44 + 32))(v35, v20, AssociatedTypeWitness);
      v58 = *(a2 + 56);
      v109[0] = AssociatedTypeWitness;
      v109[1] = v40;
      v110 = *(a2 + 40);
      v111 = v58;
      type metadata accessor for TimeDataFormatting.FormatTransition(0, v109);
      v59 = dispatch thunk of static Comparable.> infix(_:_:)();
      v60 = *(v44 + 8);
      v60(v35, AssociatedTypeWitness);
      v45 = v43;
      if (v59)
      {
        (*(v108 + 8))(v106, v43);
        (*(v101 + 8))(v104, v105);
        v60(v98, AssociatedTypeWitness);
        v61 = v107;
        v62 = v102;
        (*(v107 + 16))(v102, v100, AssociatedTypeWitness);
        return (*(v61 + 56))(v62, 0, 1, AssociatedTypeWitness);
      }
    }

    v64 = v97;
    v65 = AssociatedTypeWitness;
    v66 = v106;
    v99(v97, v106, v45);
    if (v96(v64, 1, v65) == 1)
    {
      v67 = *(v108 + 8);
      v67(v66, v45);
      (*(v101 + 8))(v104, v105);
      v68 = v107;
      (*(v107 + 8))(v98, v65);
      v67(v64, v45);
      v69 = v102;
      (*(v68 + 16))(v102, v100, v65);
      return (*(v68 + 56))(v69, 0, 1, v65);
    }

    else
    {
      v70 = v107;
      v71 = v93;
      (*(v107 + 32))(v93, v64, v65);
      v72 = v102;
      min<A>(_:_:)();
      v73 = *(v70 + 8);
      v73(v71, v65);
      (*(v108 + 8))(v66, v45);
      (*(v101 + 8))(v104, v105);
      v73(v98, v65);
      return (*(v70 + 56))(v72, 0, 1, v65);
    }
  }

  else
  {
    v46 = v107;
    v47 = v103;
    type metadata accessor for ClosedRange();
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      (*(v101 + 8))(v104, v105);
      (*(v46 + 8))(v38, AssociatedTypeWitness);
      return (*(v108 + 32))(v102, v106, v47);
    }

    v98 = v38;
    v48 = v104;
    v49 = v105;
    dispatch thunk of DiscreteFormatStyle.input(after:)();
    v50 = *(v108 + 16);
    v51 = v96;
    v50(v96, v106, v47);
    v52 = AssociatedTypeWitness;
    v53 = *(v46 + 48);
    v100 = v52;
    if ((v53)(v51, 1) == 1)
    {
      (*(v101 + 8))(v48, v49);
      v54 = v100;
      (*(v46 + 8))(v98, v100);
      v55 = v51;
      v56 = v53;
      v57 = v54;
    }

    else
    {
      v74 = v100;
      v97 = *(v46 + 32);
      (v97)(v95, v51, v100);
      v75 = v92;
      v76 = v99;
      v50(v92, v99, v47);
      if (v53(v75, 1, v74) != 1)
      {
        v83 = v91;
        v84 = v100;
        (v97)(v91, v75, v100);
        v85 = v102;
        v86 = v95;
        min<A>(_:_:)();
        v87 = v107;
        v88 = *(v107 + 8);
        v88(v83, v84);
        v88(v86, v84);
        v89 = *(v108 + 8);
        v90 = v103;
        v89(v76, v103);
        v89(v106, v90);
        (*(v101 + 8))(v104, v105);
        v88(v98, v84);
        return (*(v87 + 56))(v85, 0, 1, v84);
      }

      v56 = v53;
      v46 = v107;
      v77 = *(v107 + 8);
      v57 = v100;
      v77(v95, v100);
      (*(v101 + 8))(v104, v105);
      v77(v98, v57);
      v55 = v75;
      v47 = v103;
    }

    v78 = v108;
    v79 = *(v108 + 8);
    v79(v55, v47);
    v80 = *(v78 + 32);
    v81 = v94;
    v80(v94, v106, v47);
    if (v56(v81, 1, v57) == 1)
    {
      v80(v102, v99, v47);
      result = v56(v81, 1, v57);
      if (result != 1)
      {
        return (v79)(v81, v47);
      }
    }

    else
    {
      v79(v99, v47);
      v82 = v102;
      (*(v46 + 32))(v102, v81, v57);
      return (*(v46 + 56))(v82, 0, 1, v57);
    }
  }

  return result;
}

uint64_t MixedFormatStyle.input(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v18 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17 - v14;
  MixedFormatStyle.effectiveInput(for:)(a1, a2, &v17 - v14);
  MixedFormatStyle.base(for:)(a2, v9);
  v18(v15, v6, v11);
  (*(v7 + 8))(v9, v6);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

uint64_t static MixedFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v20[0] = a3, v20[1] = a4, v20[2] = a5, v20[3] = a6, v20[4] = a7, v20[5] = a8, v16 = *(type metadata accessor for MixedFormatStyle(0, v20) + 68), AssociatedTypeWitness = swift_getAssociatedTypeWitness(), (static TimeDataFormatting.FormatTransition.== infix(_:_:)(a1 + v16, a2 + v16, AssociatedTypeWitness, a5, a6, a7, a8)))
  {
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t MixedFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572726566657270 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MixedFormatStyle.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6572726566657270;
  }

  if (a1 == 1)
  {
    return 0x697469736E617274;
  }

  return 0x6B6361626C6C6166;
}

uint64_t MixedFormatStyle.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v25 = a2[2];
  AssociatedTypeWitness = v25;
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v27 = v3;
  v28 = v4;
  v22 = v4;
  v23 = v3;
  v20 = v6;
  v21 = v5;
  v29 = v5;
  v30 = v6;
  v19 = v7;
  v31 = v7;
  v8 = type metadata accessor for MixedFormatStyle.CodingKeys(255, &AssociatedTypeWitness);
  swift_getWitnessTable(protocol conformance descriptor for MixedFormatStyle<A>.CodingKeys, v8);
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(AssociatedTypeWitness) = 0;
  v13 = v24;
  v14 = *(*(v23 + 8) + 16);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v18[1] = v14;
  v23 = v10;
  v24 = v9;
  v32 = 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  v16 = type metadata accessor for TimeDataFormatting.FormatTransition(0, &AssociatedTypeWitness);
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.FormatTransition<A>, v16);
  v17 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(AssociatedTypeWitness) = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v23 + 8))(v12, v17);
}

uint64_t MixedFormatStyle.hash(into:)(uint64_t a1, uint64_t a2)
{
  dispatch thunk of Hashable.hash(into:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(a2 + 48);
  v8 = *(a2 + 32);
  v9 = v4;
  v5 = type metadata accessor for TimeDataFormatting.FormatTransition(0, &AssociatedTypeWitness);
  TimeDataFormatting.FormatTransition.hash(into:)(a1, v5);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PausedFormatStyle.hashValue.getter(uint64_t a1, void (*a2)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a2(v5, a1);
  return Hasher._finalize()();
}

uint64_t MixedFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a1;
  v40 = a8;
  v48 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v44 = type metadata accessor for TimeDataFormatting.FormatTransition(0, &AssociatedTypeWitness);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v38 - v14;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v38 - v18;
  AssociatedTypeWitness = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v19 = type metadata accessor for MixedFormatStyle.CodingKeys(255, &AssociatedTypeWitness);
  swift_getWitnessTable(protocol conformance descriptor for MixedFormatStyle<A>.CodingKeys, v19);
  v20 = type metadata accessor for KeyedDecodingContainer();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v47 = a2;
  AssociatedTypeWitness = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v23 = type metadata accessor for MixedFormatStyle(0, &AssociatedTypeWitness);
  v39 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v26 = v59;
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v51 = v22;
  v27 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v28 = v25;
  v30 = v45;
  v29 = v46;
  v52 = v23;
  LOBYTE(AssociatedTypeWitness) = 0;
  v31 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = (v43 + 32);
  v48 = *(v43 + 32);
  v48(v28, v29, v31);
  LOBYTE(AssociatedTypeWitness) = 1;
  v33 = v44;
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.FormatTransition<A>, v44);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v32;
  v34 = v52;
  (*(v42 + 32))(&v28[*(v52 + 68)], v30, v33);
  LOBYTE(AssociatedTypeWitness) = 2;
  v35 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v49 + 8))(v51, v50);
  v48(&v28[*(v34 + 72)], v35, v31);
  v36 = v39;
  (*(v39 + 16))(v40, v28, v34);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return (*(v36 + 8))(v28, v34);
}

uint64_t MixedFormatStyle.init(preferred:transition:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v20 = *(*(a4 - 8) + 32);
  v20(a9, a1, a4);
  AssociatedTypeWitness = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v16 = type metadata accessor for MixedFormatStyle(0, &AssociatedTypeWitness);
  v17 = *(v16 + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  v18 = type metadata accessor for TimeDataFormatting.FormatTransition(0, &AssociatedTypeWitness);
  (*(*(v18 - 8) + 32))(a9 + v17, a2, v18);
  return (v20)(a9 + *(v16 + 72), a3, a4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MixedFormatStyle<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MixedFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MixedFormatStyle<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized TimeDataFormatting.Resolvable.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MixedFormatStyle<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MixedFormatStyle<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MixedFormatStyle<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MixedFormatStyle<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.Configuration<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t _MixedAoDFrequencyFormatInitializer<>.alwaysOnDisplayFormat(secondsUpdateFrequencyBudget:sizeVariant:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v107 = a1;
  v16 = *(a3 + 16);
  v108 = *(a3 + 24);
  v109 = a4;
  v17 = *(v108 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v110 = AssociatedTypeWitness;
  *(&v110 + 1) = a5;
  v97 = a5;
  v98 = a6;
  v111 = a6;
  v112 = a7;
  v99 = a7;
  v96 = a8;
  v113 = a8;
  v93 = type metadata accessor for TimeDataFormatting.FormatTransition(0, &v110);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v103 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v85 - v20;
  v105 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v85 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v102 = &v85 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v85 - v35;
  v37 = *a2;
  v39 = *(v38 + 48);
  LOBYTE(v110) = 2;
  v40 = *(v109 + 16);
  v104 = v9;
  v86 = v40;
  (v40)(&v110, v16, v34);
  v87 = v37;
  *&v110 = v37;
  v94 = v17;
  LODWORD(v17) = FormatStyle.exactSizeVariant(_:)(v36, &v110, v16);
  v41 = v105;
  v42 = v105[1];
  v88 = v25;
  v43 = v25;
  v44 = v16;
  v45 = v16;
  v46 = v42;
  (v42)(v43, v45);
  v89 = v17;
  v36[v39] = v17 & 1;
  if (a9 >= 60.0)
  {
    v85 = v36;
    v95 = v30;
    v52 = v44;
    (v41[2])(v100, v104, v44);
    v115 = AssociatedTypeWitness;
    swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(&v110, &v116);
      v53 = v117;
      v54 = v118;
      __swift_project_boxed_opaque_existential_1(&v116, v117);
      v55 = v46;
      v56 = v91;
      v57 = v41 + 1;
      (*(v54 + 48))(v53, v54);
      v58 = TupleTypeMetadata2;
      v59 = *(TupleTypeMetadata2 + 48);
      LOBYTE(v110) = 1;
      v60 = v88;
      v86(&v110, v52, v109);
      *&v110 = v87;
      v61 = v102;
      v62 = FormatStyle.exactSizeVariant(_:)(v102, &v110, v52);
      v104 = v57;
      v105 = v55;
      (v55)(v60, v52);
      v61[v59] = v62 & 1;
      v63 = v106;
      (*(v106 + 16))(v95, v61, TupleTypeMetadata2);
      (*(v92 + 32))(v103, v56, v93);
      v64 = *(v63 + 32);
      v65 = v90;
      v109 = v58;
      AssociatedTypeWitness = v64;
      v64(v90, v85, v58);
      v66 = v108;
      *&v110 = v52;
      *(&v110 + 1) = v108;
      v67 = v97;
      v68 = v98;
      v111 = v97;
      v112 = v98;
      v69 = v99;
      v70 = v96;
      v113 = v99;
      v114 = v96;
      v71 = type metadata accessor for MixedFormatStyle(0, &v110);
      v72 = v107;
      v107[3] = v71;
      swift_getWitnessTable(protocol conformance descriptor for MixedFormatStyle<A>, v71);
      v72[4] = v73;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
      v84 = v70;
      v75 = v95;
      MixedFormatStyle.init(preferred:transition:fallback:)(v95, v103, v65, v52, v66, v67, v68, v69, boxed_opaque_existential_1, v84);
      if (v89)
      {
        (*(v63 + 8))(v102, v109);
        v48 = 1;
      }

      else
      {
        v82 = v109;
        AssociatedTypeWitness(v75, v102, v109);
        v48 = *(v75 + *(v82 + 48));
        (v105)(v75, v52);
      }

      __swift_destroy_boxed_opaque_existential_1(&v116);
    }

    else
    {
      v76 = v106;
      v77 = v95;
      v78 = v85;
      (*(v106 + 16))(v95, v85, TupleTypeMetadata2);
      v48 = *(v77 + *(TupleTypeMetadata2 + 48));
      v79 = v107;
      v80 = v108;
      v107[3] = v52;
      v79[4] = v80;
      v81 = __swift_allocate_boxed_opaque_existential_1(v79);
      (v41[4])(v81, v77, v52);
      (*(v76 + 8))(v78, TupleTypeMetadata2);
    }
  }

  else
  {
    v47 = v106;
    (*(v106 + 16))(v30, v36, TupleTypeMetadata2);
    v48 = v30[*(TupleTypeMetadata2 + 48)];
    v49 = v107;
    v50 = v108;
    v107[3] = v44;
    v49[4] = v50;
    v51 = __swift_allocate_boxed_opaque_existential_1(v49);
    (v41[4])(v51, v30, v44);
    (*(v47 + 8))(v36, TupleTypeMetadata2);
  }

  return v48;
}

unint64_t type metadata accessor for UpdateFrequencyDependentFormatStyle()
{
  result = lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle;
  if (!lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle);
  }

  return result;
}

void type metadata accessor for (style: UpdateFrequencyDependentFormatStyle, exact: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (style: UpdateFrequencyDependentFormatStyle, exact: Bool))
  {
    type metadata accessor for UpdateFrequencyDependentFormatStyle();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (style: UpdateFrequencyDependentFormatStyle, exact: Bool));
    }
  }
}

uint64_t type metadata completion function for MixedFormatStyle(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v5 = *(v2 - 8) + 64;
    v13 = v5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = v6;
    v7 = type metadata accessor for TimeDataFormatting.FormatTransition(319, &AssociatedTypeWitness);
    v3 = v7;
    if (v8 <= 0x3F)
    {
      v14 = *(v7 - 8) + 64;
      v15 = v5;
      swift_initStructMetadata();
      return 0;
    }
  }

  return v3;
}

uint64_t *initializeBufferWithCopyOfBuffer for MixedFormatStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = *(v9 + 64);
  v13 = v12 + v10;
  v14 = *(v6 + 80);
  if ((v14 | v10) > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((((((v12 + v10) & ~v10) + v12 + v10) & ~v10) + v12 + v14 + ((v7 + v10) & ~v10)) & ~v14) + v7 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    v24 = (v17 + (((v14 | v10) + 16) & ~(v14 | v10)));
  }

  else
  {
    v18 = v5;
    v29 = v5;
    v19 = ~v10;
    v30 = ~v14;
    v27 = ((((v12 + v10) & ~v10) + v12 + v10) & ~v10) + v12 + v14;
    v28 = *(v6 + 16);
    v20 = AssociatedTypeWitness;
    v26 = ((v12 + v10) & ~v10) + v12;
    v28(a1, a2, v18);
    v21 = (a1 + v11) & ~v10;
    v22 = (a2 + v11) & ~v10;
    v23 = *(v9 + 16);
    v23(v21, v22, v20);
    v23((v13 + v21) & v19, (v13 + v22) & v19, v20);
    v23((v21 + v10 + v26) & v19, (v22 + v10 + v26) & v19, v20);
    v24 = a1;
    v28(((v27 + v21) & v30), ((v27 + v22) & v30), v29);
  }

  return v24;
}

uint64_t destroy for MixedFormatStyle(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v17 = *(v4 + 8);
  v17(a1, v3);
  v5 = *(v4 + 64) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = *(v7 + 80);
  v11 = v5 + v10;
  v12 = (v5 + v10) & ~v10;
  v8(v12, AssociatedTypeWitness);
  v13 = *(v9 + 56);
  v8((v13 + v10 + v12) & ~v10, AssociatedTypeWitness);
  v14 = ((v13 + v10) & ~v10) + v13;
  v8(((v11 | v10) + v14) & ~v10, AssociatedTypeWitness);
  v15 = (v12 + v13 + *(v4 + 80) + ((v14 + v10) & ~v10)) & ~*(v4 + 80);

  return (v17)(v15, v3);
}

uint64_t initializeWithCopy for MixedFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v21 = *(v5 + 16);
  v6 = v5 + 16;
  v21();
  v8 = *(v6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80);
  v14 = v8 + v13;
  v15 = (v8 + v13 + a1) & ~v13;
  v16 = (v14 + a2) & ~v13;
  v11(v15, v16, AssociatedTypeWitness);
  v17 = *(v12 + 48);
  v11((v17 + v13 + v15) & ~v13, (v17 + v13 + v16) & ~v13, AssociatedTypeWitness);
  v18 = v17 + v13 + ((v17 + v13) & ~v13);
  v11((v18 + v15) & ~v13, (v18 + v16) & ~v13, AssociatedTypeWitness);
  (v21)(((v18 & ~v13) + v17 + *(v6 + 64) + v15) & ~*(v6 + 64), ((v18 & ~v13) + v17 + *(v6 + 64) + v16) & ~*(v6 + 64), v4);
  return a1;
}

uint64_t assignWithCopy for MixedFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v21 = *(v5 + 24);
  v6 = v5 + 24;
  v21();
  v8 = *(v6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 24);
  v12 = v10 + 24;
  v13 = *(v10 + 80);
  v14 = v8 + v13;
  v15 = (v8 + v13 + a1) & ~v13;
  v16 = (v14 + a2) & ~v13;
  v11(v15, v16, AssociatedTypeWitness);
  v17 = *(v12 + 40);
  v11((v17 + v13 + v15) & ~v13, (v17 + v13 + v16) & ~v13, AssociatedTypeWitness);
  v18 = v17 + v13 + ((v17 + v13) & ~v13);
  v11((v18 + v15) & ~v13, (v18 + v16) & ~v13, AssociatedTypeWitness);
  (v21)(((v18 & ~v13) + v17 + *(v6 + 56) + v15) & ~*(v6 + 56), ((v18 & ~v13) + v17 + *(v6 + 56) + v16) & ~*(v6 + 56), v4);
  return a1;
}

uint64_t initializeWithTake for MixedFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v21 = *(v5 + 32);
  v6 = v5 + 32;
  v21();
  v8 = *(v6 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 32);
  v12 = v10 + 32;
  v13 = *(v10 + 80);
  v14 = v8 + v13;
  v15 = (v8 + v13 + a1) & ~v13;
  v16 = (v14 + a2) & ~v13;
  v11(v15, v16, AssociatedTypeWitness);
  v17 = *(v12 + 32);
  v11((v17 + v13 + v15) & ~v13, (v17 + v13 + v16) & ~v13, AssociatedTypeWitness);
  v18 = v17 + v13 + ((v17 + v13) & ~v13);
  v11((v18 + v15) & ~v13, (v18 + v16) & ~v13, AssociatedTypeWitness);
  (v21)(((v18 & ~v13) + v17 + *(v6 + 48) + v15) & ~*(v6 + 48), ((v18 & ~v13) + v17 + *(v6 + 48) + v16) & ~*(v6 + 48), v4);
  return a1;
}

uint64_t assignWithTake for MixedFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v21 = *(v5 + 40);
  v6 = v5 + 40;
  v21();
  v8 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 40);
  v12 = v10 + 40;
  v13 = *(v10 + 80);
  v14 = v8 + v13;
  v15 = (v8 + v13 + a1) & ~v13;
  v16 = (v14 + a2) & ~v13;
  v11(v15, v16, AssociatedTypeWitness);
  v17 = *(v12 + 24);
  v11((v17 + v13 + v15) & ~v13, (v17 + v13 + v16) & ~v13, AssociatedTypeWitness);
  v18 = v17 + v13 + ((v17 + v13) & ~v13);
  v11((v18 + v15) & ~v13, (v18 + v16) & ~v13, AssociatedTypeWitness);
  (v21)(((v18 & ~v13) + v17 + *(v6 + 40) + v15) & ~*(v6 + 40), ((v18 & ~v13) + v17 + *(v6 + 40) + v16) & ~*(v6 + 40), v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for MixedFormatStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + v12;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v15 = (((v14 & ~v12) + *(*(AssociatedTypeWitness - 8) + 64) + *(v6 + 80) + ((*(*(AssociatedTypeWitness - 8) + 64) + v12 + ((*(*(AssociatedTypeWitness - 8) + 64) + v12) & ~v12)) & ~v12)) & ~*(v6 + 80)) + v11;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v24 = *(v6 + 48);

          return v24(a1, v7, v5);
        }

        else
        {
          v22 = *(v9 + 48);

          return v22((a1 + v14) & ~v12);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for MixedFormatStyle(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v8;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v12 + 80);
  v17 = v14 + v16;
  v18 = ((*(*(AssociatedTypeWitness - 8) + 64) + v16 + ((*(*(AssociatedTypeWitness - 8) + 64) + v16) & ~v16)) & ~v16) + *(*(AssociatedTypeWitness - 8) + 64);
  v19 = ((((v14 + v16) & ~v16) + *(v11 + 80) + v18) & ~*(v11 + 80)) + v14;
  if (a3 <= v15)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v15 < a2)
  {
    v21 = ~v15 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_57:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v19] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v20)
  {
    goto LABEL_30;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v13)
  {
    v30 = *(v11 + 56);

    v30(a1, a2, v9, v7);
  }

  else
  {
    v26 = (&a1[v17] & ~v16);
    if (v13 >= a2)
    {
      v31 = *(v12 + 56);

      v31(v26, a2);
    }

    else
    {
      if (v18 <= 3)
      {
        v27 = ~(-1 << (8 * v18));
      }

      else
      {
        v27 = -1;
      }

      if (v18)
      {
        v28 = v27 & (~v13 + a2);
        if (v18 <= 3)
        {
          v29 = v18;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v18);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v26 = v28;
            v26[2] = BYTE2(v28);
          }

          else
          {
            *v26 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v26 = v28;
        }

        else
        {
          *v26 = v28;
        }
      }
    }
  }
}

uint64_t partial apply for closure #1 in TimeDataFormatting.Configuration.formatAndFrequency(for:mode:)(uint64_t a1)
{
  return (*(*(v1 + 32) + 48))(a1, *(v1 + 16));
}

{
  return partial apply for closure #1 in PausedFormatStyle.endDate.getter(a1);
}

uint64_t *_RendererConfiguration.init(renderer:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *a2 = v2;
  return result;
}

double _RendererConfiguration.RasterizationOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 1;
  *&result = 65792;
  *(a1 + 9) = 65792;
  *(a1 + 16) = 3;
  return result;
}

double _RendererConfiguration.renderer.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void _RendererConfiguration.renderer.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t _RendererConfiguration.contentsScale.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

__n128 static _RendererConfiguration.rasterized(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  result = *a1;
  v4[1] = *a1;
  v4[2].n128_u64[0] = a1[1].n128_u64[0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *a2 = v4;
  return result;
}

uint64_t _RendererConfiguration.RasterizationOptions.rbColorMode.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t initializeWithCopy for _RendererConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for _RendererConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  v4 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithTake for _RendererConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for _RendererConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for _RendererConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _RendererConfiguration.RasterizationOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _RendererConfiguration.RasterizationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

void specialized Sequence._copyContents(initializing:)(void (**a1)(char *, char *, uint64_t), char *a2, uint64_t a3)
{
  _s10Foundation4DateVSgMaTm_5(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Date();
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !a3)
  {
LABEL_13:
    outlined init with take of EveryMinuteTimelineSchedule.Entries(v3, a1, type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = a1;
    v13 = (v18 + 48);
    a1 = (v18 + 32);
    v14 = 1;
    while (1)
    {
      TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.next()(v9);
      if ((*v13)(v9, 1, v10) == 1)
      {
        break;
      }

      v15 = *a1;
      (*a1)(v12, v9, v10);
      v15(a2, v12, v10);
      if (a3 == v14)
      {
        goto LABEL_12;
      }

      a2 += *(v18 + 72);
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    outlined destroy of Date?(v9);
LABEL_12:
    a1 = v17;
    goto LABEL_13;
  }

  __break(1u);
}

void specialized Sequence._copyContents(initializing:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v74 = type metadata accessor for Calendar.SearchDirection();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v78 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Calendar.MatchingPolicy();
  v77 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Calendar();
  v76 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_5(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for Date();
  v75 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v67 = &v46 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v66 = &v46 - v28;
  if (!a2 || !a3)
  {
LABEL_18:
    outlined init with take of EveryMinuteTimelineSchedule.Entries(v4, a1, type metadata accessor for EveryMinuteTimelineSchedule.Entries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v47 = a1;
    v80 = (v75 + 48);
    v61 = *MEMORY[0x1E69698D0];
    v60 = (v77 + 104);
    v59 = *MEMORY[0x1E69699C8];
    v58 = (v78 + 104);
    v57 = (v8 + 104);
    v56 = (v8 + 8);
    v55 = (v78 + 8);
    v54 = (v77 + 8);
    v53 = (v76 + 8);
    v52 = *MEMORY[0x1E6969998];
    v51 = (v75 + 56);
    v29 = 1;
    v64 = v4;
    v65 = a3;
    v62 = v24;
    v63 = v19;
    v79 = (v75 + 32);
    v50 = v20;
    v49 = v13;
    while (1)
    {
      outlined init with copy of LayoutGestureBox.Child.DebugData?(v4, v19, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation4DateVSgMaTm_5);
      v30 = *v80;
      if ((*v80)(v19, 1, v20) == 1)
      {
        break;
      }

      v77 = v29;
      v78 = a2;
      v76 = *v79;
      (v76)(v24, v19, v20);
      static Calendar.current.getter();
      if (one-time initialization token for zeroSecondComponents != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for DateComponents();
      __swift_project_value_buffer(v31, static EveryMinuteTimelineSchedule.Entries.zeroSecondComponents);
      v32 = v69;
      v33 = v70;
      (*v60)(v69, v61, v70);
      v35 = v71;
      v34 = v72;
      (*v58)(v71, v59, v72);
      v37 = v73;
      v36 = v74;
      (*v57)(v73, v52, v74);
      v38 = v49;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*v56)(v37, v36);
      (*v55)(v35, v34);
      (*v54)(v32, v33);
      (*v53)(v38, v68);
      v20 = v50;
      if (v30(v16, 1, v50) == 1)
      {
        outlined destroy of Date?(v16);
        v4 = v64;
        outlined destroy of Date?(v64);
        v39 = 1;
        v40 = v78;
        v41 = v76;
      }

      else
      {
        v42 = v48;
        v41 = v76;
        (v76)(v48, v16, v20);
        v4 = v64;
        outlined destroy of Date?(v64);
        v41(v4, v42, v20);
        v39 = 0;
        v40 = v78;
      }

      (*v51)(v4, v39, 1, v20);
      v43 = v67;
      v24 = v62;
      v41(v67, v62, v20);
      v44 = v41;
      v45 = v66;
      v44(v66, v43, v20);
      v44(v40, v45, v20);
      v19 = v63;
      if (v65 == v77)
      {
        goto LABEL_17;
      }

      a2 = &v40[*(v75 + 72)];
      v29 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    outlined destroy of Date?(v19);
LABEL_17:
    a1 = v47;
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

void specialized Sequence._copyContents(initializing:)(__n128 (**a1)(char *, void, uint64_t, uint64_t), char *a2, uint64_t a3)
{
  _s10Foundation4DateVSgMaTm_5(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Date();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !a3)
  {
LABEL_13:
    outlined init with take of EveryMinuteTimelineSchedule.Entries(v22, a1, type metadata accessor for PeriodicTimelineSchedule.Entries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v18 = a1;
    type metadata accessor for PeriodicTimelineSchedule.Entries(0);
    v19 = *(v21 + 16);
    v20 = v21 + 16;
    a1 = (v21 + 56);
    v12 = (v21 + 48);
    v13 = (v21 + 32);
    v14 = 1;
    while (1)
    {
      v19(v8, v22, v9);
      (*a1)(v8, 0, 1, v9);
      static Date.+= infix(_:_:)();
      if ((*v12)(v8, 1, v9) == 1)
      {
        break;
      }

      v15 = *v13;
      (*v13)(v11, v8, v9);
      v15(a2, v11, v9);
      if (a3 == v14)
      {
        goto LABEL_12;
      }

      a2 += *(v21 + 72);
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    outlined destroy of Date?(v8);
LABEL_12:
    a1 = v18;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, _OWORD *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = v3[18];
  outlined init with copy of _LazyLayout_Subviews(v3, v49);
  v50 = v7;
  outlined destroy of _LazyLayout_Subviews_V1.SubviewsSequence(v3);
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_14;
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v27 = a1;
      v8 = 1;
      while (1)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v9 = v50;
        v30 = v50;
        v10 = outlined init with copy of _LazyLayout_Subviews(v49, v33);
        MEMORY[0x1EEE9AC00](v10);
        v26[2] = v49;
        v26[3] = &v35;
        v11 = swift_allocObject();
        if (__OFADD__(v9, v34))
        {
          break;
        }

        *(v11 + 16) = v9 + v34;
        v29[0] = v33[14];
        v29[1] = v33[15];
        v28 = 2;
        v31 = v29;
        v32 = 1;
        MEMORY[0x1EEE9AC00](v11);
        a1 = v33;
        v25[2] = v33;
        v25[3] = v12;
        v25[4] = partial apply for closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next();
        v25[5] = v26;

        _ViewList_Node.applyNodes(from:style:transform:to:)(&v30, &v28, &v31, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), v25);

        outlined destroy of _LazyLayout_Subviews(v33);
        if (!v35)
        {
          _s7SwiftUI16HitTestableEventVSgWOhTm_0(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
          a3 = v8 - 1;
LABEL_13:
          a1 = v27;
          goto LABEL_14;
        }

        v13 = v40;
        v46 = v39;
        v47 = v40;
        v14 = v41;
        v48 = v41;
        v15 = v35;
        v16 = v36;
        v42 = v35;
        v43 = v36;
        v18 = v37;
        v17 = v38;
        v44 = v37;
        v45 = v38;
        a2[4] = v39;
        a2[5] = v13;
        a2[6] = v14;
        *a2 = v15;
        a2[1] = v16;
        a2[2] = v18;
        a2[3] = v17;
        if (a3 == v8)
        {
          goto LABEL_13;
        }

        a2 += 7;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

LABEL_14:
  v20 = v49[7];
  *(a1 + 6) = v49[6];
  *(a1 + 7) = v20;
  *(a1 + 8) = v49[8];
  a1[18] = v50;
  v21 = v49[3];
  *(a1 + 2) = v49[2];
  *(a1 + 3) = v21;
  v22 = v49[5];
  *(a1 + 4) = v49[4];
  *(a1 + 5) = v22;
  v23 = v49[1];
  *a1 = v49[0];
  *(a1 + 1) = v23;
  return a3;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3 + 56;
  v6 = -1;
  v7 = -1 << *(*v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(*v3 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *a1 = v4;
    a1[1] = v5;
    a1[2] = ~v7;
    a1[3] = v10;
    a1[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = (63 - v7) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_13:
      v15 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
      v16 = v15[1];
      if (v16 < 0)
      {
        goto LABEL_27;
      }

      v8 &= v8 - 1;
      *a2 = *v15;
      a2[1] = v16;
      if (v12 == a3)
      {
        goto LABEL_24;
      }

      a2 += 2;
      v9 = v12;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_13;
      }
    }

    v8 = 0;
    if (v11 <= (v10 + 1))
    {
      v18 = v10 + 1;
    }

    else
    {
      v18 = (63 - v7) >> 6;
    }

    v10 = v18 - 1;
    a3 = v9;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = *v3;
  v5 = *v3 + 64;
  v6 = -1;
  v7 = -1 << *(*v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(*v3 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *a1 = v4;
    a1[1] = v5;
    a1[2] = ~v7;
    a1[3] = v10;
    a1[4] = v8;
    a1[5] = closure #1 in AttributedString.AttributeDependencies.makeIterator();
    a1[6] = 0;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = (63 - v7) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_13:
      v15 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
      v16 = v15[1];
      if (v16 < 0)
      {
        goto LABEL_27;
      }

      v8 &= v8 - 1;
      *a2 = *v15;
      a2[1] = v16;
      if (v12 == a3)
      {
        goto LABEL_24;
      }

      a2 += 2;
      v9 = v12;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_13;
      }
    }

    v8 = 0;
    if (v11 <= (v10 + 1))
    {
      v18 = v10 + 1;
    }

    else
    {
      v18 = (63 - v7) >> 6;
    }

    v10 = v18 - 1;
    a3 = v9;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, void *a2, uint64_t a3, void *a4, void *a5)
{
  v6 = result;
  if (!a2)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_14:
    *v6 = a4;
    v6[1] = a5;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 1;
    while (1)
    {
      if (!a4 || a4 == a5)
      {
        v7 = v9 - 1;
        goto LABEL_14;
      }

      v10 = a4 + 4;
      v11 = a4[1];
      v12 = a4[2];
      v13 = a4[3];
      *v8 = *a4;
      v8[1] = v11;
      v8[2] = v12;
      v8[3] = v13;
      if (v7 == v9)
      {
        break;
      }

      v8 += 4;
      a4 = v10;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    a4 = v10;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *_s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12GestureDebugO4DataV_SayAJGTt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 < 3)
  {
    if (!v3)
    {

      _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(__dst);
      return memcpy(a2, __dst, 0x121uLL);
    }

    v4 = *(a1 + 144);
    v20 = *(a1 + 128);
    v21 = v4;
    v22 = *(a1 + 160);
    v5 = *(a1 + 80);
    v16 = *(a1 + 64);
    v17 = v5;
    v6 = *(a1 + 112);
    v18 = *(a1 + 96);
    v19 = v6;
    v7 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = v7;
    if (v3 != 1)
    {
      v8 = *(a1 + 288);
      v13[6] = *(a1 + 272);
      v13[7] = v8;
      v13[8] = *(a1 + 304);
      v9 = *(a1 + 224);
      v13[2] = *(a1 + 208);
      v13[3] = v9;
      v10 = *(a1 + 256);
      v13[4] = *(a1 + 240);
      v13[5] = v10;
      v11 = *(a1 + 192);
      v13[0] = *(a1 + 176);
      v13[1] = v11;
      outlined init with copy of GestureDebug.Data(&v14, __dst);
      outlined init with copy of GestureDebug.Data(v13, __dst);

      __dst[6] = v20;
      __dst[7] = v21;
      __dst[2] = v16;
      __dst[3] = v17;
      __dst[4] = v18;
      __dst[5] = v19;
      __dst[0] = v14;
      __dst[1] = v15;
      __dst[14] = v13[5];
      __dst[15] = v13[6];
      __dst[16] = v13[7];
      __dst[17] = v13[8];
      __dst[10] = v13[1];
      __dst[11] = v13[2];
      __dst[12] = v13[3];
      __dst[13] = v13[4];
      __dst[8] = v22;
      __dst[9] = v13[0];
      _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi0_(__dst);
      return memcpy(a2, __dst, 0x121uLL);
    }

    outlined init with copy of GestureDebug.Data(&v14, __dst);

    v13[6] = v20;
    v13[7] = v21;
    v13[8] = v22;
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[5] = v19;
    v13[0] = v14;
    v13[1] = v15;
    _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi_(v13);
  }

  else
  {
    *&v13[0] = a1;
    _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi1_(v13);
  }

  memcpy(__dst, v13, 0x121uLL);
  return memcpy(a2, __dst, 0x121uLL);
}

void _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCSS_SSt_SRySS_SStGTt1g5(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 2)
  {
    if (!a1 || (v13 = &a1[4 * a2], v13 == a1))
    {
      v11 = 0;
      v10 = 0;
      v7 = 0;
      v9 = 0;
      v5 = 0;
      v3 = 0;
      v6 = 0;
      v4 = 0;
      v12 = 3;
      goto LABEL_9;
    }

    v11 = *a1;
    v10 = a1[1];
    v7 = a1[2];
    v9 = a1[3];
    if (a2 == 1)
    {

      v12 = 0;
      goto LABEL_9;
    }

    v5 = a1[4];
    v3 = a1[5];
    v6 = a1[6];
    v4 = a1[7];
    if (a2 == 2)
    {

      v12 = 1;
      goto LABEL_9;
    }

    v17 = a1[10];
    v18 = a1[8];
    v15 = a1[9];
    v16 = a1[11];
    _s10Foundation4DateVSgMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, String)>, type metadata accessor for (String, String), MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAF080;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    *(v14 + 48) = v7;
    *(v14 + 56) = v9;
    *(v14 + 64) = v5;
    *(v14 + 72) = v3;
    *(v14 + 80) = v6;
    *(v14 + 88) = v4;
    v6 = v15;
    v5 = v16;
    *(v14 + 96) = v18;
    *(v14 + 104) = v15;
    *(v14 + 112) = v17;
    *(v14 + 120) = v16;
    v20 = v14;

    v10 = &v20;
    specialized ContiguousArray.append<A>(contentsOf:)(a1 + 12, v13);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    v9 = a1;
    v3 = a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 0);
    v10 = &v20;
    specialized ContiguousArray.append<A>(contentsOf:)(v9, v3);
  }

  v11 = v20;
  v12 = 2;
LABEL_9:
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  *(a3 + 48) = v6;
  *(a3 + 56) = v4;
  *(a3 + 64) = v12;
}

void specialized ContiguousArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = v4 + a2;
  if (__OFADD__(v4, a2))
  {
    __break(1u);
    goto LABEL_34;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v3 + 24) >> 1;
    if (v9 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v4;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1);
  v3 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = *(v3 + 16);
  v12 = v9 - v11;
  v13 = specialized UnsafeBufferPointer._copyContents(initializing:)(v3 + 32 * v11 + 32, v9 - v11, a1, a2);
  if (v15 < a2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v15 >= 1)
  {
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, v15);
    v18 = v16 + v15;
    if (!v17)
    {
      *(v3 + 16) = v18;
      goto LABEL_15;
    }

LABEL_35:
    __break(1u);
    return;
  }

LABEL_15:
  if (v15 == v12 && v13 != 0 && v13 != v14)
  {
    v35 = v14;
    v21 = *(v3 + 16);
    v22 = v13 + 4;
    v24 = *v13;
    v23 = v13[1];
    v26 = v13[2];
    v25 = v13[3];

    v34 = v2;
    while (1)
    {
LABEL_24:
      v27 = *(v3 + 24);
      if (v21 + 1 > (v27 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v21 + 1, 1);
      }

      v3 = *v2;
      v28 = *(*v2 + 24) >> 1;
      v29 = v28 - v21;
      if (v28 > v21)
      {
        break;
      }

      *(v3 + 16) = v21;
    }

    v33 = *(*v2 + 24) >> 1;
    v30 = (v3 + 32 * v21 + 56);
    v31 = v21 + 1;
    while (1)
    {
      *(v30 - 3) = v24;
      *(v30 - 2) = v23;
      *(v30 - 1) = v26;
      *v30 = v25;
      if (v22 == v35)
      {
        break;
      }

      v32 = v22 + 4;
      v24 = *v22;
      v23 = v22[1];
      v26 = v22[2];
      v25 = v22[3];

      v30 += 4;
      ++v31;
      v22 += 4;
      if (!--v29)
      {
        v22 = v32;
        v2 = v34;
        v21 = v33;
        *(v3 + 16) = v33;
        goto LABEL_24;
      }
    }

    *(v3 + 16) = v31;
    v2 = v34;
  }

  *v2 = v3;
}

void specialized ContiguousArray.append<A>(contentsOf:)(void *a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v5 + 24) >> 1, v8 < v6))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 1);
    v5 = *v2;
    v8 = *(*v2 + 24) >> 1;
  }

  v9 = *(v5 + 16);
  v10 = (v8 - v9);
  v11 = specialized Sequence._copyContents(initializing:)(&v30, (v5 + 32 * v9 + 32), v8 - v9, a1, a2);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v5 + 16);
  v13 = __OFADD__(v12, v11);
  v14 = (v12 + v11);
  if (v13)
  {
LABEL_23:
    __break(1u);
    return;
  }

  *(v5 + 16) = v14;
LABEL_8:
  if (v11 == v10)
  {
    if (v30)
    {
      v29 = v31;
      if (v30 != v31)
      {
        v15 = *(v5 + 16);
        v16 = v30 + 4;
        v18 = *v30;
        v17 = v30[1];
        v20 = v30[2];
        v19 = v30[3];

        while (1)
        {
LABEL_13:
          v21 = *(v5 + 24);
          if (v15 + 1 > (v21 >> 1))
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v15 + 1, 1);
          }

          v5 = *v2;
          v22 = *(*v2 + 24) >> 1;
          v23 = v22 - v15;
          if (v22 > v15)
          {
            break;
          }

          *(v5 + 16) = v15;
        }

        v27 = *(*v2 + 24) >> 1;
        v28 = *v2;
        v24 = (v5 + 32 * v15 + 56);
        v25 = v15 + 1;
        while (1)
        {
          *(v24 - 3) = v18;
          *(v24 - 2) = v17;
          *(v24 - 1) = v20;
          *v24 = v19;
          if (v16 == v29)
          {
            break;
          }

          v26 = v16 + 4;
          v18 = *v16;
          v17 = v16[1];
          v20 = v16[2];
          v19 = v16[3];

          v24 += 4;
          ++v25;
          v16 += 4;
          if (!--v23)
          {
            v16 = v26;
            v5 = v28;
            v15 = v27;
            *(v28 + 16) = v27;
            goto LABEL_13;
          }
        }

        v5 = v28;
        *(v28 + 16) = v25;
      }
    }
  }

  *v2 = v5;
}

void specialized ContiguousArray.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v3 + 24) >> 1;
    if (v8 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v9 = v4 + v2;
  }

  else
  {
    v9 = v4;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
  v3 = *v1;
  v8 = *(*v1 + 24) >> 1;
LABEL_11:
  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v2)
  {
    if (v11 < v2)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    memcpy((v3 + 16 * v10 + 32), (a1 + 32), 16 * v2);
    v12 = *(v3 + 16);
    v10 = v12 + v2;
    if (__OFADD__(v12, v2))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v3 + 16) = v10;
  }

  if (v2 != v11 || (v13 = *(a1 + 16), v2 == v13))
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  if (v2 < v13)
  {
    v14 = v2 + 1;
    v15 = a1 + 16 * v2;
    v16 = *(v15 + 40);
    v17 = *(v15 + 32);
    while (1)
    {
      v18 = *(v3 + 24);
      if (v10 + 1 > (v18 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v10 + 1, 1);
      }

      v3 = *v1;
      v19 = *(*v1 + 24) >> 1;
      v20 = v19 - v10;
      if (v19 > v10)
      {
        break;
      }

LABEL_19:
      *(v3 + 16) = v10;
    }

    v21 = 0;
    v22 = a1 + 16 * v14;
    v23 = ~v10;
    while (1)
    {
      v24 = v3 + 16 * v10 + v21;
      *(v24 + 32) = v17;
      *(v24 + 40) = v16;
      v25 = *(a1 + 16);
      if (v14 == v25)
      {
        *(v3 + 16) = -v23;
        goto LABEL_29;
      }

      if (v14 >= v25)
      {
        break;
      }

      ++v14;
      v16 = *(v22 + v21 + 40);
      v17 = *(v22 + v21 + 32);
      v21 += 16;
      --v23;
      if (!--v20)
      {
        v10 = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v3 + 24) >> 1;
    if (v8 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v9 = v4 + v2;
  }

  else
  {
    v9 = v4;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
  v3 = *v1;
  v8 = *(*v1 + 24) >> 1;
LABEL_11:
  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v2)
  {
    if (v11 < v2)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    memcpy((v3 + 24 * v10 + 32), (a1 + 32), 24 * v2);
    v12 = *(v3 + 16);
    v10 = v12 + v2;
    if (__OFADD__(v12, v2))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v3 + 16) = v10;
  }

  if (v2 != v11 || (v13 = *(a1 + 16), v2 == v13))
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  if (v2 < v13)
  {
    v14 = v2 + 1;
    v15 = a1 + 24 * v2;
    v16 = *(v15 + 48);
    v17 = *(v15 + 32);
    v18 = *(v15 + 40);
    while (1)
    {
      v19 = *(v3 + 24);
      if (v10 + 1 > (v19 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v10 + 1, 1);
      }

      v3 = *v1;
      v20 = *(*v1 + 24) >> 1;
      v21 = v20 - v10;
      if (v20 > v10)
      {
        break;
      }

LABEL_19:
      *(v3 + 16) = v10;
    }

    v22 = 0;
    v23 = a1 + 24 * v14;
    v24 = ~v10;
    while (1)
    {
      v25 = v3 + 24 * v10 + v22;
      *(v25 + 32) = v17;
      *(v25 + 40) = v18;
      *(v25 + 48) = v16;
      v26 = *(a1 + 16);
      if (v14 == v26)
      {
        *(v3 + 16) = -v24;
        goto LABEL_29;
      }

      if (v14 >= v26)
      {
        break;
      }

      ++v14;
      v16 = *(v23 + v22 + 48);
      v17 = *(v23 + v22 + 32);
      v18 = *(v23 + v22 + 40);
      v22 += 24;
      --v24;
      if (!--v21)
      {
        v10 = v20;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
}

double _s7SwiftUI13LayoutGesturePAAE05_makeD07gesture6inputsAA01_D7OutputsVyytGAA11_GraphValueVyxG_AA01_D6InputsVtFZAA07DefaultcD0V_Tt2B5@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, double *a3@<X8>)
{
  v4 = a1;
  v41 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2[5];
  v55 = a2[4];
  v56 = v5;
  v57[0] = a2[6];
  *(v57 + 12) = *(a2 + 108);
  v6 = a2[1];
  v51 = *a2;
  v52 = v6;
  v7 = a2[3];
  v53 = a2[2];
  v54 = v7;
  type metadata accessor for LayoutGestureBox();
  swift_allocObject();
  outlined init with copy of _GestureInputs(a2, &v48);
  v8 = LayoutGestureBox.init(inputs:)(&v51);
  v9 = *(a2 + 28);
  *&v51 = __PAIR64__(*(a2 + 27), v4);
  LODWORD(v44) = v9;
  DWORD2(v51) = v9;
  v40 = v8;
  *&v52 = v8;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sSnySiGMaTm_5(0, &lazy cache variable for type metadata for UpdateLayoutGestureBox<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for UpdateLayoutGestureBox);
  lazy protocol witness table accessor for type UpdateLayoutGestureBox<DefaultLayoutGesture> and conformance UpdateLayoutGestureBox<A>();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  *&v51 = __PAIR64__(v10, v4);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  _sSnySiGMaTm_5(0, &lazy cache variable for type metadata for LayoutPhase<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutPhase);
  lazy protocol witness table accessor for type LayoutPhase<DefaultLayoutGesture> and conformance LayoutPhase<A>();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  v12 = *MEMORY[0x1E698D3F8];
  v49 = MEMORY[0x1E69E7CC0];
  v50 = 0;
  v48 = COERCE_DOUBLE(__PAIR64__(v12, v11));
  LOBYTE(v12) = *(a2 + 120);
  v42 = v10;
  if ((v12 & 8) != 0)
  {
    v13 = v11;
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for CGPoint(0);
    specialized GraphHost.intern<A>(_:for:id:)(v14, 0, 0.0, 0.0);

    AGGraphClearUpdate();
    v15 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
    AGGraphSetIndirectAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

    AGGraphClearUpdate();
    v17 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v18 = AGGraphCreateIndirectAttribute2();
    AGGraphSetIndirectAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v19 = a2[5];
    v55 = a2[4];
    v56 = v19;
    v57[0] = a2[6];
    *(v57 + 12) = *(a2 + 108);
    v20 = a2[1];
    v51 = *a2;
    v52 = v20;
    v21 = a2[3];
    v53 = a2[2];
    v54 = v21;
    v22 = _GestureInputs.transform.getter();
    *&v51 = &type metadata for DefaultLayoutGesture;
    *(&v51 + 1) = __PAIR64__(v42, v13);
    *&v52 = __PAIR64__(IndirectAttribute2, v44);
    *(&v52 + 1) = __PAIR64__(v22, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _sSnySiGMaTm_5(0, &lazy cache variable for type metadata for LayoutDebug<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutDebug);
    lazy protocol witness table accessor for type LayoutDebug<DefaultLayoutGesture> and conformance LayoutDebug<A>();
    HIDWORD(v48) = Attribute.init<A>(body:value:flags:update:)();
  }

  v23 = *(a2 + 12);
  v46 = v23;
  v47 = *(a2 + 26);
  v24 = *(v23 + 16);
  v39 = v23;
  if (v24)
  {
    v25 = outlined init with copy of PreferencesInputs(&v46, &v51);
    v26 = (v23 + 40);
    do
    {
      v28 = *(v26 - 1);
      v27 = *v26;
      v43 = &v39;
      v44 = v27;
      v45[0] = v4;
      v45[1] = v42;
      MEMORY[0x1EEE9AC00](v25);
      *(&v39 - 4) = swift_getAssociatedTypeWitness();
      *&v51 = &type metadata for DefaultLayoutGesture;
      *(&v51 + 1) = v28;
      *&v52 = &protocol witness table for DefaultLayoutGesture;
      *(&v52 + 1) = v27;
      v29 = type metadata accessor for LayoutGesturePreferenceCombiner(0, &v51);
      *(&v39 - 3) = v29;
      swift_getWitnessTable(protocol conformance descriptor for LayoutGesturePreferenceCombiner<A, B>, v29, v39, v40);
      *(&v39 - 2) = v30;
      v31 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v45, closure #1 in Attribute.init<A>(_:)partial apply, (&v39 - 6), v29, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
      v33 = v51;
      swift_beginAccess();
      type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for _GestureOutputs<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for _GestureOutputs);
      LOBYTE(v45[0]) = 0;
      _GestureOutputs.subscript.setter(v33, v28, v34, v28, v44);
      v25 = swift_endAccess();
      v26 += 2;
      --v24;
    }

    while (v24);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v46, &v51);
  }

  swift_beginAccess();
  v35 = v49;
  v36 = v50;
  result = v48;
  v38 = v41;
  *v41 = v48;
  *(v38 + 1) = v35;
  *(v38 + 4) = v36;
  return result;
}

double static LayoutGesture._makeGesture(gesture:inputs:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a2[5];
  v9 = a2[3];
  v88 = a2[4];
  v89 = v8;
  v10 = a2[5];
  *v90 = a2[6];
  *&v90[12] = *(a2 + 108);
  v11 = a2[1];
  v84 = *a2;
  v85 = v11;
  v12 = a2[3];
  v14 = *a2;
  v13 = a2[1];
  v86 = a2[2];
  v87 = v12;
  v81 = v88;
  v82 = v10;
  v83[0] = a2[6];
  *(v83 + 12) = *(a2 + 108);
  v77 = v14;
  v78 = v13;
  v15 = *a1;
  v79 = v86;
  v80 = v9;
  type metadata accessor for LayoutGestureBox();
  swift_allocObject();
  outlined init with copy of _GestureInputs(&v84, &v74);
  v16 = LayoutGestureBox.init(inputs:)(&v77);
  LODWORD(v77) = v15;
  *(&v77 + 4) = *&v90[12];
  LODWORD(v65) = *&v90[16];
  *&v78 = v16;
  updated = type metadata accessor for UpdateLayoutGestureBox(0, a3, a4, v17);
  swift_getWitnessTable(protocol conformance descriptor for UpdateLayoutGestureBox<A>, updated);
  v73 = v18;
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for Attribute<LayoutGestureBox.Value>, &type metadata for LayoutGestureBox.Value, MEMORY[0x1E698D388]);
  v20 = v19;

  v21 = MEMORY[0x1E69E73E0];
  v22 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v77, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_18, &v71, updated, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v23);
  v60 = v16;

  *&v77 = __PAIR64__(LODWORD(v74), v15);
  LODWORD(v66) = LODWORD(v74);
  v69 = type metadata accessor for LayoutPhase(0, a3, a4, v24);
  swift_getWitnessTable(protocol conformance descriptor for LayoutPhase<A>, v69);
  v70 = v25;
  type metadata accessor for Attribute<GesturePhase<()>>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v77, closure #1 in Attribute.init<A>(_:)partial apply, &v68, v69, v21, v26, v22, v27);
  v28 = LODWORD(v74);
  v29 = *MEMORY[0x1E698D3F8];
  v75 = MEMORY[0x1E69E7CC0];
  v76 = 0;
  HIDWORD(v74) = v29;
  v64 = a3;
  v61 = a5;
  v63 = v15;
  if ((v90[24] & 8) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for CGPoint(0);
    specialized GraphHost.intern<A>(_:for:id:)(v31, 0, 0.0, 0.0);

    AGGraphClearUpdate();
    v32 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
    AGGraphSetIndirectAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

    AGGraphClearUpdate();
    v34 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v35 = AGGraphCreateIndirectAttribute2();
    AGGraphSetIndirectAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v81 = v88;
    v82 = v89;
    v83[0] = *v90;
    *(v83 + 12) = *&v90[12];
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v80 = v87;
    v36 = _GestureInputs.transform.getter();
    *&v77 = v64;
    *(&v77 + 1) = __PAIR64__(v66, v28);
    LODWORD(v34) = v66;
    *&v78 = __PAIR64__(IndirectAttribute2, v65);
    *(&v78 + 1) = __PAIR64__(v36, v35);
    MEMORY[0x1EEE9AC00](v36);
    v57 = type metadata accessor for LayoutDebug(0, v64, a4, v37);
    swift_getWitnessTable(protocol conformance descriptor for LayoutDebug<A>, v57);
    v58 = v38;
    type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for Attribute<GestureDebug.Data>, &type metadata for GestureDebug.Data, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v77, closure #1 in Attribute.init<A>(_:)partial apply, v56, v57, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v40);
    HIDWORD(v74) = v67[0];
    v30 = v34;
  }

  else
  {
    v30 = v66;
  }

  v41 = *(*v90 + 16);
  v59 = *v90;
  if (v41)
  {

    v62 = a4;
    v43 = (v42 + 40);
    do
    {
      v65 = &v59;
      v44 = *(v43 - 1);
      v45 = *v43;
      v67[0] = v63;
      v67[1] = v30;
      MEMORY[0x1EEE9AC00](v42);
      v66 = v45;
      v56[0] = swift_getAssociatedTypeWitness();
      *&v77 = v64;
      *(&v77 + 1) = v44;
      *&v78 = v62;
      *(&v78 + 1) = v45;
      v46 = type metadata accessor for LayoutGesturePreferenceCombiner(0, &v77);
      v56[1] = v46;
      swift_getWitnessTable(protocol conformance descriptor for LayoutGesturePreferenceCombiner<A, B>, v46, v59, v60);
      v57 = v47;
      v48 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v67, partial apply for closure #1 in Attribute.init<A>(_:), (&v59 - 6), v46, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v49);
      v50 = v77;
      swift_beginAccess();
      type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for _GestureOutputs<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for _GestureOutputs);
      LOBYTE(v67[0]) = 0;
      _GestureOutputs.subscript.setter(v50, v44, v51, v44, v66);
      v42 = swift_endAccess();
      v43 += 2;
      --v41;
    }

    while (v41);
  }

  else
  {
  }

  swift_beginAccess();
  v52 = v75;
  v53 = v76;
  result = v74;
  v55 = v61;
  *v61 = *&v74;
  v55[1] = v52;
  *(v55 + 4) = v53;
  return result;
}

void LayoutGesture.phase(box:)(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 160);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v3 + 16);
      v10 = (v7 + 208 * v6);
      v11 = v6;
      while (1)
      {
        if (v11 >= v9)
        {
          goto LABEL_36;
        }

        v58 = *v10;
        v12 = v10[1];
        v13 = v10[2];
        v14 = v10[4];
        v61 = v10[3];
        v62 = v14;
        v59 = v12;
        v60 = v13;
        v15 = v10[5];
        v16 = v10[6];
        v17 = v10[8];
        v65 = v10[7];
        v66 = v17;
        v63 = v15;
        v64 = v16;
        v18 = v10[9];
        v19 = v10[10];
        v20 = v10[11];
        *(v69 + 12) = *(v10 + 188);
        v68 = v19;
        v69[0] = v20;
        v67 = v18;
        v6 = v11 + 1;
        if (*(*(&v60 + 1) + 16))
        {
          break;
        }

        v10 += 13;
        ++v11;
        if (v4 == v6)
        {
          goto LABEL_15;
        }
      }

      v54 = v7;
      outlined init with copy of LayoutGestureBox.Child(&v58, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        v8 = v70;
      }

      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v8 = v70;
      }

      *(v8 + 16) = v23 + 1;
      v24 = (v8 + 208 * v23);
      v24[2] = v58;
      v25 = v59;
      v26 = v60;
      v27 = v62;
      v24[5] = v61;
      v24[6] = v27;
      v24[3] = v25;
      v24[4] = v26;
      v28 = v63;
      v29 = v64;
      v30 = v66;
      v24[9] = v65;
      v24[10] = v30;
      v24[7] = v28;
      v24[8] = v29;
      v31 = v67;
      v32 = v68;
      v33 = v69[0];
      *(v24 + 220) = *(v69 + 12);
      v24[12] = v32;
      v24[13] = v33;
      v24[11] = v31;
      v7 = v54;
    }

    while (v4 - 1 != v11);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v34 = *(v8 + 16);
  if (v34)
  {
    v70 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    if (*(v8 + 16))
    {
      v35 = 0;
      v36 = v70;
      v37 = v34 - 1;
      v38 = 32;
      do
      {
        v58 = *(v8 + v38);
        v39 = *(v8 + v38 + 16);
        v40 = *(v8 + v38 + 32);
        v41 = *(v8 + v38 + 64);
        v61 = *(v8 + v38 + 48);
        v62 = v41;
        v59 = v39;
        v60 = v40;
        v42 = *(v8 + v38 + 80);
        v43 = *(v8 + v38 + 96);
        v44 = *(v8 + v38 + 128);
        v65 = *(v8 + v38 + 112);
        v66 = v44;
        v63 = v42;
        v64 = v43;
        v45 = *(v8 + v38 + 144);
        v46 = *(v8 + v38 + 160);
        v47 = *(v8 + v38 + 176);
        *(v69 + 12) = *(v8 + v38 + 188);
        v68 = v46;
        v69[0] = v47;
        v67 = v45;
        if (BYTE12(v59))
        {
          goto LABEL_37;
        }

        type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
        outlined init with copy of LayoutGestureBox.Child(&v58, v57);
        Value = AGGraphGetValue();
        v49 = *Value;
        v50 = Value[1];
        if (v50 > 1)
        {
          if (v50 == 2)
          {
LABEL_24:
            outlined destroy of LayoutGestureBox.Child(&v58);
            goto LABEL_27;
          }

          outlined destroy of LayoutGestureBox.Child(&v58);
        }

        else
        {
          if (Value[1])
          {
            goto LABEL_24;
          }

          outlined destroy of LayoutGestureBox.Child(&v58);
          if ((v49 & 1) == 0)
          {
            v56 = 0;
            goto LABEL_27;
          }
        }

        v56 = v49;
LABEL_27:
        v70 = v36;
        v52 = *(v36 + 16);
        v51 = *(v36 + 24);
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v36 = v70;
        }

        *(v36 + 16) = v52 + 1;
        v53 = v36 + 2 * v52;
        *(v53 + 32) = v56;
        *(v53 + 33) = v50;
        if (v37 == v35)
        {

          goto LABEL_34;
        }

        v38 += 208;
        ++v35;
      }

      while (v35 < *(v8 + 16));
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
LABEL_34:
    specialized Collection<>.merged()(v36, a2);
  }
}

uint64_t specialized Collection<>.merged()@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v2 = *(result + 16);
  if (!v2)
  {
LABEL_21:
    v11 = 0;
    v12 = 3;
    goto LABEL_31;
  }

  v3 = 0;
  v4 = 0;
  v5 = result + 33;
  v6 = 1;
  v7 = 1;
  while (2)
  {
    v8 = (v5 + 2 * v3);
    v9 = v3;
    v10 = v6;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      result = *v8;
      if (*v8 <= 1u)
      {
        break;
      }

      if (result == 2)
      {
        if (v3 == v2)
        {
          if (v10)
          {
            v11 = 0;
            v12 = 2;
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        goto LABEL_5;
      }

      if (v3 == v2)
      {
        if (v6)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        if ((v6 | v10))
        {
          v11 = 0;
          goto LABEL_31;
        }

        goto LABEL_29;
      }

LABEL_6:
      ++v9;
      v8 += 2;
      if (v3 >= v2)
      {
        goto LABEL_20;
      }
    }

    if (result == 1)
    {
      if (v3 == v2)
      {
        goto LABEL_30;
      }

      v10 = 0;
LABEL_5:
      v6 = 0;
      v4 = 1;
      goto LABEL_6;
    }

    if (*(v8 - 1))
    {
      if (v3 != v2)
      {
        v7 = 0;
        goto LABEL_19;
      }

LABEL_34:
      if ((v4 & 1) == 0)
      {
        v12 = 0;
        v11 = 1;
        goto LABEL_31;
      }

LABEL_30:
      v11 = 0;
      v12 = 1;
      goto LABEL_31;
    }

    if (v3 != v2)
    {
LABEL_19:
      v6 = 0;
      if (v3 < v2)
      {
        continue;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    break;
  }

LABEL_29:
  if (v4)
  {
    goto LABEL_30;
  }

  v12 = 0;
  v11 = (v7 & 1) == 0;
LABEL_31:
  *a2 = v11;
  a2[1] = v12;
  return result;
}

void LayoutGesture.preferenceValue<A>(key:box:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, char *, uint64_t)@<X2>, void (**a4)(uint64_t, char *, uint64_t)@<X3>, void (**a5)(uint64_t, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a3;
  v47 = a5;
  v50 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v39 - v13;
  v14 = *(a6 + 16);
  v48 = a7;
  v14(a4, a6, v12);
  swift_beginAccess();
  v15 = *(*(a2 + 160) + 16);
  if (!v15)
  {
    return;
  }

  v16 = 0;
  v41 = (v11 + 16);
  v42 = a6 + 24;
  v39 = (v11 + 32);
  v40 = (v11 + 8);
  v43 = 1;
  v49 = 32;
  while (2)
  {
    v17 = v49 + 208 * v16;
    v18 = v16;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v19 = *(a2 + 160);
      if (v18 >= *(v19 + 16))
      {
        goto LABEL_21;
      }

      v20 = (v19 + v17);
      v53[0] = *v20;
      v21 = v20[1];
      v22 = v20[2];
      v23 = v20[4];
      v55 = v20[3];
      v56 = v23;
      v53[1] = v21;
      v54 = v22;
      v24 = v20[5];
      v25 = v20[6];
      v26 = v20[8];
      v59 = v20[7];
      v60 = v26;
      v57 = v24;
      v58 = v25;
      v27 = v20[9];
      v28 = v20[10];
      v29 = v20[11];
      *(v63 + 12) = *(v20 + 188);
      v62 = v28;
      v63[0] = v29;
      v61 = v27;
      if (*(*(&v54 + 1) + 16))
      {
        if (*&v63[1])
        {
          break;
        }
      }

LABEL_10:
      if (v16 == v15)
      {
        return;
      }

      v17 += 208;
      ++v18;
      if (v16 >= v15)
      {
        goto LABEL_18;
      }
    }

    v51[26] = *&v63[1];
    v52 = DWORD2(v63[1]);
    outlined init with copy of LayoutGestureBox.Child(v53, v51);

    v30 = PreferencesOutputs.subscript.getter(v50, a4, a6);
    if ((v30 & 0x100000000) != 0)
    {
      outlined destroy of LayoutGestureBox.Child(v53);

      goto LABEL_10;
    }

    v31 = v30;

    if (v43)
    {
      v33 = AssociatedTypeWitness;
      Value = AGGraphGetValue();
      v35 = v44;
      (*v41)(v44, Value, v33);
      outlined destroy of LayoutGestureBox.Child(v53);
      v36 = v48;
      (*v40)(v48, v33);
      (*v39)(v36, v35, v33);
    }

    else
    {
      v37 = MEMORY[0x1EEE9AC00](v32);
      v38 = v47;
      *(&v39 - 6) = v46;
      *(&v39 - 5) = a4;
      *(&v39 - 4) = v38;
      *(&v39 - 3) = a6;
      *(&v39 - 4) = v31;
      (*(a6 + 24))(v48, partial apply for closure #1 in LayoutGesture.preferenceValue<A>(key:box:), v37);
      outlined destroy of LayoutGestureBox.Child(v53);
    }

    if (v16 != v15)
    {
      v43 = 0;
      if (v16 < v15)
      {
        continue;
      }

LABEL_18:
      __break(1u);
    }

    break;
  }
}

uint64_t closure #1 in LayoutGesture.preferenceValue<A>(key:box:)@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, Value, AssociatedTypeWitness);
}

double protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance DefaultLayoutGesture@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, double *a3@<X8>)
{
  v3 = *a1;
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v9[0] = a2[6];
  *(v9 + 12) = *(a2 + 108);
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  return _s7SwiftUI13LayoutGesturePAAE05_makeD07gesture6inputsAA01_D7OutputsVyytGAA11_GraphValueVyxG_AA01_D6InputsVtFZAA07DefaultcD0V_Tt2B5(v3, v8, a3);
}

id LayoutGestureBox.init(inputs:)(_OWORD *a1)
{
  v2 = v1;
  v4 = a1[5];
  v21[4] = a1[4];
  v21[5] = v4;
  v22[0] = a1[6];
  *(v22 + 12) = *(a1 + 108);
  v5 = a1[1];
  v21[0] = *a1;
  v21[1] = v5;
  v6 = a1[3];
  v21[2] = a1[2];
  v21[3] = v6;
  swift_weakInit();
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  v7 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v7;
  *(v2 + 112) = a1[6];
  *(v2 + 124) = *(a1 + 108);
  v8 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  v9 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v9;
  outlined init with copy of _GestureInputs(v21, v20);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      v13 = v12;
      v14 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for EventGraphHost, &protocol descriptor for EventGraphHost, 0);
      (*(*(*(v13 + 16) + 8) + 16))(v19, v14, v14, ObjectType);
      swift_unknownObjectRelease();
      if (v19[0])
      {
        v15 = v19[1];
        v16 = swift_getObjectType();
        (*(v15 + 8))(v16, v15);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  swift_weakAssign();

  result = AGSubgraphGetCurrent();
  if (result)
  {
    v18 = result;
    outlined destroy of _GestureInputs(v21);
    *(v2 + 152) = v18;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LayoutGestureBox.updateResetSeed(_:)(int a1)
{
  if (*(v1 + 176) != a1)
  {
    v2 = v1;
    *(v1 + 176) = a1;
    swift_beginAccess();
    v3 = *(v1 + 160);
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC8];
      v7 = MEMORY[0x1E69E7CD0];
      v8 = 44;
      v50 = *(v3 + 2);
      while (1)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 160) = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          *(v2 + 160) = v3;
        }

        if (v5 >= *(v3 + 2))
        {
          break;
        }

        v12 = &v3[v8];
        if (*(*&v3[v8 + 28] + 16))
        {
          if ((v12[16] & 1) == 0)
          {
            v13 = &v3[v8];
            v95 = *&v3[v8 + 36];
            v14 = *&v3[v8 + 52];
            v15 = *&v3[v8 + 68];
            v16 = *&v3[v8 + 100];
            v98 = *&v3[v8 + 84];
            v99 = v16;
            v96 = v14;
            v97 = v15;
            v17 = *&v3[v8 + 116];
            v18 = *&v3[v8 + 132];
            v19 = *&v3[v8 + 164];
            v102 = *&v3[v8 + 148];
            v103 = v19;
            v100 = v17;
            v101 = v18;
            memmove(__dst, &v3[v8 + 36], 0x90uLL);
            if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(__dst) == 1)
            {
              v92 = v101;
              v93 = v102;
              v94 = v103;
              v88 = v97;
              v89 = v98;
              v90 = v99;
              v91 = v100;
              v86 = v95;
              v87 = v96;
            }

            else
            {
              v83 = v101;
              v84 = v102;
              v85 = v103;
              v79 = v97;
              v80 = v98;
              v81 = v99;
              v82 = v100;
              v77 = v95;
              v78 = v96;
              if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(&v77) == 1)
              {
                destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v77);
                Value = AGGraphGetValue();
                v86 = *Value;
                v21 = Value[4];
                v23 = Value[1];
                v22 = Value[2];
                v89 = Value[3];
                v90 = v21;
                v87 = v23;
                v88 = v22;
                v24 = Value[8];
                v26 = Value[5];
                v25 = Value[6];
                v93 = Value[7];
                v94 = v24;
                v91 = v26;
                v92 = v25;
                v27 = v24.i64[1];
                v52 = v88;
                v53 = v89;
                v28 = *(v87.i64 + 4);
                v51 = v87.i8[0];
                v29 = v87.i8[1];
                v30 = v86.i64[1];
                v31 = v86.i8[0];
                outlined init with copy of GestureDebug.Data(&v86, &v63);
                v74 = v92;
                v75 = v93;
                v76 = v94.i8[0];
                v33 = v90;
                v32 = v91;
              }

              else
              {
                v34 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v77);
                v49 = *(v34 + 136);
                v52 = *(v34 + 32);
                v53 = *(v34 + 48);
                v28 = *(v34 + 20);
                v51 = *(v34 + 16);
                v29 = *(v34 + 17);
                v30 = *(v34 + 8);
                v31 = *v34;
                v88 = v97;
                v89 = v98;
                v92 = v101;
                v93 = v102;
                v90 = v99;
                v91 = v100;
                v86 = v95;
                v87 = v96;
                v94 = v103;
                outlined init with copy of LayoutGestureBox.Child.DebugData(v86.i64, v63.i64);
                v35 = *(v34 + 112);
                v74 = *(v34 + 96);
                v75 = v35;
                v76 = *(v34 + 128);
                v33 = *(v34 + 64);
                v32 = *(v34 + 80);
                v27 = v49;
              }

              v72 = v33;
              v73 = v32;
              v60 = v74;
              v61 = v75;
              v62.i8[0] = v76;
              v58 = v33;
              v59 = v32;
              v54.i8[0] = v31;
              v54.i64[1] = v30;
              v55.i8[0] = v51;
              v55.i8[1] = v29;
              *(v55.i64 + 4) = v28;
              v56 = v52;
              v57 = v53;
              v62.i64[1] = v27;
              _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi_(&v54);
              v69 = v60;
              v70 = v61;
              v71 = v62;
              v65 = v56;
              v66 = v57;
              v67 = v58;
              v68 = v59;
              v63 = v54;
              v64 = v55;
              _ViewInputs.base.modify();
              v92 = v69;
              v93 = v70;
              v94 = v71;
              v88 = v65;
              v89 = v66;
              v90 = v67;
              v91 = v68;
              v86 = v63;
              v87 = v64;
              v4 = v50;
              v6 = MEMORY[0x1E69E7CC8];
            }

            v77 = *(v13 + 36);
            v36 = *(v13 + 52);
            v37 = *(v13 + 68);
            v38 = *(v13 + 100);
            v80 = *(v13 + 84);
            v81 = v38;
            v78 = v36;
            v79 = v37;
            v39 = *(v13 + 116);
            v40 = *(v13 + 132);
            v41 = *(v13 + 164);
            v84 = *(v13 + 148);
            v85 = v41;
            v82 = v39;
            v83 = v40;
            *(v13 + 36) = v86;
            v42 = v87;
            v43 = v88;
            v44 = v89;
            *(v13 + 100) = v90;
            *(v13 + 84) = v44;
            *(v13 + 68) = v43;
            *(v13 + 52) = v42;
            v45 = v91;
            v46 = v92;
            v47 = v93;
            *(v13 + 164) = v94;
            *(v13 + 148) = v47;
            *(v13 + 132) = v46;
            *(v13 + 116) = v45;
            _s7SwiftUI16HitTestableEventVSgWOhTm_0(&v77, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData);
            *(v12 + 3) = 0;
            v12[16] = 1;
            v48 = &v3[v8];
            if (*&v3[v8 + 4] && (AGSubgraphRef.willInvalidate(isInserted:)(1), *(v48 + 4)))
            {
              AGSubgraphInvalidate();
              v9 = *(v48 + 4);
            }

            else
            {
              v9 = 0;
            }

            *(v48 + 4) = 0;

            (*(**(v12 - 12) + 120))();
            v7 = MEMORY[0x1E69E7CD0];
          }

          *&v3[v8 + 20] = v6;

          *(v12 + 28) = v7;
          ++*&v3[v8];
        }

        ++v5;
        *(v2 + 160) = v3;
        swift_endAccess();
        v10 = *(v2 + 172) + 1;
        *(v2 + 172) = v10;
        v8 += 208;
        if (v4 == v5)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v10 = *(v1 + 172);
LABEL_23:
      *(v2 + 172) = v10 + 1;
    }
  }
}

void LayoutGestureBox.updateResponder(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_beginAccess();
  v5 = *(*(v2 + 160) + 16);
  v6 = (*(*a1 + 208))(v4);
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_45:
    v8 = __CocoaSet.count.getter();
    v84 = v8;
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v10 = 0;
      v85 = v7 & 0xC000000000000001;
      v77 = v7 + 32;
      v79 = v7 & 0xFFFFFFFFFFFFFF8;
      v87 = -v5;
      v81 = v7;
      while (1)
      {
LABEL_4:
        v11 = 208 * v10 + 32;
        v12 = v10;
LABEL_5:
        if (v85)
        {
          v13 = MEMORY[0x193AC03C0](v12, v7);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v12 >= *(v79 + 16))
          {
            goto LABEL_44;
          }

          v13 = *(v77 + 8 * v12);

          if (__OFADD__(v12, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        if (v5 < v12)
        {
          goto LABEL_42;
        }

        v10 = v12 + 1;
        if (v12 != v5)
        {
          break;
        }

        v12 = v5;
LABEL_23:
        v18 = *(v2 + 168);
        _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOi0_(&v144);
        v89.i8[0] = 1;
        v136 = v150;
        v137 = v151;
        v138 = v152;
        v132 = v146;
        v133 = v147;
        v134 = v148;
        v135 = v149;
        __dst = v144;
        v131 = v145;
        swift_beginAccess();
        v19 = *(v2 + 160);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 160) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          *(v2 + 160) = v19;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
        }

        *(v19 + 2) = v22 + 1;
        v23 = &v19[208 * v22];
        *(v23 + 4) = v13;
        *(v23 + 10) = v18;
        *(v23 + 52) = 0;
        *(v23 + 44) = 0;
        v23[60] = 1;
        v24 = v98.i16[0];
        v23[63] = v98.i8[2];
        *(v23 + 61) = v24;
        *(v23 + 8) = MEMORY[0x1E69E7CC8];
        *(v23 + 9) = MEMORY[0x1E69E7CD0];
        *(v23 + 5) = __dst;
        v25 = v131;
        v26 = v132;
        v27 = v134;
        *(v23 + 8) = v133;
        *(v23 + 9) = v27;
        *(v23 + 6) = v25;
        *(v23 + 7) = v26;
        v28 = v135;
        v29 = v136;
        v30 = v138;
        *(v23 + 12) = v137;
        *(v23 + 13) = v30;
        *(v23 + 10) = v28;
        *(v23 + 11) = v29;
        *(v23 + 28) = 0;
        *(v23 + 58) = 0;
        *(v2 + 160) = v19;
        swift_endAccess();
        ++*(v2 + 168);
        if (v12 < v5)
        {
          swift_beginAccess();
          specialized MutableCollection.swapAt(_:_:)(v12, v5);
          swift_endAccess();
        }

        v31 = __OFADD__(v5++, 1);
        v8 = v84;
        v7 = v81;
        if (v31)
        {
          goto LABEL_43;
        }

        if (v10 == v84)
        {
          goto LABEL_33;
        }

        --v87;
        v9 = 1;
      }

      v14 = 0;
      v15 = *(v2 + 160);
      v16 = *(v15 + 16);
      v17 = (v15 + v11);
      while (1)
      {
        if (v12 + v14 >= v5)
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v12 + v14 >= v16)
        {
          goto LABEL_40;
        }

        if (*v17 == v13)
        {
          break;
        }

        ++v14;
        v17 += 26;
        if (!(v87 + v12 + v14))
        {
          goto LABEL_23;
        }
      }

      if (v14)
      {
        swift_beginAccess();
        specialized MutableCollection.swapAt(_:_:)(v12, v12 + v14);
        swift_endAccess();

        v9 = 1;
        if (v10 != v8)
        {
          goto LABEL_4;
        }

LABEL_33:

        if (v8 >= v5)
        {
LABEL_37:
          ++*(v2 + 172);
          return;
        }
      }

      else
      {

        v11 += 208;
        ++v12;
        if (v10 != v8)
        {
          goto LABEL_5;
        }

        if (v8 >= v5)
        {
          if ((v9 & 1) == 0)
          {
            return;
          }

          goto LABEL_37;
        }
      }

      goto LABEL_47;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v84 = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  if (v5 <= 0)
  {
    return;
  }

LABEL_47:
  v32 = 208 * v5;
  while (1)
  {
    swift_beginAccess();
    v33 = *(v2 + 160);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 160) = v33;
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v5 < 1)
    {
      goto LABEL_67;
    }

LABEL_50:
    if (--v5 >= *(v33 + 2))
    {
      goto LABEL_68;
    }

    v35 = &v33[v32];
    if (*(*&v33[v32 - 136] + 16))
    {
      if ((*(v35 - 148) & 1) == 0)
      {
        v36 = &v33[v32 - 128];
        v37 = *&v33[v32 - 16];
        v127 = *&v33[v32 - 32];
        v128 = v37;
        v129 = *&v33[v32];
        v38 = *&v33[v32 - 80];
        v123 = *&v33[v32 - 96];
        v124 = v38;
        v39 = *&v33[v32 - 48];
        v125 = *&v33[v32 - 64];
        v126 = v39;
        v40 = *&v33[v32 - 112];
        v121 = *v36;
        v122 = v40;
        memmove(&__dst, v36, 0x90uLL);
        if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(&__dst) == 1)
        {
          v150 = v127;
          v151 = v128;
          v152 = v129;
          v146 = v123;
          v147 = v124;
          v149 = v126;
          v148 = v125;
          v42 = v121;
          v41 = v122;
        }

        else
        {
          v118 = v127;
          v119 = v128;
          v120 = v129;
          v114 = v123;
          v115 = v124;
          v116 = v125;
          v117 = v126;
          v112 = v121;
          v113 = v122;
          if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(&v112) == 1)
          {
            destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v112);
            Value = AGGraphGetValue();
            v144 = *Value;
            v44 = Value[3];
            v46 = Value[1];
            v45 = Value[2];
            v148 = Value[4];
            v147 = v44;
            v145 = v46;
            v146 = v45;
            v47 = Value[7];
            v49 = Value[5];
            v48 = Value[6];
            v152 = Value[8];
            v151 = v47;
            v149 = v49;
            v150 = v48;
            v88 = v152.i64[1];
            v86 = v147;
            v83 = v146;
            v50 = *(&v145 + 4);
            v82 = v145;
            v80 = BYTE1(v145);
            v78 = v144.i64[1];
            v51 = v144.i8[0];
            outlined init with copy of GestureDebug.Data(&v144, &v98);
            v109 = v150;
            v110 = v151;
            v111 = v152.i8[0];
            v53 = v148;
            v52 = v149;
          }

          else
          {
            v54 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v112);
            v88 = *(v54 + 136);
            v86 = *(v54 + 48);
            v83 = *(v54 + 32);
            v50 = *(v54 + 20);
            v82 = *(v54 + 16);
            v80 = *(v54 + 17);
            v78 = *(v54 + 8);
            v51 = *v54;
            v147 = v124;
            v151 = v128;
            v150 = v127;
            v148 = v125;
            v149 = v126;
            v145 = v122;
            v146 = v123;
            v144 = v121;
            v152 = v129;
            v55 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v144);
            outlined init with copy of GestureDebug.Data(v55, &v98);
            v56 = *(v54 + 112);
            v109 = *(v54 + 96);
            v110 = v56;
            v111 = *(v54 + 128);
            v53 = *(v54 + 64);
            v52 = *(v54 + 80);
            v8 = v84;
          }

          v107 = v53;
          v108 = v52;
          v95 = v109;
          v96 = v110;
          v97.i8[0] = v111;
          v93 = v53;
          v94 = v52;
          v89.i8[0] = v51;
          v89.i64[1] = v78;
          LOBYTE(v90) = v82;
          BYTE1(v90) = v80;
          *(&v90 + 4) = v50;
          v91 = v83;
          v92 = v86;
          v97.i64[1] = v88;
          _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi_(&v89);
          v104 = v95;
          v105 = v96;
          v106 = v97;
          v100 = v91;
          v101 = v92;
          v102 = v93;
          v103 = v94;
          v98 = v89;
          v99 = v90;
          _ViewInputs.base.modify();
          v150 = v104;
          v151 = v105;
          v152 = v106;
          v146 = v100;
          v147 = v101;
          v149 = v103;
          v148 = v102;
          v42 = v98;
          v41 = v99;
        }

        v144 = v42;
        v145 = v41;
        v112 = *v36;
        v57 = *&v33[v32 - 112];
        v58 = *&v33[v32 - 96];
        v59 = *&v33[v32 - 64];
        v115 = *&v33[v32 - 80];
        v116 = v59;
        v113 = v57;
        v114 = v58;
        v60 = *&v33[v32 - 48];
        v61 = *&v33[v32 - 32];
        v62 = *&v33[v32];
        v119 = *&v33[v32 - 16];
        v120 = v62;
        v117 = v60;
        v118 = v61;
        v63 = _s7SwiftUI16HitTestableEventVSgWOhTm_0(&v112, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData);
        *&v33[v32 - 48] = v149;
        *&v33[v32 - 32] = v150;
        *&v33[v32 - 16] = v151;
        *&v33[v32] = v152;
        *&v33[v32 - 112] = v145;
        *&v33[v32 - 96] = v146;
        *&v33[v32 - 80] = v147;
        *&v33[v32 - 64] = v148;
        *v36 = v144;
        *(v35 - 38) = 0;
        *(v35 - 148) = 1;
        v64 = *&v33[v32 - 160];
        if (v64)
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
        }

        *&v33[v32 - 160] = 0;
        (*(**(v35 - 22) + 120))(v63);
      }

      v65 = &v33[v32];

      *(v65 - 18) = MEMORY[0x1E69E7CC8];
      *(v35 - 17) = MEMORY[0x1E69E7CD0];
      ++*(v65 - 41);
    }

    ++*(v2 + 172);
    v66 = *(v33 + 2);
    if (!v66)
    {
      goto LABEL_69;
    }

    v67 = v66 - 1;
    v68 = &v33[208 * v67 + 32];
    v69 = *v68;
    v70 = *(v68 + 16);
    v71 = *(v68 + 24);
    v72 = *(v68 + 28);
    v149 = *(v68 + 128);
    v150 = *(v68 + 144);
    v151 = *(v68 + 160);
    v152 = *(v68 + 176);
    v145 = *(v68 + 64);
    v146 = *(v68 + 80);
    v147 = *(v68 + 96);
    v148 = *(v68 + 112);
    v144 = *(v68 + 48);
    v73 = *(v68 + 192);
    v74 = *(v68 + 200);
    v75 = *(v68 + 8);
    v76 = *(v68 + 32);
    *(v33 + 2) = v67;
    *(v2 + 160) = v33;
    __dst.i64[0] = v69;
    __dst.i64[1] = v75;
    *&v131 = v70;
    DWORD2(v131) = v71;
    BYTE12(v131) = v72;
    v132 = v76;
    v135 = v146;
    v136 = v147;
    v133 = v144;
    v134 = v145;
    v140 = v151;
    v141 = v152;
    v137 = v148;
    v138 = v149;
    v139 = v150;
    v142 = v73;
    v143 = v74;
    swift_endAccess();
    outlined destroy of LayoutGestureBox.Child(&__dst);
    v32 -= 208;
    if (v8 >= v5)
    {
      goto LABEL_37;
    }
  }

  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
  *(v2 + 160) = v33;
  if (v5 >= 1)
  {
    goto LABEL_50;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void LayoutGestureBox.willSendEvents<A>(_:gesture:boxValueAttribute:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_beginAccess();
  v8 = *(v5 + 160);
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = 64;
    v12 = MEMORY[0x1E69E7CC8];
    while (v10 < *(v8 + 2))
    {
      if (*(*&v8[v11] + 16))
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 160) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          *(v5 + 160) = v8;
        }

        if (v10 >= *(v8 + 2))
        {
          goto LABEL_43;
        }

        *&v8[v11] = v12;
        *(v5 + 160) = v8;
        swift_endAccess();

        ++*(v5 + 172);
      }

      ++v10;
      v11 += 208;
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

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
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {
LABEL_10:
    if (*(a1 + 16))
    {
      v90 = a1;
      v81.i64[0] = v5;
      v14 = a5;
      v15 = *(a5 + 32);

      v16 = a4;
      v15(&v90, &v81, a4, a5);

      v17 = v90;
      v70 = *(*(v5 + 160) + 16);
      if (v70)
      {
        v18 = 0;
        v69 = *MEMORY[0x1E698D3F8];
        v19 = 232;
        v65 = v90;
        do
        {
          v20 = specialized LayoutGesture.childEvents(events:index:box:)(v17, v18, v6);
          if (v20[2])
          {
            v21 = *(v6 + 160);
            if (v18 >= *(v21 + 2))
            {
              goto LABEL_44;
            }

            swift_beginAccess();

            v22 = swift_isUniquelyReferenced_nonNull_native();
            *(v6 + 160) = v21;
            if ((v22 & 1) == 0)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
              *(v6 + 160) = v21;
            }

            if (v18 >= *(v21 + 2))
            {
              goto LABEL_45;
            }

            specialized Set.formUnion<A>(_:)(v20);
            *(v6 + 160) = v21;
            v23 = *(v21 + 2);

            if (v18 >= v23)
            {
              goto LABEL_46;
            }

            *&v21[v19 - 168] = v20;
            *(v6 + 160) = v21;
            swift_endAccess();

            ++*(v6 + 172);
            v24 = *(v6 + 160);
            if (v18 >= *(v24 + 16))
            {
              goto LABEL_47;
            }

            if (*(v24 + v19 - 172))
            {
              if (AGSubgraphIsValid())
              {
                v25 = *(v24 + v19 - 192);
                v26 = AGSubgraphGetGraph();
                v27 = AGSubgraphCreate();

                AGSubgraphAddChild();
                AGGraphClearUpdate();
                v28 = AGSubgraphGetCurrent();
                AGSubgraphSetCurrent();
                closure #1 in LayoutGestureBox.willSendEvents<A>(_:gesture:boxValueAttribute:)(v6, a3, v25, v18, v16, v14);
                AGSubgraphSetCurrent();

                AGGraphSetUpdate();
                v29 = v81.i32[0];
                v30 = v81.i32[1];
                v31 = v81.i64[1];
                v32 = v82.i32[0];
                swift_beginAccess();
                v33 = *(v6 + 160);
                v34 = v27;
                v35 = swift_isUniquelyReferenced_nonNull_native();
                *(v6 + 160) = v33;
                if ((v35 & 1) == 0)
                {
                  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
                  *(v6 + 160) = v33;
                }

                if (v18 >= *(v33 + 2))
                {
                  goto LABEL_51;
                }

                v36 = v27;
                v37 = v30;
                v38 = v29;
                v39 = v31;
                v40 = v32;
                v41 = *&v33[v19 - 184];
                *&v33[v19 - 184] = v36;
                *(v6 + 160) = v33;
                swift_endAccess();

                v42 = v40;
                v43 = v39;
                v44 = v38;
                v45 = v37;
                v17 = v65;
              }

              else
              {
                specialized static GraphHost.currentHost.getter();
                type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
                v44 = specialized GraphHost.intern<A>(_:for:id:)(768, v46, 4);

                v42 = 0;
                v45 = v69;
                v43 = MEMORY[0x1E69E7CC0];
              }

              swift_beginAccess();
              v47 = *(v6 + 160);
              v48 = swift_isUniquelyReferenced_nonNull_native();
              *(v6 + 160) = v47;
              if ((v48 & 1) == 0)
              {
                v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
              }

              if (v18 >= *(v47 + 2))
              {
                goto LABEL_48;
              }

              v49 = &v47[v19];
              *(v49 - 44) = v44;
              *(v49 - 172) = 0;
              *(v6 + 160) = v47;
              if (v45 == v69)
              {
                _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOi0_(&v81);
              }

              else
              {
                v71[0].i32[0] = v45;
                _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi0_(v71);
                v78 = v71[6];
                v79 = v71[7];
                v80 = v71[8];
                v74 = v71[2];
                v75 = v71[3];
                v76 = v71[4];
                v77 = v71[5];
                v72 = v71[0];
                v73 = v71[1];
                _ViewInputs.base.modify();
                v87 = v78;
                v88 = v79;
                v89 = v80;
                v83 = v74;
                v84 = v75;
                v85 = v76;
                v86 = v77;
                v81 = v72;
                v82 = v73;
              }

              v16 = a4;
              *(v6 + 160) = v47;
              if (v18 >= *(v47 + 2))
              {
                goto LABEL_49;
              }

              v50 = &v47[v19];
              v72 = *&v47[v19 - 152];
              v51 = *&v47[v19 - 136];
              v52 = *&v47[v19 - 120];
              v53 = *&v47[v19 - 88];
              v75 = *&v47[v19 - 104];
              v76 = v53;
              v73 = v51;
              v74 = v52;
              v54 = *&v47[v19 - 72];
              v55 = *&v47[v19 - 56];
              v56 = *&v47[v19 - 24];
              v79 = *&v47[v19 - 40];
              v80 = v56;
              v77 = v54;
              v78 = v55;
              *(v50 - 152) = v81;
              v57 = v82;
              v58 = v83;
              v59 = v84;
              *(v50 - 88) = v85;
              *(v50 - 104) = v59;
              *(v50 - 120) = v58;
              *(v50 - 136) = v57;
              v60 = v86;
              v61 = v87;
              v62 = v88;
              *(v50 - 24) = v89;
              *(v50 - 40) = v62;
              *(v50 - 56) = v61;
              *(v50 - 72) = v60;
              *(v6 + 160) = v47;
              swift_endAccess();
              _s7SwiftUI16HitTestableEventVSgWOhTm_0(&v72, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData);
              swift_beginAccess();
              v63 = swift_isUniquelyReferenced_nonNull_native();
              *(v6 + 160) = v47;
              if ((v63 & 1) == 0)
              {
                v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
                *(v6 + 160) = v47;
              }

              if (v18 >= *(v47 + 2))
              {
                goto LABEL_50;
              }

              v64 = &v47[v19];
              *(v64 - 1) = v43;
              *v64 = v42;
              *(v6 + 160) = v47;
              swift_endAccess();

              v14 = a5;
            }
          }

          else
          {
          }

          ++v18;
          v19 += 208;
        }

        while (v70 != v18);
      }
    }
  }
}

uint64_t closure #1 in LayoutGestureBox.willSendEvents<A>(_:gesture:boxValueAttribute:)(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 16);
  v59 = *(a1 + 32);
  v12 = *(a1 + 96);
  v62 = *(a1 + 80);
  v63 = v12;
  v64[0] = *(a1 + 112);
  *(v64 + 12) = *(a1 + 124);
  v58 = v11;
  v13 = *(a1 + 64);
  v60 = *(a1 + 48);
  v61 = v13;
  v57 = v11;
  v14 = *(a1 + 56);
  v51 = *(a1 + 40);
  v52 = v14;
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  v17 = *(a1 + 104);
  v56 = *(a1 + 120);
  v54 = v16;
  v55 = v17;
  v53 = v15;
  v36 = *(&v64[1] + 4);
  swift_beginAccess();
  v18 = *(v59 + 48);
  v65[1] = *(v59 + 32);
  v65[2] = v18;
  v19 = *(v59 + 80);
  v65[3] = *(v59 + 64);
  v65[4] = v19;
  v65[0] = *(v59 + 16);
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v35 = swift_allocObject();
  memmove((v35 + 16), (v59 + 16), 0x50uLL);
  outlined init with copy of _GestureInputs(&v58, &v70);
  outlined init with copy of CachedEnvironment(v65, &v70);

  *&v70 = __PAIR64__(a3, a2);
  v42 = type metadata accessor for LayoutChildEvents(0, a5, a6, v20);
  swift_getWitnessTable(protocol conformance descriptor for LayoutChildEvents<A>, v42);
  v43 = v21;
  _s10Foundation4DateVSgMaTm_5(0, &lazy cache variable for type metadata for Attribute<[EventID : EventType]>, type metadata accessor for [EventID : EventType], MEMORY[0x1E698D388]);
  v22 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v70, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_7, v41, v42, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  v25 = v68[0];
  *&v70 = __PAIR64__(a3, a2);
  v39 = type metadata accessor for LayoutChildSeed(0, a5, a6, v26);
  swift_getWitnessTable(protocol conformance descriptor for LayoutChildSeed<A>, v39);
  v40 = v27;
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for Attribute<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v70, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_14, v38, v39, v22, v28, MEMORY[0x1E69E7410], v29);
  v30 = v68[0];
  swift_beginAccess();
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v31 = *(a1 + 160);
  if (*(v31 + 16) <= a4)
  {
    goto LABEL_5;
  }

  v32 = *(v31 + 208 * a4 + 32);
  v66 = v57;
  *v67 = v35;
  *&v67[72] = v55;
  *&v67[40] = v53;
  *&v67[56] = v54;
  *&v67[8] = v51;
  *&v67[24] = v52;
  *&v67[88] = v56;
  *&v67[92] = v25;
  *&v67[96] = v30;
  *&v67[100] = v36;
  v49 = *&v67[64];
  v50[0] = *&v67[80];
  *(v50 + 12) = *&v67[92];
  v48 = *&v67[48];
  v44 = v57;
  v45 = *v67;
  v46 = *&v67[16];
  v47 = *&v67[32];
  v33 = *(*v32 + 112);

  outlined init with copy of _GestureInputs(&v66, &v70);
  v33(&v44);

  v68[4] = v48;
  v68[5] = v49;
  v69[0] = v50[0];
  *(v69 + 12) = *(v50 + 12);
  v68[0] = v44;
  v68[1] = v45;
  v68[2] = v46;
  v68[3] = v47;
  outlined destroy of _GestureInputs(v68);
  v70 = v57;
  v74 = v53;
  v75 = v54;
  v76 = v55;
  v72 = v51;
  v71 = v35;
  v73 = v52;
  v77 = v56;
  v78 = v25;
  v79 = v30;
  v80 = v36;
  return outlined destroy of _GestureInputs(&v70);
}

uint64_t LayoutGestureBox.__deallocating_deinit()
{
  v1 = *(v0 + 96);
  v5[4] = *(v0 + 80);
  v5[5] = v1;
  v6[0] = *(v0 + 112);
  *(v6 + 12) = *(v0 + 124);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v3 = *(v0 + 64);
  v5[2] = *(v0 + 48);
  v5[3] = v3;
  outlined destroy of _GestureInputs(v5);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t LayoutGestureChildProxy.Child.binds(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[7];
  v13[6] = v1[6];
  v13[7] = v4;
  v5 = v1[5];
  v13[4] = v1[4];
  v13[5] = v5;
  *(v14 + 12) = *(v1 + 188);
  v6 = v1[11];
  v13[10] = v1[10];
  v14[0] = v6;
  v7 = v1[9];
  v13[8] = v1[8];
  v13[9] = v7;
  v8 = v1[1];
  v13[0] = *v1;
  v13[1] = v8;
  v9 = *&v13[0];
  v10 = *(*v2 + 128);
  outlined init with copy of LayoutGestureBox.Child(v13, &v12);
  LOBYTE(v2) = v10(v9);
  outlined destroy of LayoutGestureBox.Child(v13);
  return v2 & 1;
}

Swift::Bool __swiftcall LayoutGestureChildProxy.Child.containsGlobalLocation(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v4 = v1[11];
  v16[10] = v1[10];
  v17[0] = v4;
  *(v17 + 12) = *(v1 + 188);
  v5 = v1[7];
  v16[6] = v1[6];
  v16[7] = v5;
  v6 = v1[9];
  v16[8] = v1[8];
  v16[9] = v6;
  v7 = v1[3];
  v16[2] = v1[2];
  v16[3] = v7;
  v8 = v1[5];
  v16[4] = v1[4];
  v16[5] = v8;
  v9 = v1[1];
  v16[0] = *v1;
  v16[1] = v9;
  v10 = *&v16[0];
  _s10Foundation4DateVSgMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  *(v11 + 32) = x;
  *(v11 + 40) = y;
  v15 = 0;
  v12 = *(*v10 + 184);
  outlined init with copy of LayoutGestureBox.Child(v16, v14);
  LOBYTE(v14[0]) = 1;
  v12(v14, v11, 0x100000000, &v15);

  LOBYTE(v11) = v14[0];

  outlined destroy of LayoutGestureBox.Child(v16);
  return v11 & 1;
}

uint64_t LayoutGestureChildProxy.endIndex.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 160) + 16);
}

void LayoutGestureChildProxy.subscript.getter(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 160);
    if (*(v6 + 16) > a1)
    {
      v7 = (v6 + 208 * a1);
      v24[0] = v7[2];
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      v24[3] = v7[5];
      v24[4] = v10;
      v24[1] = v8;
      v24[2] = v9;
      v11 = v7[7];
      v12 = v7[8];
      v13 = v7[10];
      v24[7] = v7[9];
      v24[8] = v13;
      v24[5] = v11;
      v24[6] = v12;
      v14 = v7[11];
      v15 = v7[12];
      v16 = v7[13];
      *(v25 + 12) = *(v7 + 220);
      v24[10] = v15;
      v25[0] = v16;
      v24[9] = v14;
      v17 = v7[13];
      a2[10] = v7[12];
      a2[11] = v17;
      *(a2 + 188) = *(v7 + 220);
      v18 = v7[9];
      a2[6] = v7[8];
      a2[7] = v18;
      v19 = v7[11];
      a2[8] = v7[10];
      a2[9] = v19;
      v20 = v7[5];
      a2[2] = v7[4];
      a2[3] = v20;
      v21 = v7[7];
      a2[4] = v7[6];
      a2[5] = v21;
      v22 = v7[3];
      *a2 = v7[2];
      a2[1] = v22;
      outlined init with copy of LayoutGestureBox.Child(v24, v23);
      return;
    }
  }

  __break(1u);
}

void LayoutGestureChildProxy.bindChild(index:event:id:)(unint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = *v4;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    goto LABEL_16;
  }

  v13 = *(v12 + 160);
  if (*(v13 + 16) <= a1)
  {
    goto LABEL_24;
  }

  v14 = (v13 + 208 * a1);
  v46[0] = v14[2];
  v15 = v14[3];
  v16 = v14[4];
  v17 = v14[6];
  v46[3] = v14[5];
  v46[4] = v17;
  v46[1] = v15;
  v46[2] = v16;
  v18 = v14[7];
  v19 = v14[8];
  v20 = v14[10];
  v46[7] = v14[9];
  v46[8] = v20;
  v46[5] = v18;
  v46[6] = v19;
  v21 = v14[11];
  v22 = v14[12];
  v23 = v14[13];
  *(v47 + 12) = *(v14 + 220);
  v46[10] = v22;
  v47[0] = v23;
  v46[9] = v21;
  v24 = *&v46[0];
  outlined init with copy of AnyTrackedValue(a2, v45);

  outlined init with copy of LayoutGestureBox.Child(v46, v40);
  HitTestableEvent.init(_:)(v45, v40);
  if (v41 == 1 || (++static ViewResponder.hitTestKey, v25 = static ViewResponder.hitTestKey, hitPoints(point:radius:)(v42, v43, v44), a2 = v26, v5 = v27, v38 = 0, v39[0] = 0, ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v26, v27, v39, v25, &v38, v45), _s7SwiftUI16HitTestableEventVSgWOhTm_0(v40, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent), , , (v28 = v45[0]) == 0))
  {
    outlined destroy of LayoutGestureBox.Child(v46);
  }

  else
  {

    outlined destroy of LayoutGestureBox.Child(v46);
    v24 = v28;
  }

  if (!swift_weakLoadStrong() || (v39[0] = v10, v39[1] = v11, , EventBindingManager.rebindEvent(_:to:)(v39, v24, v45), , , v29 = v45[0], v45[0] == 1))
  {

    v30 = xmmword_18DD85500;
LABEL_21:
    *a4 = v30;
    return;
  }

  v37 = *v45;

  if (!v29)
  {
LABEL_19:

    goto LABEL_20;
  }

  v6 = 0;
  v31 = 0;
  v32 = *(*(v12 + 160) + 16);
  do
  {
    if (v32 == v31)
    {

      goto LABEL_19;
    }

    v33 = *(v12 + 160);
    if (v31 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    ++v31;
    a2 = *(v33 + v6 + 32);
    v34 = *(*v29 + 128);

    v5 = v34(v35);

    v6 += 208;
  }

  while ((v5 & 1) == 0);
  swift_beginAccess();
  a2 = *(v12 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 160) = a2;
  v5 = v31 - 1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v5 < *(a2 + 2))
  {
    ++*&a2[v6 - 164];
    *(v12 + 160) = a2;
    swift_endAccess();

    ++*(v12 + 172);
LABEL_20:
    v30 = v37;
    goto LABEL_21;
  }

  __break(1u);
}

void protocol witness for BidirectionalCollection.index(before:) in conformance LayoutGestureChildProxy(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v2;
    swift_beginAccess();
    if (v4 < *(*(v5 + 160) + 16))
    {
      *a2 = v4;
      return;
    }
  }

  __break(1u);
}

void protocol witness for BidirectionalCollection.formIndex(before:) in conformance LayoutGestureChildProxy(unint64_t *a1)
{
  v2 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *v1;
    swift_beginAccess();
    if (v2 < *(*(v4 + 160) + 16))
    {
      *a1 = v2;
      return;
    }
  }

  __break(1u);
}

void protocol witness for Collection.endIndex.getter in conformance LayoutGestureChildProxy(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  *a1 = *(*(v3 + 160) + 16);
}

void (*protocol witness for Collection.subscript.read in conformance LayoutGestureChildProxy(uint64_t **a1, unint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  LayoutGestureChildProxy.subscript.read(v4, *a2);
  v5[4] = v6;
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void LayoutGestureChildProxy.subscript.read(uint64_t *a1, unint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x288uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v7 + 160);
    if (*(v8 + 16) > a2)
    {
      v9 = (v8 + 208 * a2);
      *v6 = v9[2];
      v10 = v9[3];
      v11 = v9[4];
      v12 = v9[6];
      v6[3] = v9[5];
      v6[4] = v12;
      v6[1] = v10;
      v6[2] = v11;
      v13 = v9[7];
      v14 = v9[8];
      v15 = v9[10];
      v6[7] = v9[9];
      v6[8] = v15;
      v6[5] = v13;
      v6[6] = v14;
      v16 = v9[11];
      v17 = v9[12];
      v18 = v9[13];
      *(v6 + 188) = *(v9 + 220);
      v6[10] = v17;
      v6[11] = v18;
      v6[9] = v16;
      memmove(v6 + 13, v9 + 2, 0xCCuLL);
      outlined init with copy of LayoutGestureBox.Child(v6, (v6 + 26));
      return;
    }
  }

  __break(1u);
}

void LayoutGestureChildProxy.subscript.read(_OWORD **a1)
{
  v1 = *a1;
  v2 = *a1 + 13;
  v3 = *a1 + 26;
  v4 = v1[24];
  v1[36] = v1[23];
  v1[37] = v4;
  v5 = v1[20];
  v1[32] = v1[19];
  v1[33] = v5;
  v6 = v1[22];
  v1[34] = v1[21];
  v1[35] = v6;
  v7 = v1[16];
  v1[28] = v1[15];
  v1[29] = v7;
  v8 = v1[18];
  v1[30] = v1[17];
  v1[31] = v8;
  v9 = v1[14];
  v1[26] = v1[13];
  v1[27] = v9;
  *(v3 + 188) = *(v2 + 188);
  outlined destroy of LayoutGestureChildProxy.Child(v3);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance LayoutGestureChildProxy(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  swift_beginAccess();
  if (v4 < 0 || *(*(v6 + 160) + 16) < v5)
  {
    __break(1u);
  }

  else
  {
    a2[1] = v5;
    a2[2] = v6;
    *a2 = v4;
  }
}

void protocol witness for Collection.indices.getter in conformance LayoutGestureChildProxy(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(*(v3 + 160) + 16);
  *a1 = 0;
  a1[1] = v4;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance LayoutGestureChildProxy()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 160) + 16) == 0;
}

void protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance LayoutGestureChildProxy(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    swift_beginAccess();
    if (v5 <= *(*(v6 + 160) + 16))
    {
      *a3 = v5;
      return;
    }
  }

  __break(1u);
}

void protocol witness for RandomAccessCollection.distance(from:to:) in conformance LayoutGestureChildProxy(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  swift_beginAccess();
  v6 = *(*(v5 + 160) + 16);
  if (v3 > v6)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v4 > v6)
  {
LABEL_5:
    __break(1u);
  }
}

void protocol witness for Collection.index(after:) in conformance LayoutGestureChildProxy(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();
  if (v4 >= *(*(v5 + 160) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }
}

void protocol witness for Collection.formIndex(after:) in conformance LayoutGestureChildProxy(unint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  swift_beginAccess();
  if (v3 >= *(*(v4 + 160) + 16))
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance LayoutGestureChildProxy()
{
  specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = v1;

  return v2;
}

uint64_t UpdateLayoutGestureBox.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  Value = AGGraphGetValue();
  LayoutGestureBox.updateResetSeed(_:)(*Value);
  v12 = AGGraphGetValue();
  v14 = v13;
  (*(v8 + 16))(v10, v12, a4);
  if (v14)
  {
    v15 = (*(a5 + 24))(a4, a5);
    LayoutGestureBox.updateResponder(_:)(v15);
  }

  type metadata accessor for [EventID : EventType](0);
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v17 = result;

    LayoutGestureBox.willSendEvents<A>(_:gesture:boxValueAttribute:)(v18, v10, v17, a4, a5);

    (*(v8 + 8))(v10, a4);
    return a3;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance UpdateLayoutGestureBox<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UpdateLayoutGestureBox.value.getter(*v2, *(v2 + 8), *(v2 + 16), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

void LayoutChildEvents.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  v2 = *AGGraphGetValue();
  swift_beginAccess();
  v3 = *(v2 + 160);
  v4 = v3 - 144;
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 + 184);
    v4 += 208;
    if (v6 == v1)
    {

      return;
    }
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

uint64_t LayoutChildSeed.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(*Value + 176);
  swift_beginAccess();
  v5 = *(v3 + 160);
  v6 = v5 - 164;
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = (v6 + 208);
    v9 = *(v6 + 204);
    v6 += 208;
    if (v9 == v1)
    {
      v10 = *v8;
      return (v10 + v4);
    }
  }

  v10 = 0x10000;
  return (v10 + v4);
}

uint64_t protocol witness for Rule.value.getter in conformance LayoutChildSeed<A>@<X0>(_DWORD *a1@<X8>)
{
  result = LayoutChildSeed.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t LayoutPhase.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a4@<X8>)
{
  v16 = a4;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v10 = *(v5 + 16);
  v10(v7, Value, a2);
  LayoutGesture.phase(box:)(v8, &v17);
  v11 = *(v5 + 8);
  v11(v7, a2);
  v15 = v17;
  v12 = AGGraphGetValue();
  v10(v7, v12, a2);
  specialized LayoutGestureBox.resetTerminalChildren<A>(gesture:)();

  result = (v11)(v7, a2);
  *v16 = v15;
  return result;
}

uint64_t static LayoutGesturePreferenceCombiner.initialValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t LayoutGesturePreferenceCombiner.value.getter@<X0>(unint64_t a1@<X0>, void (**a2)(uint64_t, char *, uint64_t)@<X1>, void (**a3)(uint64_t, char *, uint64_t)@<X2>, void (**a4)(uint64_t, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v11 + 16))(v13, Value, a2);
  v15 = *AGGraphGetValue();

  LayoutGesture.preferenceValue<A>(key:box:)(a3, v15, a2, a3, a4, a5, a6);

  return (*(v11 + 8))(v13, a2);
}

double LayoutDebug.transform.getter@<D0>(uint64_t a2@<X8>)
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

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance LayoutGesturePreferenceCombiner<A, B>(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  static LayoutGesturePreferenceCombiner.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for LayoutGesturePreferenceCombiner<A, B>, a2, v16);
  v19[-1] = v17;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in static Rule._updateDefault(_:), &v19[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LayoutGesturePreferenceCombiner<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LayoutGesturePreferenceCombiner<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

void LayoutDebug.value.getter(unint64_t a1@<X1>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  v9 = *AGGraphGetValue();
  swift_beginAccess();
  v10 = *(v9 + 160);
  v11 = *(v10 + 16);

  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = 0;
    v14 = v10 + 80;
    do
    {
      v15 = (v14 + 208 * v13);
      v16 = v11 - v13;
      while (1)
      {
        if (v13 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        __src[0] = *(v15 - 3);
        v17 = *(v15 - 2);
        v18 = *(v15 - 1);
        v19 = v15[1];
        __src[3] = *v15;
        __src[4] = v19;
        __src[1] = v17;
        __src[2] = v18;
        v20 = v15[2];
        v21 = v15[3];
        v22 = v15[5];
        __src[7] = v15[4];
        __src[8] = v22;
        __src[5] = v20;
        __src[6] = v21;
        v23 = v15[6];
        v24 = v15[7];
        v25 = v15[8];
        *(&__src[11] + 12) = *(v15 + 140);
        __src[10] = v24;
        __src[11] = v25;
        __src[9] = v23;
        v86 = *v15;
        v26 = v15[1];
        v27 = v15[2];
        v28 = v15[4];
        v89 = v15[3];
        v90 = v28;
        v87 = v26;
        v88 = v27;
        v29 = v15[5];
        v30 = v15[6];
        v31 = v15[7];
        v94 = v15[8];
        v93 = v31;
        v92 = v30;
        v91 = v29;
        if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(&v86) != 1)
        {
          break;
        }

        v15 += 13;
        ++v13;
        if (!--v16)
        {
          goto LABEL_16;
        }
      }

      v85[6] = v92;
      v85[7] = v93;
      v85[8] = v94;
      v85[2] = v88;
      v85[3] = v89;
      v85[4] = v90;
      v85[5] = v91;
      v85[0] = v86;
      v85[1] = v87;
      v65 = v6;
      if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(v85) == 1)
      {
        destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(v85);
        outlined init with copy of LayoutGestureBox.Child(__src, &v69);
        Value = AGGraphGetValue();
        v74 = *Value;
        v33 = Value[4];
        v35 = Value[1];
        v34 = Value[2];
        v77 = Value[3];
        v78 = v33;
        v75 = v35;
        v76 = v34;
        v36 = Value[8];
        v38 = Value[5];
        v37 = Value[6];
        v81 = Value[7];
        v82 = v36;
        v79 = v38;
        v80 = v37;
        outlined init with copy of GestureDebug.Data(&v74, &v69);
        outlined destroy of LayoutGestureBox.Child(__src);
        v64 = v82.n128_u64[1];
        v62 = v77;
        v63 = v76;
        v40 = *(v75.n128_i64 + 4);
        v60 = v75.n128_i8[1];
        v61 = v75.n128_u8[0];
        v59 = v74.n128_u64[1];
        v58 = v74.n128_u8[0];
        v71 = v80;
        v72 = v81;
        v73 = v82.n128_u8[0];
        v43 = v78;
        v42 = v79;
      }

      else
      {
        v39 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(v85);
        v64 = *(v39 + 136);
        v62 = *(v39 + 48);
        v63 = *(v39 + 32);
        v40 = *(v39 + 20);
        v60 = *(v39 + 17);
        v61 = *(v39 + 16);
        v59 = *(v39 + 8);
        v58 = *v39;
        outlined init with copy of LayoutGestureBox.Child.DebugData?(&__src[3], &v69, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData, MEMORY[0x1E69E6720], type metadata accessor for Attribute<LayoutGestureBox.Value>);
        v41 = *(v39 + 112);
        v71 = *(v39 + 96);
        v72 = v41;
        v73 = *(v39 + 128);
        v43 = *(v39 + 64);
        v42 = *(v39 + 80);
      }

      v69 = v43;
      v70 = v42;
      v44 = a4;
      v45 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v47 = *(v12 + 2);
      v46 = *(v12 + 3);
      if (v47 >= v46 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v12);
      }

      ++v13;
      v78.n128_u8[0] = v73;
      v76 = v71;
      v77 = v72;
      v74 = v69;
      v75 = v70;
      *(v12 + 2) = v47 + 1;
      v48 = &v12[144 * v47];
      v48[32] = v58;
      v49 = *v84;
      *(v48 + 9) = *&v84[3];
      *(v48 + 33) = v49;
      *(v48 + 5) = v59;
      v48[48] = v61;
      v48[49] = v60;
      *(v48 + 52) = v40;
      *(v48 + 4) = v63;
      *(v48 + 5) = v62;
      *(v48 + 6) = v74;
      LOBYTE(v49) = v78.n128_u8[0];
      v51 = v76;
      v50 = v77;
      *(v48 + 7) = v75;
      *(v48 + 8) = v51;
      *(v48 + 9) = v50;
      v48[160] = v49;
      v52 = *&v83[3];
      *(v48 + 161) = *v83;
      *(v48 + 41) = v52;
      *(v48 + 21) = v64;
      v8 = v45;
      a4 = v44;
      v6 = v65;
      v14 = v10 + 80;
    }

    while (v16 != 1);
  }

LABEL_16:

  type metadata accessor for CGPoint(0);
  v85[0] = *AGGraphGetValue();
  memset(__src, 0, 40);
  BYTE8(__src[2]) = 2;
  LayoutDebug.transform.getter(&v86);
  specialized ApplyViewTransform.convert(to:transform:)(__src, &v86);
  outlined destroy of ViewTransform(&v86);
  outlined destroy of CoordinateSpace(__src);
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12GestureDebugO4DataV_SayAJGTt1g5(v12, __src);
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v53 = *AGGraphGetValue();
  v54 = *AGGraphGetValue();
  v66 = v85[0];
  v67 = *AGGraphGetValue();
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCSS_SSt_SRySS_SStGTt1g5((MEMORY[0x1E69E7CC0] + 32), 0, &v69);
  *a5 = 4;
  *(a5 + 8) = a4;
  v55 = swift_allocObject();
  memcpy((v55 + 16), __src, 0x121uLL);
  *(a5 + 136) = v55;
  *(a5 + 16) = v53;
  *(a5 + 20) = v8;
  *(a5 + 24) = v54;
  *(a5 + 32) = v66;
  *(a5 + 48) = v67;
  v56 = v72;
  *(a5 + 96) = v71;
  *(a5 + 112) = v56;
  *(a5 + 128) = v73;
  v57 = v70;
  *(a5 + 64) = v69;
  *(a5 + 80) = v57;
}

void type metadata accessor for Attribute<GesturePhase<()>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<GesturePhase<()>>)
  {
    type metadata accessor for Attribute<LayoutGestureBox.Value>(255, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<GesturePhase<()>>);
    }
  }
}

uint64_t specialized UnsafeBufferPointer._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    type metadata accessor for (String, String)();
    swift_arrayInitWithCopy();
    a3 += 32 * v5;
  }

  return a3;
}

void lazy protocol witness table accessor for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy()
{
  if (!lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutGestureChildProxy, &type metadata for LayoutGestureChildProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutGestureChildProxy, &type metadata for LayoutGestureChildProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutGestureChildProxy, &type metadata for LayoutGestureChildProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy);
  }
}

{
  if (!lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutGestureChildProxy, &type metadata for LayoutGestureChildProxy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy);
  }
}

void lazy protocol witness table accessor for type Slice<LayoutGestureChildProxy> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for Slice<LayoutGestureChildProxy>(255, &lazy cache variable for type metadata for Slice<LayoutGestureChildProxy>, lazy protocol witness table accessor for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy, &type metadata for LayoutGestureChildProxy, MEMORY[0x1E69E74D0]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Slice<LayoutGestureChildProxy> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for Slice<LayoutGestureChildProxy>(255, a2, lazy protocol witness table accessor for type LayoutGestureChildProxy and conformance LayoutGestureChildProxy, &type metadata for LayoutGestureChildProxy, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

double outlined copy of LayoutGestureBox.Child.DebugData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if ((a18 & 0x8000000000000000) == 0)
  {
    outlined copy of ArrayWith2Inline<(String, String)>.Storage(a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  return result;
}

double outlined consume of LayoutGestureBox.Child.DebugData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if ((a18 & 0x8000000000000000) == 0)
  {
    outlined consume of ArrayWith2Inline<(String, String)>.Storage(a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  return result;
}

__n128 __swift_memcpy204_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t *initializeWithCopy for LayoutGestureBox.Child.DebugData(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v19 = a2[15];
  v20 = a2[16];
  v21 = a2[17];
  outlined copy of LayoutGestureBox.Child.DebugData(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  a1[10] = v14;
  a1[11] = v15;
  a1[12] = v16;
  a1[13] = v17;
  a1[14] = v18;
  a1[15] = v19;
  a1[16] = v20;
  a1[17] = v21;
  return a1;
}

uint64_t assignWithCopy for LayoutGestureBox.Child.DebugData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v27 = a2[9];
  v28 = a2[10];
  v29 = a2[11];
  v30 = a2[12];
  v31 = a2[13];
  v32 = a2[14];
  v33 = a2[15];
  v34 = a2[16];
  v35 = a2[17];
  outlined copy of LayoutGestureBox.Child.DebugData(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v27;
  *(a1 + 80) = v28;
  *(a1 + 88) = v29;
  *(a1 + 96) = v30;
  *(a1 + 104) = v31;
  *(a1 + 112) = v32;
  *(a1 + 120) = v33;
  *(a1 + 128) = v34;
  *(a1 + 136) = v35;
  outlined consume of LayoutGestureBox.Child.DebugData(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25);
  return a1;
}

uint64_t assignWithTake for LayoutGestureBox.Child.DebugData(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  v14 = *(a1 + 112);
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  v17 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v18;
  v19 = a2[5];
  *(a1 + 64) = a2[4];
  *(a1 + 80) = v19;
  v20 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v20;
  *(a1 + 128) = a2[8];
  outlined consume of LayoutGestureBox.Child.DebugData(v3, v5, v4, v6, v7, v8, v9, v10, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for LayoutGestureBox.Child.DebugData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  if (*a1 > 0x80000000FFFFFFFFLL)
  {
    v2 = ~HIDWORD(*a1);
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double storeEnumTagSinglePayload for LayoutGestureBox.Child.DebugData(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      *a1 = -a2 << 32;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t destructiveInjectEnumTag for LayoutGestureBox.Child.DebugData(int8x16_t *a1, uint64_t a2)
{
  result = vandq_s8(*a1, xmmword_18DDE49C0);
  v3 = vandq_s8(a1[1], xmmword_18DDE49D0);
  v4 = a1[8].i64[0] & 3;
  v5 = a1[8].i64[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *a1 = result;
  a1[1] = v3;
  a1[8].i64[0] = v4;
  a1[8].i64[1] = v5;
  return result;
}

double destroy for LayoutGestureChildProxy.Child(uint64_t a1)
{

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  v5 = *(a1 + 184);
  if ((v5 & 0xF000000000000007) != 0 || *(a1 + 176) > 3uLL || HIDWORD(v4) != 0 || v2 < 0xFFFFFFFF00000000 || (*(a1 + 64) & 0xFFFFFC00 | v3 & 0xF000000000000007) != 0)
  {
    outlined consume of LayoutGestureBox.Child.DebugData(v2, v3, *(a1 + 64), v4, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), v5);
  }

  return result;
}

uint64_t initializeWithCopy for LayoutGestureChildProxy.Child(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  v4 = a2[2];
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 28) = *(a2 + 28);
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  v6 = a2 + 6;
  v31 = a2[7];
  v32 = a2[6];
  v30 = a2[8];
  v7 = a2[22];
  v8 = a2[23];
  v9 = a2[9];

  v10 = v4;

  if ((v8 & 0xF000000000000007) != 0 || v7 > 3 || HIDWORD(v9) || v32 < 0xFFFFFFFF00000000 || v30 & 0xFFFFFC00 | v31 & 0xF000000000000007)
  {
    v15 = a2[10];
    v16 = a2[11];
    v17 = a2[12];
    v21 = a2[14];
    v23 = a2[15];
    v24 = a2[16];
    v25 = a2[17];
    v26 = a2[18];
    v27 = a2[19];
    v28 = a2[20];
    v29 = a2[21];
    v20 = v8;
    v22 = v8;
    v18 = a2[13];
    outlined copy of LayoutGestureBox.Child.DebugData(v32, v31, v30, v9, v15, v16, v17, v18, v21, v23, v24, v25, v26, v27, v28, v29, v7, v20);
    *(a1 + 48) = v32;
    *(a1 + 56) = v31;
    *(a1 + 64) = v30;
    *(a1 + 72) = v9;
    *(a1 + 80) = v15;
    *(a1 + 88) = v16;
    *(a1 + 96) = v17;
    *(a1 + 104) = v18;
    *(a1 + 112) = v21;
    *(a1 + 120) = v23;
    *(a1 + 128) = v24;
    *(a1 + 136) = v25;
    *(a1 + 144) = v26;
    *(a1 + 152) = v27;
    *(a1 + 160) = v28;
    *(a1 + 168) = v29;
    *(a1 + 176) = v7;
    *(a1 + 184) = v22;
  }

  else
  {
    v11 = *(v6 + 7);
    *(a1 + 144) = *(v6 + 6);
    *(a1 + 160) = v11;
    *(a1 + 176) = *(v6 + 8);
    v12 = *(v6 + 3);
    *(a1 + 80) = *(v6 + 2);
    *(a1 + 96) = v12;
    v13 = *(v6 + 5);
    *(a1 + 112) = *(v6 + 4);
    *(a1 + 128) = v13;
    v14 = *(v6 + 1);
    *(a1 + 48) = *v6;
    *(a1 + 64) = v14;
  }

  *(a1 + 192) = a2[24];
  *(a1 + 200) = *(a2 + 50);

  return a1;
}

uint64_t assignWithCopy for LayoutGestureChildProxy.Child(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 3);
  v4 = *(a1 + 16);
  v5 = a2[2];
  *(a1 + 16) = v5;
  v6 = v5;

  v7 = *(a2 + 6);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = v7;
  *(a1 + 32) = a2[4];

  *(a1 + 40) = a2[5];

  v8 = (a1 + 48);
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2 + 6;
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[22];
  v15 = a2[23];
  if (v12 & 0xFFFFFC00 | v10 & 0xF000000000000007 | HIDWORD(v13))
  {
    v16 = 0;
  }

  else
  {
    v16 = v9 > 0xFFFFFFFEFFFFFFFFLL;
  }

  v18 = v16 && v14 < 4 && (v15 & 0xF000000000000007) == 0;
  if ((*(a1 + 184) & 0xF000000000000007) != 0 || *(a1 + 176) > 3uLL || HIDWORD(*(a1 + 72)) || *(a1 + 48) < 0xFFFFFFFF00000000 || *(a1 + 64) & 0xFFFFFC00 | *(a1 + 56) & 0xF000000000000007)
  {
    if (v18)
    {
      outlined destroy of LayoutGestureBox.Child.DebugData((a1 + 48));
      *v8 = *v11;
      v25 = *(a2 + 7);
      v27 = *(a2 + 4);
      v26 = *(a2 + 5);
      *(a1 + 96) = *(a2 + 6);
      *(a1 + 112) = v25;
      *(a1 + 64) = v27;
      *(a1 + 80) = v26;
      v28 = *(a2 + 11);
      v30 = *(a2 + 8);
      v29 = *(a2 + 9);
      *(a1 + 160) = *(a2 + 10);
      *(a1 + 176) = v28;
      *(a1 + 128) = v30;
      *(a1 + 144) = v29;
    }

    else
    {
      v34 = a2[10];
      v33 = a2[11];
      v51 = a2[13];
      v53 = a2[12];
      v55 = a2[14];
      v57 = a2[15];
      v59 = a2[16];
      v61 = a2[17];
      v63 = a2[18];
      v65 = a2[19];
      v67 = a2[20];
      v69 = a2[21];
      outlined copy of LayoutGestureBox.Child.DebugData(v9, v10, v12, v13, v34, v33, v53, v51, v55, v57, v59, v61, v63, v65, v67, v69, v14, v15);
      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      v37 = *(a1 + 64);
      v38 = *(a1 + 72);
      v39 = *(a1 + 80);
      v40 = *(a1 + 88);
      v41 = *(a1 + 96);
      v42 = *(a1 + 104);
      v43 = *(a1 + 112);
      v44 = *(a1 + 128);
      v45 = *(a1 + 144);
      v46 = *(a1 + 160);
      v47 = *(a1 + 176);
      v48 = *(a1 + 184);
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
      *(a1 + 64) = v12;
      *(a1 + 72) = v13;
      *(a1 + 80) = v34;
      *(a1 + 88) = v33;
      *(a1 + 96) = v53;
      *(a1 + 104) = v51;
      *(a1 + 112) = v55;
      *(a1 + 120) = v57;
      *(a1 + 128) = v59;
      *(a1 + 136) = v61;
      *(a1 + 144) = v63;
      *(a1 + 152) = v65;
      *(a1 + 160) = v67;
      *(a1 + 168) = v69;
      *(a1 + 176) = v14;
      *(a1 + 184) = v15;
      outlined consume of LayoutGestureBox.Child.DebugData(v35, v36, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48);
    }
  }

  else if (v18)
  {
    *v8 = *v11;
    v19 = *(a2 + 4);
    v20 = *(a2 + 5);
    v21 = *(a2 + 7);
    *(a1 + 96) = *(a2 + 6);
    *(a1 + 112) = v21;
    *(a1 + 64) = v19;
    *(a1 + 80) = v20;
    v22 = *(a2 + 8);
    v23 = *(a2 + 9);
    v24 = *(a2 + 11);
    *(a1 + 160) = *(a2 + 10);
    *(a1 + 176) = v24;
    *(a1 + 128) = v22;
    *(a1 + 144) = v23;
  }

  else
  {
    v32 = a2[10];
    v31 = a2[11];
    v50 = a2[13];
    v52 = a2[12];
    v54 = a2[14];
    v56 = a2[15];
    v58 = a2[16];
    v60 = a2[17];
    v62 = a2[18];
    v64 = a2[19];
    v66 = a2[20];
    v68 = a2[21];
    outlined copy of LayoutGestureBox.Child.DebugData(v9, v10, v12, v13, v32, v31, v52, v50, v54, v56, v58, v60, v62, v64, v66, v68, v14, v15);
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v12;
    *(a1 + 72) = v13;
    *(a1 + 80) = v32;
    *(a1 + 88) = v31;
    *(a1 + 96) = v52;
    *(a1 + 104) = v50;
    *(a1 + 112) = v54;
    *(a1 + 120) = v56;
    *(a1 + 128) = v58;
    *(a1 + 136) = v60;
    *(a1 + 144) = v62;
    *(a1 + 152) = v64;
    *(a1 + 160) = v66;
    *(a1 + 168) = v68;
    *(a1 + 176) = v14;
    *(a1 + 184) = v15;
  }

  *(a1 + 192) = a2[24];

  *(a1 + 200) = *(a2 + 50);
  return a1;
}

uint64_t assignWithTake for LayoutGestureChildProxy.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 176);
  v12 = *(a1 + 184);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 176);
  v16 = *(a2 + 184);
  if ((v12 & 0xF000000000000007) != 0 || v11 > 3 || HIDWORD(v10) || v5 < 0xFFFFFFFF00000000 || *(a1 + 64) & 0xFFFFFC00 | v6 & 0xF000000000000007)
  {
    if ((v16 & 0xF000000000000007) != 0 || v15 > 3 || HIDWORD(v14) || v7 < 0xFFFFFFFF00000000 || *(a2 + 64) & 0xFFFFFC00 | v8 & 0xF000000000000007)
    {
      v21 = *(a1 + 80);
      v22 = *(a1 + 88);
      v23 = *(a1 + 96);
      v24 = *(a1 + 104);
      v25 = *(a1 + 112);
      v26 = *(a1 + 128);
      v27 = *(a1 + 144);
      v28 = *(a1 + 160);
      v29 = *(a1 + 168);
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;
      *(a1 + 64) = v13;
      *(a1 + 72) = v14;
      v30 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v30;
      v31 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v31;
      v32 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v32;
      *(a1 + 176) = v15;
      *(a1 + 184) = v16;
      outlined consume of LayoutGestureBox.Child.DebugData(v5, v6, v9, v10, v21, v22, v23, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, v11, v12);
      goto LABEL_14;
    }

    outlined destroy of LayoutGestureBox.Child.DebugData((a1 + 48));
  }

  v17 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v17;
  *(a1 + 176) = *(a2 + 176);
  v18 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v18;
  v19 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v19;
  v20 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v20;
LABEL_14:
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t getEnumTagSinglePayload for LayoutGestureChildProxy.Child(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 204))
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

uint64_t storeEnumTagSinglePayload for LayoutGestureChildProxy.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 204) = 1;
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

    *(result + 204) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UpdateLayoutGestureBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for UpdateLayoutGestureBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for UpdateLayoutGestureBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t *specialized LayoutGesture.childEvents(events:index:box:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v6 = *(a3 + 160);
  if (*(v6 + 16) <= a2)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v7 = (v6 + 208 * a2);
    v78[0] = v7[2];
    v8 = v7[3];
    v9 = v7[4];
    v10 = v7[6];
    v80 = v7[5];
    v81 = v10;
    v78[1] = v8;
    v79 = v9;
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[10];
    v84 = v7[9];
    v85 = v13;
    v82 = v11;
    v83 = v12;
    v14 = v7[11];
    v15 = v7[12];
    v16 = v7[13];
    *(v88 + 12) = *(v7 + 220);
    v87 = v15;
    v88[0] = v16;
    v86 = v14;
    v17 = *(&v79 + 1);
    v89[0] = *(&v79 + 1);
    if (*(*(&v79 + 1) + 16))
    {
      v18 = a1 + 64;
      v19 = 1 << *(a1 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(a1 + 64);
      v63 = *&v78[0];
      outlined init with copy of LayoutGestureBox.Child(v78, &v71);
      outlined init with copy of Set<EventID>(v89, &v71);
      v22 = (v19 + 63) >> 6;
      v62 = v17 + 56;

      v23 = 0;
      v65 = a1 + 64;
      v66 = MEMORY[0x1E69E7CC8];
      v64 = v17;
      while (1)
      {
        if (!v21)
        {
          if (v22 <= v23 + 1)
          {
            v26 = v23 + 1;
          }

          else
          {
            v26 = v22;
          }

          v27 = v26 - 1;
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v25 >= v22)
            {
              v21 = 0;
              v74 = 0;
              v72 = 0u;
              v73 = 0u;
              v23 = v27;
              v71 = 0u;
              goto LABEL_21;
            }

            v21 = *(v18 + 8 * v25);
            ++v23;
            if (v21)
            {
              v23 = v25;
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v25 = v23;
LABEL_20:
        v28 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v29 = v28 | (v25 << 6);
        v30 = (*(a1 + 48) + 16 * v29);
        v31 = *v30;
        v32 = v30[1];
        outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v29, &v68);
        *&v71 = v31;
        *(&v71 + 1) = v32;
        outlined init with take of _ViewList_Elements(&v68, &v72);
LABEL_21:
        v75 = v71;
        v76[0] = v72;
        v76[1] = v73;
        v77 = v74;
        v33 = v71;
        if (!v71)
        {

          outlined destroy of Set<EventID>(v89);
          outlined destroy of LayoutGestureBox.Child(v78);
          return v66;
        }

        v34 = *(&v75 + 1);
        outlined init with take of _ViewList_Elements(v76, &v68);
        v35 = v69;
        v36 = v70;
        __swift_project_boxed_opaque_existential_1(&v68, v69);
        (*(v36 + 24))(&v71, v35, v36);
        if (!v71)
        {
          goto LABEL_29;
        }

        if (((*(*v71 + 128))(v63) & 1) == 0)
        {
          break;
        }

        v37 = a1;
        outlined init with copy of AnyTrackedValue(&v68, &v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v67[0] = v66;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
        v41 = v66[2];
        v42 = (v40 & 1) == 0;
        v43 = __OFADD__(v41, v42);
        v44 = v41 + v42;
        if (v43)
        {
          goto LABEL_48;
        }

        v45 = v40;
        if (v66[3] >= v44)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v59 = v39;
            specialized _NativeDictionary.copy()();
            v39 = v59;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
          if ((v45 & 1) != (v46 & 1))
          {
            goto LABEL_52;
          }
        }

        a1 = v37;
        v66 = *&v67[0];
        if (v45)
        {
          v24 = (*(*&v67[0] + 56) + 40 * v39);
          __swift_destroy_boxed_opaque_existential_1(v24);
          outlined init with take of _ViewList_Elements(&v71, v24);
        }

        else
        {
          *(*&v67[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v53 = (v66[6] + 16 * v39);
          *v53 = v33;
          v53[1] = v34;
          outlined init with take of _ViewList_Elements(&v71, v66[7] + 40 * v39);

          v54 = v66[2];
          v43 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v43)
          {
            goto LABEL_49;
          }

          v66[2] = v55;
        }

LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v18 = v65;
      }

LABEL_29:
      if (*(v64 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v33);
        MEMORY[0x193AC11A0](v34);
        v47 = Hasher._finalize()();
        v48 = -1 << *(v64 + 32);
        v49 = v47 & ~v48;
        if ((*(v62 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          v50 = ~v48;
          while (1)
          {
            v51 = (*(v64 + 48) + 16 * v49);
            if (v51[1] == v34 && *v51 == v33)
            {
              break;
            }

            v49 = (v49 + 1) & v50;
            if (((*(v62 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          outlined init with copy of AnyTrackedValue(&v68, &v71);
          v56 = *(&v72 + 1);
          v57 = v73;
          __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
          *&v67[0] = 0;
          (*(v57 + 32))(v67, v56, v57);
          outlined init with copy of AnyTrackedValue(&v71, v67);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v33, v34, v58);
          __swift_destroy_boxed_opaque_existential_1(&v71);
        }
      }

      goto LABEL_9;
    }

    outlined init with copy of LayoutGestureBox.Child(v78, &v71);
    v61 = specialized Dictionary.optimisticFilter(_:)(a1, v78);
    outlined destroy of LayoutGestureBox.Child(v78);
    return v61;
  }

  return result;
}

void specialized LayoutGestureBox.resetTerminalChildren<A>(gesture:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(*(v0 + 160) + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    if (*(v3 + 16))
    {
      v4 = 0;
      v5 = v2 - 1;
      v6 = MEMORY[0x1E69E7CA8];
      v7 = 44;
      while (1)
      {
        v8 = (v3 + v7);
        v111 = *(v8 - 12);
        v9 = *(v8 + 4);
        v10 = *(v8 + 20);
        v11 = *(v8 + 36);
        v115 = *(v8 + 52);
        v114 = v11;
        v113 = v10;
        v112 = v9;
        v12 = *(v8 + 68);
        v13 = *(v8 + 84);
        v14 = *(v8 + 100);
        v119 = *(v8 + 116);
        v118 = v14;
        v117 = v13;
        v116 = v12;
        v15 = *(v8 + 132);
        v16 = *(v8 + 148);
        v17 = *(v8 + 164);
        *(v122 + 12) = v8[11];
        v122[0] = v17;
        v121 = v16;
        v120 = v15;
        if (!*(*(&v113 + 1) + 16))
        {
          goto LABEL_10;
        }

        if (BYTE12(v112))
        {
          goto LABEL_33;
        }

        type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for GesturePhase<()>, v6 + 8, type metadata accessor for GesturePhase);
        outlined init with copy of LayoutGestureBox.Child(&v111, __dst);
        Value = AGGraphGetValue();
        v19 = Value[1];
        if (v19 != 2 && (v19 != 3 || *Value))
        {
          break;
        }

        swift_beginAccess();
        v20 = *(v1 + 160);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 160) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v1 + 160) = v20;
        }

        if (v4 >= *(v20 + 2))
        {
          goto LABEL_32;
        }

        v22 = &v20[v7];
        if (*(*&v20[v7 + 28] + 16))
        {
          if ((v22[16] & 1) == 0)
          {
            v23 = &v20[v7];
            v24 = *&v20[v7 + 116];
            v25 = *&v20[v7 + 148];
            v107 = *&v20[v7 + 132];
            v108 = v25;
            v109 = *&v20[v7 + 164];
            v26 = *&v20[v7 + 52];
            v27 = *&v20[v7 + 84];
            v103 = *&v20[v7 + 68];
            v104 = v27;
            v105 = *&v20[v7 + 100];
            v106 = v24;
            v101 = *&v20[v7 + 36];
            v102 = v26;
            memmove(__dst, &v20[v7 + 36], 0x90uLL);
            if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(__dst) == 1)
            {
              v98 = v107;
              v99 = v108;
              v100 = v109;
              v94 = v103;
              v95 = v104;
              v96 = v105;
              v97 = v106;
              v29 = v101;
              v28 = v102;
            }

            else
            {
              v89 = v107;
              v90 = v108;
              v91 = v109;
              v85 = v103;
              v86 = v104;
              v87 = v105;
              v88 = v106;
              v83 = v101;
              v84 = v102;
              if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(&v83) == 1)
              {
                destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v83);
                v30 = AGGraphGetValue();
                v92 = *v30;
                v31 = v30[4];
                v33 = v30[1];
                v32 = v30[2];
                v95 = v30[3];
                v96 = v31;
                v93 = v33;
                v94 = v32;
                v34 = v30[8];
                v36 = v30[5];
                v35 = v30[6];
                v99 = v30[7];
                v100 = v34;
                v97 = v36;
                v98 = v35;
                v37 = v34.i64[1];
                v58 = v94;
                v59 = v95;
                v38 = *(v93.i64 + 4);
                v56 = v93.i8[1];
                v57 = v93.i8[0];
                v55 = v92.i64[1];
                v39 = v92.i8[0];
                outlined init with copy of GestureDebug.Data(&v92, &v69);
                v80 = v98;
                v81 = v99;
                v82 = v100.i8[0];
                v41 = v96;
                v40 = v97;
              }

              else
              {
                v42 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v83);
                v58 = *(v42 + 32);
                v59 = *(v42 + 48);
                v38 = *(v42 + 20);
                v56 = *(v42 + 17);
                v57 = *(v42 + 16);
                v54 = *(v42 + 136);
                v55 = *(v42 + 8);
                v39 = *v42;
                v94 = v103;
                v95 = v104;
                v98 = v107;
                v99 = v108;
                v96 = v105;
                v97 = v106;
                v92 = v101;
                v93 = v102;
                v100 = v109;
                v43 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v92);
                outlined init with copy of GestureDebug.Data(v43, &v69);
                v44 = *(v42 + 112);
                v80 = *(v42 + 96);
                v81 = v44;
                v82 = *(v42 + 128);
                v41 = *(v42 + 64);
                v40 = *(v42 + 80);
                v37 = v54;
              }

              v78 = v41;
              v79 = v40;
              v66 = v80;
              v67 = v81;
              v68.i8[0] = v82;
              v64 = v41;
              v65 = v40;
              v60.i8[0] = v39;
              v60.i64[1] = v55;
              v61.i8[0] = v57;
              v61.i8[1] = v56;
              *(v61.i64 + 4) = v38;
              v62 = v58;
              v63 = v59;
              v68.i64[1] = v37;
              _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi_(&v60);
              v75 = v66;
              v76 = v67;
              v77 = v68;
              v71 = v62;
              v72 = v63;
              v73 = v64;
              v74 = v65;
              v69 = v60;
              v70 = v61;
              _ViewInputs.base.modify();
              v98 = v75;
              v99 = v76;
              v100 = v77;
              v94 = v71;
              v95 = v72;
              v96 = v73;
              v97 = v74;
              v29 = v69;
              v28 = v70;
            }

            v92 = v29;
            v93 = v28;
            v83 = *(v23 + 36);
            v45 = *(v23 + 52);
            v46 = *(v23 + 68);
            v47 = *(v23 + 100);
            v86 = *(v23 + 84);
            v87 = v47;
            v84 = v45;
            v85 = v46;
            v48 = *(v23 + 116);
            v49 = *(v23 + 132);
            v50 = *(v23 + 164);
            v90 = *(v23 + 148);
            v91 = v50;
            v88 = v48;
            v89 = v49;
            v51 = _s7SwiftUI16HitTestableEventVSgWOhTm_0(&v83, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData);
            *(v23 + 116) = v97;
            *(v23 + 132) = v98;
            *(v23 + 148) = v99;
            *(v23 + 164) = v100;
            *(v23 + 52) = v93;
            *(v23 + 68) = v94;
            *(v23 + 84) = v95;
            *(v23 + 100) = v96;
            *(v23 + 36) = v92;
            *(v22 + 3) = 0;
            v22[16] = 1;
            v52 = *&v20[v7 + 4];
            if (v52)
            {
              AGSubgraphRef.willInvalidate(isInserted:)(1);
              AGSubgraphInvalidate();
            }

            *&v20[v7 + 4] = 0;
            (*(**(v22 - 12) + 120))(v51);
            v6 = MEMORY[0x1E69E7CA8];
          }

          v53 = &v20[v7];

          *(v53 + 20) = MEMORY[0x1E69E7CC8];
          *(v22 + 28) = MEMORY[0x1E69E7CD0];
          ++*v53;
        }

        *(v1 + 160) = v20;
        swift_endAccess();
        outlined destroy of LayoutGestureBox.Child(&v111);
        ++*(v1 + 172);
        if (v5 == v4)
        {
          return;
        }

LABEL_28:
        v3 = *(v1 + 160);
        v7 += 208;
        if (++v4 >= *(v3 + 16))
        {
          goto LABEL_31;
        }
      }

      outlined destroy of LayoutGestureBox.Child(&v111);
LABEL_10:
      if (v5 == v4)
      {
        return;
      }

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

uint64_t outlined init with copy of Set<EventID>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Slice<LayoutGestureChildProxy>(0, &lazy cache variable for type metadata for Set<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E64E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Slice<LayoutGestureChildProxy>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for Attribute<LayoutGestureBox.Value>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void lazy protocol witness table accessor for type UpdateLayoutGestureBox<DefaultLayoutGesture> and conformance UpdateLayoutGestureBox<A>()
{
  if (!lazy protocol witness table cache variable for type UpdateLayoutGestureBox<DefaultLayoutGesture> and conformance UpdateLayoutGestureBox<A>)
  {
    _sSnySiGMaTm_5(255, &lazy cache variable for type metadata for UpdateLayoutGestureBox<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for UpdateLayoutGestureBox);
    swift_getWitnessTable(protocol conformance descriptor for UpdateLayoutGestureBox<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UpdateLayoutGestureBox<DefaultLayoutGesture> and conformance UpdateLayoutGestureBox<A>);
  }
}

void lazy protocol witness table accessor for type LayoutPhase<DefaultLayoutGesture> and conformance LayoutPhase<A>()
{
  if (!lazy protocol witness table cache variable for type LayoutPhase<DefaultLayoutGesture> and conformance LayoutPhase<A>)
  {
    _sSnySiGMaTm_5(255, &lazy cache variable for type metadata for LayoutPhase<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutPhase);
    swift_getWitnessTable(protocol conformance descriptor for LayoutPhase<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type LayoutPhase<DefaultLayoutGesture> and conformance LayoutPhase<A>);
  }
}

void lazy protocol witness table accessor for type LayoutDebug<DefaultLayoutGesture> and conformance LayoutDebug<A>()
{
  if (!lazy protocol witness table cache variable for type LayoutDebug<DefaultLayoutGesture> and conformance LayoutDebug<A>)
  {
    _sSnySiGMaTm_5(255, &lazy cache variable for type metadata for LayoutDebug<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutDebug);
    swift_getWitnessTable(protocol conformance descriptor for LayoutDebug<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type LayoutDebug<DefaultLayoutGesture> and conformance LayoutDebug<A>);
  }
}

uint64_t outlined init with copy of LayoutGestureBox.Child.DebugData?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined init with take of EveryMinuteTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t KeyframeTimeline.init<A>(initialValue:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a2;
  v32 = a6;
  v30[0] = a5;
  v30[1] = a3;
  v33 = type metadata accessor for Optional();
  v11 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = v30 - v12;
  v14 = *(a5 - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 - 8);
  (*(v19 + 16))(a7, a1, a4, v16);
  type metadata accessor for _ResolvedKeyframes.Track(0, a4, v20, v21);
  v22 = static Array._allocateUninitialized(_:)();
  protocol witness for ProtobufTag.init(rawValue:) in conformance CodableResolvedPaint.Tag(v22, &v34);
  v23 = v34;
  v26 = *(type metadata accessor for KeyframeTimeline(0, a4, v24, v25) + 28);
  *(a7 + v26) = v23;
  v31();
  (*(v19 + 56))(v13, 1, 1, a4);
  v27 = a7 + v26;
  v28 = v30[0];
  (*(v32 + 40))(v27, a1, v13, v30[0]);
  (*(v19 + 8))(a1, a4);
  (*(v11 + 8))(v13, v33);
  return (*(v14 + 8))(v18, v28);
}

uint64_t KeyframeTimeline.init<A>(initialValue:initialVelocity:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v36 = a6;
  v37 = a4;
  v38 = a3;
  v35 = a1;
  v13 = type metadata accessor for Optional();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v39 = *(a6 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 - 8);
  v21 = *(v20 + 16);
  v21(a8, a1, a5, v17);
  type metadata accessor for _ResolvedKeyframes.Track(0, a5, v22, v23);
  v24 = static Array._allocateUninitialized(_:)();
  protocol witness for ProtobufTag.init(rawValue:) in conformance CodableResolvedPaint.Tag(v24, &v43);
  v25 = v43;
  v28 = *(type metadata accessor for KeyframeTimeline(0, a5, v26, v27) + 28);
  *(a8 + v28) = v25;
  v38();
  (v21)(v15, a2, a5);
  (*(v20 + 56))(v15, 0, 1, a5);
  v29 = a8 + v28;
  v31 = v35;
  v30 = v36;
  (*(v40 + 40))(v29, v35, v15, v36);
  v32 = *(v20 + 8);
  v32(a2, a5);
  v32(v31, a5);
  (*(v41 + 8))(v15, v42);
  return (*(v39 + 8))(v19, v30);
}

double KeyframeTimeline.content.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 28));

  return result;
}

void KeyframeTimeline.content.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 28);

  *(v2 + v4) = v3;
}

double KeyframeTimeline.update(value:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = type metadata accessor for _ResolvedKeyframes(0, *(a2 + 16), a3, a4);

  _ResolvedKeyframes.update(value:time:)(a1, v7, v8, v9, a5);

  return result;
}

double _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyAA13TappableEventVG_ACyAA08CategoryD0VyAVGACyAA06RepeatD0VyAVGAA06SinglemD0VyAVGGGTt2B5@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RequiredTapCountWriter);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  AGGraphCreateOffsetAttribute2();
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA08CategoryD0VyAA13TappableEventVG_ACyAA06RepeatD0VyAUGAA09SingleTapD0VyAUGGTt2B5(a2, v25);
  v6 = HIDWORD(v25[0]);
  v27 = *v25;
  v28 = v25[1];
  v29 = v26;
  v25[0] = *(a2 + 96);
  v7 = v25[0];
  v8 = PreferenceKeys._index(of:)(&type metadata for RequiredTapCountKey);
  v9 = *(v7 + 16);
  if (v8 == v9)
  {
    goto LABEL_4;
  }

  if (v8 >= v9)
  {
    __break(1u);
  }

  if (*(v7 + 16 * v8 + 32) != &type metadata for RequiredTapCountKey)
  {
LABEL_4:
    if ((*(a2 + 120) & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  LODWORD(v25[0]) = OffsetAttribute2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>.Child, &type metadata for TappableEvent, type metadata accessor for RequiredTapCountWriter.Child);
  lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>(&lazy protocol witness table cache variable for type RequiredTapCountWriter<TappableEvent>.Child and conformance RequiredTapCountWriter<A>.Child, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>.Child, type metadata accessor for RequiredTapCountWriter.Child, protocol conformance descriptor for RequiredTapCountWriter<A>.Child);
  v17 = Attribute.init<A>(body:value:flags:update:)();
  v18 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA016RequiredTapCountI0V_TtB5(v28);
  v19 = *MEMORY[0x1E698D3F8];
  if ((v18 & 0x100000000) == 0)
  {
    v19 = v18;
  }

  v25[0] = __PAIR64__(v19, v17);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for PreferenceTransform<RequiredTapCountKey>, &type metadata for RequiredTapCountKey, &protocol witness table for RequiredTapCountKey, type metadata accessor for PreferenceTransform);
  lazy protocol witness table accessor for type PreferenceTransform<RequiredTapCountKey> and conformance PreferenceTransform<A>(v20, v21, v22, v23);
  v24 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v25[0]) = 0;
  PreferencesOutputs.subscript.setter(v24, &type metadata for RequiredTapCountKey, &protocol witness table for RequiredTapCountKey);
  if ((*(a2 + 120) & 8) != 0)
  {
LABEL_5:
    _gestureModifierProtocolDescriptor();
    v10 = swift_conformsToProtocol();
    v11 = v6 == *MEMORY[0x1E698D3F8];
    if (v6 == *MEMORY[0x1E698D3F8])
    {
      v12 = 0;
    }

    else
    {
      v12 = v6;
    }

    LOBYTE(v25[0]) = 1;
    if (v10)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5(v13, 0x100000000, a2, v12 | (v11 << 32), 0x100000000);
  }

LABEL_12:
  v14 = v28;
  v15 = v29;
  result = v27;
  *a3 = v27;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  return result;
}

double _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA08CategoryD0VyAA13TappableEventVG_ACyAA06RepeatD0VyAUGAA09SingleTapD0VyAUGGTt2B5@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for CategoryGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for CategoryGesture);
  v6 = v5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  AGGraphCreateOffsetAttribute2();
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA06RepeatD0VyAA13TappableEventVG_AA09SingleTapD0VyAUGTt2B5(a2, &v22);
  v8 = HIDWORD(v22);
  v25 = *&v22;
  v26 = v23;
  v27 = v24;
  v9 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15GestureCategoryV0I0V_TtB5(v23);
  v22 = *(a2 + 96);
  v10 = v22;
  v11 = PreferenceKeys._index(of:)(&type metadata for GestureCategory.Key);
  v12 = *(v10 + 16);
  if (v11 == v12)
  {
    goto LABEL_4;
  }

  if (v11 >= v12)
  {
    __break(1u);
  }

  if (*(v10 + 16 * v11 + 32) != &type metadata for GestureCategory.Key)
  {
LABEL_4:
    if ((*(a2 + 120) & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  v17 = *MEMORY[0x1E698D3F8];
  if ((v9 & 0x100000000) == 0)
  {
    v17 = v9;
  }

  v22 = __PAIR64__(v17, OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for CategoryGesture<TappableEvent>.Combiner<TappableEvent>, &type metadata for TappableEvent, &type metadata for TappableEvent, type metadata accessor for CategoryGesture.Combiner);
  lazy protocol witness table accessor for type CategoryGesture<TappableEvent>.Combiner<TappableEvent> and conformance CategoryGesture<A>.Combiner<A1>();
  v18 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v22) = 0;
  PreferencesOutputs.subscript.setter(v18, &type metadata for GestureCategory.Key, &protocol witness table for GestureCategory.Key);
  if ((*(a2 + 120) & 8) != 0)
  {
LABEL_5:
    if (!swift_conformsToProtocol2() || !v6)
    {
      _gestureModifierProtocolDescriptor();
      v13 = swift_conformsToProtocol();
      v14 = v8 == *MEMORY[0x1E698D3F8];
      if (v8 == *MEMORY[0x1E698D3F8])
      {
        v15 = 0;
      }

      else
      {
        v15 = v8;
      }

      LOBYTE(v22) = 1;
      if (v13)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA08CategoryC0VyA1_GTtB5(v16, 0x100000000, a2, v15 | (v14 << 32), 0x100000000);
    }
  }

LABEL_17:
  v19 = v26;
  v20 = v27;
  result = v25;
  *a3 = v25;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  return result;
}

uint64_t _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA06RepeatD0VyAA13TappableEventVG_AA09SingleTapD0VyAUGTt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for RepeatGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RepeatGesture);
  v25 = v5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  LODWORD(v50[0]) = 0;
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v8 = *(a2 + 80);
  v44 = *(a2 + 64);
  v45 = v8;
  v46 = *(a2 + 96);
  v9 = *(a2 + 16);
  v40 = *a2;
  v41 = v9;
  v10 = *(a2 + 48);
  v42 = *(a2 + 32);
  v43 = v10;
  v11 = *(a2 + 116);
  v12 = *(a2 + 112);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GestureInputs(a2, v50);
  lazy protocol witness table accessor for type RepeatResetSeed and conformance RepeatResetSeed();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  v47[0] = v40;
  v47[1] = v41;
  v47[2] = v42;
  v47[3] = v43;
  v48 = v13;
  v49 = v11;
  outlined init with copy of _GestureInputs(v47, v50);
  specialized closure #2 in static ModifierGesture._makeGesture(gesture:inputs:)(v47, &v26);
  outlined destroy of _GestureInputs(v47);
  v14 = *(a2 + 84);
  v15 = *(a2 + 120);
  v30 = OffsetAttribute2;
  v31 = v26;
  v32 = v14;
  v33 = v12;
  v34 = v7;
  v35 = (v15 & 0x10) != 0;
  v36 = 0;
  v37 = 1;
  v38 = 0;
  v39 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for RepeatPhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RepeatPhase);
  lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>(&lazy protocol witness table cache variable for type RepeatPhase<TappableEvent> and conformance RepeatPhase<A>, &lazy cache variable for type metadata for RepeatPhase<TappableEvent>, type metadata accessor for RepeatPhase, protocol conformance descriptor for RepeatPhase<A>);
  v16 = Attribute.init<A>(body:value:flags:update:)();
  v50[4] = v44;
  v50[5] = v45;
  v50[6] = v46;
  v50[0] = v40;
  v50[1] = v41;
  v50[2] = v42;
  v50[3] = v43;
  v51 = v13;
  v52 = v11;
  result = outlined destroy of _GestureInputs(v50);
  v26 = v16;
  if ((v15 & 8) != 0)
  {
    result = swift_conformsToProtocol2();
    if (!result || !v25)
    {
      _gestureModifierProtocolDescriptor();
      v18 = swift_conformsToProtocol();
      v19 = v27 == *MEMORY[0x1E698D3F8];
      if (v27 == *MEMORY[0x1E698D3F8])
      {
        v20 = 0;
      }

      else
      {
        v20 = v27;
      }

      LOBYTE(v40) = 1;
      if (v18)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      result = _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA06RepeatC0VyA1_GTtB5(v21, 0x100000000, a2, v20 | (v19 << 32), 0x100000000);
      v16 = v26;
    }
  }

  v22 = v27;
  v23 = v28;
  v24 = v29;
  *a3 = v16;
  *(a3 + 4) = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  return result;
}

uint64_t _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA11EventFilterVyAA08TappableL0VG_ACyAA04Map2D0VyAuCyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGAUGACyAXyAuCyAA08DurationD0VyAUGAA0L8ListenerVyAUGGAUGACyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAUGACyAA03MapD0VyA2UGA12_GGGGTt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for EventFilter<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for EventFilter);
  v14 = v5;
  *&v30 = __PAIR64__(*(a2 + 108), AGGraphCreateOffsetAttribute2());
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for EventFilterEvents<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for EventFilterEvents);
  lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>(&lazy protocol witness table cache variable for type EventFilterEvents<TappableEvent> and conformance EventFilterEvents<A>, &lazy cache variable for type metadata for EventFilterEvents<TappableEvent>, type metadata accessor for EventFilterEvents, protocol conformance descriptor for EventFilterEvents<A>);
  Attribute.init<A>(body:value:flags:update:)();
  v23 = *(a2 + 64);
  *v24 = *(a2 + 80);
  *&v24[12] = *(a2 + 92);
  v19 = *a2;
  v20 = *(a2 + 16);
  v21 = *(a2 + 32);
  v22 = *(a2 + 48);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  outlined init with copy of _GestureInputs(a2, &v30);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v25[4] = v23;
  *v26 = *v24;
  *&v26[12] = *&v24[12];
  v25[0] = v19;
  v25[1] = v20;
  v25[2] = v21;
  v25[3] = v22;
  v27 = OffsetAttribute2;
  v29 = v16;
  v28 = v15;
  outlined init with copy of _GestureInputs(v25, &v30);
  AGGraphCreateOffsetAttribute2();
  v7 = AGGraphCreateOffsetAttribute2();
  _s7SwiftUI11Map2GestureV05_makeD08modifier6inputs4bodyAA01_D7OutputsVyq0_GAA11_GraphValueVyACyxq_q0_GG_AA01_D6InputsVAIyxGAPXEtFZAA13TappableEventV_AA08ModifierD0VyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGASTt3B503_s7a4UI15od4V05_e24D07gesture6inputsAA01_D7i3Vy5k8QzGAA06_j13I0VyACyxq_GG_z3_D6l30VtFZAHy04BodyI0QzGAQXEfU0_AA04c8D0VyAA13mn9VACyAA015pq6D0Vy12r9Graphics7t6VGAA08U147D0VGAXG_ACyAVyAxCyAA08DurationD0VyAXGAA0O8ListenerVyAXGGAXGACyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAXGACyAA03MapD0VyA2XGA12_GGGTG5ALyAUyACyASA2_ASGAUyACyAsUyAA08DurationD0VyASGAA0N8ListenerVyASGGASGAUyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyASGAUyAA03MapD0VyA2SGA10_GGGGGTf1nnnc_n(v7, v25, &v30);
  outlined destroy of _GestureInputs(v25);
  v8 = DWORD1(v30);
  v17 = v30;
  v18 = v31;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for EventFilterPhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for EventFilterPhase);
  lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>(&lazy protocol witness table cache variable for type EventFilterPhase<TappableEvent> and conformance EventFilterPhase<A>, &lazy cache variable for type metadata for EventFilterPhase<TappableEvent>, type metadata accessor for EventFilterPhase, protocol conformance descriptor for EventFilterPhase<A>);
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v34 = v23;
  *v35 = *v24;
  *&v35[12] = *&v24[12];
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v36 = OffsetAttribute2;
  v38 = v16;
  v37 = v15;
  result = outlined destroy of _GestureInputs(&v30);
  if ((*(a2 + 120) & 8) != 0)
  {
    result = swift_conformsToProtocol2();
    if (!result || !v14)
    {
      _gestureModifierProtocolDescriptor();
      v11 = swift_conformsToProtocol();
      if (v8 == *MEMORY[0x1E698D3F8])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

      if (v11)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      result = _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA0Z6FilterVyA1_GTtB5(v13, 0x100000000, a2, v12 | ((v8 == *MEMORY[0x1E698D3F8]) << 32), 0x100000000);
    }
  }

  *a3 = v9;
  *(a3 + 4) = DWORD1(v17);
  *(a3 + 8) = *(&v17 + 1);
  *(a3 + 16) = v18;
  return result;
}

double _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVG_AA08DistanceD0VTt2B5@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for CoordinateSpaceGesture);
  v26 = v4;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v25 = *(a2 + 120);
  v6 = *(a2 + 80);
  v39 = *(a2 + 64);
  v40[0] = v6;
  *(v40 + 12) = *(a2 + 92);
  v7 = *(a2 + 16);
  v35 = *a2;
  v36 = v7;
  v8 = *(a2 + 48);
  v37 = *(a2 + 32);
  v38 = v8;
  v9 = *(a2 + 112);
  v10 = *(a2 + 108);
  outlined init with copy of _GestureInputs(a2, &v41);
  AGGraphClearUpdate();
  v11 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v41 = *a2;
  v12 = *(a2 + 16);
  *(v42 + 8) = *(a2 + 24);
  *(&v42[1] + 1) = *(a2 + 40);
  v13 = *(a2 + 64);
  v43 = *(a2 + 48);
  v44 = v13;
  *v45 = *(a2 + 80);
  *&v42[0] = v12;
  swift_beginAccess();
  v14 = CachedEnvironment.animatedPosition(for:)(&v41);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v15 = *(a2 + 80);
  v44 = *(a2 + 64);
  *v45 = v15;
  *&v45[16] = *(a2 + 96);
  *&v45[28] = *(a2 + 108);
  v16 = *(a2 + 16);
  v41 = *a2;
  v42[0] = v16;
  v17 = *(a2 + 48);
  v42[1] = *(a2 + 32);
  v43 = v17;
  v18 = _GestureInputs.transform.getter();
  *&v41 = __PAIR64__(v10, OffsetAttribute2);
  *(&v41 + 1) = __PAIR64__(v18, v14);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for [EventID : EventType](0);
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for CoordinateSpaceEvents<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for CoordinateSpaceEvents);
  lazy protocol witness table accessor for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>(&lazy protocol witness table cache variable for type CoordinateSpaceEvents<CGFloat> and conformance CoordinateSpaceEvents<A>, &lazy cache variable for type metadata for CoordinateSpaceEvents<CGFloat>, type metadata accessor for CoordinateSpaceEvents, protocol conformance descriptor for CoordinateSpaceEvents<A>);
  LODWORD(v12) = Attribute.init<A>(body:value:flags:update:)();
  v44 = v39;
  *v45 = v40[0];
  *&v45[12] = *(v40 + 12);
  v41 = v35;
  v42[0] = v36;
  v42[1] = v37;
  v43 = v38;
  *&v45[32] = v9;
  *&v45[28] = v12;
  *&v45[40] = v25 | 1;
  outlined init with copy of _GestureInputs(&v41, v30);
  specialized closure #2 in static ModifierGesture._makeGesture(gesture:inputs:)(&v41, v28);
  outlined destroy of _GestureInputs(&v41);
  v30[4] = v39;
  *v31 = v40[0];
  *&v31[12] = *(v40 + 12);
  v30[0] = v35;
  v30[1] = v36;
  v30[2] = v37;
  v30[3] = v38;
  v33 = v9;
  v32 = v12;
  v34 = v25 | 1;
  outlined destroy of _GestureInputs(v30);
  if ((v25 & 8) != 0 && (!swift_conformsToProtocol2() || !v26))
  {
    _gestureModifierProtocolDescriptor();
    v19 = swift_conformsToProtocol();
    if (HIDWORD(v28[0]) == *MEMORY[0x1E698D3F8])
    {
      v20 = 0;
    }

    else
    {
      v20 = HIDWORD(v28[0]);
    }

    if (v19)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA015CoordinateSpaceC0VyA2_GTtB5(v21, 0x100000000, a2, v20 | ((HIDWORD(v28[0]) == *MEMORY[0x1E698D3F8]) << 32), 0x100000000);
  }

  v22 = v28[1];
  v23 = v29;
  result = *v28;
  *a3 = v28[0];
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  return result;
}

void _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA014StateContainerD0VyAA08DistanceD0V0L4TypeVAA12SpatialEventV12CoreGraphics7CGFloatVG_AA0Q8ListenerVyAYGTt2B5(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E7DE0];
  type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>(0, &lazy cache variable for type metadata for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, &type metadata for SpatialEvent, MEMORY[0x1E69E7DE0], type metadata accessor for StateContainerGesture);
  v19 = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v8 = AGGraphCreateOffsetAttribute2();
  _s7SwiftUI13EventListenerV12_makeGesture7gesture6inputsAA01_F7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA07SpatialC0V_Tt2B5(v8, a2, &v20);
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v13 = *(a2 + 112);
  v20 = OffsetAttribute2;
  v21 = v9;
  LODWORD(v22) = v13;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<CGFloat>, v5, type metadata accessor for GesturePhase);
  type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>(0, &lazy cache variable for type metadata for StateContainerPhase<DistanceGesture.StateType, CGFloat, SpatialEvent>, v5, &type metadata for SpatialEvent, type metadata accessor for StateContainerPhase);
  lazy protocol witness table accessor for type StateContainerPhase<DistanceGesture.StateType, CGFloat, SpatialEvent> and conformance StateContainerPhase<A, B, C>();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  v20 = v14;
  v21 = v10;

  v22 = v11;
  LODWORD(v23) = v12;
  if ((*(a2 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !v19))
  {
    v15 = *MEMORY[0x1E698D3F8];
    _gestureModifierProtocolDescriptor();
    v16 = swift_conformsToProtocol();
    if (v10 == v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v10;
    }

    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA014StateContainerC0VyAA08DistanceC0V9StateTypeVAA12SpatialEventVA2_GTtB5(v18, 0x100000000, a2, v17 | ((v10 == v15) << 32), 0x100000000);
    v14 = v20;
    v10 = v21;
    v11 = v22;
    v12 = v23;
  }

  *a3 = v14;
  *(a3 + 4) = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
}

void _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA08DurationD0VyAA13TappableEventVG_AA0N8ListenerVyAUGTt2B5(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
  v19 = v4;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v6 = AGGraphCreateOffsetAttribute2();
  _s7SwiftUI13EventListenerV12_makeGesture7gesture6inputsAA01_F7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA08TappableC0V_Tt2B5(v6, a2, &v21);
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v11 = *(a2 + 84);
  v12 = *(a2 + 112);
  v13 = *(a2 + 120);
  v21 = OffsetAttribute2;
  v22 = v7;
  v23 = __PAIR64__(v12, v11);
  LOBYTE(v24) = (v13 & 0x10) != 0;
  v25 = 0;
  v26 = 1;
  v27 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GesturePhase);
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for DurationPhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationPhase);
  lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>(&lazy protocol witness table cache variable for type DurationPhase<TappableEvent> and conformance DurationPhase<A>, &lazy cache variable for type metadata for DurationPhase<TappableEvent>, type metadata accessor for DurationPhase, protocol conformance descriptor for DurationPhase<A>);
  v14 = Attribute.init<A>(body:value:flags:update:)();
  v21 = v14;
  v22 = v8;

  v23 = v9;
  v24 = v10;
  if ((v13 & 8) != 0 && (!swift_conformsToProtocol2() || !v19))
  {
    v15 = *MEMORY[0x1E698D3F8];
    _gestureModifierProtocolDescriptor();
    v16 = swift_conformsToProtocol();
    if (v8 == v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v8;
    }

    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFSd_AA08DurationC0VyAA13TappableEventVGTtB5(v18, 0x100000000, a2, v17 | ((v8 == v15) << 32), 0x100000000);
    v14 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
  }

  *a3 = v14;
  *(a3 + 4) = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
}

double _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAA13TappableEventVG_ACyAA03MapD0VyA2VGAA0U8ListenerVyAVGGTt2B5@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for DependentGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DependentGesture);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  AGGraphCreateOffsetAttribute2();
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA03MapD0VyAA13TappableEventVAUG_AA0N8ListenerVyAUGTt2B5(a2, &v19);
  v6 = HIDWORD(v19);
  v22 = *&v19;
  v23 = v20;
  v24 = v21;
  v7 = *(a2 + 116);
  v19 = __PAIR64__(v19, OffsetAttribute2);
  LODWORD(v20) = v7;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for DependentPhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DependentPhase);
  lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>(&lazy protocol witness table cache variable for type DependentPhase<TappableEvent> and conformance DependentPhase<A>, &lazy cache variable for type metadata for DependentPhase<TappableEvent>, type metadata accessor for DependentPhase, protocol conformance descriptor for DependentPhase<A>);
  LODWORD(v22) = Attribute.init<A>(body:value:flags:update:)();
  v19 = *(a2 + 96);
  v8 = v19;
  v9 = PreferenceKeys._index(of:)(&type metadata for GestureDependency.Key);
  v10 = *(v8 + 16);
  if (v9 == v10)
  {
    goto LABEL_4;
  }

  if (v9 >= v10)
  {
    __break(1u);
  }

  if (*(v8 + 16 * v9 + 32) == &type metadata for GestureDependency.Key)
  {
    v18 = AGGraphCreateOffsetAttribute2();
    LOBYTE(v19) = 0;
    PreferencesOutputs.subscript.setter(v18, &type metadata for GestureDependency.Key, &protocol witness table for GestureDependency.Key);
    if ((*(a2 + 120) & 8) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_4:
    if ((*(a2 + 120) & 8) == 0)
    {
      goto LABEL_12;
    }
  }

  _gestureModifierProtocolDescriptor();
  v11 = swift_conformsToProtocol();
  v12 = v6 == *MEMORY[0x1E698D3F8];
  if (v6 == *MEMORY[0x1E698D3F8])
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  LOBYTE(v19) = 1;
  if (v11)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA09DependentC033_8687835E41FEE17B108D67665C1D2D0BLLVyA1_GTtB5(v14, 0x100000000, a2, v13 | (v12 << 32), 0x100000000);
LABEL_12:
  v15 = v23;
  v16 = v24;
  result = v22;
  *a3 = v22;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  return result;
}

void _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA03MapD0VyAA13TappableEventVAUG_AA0N8ListenerVyAUGTt2B5(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for MapGesture<TappableEvent, TappableEvent>, &type metadata for TappableEvent, &type metadata for TappableEvent, type metadata accessor for MapGesture);
  v6 = v5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v8 = AGGraphCreateOffsetAttribute2();
  _s7SwiftUI13EventListenerV12_makeGesture7gesture6inputsAA01_F7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA08TappableC0V_Tt2B5(v8, a2, &v19);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = *(a2 + 112);
  v19 = OffsetAttribute2;
  v20 = v9;
  v21 = v13;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for MapPhase<TappableEvent, TappableEvent>, &type metadata for TappableEvent, &type metadata for TappableEvent, type metadata accessor for MapPhase);
  lazy protocol witness table accessor for type MapPhase<TappableEvent, TappableEvent> and conformance MapPhase<A, B>();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  v19 = v14;
  v20 = v10;

  v21 = v11;
  v22 = v12;
  if ((*(a2 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !v6))
  {
    v15 = *MEMORY[0x1E698D3F8];
    _gestureModifierProtocolDescriptor();
    v16 = swift_conformsToProtocol();
    if (v10 == v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v10;
    }

    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5(v18, 0x100000000, a2, v17 | ((v10 == v15) << 32), 0x100000000);
    v14 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
  }

  *a3 = v14;
  *(a3 + 4) = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
}

uint64_t specialized closure #2 in static ModifierGesture._makeGesture(gesture:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
  v25 = v5;
  static DynamicPropertyCache.fields(of:)(v5, &v35);
  v6 = v35;
  v7 = v36;
  v8 = DWORD1(v36);
  v9 = *(a1 + 80);
  v39 = *(a1 + 64);
  v40 = v9;
  v41[0] = *(a1 + 96);
  *(v41 + 12) = *(a1 + 108);
  v10 = *(a1 + 16);
  v35 = *a1;
  v36 = v10;
  v11 = *(a1 + 48);
  v37 = *(a1 + 32);
  v38 = v11;
  outlined init with copy of _GestureInputs(a1, &v28);
  LOBYTE(v28) = v7;
  v12 = OffsetAttribute2;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v35, v6, *(&v6 + 1), v7 | (v8 << 32), OffsetAttribute2, &v28);
  v13 = *(&v28 + 1);
  v14 = v29;
  v15 = BYTE8(v29);
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA11EventFilterVyAA08TappableL0VG_ACyAA04Map2D0VyAuCyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGAUGACyAXyAuCyAA08DurationD0VyAUGAA0L8ListenerVyAUGGAUGACyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAUGACyAA03MapD0VyA2UGA12_GGGGTt2B5(a1, &v28);
  v24 = *(&v28 + 1);
  v27 = v28;
  v16 = v29;
  if (v15)
  {
    v32 = v39;
    v33 = v40;
    v34[0] = v41[0];
    *(v34 + 12) = *(v41 + 12);
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    outlined destroy of _GestureInputs(&v28);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v6, *(&v6 + 1), v7);
  }

  else
  {
    LOBYTE(v28) = v7;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v12, v6, *(&v6 + 1), v7, v13, v14);
    outlined consume of DynamicPropertyCache.Fields.Layout(v6, *(&v6 + 1), v7);
    v32 = v39;
    v33 = v40;
    v34[0] = v41[0];
    *(v34 + 12) = *(v41 + 12);
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    result = outlined destroy of _GestureInputs(&v28);
  }

  v18 = v27;
  *&v28 = v27;
  v19 = v24;
  *(&v28 + 1) = v24;
  LODWORD(v29) = v16;
  if ((*(a1 + 120) & 8) != 0)
  {
    result = swift_conformsToProtocol2();
    if (result && v25)
    {
      v18 = v27;
    }

    else
    {
      _gestureModifierProtocolDescriptor();
      v20 = swift_conformsToProtocol();
      v21 = HIDWORD(v27) == *MEMORY[0x1E698D3F8];
      if (HIDWORD(v27) == *MEMORY[0x1E698D3F8])
      {
        v22 = 0;
      }

      else
      {
        v22 = HIDWORD(v27);
      }

      LOBYTE(v35) = 1;
      if (v20)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      result = _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA09SingleTapC0VyA1_GTtB5(v23, 0x100000000, a1, v22 | (v21 << 32), 0x100000000);
      v19 = *(&v28 + 1);
      v18 = v28;
      v16 = v29;
    }
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 16) = v16;
  return result;
}

{
  v39 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  static DynamicPropertyCache.fields(of:)(&type metadata for DistanceGesture, &v32);
  v5 = v32;
  v6 = v33;
  v7 = DWORD1(v33);
  v8 = *(a1 + 80);
  v36 = *(a1 + 64);
  v37 = v8;
  v38[0] = *(a1 + 96);
  *(v38 + 12) = *(a1 + 108);
  v9 = *(a1 + 16);
  v32 = *a1;
  v33 = v9;
  v10 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v10;
  outlined init with copy of _GestureInputs(a1, &v25);
  LOBYTE(v25) = v6;
  v11 = OffsetAttribute2;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v5, *(&v5 + 1), v6 | (v7 << 32), OffsetAttribute2, &v25);
  v12 = *(&v25 + 1);
  v13 = v26;
  LOBYTE(OffsetAttribute2) = BYTE8(v26);
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA014StateContainerD0VyAA08DistanceD0V0L4TypeVAA12SpatialEventV12CoreGraphics7CGFloatVG_AA0Q8ListenerVyAYGTt2B5(a1, &v25);
  v22 = *(&v25 + 1);
  v24 = v25;
  v14 = v26;
  if (OffsetAttribute2)
  {
    v29 = v36;
    v30 = v37;
    v31[0] = v38[0];
    *(v31 + 12) = *(v38 + 12);
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    outlined destroy of _GestureInputs(&v25);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v5, *(&v5 + 1), v6);
  }

  else
  {
    LOBYTE(v25) = v6;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v11, v5, *(&v5 + 1), (v7 << 32) | v6, v12, v13);
    outlined consume of DynamicPropertyCache.Fields.Layout(v5, *(&v5 + 1), v6);
    v29 = v36;
    v30 = v37;
    v31[0] = v38[0];
    *(v31 + 12) = *(v38 + 12);
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    result = outlined destroy of _GestureInputs(&v25);
  }

  v16 = v24;
  *&v25 = v24;
  v17 = v22;
  *(&v25 + 1) = v22;
  LODWORD(v26) = v14;
  if ((*(a1 + 120) & 8) != 0)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      v16 = v24;
    }

    else
    {
      _gestureModifierProtocolDescriptor();
      v18 = swift_conformsToProtocol();
      v19 = HIDWORD(v24) == *MEMORY[0x1E698D3F8];
      if (HIDWORD(v24) == *MEMORY[0x1E698D3F8])
      {
        v20 = 0;
      }

      else
      {
        v20 = HIDWORD(v24);
      }

      LOBYTE(v32) = 1;
      if (v18)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      result = _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA08DistanceC0VTtB5(v21, 0x100000000, a1, v20 | (v19 << 32), 0x100000000);
      v17 = *(&v25 + 1);
      v16 = v25;
      v14 = v26;
    }
  }

  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v14;
  return result;
}

uint64_t _s7SwiftUI13EventListenerV12_makeGesture7gesture6inputsAA01_F7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA07SpatialC0V_Tt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 108);
  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v25 = *a2;
  v8 = *(a2 + 16);
  *&v26[8] = *(a2 + 24);
  *&v26[24] = *(a2 + 40);
  v9 = *(a2 + 64);
  v27 = *(a2 + 48);
  v28 = v9;
  LODWORD(v29) = *(a2 + 80);
  *v26 = v8;
  swift_beginAccess();
  v10 = CachedEnvironment.animatedPosition(for:)(&v25);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v11 = *(a2 + 80);
  v28 = *(a2 + 64);
  v29 = v11;
  v30[0] = *(a2 + 96);
  *(v30 + 12) = *(a2 + 108);
  v12 = *(a2 + 16);
  v25 = *a2;
  *v26 = v12;
  v13 = *(a2 + 48);
  *&v26[16] = *(a2 + 32);
  v27 = v13;
  v14 = _GestureInputs.transform.getter();
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *&v25 = __PAIR64__(v6, a1);
  *(&v25 + 1) = __PAIR64__(v14, v10);
  *v26 = v15;
  v26[4] = v16 & 1;
  v26[5] = (v16 & 2) != 0;
  memset(&v26[8], 0, 20);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase);
  lazy protocol witness table accessor for type EventListenerPhase<SpatialEvent> and conformance EventListenerPhase<A>();
  v17 = Attribute.init<A>(body:value:flags:update:)();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v19 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = MEMORY[0x1E69E7CC0];
  *(a3 + 16) = 0;
  *a3 = OffsetAttribute2;
  *(a3 + 4) = v19;
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener);
  KeyPath = swift_getKeyPath();
  LODWORD(v25) = v17;
  *(&v25 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
  *v26 = KeyPath;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for (String, String), type metadata accessor for ArrayWith2Inline);
  type metadata accessor for Map<EventListenerPhase<SpatialEvent>.Value, ArrayWith2Inline<(String, String)>>(0, &lazy cache variable for type metadata for Map<EventListenerPhase<SpatialEvent>.Value, ArrayWith2Inline<(String, String)>>, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent);
  lazy protocol witness table accessor for type Map<EventListenerPhase<SpatialEvent>.Value, ArrayWith2Inline<(String, String)>> and conformance Map<A, B>();

  v21 = Attribute.init<A>(body:value:flags:update:)();

  if ((v16 & 8) != 0)
  {
    _gestureModifierProtocolDescriptor();
    v23 = swift_conformsToProtocol();
    LOBYTE(v25) = 1;
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA12SpatialEventV_AA0Z8ListenerVyA1_GTtB5(v24, v21, a2, 0x100000000, 0x100000000);
  }

  return result;
}

uint64_t _s7SwiftUI13EventListenerV12_makeGesture7gesture6inputsAA01_F7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA08TappableC0V_Tt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 108);
  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v25 = *a2;
  v8 = *(a2 + 16);
  *&v26[8] = *(a2 + 24);
  *&v26[24] = *(a2 + 40);
  v9 = *(a2 + 64);
  v27 = *(a2 + 48);
  v28 = v9;
  LODWORD(v29) = *(a2 + 80);
  *v26 = v8;
  swift_beginAccess();
  v10 = CachedEnvironment.animatedPosition(for:)(&v25);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v11 = *(a2 + 80);
  v28 = *(a2 + 64);
  v29 = v11;
  v30[0] = *(a2 + 96);
  *(v30 + 12) = *(a2 + 108);
  v12 = *(a2 + 16);
  v25 = *a2;
  *v26 = v12;
  v13 = *(a2 + 48);
  *&v26[16] = *(a2 + 32);
  v27 = v13;
  v14 = _GestureInputs.transform.getter();
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *&v25 = __PAIR64__(v6, a1);
  *(&v25 + 1) = __PAIR64__(v14, v10);
  *v26 = v15;
  v26[4] = v16 & 1;
  v26[5] = (v16 & 2) != 0;
  memset(&v26[8], 0, 20);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase);
  lazy protocol witness table accessor for type EventListenerPhase<TappableEvent> and conformance EventListenerPhase<A>();
  v17 = Attribute.init<A>(body:value:flags:update:)();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v19 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = MEMORY[0x1E69E7CC0];
  *(a3 + 16) = 0;
  *a3 = OffsetAttribute2;
  *(a3 + 4) = v19;
  type metadata accessor for SingleTapGesture<TappableEvent>(0, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
  KeyPath = swift_getKeyPath();
  LODWORD(v25) = v17;
  *(&v25 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
  *v26 = KeyPath;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for (String, String), type metadata accessor for ArrayWith2Inline);
  type metadata accessor for Map<EventListenerPhase<SpatialEvent>.Value, ArrayWith2Inline<(String, String)>>(0, &lazy cache variable for type metadata for Map<EventListenerPhase<TappableEvent>.Value, ArrayWith2Inline<(String, String)>>, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent);
  lazy protocol witness table accessor for type Map<EventListenerPhase<TappableEvent>.Value, ArrayWith2Inline<(String, String)>> and conformance Map<A, B>();

  v21 = Attribute.init<A>(body:value:flags:update:)();

  if ((v16 & 8) != 0)
  {
    _gestureModifierProtocolDescriptor();
    v23 = swift_conformsToProtocol();
    LOBYTE(v25) = 1;
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA0Z8ListenerVyA1_GTtB5(v24, v21, a2, 0x100000000, 0x100000000);
  }

  return result;
}

unint64_t _s7SwiftUI34GestureComponentAttachmentModifierV9_makeView8modifier6inputs4bodyAA01_H7OutputsVAA11_GraphValueVyACyxGG_AA01_H6InputsVAiA01_M0V_AOtctFZ8Gestures03TapD0VyAR10TouchEventVG_Tt3B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, void *a4@<X8>)
{
  v5 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  *&v26[32] = a2[2];
  *&v26[48] = v7;
  *&v26[64] = a2[4];
  *&v26[80] = *(a2 + 20);
  v8 = a2[1];
  *v26 = *a2;
  *&v26[16] = v8;
  a3(v17, a1, v26);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(*(a2 + 6));
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v17[0]);
  v11 = v10;
  if ((v10 & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    v11 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v12, 0);
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v26[88] = *(a2 + 20);
    v13 = a2[3];
    *&v26[72] = a2[4];
    v14 = a2[2];
    *&v26[56] = v13;
    *&v26[40] = v14;
    v15 = *a2;
    *&v26[24] = a2[1];
    *&v26[8] = v15;
    *v26 = v11;
    *&v26[4] = v5;
    v27 = result;
    v28 = 0;
    v23 = *&v26[64];
    v24 = *&v26[80];
    v25 = result;
    v19 = *v26;
    v20 = *&v26[16];
    v21 = *&v26[32];
    v22 = *&v26[48];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(a2, v18);
    _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    type metadata accessor for GestureFilter<TapComponent<TouchEvent>>(0);
    lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type GestureFilter<TapComponent<TouchEvent>> and conformance GestureFilter<A>, type metadata accessor for GestureFilter<TapComponent<TouchEvent>>, protocol conformance descriptor for GestureFilter<A>);
    v16 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(v26, type metadata accessor for GestureFilter<TapComponent<TouchEvent>>);
    LOBYTE(v19) = 0;
    result = PreferencesOutputs.subscript.setter(v16, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
LABEL_6:
    *a4 = v17[0];
    a4[1] = v17[1];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t key path getter for GestureViewModifier.gestureMask : <A>A@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 72))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

void static TapGesture._makeGesture(gesture:inputs:)(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[5];
  v14[4] = a2[4];
  v14[5] = v5;
  v15[0] = a2[6];
  *(v15 + 12) = *(a2 + 108);
  v6 = a2[1];
  v14[0] = *a2;
  v14[1] = v6;
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v11[0] = v4;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ModifierGesture<RequiredTapCountWriter<TappableEvent>, ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>>(0);
  lazy protocol witness table accessor for type TapGesture.Child and conformance TapGesture.Child();
  Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyAA13TappableEventVG_ACyAA08CategoryD0VyAVGACyAA06RepeatD0VyAVGAA06SinglemD0VyAVGGGTt2B5(v14, v11);
  v8 = v11[1];
  v9 = v12;
  v10 = v13;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  lazy protocol witness table accessor for type TapGesture.Phase and conformance TapGesture.Phase();
  *a3 = Attribute.init<A>(body:value:flags:update:)();
  *(a3 + 4) = v8;

  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
}

uint64_t *TapGesture.Child.value.getter@<X0>(uint64_t a2@<X8>)
{
  result = AGGraphGetValue();
  v4 = *result;
  if (*result <= 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = 0x3FD6666666666666;
    *(a2 + 16) = 8 * (v4 == 1);
    *(a2 + 24) = 1;
    *(a2 + 32) = v4;
    *(a2 + 40) = 0;
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance TapGesture.Child@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_18DDBA140;
  *(a1 + 40) = 0;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance TapGesture.Phase@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RequiredTapCountWriter<TappableEvent>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  result = AGGraphGetValue();
  v3 = *(result + 33);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      LOWORD(v4) = 768;
LABEL_7:
      *a1 = v4;
      return result;
    }
  }

  else
  {
    if (!*(result + 33))
    {
      v4 = *(result + 16);
      if (v4 != 1)
      {
        *a1 = 0;
        return result;
      }

      goto LABEL_7;
    }

    LOBYTE(v3) = 1;
  }

  *(a1 + 1) = v3;
  return result;
}

void TapGestureModifier.GesturesFrameworkChild.value.getter(uint64_t a2@<X8>)
{
  v25 = a2;
  type metadata accessor for TapComponent<TouchEvent>(0);
  v24 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for GestureConstantsProvider.Type?, type metadata accessor for GestureConstantsProvider.Type, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v7 = *Value;
  if (*Value)
  {
    v8 = Value[1];
    v23[1] = *AGGraphGetValue();
    v9 = (*(v8 + 16))(v7, v8);
    v23[2] = v10;
    v23[3] = v9;
    (*(v8 + 24))(v7, v8);
    v23[0] = v11;
    static Duration.zero.getter();
    (*(v8 + 8))(v7, v8);
    (*(v8 + 32))(v7, v8);
    (*(v8 + 40))(v7, v8);
    type metadata accessor for TouchEvent();
    lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent, MEMORY[0x1E69A2870], MEMORY[0x1E69A2860]);
    TapComponent.init(tapCount:tapInterval:pointCount:pointCountTimeout:minimumDuration:maximumDuration:maximumMovement:maximumSeparationDistance:failOnExceedingMaximumPointCount:)();
    v12 = AGGraphGetValue();
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
    v15 = v24;
    v16 = v25;
    (*(v3 + 16))(v25, v5, v24);

    v18 = MEMORY[0x193ABF2B0](v17);
    (*(v3 + 8))(v5, v15);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v13;
    type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>(0, &lazy cache variable for type metadata for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>, type metadata accessor for GestureComponentAttachmentModifier);
    v21 = (v16 + v20[9]);
    *v21 = 0;
    v21[1] = 0;
    *(v16 + v20[10]) = v18;
    v22 = v16 + v20[11];
    *v22 = _sIg_Ieg_TRTA_0;
    *(v22 + 8) = v19;
    *(v22 + 16) = 0;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TapGestureModifier.GesturesFrameworkChild@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>(0, &lazy cache variable for type metadata for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>, type metadata accessor for GestureComponentAttachmentModifier);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double TapGestureModifier.GestureChild.value.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v5 = *(Value + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a2 = v3;
  *(a2 + 8) = partial apply for closure #1 in withDelay(_:do:);
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 3;

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance TapGestureModifier.GestureChild@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SingleTapGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = 0;
  memset(&v62[1], 0, 32);
  v64 = 2;
  v62[0] = xmmword_18DDAB510;
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 8);
  EventListener.init(ignoresOtherEvents:)(0, &v58);
  v65[0] = v58;
  v6 = type metadata accessor for EventListener(0, v3, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for EventListener<A>, v6);
  v8 = v7;
  Gesture.discrete(_:)(1, v6, v7, v54);
  v41 = v54[0];
  v44 = *&v54[8];
  v51[0] = 3;
  v10 = type metadata accessor for MapGesture(255, v3, v3, v9);
  swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v10, v41, v44);
  v58 = v10;
  v59 = v6;
  v60 = v11;
  v61 = v8;
  v12 = type metadata accessor for ModifierGesture(0, &v58);
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v12);
  v14 = v13;
  Gesture.dependency(_:)(v51, v12, v13, v65);

  LOBYTE(v42) = v65[0];
  v45 = *&v65[8];
  v47 = v65[24];
  v51[0] = 0;
  v52 = xmmword_18DDAB520;
  v53 = 0;
  v17 = type metadata accessor for DependentGesture(255, v3, v15, v16);
  swift_getWitnessTable(protocol conformance descriptor for DependentGesture<A>, v17, v42, v45, v47);
  v58 = v17;
  v59 = v12;
  v60 = v18;
  v61 = v14;
  v19 = type metadata accessor for ModifierGesture(0, &v58);
  type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(0);
  v21 = v20;
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v19);
  v23 = v22;
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, protocol conformance descriptor for ModifierGesture<A, B>);
  v25 = v24;
  Gesture.gated<A>(by:)(v51, v19, v21, v23, v24, v54);

  v48 = v55;
  v49 = v56;
  v50 = v57;
  v43 = *v54;
  v46 = *&v54[16];
  v58 = v3;
  v59 = v21;
  v60 = v3;
  v61 = v25;
  v26 = type metadata accessor for Map2Gesture(255, &v58);
  swift_getWitnessTable(protocol conformance descriptor for Map2Gesture<A, B, C>, v26);
  v58 = v26;
  v59 = v19;
  v60 = v27;
  v61 = v23;
  v28 = type metadata accessor for ModifierGesture(0, &v58);
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(0);
  v30 = v29;
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v28);
  v32 = v31;
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, protocol conformance descriptor for ModifierGesture<A, B>);
  v34 = v33;
  Gesture.gated<A>(by:)(v62, v28, v30, v32, v33, &v58);
  v66 = v48;
  v67 = v49;
  v68 = v50;
  *v65 = v43;
  *&v65[16] = v46;
  (*(*(v28 - 8) + 8))(v65, v28);
  *v54 = v3;
  *&v54[8] = v30;
  *&v54[16] = v3;
  *&v54[24] = v34;
  v35 = type metadata accessor for Map2Gesture(255, v54);
  swift_getWitnessTable(protocol conformance descriptor for Map2Gesture<A, B, C>, v35);
  *v54 = v35;
  *&v54[8] = v28;
  *&v54[16] = v36;
  *&v54[24] = v32;
  v37 = type metadata accessor for ModifierGesture(0, v54);
  swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v37);
  v39 = Gesture.eventFilter<A>(forType:_:)(closure #1 in SingleTapGesture.body.getter, 0, v37, &type metadata for MouseEvent, v38, &protocol witness table for MouseEvent, a2);
  (*(*(v37 - 8) + 8))(&v58, v37, v39);
  return outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(v62, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
}

void lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for RequiredTapCountWriter<TappableEvent>(255, a2, &type metadata for TappableEvent, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void lazy protocol witness table accessor for type TapGesture.Child and conformance TapGesture.Child()
{
  if (!lazy protocol witness table cache variable for type TapGesture.Child and conformance TapGesture.Child)
  {
    swift_getWitnessTable(protocol conformance descriptor for TapGesture.Child, &unk_1F00A57D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TapGesture.Child and conformance TapGesture.Child);
  }
}

void lazy protocol witness table accessor for type TapGesture.Phase and conformance TapGesture.Phase()
{
  if (!lazy protocol witness table cache variable for type TapGesture.Phase and conformance TapGesture.Phase)
  {
    swift_getWitnessTable(protocol conformance descriptor for TapGesture.Phase, &unk_1F00A57B0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TapGesture.Phase and conformance TapGesture.Phase);
  }
}

void lazy protocol witness table accessor for type TapGestureModifier.GesturesFrameworkChild and conformance TapGestureModifier.GesturesFrameworkChild()
{
  if (!lazy protocol witness table cache variable for type TapGestureModifier.GesturesFrameworkChild and conformance TapGestureModifier.GesturesFrameworkChild)
  {
    swift_getWitnessTable(protocol conformance descriptor for TapGestureModifier.GesturesFrameworkChild, &unk_1F00A58C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TapGestureModifier.GesturesFrameworkChild and conformance TapGestureModifier.GesturesFrameworkChild);
  }
}

uint64_t specialized closure #1 in Attribute.subscript.getter@<X0>(_DWORD *a3@<X8>)
{
  result = swift_getAtKeyPath();
  *a3 = v5;
  return result;
}

void type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TapComponent<TouchEvent>(255);
    v7 = v6;
    lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type TapComponent<TouchEvent> and conformance TapComponent<A>, type metadata accessor for TapComponent<TouchEvent>, MEMORY[0x1E69A2880]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}