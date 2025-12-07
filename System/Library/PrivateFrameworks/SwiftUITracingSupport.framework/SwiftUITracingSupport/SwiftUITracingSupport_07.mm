uint64_t _s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = a2 + 56;
  v5 = *(a2 + 72);
  v87[0] = *(a2 + 56);
  v87[1] = v5;
  v88[0] = *(a2 + 88);
  v6 = a2 + 72;
  v7 = a2 + 84;
  v8 = a2 + 104;
  *(v88 + 9) = *(a2 + 97);
  v9 = a2 + 56;
  v10 = a2 + 72;
  v11 = a2 + 84;
  v12 = a2 + 104;
  while (1)
  {
    v13 = *v12;
    if (*v11 >= 2u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v87);
    }

    v10 = v13 + 16;
    v11 = v13 + 28;
    v12 = v13 + 48;
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_57;
  }

  result = v15 + 24 * *(v14 + 8);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_50;
  }

  v77 = *v16;
  v17 = *(v16 + 2);
  v18 = *(v16 + 72);
  v19 = *(v16 + 104);
  v75 = *(v16 + 88);
  v76[0] = v19;
  *(v76 + 13) = *(v16 + 117);
  v20 = *(v16 + 40);
  v71 = *(v16 + 24);
  v72 = v20;
  v73 = *(v16 + 56);
  v74 = v18;
  v21 = *v17;
  v63 = v3;
  if (*(*v17 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v22 & 1) != 0))
  {
    v23 = 0;
    v24 = (*(v21 + 56) + 24 * result);
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = v24[4];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v23 = 1;
  }

  v28 = *(v4 + 1);
  v85[0] = *v4;
  v85[1] = v28;
  v86[0] = *(v4 + 2);
  *(v86 + 9) = *(v4 + 41);
  v29 = v4;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  while (1)
  {
    v33 = *v32;
    if (*v31 >= 2u)
    {
      v34 = *v30;
      if ((*(v34 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v33)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v85);
    }

    v30 = v33 + 16;
    v31 = v33 + 28;
    v32 = v33 + 48;
    v29 = v33;
  }

  v35 = *v29;
  if (!v35)
  {
    goto LABEL_58;
  }

  result = v35 + 24 * *(v34 + 8);
  v36 = *(*result + 112);
  if (!v36)
  {
    goto LABEL_51;
  }

  *v36 = v77;
  v37 = v73;
  *(v36 + 72) = v74;
  v38 = v76[0];
  *(v36 + 88) = v75;
  *(v36 + 104) = v38;
  v39 = v72;
  *(v36 + 24) = v71;
  *(v36 + 40) = v39;
  *(v36 + 16) = v17;
  *(v36 + 117) = *(v76 + 13);
  *(v36 + 56) = v37;
  v78[0] = v25;
  v78[1] = v26;
  v79 = v27;
  if (v27 == -1)
  {
    v40 = v23;
  }

  else
  {
    v40 = 1;
  }

  v80 = v23;
  if (v40)
  {
    goto LABEL_46;
  }

  if (a2[48])
  {
    goto LABEL_52;
  }

  v41 = *(a2 + 22);
  v42 = *a2;
  if (v42 >= *(v41 + 116))
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v43 = *(v41 + 104);
  if (!v43)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v44 = *(v43 + 8 * v42);
  *&v83[0] = *(*(v44 + 8) + 88);
  v45 = *&v83[0];
  result = specialized closure #2 in static TraceAddress.ref(ifExists:within:)(v83, v78);
  *(*(v44 + 8) + 88) = v45;
  if (v80)
  {
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
    __break(1u);
    return result;
  }

  v79 = result;
  v46 = *(v4 + 1);
  v83[0] = *v4;
  v83[1] = v46;
  v84[0] = *(v4 + 2);
  *(v84 + 9) = *(v4 + 41);
  v47 = v8;
  v48 = v7;
  v49 = v6;
  for (i = v4; ; i = v51)
  {
    v51 = *v47;
    if (*v48 >= 2u)
    {
      v52 = *v49;
      if ((*(v52 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v51)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v83);
    }

    v49 = v51 + 16;
    v48 = v51 + 28;
    v47 = v51 + 48;
  }

  if (!*i)
  {
    goto LABEL_59;
  }

  result = *i + 24 * *(v52 + 8);
  v53 = *(*result + 112);
  if (!v53)
  {
    goto LABEL_55;
  }

  v54 = v53[5];
  v68 = v53[4];
  v69 = v54;
  v70[0] = v53[6];
  *(v70 + 13) = *(v53 + 109);
  v64 = *v53;
  v65 = v53[1];
  v55 = v53[3];
  v66 = v53[2];
  v67 = v55;
  result = specialized closure #3 in static TraceAddress.ref(ifExists:within:)(&v65, v63, v78);
  v56 = *(v4 + 1);
  v81[0] = *v4;
  v81[1] = v56;
  v82[0] = *(v4 + 2);
  *(v82 + 9) = *(v4 + 41);
  while (1)
  {
    v57 = *v8;
    if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
    {
      break;
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v81);
    }

    v6 = v57 + 16;
    v7 = v57 + 28;
    v8 = v57 + 48;
    v4 = v57;
  }

  if (!*v4)
  {
    goto LABEL_60;
  }

  result = *v4 + 24 * *(*v6 + 8);
  v58 = *(*result + 112);
  if (!v58)
  {
    goto LABEL_56;
  }

  v59 = v69;
  v58[4] = v68;
  v58[5] = v59;
  v58[6] = v70[0];
  *(v58 + 109) = *(v70 + 13);
  v60 = v65;
  *v58 = v64;
  v58[1] = v60;
  v61 = v67;
  v58[2] = v66;
  v58[3] = v61;
  v23 = v80;
  v27 = v79;
LABEL_46:
  v62 = v27;
  LOBYTE(v71) = v23;
  if (v23)
  {
    v62 = 0;
  }

  return v62 | (v23 << 32);
}

uint64_t static TraceAddress.ref(ifExists:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v88 = a1;
  v89 = a2;
  v79 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v72 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v9;
  MEMORY[0x28223BE20](v8);
  v67 = &v66 - v10;
  v11 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v82 = &v66 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v80 = *(v14 - 8);
  v15 = *(v80 + 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  v83 = v11;
  v91 = *(v11 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v75 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v66 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v66 - v23;
  v25 = swift_getTupleTypeMetadata2();
  v26 = type metadata accessor for Optional();
  v77 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v95 = a3;
  v96 = a4;
  v97 = v88;
  v29 = *(a4 + 136);
  v78 = v30;
  v73 = a3;
  v74 = a4;
  v71 = a4 + 136;
  v70 = v29;
  (v29)(v89, partial apply for closure #1 in static TraceAddress.ref(ifExists:within:), v94);
  v31 = *(v25 - 8);
  v32 = *(v31 + 48);
  v33 = 1;
  v86 = v28;
  v87 = v25;
  v81 = v32;
  v85 = v31 + 48;
  if (!v32(v28, 1, v25))
  {
    (*(v93 + 16))(v24, &v86[*(v87 + 48)], AssociatedTypeWitness);
    v33 = 0;
  }

  v34 = v93 + 56;
  v35 = *(v93 + 56);
  v35(v24, v33, 1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static FixedWidthInteger.max.getter();
  if (v15 != v84)
  {
    __break(1u);
    goto LABEL_17;
  }

  v66 = AssociatedConformanceWitness;
  v37 = v93;
  v38 = *(v93 + 16);
  v39 = v90;
  v69 = v93 + 16;
  v68 = v38;
  v38(v90, v18, AssociatedTypeWitness);
  (*(v80 + 1))(v18, v14);
  v84 = v34;
  v80 = v35;
  v35(v39, 0, 1, AssociatedTypeWitness);
  v40 = v91;
  v41 = *(TupleTypeMetadata2 + 48);
  v42 = *(v91 + 16);
  v44 = v82;
  v43 = v83;
  v42(v82, v39, v83);
  (*(v40 + 32))(&v44[v41], v24, v43);
  v45 = *(v37 + 48);
  if (v45(v44, 1, AssociatedTypeWitness) == 1)
  {
    v46 = *(v40 + 8);
    v46(v39, v43);
    v47 = v45(&v44[v41], 1, AssociatedTypeWitness);
    v48 = v81;
    if (v47 == 1)
    {
      v49 = (v46)(v44, v43);
      v51 = v86;
      v50 = v87;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v52 = v75;
  v42(v75, v44, v43);
  if (v45(&v44[v41], 1, AssociatedTypeWitness) == 1)
  {
    (*(v91 + 8))(v90, v43);
    (*(v93 + 8))(v52, AssociatedTypeWitness);
    v48 = v81;
LABEL_9:
    (*(v76 + 8))(v44, TupleTypeMetadata2);
    v51 = v86;
    v50 = v87;
    goto LABEL_13;
  }

  v53 = v93;
  v54 = v67;
  (*(v93 + 32))(v67, &v44[v41], AssociatedTypeWitness);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v53 + 8);
  v56(v54, AssociatedTypeWitness);
  v57 = *(v91 + 8);
  v57(v90, v43);
  v56(v52, AssociatedTypeWitness);
  v49 = (v57)(v44, v43);
  v51 = v86;
  v50 = v87;
  v48 = v81;
  if (v55)
  {
LABEL_11:
    MEMORY[0x28223BE20](v49);
    v58 = v73;
    v59 = v74;
    *(&v66 - 4) = v73;
    *(&v66 - 3) = v59;
    *(&v66 - 2) = v51;
    v60 = v72;
    v61 = v89;
    (*(v59 + 144))(v89, partial apply for closure #2 in static TraceAddress.ref(ifExists:within:));
    result = v48(v51, 1, v50);
    if (result != 1)
    {
      v62 = (*(v93 + 40))(&v51[*(v50 + 48)], v60, AssociatedTypeWitness);
      MEMORY[0x28223BE20](v62);
      *(&v66 - 4) = v58;
      *(&v66 - 3) = v59;
      *(&v66 - 2) = v88;
      *(&v66 - 1) = v51;
      v70(v61, partial apply for closure #3 in static TraceAddress.ref(ifExists:within:));
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_13:
  v63 = 1;
  v64 = v48(v51, 1, v50);
  v65 = v79;
  if (!v64)
  {
    v68(v79, &v51[*(v50 + 48)], AssociatedTypeWitness);
    v63 = 0;
  }

  v80(v65, v63, 1, AssociatedTypeWitness);
  return (*(v77 + 8))(v51, v78);
}

void closure #1 in static TraceAddress.ref(ifExists:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();

  JUMPOUT(0x26D69CA60);
}

uint64_t specialized closure #2 in static TraceAddress.ref(ifExists:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = specialized Strong.subscript.read();
  v4 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_6:
    (v2)(v9, 0);
    __break(1u);
    goto LABEL_7;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v6)
  {
    v7 = *(*(v4 + 56) + 4 * v5);
    (v2)(v9, 0);
    return v7;
  }

LABEL_7:
  result = (v2)(v9, 0);
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in static TraceAddress.ref(ifExists:within:)(uint64_t a1, unsigned int *a2)
{
  if (a2[5])
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v2 = specialized Strong.subscript.read();
  v6 = *v5;
  if (!*(*v5 + 16))
  {
LABEL_6:
    (v2)(v11, 0);
    __break(1u);
    goto LABEL_7;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 4 * v7);
    (v2)(v11, 0);
    return v9;
  }

LABEL_7:
  result = (v2)(v11, 0);
  __break(1u);
  return result;
}

uint64_t closure #2 in static TraceAddress.ref(ifExists:within:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = (*(*(TupleTypeMetadata2 - 8) + 48))(a2, 1, TupleTypeMetadata2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 16))(v19, a2, a3);
    MEMORY[0x26D69CA60](v19, **v24, a3, AssociatedTypeWitness, *(a4 + 8));
    (*(v10 + 32))(v13, v16, v9);
    v22 = *(AssociatedTypeWitness - 8);
    result = (*(v22 + 48))(v13, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      (*(v17 + 8))(v19, a3);
      return (*(v22 + 32))(v23, v13, AssociatedTypeWitness);
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized closure #3 in static TraceAddress.ref(ifExists:within:)(void **a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = *(a3 + 4);
  v8 = *(a3 + 20);
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v9;
  v25 = *v9;
  *v9 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v3 = v13;
    if (v11[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v3 & 1) == (v18 & 1))
      {
        goto LABEL_6;
      }

      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      v19 = v25;
      if (v8)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v20 = result;
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AE0G3RefV9referencetGMR);
  result = v20;
  v19 = v25;
  if (v8)
  {
LABEL_7:
    if (v3)
    {
      result = specialized _NativeDictionary._delete(at:)(result, v19);
    }

    goto LABEL_15;
  }

LABEL_11:
  if (v3)
  {
    v21 = v19[7] + 24 * result;
    *v21 = v6;
    *(v21 + 8) = v5;
    *(v21 + 16) = v7;
LABEL_15:
    *v9 = v19;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  v22 = v19[7] + 24 * result;
  *v22 = v6;
  *(v22 + 8) = v5;
  *(v22 + 16) = v7;
  v23 = v19[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v16)
  {
    v19[2] = v24;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

{
  v6 = *a3;
  v5 = a3[1];
  v7 = *(a3 + 4);
  v8 = *(a3 + 20);
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v9;
  v25 = *v9;
  *v9 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v3 = v13;
    if (v11[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v3 & 1) == (v18 & 1))
      {
        goto LABEL_6;
      }

      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      if (v8)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v20 = result;
  specialized _NativeDictionary.copy()();
  result = v20;
  if (v8)
  {
LABEL_7:
    v19 = v25;
    if (v3)
    {
      result = specialized _NativeDictionary._delete(at:)(result, v25);
    }

    goto LABEL_15;
  }

LABEL_11:
  v19 = v25;
  if (v3)
  {
    v21 = v25[7] + 24 * result;
    *v21 = v6;
    *(v21 + 8) = v5;
    *(v21 + 16) = v7;
LABEL_15:
    *v9 = v19;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  *(v25[6] + 4 * result) = a2;
  v22 = v25[7] + 24 * result;
  *v22 = v6;
  *(v22 + 8) = v5;
  *(v22 + 16) = v7;
  v23 = v25[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v16)
  {
    v25[2] = v24;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in static TraceAddress.ref(ifExists:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  (*(v7 + 16))(v13 - v8, a3, v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary._Variant();
  v10 = Dictionary._Variant.subscript.modify();
  (*(v7 + 40))(v11, v9, v6);
  return v10(v14, 0);
}

uint64_t key path getter for Interpreter.Iterator.swiftUI : Interpreter.Iterator@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = (result + 56);
  v4 = *(result + 72);
  v15[0] = *(result + 56);
  v15[1] = v4;
  v16[0] = *(result + 88);
  *(v16 + 9) = *(result + 97);
  v5 = (result + 72);
  v6 = (result + 84);
  v7 = (result + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 >= 2u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v15);
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (v10)
  {
    result = v10 + 24 * *(v9 + 8);
    v11 = *(*result + 112);
    if (v11)
    {
      v12 = v11[5];
      a2[4] = v11[4];
      a2[5] = v12;
      a2[6] = v11[6];
      *(a2 + 109) = *(v11 + 109);
      v13 = v11[1];
      *a2 = *v11;
      a2[1] = v13;
      v14 = v11[3];
      a2[2] = v11[2];
      a2[3] = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *key path setter for Interpreter.Iterator.swiftUI : Interpreter.Iterator(_OWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 + 56);
  v4 = *(a2 + 72);
  v15[0] = *(a2 + 56);
  v15[1] = v4;
  v16[0] = *(a2 + 88);
  *(v16 + 9) = *(a2 + 97);
  v5 = (a2 + 72);
  v6 = (a2 + 84);
  v7 = (a2 + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 >= 2u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v15);
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (v10)
  {
    result = (v10 + 24 * *(v9 + 8));
    v11 = *(*result + 112);
    if (v11)
    {
      v12 = v2[5];
      v11[4] = v2[4];
      v11[5] = v12;
      v11[6] = v2[6];
      *(v11 + 109) = *(v2 + 109);
      v13 = v2[1];
      *v11 = *v2;
      v11[1] = v13;
      v14 = v2[3];
      v11[2] = v2[2];
      v11[3] = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*Snapshot.subgraphMap.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

void *_s21SwiftUITracingSupport11GraphCtxtIDVAA12TraceAddressA2aDP3raw10generationx13RawIdentifierQz_s6UInt64VtcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for static TraceAddress.rename(address:initialize:within:) in conformance SubgraphID@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt3g5(*a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t protocol witness for static TraceAddress.ref(_:within:) in conformance SubgraphID@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t _s21SwiftUITracingSupport11GraphCtxtIDVSHAASH4hash4intoys6HasherVz_tFTW_0()
{
  v1 = v0[1];
  MEMORY[0x26D69DC00](*v0);
  return MEMORY[0x26D69DC00](v1);
}

uint64_t (*Snapshot.graphMap.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

Swift::Int SubgraphID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  MEMORY[0x26D69DC00](a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static TraceAddress.rename(address:initialize:within:) in conformance GraphCtxtID@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt3g5(*a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t protocol witness for static TraceAddress.ref(_:within:) in conformance GraphCtxtID@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SubgraphID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v1);
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SubgraphID(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v2);
  MEMORY[0x26D69DC00](v3);
  return Hasher._finalize()();
}

uint64_t (*Snapshot.nodeMap.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

Swift::Int AttributeID.hashValue.getter(Swift::UInt32 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  MEMORY[0x26D69DC00](a2);
  return Hasher._finalize()();
}

_DWORD *protocol witness for TraceAddress.init(raw:generation:) in conformance AttributeID@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t protocol witness for static TraceAddress.rename(address:initialize:within:) in conformance AttributeID@<X0>(unsigned int *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE6rename7address10initialize6withinx13RawIdentifierQz_SbAA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt3g5(*a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

unint64_t protocol witness for static TraceAddress.ref(_:within:) in conformance AttributeID@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributeID()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributeID()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  return MEMORY[0x26D69DC00](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributeID(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x26D69DC00](v3);
  return Hasher._finalize()();
}

uint64_t specialized UnsafeArray<A>.findIndex(ref:at:)(int a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a3 + 16);
  v5 = 1;
  while (HIDWORD(a4) + v5 != 1)
  {
    if (!a3)
    {
      __break(1u);
      break;
    }

    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = *(v4 - 4);
    --v5;
    v4 += 5;
    if (v8 == a1 && v7 <= a2 && v6 >= a2)
    {
      return -v5;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _s21SwiftUITracingSupport11RefProtocolPAAE6stringxSgSS_tcfCAA08SubgraphD0V_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v27;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
LABEL_62:
        v29 = v3;
        v24 = v3;

        if (v24)
        {
LABEL_63:
          v25 = 0;
          v26 = 1;
LABEL_67:
          LOBYTE(v28[0]) = v26;
          return v25 | (v26 << 32);
        }

LABEL_66:
        v26 = 0;
        v25 = v6;
        goto LABEL_67;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__CFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v28;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v28 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v28 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t RefProtocol.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v21[1] = a1;
  v21[2] = a2;
  v22 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21[0] = type metadata accessor for Optional();
  v7 = *(v21[0] - 8);
  v8 = MEMORY[0x28223BE20](v21[0]);
  v10 = v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v14 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of LosslessStringConvertible.init(_:)();
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v10, v21[0]);
    return (*(*(a3 - 8) + 56))(v22, 1, 1, a3);
  }

  else
  {
    v18 = v22;
    v19 = *(v11 + 32);
    v19(v16, v10, AssociatedTypeWitness);
    result = (v19)(v14, v16, AssociatedTypeWitness);
    v20 = *(a3 - 8);
    if (v12 == *(v20 + 64))
    {
      (*(v20 + 16))(v18, v14, a3);
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      return (*(v20 + 56))(v18, 0, 1, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RefProtocol.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = swift_checkMetadataState();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  (*(a2 + 56))(a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v24 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v11 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v12 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v11)
    {
      if (v12 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v13 = v23;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v14 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v6 + 8))(v13, v5);
        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v16 = v23;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v6 + 8))(v16, v5);
      if (v17)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v12 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v18 & 1) == 0)
    {
      break;
    }

    if (v19 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v20 = v23;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v21 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v6 + 8))(v20, v5);
    if (v21)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v19 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v22 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v6 + 8))(v10, v5);
  return v22;
}

Swift::Int TreeRef.id.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  return Hasher._finalize()();
}

uint64_t (*TreeRef.s.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = HIDWORD(v2);
  return TreeRef.s.modify;
}

uint64_t TreeRef.t.setter(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t (*TreeRef.t.modify(uint64_t a1))(uint64_t result, char a2)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  return TreeRef.t.modify;
}

uint64_t TreeRef.t.modify(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (a2)
  {
    if ((v2 & 0x80000000) == 0)
    {
LABEL_5:
      **result = v2 | (*(result + 12) << 32);
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static TreeRef.invalid.getter()
{
  if (one-time initialization token for invalid != -1)
  {
    swift_once();
  }

  return static TreeRef.invalid;
}

unint64_t TreeRef.init(s:t:)(unint64_t result, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    return a2 | (result << 32);
  }

  __break(1u);
  return result;
}

unsigned __int8 *TreeRef.init(string:)(uint64_t a1, unint64_t a2)
{
  v44 = 58;
  v45 = 0xE100000000000000;
  v42[2] = &v44;
  v5 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v42, a1, a2, &v44);
  if (!v5[2])
  {
    __break(1u);
    goto LABEL_69;
  }

  v2 = v5;
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];

  v3 = MEMORY[0x26D69CD00](v6, v7, v8, v9);
  v11 = v10;

  v12 = _s21SwiftUITracingSupport11RefProtocolPAAE6stringxSgSS_tcfCAA08SubgraphD0V_Tt1g5(v3, v11);
  if ((v12 & 0x100000000) != 0)
  {
LABEL_23:

    return 0;
  }

  if (*(v2 + 16) < 2uLL)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    v43 = 0;
    v23 = specialized _parseInteger<A, B>(ascii:radix:)(v3, v2, 10);

    if ((v23 & 0x100000000) == 0)
    {
      goto LABEL_71;
    }

    return 0;
  }

  v4 = v12;
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  v15 = *(v2 + 80);
  v16 = *(v2 + 88);

  v3 = MEMORY[0x26D69CD00](v13, v14, v15, v16);
  v2 = v17;

  v19 = HIBYTE(v2) & 0xF;
  v20 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v21 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_70;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) == 0)
    {
      goto LABEL_74;
    }

    for (result = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = _StringObject.sharedUTF8.getter())
    {
      v22 = *result;
      if (v22 == 43)
      {
        if (v20 < 1)
        {
          goto LABEL_77;
        }

        v19 = v20 - 1;
        if (v20 != 1)
        {
          LODWORD(v23) = 0;
          if (!result)
          {
            goto LABEL_57;
          }

          v30 = result + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v23;
            if (v32 != v32)
            {
              break;
            }

            LODWORD(v23) = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v22 == 45)
      {
        if (v20 < 1)
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v19 = v20 - 1;
        if (v20 != 1)
        {
          LODWORD(v23) = 0;
          if (!result)
          {
            goto LABEL_57;
          }

          v24 = result + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if (v26 != v26)
            {
              break;
            }

            LODWORD(v23) = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v20)
      {
        LODWORD(v23) = 0;
        if (!result)
        {
LABEL_57:
          LOBYTE(v19) = 0;
          goto LABEL_66;
        }

        while (1)
        {
          v36 = *result - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v23;
          if (v37 != v37)
          {
            break;
          }

          LODWORD(v23) = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          ++result;
          if (!--v20)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_65:
      LODWORD(v23) = 0;
      LOBYTE(v19) = 1;
LABEL_66:
      v43 = v19;
      v41 = v19;

      if (v41)
      {
        return 0;
      }

LABEL_71:
      if ((v23 & 0x80000000) == 0)
      {
        return (v23 | (v4 << 32));
      }

      __break(1u);
LABEL_74:
      ;
    }
  }

  v44 = v3;
  v45 = v2 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v19)
      {
        LODWORD(v23) = 0;
        v38 = &v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v23;
          if (v40 != v40)
          {
            break;
          }

          LODWORD(v23) = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          v38 = (v38 + 1);
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v19)
    {
      if (--v19)
      {
        LODWORD(v23) = 0;
        v27 = &v44 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v23;
          if (v29 != v29)
          {
            break;
          }

          LODWORD(v23) = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_76;
  }

  if (v19)
  {
    if (--v19)
    {
      LODWORD(v23) = 0;
      v33 = &v44 + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v23;
        if (v35 != v35)
        {
          break;
        }

        LODWORD(v23) = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v33;
        if (!--v19)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t TreeRef.describe(state:)(uint64_t *a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    *&v22[0] = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v22[0] + 1) = v4;
    MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    LODWORD(v23) = a2;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v5);

    return *&v22[0];
  }

  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v10 = a1[4];
  v11 = *(a1 + 40);
  v12 = *(a1 + 41);
  *&v22[0] = v10;
  BYTE8(v22[0]) = v11;
  BYTE9(v22[0]) = v12;
  result = Inspectable_Context.snapshot.getter();
  if (HIDWORD(a2) >= *(result + 124))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(result + 112);
  if (!v13)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v14 = *(v13 + 168 * HIDWORD(a2));
  if (a2 >= *(v14 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = (v14 + 208 * a2);
  v16 = v15[13];
  v22[10] = v15[12];
  v22[11] = v16;
  v22[12] = v15[14];
  v17 = v15[9];
  v22[6] = v15[8];
  v22[7] = v17;
  v18 = v15[11];
  v22[8] = v15[10];
  v22[9] = v18;
  v19 = v15[5];
  v22[2] = v15[4];
  v22[3] = v19;
  v20 = v15[7];
  v22[4] = v15[6];
  v22[5] = v20;
  v21 = v15[3];
  v22[0] = v15[2];
  v22[1] = v21;
  if (__OFSUB__(v8, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v8 - 1;
  v24 = v7;
  v25 = v3;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  return specialized InspectionState.wrapDescription<A>(_:)(v22);
}

uint64_t TreeRef.debugDescription.getter()
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  return v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TreeRef()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TreeRef(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Identifiable.id.getter in conformance TreeRef@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v3);
  result = Hasher._finalize()();
  *a1 = result;
  return result;
}

void *protocol witness for static Comparable.< infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*result < *a2);
  }

  __break(1u);
  return result;
}

void *protocol witness for static Comparable.<= infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 >= *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for static Comparable.>= infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*result >= *a2);
  }

  __break(1u);
  return result;
}

void *protocol witness for static Comparable.> infix(_:_:) in conformance TreeRef(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 < *result);
  }

  __break(1u);
  return result;
}

uint64_t MortalReference.interval.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t MortalReference.backtrace.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 40);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  *(v4 + 12) = HIDWORD(a2);
  return result;
}

uint64_t MortalReference.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = InspectionState.describe<A>(_:)(v6, *(a2 + 16), *(*(a2 + 24) + 24), a4, a5, a6);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(v6 + *(a2 + 36) + 8) == -1)
  {
    v9 = 94;
  }

  else
  {
    v9 = 120;
  }

  MEMORY[0x26D69CDB0](v9, 0xE100000000000000);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 40;
}

uint64_t (*protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = MortalReference.ref.modify();
  return protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>;
}

uint64_t (*protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = MortalReference.interval.modify();
  return protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>;
}

uint64_t (*protocol witness for AMortalReference.backtrace.modify in conformance MortalReference<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = MortalReference.backtrace.modify();
  return protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>;
}

void protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t DepthMap.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t specialized DepthMap.insert(_:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *v2;
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v11 = 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  if (v11 <= a2)
  {
    v11 = a2;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v9)
  {
    v12 = v10;
  }

  if (v12 >= a2)
  {
    v12 = a2;
  }

  if (a2 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v10 == v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v5, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
  }

  return v14;
}

uint64_t DepthMap.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D69CA60](&v17, v8, *v3, v6, MEMORY[0x277D83B88], *(v11 + 24));
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v18)
  {
    v12 = v17;
  }

  if (v12 >= a2)
  {
    v12 = a2;
  }

  v13 = 0x8000000000000000;
  if (!v18)
  {
    v13 = v17;
  }

  if (v13 <= a2)
  {
    v13 = a2;
  }

  if (a2 < 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v17 == v14)
  {
    v15 = v18;
  }

  else
  {
    v15 = 1;
  }

  if (v15 == 1)
  {
    (*(v7 + 16))(v10, a1, v6);
    v17 = v14;
    v18 = 0;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
  }

  return v15;
}

uint64_t DepthMap.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v12 - v9;
  (*(*(v6 - 8) + 16))(&v12 - v9, a1, v6);
  *&v10[*(TupleTypeMetadata2 + 48)] = a2;
  LOBYTE(v3) = DepthMap.insert(_:at:)(v10, a2, v3);
  (*(v8 + 8))(v10, TupleTypeMetadata2);
  return v3 & 1;
}

Swift::Void __swiftcall DepthMap.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(keepingCapacity);
}

uint64_t DepthMap.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  specialized DepthMap.subscript.setter(a1, a2 & 1, a3, a4);
  v6 = *(*(*(a4 + 16) - 8) + 8);

  return v6(a3);
}

void (*DepthMap.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[4] = a3;
  v8[5] = v3;
  v10 = *(a3 + 16);
  v8[6] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v8[7] = v11;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v9[8] = v13;
  (*(v12 + 16))();
  MEMORY[0x26D69CA60](a2, *v3, v10, MEMORY[0x277D83B88], *(a3 + 24));
  v9[2] = *v9;
  *(v9 + 24) = *(v9 + 8);
  return DepthMap.subscript.modify;
}

void DepthMap.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 48);
  specialized DepthMap.subscript.setter(*(*a1 + 16), *(*a1 + 24), v2, *(*a1 + 32));
  (*(v3 + 8))(v2, v4);
  free(v2);

  free(v1);
}

double DepthMap.makeIterator()@<D0>(uint64_t a3@<X8>, uint64_t x0_0@<X0>)
{
  specialized DepthMap.makeIterator()(x0_0, &v9);
  v12[0] = v9;
  v12[1] = v10;
  v13 = v11;
  v5 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v5 - 8) + 16))(&v8, v12, v5);
  result = *&v9;
  v7 = v10;
  *a3 = v9;
  *(a3 + 16) = v7;
  *(a3 + 32) = v11;
  return result;
}

uint64_t DepthMap.underestimatedCount.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  return Collection.underestimatedCount.getter();
}

uint64_t DepthMap.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Dictionary();

  swift_getWitnessTable();
  Sequence.withContiguousStorageIfAvailable<A>(_:)();
}

Swift::Int DepthMap.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Dictionary<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DepthMap<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  DepthMap.hash(into:)(v5, *v2, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

double protocol witness for Sequence.makeIterator() in conformance DepthMap<A>@<D0>(uint64_t a2@<X8>)
{
  specialized DepthMap.makeIterator()(*v2, &v8);
  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  v4 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v4 - 8) + 16))(&v7, v11, v4);

  result = *&v8;
  v6 = v9;
  *a2 = v8;
  *(a2 + 16) = v6;
  *(a2 + 32) = v10;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DepthMap<A>(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();

  return v2;
}

unint64_t Mortal.state(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = (*(a4 + 16))(a3, a4);

  return Interval.state(_:)(a1, a2, v9, v8, a5);
}

uint64_t (*Snapshot.interval.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (v4[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v5 = v4;
  v6 = *(v4 + 22);
  v7 = *v4;
  if (v7 >= *(v6 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
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
    goto LABEL_97;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v9 = *(*(*(v8 + 8 * v7) + 8) + 44);
  v10 = v4 + 56;
  v11 = *(v4 + 72);
  v125[0] = *(v4 + 56);
  v125[1] = v11;
  v126[0] = *(v4 + 88);
  v12 = v4 + 84;
  v13 = v4 + 88;
  v14 = (v5 + 104);
  *(v126 + 9) = *(v5 + 97);
  v15 = (v5 + 56);
  v16 = (v5 + 72);
  v17 = v5 + 84;
  v18 = (v5 + 104);
  v107 = result;
  while (1)
  {
    v19 = *v18;
    if (*v17)
    {
      v20 = *v16;
      if ((v20[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v125);
    }

    v16 = (v19 + 16);
    v17 = (v19 + 28);
    v18 = (v19 + 48);
    v15 = v19;
  }

  v21 = *v15;
  if (!v21)
  {
    goto LABEL_123;
  }

  v22 = *(*(v21 + 24 * *v20) + 112);
  if (!v22)
  {
    goto LABEL_107;
  }

  v23 = *(v5 + 20);
  v104 = v5[168];
  v105 = **(v22 + 32);
  v103 = *(v5 + 43);
  v24 = *(v5 + 72);
  v123[0] = *v10;
  v123[1] = v24;
  v124[0] = *(v5 + 88);
  v25 = v5 + 100;
  v26 = *(v5 + 29);
  v27 = v5 + 56;
  v28 = (v5 + 104);
  *(v124 + 9) = *(v5 + 97);
  v113 = v6;
  v106 = v7;
  while (1)
  {
    v29 = *v28;
    if (v26 < *v25)
    {
      v30 = (*v13 + 8 * v26);
      if ((v30[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v29)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v26, 0, v123);
    }

    v13 = (v29 + 32);
    v25 = (v29 + 44);
    v28 = (v29 + 48);
    v27 = v29;
  }

  if (!*v27)
  {
    goto LABEL_124;
  }

  v31 = v9;
  v32 = *v27 + 24 * *v30;
  v33 = *(*v32 + 56);
  v34 = *(*v32 + 64);
  *(&v114 + 1) = 0;
  *&v115 = 0;
  WORD4(v115) = 257;
  LODWORD(v116) = 0;
  HIDWORD(v115) = 0;
  *(&v116 + 1) = 0;
  LOWORD(v117) = 0;
  *(&v117 + 1) = -1;
  *&v119[8] = xmmword_26C32E070;
  *&v119[24] = 0;
  *&v120 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v120 + 1) = v35;
  LODWORD(v114) = v9;
  specialized HeterogeneousBuffer.insert<A>(_:)(v107, a2);
  specialized HeterogeneousBuffer.insert<A>(_:)(a3);
  DWORD1(v116) = v105;
  *(&v118 + 4) = v23;
  BYTE12(v118) = v104;
  *v119 = v103;
  if ((v34 & 1) == 0)
  {
    *&v119[8] = v33;
  }

  if (v106 >= *(v6 + 116))
  {
    goto LABEL_88;
  }

  v36 = *(v6 + 104);
  if (!v36)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v37 = *(*(v36 + 8 * v106) + 8);
  v38 = *(v37 + 44);
  if (v38 == *(v37 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v37 + 32);
  if (!v39)
  {
    goto LABEL_109;
  }

  v40 = *(v37 + 44);
  v41 = (v39 + (v40 << 7));
  LOBYTE(v118) = a4 & 1;
  v41[4] = v118;
  v41[5] = *v119;
  v41[6] = *&v119[16];
  v41[7] = v120;
  *v41 = v114;
  v41[1] = v115;
  v41[2] = v116;
  v41[3] = v117;
  if (v40 == -1)
  {
    goto LABEL_89;
  }

  *(v37 + 44) = v40 + 1;
  if (v5[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v42 = *v5;
  if (v42 >= *(v6 + 116))
  {
    goto LABEL_90;
  }

  v43 = *(v6 + 104);
  if (!v43)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v44 = *(*(v43 + 8 * v42) + 8);
  if (v31 >= *(v44 + 44))
  {
    goto LABEL_91;
  }

  v110 = *(v6 + 116);
  v45 = *(v44 + 32);
  if (!v45)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v112 = v31;
  v46 = v45 + (v31 << 7);
  v47 = *(v46 + 8);
  v48 = *(v46 + 16);
  v49 = *(v46 + 24);
  v50 = *(v46 + 25);
  v53 = v46 + 28;
  v51 = *(v46 + 28);
  v52 = *(v53 + 4);
  v54 = v50 == 0;
  v55 = 256;
  if (v54)
  {
    v55 = 0;
  }

  v56 = v55 | (v51 << 32);
  v57 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v47, v48, v56 | v49, v52);
  if (v57)
  {
    v58 = v112;
  }

  else
  {
    v57 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v47, v48, v56 | v49, v52, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v58 = v112;
    if (!v57)
    {
      goto LABEL_48;
    }
  }

  if (v5[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v59 = *v5;
  if (v59 >= v110)
  {
    goto LABEL_92;
  }

  v60 = *v57;
  v61 = *(*(v43 + 8 * v59) + 8);
  if (*(v61 + 60) == *(v61 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v62 = *(v61 + 48);
  if (!v62)
  {
    goto LABEL_114;
  }

  v63 = *(v61 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v60;
  v64[1] = v58;
  if (v63 == -1)
  {
    goto LABEL_93;
  }

  *(v61 + 60) = v63 + 1;
  if (v5[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v65 = *v5;
  if (v65 >= *(v113 + 116))
  {
    goto LABEL_94;
  }

  v66 = *(v113 + 104);
  if (!v66)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v67 = *(v5 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v69)
  {
    v70 = *v5;
    v71 = v5[48];
    v72 = *(v5 + 72);
    v121[0] = *v10;
    v121[1] = v72;
    v122[0] = *(v5 + 88);
    *(v122 + 9) = *(v5 + 97);
    v73 = (v5 + 72);
    while (1)
    {
      v74 = *v14;
      if (*v12)
      {
        if (((*v73)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v121);
      }

      v73 = (v74 + 16);
      v12 = (v74 + 28);
      v14 = (v74 + 48);
      v10 = v74;
    }

    if (!*v10)
    {
      goto LABEL_125;
    }

    v75 = *(*(*v10 + 24 * **v73) + 112);
    if (v75)
    {
      v76 = *(*(v75 + 32) + 8);
      v77 = *(v76 + 16);
      v78 = v77 + 1;
      v79 = (v76 + 48 * v77 - 16);
      while (v78-- > 1)
      {
        if (v71)
        {
          goto LABEL_100;
        }

        if (*(v67 + 116) <= v70)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v81 = *(v67 + 104);
        if (!v81)
        {
          goto LABEL_101;
        }

        v68 = *v79;
        v82 = *(*(v81 + 8 * v70) + 8);
        if (v68 >= *(v82 + 44))
        {
          goto LABEL_85;
        }

        v83 = *(v82 + 32);
        if (!v83)
        {
          goto LABEL_102;
        }

        v84 = v83 + (v68 << 7);
        v87 = *(v84 + 8);
        v86 = v84 + 8;
        v85 = v87;
        if (!*(v86 + 24))
        {
          goto LABEL_86;
        }

        if (*(v86 + 16))
        {
          goto LABEL_104;
        }

        if (!v85)
        {
          goto LABEL_103;
        }

        v79 -= 12;
        if (*v85 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v5[48])
  {
    goto LABEL_117;
  }

  v88 = *v5;
  if (v88 >= *(v67 + 116))
  {
    goto LABEL_95;
  }

  v89 = *(v67 + 104);
  if (!v89)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v90 = *(*(v89 + 8 * v88) + 8);
  v91 = *(v90 + 44);
  if (v68 >= v91)
  {
    goto LABEL_96;
  }

  v92 = *(v90 + 32);
  if (v92)
  {
    if (v58 < v91)
    {
      v93 = (v92 + (v68 << 7));
      v94 = (v92 + (v58 << 7));
      v95 = *v94;
      if (v93[31] == v93[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v96 = *(v93 + 14);
      if (!v96)
      {
        goto LABEL_120;
      }

      v97 = v93[31];
      v98 = v96 + 8 * v97;
      *v98 = -24064;
      *(v98 + 4) = v95;
      if (v97 != -1)
      {
        v93[31] = v97 + 1;
        v99 = *v93;
        if (v94[31] == v94[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v100 = *(v94 + 14);
        if (!v100)
        {
          goto LABEL_121;
        }

        v101 = v94[31];
        v102 = v100 + 8 * v101;
        *v102 = 25088;
        *(v102 + 4) = v99;
        if (v101 != -1)
        {
          v94[31] = v101 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v58);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, unsigned int **a3, unsigned __int8 *a4)
{
  return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, a2, a3, a4, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV13UninstantiateV_Ttg5, &type metadata for Event.Uninstantiate, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMd, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMR);
}

{
  return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, a2, a3, a4, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5, &type metadata for Event.Instantiate, &_s21SwiftUITracingSupport5EventV11InstantiateVmMd, &_s21SwiftUITracingSupport5EventV11InstantiateVmMR);
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t result, uint64_t a2, char a3)
{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
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
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  outlined init with copy of Event.Transaction(result, v119);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v124[0] = *(v3 + 56);
  v124[1] = v10;
  v125[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v125 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v124);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v103 = v4[168];
  v104 = **(v21 + 32);
  v102 = *(v4 + 43);
  v23 = *(v4 + 88);
  v122[1] = *(v4 + 72);
  v123[0] = v23;
  *(v123 + 9) = *(v4 + 97);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  v122[0] = *v9;
  v111 = v5;
  v105 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v122);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = a3;
  v31 = v8;
  v32 = *v26 + 24 * *v29;
  v107 = *(*v32 + 56);
  v33 = *(*v32 + 64);
  *(&v112 + 1) = 0;
  *&v113 = 0;
  WORD4(v113) = 257;
  LODWORD(v114) = 0;
  HIDWORD(v113) = 0;
  *(&v114 + 1) = 0;
  LOWORD(v115) = 0;
  *(&v115 + 1) = -1;
  *&v117[8] = xmmword_26C32E070;
  *&v117[24] = 0;
  *&v118 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v118 + 1) = v34;
  LODWORD(v112) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(v119);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  outlined destroy of Event.Transaction(v119);
  DWORD1(v114) = v104;
  *(&v116 + 4) = v22;
  BYTE12(v116) = v103;
  *v117 = v102;
  if ((v33 & 1) == 0)
  {
    *&v117[8] = v107;
  }

  if (v105 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v105) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v116) = v30 & 1;
  v40[4] = v116;
  v40[5] = *v117;
  v40[6] = *&v117[16];
  v40[7] = v118;
  *v40 = v112;
  v40[1] = v113;
  v40[2] = v114;
  v40[3] = v115;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v31 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v108 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v110 = v31;
  v45 = v44 + (v31 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v55 | v48, v51);
  if (v56)
  {
    v57 = v110;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v110;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v108)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  if (*(v60 + 60) == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v61 = *(v60 + 48);
  if (!v61)
  {
    goto LABEL_114;
  }

  v62 = *(v60 + 60);
  v63 = (v61 + 8 * v62);
  *v63 = v59;
  v63[1] = v57;
  if (v62 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v62 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v64 = *v4;
  if (v64 >= *(v111 + 116))
  {
    goto LABEL_94;
  }

  v65 = *(v111 + 104);
  if (!v65)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v65 + 8 * v64) + 8) + 64) = 0;
LABEL_48:
  v66 = *(v4 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v68)
  {
    v69 = *v4;
    v70 = v4[48];
    v71 = *(v4 + 72);
    v120[0] = *v9;
    v120[1] = v71;
    v121[0] = *(v4 + 88);
    *(v121 + 9) = *(v4 + 97);
    v72 = (v4 + 72);
    while (1)
    {
      v73 = *v13;
      if (*v11)
      {
        if (((*v72)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v73)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v120);
      }

      v72 = (v73 + 16);
      v11 = (v73 + 28);
      v13 = (v73 + 48);
      v9 = v73;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *(*(*v9 + 24 * **v72) + 112);
    if (v74)
    {
      v75 = *(*(v74 + 32) + 8);
      v76 = *(v75 + 16);
      v77 = v76 + 1;
      v78 = (v75 + 48 * v76 - 16);
      while (v77-- > 1)
      {
        if (v70)
        {
          goto LABEL_100;
        }

        if (*(v66 + 116) <= v69)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v80 = *(v66 + 104);
        if (!v80)
        {
          goto LABEL_101;
        }

        v67 = *v78;
        v81 = *(*(v80 + 8 * v69) + 8);
        if (v67 >= *(v81 + 44))
        {
          goto LABEL_85;
        }

        v82 = *(v81 + 32);
        if (!v82)
        {
          goto LABEL_102;
        }

        v83 = v82 + (v67 << 7);
        v86 = *(v83 + 8);
        v85 = v83 + 8;
        v84 = v86;
        if (!*(v85 + 24))
        {
          goto LABEL_86;
        }

        if (*(v85 + 16))
        {
          goto LABEL_104;
        }

        if (!v84)
        {
          goto LABEL_103;
        }

        v78 -= 12;
        if (*v84 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v87 = *v4;
  if (v87 >= *(v66 + 116))
  {
    goto LABEL_95;
  }

  v88 = *(v66 + 104);
  if (!v88)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v89 = *(*(v88 + 8 * v87) + 8);
  v90 = *(v89 + 44);
  if (v67 >= v90)
  {
    goto LABEL_96;
  }

  v91 = *(v89 + 32);
  if (v91)
  {
    if (v57 < v90)
    {
      v92 = (v91 + (v67 << 7));
      v93 = (v91 + (v57 << 7));
      v94 = *v93;
      if (v92[31] == v92[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v95 = *(v92 + 14);
      if (!v95)
      {
        goto LABEL_120;
      }

      v96 = v92[31];
      v97 = v95 + 8 * v96;
      *v97 = -24064;
      *(v97 + 4) = v94;
      if (v96 != -1)
      {
        v92[31] = v96 + 1;
        v98 = *v92;
        if (v93[31] == v93[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v99 = *(v93 + 14);
        if (!v99)
        {
          goto LABEL_121;
        }

        v100 = v93[31];
        v101 = v99 + 8 * v100;
        *v101 = 25088;
        *(v101 + 4) = v98;
        if (v100 != -1)
        {
          v93[31] = v100 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
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
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v122[0] = *(v3 + 56);
  v122[1] = v10;
  v123[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v123 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  v105 = result;
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v122);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v103 = v4[168];
  v104 = **(v21 + 32);
  v102 = *(v4 + 43);
  v23 = *(v4 + 72);
  v120[0] = *v9;
  v120[1] = v23;
  v121[0] = *(v4 + 88);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  *(v121 + 9) = *(v4 + 97);
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v120);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = v8;
  v31 = *v26 + 24 * *v29;
  v101 = *(*v31 + 56);
  v32 = *(*v31 + 64);
  *(&v111 + 1) = 0;
  *&v112 = 0;
  WORD4(v112) = 257;
  LODWORD(v113) = 0;
  HIDWORD(v112) = 0;
  *(&v113 + 1) = 0;
  LOWORD(v114) = 0;
  *(&v114 + 1) = -1;
  *&v116[8] = xmmword_26C32E070;
  *&v116[24] = 0;
  *&v117 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v117 + 1) = v33;
  LODWORD(v111) = v30;
  specialized HeterogeneousBuffer.insert<A>(_:)(v105, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GraphV_Ttg5, &type metadata for Event.Graph, &_s21SwiftUITracingSupport5EventV5GraphVmMd, &_s21SwiftUITracingSupport5EventV5GraphVmMR);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v113) = v104;
  *(&v115 + 4) = v22;
  BYTE12(v115) = v103;
  *v116 = v102;
  if ((v32 & 1) == 0)
  {
    *&v116[8] = v101;
  }

  if (v6 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v34 = *(v5 + 104);
  if (!v34)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v35 = *(*(v34 + 8 * v6) + 8);
  v36 = *(v35 + 44);
  if (v36 == *(v35 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v36);
  }

  v37 = *(v35 + 32);
  if (!v37)
  {
    goto LABEL_109;
  }

  v38 = *(v35 + 44);
  v39 = (v37 + (v38 << 7));
  LOBYTE(v115) = a3 & 1;
  v39[4] = v115;
  v39[5] = *v116;
  v39[6] = *&v116[16];
  v39[7] = v117;
  *v39 = v111;
  v39[1] = v112;
  v39[2] = v113;
  v39[3] = v114;
  if (v38 == -1)
  {
    goto LABEL_89;
  }

  *(v35 + 44) = v38 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v40 = *v4;
  if (v40 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v41 = *(v5 + 104);
  if (!v41)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v42 = *(*(v41 + 8 * v40) + 8);
  if (v30 >= *(v42 + 44))
  {
    goto LABEL_91;
  }

  v106 = *(v5 + 116);
  v108 = v5;
  v43 = *(v42 + 32);
  if (!v43)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v110 = v30;
  v44 = v43 + (v30 << 7);
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v48 = *(v44 + 25);
  v51 = v44 + 28;
  v49 = *(v44 + 28);
  v50 = *(v51 + 4);
  v52 = v48 == 0;
  v53 = 256;
  if (v52)
  {
    v53 = 0;
  }

  v54 = v53 | (v49 << 32);
  v55 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v45, v46, v54 | v47, v50);
  if (v55)
  {
    v56 = v110;
  }

  else
  {
    v55 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v45, v46, v54 | v47, v50, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v56 = v110;
    if (!v55)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v57 = *v4;
  if (v57 >= v106)
  {
    goto LABEL_92;
  }

  v58 = *v55;
  v59 = *(*(v41 + 8 * v57) + 8);
  if (*(v59 + 60) == *(v59 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v60 = *(v59 + 48);
  if (!v60)
  {
    goto LABEL_114;
  }

  v61 = *(v59 + 60);
  v62 = (v60 + 8 * v61);
  *v62 = v58;
  v62[1] = v56;
  if (v61 == -1)
  {
    goto LABEL_93;
  }

  *(v59 + 60) = v61 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v63 = *v4;
  if (v63 >= *(v108 + 116))
  {
    goto LABEL_94;
  }

  v64 = *(v108 + 104);
  if (!v64)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v64 + 8 * v63) + 8) + 64) = 0;
LABEL_48:
  v65 = *(v4 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v67)
  {
    v68 = *v4;
    v69 = v4[48];
    v70 = *(v4 + 72);
    v118[0] = *v9;
    v118[1] = v70;
    v119[0] = *(v4 + 88);
    *(v119 + 9) = *(v4 + 97);
    v71 = (v4 + 72);
    while (1)
    {
      v72 = *v13;
      if (*v11)
      {
        if (((*v71)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v72)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v118);
      }

      v71 = (v72 + 16);
      v11 = (v72 + 28);
      v13 = (v72 + 48);
      v9 = v72;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v73 = *(*(*v9 + 24 * **v71) + 112);
    if (v73)
    {
      v74 = *(*(v73 + 32) + 8);
      v75 = *(v74 + 16);
      v76 = v75 + 1;
      v77 = (v74 + 48 * v75 - 16);
      while (v76-- > 1)
      {
        if (v69)
        {
          goto LABEL_100;
        }

        if (*(v65 + 116) <= v68)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v79 = *(v65 + 104);
        if (!v79)
        {
          goto LABEL_101;
        }

        v66 = *v77;
        v80 = *(*(v79 + 8 * v68) + 8);
        if (v66 >= *(v80 + 44))
        {
          goto LABEL_85;
        }

        v81 = *(v80 + 32);
        if (!v81)
        {
          goto LABEL_102;
        }

        v82 = v81 + (v66 << 7);
        v85 = *(v82 + 8);
        v84 = v82 + 8;
        v83 = v85;
        if (!*(v84 + 24))
        {
          goto LABEL_86;
        }

        if (*(v84 + 16))
        {
          goto LABEL_104;
        }

        if (!v83)
        {
          goto LABEL_103;
        }

        v77 -= 12;
        if (*v83 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v86 = *v4;
  if (v86 >= *(v65 + 116))
  {
    goto LABEL_95;
  }

  v87 = *(v65 + 104);
  if (!v87)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v88 = *(*(v87 + 8 * v86) + 8);
  v89 = *(v88 + 44);
  if (v66 >= v89)
  {
    goto LABEL_96;
  }

  v90 = *(v88 + 32);
  if (v90)
  {
    if (v56 < v89)
    {
      v91 = (v90 + (v66 << 7));
      v92 = (v90 + (v56 << 7));
      v93 = *v92;
      if (v91[31] == v91[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v94 = *(v91 + 14);
      if (!v94)
      {
        goto LABEL_120;
      }

      v95 = v91[31];
      v96 = v94 + 8 * v95;
      *v96 = -24064;
      *(v96 + 4) = v93;
      if (v95 != -1)
      {
        v91[31] = v95 + 1;
        v97 = *v91;
        if (v92[31] == v92[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v98 = *(v92 + 14);
        if (!v98)
        {
          goto LABEL_121;
        }

        v99 = v92[31];
        v100 = v98 + 8 * v99;
        *v100 = 25088;
        *(v100 + 4) = v97;
        if (v99 != -1)
        {
          v92[31] = v99 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v56);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
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
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  outlined init with copy of Event.Action(result, v119);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v124[0] = *(v3 + 56);
  v124[1] = v10;
  v125[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v125 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v124);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v103 = v4[168];
  v104 = **(v21 + 32);
  v102 = *(v4 + 43);
  v23 = *(v4 + 88);
  v122[1] = *(v4 + 72);
  v123[0] = v23;
  *(v123 + 9) = *(v4 + 97);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  v122[0] = *v9;
  v111 = v5;
  v105 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v122);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = a3;
  v31 = v8;
  v32 = *v26 + 24 * *v29;
  v107 = *(*v32 + 56);
  v33 = *(*v32 + 64);
  *(&v112 + 1) = 0;
  *&v113 = 0;
  WORD4(v113) = 257;
  LODWORD(v114) = 0;
  HIDWORD(v113) = 0;
  *(&v114 + 1) = 0;
  LOWORD(v115) = 0;
  *(&v115 + 1) = -1;
  *&v117[8] = xmmword_26C32E070;
  *&v117[24] = 0;
  *&v118 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v118 + 1) = v34;
  LODWORD(v112) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(v119);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  outlined destroy of Event.Action(v119);
  DWORD1(v114) = v104;
  *(&v116 + 4) = v22;
  BYTE12(v116) = v103;
  *v117 = v102;
  if ((v33 & 1) == 0)
  {
    *&v117[8] = v107;
  }

  if (v105 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v105) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v116) = v30 & 1;
  v40[4] = v116;
  v40[5] = *v117;
  v40[6] = *&v117[16];
  v40[7] = v118;
  *v40 = v112;
  v40[1] = v113;
  v40[2] = v114;
  v40[3] = v115;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v31 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v108 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v110 = v31;
  v45 = v44 + (v31 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v55 | v48, v51);
  if (v56)
  {
    v57 = v110;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v110;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v108)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  if (*(v60 + 60) == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v61 = *(v60 + 48);
  if (!v61)
  {
    goto LABEL_114;
  }

  v62 = *(v60 + 60);
  v63 = (v61 + 8 * v62);
  *v63 = v59;
  v63[1] = v57;
  if (v62 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v62 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v64 = *v4;
  if (v64 >= *(v111 + 116))
  {
    goto LABEL_94;
  }

  v65 = *(v111 + 104);
  if (!v65)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v65 + 8 * v64) + 8) + 64) = 0;
LABEL_48:
  v66 = *(v4 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v68)
  {
    v69 = *v4;
    v70 = v4[48];
    v71 = *(v4 + 72);
    v120[0] = *v9;
    v120[1] = v71;
    v121[0] = *(v4 + 88);
    *(v121 + 9) = *(v4 + 97);
    v72 = (v4 + 72);
    while (1)
    {
      v73 = *v13;
      if (*v11)
      {
        if (((*v72)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v73)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v120);
      }

      v72 = (v73 + 16);
      v11 = (v73 + 28);
      v13 = (v73 + 48);
      v9 = v73;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *(*(*v9 + 24 * **v72) + 112);
    if (v74)
    {
      v75 = *(*(v74 + 32) + 8);
      v76 = *(v75 + 16);
      v77 = v76 + 1;
      v78 = (v75 + 48 * v76 - 16);
      while (v77-- > 1)
      {
        if (v70)
        {
          goto LABEL_100;
        }

        if (*(v66 + 116) <= v69)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v80 = *(v66 + 104);
        if (!v80)
        {
          goto LABEL_101;
        }

        v67 = *v78;
        v81 = *(*(v80 + 8 * v69) + 8);
        if (v67 >= *(v81 + 44))
        {
          goto LABEL_85;
        }

        v82 = *(v81 + 32);
        if (!v82)
        {
          goto LABEL_102;
        }

        v83 = v82 + (v67 << 7);
        v86 = *(v83 + 8);
        v85 = v83 + 8;
        v84 = v86;
        if (!*(v85 + 24))
        {
          goto LABEL_86;
        }

        if (*(v85 + 16))
        {
          goto LABEL_104;
        }

        if (!v84)
        {
          goto LABEL_103;
        }

        v78 -= 12;
        if (*v84 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v87 = *v4;
  if (v87 >= *(v66 + 116))
  {
    goto LABEL_95;
  }

  v88 = *(v66 + 104);
  if (!v88)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v89 = *(*(v88 + 8 * v87) + 8);
  v90 = *(v89 + 44);
  if (v67 >= v90)
  {
    goto LABEL_96;
  }

  v91 = *(v89 + 32);
  if (v91)
  {
    if (v57 < v90)
    {
      v92 = (v91 + (v67 << 7));
      v93 = (v91 + (v57 << 7));
      v94 = *v93;
      if (v92[31] == v92[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v95 = *(v92 + 14);
      if (!v95)
      {
        goto LABEL_120;
      }

      v96 = v92[31];
      v97 = v95 + 8 * v96;
      *v97 = -24064;
      *(v97 + 4) = v94;
      if (v96 != -1)
      {
        v92[31] = v96 + 1;
        v98 = *v92;
        if (v93[31] == v93[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v99 = *(v93 + 14);
        if (!v99)
        {
          goto LABEL_121;
        }

        v100 = v93[31];
        v101 = v99 + 8 * v100;
        *v101 = 25088;
        *(v101 + 4) = v98;
        if (v100 != -1)
        {
          v93[31] = v100 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
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
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v123[0] = *(v3 + 56);
  v123[1] = v10;
  v124[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v124 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v123);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v103 = v4[168];
  v104 = **(v21 + 32);
  v102 = *(v4 + 43);
  v23 = *(v4 + 72);
  v121[0] = *v9;
  v121[1] = v23;
  v122[0] = *(v4 + 88);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  *(v122 + 9) = *(v4 + 97);
  v111 = v5;
  v105 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v121);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = v8;
  v31 = *v26 + 24 * *v29;
  v32 = *(*v31 + 56);
  v33 = *(*v31 + 64);
  *(&v112 + 1) = 0;
  *&v113 = 0;
  WORD4(v113) = 257;
  LODWORD(v114) = 0;
  HIDWORD(v113) = 0;
  *(&v114 + 1) = 0;
  LOWORD(v115) = 0;
  *(&v115 + 1) = -1;
  *&v117[8] = xmmword_26C32E070;
  *&v117[24] = 0;
  *&v118 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v118 + 1) = v34;
  LODWORD(v112) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(result);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v114) = v104;
  *(&v116 + 4) = v22;
  BYTE12(v116) = v103;
  *v117 = v102;
  if ((v33 & 1) == 0)
  {
    *&v117[8] = v32;
  }

  if (v105 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v105) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v116) = a3 & 1;
  v40[4] = v116;
  v40[5] = *v117;
  v40[6] = *&v117[16];
  v40[7] = v118;
  *v40 = v112;
  v40[1] = v113;
  v40[2] = v114;
  v40[3] = v115;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v30 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v108 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v110 = v30;
  v45 = v44 + (v30 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v55 | v48, v51);
  if (v56)
  {
    v57 = v110;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v110;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v108)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  if (*(v60 + 60) == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v61 = *(v60 + 48);
  if (!v61)
  {
    goto LABEL_114;
  }

  v62 = *(v60 + 60);
  v63 = (v61 + 8 * v62);
  *v63 = v59;
  v63[1] = v57;
  if (v62 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v62 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v64 = *v4;
  if (v64 >= *(v111 + 116))
  {
    goto LABEL_94;
  }

  v65 = *(v111 + 104);
  if (!v65)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v65 + 8 * v64) + 8) + 64) = 0;
LABEL_48:
  v66 = *(v4 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v68)
  {
    v69 = *v4;
    v70 = v4[48];
    v71 = *(v4 + 72);
    v119[0] = *v9;
    v119[1] = v71;
    v120[0] = *(v4 + 88);
    *(v120 + 9) = *(v4 + 97);
    v72 = (v4 + 72);
    while (1)
    {
      v73 = *v13;
      if (*v11)
      {
        if (((*v72)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v73)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v119);
      }

      v72 = (v73 + 16);
      v11 = (v73 + 28);
      v13 = (v73 + 48);
      v9 = v73;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *(*(*v9 + 24 * **v72) + 112);
    if (v74)
    {
      v75 = *(*(v74 + 32) + 8);
      v76 = *(v75 + 16);
      v77 = v76 + 1;
      v78 = (v75 + 48 * v76 - 16);
      while (v77-- > 1)
      {
        if (v70)
        {
          goto LABEL_100;
        }

        if (*(v66 + 116) <= v69)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v80 = *(v66 + 104);
        if (!v80)
        {
          goto LABEL_101;
        }

        v67 = *v78;
        v81 = *(*(v80 + 8 * v69) + 8);
        if (v67 >= *(v81 + 44))
        {
          goto LABEL_85;
        }

        v82 = *(v81 + 32);
        if (!v82)
        {
          goto LABEL_102;
        }

        v83 = v82 + (v67 << 7);
        v86 = *(v83 + 8);
        v85 = v83 + 8;
        v84 = v86;
        if (!*(v85 + 24))
        {
          goto LABEL_86;
        }

        if (*(v85 + 16))
        {
          goto LABEL_104;
        }

        if (!v84)
        {
          goto LABEL_103;
        }

        v78 -= 12;
        if (*v84 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v87 = *v4;
  if (v87 >= *(v66 + 116))
  {
    goto LABEL_95;
  }

  v88 = *(v66 + 104);
  if (!v88)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v89 = *(*(v88 + 8 * v87) + 8);
  v90 = *(v89 + 44);
  if (v67 >= v90)
  {
    goto LABEL_96;
  }

  v91 = *(v89 + 32);
  if (v91)
  {
    if (v57 < v90)
    {
      v92 = (v91 + (v67 << 7));
      v93 = (v91 + (v57 << 7));
      v94 = *v93;
      if (v92[31] == v92[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v95 = *(v92 + 14);
      if (!v95)
      {
        goto LABEL_120;
      }

      v96 = v92[31];
      v97 = v95 + 8 * v96;
      *v97 = -24064;
      *(v97 + 4) = v94;
      if (v96 != -1)
      {
        v92[31] = v96 + 1;
        v98 = *v92;
        if (v93[31] == v93[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v99 = *(v93 + 14);
        if (!v99)
        {
          goto LABEL_121;
        }

        v100 = v93[31];
        v101 = v99 + 8 * v100;
        *v101 = 25088;
        *(v101 + 4) = v98;
        if (v100 != -1)
        {
          v93[31] = v100 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(_OWORD *result, uint64_t a2, char a3)
{
  if (v3[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  v6 = *v3;
  if (v6 >= *(v5 + 116))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
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
    goto LABEL_97;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v8 = *(*(*(v7 + 8 * v6) + 8) + 44);
  v9 = v3 + 56;
  v10 = *(v3 + 72);
  v123[0] = *(v3 + 56);
  v123[1] = v10;
  v124[0] = *(v3 + 88);
  v11 = v3 + 84;
  v12 = v3 + 88;
  v13 = (v4 + 104);
  *(v124 + 9) = *(v4 + 97);
  v14 = (v4 + 56);
  v15 = (v4 + 72);
  v16 = v4 + 84;
  v17 = (v4 + 104);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = *v15;
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v123);
    }

    v15 = (v18 + 16);
    v16 = (v18 + 28);
    v17 = (v18 + 48);
    v14 = v18;
  }

  v20 = *v14;
  if (!v20)
  {
    goto LABEL_123;
  }

  v21 = *(*(v20 + 24 * *v19) + 112);
  if (!v21)
  {
    goto LABEL_107;
  }

  v22 = *(v4 + 20);
  v103 = v4[168];
  v104 = **(v21 + 32);
  v102 = *(v4 + 43);
  v23 = *(v4 + 72);
  v121[0] = *v9;
  v121[1] = v23;
  v122[0] = *(v4 + 88);
  v24 = v4 + 100;
  v25 = *(v4 + 29);
  v26 = v4 + 56;
  v27 = (v4 + 104);
  *(v122 + 9) = *(v4 + 97);
  v111 = v5;
  v105 = v6;
  while (1)
  {
    v28 = *v27;
    if (v25 < *v24)
    {
      v29 = (*v12 + 8 * v25);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v121);
    }

    v12 = (v28 + 32);
    v24 = (v28 + 44);
    v27 = (v28 + 48);
    v26 = v28;
  }

  if (!*v26)
  {
    goto LABEL_124;
  }

  v30 = v8;
  v31 = *v26 + 24 * *v29;
  v32 = *(*v31 + 56);
  v33 = *(*v31 + 64);
  *(&v112 + 1) = 0;
  *&v113 = 0;
  WORD4(v113) = 257;
  LODWORD(v114) = 0;
  HIDWORD(v113) = 0;
  *(&v114 + 1) = 0;
  LOWORD(v115) = 0;
  *(&v115 + 1) = -1;
  *&v117[8] = xmmword_26C32E070;
  *&v117[24] = 0;
  *&v118 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v118 + 1) = v34;
  LODWORD(v112) = v8;
  specialized HeterogeneousBuffer.insert<A>(_:)(result);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v114) = v104;
  *(&v116 + 4) = v22;
  BYTE12(v116) = v103;
  *v117 = v102;
  if ((v33 & 1) == 0)
  {
    *&v117[8] = v32;
  }

  if (v105 >= *(v5 + 116))
  {
    goto LABEL_88;
  }

  v35 = *(v5 + 104);
  if (!v35)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v36 = *(*(v35 + 8 * v105) + 8);
  v37 = *(v36 + 44);
  if (v37 == *(v36 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v36 + 32);
  if (!v38)
  {
    goto LABEL_109;
  }

  v39 = *(v36 + 44);
  v40 = (v38 + (v39 << 7));
  LOBYTE(v116) = a3 & 1;
  v40[4] = v116;
  v40[5] = *v117;
  v40[6] = *&v117[16];
  v40[7] = v118;
  *v40 = v112;
  v40[1] = v113;
  v40[2] = v114;
  v40[3] = v115;
  if (v39 == -1)
  {
    goto LABEL_89;
  }

  *(v36 + 44) = v39 + 1;
  if (v4[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v41 = *v4;
  if (v41 >= *(v5 + 116))
  {
    goto LABEL_90;
  }

  v42 = *(v5 + 104);
  if (!v42)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = *(*(v42 + 8 * v41) + 8);
  if (v30 >= *(v43 + 44))
  {
    goto LABEL_91;
  }

  v108 = *(v5 + 116);
  v44 = *(v43 + 32);
  if (!v44)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v110 = v30;
  v45 = v44 + (v30 << 7);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = *(v45 + 25);
  v52 = v45 + 28;
  v50 = *(v45 + 28);
  v51 = *(v52 + 4);
  v53 = v49 == 0;
  v54 = 256;
  if (v53)
  {
    v54 = 0;
  }

  v55 = v54 | (v50 << 32);
  v56 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v46, v47, v55 | v48, v51);
  if (v56)
  {
    v57 = v110;
  }

  else
  {
    v56 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v46, v47, v55 | v48, v51, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v57 = v110;
    if (!v56)
    {
      goto LABEL_48;
    }
  }

  if (v4[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v58 = *v4;
  if (v58 >= v108)
  {
    goto LABEL_92;
  }

  v59 = *v56;
  v60 = *(*(v42 + 8 * v58) + 8);
  if (*(v60 + 60) == *(v60 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v61 = *(v60 + 48);
  if (!v61)
  {
    goto LABEL_114;
  }

  v62 = *(v60 + 60);
  v63 = (v61 + 8 * v62);
  *v63 = v59;
  v63[1] = v57;
  if (v62 == -1)
  {
    goto LABEL_93;
  }

  *(v60 + 60) = v62 + 1;
  if (v4[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v64 = *v4;
  if (v64 >= *(v111 + 116))
  {
    goto LABEL_94;
  }

  v65 = *(v111 + 104);
  if (!v65)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v65 + 8 * v64) + 8) + 64) = 0;
LABEL_48:
  v66 = *(v4 + 22);
  Interpreter.Iterator.updatingStack.getter();
  if (v68)
  {
    v69 = *v4;
    v70 = v4[48];
    v71 = *(v4 + 72);
    v119[0] = *v9;
    v119[1] = v71;
    v120[0] = *(v4 + 88);
    *(v120 + 9) = *(v4 + 97);
    v72 = (v4 + 72);
    while (1)
    {
      v73 = *v13;
      if (*v11)
      {
        if (((*v72)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v73)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v119);
      }

      v72 = (v73 + 16);
      v11 = (v73 + 28);
      v13 = (v73 + 48);
      v9 = v73;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *(*(*v9 + 24 * **v72) + 112);
    if (v74)
    {
      v75 = *(*(v74 + 32) + 8);
      v76 = *(v75 + 16);
      v77 = v76 + 1;
      v78 = (v75 + 48 * v76 - 16);
      while (v77-- > 1)
      {
        if (v70)
        {
          goto LABEL_100;
        }

        if (*(v66 + 116) <= v69)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v80 = *(v66 + 104);
        if (!v80)
        {
          goto LABEL_101;
        }

        v67 = *v78;
        v81 = *(*(v80 + 8 * v69) + 8);
        if (v67 >= *(v81 + 44))
        {
          goto LABEL_85;
        }

        v82 = *(v81 + 32);
        if (!v82)
        {
          goto LABEL_102;
        }

        v83 = v82 + (v67 << 7);
        v86 = *(v83 + 8);
        v85 = v83 + 8;
        v84 = v86;
        if (!*(v85 + 24))
        {
          goto LABEL_86;
        }

        if (*(v85 + 16))
        {
          goto LABEL_104;
        }

        if (!v84)
        {
          goto LABEL_103;
        }

        v78 -= 12;
        if (*v84 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v4[48])
  {
    goto LABEL_117;
  }

  v87 = *v4;
  if (v87 >= *(v66 + 116))
  {
    goto LABEL_95;
  }

  v88 = *(v66 + 104);
  if (!v88)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v89 = *(*(v88 + 8 * v87) + 8);
  v90 = *(v89 + 44);
  if (v67 >= v90)
  {
    goto LABEL_96;
  }

  v91 = *(v89 + 32);
  if (v91)
  {
    if (v57 < v90)
    {
      v92 = (v91 + (v67 << 7));
      v93 = (v91 + (v57 << 7));
      v94 = *v93;
      if (v92[31] == v92[30])
      {
        specialized UnsafeArray.growToCapacity(_:)();
      }

      v95 = *(v92 + 14);
      if (!v95)
      {
        goto LABEL_120;
      }

      v96 = v92[31];
      v97 = v95 + 8 * v96;
      *v97 = -24064;
      *(v97 + 4) = v94;
      if (v96 != -1)
      {
        v92[31] = v96 + 1;
        v98 = *v92;
        if (v93[31] == v93[30])
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v99 = *(v93 + 14);
        if (!v99)
        {
          goto LABEL_121;
        }

        v100 = v93[31];
        v101 = v99 + 8 * v100;
        *v101 = 25088;
        *(v101 + 4) = v98;
        if (v100 != -1)
        {
          v93[31] = v100 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v57);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (v5[48])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v13 = *(v5 + 22);
  v14 = *v5;
  if (v14 >= *(v13 + 116))
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *&v175 = a3;
  *&v176 = *(v5 + 22);
  v15 = *(v13 + 104);
  if (!v15)
  {
    goto LABEL_140;
  }

  v11 = a4;
  v7 = *(*(*(v15 + 8 * v14) + 8) + 44);
  outlined init with copy of Event.Transaction(a1, v204);
  v10 = v5 + 56;
  v16 = *(v5 + 72);
  v214[0] = *(v5 + 56);
  v214[1] = v16;
  v215[0] = *(v5 + 88);
  v9 = v5 + 72;
  v12 = v5 + 84;
  v17 = v5 + 88;
  v6 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v18 = (v5 + 56);
  v19 = (v5 + 72);
  v20 = v5 + 84;
  v21 = (v5 + 104);
  while (1)
  {
    v22 = *v21;
    if (*v20)
    {
      v23 = *v19;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v22)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
    }

    v19 = (v22 + 16);
    v20 = (v22 + 28);
    v21 = (v22 + 48);
    v18 = v22;
  }

  v24 = *v18;
  if (!v24)
  {
    goto LABEL_169;
  }

  *&v179 = v7;
  v25 = *(*(v24 + 24 * *v23) + 112);
  if (!v25)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v26 = *(v5 + 20);
  v172 = v5[168];
  v173 = **(v25 + 32);
  v171 = *(v5 + 43);
  v27 = *(v5 + 72);
  v212[0] = *v10;
  v212[1] = v27;
  v213[0] = *(v5 + 88);
  v28 = v5 + 100;
  v29 = *(v5 + 29);
  v23 = (v5 + 56);
  v30 = (v5 + 104);
  *(v213 + 9) = *(v5 + 97);
  v178 = v5;
  *&v177 = v5 + 72;
  while (1)
  {
    v31 = *v30;
    if (v29 < *v28)
    {
      v32 = (*v17 + 8 * v29);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v212);
    }

    v17 = v31 + 8;
    v28 = v31 + 11;
    v30 = (v31 + 12);
    v23 = v31;
  }

  v33 = *v23;
  if (!*v23)
  {
    goto LABEL_174;
  }

  LODWORD(v7) = v11;
  v34 = v33 + 24 * *v32;
  v35 = *(*v34 + 56);
  v4 = *(*v34 + 64);
  v11 = &v197;
  *(&v197 + 1) = 0;
  *&v198 = 0;
  WORD4(v198) = 257;
  LODWORD(v199) = 0;
  HIDWORD(v198) = 0;
  *(&v199 + 1) = 0;
  LOWORD(v200) = 0;
  *(&v200 + 1) = -1;
  v8 = &v197;
  *&v202[8] = xmmword_26C32E070;
  *&v202[24] = 0;
  *&v203 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v203 + 1) = v36;
  LODWORD(v197) = v179;
  specialized HeterogeneousBuffer.insert<A>(_:)(v204);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2, v175);
  outlined destroy of Event.Transaction(v204);
  DWORD1(v199) = v173;
  *(&v201 + 4) = v26;
  BYTE12(v201) = v172;
  *v202 = v171;
  LOBYTE(v201) = v7 & 1;
  if ((v4 & 1) == 0)
  {
    *&v202[8] = v35;
  }

  v9 = v176;
  if (v14 >= *(v176 + 116))
  {
    goto LABEL_119;
  }

  v37 = *(v176 + 104);
  if (!v37)
  {
    goto LABEL_142;
  }

  v4 = *(*(v37 + 8 * v14) + 8);
  v38 = *(v4 + 44);
  LODWORD(v7) = v179;
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_143;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v202;
  v41[4] = v201;
  v41[5] = v42;
  v43 = v203;
  v41[6] = *&v202[16];
  v41[7] = v43;
  v44 = v198;
  *v41 = v197;
  v41[1] = v44;
  v45 = v200;
  v41[2] = v199;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_144;
  }

  v8 = *(v176 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v9 = *(v176 + 104);
  if (!v9)
  {
    goto LABEL_145;
  }

  v47 = *(*&v9[8 * v46] + 8);
  if (v179 >= *(v47 + 44))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_146;
  }

  v49 = v48 + (v179 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v184) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v58 | v4, v54);
  if (v59)
  {
    v11 = v178;
    v7 = v179;
  }

  else
  {
    LOBYTE(v184) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v11 = v178;
    v7 = v179;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v11[48])
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v60 = *v11;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v61 = *v59;
  v4 = *(*&v9[8 * v60] + 8);
  if (*(v4 + 60) == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v62 = *(v4 + 48);
  if (!v62)
  {
    goto LABEL_160;
  }

  v63 = *(v4 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v61;
  v64[1] = v7;
  if (v63 == -1)
  {
    goto LABEL_127;
  }

  *(v4 + 60) = v63 + 1;
  if (v11[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v65 = *v11;
  if (v65 >= *(v176 + 116))
  {
    goto LABEL_128;
  }

  v66 = *(v176 + 104);
  if (!v66)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v67 = *(v11 + 9);
  v192 = *(v11 + 8);
  v193 = v67;
  v194 = *(v11 + 10);
  v68 = *(v11 + 5);
  v188 = *(v11 + 4);
  v189 = v68;
  v69 = *(v11 + 7);
  v190 = *(v11 + 6);
  v191 = v69;
  v70 = *(v11 + 1);
  v184 = *v11;
  v185 = v70;
  v71 = *(v11 + 3);
  v186 = *(v11 + 2);
  v187 = v71;
  v196 = v11[192];
  v73 = *(v11 + 22);
  v72 = *(v11 + 23);
  *&v195 = v73;
  *(&v195 + 1) = v72;
  Interpreter.Iterator.updatingStack.getter();
  if (v75)
  {
    v76 = *v11;
    v7 = v11[48];
    v77 = v10[1];
    v210[0] = *v10;
    v210[1] = v77;
    v211[0] = v10[2];
    *(v211 + 9) = *(v10 + 41);
    v78 = v10;
    v9 = v177;
    v79 = v177;
    v80 = v12;
    v81 = v6;
    while (1)
    {
      v82 = *v81;
      if (*v80)
      {
        v23 = *v79;
        if ((v23[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v82)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
      }

      v79 = (v82 + 16);
      v80 = (v82 + 28);
      v81 = (v82 + 48);
      v78 = v82;
    }

    v33 = *v78;
    if (!v33)
    {
      goto LABEL_175;
    }

    v23 = *v23;
    v130 = *(*(v33 + 24 * v23) + 112);
    if (v130)
    {
      v131 = *(*(v130 + 32) + 8);
      v132 = *(v131 + 16);
      v133 = v132 + 1;
      v134 = (v131 + 48 * v132 - 16);
      do
      {
        if (v133-- <= 1)
        {
          goto LABEL_69;
        }

        if (v7)
        {
          goto LABEL_134;
        }

        if (*(v73 + 116) <= v76)
        {
          goto LABEL_115;
        }

        v136 = *(v73 + 104);
        if (!v136)
        {
          goto LABEL_135;
        }

        v74 = *v134;
        v137 = *(*(v136 + 8 * v76) + 8);
        if (v74 >= *(v137 + 44))
        {
          goto LABEL_116;
        }

        v138 = *(v137 + 32);
        if (!v138)
        {
          goto LABEL_136;
        }

        v139 = v138 + (v74 << 7);
        v142 = *(v139 + 8);
        v141 = v139 + 8;
        v140 = v142;
        if (!*(v141 + 24))
        {
          goto LABEL_117;
        }

        if (*(v141 + 16))
        {
          goto LABEL_138;
        }

        if (!v140)
        {
          goto LABEL_137;
        }

        v134 -= 12;
      }

      while (*v140 != &type metadata for Event.Transaction);
      v7 = v179;
      if (v11[48])
      {
        goto LABEL_114;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v9 = v177;
  if (v11[48])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_55:
  v83 = *v11;
  if (v83 >= *(v73 + 116))
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v84 = *(v73 + 104);
  if (!v84)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v85 = *(*(v84 + 8 * v83) + 8);
  v86 = *(v85 + 44);
  if (v74 >= v86)
  {
    goto LABEL_130;
  }

  v87 = *(v85 + 32);
  if (!v87)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
  }

  if (v7 >= v86)
  {
    goto LABEL_131;
  }

  v88 = (v87 + (v74 << 7));
  v7 = v87 + (v7 << 7);
  v8 = *v7;
  if (v88[31] == v88[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v89 = *(v88 + 14);
  if (!v89)
  {
    goto LABEL_165;
  }

  v90 = v88[31];
  v91 = v89 + 8 * v90;
  *v91 = -24064;
  *(v91 + 4) = v8;
  if (v90 == -1)
  {
    goto LABEL_132;
  }

  v88[31] = v90 + 1;
  v4 = *v88;
  if (*(v7 + 124) == *(v7 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v92 = *(v7 + 112);
  if (!v92)
  {
    goto LABEL_166;
  }

  v93 = *(v7 + 124);
  v94 = v92 + 8 * v93;
  *v94 = 25088;
  *(v94 + 4) = v4;
  if (v93 == -1)
  {
    goto LABEL_133;
  }

  *(v7 + 124) = v93 + 1;
LABEL_69:
  v95 = v10[1];
  v208[0] = *v10;
  v208[1] = v95;
  v209[0] = v10[2];
  *(v209 + 9) = *(v10 + 41);
  v96 = v10;
  v97 = v9;
  v98 = v12;
  v99 = v6;
  while (1)
  {
    v100 = *v99;
    if (*v98)
    {
      v23 = *v97;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v100)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
    }

    v97 = (v100 + 16);
    v98 = (v100 + 28);
    v99 = (v100 + 48);
    v96 = v100;
  }

  v101 = *v96;
  if (!v101)
  {
    goto LABEL_170;
  }

  v102 = *(*(v101 + 24 * *v23) + 112);
  if (!v102)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (*(*(*(v102 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v11[48])
    {
      __break(1u);
    }

    else
    {
      v103 = *v11;
      if (v103 >= *(v73 + 116))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v104 = *(v73 + 104);
      if (v104)
      {
        v105 = *(*(v104 + 8 * v103) + 8);
        v106 = *(v105 + 44);
        if (!v106)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v107 = *(v105 + 32);
        if (v107)
        {
          v108 = v107 + (v106 << 7);
          v109 = *(v108 - 112);
          v184 = *(v108 - 128);
          v185 = v109;
          v110 = *(v108 - 48);
          v188 = *(v108 - 64);
          v189 = v110;
          v111 = *(v108 - 16);
          v190 = *(v108 - 32);
          v191 = v111;
          v112 = *(v108 - 80);
          v186 = *(v108 - 96);
          v187 = v112;
          LOBYTE(v205) = BYTE8(v185);
          v113 = 256;
          if (!BYTE9(v185))
          {
            v113 = 0;
          }

          v114 = v113 | (HIDWORD(v185) << 32);
          v115 = HeterogeneousBuffer.type(at:)(0, *(&v184 + 1), v185, v113 | BYTE8(v185), v186);
          v116 = swift_conformsToProtocol2();
          if (v116)
          {
            v117 = v116;
            LOBYTE(v205) = BYTE8(v185);
            v118 = HeterogeneousBuffer.index(after:)(0, *(&v184 + 1), v185, v114 | BYTE8(v185), v186);
            LOBYTE(v205) = BYTE8(v185);
            v119 = HeterogeneousBuffer.type(at:)(v118, *(&v184 + 1), v185, v114 | BYTE8(v185), v186);
            v120 = swift_conformsToProtocol2();
            if (v120)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v119, &v184, v115, v117, v120, &v180);
              v175 = v181;
              v176 = v180;
              v7 = v182;
              v121 = v10[1];
              v205 = *v10;
              v206 = v121;
              v207[0] = v10[2];
              *(v207 + 9) = *(v10 + 41);
              v122 = v177;
              while (1)
              {
                v123 = *v6;
                if (*v12)
                {
                  v23 = *v122;
                  if (((*v122)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v123)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
                }

                v122 = (v123 + 16);
                v12 = (v123 + 28);
                v6 = (v123 + 48);
                v10 = v123;
              }

              if (*v10)
              {
                v124 = *(*(*v10 + 24 * *v23) + 112);
                if (v124)
                {
                  v4 = *(v124 + 32);
                  v8 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v8;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_96:
                    v127 = *(v8 + 2);
                    v126 = *(v8 + 3);
                    if (v127 >= v126 >> 1)
                    {
                      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v8);
                      *(v4 + 8) = v8;
                    }

                    *(v8 + 2) = v127 + 1;
                    v128 = &v8[48 * v127];
                    *(v128 + 8) = v179;
                    *(v128 + 40) = v176;
                    *(v128 + 56) = v175;
                    *(v128 + 18) = v7;
                    Interpreter.Iterator.relate(prior:)(v179);
                    return v179;
                  }

LABEL_125:
                  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
                  *(v4 + 8) = v8;
                  goto LABEL_96;
                }

                goto LABEL_158;
              }

              goto LABEL_171;
            }

LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_148:
  v143 = *(v11 + 11);
  v194 = *(v11 + 10);
  v195 = v143;
  v196 = v11[192];
  v144 = *(v11 + 7);
  v190 = *(v11 + 6);
  v191 = v144;
  v145 = *(v11 + 9);
  v192 = *(v11 + 8);
  v193 = v145;
  v146 = *(v11 + 3);
  v186 = *(v11 + 2);
  v187 = v146;
  v147 = *(v11 + 5);
  v188 = *(v11 + 4);
  v189 = v147;
  v148 = *(v11 + 1);
  v184 = *v11;
  v185 = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v149 = swift_allocObject();
  v179 = xmmword_26C328DC0;
  *(v149 + 16) = xmmword_26C328DC0;
  v177 = xmmword_26C32DAD0;
  v205 = xmmword_26C32DAD0;
  LOBYTE(v206) = 1;
  *&v207[0] = 0;
  *(&v206 + 1) = 0;
  WORD4(v207[0]) = 512;
  v150 = Interpreter.Iterator.describe(state:)(&v205);
  v7 = MEMORY[0x277D837D0];
  *(v149 + 56) = MEMORY[0x277D837D0];
  *(v149 + 32) = v150;
  *(v149 + 40) = v151;
  print(_:separator:terminator:)();

  v152 = v10[1];
  v205 = *v10;
  v206 = v152;
  v207[0] = v10[2];
  *(v207 + 9) = *(v10 + 41);
  while (1)
  {
    v153 = *v6;
    if (*v12)
    {
      v23 = *v9;
      if ((*(*v9 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v153)
    {
      goto LABEL_167;
    }

    v9 = (v153 + 16);
    v12 = (v153 + 28);
    v6 = (v153 + 48);
    v10 = v153;
  }

LABEL_172:
  v33 = *v10;
  if (!*v10)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v154 = *(*(v33 + 24 * *v23) + 112);
  if (!v154)
  {
    __break(1u);
  }

  v155 = *(v154 + 32);
  v156 = v155[1];
  v157 = v155[3];
  v158 = v155[4];
  v159 = swift_allocObject();
  *(v159 + 16) = v179;
  v184 = v177;
  LOBYTE(v185) = 1;
  *(&v185 + 1) = 0;
  *&v186 = 0;
  WORD4(v186) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v157, v158);
  v160 = specialized Interpreter.Control.Events.describe(state:)(&v184, v156);
  *(v159 + 56) = v7;
  *(v159 + 32) = v160;
  *(v159 + 40) = v161;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v157, v158);
  v162 = *(v178 + 11);
  v194 = *(v178 + 10);
  v195 = v162;
  v196 = v178[192];
  v163 = *(v178 + 7);
  v190 = *(v178 + 6);
  v191 = v163;
  v164 = *(v178 + 9);
  v192 = *(v178 + 8);
  v193 = v164;
  v165 = *(v178 + 3);
  v186 = *(v178 + 2);
  v187 = v165;
  v166 = *(v178 + 5);
  v188 = *(v178 + 4);
  v189 = v166;
  v167 = *(v178 + 1);
  v184 = *v178;
  v185 = v167;
  v168 = swift_allocObject();
  *(v168 + 16) = v179;
  v180 = v177;
  LOBYTE(v181) = 1;
  *(&v181 + 1) = 0;
  v182 = 0;
  v183 = 512;
  v169 = Interpreter.Iterator.describe(state:)(&v180);
  *(v168 + 56) = v7;
  *(v168 + 32) = v169;
  *(v168 + 40) = v170;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (v5[48])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v13 = *(v5 + 22);
  v14 = *v5;
  if (v14 >= *(v13 + 116))
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *&v175 = a3;
  *&v176 = *(v5 + 22);
  v15 = *(v13 + 104);
  if (!v15)
  {
    goto LABEL_140;
  }

  v11 = a4;
  v7 = *(*(*(v15 + 8 * v14) + 8) + 44);
  outlined init with copy of Event.Action(a1, v204);
  v10 = v5 + 56;
  v16 = *(v5 + 72);
  v214[0] = *(v5 + 56);
  v214[1] = v16;
  v215[0] = *(v5 + 88);
  v9 = v5 + 72;
  v12 = v5 + 84;
  v17 = v5 + 88;
  v6 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v18 = (v5 + 56);
  v19 = (v5 + 72);
  v20 = v5 + 84;
  v21 = (v5 + 104);
  while (1)
  {
    v22 = *v21;
    if (*v20)
    {
      v23 = *v19;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v22)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
    }

    v19 = (v22 + 16);
    v20 = (v22 + 28);
    v21 = (v22 + 48);
    v18 = v22;
  }

  v24 = *v18;
  if (!v24)
  {
    goto LABEL_169;
  }

  *&v179 = v7;
  v25 = *(*(v24 + 24 * *v23) + 112);
  if (!v25)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v26 = *(v5 + 20);
  v172 = v5[168];
  v173 = **(v25 + 32);
  v171 = *(v5 + 43);
  v27 = *(v5 + 72);
  v212[0] = *v10;
  v212[1] = v27;
  v213[0] = *(v5 + 88);
  v28 = v5 + 100;
  v29 = *(v5 + 29);
  v23 = (v5 + 56);
  v30 = (v5 + 104);
  *(v213 + 9) = *(v5 + 97);
  v178 = v5;
  *&v177 = v5 + 72;
  while (1)
  {
    v31 = *v30;
    if (v29 < *v28)
    {
      v32 = (*v17 + 8 * v29);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v212);
    }

    v17 = v31 + 8;
    v28 = v31 + 11;
    v30 = (v31 + 12);
    v23 = v31;
  }

  v33 = *v23;
  if (!*v23)
  {
    goto LABEL_174;
  }

  LODWORD(v7) = v11;
  v34 = v33 + 24 * *v32;
  v35 = *(*v34 + 56);
  v4 = *(*v34 + 64);
  v11 = &v197;
  *(&v197 + 1) = 0;
  *&v198 = 0;
  WORD4(v198) = 257;
  LODWORD(v199) = 0;
  HIDWORD(v198) = 0;
  *(&v199 + 1) = 0;
  LOWORD(v200) = 0;
  *(&v200 + 1) = -1;
  v8 = &v197;
  *&v202[8] = xmmword_26C32E070;
  *&v202[24] = 0;
  *&v203 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v203 + 1) = v36;
  LODWORD(v197) = v179;
  specialized HeterogeneousBuffer.insert<A>(_:)(v204);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2, v175);
  outlined destroy of Event.Action(v204);
  DWORD1(v199) = v173;
  *(&v201 + 4) = v26;
  BYTE12(v201) = v172;
  *v202 = v171;
  LOBYTE(v201) = v7 & 1;
  if ((v4 & 1) == 0)
  {
    *&v202[8] = v35;
  }

  v9 = v176;
  if (v14 >= *(v176 + 116))
  {
    goto LABEL_119;
  }

  v37 = *(v176 + 104);
  if (!v37)
  {
    goto LABEL_142;
  }

  v4 = *(*(v37 + 8 * v14) + 8);
  v38 = *(v4 + 44);
  LODWORD(v7) = v179;
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_143;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v202;
  v41[4] = v201;
  v41[5] = v42;
  v43 = v203;
  v41[6] = *&v202[16];
  v41[7] = v43;
  v44 = v198;
  *v41 = v197;
  v41[1] = v44;
  v45 = v200;
  v41[2] = v199;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_144;
  }

  v8 = *(v176 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v9 = *(v176 + 104);
  if (!v9)
  {
    goto LABEL_145;
  }

  v47 = *(*&v9[8 * v46] + 8);
  if (v179 >= *(v47 + 44))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_146;
  }

  v49 = v48 + (v179 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v184) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v58 | v4, v54);
  if (v59)
  {
    v11 = v178;
    v7 = v179;
  }

  else
  {
    LOBYTE(v184) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v11 = v178;
    v7 = v179;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v11[48])
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v60 = *v11;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v61 = *v59;
  v4 = *(*&v9[8 * v60] + 8);
  if (*(v4 + 60) == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v62 = *(v4 + 48);
  if (!v62)
  {
    goto LABEL_160;
  }

  v63 = *(v4 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v61;
  v64[1] = v7;
  if (v63 == -1)
  {
    goto LABEL_127;
  }

  *(v4 + 60) = v63 + 1;
  if (v11[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v65 = *v11;
  if (v65 >= *(v176 + 116))
  {
    goto LABEL_128;
  }

  v66 = *(v176 + 104);
  if (!v66)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v67 = *(v11 + 9);
  v192 = *(v11 + 8);
  v193 = v67;
  v194 = *(v11 + 10);
  v68 = *(v11 + 5);
  v188 = *(v11 + 4);
  v189 = v68;
  v69 = *(v11 + 7);
  v190 = *(v11 + 6);
  v191 = v69;
  v70 = *(v11 + 1);
  v184 = *v11;
  v185 = v70;
  v71 = *(v11 + 3);
  v186 = *(v11 + 2);
  v187 = v71;
  v196 = v11[192];
  v73 = *(v11 + 22);
  v72 = *(v11 + 23);
  *&v195 = v73;
  *(&v195 + 1) = v72;
  Interpreter.Iterator.updatingStack.getter();
  if (v75)
  {
    v76 = *v11;
    v7 = v11[48];
    v77 = v10[1];
    v210[0] = *v10;
    v210[1] = v77;
    v211[0] = v10[2];
    *(v211 + 9) = *(v10 + 41);
    v78 = v10;
    v9 = v177;
    v79 = v177;
    v80 = v12;
    v81 = v6;
    while (1)
    {
      v82 = *v81;
      if (*v80)
      {
        v23 = *v79;
        if ((v23[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v82)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
      }

      v79 = (v82 + 16);
      v80 = (v82 + 28);
      v81 = (v82 + 48);
      v78 = v82;
    }

    v33 = *v78;
    if (!v33)
    {
      goto LABEL_175;
    }

    v23 = *v23;
    v130 = *(*(v33 + 24 * v23) + 112);
    if (v130)
    {
      v131 = *(*(v130 + 32) + 8);
      v132 = *(v131 + 16);
      v133 = v132 + 1;
      v134 = (v131 + 48 * v132 - 16);
      do
      {
        if (v133-- <= 1)
        {
          goto LABEL_69;
        }

        if (v7)
        {
          goto LABEL_134;
        }

        if (*(v73 + 116) <= v76)
        {
          goto LABEL_115;
        }

        v136 = *(v73 + 104);
        if (!v136)
        {
          goto LABEL_135;
        }

        v74 = *v134;
        v137 = *(*(v136 + 8 * v76) + 8);
        if (v74 >= *(v137 + 44))
        {
          goto LABEL_116;
        }

        v138 = *(v137 + 32);
        if (!v138)
        {
          goto LABEL_136;
        }

        v139 = v138 + (v74 << 7);
        v142 = *(v139 + 8);
        v141 = v139 + 8;
        v140 = v142;
        if (!*(v141 + 24))
        {
          goto LABEL_117;
        }

        if (*(v141 + 16))
        {
          goto LABEL_138;
        }

        if (!v140)
        {
          goto LABEL_137;
        }

        v134 -= 12;
      }

      while (*v140 != &type metadata for Event.Transaction);
      v7 = v179;
      if (v11[48])
      {
        goto LABEL_114;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v9 = v177;
  if (v11[48])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_55:
  v83 = *v11;
  if (v83 >= *(v73 + 116))
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v84 = *(v73 + 104);
  if (!v84)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v85 = *(*(v84 + 8 * v83) + 8);
  v86 = *(v85 + 44);
  if (v74 >= v86)
  {
    goto LABEL_130;
  }

  v87 = *(v85 + 32);
  if (!v87)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
  }

  if (v7 >= v86)
  {
    goto LABEL_131;
  }

  v88 = (v87 + (v74 << 7));
  v7 = v87 + (v7 << 7);
  v8 = *v7;
  if (v88[31] == v88[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v89 = *(v88 + 14);
  if (!v89)
  {
    goto LABEL_165;
  }

  v90 = v88[31];
  v91 = v89 + 8 * v90;
  *v91 = -24064;
  *(v91 + 4) = v8;
  if (v90 == -1)
  {
    goto LABEL_132;
  }

  v88[31] = v90 + 1;
  v4 = *v88;
  if (*(v7 + 124) == *(v7 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v92 = *(v7 + 112);
  if (!v92)
  {
    goto LABEL_166;
  }

  v93 = *(v7 + 124);
  v94 = v92 + 8 * v93;
  *v94 = 25088;
  *(v94 + 4) = v4;
  if (v93 == -1)
  {
    goto LABEL_133;
  }

  *(v7 + 124) = v93 + 1;
LABEL_69:
  v95 = v10[1];
  v208[0] = *v10;
  v208[1] = v95;
  v209[0] = v10[2];
  *(v209 + 9) = *(v10 + 41);
  v96 = v10;
  v97 = v9;
  v98 = v12;
  v99 = v6;
  while (1)
  {
    v100 = *v99;
    if (*v98)
    {
      v23 = *v97;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v100)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
    }

    v97 = (v100 + 16);
    v98 = (v100 + 28);
    v99 = (v100 + 48);
    v96 = v100;
  }

  v101 = *v96;
  if (!v101)
  {
    goto LABEL_170;
  }

  v102 = *(*(v101 + 24 * *v23) + 112);
  if (!v102)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (*(*(*(v102 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v11[48])
    {
      __break(1u);
    }

    else
    {
      v103 = *v11;
      if (v103 >= *(v73 + 116))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v104 = *(v73 + 104);
      if (v104)
      {
        v105 = *(*(v104 + 8 * v103) + 8);
        v106 = *(v105 + 44);
        if (!v106)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v107 = *(v105 + 32);
        if (v107)
        {
          v108 = v107 + (v106 << 7);
          v109 = *(v108 - 112);
          v184 = *(v108 - 128);
          v185 = v109;
          v110 = *(v108 - 48);
          v188 = *(v108 - 64);
          v189 = v110;
          v111 = *(v108 - 16);
          v190 = *(v108 - 32);
          v191 = v111;
          v112 = *(v108 - 80);
          v186 = *(v108 - 96);
          v187 = v112;
          LOBYTE(v205) = BYTE8(v185);
          v113 = 256;
          if (!BYTE9(v185))
          {
            v113 = 0;
          }

          v114 = v113 | (HIDWORD(v185) << 32);
          v115 = HeterogeneousBuffer.type(at:)(0, *(&v184 + 1), v185, v113 | BYTE8(v185), v186);
          v116 = swift_conformsToProtocol2();
          if (v116)
          {
            v117 = v116;
            LOBYTE(v205) = BYTE8(v185);
            v118 = HeterogeneousBuffer.index(after:)(0, *(&v184 + 1), v185, v114 | BYTE8(v185), v186);
            LOBYTE(v205) = BYTE8(v185);
            v119 = HeterogeneousBuffer.type(at:)(v118, *(&v184 + 1), v185, v114 | BYTE8(v185), v186);
            v120 = swift_conformsToProtocol2();
            if (v120)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v119, &v184, v115, v117, v120, &v180);
              v175 = v181;
              v176 = v180;
              v7 = v182;
              v121 = v10[1];
              v205 = *v10;
              v206 = v121;
              v207[0] = v10[2];
              *(v207 + 9) = *(v10 + 41);
              v122 = v177;
              while (1)
              {
                v123 = *v6;
                if (*v12)
                {
                  v23 = *v122;
                  if (((*v122)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v123)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
                }

                v122 = (v123 + 16);
                v12 = (v123 + 28);
                v6 = (v123 + 48);
                v10 = v123;
              }

              if (*v10)
              {
                v124 = *(*(*v10 + 24 * *v23) + 112);
                if (v124)
                {
                  v4 = *(v124 + 32);
                  v8 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v8;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_96:
                    v127 = *(v8 + 2);
                    v126 = *(v8 + 3);
                    if (v127 >= v126 >> 1)
                    {
                      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v8);
                      *(v4 + 8) = v8;
                    }

                    *(v8 + 2) = v127 + 1;
                    v128 = &v8[48 * v127];
                    *(v128 + 8) = v179;
                    *(v128 + 40) = v176;
                    *(v128 + 56) = v175;
                    *(v128 + 18) = v7;
                    Interpreter.Iterator.relate(prior:)(v179);
                    return v179;
                  }

LABEL_125:
                  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
                  *(v4 + 8) = v8;
                  goto LABEL_96;
                }

                goto LABEL_158;
              }

              goto LABEL_171;
            }

LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_148:
  v143 = *(v11 + 11);
  v194 = *(v11 + 10);
  v195 = v143;
  v196 = v11[192];
  v144 = *(v11 + 7);
  v190 = *(v11 + 6);
  v191 = v144;
  v145 = *(v11 + 9);
  v192 = *(v11 + 8);
  v193 = v145;
  v146 = *(v11 + 3);
  v186 = *(v11 + 2);
  v187 = v146;
  v147 = *(v11 + 5);
  v188 = *(v11 + 4);
  v189 = v147;
  v148 = *(v11 + 1);
  v184 = *v11;
  v185 = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v149 = swift_allocObject();
  v179 = xmmword_26C328DC0;
  *(v149 + 16) = xmmword_26C328DC0;
  v177 = xmmword_26C32DAD0;
  v205 = xmmword_26C32DAD0;
  LOBYTE(v206) = 1;
  *&v207[0] = 0;
  *(&v206 + 1) = 0;
  WORD4(v207[0]) = 512;
  v150 = Interpreter.Iterator.describe(state:)(&v205);
  v7 = MEMORY[0x277D837D0];
  *(v149 + 56) = MEMORY[0x277D837D0];
  *(v149 + 32) = v150;
  *(v149 + 40) = v151;
  print(_:separator:terminator:)();

  v152 = v10[1];
  v205 = *v10;
  v206 = v152;
  v207[0] = v10[2];
  *(v207 + 9) = *(v10 + 41);
  while (1)
  {
    v153 = *v6;
    if (*v12)
    {
      v23 = *v9;
      if ((*(*v9 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v153)
    {
      goto LABEL_167;
    }

    v9 = (v153 + 16);
    v12 = (v153 + 28);
    v6 = (v153 + 48);
    v10 = v153;
  }

LABEL_172:
  v33 = *v10;
  if (!*v10)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v154 = *(*(v33 + 24 * *v23) + 112);
  if (!v154)
  {
    __break(1u);
  }

  v155 = *(v154 + 32);
  v156 = v155[1];
  v157 = v155[3];
  v158 = v155[4];
  v159 = swift_allocObject();
  *(v159 + 16) = v179;
  v184 = v177;
  LOBYTE(v185) = 1;
  *(&v185 + 1) = 0;
  *&v186 = 0;
  WORD4(v186) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v157, v158);
  v160 = specialized Interpreter.Control.Events.describe(state:)(&v184, v156);
  *(v159 + 56) = v7;
  *(v159 + 32) = v160;
  *(v159 + 40) = v161;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v157, v158);
  v162 = *(v178 + 11);
  v194 = *(v178 + 10);
  v195 = v162;
  v196 = v178[192];
  v163 = *(v178 + 7);
  v190 = *(v178 + 6);
  v191 = v163;
  v164 = *(v178 + 9);
  v192 = *(v178 + 8);
  v193 = v164;
  v165 = *(v178 + 3);
  v186 = *(v178 + 2);
  v187 = v165;
  v166 = *(v178 + 5);
  v188 = *(v178 + 4);
  v189 = v166;
  v167 = *(v178 + 1);
  v184 = *v178;
  v185 = v167;
  v168 = swift_allocObject();
  *(v168 + 16) = v179;
  v180 = v177;
  LOBYTE(v181) = 1;
  *(&v181 + 1) = 0;
  v182 = 0;
  v183 = 512;
  v169 = Interpreter.Iterator.describe(state:)(&v180);
  *(v168 + 56) = v7;
  *(v168 + 32) = v169;
  *(v168 + 40) = v170;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(int a1, uint64_t a2, unsigned int **a3, unsigned __int8 *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (v9[48])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v16 = *(v9 + 22);
  v17 = *v9;
  if (v17 >= *(v16 + 116))
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *&v187 = *(v9 + 22);
  v18 = *(v16 + 104);
  if (!v18)
  {
    goto LABEL_140;
  }

  v14 = a4;
  v12 = a3;
  *&v190 = *(*(*(v18 + 8 * v17) + 8) + 44);
  v13 = v9 + 56;
  v19 = *(v9 + 72);
  v224[0] = *(v9 + 56);
  v224[1] = v19;
  v225[0] = *(v9 + 88);
  v15 = v9 + 84;
  v20 = v9 + 88;
  v10 = (v9 + 104);
  *(v225 + 9) = *(v9 + 97);
  v21 = (v9 + 56);
  v22 = (v9 + 72);
  v23 = v9 + 84;
  v24 = (v9 + 104);
  *&v186 = a2;
  while (1)
  {
    v25 = *v24;
    if (*v23)
    {
      v26 = *v22;
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v25)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v224);
    }

    v22 = (v25 + 16);
    v23 = (v25 + 28);
    v24 = (v25 + 48);
    v21 = v25;
  }

  v27 = *v21;
  if (!v27)
  {
    goto LABEL_169;
  }

  *&v188 = v9 + 72;
  v28 = *(*(v27 + 24 * *v26) + 112);
  if (!v28)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v29 = **(v28 + 32);
  v30 = *(v9 + 20);
  v31 = v9[168];
  v32 = *(v9 + 43);
  v33 = *(v9 + 72);
  v222[0] = *v13;
  v222[1] = v33;
  v223[0] = *(v9 + 88);
  v34 = v9 + 100;
  v35 = *(v9 + 29);
  v26 = (v9 + 56);
  v36 = (v9 + 104);
  *(v223 + 9) = *(v9 + 97);
  v189 = v9;
  v180 = v17;
  v178 = v32;
  v179 = v31;
  while (1)
  {
    v37 = *v36;
    if (v35 < *v34)
    {
      v38 = (*v20 + 8 * v35);
      if ((v38[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v37)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v35, 0, v222);
    }

    v20 = v37 + 8;
    v34 = v37 + 11;
    v36 = (v37 + 12);
    v26 = v37;
  }

  v39 = *v26;
  if (!*v26)
  {
    goto LABEL_174;
  }

  v40 = v29;
  LODWORD(v17) = a4;
  v41 = v39 + 24 * *v38;
  v177 = *(*v41 + 56);
  v8 = *(*v41 + 64);
  v14 = &v208;
  *(&v208 + 1) = 0;
  *&v209 = 0;
  WORD4(v209) = 257;
  LODWORD(v210) = 0;
  HIDWORD(v209) = 0;
  *(&v210 + 1) = 0;
  LOWORD(v211) = 0;
  *(&v211 + 1) = -1;
  *&v213[8] = xmmword_26C32E070;
  *&v213[24] = 0;
  *&v214 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v214 + 1) = v42;
  LODWORD(v208) = v190;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, a5, a6, a7, a8);
  specialized HeterogeneousBuffer.insert<A>(_:)(v186, v12);
  DWORD1(v210) = v40;
  *(&v212 + 4) = v30;
  BYTE12(v212) = v179;
  *v213 = v178;
  LOBYTE(v212) = v17 & 1;
  if ((v8 & 1) == 0)
  {
    *&v213[8] = v177;
  }

  v11 = v187;
  if (v180 >= *(v187 + 116))
  {
    goto LABEL_119;
  }

  v43 = *(v187 + 104);
  if (!v43)
  {
    goto LABEL_142;
  }

  v8 = *(*(v43 + 8 * v180) + 8);
  v44 = *(v8 + 44);
  if (v44 == *(v8 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v44);
  }

  v45 = *(v8 + 32);
  if (!v45)
  {
    goto LABEL_143;
  }

  v46 = *(v8 + 44);
  v47 = (v45 + (v46 << 7));
  v48 = *v213;
  v47[4] = v212;
  v47[5] = v48;
  v49 = v214;
  v47[6] = *&v213[16];
  v47[7] = v49;
  v50 = v209;
  *v47 = v208;
  v47[1] = v50;
  v51 = v211;
  v47[2] = v210;
  v47[3] = v51;
  if (v46 == -1)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v8 + 44) = v46 + 1;
  if (v9[48])
  {
    goto LABEL_144;
  }

  v12 = *(v187 + 116);
  v52 = *v9;
  if (v52 >= v12)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v11 = *(v187 + 104);
  if (!v11)
  {
    goto LABEL_145;
  }

  v53 = *(*&v11[8 * v52] + 8);
  if (v190 >= *(v53 + 44))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v54 = *(v53 + 32);
  if (!v54)
  {
    goto LABEL_146;
  }

  v55 = v54 + (v190 << 7);
  v56 = *(v55 + 8);
  v57 = *(v55 + 16);
  v8 = *(v55 + 24);
  v58 = *(v55 + 25);
  v61 = v55 + 28;
  v59 = *(v55 + 28);
  v60 = *(v61 + 4);
  LOBYTE(v195) = v8;
  v62 = v58 == 0;
  v63 = 256;
  if (v62)
  {
    v63 = 0;
  }

  v64 = v63 | (v59 << 32);
  v65 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v56, v57, v64 | v8, v60);
  if (v65)
  {
    v14 = v189;
    v17 = v190;
  }

  else
  {
    LOBYTE(v195) = v8;
    v65 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v56, v57, v64 | v8, v60, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v14 = v189;
    v17 = v190;
    if (!v65)
    {
      goto LABEL_48;
    }
  }

  if (v14[48])
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v66 = *v14;
  if (v66 >= v12)
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v67 = *v65;
  v8 = *(*&v11[8 * v66] + 8);
  if (*(v8 + 60) == *(v8 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v68 = *(v8 + 48);
  if (!v68)
  {
    goto LABEL_160;
  }

  v69 = *(v8 + 60);
  v70 = (v68 + 8 * v69);
  *v70 = v67;
  v70[1] = v17;
  if (v69 == -1)
  {
    goto LABEL_127;
  }

  *(v8 + 60) = v69 + 1;
  if (v14[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v71 = *v14;
  if (v71 >= *(v187 + 116))
  {
    goto LABEL_128;
  }

  v72 = *(v187 + 104);
  if (!v72)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(*(*(v72 + 8 * v71) + 8) + 64) = 0;
LABEL_48:
  v73 = *(v14 + 9);
  v203 = *(v14 + 8);
  v204 = v73;
  v205 = *(v14 + 10);
  v74 = *(v14 + 5);
  v199 = *(v14 + 4);
  v200 = v74;
  v75 = *(v14 + 7);
  v201 = *(v14 + 6);
  v202 = v75;
  v76 = *(v14 + 1);
  v195 = *v14;
  v196 = v76;
  v77 = *(v14 + 3);
  v197 = *(v14 + 2);
  v198 = v77;
  v207 = v14[192];
  v79 = *(v14 + 22);
  v78 = *(v14 + 23);
  *&v206 = v79;
  *(&v206 + 1) = v78;
  Interpreter.Iterator.updatingStack.getter();
  if (v81)
  {
    v82 = *v14;
    v17 = v14[48];
    v83 = v13[1];
    v220[0] = *v13;
    v220[1] = v83;
    v221[0] = v13[2];
    *(v221 + 9) = *(v13 + 41);
    v84 = v13;
    v12 = v188;
    v85 = v188;
    v86 = v15;
    v87 = v10;
    while (1)
    {
      v88 = *v87;
      if (*v86)
      {
        v26 = *v85;
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v88)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v220);
      }

      v85 = (v88 + 16);
      v86 = (v88 + 28);
      v87 = (v88 + 48);
      v84 = v88;
    }

    v39 = *v84;
    if (!v39)
    {
      goto LABEL_175;
    }

    v26 = *v26;
    v136 = *(*(v39 + 24 * v26) + 112);
    if (v136)
    {
      v137 = *(*(v136 + 32) + 8);
      v138 = *(v137 + 16);
      v139 = v138 + 1;
      v140 = (v137 + 48 * v138 - 16);
      do
      {
        if (v139-- <= 1)
        {
          goto LABEL_69;
        }

        if (v17)
        {
          goto LABEL_134;
        }

        if (*(v79 + 116) <= v82)
        {
          goto LABEL_115;
        }

        v142 = *(v79 + 104);
        if (!v142)
        {
          goto LABEL_135;
        }

        v80 = *v140;
        v143 = *(*(v142 + 8 * v82) + 8);
        if (v80 >= *(v143 + 44))
        {
          goto LABEL_116;
        }

        v144 = *(v143 + 32);
        if (!v144)
        {
          goto LABEL_136;
        }

        v145 = v144 + (v80 << 7);
        v148 = *(v145 + 8);
        v147 = v145 + 8;
        v146 = v148;
        if (!*(v147 + 24))
        {
          goto LABEL_117;
        }

        if (*(v147 + 16))
        {
          goto LABEL_138;
        }

        if (!v146)
        {
          goto LABEL_137;
        }

        v140 -= 12;
      }

      while (*v146 != &type metadata for Event.Transaction);
      v17 = v190;
      if (v14[48])
      {
        goto LABEL_114;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v12 = v188;
  if (v14[48])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_55:
  v89 = *v14;
  if (v89 >= *(v79 + 116))
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v90 = *(v79 + 104);
  if (!v90)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v91 = *(*(v90 + 8 * v89) + 8);
  v92 = *(v91 + 44);
  if (v80 >= v92)
  {
    goto LABEL_130;
  }

  v93 = *(v91 + 32);
  if (!v93)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v215);
  }

  if (v17 >= v92)
  {
    goto LABEL_131;
  }

  v94 = (v93 + (v80 << 7));
  v17 = v93 + (v17 << 7);
  v11 = *v17;
  if (v94[31] == v94[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v95 = *(v94 + 14);
  if (!v95)
  {
    goto LABEL_165;
  }

  v96 = v94[31];
  v97 = v95 + 8 * v96;
  *v97 = -24064;
  *(v97 + 4) = v11;
  if (v96 == -1)
  {
    goto LABEL_132;
  }

  v94[31] = v96 + 1;
  v8 = *v94;
  if (*(v17 + 124) == *(v17 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v98 = *(v17 + 112);
  if (!v98)
  {
    goto LABEL_166;
  }

  v99 = *(v17 + 124);
  v100 = v98 + 8 * v99;
  *v100 = 25088;
  *(v100 + 4) = v8;
  if (v99 == -1)
  {
    goto LABEL_133;
  }

  *(v17 + 124) = v99 + 1;
LABEL_69:
  v101 = v13[1];
  v218[0] = *v13;
  v218[1] = v101;
  v219[0] = v13[2];
  *(v219 + 9) = *(v13 + 41);
  v102 = v13;
  v103 = v12;
  v104 = v15;
  v105 = v10;
  while (1)
  {
    v106 = *v105;
    if (*v104)
    {
      v26 = *v103;
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v106)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v218);
    }

    v103 = (v106 + 16);
    v104 = (v106 + 28);
    v105 = (v106 + 48);
    v102 = v106;
  }

  v107 = *v102;
  if (!v107)
  {
    goto LABEL_170;
  }

  v108 = *(*(v107 + 24 * *v26) + 112);
  if (!v108)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (*(*(*(v108 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v14[48])
    {
      __break(1u);
    }

    else
    {
      v109 = *v14;
      if (v109 >= *(v79 + 116))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v110 = *(v79 + 104);
      if (v110)
      {
        v111 = *(*(v110 + 8 * v109) + 8);
        v112 = *(v111 + 44);
        if (!v112)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v113 = *(v111 + 32);
        if (v113)
        {
          v114 = v113 + (v112 << 7);
          v115 = *(v114 - 112);
          v195 = *(v114 - 128);
          v196 = v115;
          v116 = *(v114 - 48);
          v199 = *(v114 - 64);
          v200 = v116;
          v117 = *(v114 - 16);
          v201 = *(v114 - 32);
          v202 = v117;
          v118 = *(v114 - 80);
          v197 = *(v114 - 96);
          v198 = v118;
          LOBYTE(v215) = BYTE8(v196);
          v119 = 256;
          if (!BYTE9(v196))
          {
            v119 = 0;
          }

          v120 = v119 | (HIDWORD(v196) << 32);
          v121 = HeterogeneousBuffer.type(at:)(0, *(&v195 + 1), v196, v119 | BYTE8(v196), v197);
          v122 = swift_conformsToProtocol2();
          if (v122)
          {
            v123 = v122;
            LOBYTE(v215) = BYTE8(v196);
            v124 = HeterogeneousBuffer.index(after:)(0, *(&v195 + 1), v196, v120 | BYTE8(v196), v197);
            LOBYTE(v215) = BYTE8(v196);
            v125 = HeterogeneousBuffer.type(at:)(v124, *(&v195 + 1), v196, v120 | BYTE8(v196), v197);
            v126 = swift_conformsToProtocol2();
            if (v126)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v125, &v195, v121, v123, v126, &v191);
              v186 = v192;
              v187 = v191;
              v17 = v193;
              v127 = v13[1];
              v215 = *v13;
              v216 = v127;
              v217[0] = v13[2];
              *(v217 + 9) = *(v13 + 41);
              v128 = v188;
              while (1)
              {
                v129 = *v10;
                if (*v15)
                {
                  v26 = *v128;
                  if (((*v128)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v129)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v215);
                }

                v128 = (v129 + 16);
                v15 = (v129 + 28);
                v10 = (v129 + 48);
                v13 = v129;
              }

              if (*v13)
              {
                v130 = *(*(*v13 + 24 * *v26) + 112);
                if (v130)
                {
                  v8 = *(v130 + 32);
                  v11 = *(v8 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v8 + 8) = v11;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_96:
                    v133 = *(v11 + 2);
                    v132 = *(v11 + 3);
                    if (v133 >= v132 >> 1)
                    {
                      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v11);
                      *(v8 + 8) = v11;
                    }

                    *(v11 + 2) = v133 + 1;
                    v134 = &v11[48 * v133];
                    *(v134 + 8) = v190;
                    *(v134 + 40) = v187;
                    *(v134 + 56) = v186;
                    *(v134 + 18) = v17;
                    Interpreter.Iterator.relate(prior:)(v190);
                    return v190;
                  }

LABEL_125:
                  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
                  *(v8 + 8) = v11;
                  goto LABEL_96;
                }

                goto LABEL_158;
              }

              goto LABEL_171;
            }

LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_148:
  v149 = *(v14 + 11);
  v205 = *(v14 + 10);
  v206 = v149;
  v207 = v14[192];
  v150 = *(v14 + 7);
  v201 = *(v14 + 6);
  v202 = v150;
  v151 = *(v14 + 9);
  v203 = *(v14 + 8);
  v204 = v151;
  v152 = *(v14 + 3);
  v197 = *(v14 + 2);
  v198 = v152;
  v153 = *(v14 + 5);
  v199 = *(v14 + 4);
  v200 = v153;
  v154 = *(v14 + 1);
  v195 = *v14;
  v196 = v154;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v155 = swift_allocObject();
  v190 = xmmword_26C328DC0;
  *(v155 + 16) = xmmword_26C328DC0;
  v188 = xmmword_26C32DAD0;
  v215 = xmmword_26C32DAD0;
  LOBYTE(v216) = 1;
  *&v217[0] = 0;
  *(&v216 + 1) = 0;
  WORD4(v217[0]) = 512;
  v156 = Interpreter.Iterator.describe(state:)(&v215);
  v17 = MEMORY[0x277D837D0];
  *(v155 + 56) = MEMORY[0x277D837D0];
  *(v155 + 32) = v156;
  *(v155 + 40) = v157;
  print(_:separator:terminator:)();

  v158 = v13[1];
  v215 = *v13;
  v216 = v158;
  v217[0] = v13[2];
  *(v217 + 9) = *(v13 + 41);
  while (1)
  {
    v159 = *v10;
    if (*v15)
    {
      v26 = *v12;
      if ((*(*v12 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v159)
    {
      goto LABEL_167;
    }

    v12 = v159 + 16;
    v15 = (v159 + 28);
    v10 = (v159 + 48);
    v13 = v159;
  }

LABEL_172:
  v39 = *v13;
  if (!*v13)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v160 = *(*(v39 + 24 * *v26) + 112);
  if (!v160)
  {
    __break(1u);
  }

  v161 = *(v160 + 32);
  v162 = v161[1];
  v163 = v161[3];
  v164 = v161[4];
  v165 = swift_allocObject();
  *(v165 + 16) = v190;
  v195 = v188;
  LOBYTE(v196) = 1;
  *(&v196 + 1) = 0;
  *&v197 = 0;
  WORD4(v197) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v163, v164);
  v166 = specialized Interpreter.Control.Events.describe(state:)(&v195, v162);
  *(v165 + 56) = v17;
  *(v165 + 32) = v166;
  *(v165 + 40) = v167;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v163, v164);
  v168 = *(v189 + 11);
  v205 = *(v189 + 10);
  v206 = v168;
  v207 = v189[192];
  v169 = *(v189 + 7);
  v201 = *(v189 + 6);
  v202 = v169;
  v170 = *(v189 + 9);
  v203 = *(v189 + 8);
  v204 = v170;
  v171 = *(v189 + 3);
  v197 = *(v189 + 2);
  v198 = v171;
  v172 = *(v189 + 5);
  v199 = *(v189 + 4);
  v200 = v172;
  v173 = *(v189 + 1);
  v195 = *v189;
  v196 = v173;
  v174 = swift_allocObject();
  *(v174 + 16) = v190;
  v191 = v188;
  LOBYTE(v192) = 1;
  *(&v192 + 1) = 0;
  v193 = 0;
  v194 = 512;
  v175 = Interpreter.Iterator.describe(state:)(&v191);
  *(v174 + 56) = v17;
  *(v174 + 32) = v175;
  *(v174 + 40) = v176;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (v4[48])
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v12 = *(v4 + 22);
  v13 = *v4;
  if (v13 >= *(v12 + 116))
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *&v175 = *(v4 + 22);
  v14 = *(v12 + 104);
  if (!v14)
  {
    goto LABEL_140;
  }

  v10 = a3;
  v6 = *(*(*(v14 + 8 * v13) + 8) + 44);
  v9 = v4 + 56;
  v15 = *(v4 + 72);
  v212[0] = *(v4 + 56);
  v212[1] = v15;
  v213[0] = *(v4 + 88);
  v8 = v4 + 72;
  v11 = v4 + 84;
  v16 = v4 + 88;
  v5 = (v4 + 104);
  *(v213 + 9) = *(v4 + 97);
  v17 = (v4 + 56);
  v18 = (v4 + 72);
  v19 = v4 + 84;
  v20 = (v4 + 104);
  *&v174 = a2;
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_169;
  }

  *&v178 = v6;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v25 = *(v4 + 20);
  v171 = v4[168];
  v172 = **(v24 + 32);
  v170 = *(v4 + 43);
  v26 = *(v4 + 72);
  v210[0] = *v9;
  v210[1] = v26;
  v211[0] = *(v4 + 88);
  v27 = v4 + 100;
  v28 = *(v4 + 29);
  v22 = (v4 + 56);
  v29 = (v4 + 104);
  *(v211 + 9) = *(v4 + 97);
  v177 = v4;
  *&v176 = v4 + 72;
  while (1)
  {
    v30 = *v29;
    if (v28 < *v27)
    {
      v31 = (*v16 + 8 * v28);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v210);
    }

    v16 = v30 + 8;
    v27 = v30 + 11;
    v29 = (v30 + 12);
    v22 = v30;
  }

  v32 = *v22;
  if (!*v22)
  {
    goto LABEL_174;
  }

  LODWORD(v6) = a3;
  v33 = v32 + 24 * *v31;
  v3 = *(*v33 + 56);
  v34 = *(*v33 + 64);
  v10 = &v196;
  *(&v196 + 1) = 0;
  *&v197 = 0;
  WORD4(v197) = 257;
  LODWORD(v198) = 0;
  HIDWORD(v197) = 0;
  *(&v198 + 1) = 0;
  LOWORD(v199) = 0;
  *(&v199 + 1) = -1;
  v7 = &v196;
  *&v201[8] = xmmword_26C32E070;
  *&v201[24] = 0;
  *&v202 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v202 + 1) = v35;
  LODWORD(v196) = v178;
  specialized HeterogeneousBuffer.insert<A>(_:)();
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, v174);
  DWORD1(v198) = v172;
  *(&v200 + 4) = v25;
  BYTE12(v200) = v171;
  *v201 = v170;
  LOBYTE(v200) = v6 & 1;
  if ((v34 & 1) == 0)
  {
    *&v201[8] = v3;
  }

  v8 = v175;
  if (v13 >= *(v175 + 116))
  {
    goto LABEL_119;
  }

  v36 = *(v175 + 104);
  if (!v36)
  {
    goto LABEL_142;
  }

  v3 = *(*(v36 + 8 * v13) + 8);
  v37 = *(v3 + 44);
  LODWORD(v6) = v178;
  if (v37 == *(v3 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v3 + 32);
  if (!v38)
  {
    goto LABEL_143;
  }

  v39 = *(v3 + 44);
  v40 = (v38 + (v39 << 7));
  v41 = *v201;
  v40[4] = v200;
  v40[5] = v41;
  v42 = v202;
  v40[6] = *&v201[16];
  v40[7] = v42;
  v43 = v197;
  *v40 = v196;
  v40[1] = v43;
  v44 = v199;
  v40[2] = v198;
  v40[3] = v44;
  if (v39 == -1)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v3 + 44) = v39 + 1;
  if (v4[48])
  {
    goto LABEL_144;
  }

  v7 = *(v175 + 116);
  v45 = *v4;
  if (v45 >= v7)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v8 = *(v175 + 104);
  if (!v8)
  {
    goto LABEL_145;
  }

  v46 = *(*&v8[8 * v45] + 8);
  if (v178 >= *(v46 + 44))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v47 = *(v46 + 32);
  if (!v47)
  {
    goto LABEL_146;
  }

  v48 = v47 + (v178 << 7);
  v49 = *(v48 + 8);
  v50 = *(v48 + 16);
  v3 = *(v48 + 24);
  v51 = *(v48 + 25);
  v54 = v48 + 28;
  v52 = *(v48 + 28);
  v53 = *(v54 + 4);
  LOBYTE(v183) = v3;
  v55 = v51 == 0;
  v56 = 256;
  if (v55)
  {
    v56 = 0;
  }

  v57 = v56 | (v52 << 32);
  v58 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v49, v50, v57 | v3, v53);
  if (v58)
  {
    v10 = v177;
    v6 = v178;
  }

  else
  {
    LOBYTE(v183) = v3;
    v58 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v49, v50, v57 | v3, v53, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v10 = v177;
    v6 = v178;
    if (!v58)
    {
      goto LABEL_48;
    }
  }

  if (v10[48])
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v59 = *v10;
  if (v59 >= v7)
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v60 = *v58;
  v3 = *(*&v8[8 * v59] + 8);
  if (*(v3 + 60) == *(v3 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v61 = *(v3 + 48);
  if (!v61)
  {
    goto LABEL_160;
  }

  v62 = *(v3 + 60);
  v63 = (v61 + 8 * v62);
  *v63 = v60;
  v63[1] = v6;
  if (v62 == -1)
  {
    goto LABEL_127;
  }

  *(v3 + 60) = v62 + 1;
  if (v10[48])
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v64 = *v10;
  if (v64 >= *(v175 + 116))
  {
    goto LABEL_128;
  }

  v65 = *(v175 + 104);
  if (!v65)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(*(*(v65 + 8 * v64) + 8) + 64) = 0;
LABEL_48:
  v66 = *(v10 + 9);
  v191 = *(v10 + 8);
  v192 = v66;
  v193 = *(v10 + 10);
  v67 = *(v10 + 5);
  v187 = *(v10 + 4);
  v188 = v67;
  v68 = *(v10 + 7);
  v189 = *(v10 + 6);
  v190 = v68;
  v69 = *(v10 + 1);
  v183 = *v10;
  v184 = v69;
  v70 = *(v10 + 3);
  v185 = *(v10 + 2);
  v186 = v70;
  v195 = v10[192];
  v72 = *(v10 + 22);
  v71 = *(v10 + 23);
  *&v194 = v72;
  *(&v194 + 1) = v71;
  Interpreter.Iterator.updatingStack.getter();
  if (v74)
  {
    v75 = *v10;
    v6 = v10[48];
    v76 = v9[1];
    v208[0] = *v9;
    v208[1] = v76;
    v209[0] = v9[2];
    *(v209 + 9) = *(v9 + 41);
    v77 = v9;
    v8 = v176;
    v78 = v176;
    v79 = v11;
    v80 = v5;
    while (1)
    {
      v81 = *v80;
      if (*v79)
      {
        v22 = *v78;
        if ((v22[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v81)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
      }

      v78 = (v81 + 16);
      v79 = (v81 + 28);
      v80 = (v81 + 48);
      v77 = v81;
    }

    v32 = *v77;
    if (!v32)
    {
      goto LABEL_175;
    }

    v22 = *v22;
    v129 = *(*(v32 + 24 * v22) + 112);
    if (v129)
    {
      v130 = *(*(v129 + 32) + 8);
      v131 = *(v130 + 16);
      v132 = v131 + 1;
      v133 = (v130 + 48 * v131 - 16);
      do
      {
        if (v132-- <= 1)
        {
          goto LABEL_69;
        }

        if (v6)
        {
          goto LABEL_134;
        }

        if (*(v72 + 116) <= v75)
        {
          goto LABEL_115;
        }

        v135 = *(v72 + 104);
        if (!v135)
        {
          goto LABEL_135;
        }

        v73 = *v133;
        v136 = *(*(v135 + 8 * v75) + 8);
        if (v73 >= *(v136 + 44))
        {
          goto LABEL_116;
        }

        v137 = *(v136 + 32);
        if (!v137)
        {
          goto LABEL_136;
        }

        v138 = v137 + (v73 << 7);
        v141 = *(v138 + 8);
        v140 = v138 + 8;
        v139 = v141;
        if (!*(v140 + 24))
        {
          goto LABEL_117;
        }

        if (*(v140 + 16))
        {
          goto LABEL_138;
        }

        if (!v139)
        {
          goto LABEL_137;
        }

        v133 -= 12;
      }

      while (*v139 != &type metadata for Event.Transaction);
      v6 = v178;
      if (v10[48])
      {
        goto LABEL_114;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v8 = v176;
  if (v10[48])
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_55:
  v82 = *v10;
  if (v82 >= *(v72 + 116))
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v83 = *(v72 + 104);
  if (!v83)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v84 = *(*(v83 + 8 * v82) + 8);
  v85 = *(v84 + 44);
  if (v73 >= v85)
  {
    goto LABEL_130;
  }

  v86 = *(v84 + 32);
  if (!v86)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v203);
  }

  if (v6 >= v85)
  {
    goto LABEL_131;
  }

  v87 = (v86 + (v73 << 7));
  v6 = v86 + (v6 << 7);
  v7 = *v6;
  if (v87[31] == v87[30])
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v88 = *(v87 + 14);
  if (!v88)
  {
    goto LABEL_165;
  }

  v89 = v87[31];
  v90 = v88 + 8 * v89;
  *v90 = -24064;
  *(v90 + 4) = v7;
  if (v89 == -1)
  {
    goto LABEL_132;
  }

  v87[31] = v89 + 1;
  v3 = *v87;
  if (*(v6 + 124) == *(v6 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v91 = *(v6 + 112);
  if (!v91)
  {
    goto LABEL_166;
  }

  v92 = *(v6 + 124);
  v93 = v91 + 8 * v92;
  *v93 = 25088;
  *(v93 + 4) = v3;
  if (v92 == -1)
  {
    goto LABEL_133;
  }

  *(v6 + 124) = v92 + 1;
LABEL_69:
  v94 = v9[1];
  v206[0] = *v9;
  v206[1] = v94;
  v207[0] = v9[2];
  *(v207 + 9) = *(v9 + 41);
  v95 = v9;
  v96 = v8;
  v97 = v11;
  v98 = v5;
  while (1)
  {
    v99 = *v98;
    if (*v97)
    {
      v22 = *v96;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v99)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v206);
    }

    v96 = (v99 + 16);
    v97 = (v99 + 28);
    v98 = (v99 + 48);
    v95 = v99;
  }

  v100 = *v95;
  if (!v100)
  {
    goto LABEL_170;
  }

  v101 = *(*(v100 + 24 * *v22) + 112);
  if (!v101)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (*(*(*(v101 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v10[48])
    {
      __break(1u);
    }

    else
    {
      v102 = *v10;
      if (v102 >= *(v72 + 116))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v103 = *(v72 + 104);
      if (v103)
      {
        v104 = *(*(v103 + 8 * v102) + 8);
        v105 = *(v104 + 44);
        if (!v105)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v106 = *(v104 + 32);
        if (v106)
        {
          v107 = v106 + (v105 << 7);
          v108 = *(v107 - 112);
          v183 = *(v107 - 128);
          v184 = v108;
          v109 = *(v107 - 48);
          v187 = *(v107 - 64);
          v188 = v109;
          v110 = *(v107 - 16);
          v189 = *(v107 - 32);
          v190 = v110;
          v111 = *(v107 - 80);
          v185 = *(v107 - 96);
          v186 = v111;
          LOBYTE(v203) = BYTE8(v184);
          v112 = 256;
          if (!BYTE9(v184))
          {
            v112 = 0;
          }

          v113 = v112 | (HIDWORD(v184) << 32);
          v114 = HeterogeneousBuffer.type(at:)(0, *(&v183 + 1), v184, v112 | BYTE8(v184), v185);
          v115 = swift_conformsToProtocol2();
          if (v115)
          {
            v116 = v115;
            LOBYTE(v203) = BYTE8(v184);
            v117 = HeterogeneousBuffer.index(after:)(0, *(&v183 + 1), v184, v113 | BYTE8(v184), v185);
            LOBYTE(v203) = BYTE8(v184);
            v118 = HeterogeneousBuffer.type(at:)(v117, *(&v183 + 1), v184, v113 | BYTE8(v184), v185);
            v119 = swift_conformsToProtocol2();
            if (v119)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v118, &v183, v114, v116, v119, &v179);
              v174 = v180;
              v175 = v179;
              v6 = v181;
              v120 = v9[1];
              v203 = *v9;
              v204 = v120;
              v205[0] = v9[2];
              *(v205 + 9) = *(v9 + 41);
              v121 = v176;
              while (1)
              {
                v122 = *v5;
                if (*v11)
                {
                  v22 = *v121;
                  if (((*v121)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v122)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v203);
                }

                v121 = (v122 + 16);
                v11 = (v122 + 28);
                v5 = (v122 + 48);
                v9 = v122;
              }

              if (*v9)
              {
                v123 = *(*(*v9 + 24 * *v22) + 112);
                if (v123)
                {
                  v3 = *(v123 + 32);
                  v7 = *(v3 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v3 + 8) = v7;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_96:
                    v126 = *(v7 + 2);
                    v125 = *(v7 + 3);
                    if (v126 >= v125 >> 1)
                    {
                      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v7);
                      *(v3 + 8) = v7;
                    }

                    *(v7 + 2) = v126 + 1;
                    v127 = &v7[48 * v126];
                    *(v127 + 8) = v178;
                    *(v127 + 40) = v175;
                    *(v127 + 56) = v174;
                    *(v127 + 18) = v6;
                    Interpreter.Iterator.relate(prior:)(v178);
                    return v178;
                  }

LABEL_125:
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
                  *(v3 + 8) = v7;
                  goto LABEL_96;
                }

                goto LABEL_158;
              }

              goto LABEL_171;
            }

LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_148:
  v142 = *(v10 + 11);
  v193 = *(v10 + 10);
  v194 = v142;
  v195 = v10[192];
  v143 = *(v10 + 7);
  v189 = *(v10 + 6);
  v190 = v143;
  v144 = *(v10 + 9);
  v191 = *(v10 + 8);
  v192 = v144;
  v145 = *(v10 + 3);
  v185 = *(v10 + 2);
  v186 = v145;
  v146 = *(v10 + 5);
  v187 = *(v10 + 4);
  v188 = v146;
  v147 = *(v10 + 1);
  v183 = *v10;
  v184 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v148 = swift_allocObject();
  v178 = xmmword_26C328DC0;
  *(v148 + 16) = xmmword_26C328DC0;
  v176 = xmmword_26C32DAD0;
  v203 = xmmword_26C32DAD0;
  LOBYTE(v204) = 1;
  *&v205[0] = 0;
  *(&v204 + 1) = 0;
  WORD4(v205[0]) = 512;
  v149 = Interpreter.Iterator.describe(state:)(&v203);
  v6 = MEMORY[0x277D837D0];
  *(v148 + 56) = MEMORY[0x277D837D0];
  *(v148 + 32) = v149;
  *(v148 + 40) = v150;
  print(_:separator:terminator:)();

  v151 = v9[1];
  v203 = *v9;
  v204 = v151;
  v205[0] = v9[2];
  *(v205 + 9) = *(v9 + 41);
  while (1)
  {
    v152 = *v5;
    if (*v11)
    {
      v22 = *v8;
      if ((*(*v8 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v152)
    {
      goto LABEL_167;
    }

    v8 = (v152 + 16);
    v11 = (v152 + 28);
    v5 = (v152 + 48);
    v9 = v152;
  }

LABEL_172:
  v32 = *v9;
  if (!*v9)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v153 = *(*(v32 + 24 * *v22) + 112);
  if (!v153)
  {
    __break(1u);
  }

  v154 = *(v153 + 32);
  v155 = v154[1];
  v156 = v154[3];
  v157 = v154[4];
  v158 = swift_allocObject();
  *(v158 + 16) = v178;
  v183 = v176;
  LOBYTE(v184) = 1;
  *(&v184 + 1) = 0;
  *&v185 = 0;
  WORD4(v185) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v156, v157);
  v159 = specialized Interpreter.Control.Events.describe(state:)(&v183, v155);
  *(v158 + 56) = v6;
  *(v158 + 32) = v159;
  *(v158 + 40) = v160;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v156, v157);
  v161 = *(v177 + 11);
  v193 = *(v177 + 10);
  v194 = v161;
  v195 = v177[192];
  v162 = *(v177 + 7);
  v189 = *(v177 + 6);
  v190 = v162;
  v163 = *(v177 + 9);
  v191 = *(v177 + 8);
  v192 = v163;
  v164 = *(v177 + 3);
  v185 = *(v177 + 2);
  v186 = v164;
  v165 = *(v177 + 5);
  v187 = *(v177 + 4);
  v188 = v165;
  v166 = *(v177 + 1);
  v183 = *v177;
  v184 = v166;
  v167 = swift_allocObject();
  *(v167 + 16) = v178;
  v179 = v176;
  LOBYTE(v180) = 1;
  *(&v180 + 1) = 0;
  v181 = 0;
  v182 = 512;
  v168 = Interpreter.Iterator.describe(state:)(&v179);
  *(v167 + 56) = v6;
  *(v167 + 32) = v168;
  *(v167 + 40) = v169;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}