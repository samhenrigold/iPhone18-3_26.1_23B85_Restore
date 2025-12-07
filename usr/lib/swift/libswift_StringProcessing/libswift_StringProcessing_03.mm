uint64_t LiteralPrinter.outputQuantification(_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v80 = a2;
  v7 = type metadata accessor for AST.Atom.Number();
  v79 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v76 = &v74 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v74 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - v17;
  v19 = type metadata accessor for AST.Quantification.Amount();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4[1];
  if (LiteralPrinter.requiresGrouping(_:)(a3, *v4))
  {
    v75 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = a1;
    v25 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v27 = *(v23 + 2);
    v26 = *(v23 + 3);
    if (v27 >= v26 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v23 + 2) = v27 + 1;
    v28 = &v23[24 * v27];
    *(v28 + 2) = xmmword_18E5ED0D0;
    v28[48] = 0;
    v4 = v25;
    v25[1] = v23;
    LiteralPrinter.outputNode(_:)(a3);
    v29 = v25[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v7 = v75;
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[24 * v31];
    *(v32 + 2) = xmmword_18E5ED0A0;
    v32[48] = 0;
    v4[1] = v29;
    a1 = v74;
  }

  else
  {
    LiteralPrinter.outputNode(_:)(a3);
  }

  (*(v20 + 16))(v22, a1, v19);
  v33 = (*(v20 + 88))(v22, v19);
  if (v33 == *MEMORY[0x1E69E8AC8])
  {
    (*(v20 + 96))(v22, v19);
    v34 = v79;
    (*(v79 + 32))(v18, v22, v7);
    v82 = 123;
    v83 = 0xE100000000000000;
    v35 = AST.Atom.Number.value.getter();
    if ((v36 & 1) == 0)
    {
      v37 = v35;
      (*(v34 + 8))(v18, v7);
LABEL_15:
      v81 = v37;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v38);

      v39 = 125;
      v40 = 0xE100000000000000;
LABEL_19:
      MEMORY[0x193ACE8E0](v39, v40);
      v47 = v82;
      v46 = v83;
      v48 = v4[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v48 + 2) = v50 + 1;
      v51 = &v48[24 * v50];
      *(v51 + 4) = v47;
      *(v51 + 5) = v46;
      v51[48] = 0;

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_52;
  }

  if (v33 == *MEMORY[0x1E69E8AD0])
  {
    (*(v20 + 96))(v22, v19);
    v41 = v79;
    (*(v79 + 32))(v16, v22, v7);
    v82 = 123;
    v83 = 0xE100000000000000;
    v42 = AST.Atom.Number.value.getter();
    if ((v43 & 1) == 0)
    {
      v44 = v42;
      (*(v41 + 8))(v16, v7);
      v81 = v44;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v45);

      v39 = 32044;
      v40 = 0xE200000000000000;
      goto LABEL_19;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v33 == *MEMORY[0x1E69E8AC0])
  {
    (*(v20 + 96))(v22, v19);
    v53 = v78;
    v54 = v79;
    (*(v79 + 32))(v78, v22, v7);
    v82 = 11387;
    v83 = 0xE200000000000000;
    v55 = AST.Atom.Number.value.getter();
    if ((v56 & 1) == 0)
    {
      v37 = v55;
      (*(v54 + 8))(v53, v7);
      goto LABEL_15;
    }

    goto LABEL_53;
  }

  if (v33 == *MEMORY[0x1E69E8AB8])
  {
    (*(v20 + 96))(v22, v19);
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
    v58 = v79;
    v59 = *(v79 + 32);
    v60 = v76;
    v59(v76, v22, v7);
    v61 = v77;
    v59(v77, &v22[v57], v7);
    v82 = 123;
    v83 = 0xE100000000000000;
    v62 = AST.Atom.Number.value.getter();
    if ((v63 & 1) == 0)
    {
      v81 = v62;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v64);

      MEMORY[0x193ACE8E0](44, 0xE100000000000000);
      v65 = AST.Atom.Number.value.getter();
      if ((v66 & 1) == 0)
      {
        v37 = v65;
        v67 = *(v58 + 8);
        v67(v61, v7);
        v67(v60, v7);
        goto LABEL_15;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v33 == *MEMORY[0x1E69E8AB0])
  {
    v48 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v69 = *(v48 + 2);
    v68 = *(v48 + 3);
    if (v69 >= v68 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v48 + 2) = v69 + 1;
    v70 = xmmword_18E5ED100;
LABEL_50:
    v73 = &v48[24 * v69];
    *(v73 + 2) = v70;
    v73[48] = 0;
LABEL_24:
    v4[1] = v48;
    return LiteralPrinter.outputQuantificationKind(_:)(v80);
  }

  if (v33 == *MEMORY[0x1E69E8AD8])
  {
    v48 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v69 = *(v48 + 2);
    v71 = *(v48 + 3);
    if (v69 >= v71 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v69 + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v48 + 2) = v69 + 1;
    v70 = xmmword_18E5ED0F0;
    goto LABEL_50;
  }

  if (v33 == *MEMORY[0x1E69E8AE0])
  {
    v48 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v69 = *(v48 + 2);
    v72 = *(v48 + 3);
    if (v69 >= v72 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v69 + 1, 1, v48, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v48 + 2) = v69 + 1;
    v70 = xmmword_18E5ED0E0;
    goto LABEL_50;
  }

LABEL_56:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double LiteralPrinter.outputCustomCharacterClass(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for DSLTree.Atom(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v81 = &v78 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v78 - v7;
  v8 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  *&v87 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = MEMORY[0x1EEE9AC00](v12);
  *&v86 = &v78 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v78 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v83 = v11;
  v84 = v18;
  if (v23)
  {
    v17 = 0xE200000000000000;
    v24 = 24155;
    v25 = v85;
  }

  else
  {
    *&v79 = v19;
    v11 = *(v22 + 16);
    if (v11)
    {
      v24 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      while (v24 < *(v22 + 16))
      {
        v27 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v28 = *(v87 + 72);
        outlined init with copy of DSLTree._AST.AbsentFunction(v22 + v27 + v28 * v24, v21, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        outlined init with copy of DSLTree._AST.AbsentFunction(v21, v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of MEProgram(v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (EnumCaseMultiPayload == 4)
        {
          outlined destroy of MEProgram(v21, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        else
        {
          outlined init with take of DSLTree.QuantificationKind(v21, v86, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1);
            v26 = v88;
          }

          v32 = *(v26 + 2);
          v31 = *(v26 + 3);
          if (v32 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
            v26 = v88;
          }

          *(v26 + 2) = v32 + 1;
          outlined init with take of DSLTree.QuantificationKind(v86, &v26[v27 + v32 * v28], type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        if (v11 == ++v24)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_15:
    if (*(v26 + 2) == 1)
    {
      v33 = v79;
      outlined init with copy of DSLTree._AST.AbsentFunction(&v26[(*(v87 + 80) + 32) & ~*(v87 + 80)], v79, type metadata accessor for DSLTree.CustomCharacterClass.Member);

      v34 = swift_getEnumCaseMultiPayload();
      v25 = v85;
      v11 = v83;
      if (v34 == 2)
      {
        v35 = *(v33 + 8);
        v88 = *v33;
        LOBYTE(v89) = v35;
        LiteralPrinter.outputCustomCharacterClass(_:)(&v88);

        return result;
      }

      outlined destroy of MEProgram(v33, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v17 = 0xE100000000000000;
      v24 = 91;
    }

    else
    {

      v17 = 0xE100000000000000;
      v24 = 91;
      v25 = v85;
      v11 = v83;
    }
  }

  v26 = *(v25 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_76:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  v38 = *(v26 + 2);
  v37 = *(v26 + 3);
  if (v38 >= v37 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v26, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  *(v26 + 2) = v38 + 1;
  v39 = &v26[24 * v38];
  *(v39 + 4) = v24;
  *(v39 + 5) = v17;
  v39[48] = 0;

  v40 = v85;
  *(v85 + 1) = v26;
  v41 = *(v22 + 16);
  if (v41)
  {
    v22 += (*(v87 + 80) + 32) & ~*(v87 + 80);
    v42 = *(v87 + 72);
    v87 = xmmword_18E5ED140;
    v86 = xmmword_18E5ED130;
    v79 = xmmword_18E5ED120;
    v78 = xmmword_18E5ED110;
    while (1)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v22, v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v45 = swift_getEnumCaseMultiPayload();
      if (v45 <= 3)
      {
        break;
      }

      if (v45 > 5)
      {
        if (v45 == 6)
        {
          v17 = *v11;
          v49 = *(*v11 + 16);
          v50 = *(*v11 + 24);
          v24 = *(*v11 + 32);
          v51 = *(*v11 + 40);
          v88 = v49;
          LOBYTE(v89) = v50;
          LiteralPrinter.outputCustomCharacterClass(_:)(&v88);
          v52 = *(v40 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          }

          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          if (v54 >= v53 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v52, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          }

          *(v52 + 2) = v54 + 1;
          v43 = &v52[24 * v54];
          v44 = v79;
        }

        else
        {
          v17 = *v11;
          v71 = *(*v11 + 16);
          v72 = *(*v11 + 24);
          v24 = *(*v11 + 32);
          v51 = *(*v11 + 40);
          v88 = v71;
          LOBYTE(v89) = v72;
          LiteralPrinter.outputCustomCharacterClass(_:)(&v88);
          v52 = *(v40 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          }

          v74 = *(v52 + 2);
          v73 = *(v52 + 3);
          if (v74 >= v73 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v52, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          }

          *(v52 + 2) = v74 + 1;
          v43 = &v52[24 * v74];
          v44 = v78;
        }
      }

      else
      {
        if (v45 == 4)
        {
          v46 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
          v47 = v11;
LABEL_49:
          outlined destroy of MEProgram(v47, v46);
          goto LABEL_27;
        }

        v17 = *v11;
        v61 = *(*v11 + 16);
        v62 = *(*v11 + 24);
        v24 = *(*v11 + 32);
        v51 = *(*v11 + 40);
        v88 = v61;
        LOBYTE(v89) = v62;
        LiteralPrinter.outputCustomCharacterClass(_:)(&v88);
        v52 = *(v40 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        v64 = *(v52 + 2);
        v63 = *(v52 + 3);
        if (v64 >= v63 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v52, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        *(v52 + 2) = v64 + 1;
        v43 = &v52[24 * v64];
        v44 = v86;
      }

      *(v43 + 2) = v44;
      v43[48] = 0;
      v40 = v85;
      *(v85 + 1) = v52;
      v88 = v24;
      LOBYTE(v89) = v51;
      v26 = v40;
      LiteralPrinter.outputCustomCharacterClass(_:)(&v88);

      v11 = v83;
LABEL_27:
      v22 += v42;
      if (!--v41)
      {
        v26 = *(v40 + 1);
        goto LABEL_69;
      }
    }

    if (v45 > 1)
    {
      if (v45 == 2)
      {
        v17 = *v11;
        v48 = v11[8];
        v88 = *v11;
        LOBYTE(v89) = v48;
        v26 = v40;
        LiteralPrinter.outputCustomCharacterClass(_:)(&v88);
      }

      else
      {
        v65 = *(*v40 + 16);
        if (!v65)
        {
          goto LABEL_75;
        }

        v66 = v42;
        v68 = *v11;
        v67 = *(v11 + 1);
        if (*(*v40 + 4 * v65 + 28) & 0x300000) != 0 || (String.containsRegexMetaCharacters.getter(*v11, *(v11 + 1)))
        {
          v88 = 20828;
          v89 = 0xE200000000000000;
          MEMORY[0x193ACE8E0](v68, v67);

          MEMORY[0x193ACE8E0](17756, 0xE200000000000000);
          v68 = v88;
          v67 = v89;
        }

        v26 = *(v40 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        v24 = *(v26 + 2);
        v69 = *(v26 + 3);
        v17 = (v24 + 1);
        if (v24 >= v69 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v24 + 1, 1, v26, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        *(v26 + 2) = v17;
        v70 = &v26[24 * v24];
        *(v70 + 4) = v68;
        *(v70 + 5) = v67;
        v70[48] = 0;

        *(v40 + 1) = v26;
        v42 = v66;
      }

      goto LABEL_27;
    }

    if (v45)
    {
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
      v56 = v81;
      outlined init with take of DSLTree.QuantificationKind(v11, v81, type metadata accessor for DSLTree.Atom);
      outlined init with take of DSLTree.QuantificationKind(&v11[v55], v82, type metadata accessor for DSLTree.Atom);
      LiteralPrinter.outputAtom(_:)(v56);
      outlined destroy of MEProgram(v56, type metadata accessor for DSLTree.Atom);
      v57 = *(v40 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      v17 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v57, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v57 + 2) = v17;
      v60 = &v57[24 * v59];
      *(v60 + 2) = v87;
      v60[48] = 0;
      *(v40 + 1) = v57;
      v24 = v82;
    }

    else
    {
      v24 = v80;
      outlined init with take of DSLTree.QuantificationKind(v11, v80, type metadata accessor for DSLTree.Atom);
    }

    v26 = v40;
    LiteralPrinter.outputAtom(_:)(v24);
    v46 = type metadata accessor for DSLTree.Atom;
    v47 = v24;
    goto LABEL_49;
  }

LABEL_69:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  v76 = *(v26 + 2);
  v75 = *(v26 + 3);
  if (v76 >= v75 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v26, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  *(v26 + 2) = v76 + 1;
  *&result = 93;
  v77 = &v26[24 * v76];
  *(v77 + 2) = xmmword_18E5ED150;
  v77[48] = 0;
  *(v40 + 1) = v26;
  return result;
}

uint64_t LiteralPrinter.outputAtom(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DSLTree._AST.Reference(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v14, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v5 = 25692;
        switch(*v14)
        {
          case 1:
            v5 = 17500;
            break;
          case 2:
            v5 = 26716;
            break;
          case 3:
            v5 = 18524;
            break;
          case 4:
            v5 = 21084;
            break;
          case 5:
            v5 = 20060;
            break;
          case 6:
            v5 = 29532;
            break;
          case 7:
            v5 = 21340;
            break;
          case 8:
            v5 = 30300;
            break;
          case 9:
            v5 = 22108;
            break;
          case 0xA:
            v5 = 30556;
            break;
          case 0xB:
            v5 = 22364;
            break;
          case 0xC:
            v5 = 22620;
            break;
          case 0xD:
            goto LABEL_38;
          default:
            break;
        }

        v8 = v1[1];

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_142;
        }

        goto LABEL_155;
      }

      if (EnumCaseMultiPayload != 3)
      {
        outlined init with take of DSLTree.QuantificationKind(v14, v11, type metadata accessor for DSLTree._AST.Reference);
        LiteralPrinter.outputReference(_:)(v11);
        v46 = type metadata accessor for DSLTree._AST.Reference;
        v47 = v11;
        return outlined destroy of MEProgram(v47, v46);
      }

      switch(*v14)
      {
        case 1:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v65 = *(v8 + 3);
          if (v30 >= v65 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED240;
          break;
        case 2:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v60 = *(v8 + 3);
          if (v30 >= v60 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED230;
          break;
        case 3:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v61 = *(v8 + 3);
          if (v30 >= v61 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED220;
          break;
        case 4:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v57 = *(v8 + 3);
          if (v30 >= v57 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED210;
          break;
        case 5:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v66 = *(v8 + 3);
          if (v30 >= v66 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED200;
          break;
        case 6:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v67 = *(v8 + 3);
          if (v30 >= v67 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED1F0;
          break;
        case 7:
          v62 = *(*v1 + 2);
          if (!v62)
          {
            __break(1u);
            goto LABEL_157;
          }

          v63 = *&(*v1)[4 * v62 + 28];
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((v63 & 4) == 0)
          {
            if ((result & 1) == 0)
            {
              goto LABEL_159;
            }

            goto LABEL_101;
          }

          if (result)
          {
            goto LABEL_85;
          }

          goto LABEL_146;
        case 8:
          v69 = *(*v1 + 2);
          if (v69)
          {
            v70 = *&(*v1)[4 * v69 + 28];
            v8 = v1[1];
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((v70 & 4) != 0)
            {
              if ((result & 1) == 0)
              {
LABEL_148:
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
                v8 = result;
              }

LABEL_120:
              v30 = *(v8 + 2);
              v68 = *(v8 + 3);
              if (v30 >= v68 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
                v8 = result;
              }

              *(v8 + 2) = v30 + 1;
              v31 = xmmword_18E5ED1B0;
            }

            else
            {
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
                v8 = result;
              }

              v30 = *(v8 + 2);
              v71 = *(v8 + 3);
              if (v30 >= v71 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
                v8 = result;
              }

              *(v8 + 2) = v30 + 1;
              v31 = xmmword_18E5ED1D0;
            }
          }

          else
          {
            __break(1u);
LABEL_159:
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
LABEL_101:
            v30 = *(v8 + 2);
            v64 = *(v8 + 3);
            if (v30 >= v64 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
              v8 = result;
            }

            *(v8 + 2) = v30 + 1;
            v31 = xmmword_18E5ED1E0;
          }

          break;
        case 9:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
LABEL_146:
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

LABEL_85:
          v30 = *(v8 + 2);
          v59 = *(v8 + 3);
          if (v30 >= v59 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED1C0;
          break;
        case 0xA:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_120;
          }

          goto LABEL_148;
        case 0xB:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v56 = *(v8 + 3);
          if (v30 >= v56 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED1A0;
          break;
        case 0xC:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v58 = *(v8 + 3);
          if (v30 >= v58 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED190;
          break;
        default:
          v8 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
LABEL_157:
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          v30 = *(v8 + 2);
          v29 = *(v8 + 3);
          if (v30 >= v29 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
            v8 = result;
          }

          *(v8 + 2) = v30 + 1;
          v31 = xmmword_18E5ED250;
          break;
      }

LABEL_58:
      v51 = &v8[24 * v30];
      *(v51 + 2) = v31;
      v51[48] = 0;
LABEL_59:
      v1[1] = v8;
      return result;
    }

    if (EnumCaseMultiPayload)
    {
      v36 = Unicode.Scalar.escapedString.getter(*v14);
      v35 = v48;
      v49 = v1[1];
LABEL_64:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      v54 = *(v49 + 2);
      v53 = *(v49 + 3);
      if (v54 >= v53 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v49, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v49 + 2) = v54 + 1;
      v55 = &v49[24 * v54];
      *(v55 + 4) = v36;
      *(v55 + 5) = v35;
      v55[48] = 0;

      v1[1] = v49;
      return result;
    }

    v8 = *v14;
    v5 = *(v14 + 1);
    if (one-time initialization token for metachars == -1)
    {
LABEL_34:
      if (specialized Set.contains(_:)(v8, v5, metachars))
      {
        v78 = 0;
        v79 = 0xE000000000000000;
        MEMORY[0x193ACE8E0](92, 0xE100000000000000);
        Character.write<A>(to:)();

        v36 = v78;
        v35 = v79;
      }

      else
      {
        v36 = Character.escapingConfusable.getter(v8, v5);
        v35 = v52;
      }

      v49 = v1[1];
      goto LABEL_64;
    }

LABEL_150:
    swift_once();
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        v8 = v1[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
LABEL_61:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v8 = result;
        }

LABEL_55:
        v30 = *(v8 + 2);
        v50 = *(v8 + 3);
        if (v30 >= v50 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v8 = result;
        }

        *(v8 + 2) = v30 + 1;
        v31 = xmmword_18E5ED160;
        goto LABEL_58;
      }

      v32 = *(*v1 + 2);
      if (!v32)
      {
        goto LABEL_153;
      }

      v33 = *&(*v1)[4 * v32 + 28];
      v8 = v1[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((v33 & 0x10) != 0)
      {
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v8 = result;
        }

        v30 = *(v8 + 2);
        v34 = *(v8 + 3);
        if (v30 >= v34 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v8 = result;
        }

        *(v8 + 2) = v30 + 1;
        v31 = xmmword_18E5ED170;
        goto LABEL_58;
      }

LABEL_60:
      if ((result & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    v43 = *(*v1 + 2);
    if (v43)
    {
      v44 = *&(*v1)[4 * v43 + 28];
      v8 = v1[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((v44 & 0x10) == 0)
      {
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v8 = result;
        }

        v30 = *(v8 + 2);
        v45 = *(v8 + 3);
        if (v30 >= v45 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v30 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v8 = result;
        }

        *(v8 + 2) = v30 + 1;
        v31 = xmmword_18E5ED180;
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_150;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      outlined init with take of DSLTree.QuantificationKind(v14, v8, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
      v16 = v1;
      v17 = AST.MatchingOptionSequence._patternString.getter();
      v19 = v18;
      v20 = v1[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      v21 = *(v20 + 2);
      v22 = *(v20 + 3);
      v23 = v21 + 1;
      if (v21 >= v22 >> 1)
      {
        v75 = v20;
        v76 = *(v20 + 2);
        v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v21 + 1, 1, v75, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        v21 = v76;
        v20 = v77;
      }

      *(v20 + 2) = v23;
      v24 = &v20[24 * v21];
      *(v24 + 4) = v17;
      *(v24 + 5) = v19;
      v24[48] = 0;

      v16[1] = v20;
      v5 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v5 >= v25 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v5 + 1, 1, v20, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v20 + 2) = v5 + 1;
      v26 = &v20[24 * v5];
      *(v26 + 2) = xmmword_18E5ED0A0;
      v26[48] = 0;
      v16[1] = v20;
      v27 = *v16;
      v1 = *(*v16 + 2);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
        if (v1)
        {
LABEL_13:
          if (v1 <= *(v27 + 2))
          {
            MatchingOptions.Representation.apply(_:)(v8);
            result = outlined destroy of MEProgram(v8, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
            *v16 = v27;
            return result;
          }

          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
LABEL_142:
      v73 = *(v8 + 2);
      v72 = *(v8 + 3);
      if (v73 >= v72 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v8, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v8 + 2) = v73 + 1;
      v74 = &v8[24 * v73];
      *(v74 + 4) = v5;
      *(v74 + 5) = 0xE200000000000000;
      v74[48] = 0;

      goto LABEL_59;
    }

    outlined init with take of DSLTree.QuantificationKind(v14, v5, type metadata accessor for DSLTree._AST.Atom);
    LiteralPrinter.outputUnconvertedAST(_:)(v5);
    v46 = type metadata accessor for DSLTree._AST.Atom;
    v47 = v5;
    return outlined destroy of MEProgram(v47, v46);
  }

LABEL_38:
  v37 = swift_allocBox();
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v38, type metadata accessor for DSLTree.Atom);
  v39 = v1[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[24 * v41];
  *(v42 + 4) = v37 | 0x4000000000000000;
  *(v42 + 5) = 0;
  v42[48] = 1;

  v1[1] = v39;
  return result;
}

BOOL LiteralPrinter.requiresGrouping(_:)(unint64_t a1, uint64_t a2)
{
  v3 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v3 == 10)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

    specialized LiteralPrinter.prepareQuotedLiteral(_:)(v9, v10, a2);

    v11 = String.count.getter();

    return v11 > 1;
  }

  else if (v3 == 1 && (v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), (v5 = *(v4 + 16)) != 0))
  {
    if (v5 == 1)
    {
      v6 = *(v4 + 32);

      v7 = LiteralPrinter.requiresGrouping(_:)(v6, a2);

      return v7;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t LiteralPrinter.outputQuantificationKind(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.Quantification.Kind();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - v7;
  v9 = type metadata accessor for DSLTree._AST.QuantificationKind(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v47 - v13);
  v15 = type metadata accessor for DSLTree.QuantificationKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, &v47 - v19, type metadata accessor for DSLTree.QuantificationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      MatchingOptions.defaultQuantificationKind.getter(*v48, v18);
      swift_storeEnumTagMultiPayload();
      LiteralPrinter.outputQuantificationKind(_:)(v18);
      return outlined destroy of MEProgram(v18, type metadata accessor for DSLTree.QuantificationKind);
    }

    outlined init with take of DSLTree.QuantificationKind(v20, v12, type metadata accessor for DSLTree._AST.QuantificationKind);
    (*(v3 + 16))(v6, v12, v2);
    v22 = (*(v3 + 88))(v6, v2);
    if (v22 == *MEMORY[0x1E69E8A88])
    {
      outlined destroy of MEProgram(v12, type metadata accessor for DSLTree._AST.QuantificationKind);
      v14 = v48;
      v2 = v48[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        v2 = result;
      }

      v25 = *(v2 + 16);
      v24 = *(v2 + 24);
      if (v25 >= v24 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        v2 = result;
      }

      *(v2 + 16) = v25 + 1;
      v26 = xmmword_18E5ED260;
LABEL_40:
      v42 = v2 + 24 * v25;
      *(v42 + 32) = v26;
      *(v42 + 48) = 0;
      v14[1] = v2;
      return result;
    }

    v14 = v48;
    if (v22 == *MEMORY[0x1E69E8A90])
    {
      outlined destroy of MEProgram(v12, type metadata accessor for DSLTree._AST.QuantificationKind);
      v2 = v14[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_18:
        v25 = *(v2 + 16);
        v34 = *(v2 + 24);
        if (v25 >= v34 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v25 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v2 = result;
        }

        *(v2 + 16) = v25 + 1;
        v26 = xmmword_18E5ED0E0;
        goto LABEL_40;
      }

LABEL_48:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      v2 = result;
      goto LABEL_18;
    }

    if (v22 == *MEMORY[0x1E69E8A80])
    {
      outlined destroy of MEProgram(v12, type metadata accessor for DSLTree._AST.QuantificationKind);
      v2 = v14[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_37:
        v25 = *(v2 + 16);
        v41 = *(v2 + 24);
        if (v25 >= v41 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v25 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
          v2 = result;
        }

        *(v2 + 16) = v25 + 1;
        v26 = xmmword_18E5ED0F0;
        goto LABEL_40;
      }

LABEL_50:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      v2 = result;
      goto LABEL_37;
    }

    goto LABEL_51;
  }

  outlined init with take of DSLTree.QuantificationKind(v20, v14, type metadata accessor for DSLTree._AST.QuantificationKind);
  (*(v3 + 16))(v8, v14, v2);
  v27 = (*(v3 + 88))(v8, v2);
  if (v27 == *MEMORY[0x1E69E8A88])
  {
    outlined destroy of MEProgram(v14, type metadata accessor for DSLTree._AST.QuantificationKind);
    v28 = v48;
    v29 = *(*v48 + 16);
    if (!v29)
    {
      __break(1u);
      goto LABEL_48;
    }

    v30 = (*(*v48 + 4 * v29 + 28) & 0x20) == 0;
    if ((*(*v48 + 4 * v29 + 28) & 0x20) != 0)
    {
      v31 = 63;
    }

    else
    {
      v31 = 0;
    }

    v32 = 0xE100000000000000;
    v33 = 0xE000000000000000;
LABEL_27:
    if (v30)
    {
      v36 = v33;
    }

    else
    {
      v36 = v32;
    }

    v37 = v28[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[24 * v39];
    *(v40 + 4) = v31;
    *(v40 + 5) = v36;
    v40[48] = 0;

    v28[1] = v37;
    return result;
  }

  v28 = v48;
  if (v27 == *MEMORY[0x1E69E8A90])
  {
    outlined destroy of MEProgram(v14, type metadata accessor for DSLTree._AST.QuantificationKind);
    v35 = *(*v28 + 16);
    if (!v35)
    {
      __break(1u);
      goto LABEL_50;
    }

    v30 = (*(*v28 + 4 * v35 + 28) & 0x20) == 0;
    if ((*(*v28 + 4 * v35 + 28) & 0x20) != 0)
    {
      v31 = 0;
    }

    else
    {
      v31 = 63;
    }

    v32 = 0xE000000000000000;
    v33 = 0xE100000000000000;
    goto LABEL_27;
  }

  if (v27 != *MEMORY[0x1E69E8A80])
  {
LABEL_51:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined destroy of MEProgram(v14, type metadata accessor for DSLTree._AST.QuantificationKind);
  v43 = v28[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1, v43, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    v43 = result;
  }

  v45 = *(v43 + 16);
  v44 = *(v43 + 24);
  if (v45 >= v44 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    v43 = result;
  }

  *(v43 + 16) = v45 + 1;
  v46 = v43 + 24 * v45;
  *(v46 + 32) = xmmword_18E5ED0F0;
  *(v46 + 48) = 0;
  v28[1] = v43;
  return result;
}

uint64_t Unicode.Scalar.escapedString.getter(uint64_t a1)
{
  switch(a1)
  {
    case 9:
      return 29788;
    case 0xA:
      return 28252;
    case 0xD:
      return 29276;
  }

  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v2 = String.init<A>(_:radix:uppercase:)();
  v4 = v3;
  v5 = String.count.getter();
  result = String.count.getter();
  if (v5 <= 4)
  {
    v12 = 4 - result;
    if (!__OFSUB__(4, result))
    {
      v13._countAndFlagsBits = 48;
      v13._object = 0xE100000000000000;
      v14 = String.init(repeating:count:)(v13, v12);
      object = v14._object;
      countAndFlagsBits = v14._countAndFlagsBits;
      v11 = 30044;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v6 = 8 - result;
  if (__OFSUB__(8, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7._countAndFlagsBits = 48;
  v7._object = 0xE100000000000000;
  v10 = String.init(repeating:count:)(v7, v6);
  object = v10._object;
  countAndFlagsBits = v10._countAndFlagsBits;
  v11 = 21852;
LABEL_12:
  v15 = v11;
  MEMORY[0x193ACE8E0](countAndFlagsBits, object);

  MEMORY[0x193ACE8E0](v2, v4);

  return v15;
}

uint64_t LiteralPrinter.outputReference(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.Number();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for AST.Reference.Kind();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Reference.kind.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x1E69E8E88])
  {
    (*(v12 + 96))(v14, v11);
    (*(v5 + 32))(v10, v14, v4);
    v16 = AST.Atom.Number.value.getter();
    v18 = v17;
    (*(v5 + 8))(v10, v4);
    if ((v18 & 1) == 0)
    {
      if (v16 <= 9)
      {
        v42 = 92;
        v43 = 0xE100000000000000;
        v41 = v16;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ACE8E0](v19);

LABEL_23:
        v36 = v42;
        v35 = v43;
        v25 = *(v2 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        v38 = *(v25 + 2);
        v37 = *(v25 + 3);
        if (v38 >= v37 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
        }

        *(v25 + 2) = v38 + 1;
        v39 = &v25[24 * v38];
        *(v39 + 4) = v36;
        *(v39 + 5) = v35;
        v39[48] = 0;

LABEL_28:
        *(v2 + 8) = v25;
        return result;
      }

      v42 = 8087388;
      v43 = 0xE300000000000000;
      v41 = v16;
      goto LABEL_21;
    }

LABEL_7:
    type metadata accessor for DSLTree.Atom(0);
    v23 = swift_allocBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(a1, v24, type metadata accessor for DSLTree._AST.Reference);
    swift_storeEnumTagMultiPayload();
    v25 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[24 * v27];
    *(v28 + 4) = v23 | 0x4000000000000000;
    *(v28 + 5) = 0;
    v28[48] = 1;

    goto LABEL_28;
  }

  if (v15 == *MEMORY[0x1E69E8E90])
  {
    (*(v12 + 96))(v14, v11);
    (*(v5 + 32))(v8, v14, v4);
    v20 = AST.Atom.Number.value.getter();
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    if (v22)
    {
      goto LABEL_7;
    }

    if (v20 >= 0)
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    v42 = 8087388;
    v43 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v33, 0xE100000000000000);

    if ((v20 & 0x8000000000000000) == 0 || (v34 = __OFSUB__(0, v20), v20 = -v20, !v34))
    {
      v41 = v20;
LABEL_21:
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (v15 == *MEMORY[0x1E69E8E80])
  {
    (*(v12 + 96))(v14, v11);
    v30 = *v14;
    v31 = v14[1];
    v42 = 8087388;
    v43 = 0xE300000000000000;
    v32 = v31;
LABEL_22:
    MEMORY[0x193ACE8E0](v30, v32);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    goto LABEL_23;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AST.MatchingOptionSequence._patternString.getter()
{
  v1 = type metadata accessor for AST.MatchingOption.Kind();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v97 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v100 = &v64[-v6];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v95 = &v64[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64[-v9];
  v99 = type metadata accessor for AST.MatchingOption();
  v11 = *(v99 - 8);
  v12 = MEMORY[0x1EEE9AC00](v99);
  v96 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64[-v14];
  v83 = v0;
  v16 = AST.MatchingOptionSequence.adding.getter();
  v17 = *(v16 + 16);
  v98 = v11;
  v81 = v2;
  if (v17)
  {
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v93 = v19;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v80 = v16;
    v21 = v16 + v20;
    v22 = *(v18 + 56);
    v94 = v18;
    v91 = (v18 - 8);
    v92 = v22;
    v90 = (v2 + 16);
    v89 = *MEMORY[0x1E69E8A10];
    v88 = (v2 + 88);
    LODWORD(v86) = *MEMORY[0x1E69E8A60];
    LODWORD(v85) = *MEMORY[0x1E69E8A78];
    LODWORD(v84) = *MEMORY[0x1E69E8A18];
    LODWORD(v82) = *MEMORY[0x1E69E89E0];
    v79 = *MEMORY[0x1E69E8A28];
    v78 = *MEMORY[0x1E69E8A70];
    v77 = *MEMORY[0x1E69E89F8];
    v76 = *MEMORY[0x1E69E8A48];
    v75 = *MEMORY[0x1E69E8A00];
    v74 = *MEMORY[0x1E69E8A30];
    v73 = *MEMORY[0x1E69E8A08];
    v72 = *MEMORY[0x1E69E89E8];
    v71 = *MEMORY[0x1E69E8A58];
    v70 = *MEMORY[0x1E69E8A40];
    v69 = *MEMORY[0x1E69E8A68];
    v68 = *MEMORY[0x1E69E8A50];
    v67 = *MEMORY[0x1E69E89F0];
    v66 = *MEMORY[0x1E69E8A38];
    v65 = *MEMORY[0x1E69E8A20];
    v87 = (v2 + 8);
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24 = v99;
      (v93)(v15, v21, v99);
      AST.MatchingOption.kind.getter();
      (*v91)(v15, v24);
      v25 = v95;
      (*v90)(v95, v10, v1);
      v26 = (*v88)(v25, v1);
      if (v26 == v89)
      {
        v27 = 0xE100000000000000;
        v28 = 105;
      }

      else if (v26 == v86)
      {
        v27 = 0xE100000000000000;
        v28 = 74;
      }

      else if (v26 == v85)
      {
        v27 = 0xE100000000000000;
        v28 = 109;
      }

      else if (v26 == v84)
      {
        v27 = 0xE100000000000000;
        v28 = 110;
      }

      else if (v26 == v82)
      {
        v27 = 0xE100000000000000;
        v28 = 115;
      }

      else if (v26 == v79)
      {
        v27 = 0xE100000000000000;
        v28 = 85;
      }

      else if (v26 == v78)
      {
        v27 = 0xE100000000000000;
        v28 = 120;
      }

      else if (v26 == v77)
      {
        v27 = 0xE200000000000000;
        v28 = 30840;
      }

      else if (v26 == v76)
      {
        v27 = 0xE100000000000000;
        v28 = 119;
      }

      else if (v26 == v75)
      {
        v27 = 0xE100000000000000;
        v28 = 68;
      }

      else if (v26 == v74)
      {
        v27 = 0xE100000000000000;
        v28 = 80;
      }

      else if (v26 == v73)
      {
        v27 = 0xE100000000000000;
        v28 = 83;
      }

      else if (v26 == v72)
      {
        v27 = 0xE100000000000000;
        v28 = 87;
      }

      else if (v26 == v71)
      {
        v27 = 0xE400000000000000;
        v28 = 2103933817;
      }

      else if (v26 == v70)
      {
        v28 = 2104982393;
        v27 = 0xE400000000000000;
      }

      else if (v26 == v69)
      {
        v27 = 0xE100000000000000;
        v28 = 88;
      }

      else if (v26 == v68)
      {
        v27 = 0xE100000000000000;
        v28 = 117;
      }

      else
      {
        if (v26 != v67)
        {
          if (v26 != v66 && v26 != v65)
          {
LABEL_108:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          (*v87)(v10, v1);
          goto LABEL_44;
        }

        v27 = 0xE100000000000000;
        v28 = 98;
      }

      (*v87)(v10, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v30 = *(v23 + 2);
      v29 = *(v23 + 3);
      if (v30 >= v29 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v23);
      }

      *(v23 + 2) = v30 + 1;
      v31 = &v23[16 * v30];
      *(v31 + 4) = v28;
      *(v31 + 5) = v27;
LABEL_44:
      v21 += v92;
      if (!--v17)
      {

        goto LABEL_50;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v101 = v23;
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  v33 = lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F0192090, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
  v34 = BidirectionalCollection<>.joined(separator:)();
  v36 = v35;

  v37 = AST.MatchingOptionSequence.removing.getter();
  v38 = *(v37 + 16);
  if (v38)
  {
    v82 = v33;
    v84 = CanonicalSpecializedMetadata;
    v85 = v34;
    v86 = v36;
    v95 = *(v98 + 16);
    v39 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v80 = v37;
    v40 = v37 + v39;
    v41 = *(v98 + 72);
    v93 = (v98 + 8);
    v94 = v41;
    v92 = v81 + 16;
    v42 = (v81 + 88);
    LODWORD(v91) = *MEMORY[0x1E69E8A10];
    LODWORD(v90) = *MEMORY[0x1E69E8A60];
    v89 = *MEMORY[0x1E69E8A78];
    LODWORD(v88) = *MEMORY[0x1E69E8A18];
    LODWORD(v87) = *MEMORY[0x1E69E89E0];
    v79 = *MEMORY[0x1E69E8A28];
    v78 = *MEMORY[0x1E69E8A70];
    v77 = *MEMORY[0x1E69E89F8];
    v76 = *MEMORY[0x1E69E8A48];
    v75 = *MEMORY[0x1E69E8A00];
    v74 = *MEMORY[0x1E69E8A30];
    v73 = *MEMORY[0x1E69E8A08];
    v72 = *MEMORY[0x1E69E89E8];
    v71 = *MEMORY[0x1E69E8A58];
    v70 = *MEMORY[0x1E69E8A40];
    v69 = *MEMORY[0x1E69E8A68];
    v68 = *MEMORY[0x1E69E8A50];
    v67 = *MEMORY[0x1E69E89F0];
    v66 = *MEMORY[0x1E69E8A38];
    v65 = *MEMORY[0x1E69E8A20];
    v43 = (v81 + 8);
    v44 = MEMORY[0x1E69E7CC0];
    v98 += 16;
    while (1)
    {
      v45 = v96;
      v46 = v99;
      (v95)(v96, v40, v99);
      v47 = v100;
      AST.MatchingOption.kind.getter();
      (*v93)(v45, v46);
      v48 = v97;
      (*v92)(v97, v47, v1);
      v49 = (*v42)(v48, v1);
      if (v49 == v91)
      {
        v50 = 0xE100000000000000;
        v51 = 105;
      }

      else if (v49 == v90)
      {
        v50 = 0xE100000000000000;
        v51 = 74;
      }

      else if (v49 == v89)
      {
        v50 = 0xE100000000000000;
        v51 = 109;
      }

      else if (v49 == v88)
      {
        v50 = 0xE100000000000000;
        v51 = 110;
      }

      else if (v49 == v87)
      {
        v50 = 0xE100000000000000;
        v51 = 115;
      }

      else if (v49 == v79)
      {
        v50 = 0xE100000000000000;
        v51 = 85;
      }

      else if (v49 == v78)
      {
        v50 = 0xE100000000000000;
        v51 = 120;
      }

      else if (v49 == v77)
      {
        v50 = 0xE200000000000000;
        v51 = 30840;
      }

      else if (v49 == v76)
      {
        v50 = 0xE100000000000000;
        v51 = 119;
      }

      else if (v49 == v75)
      {
        v50 = 0xE100000000000000;
        v51 = 68;
      }

      else if (v49 == v74)
      {
        v50 = 0xE100000000000000;
        v51 = 80;
      }

      else if (v49 == v73)
      {
        v50 = 0xE100000000000000;
        v51 = 83;
      }

      else if (v49 == v72)
      {
        v50 = 0xE100000000000000;
        v51 = 87;
      }

      else if (v49 == v71)
      {
        v50 = 0xE400000000000000;
        v51 = 2103933817;
      }

      else if (v49 == v70)
      {
        v51 = 2104982393;
        v50 = 0xE400000000000000;
      }

      else if (v49 == v69)
      {
        v50 = 0xE100000000000000;
        v51 = 88;
      }

      else if (v49 == v68)
      {
        v50 = 0xE100000000000000;
        v51 = 117;
      }

      else
      {
        if (v49 != v67)
        {
          if (v49 != v66 && v49 != v65)
          {
            goto LABEL_108;
          }

          (*v43)(v100, v1);
          goto LABEL_93;
        }

        v50 = 0xE100000000000000;
        v51 = 98;
      }

      (*v43)(v100, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
      }

      v53 = *(v44 + 2);
      v52 = *(v44 + 3);
      if (v53 >= v52 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v44);
      }

      *(v44 + 2) = v53 + 1;
      v54 = &v44[16 * v53];
      *(v54 + 4) = v51;
      *(v54 + 5) = v50;
LABEL_93:
      v40 += v94;
      if (!--v38)
      {

        v34 = v85;
        v36 = v86;
        goto LABEL_99;
      }
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v101 = v44;
  v55 = BidirectionalCollection<>.joined(separator:)();
  v57 = v56;

  if (AST.MatchingOptionSequence.resetsCurrentOptions.getter())
  {

    v101 = 6176552;
    v102 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v34, v36);
  }

  else
  {
    v101 = 16168;
    v102 = 0xE200000000000000;
    MEMORY[0x193ACE8E0](v34, v36);

    v59 = v101;
    v58 = v102;
    v60 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v60 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v60)
    {
      v101 = 45;
      v102 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v55, v57);

      v62 = v101;
      v61 = v102;
    }

    else
    {

      v62 = 0;
      v61 = 0xE000000000000000;
    }

    v101 = v59;
    v102 = v58;

    MEMORY[0x193ACE8E0](v62, v61);
  }

  return v101;
}

uint64_t LiteralPrinter.outputUnconvertedAST(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.CharacterProperty();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom.Kind();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Atom.kind.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x1E69E8D80])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v13 = AST.Atom.CharacterProperty._regexBase.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    if (v15)
    {
      v16 = *(v2 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[24 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
      v19[48] = 0;

      *(v2 + 8) = v16;
      return result;
    }

    type metadata accessor for DSLTree.Atom(0);
    v37 = swift_allocBox();
    v39 = v38;
    v40 = type metadata accessor for AST.Atom();
    (*(*(v40 - 8) + 16))(v39, a1, v40);
    swift_storeEnumTagMultiPayload();
    v25 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v42 = *(v25 + 2);
    v41 = *(v25 + 3);
    if (v42 >= v41 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v25 + 2) = v42 + 1;
    v43 = &v25[24 * v42];
    *(v43 + 4) = v37 | 0x4000000000000000;
    *(v43 + 5) = 0;
    v43[48] = 1;

LABEL_24:
    *(v2 + 8) = v25;
    return result;
  }

  if (v12 == *MEMORY[0x1E69E8D20])
  {
    (*(v9 + 96))(v11, v8);
    v21 = *v11;
    v22 = v11[1];
    v44 = 8080988;
    v45 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v21, v22);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    v24 = v44;
    v23 = v45;
    v25 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[24 * v27];
    *(v28 + 4) = v24;
    *(v28 + 5) = v23;
    v28[48] = 0;

    goto LABEL_24;
  }

  type metadata accessor for DSLTree.Atom(0);
  v29 = swift_allocBox();
  v31 = v30;
  v32 = type metadata accessor for AST.Atom();
  (*(*(v32 - 8) + 16))(v31, a1, v32);
  swift_storeEnumTagMultiPayload();
  v33 = *(v2 + 8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR, &type metadata for PatternSegment);
  }

  *(v33 + 2) = v35 + 1;
  v36 = &v33[24 * v35];
  *(v36 + 4) = v29 | 0x4000000000000000;
  *(v36 + 5) = 0;
  v36[48] = 1;

  *(v2 + 8) = v33;
  return (*(v9 + 8))(v11, v8);
}

uint64_t String.containsRegexMetaCharacters.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v16 = a1;
  v17 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v18 = 0;
  v19 = v2;

  v3 = String.Iterator.next()();
  object = v3.value._object;
  if (v3.value._object)
  {
    countAndFlagsBits = v3.value._countAndFlagsBits;
    while (1)
    {
      if (one-time initialization token for metachars != -1)
      {
        swift_once();
      }

      v7 = metachars;
      if (*(metachars + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x193ACE6E0](v15, countAndFlagsBits, object);
        v8 = Hasher._finalize()();
        v9 = -1 << *(v7 + 32);
        v10 = v8 & ~v9;
        if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          break;
        }
      }

LABEL_5:

      v6 = String.Iterator.next()();
      countAndFlagsBits = v6.value._countAndFlagsBits;
      object = v6.value._object;
      if (!v6.value._object)
      {
        goto LABEL_19;
      }
    }

    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == countAndFlagsBits && object == v12[1];
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    object = 1;
  }

LABEL_19:

  return object;
}

uint64_t AST.Atom.CharacterProperty._regexBase.getter()
{
  v0 = type metadata accessor for Unicode.Script();
  v71 = *(v0 - 8);
  v72 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v69 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v70 = &v65 - v3;
  v4 = type metadata accessor for Unicode.POSIXProperty();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Unicode.BinaryProperty();
  v11 = *(v10 - 8);
  v73 = v10;
  v74 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (AST.Atom.CharacterProperty.isInverted.getter())
  {
    v18 = 20572;
  }

  else
  {
    v18 = 28764;
  }

  AST.Atom.CharacterProperty.kind.getter();
  v19 = (*(v15 + 88))(v17, v14);
  if (v19 == *MEMORY[0x1E69E8C88])
  {
    (*(v15 + 96))(v17, v14);
    (*(v7 + 32))(v9, v17, v6);
    v75 = v18;
    v76 = 0xE200000000000000;
    MEMORY[0x193ACE8E0](123, 0xE100000000000000);
    v20 = Unicode.ExtendedGeneralCategory.rawValue.getter();
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    MEMORY[0x193ACE8E0](v20, v22);
LABEL_14:

    v34 = 125;
    v35 = 0xE100000000000000;
    goto LABEL_33;
  }

  v23 = v19;
  if (v19 == *MEMORY[0x1E69E8CD0])
  {
    (*(v15 + 96))(v17, v14);
    v24 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMd, &_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMR) + 48));
    v25 = v74;
    v26 = v17;
    v27 = v73;
    (*(v74 + 32))(v13, v26, v73);
    v28 = v24 == 0;
    if (v24)
    {
      v29 = 0;
    }

    else
    {
      v29 = 0x65736C61663DLL;
    }

    if (v28)
    {
      v30 = 0xE600000000000000;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v75 = v18;
    v76 = 0xE200000000000000;
    MEMORY[0x193ACE8E0](123, 0xE100000000000000);
    v31 = Unicode.BinaryProperty.rawValue.getter();
    v33 = v32;
    (*(v25 + 8))(v13, v27);
    MEMORY[0x193ACE8E0](v31, v33);

    MEMORY[0x193ACE8E0](v29, v30);
    goto LABEL_14;
  }

  if (v19 == *MEMORY[0x1E69E8CD8])
  {

    (*(v15 + 96))(v17, v14);
    v37 = v70;
    v36 = v71;
    v38 = v72;
    (*(v71 + 32))(v70, v17, v72);
    v75 = 14939;
    v76 = 0xE200000000000000;
    v39 = AST.Atom.CharacterProperty.isInverted.getter();
    v40 = (v39 & 1) == 0;
    if (v39)
    {
      v41 = 94;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v42 = 0xE000000000000000;
    }

    else
    {
      v42 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v41, v42);

    v43 = 0x3D747069726373;
    v44 = 0xE700000000000000;
LABEL_31:
    MEMORY[0x193ACE8E0](v43, v44);
    v49 = Unicode.Script.rawValue.getter();
LABEL_32:
    v51 = v49;
    v52 = v50;
    (*(v36 + 8))(v37, v38);
    MEMORY[0x193ACE8E0](v51, v52);

    v34 = 23866;
    v35 = 0xE200000000000000;
    goto LABEL_33;
  }

  if (v19 == *MEMORY[0x1E69E8C90])
  {

    (*(v15 + 96))(v17, v14);
    v36 = v71;
    v38 = v72;
    v37 = v69;
    (*(v71 + 32))(v69, v17, v72);
    v75 = 14939;
    v76 = 0xE200000000000000;
    v45 = AST.Atom.CharacterProperty.isInverted.getter();
    v46 = (v45 & 1) == 0;
    if (v45)
    {
      v47 = 94;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v48 = 0xE000000000000000;
    }

    else
    {
      v48 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v47, v48);

    v43 = 1031299955;
    v44 = 0xE400000000000000;
    goto LABEL_31;
  }

  if (v19 == *MEMORY[0x1E69E8CC0])
  {

    (*(v15 + 96))(v17, v14);
    v54 = *v17;
    v55 = v17[1];
    v75 = 8080988;
    v76 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v54, v55);
    goto LABEL_14;
  }

  if (v19 == *MEMORY[0x1E69E8CC8])
  {

    (*(v15 + 96))(v17, v14);
    v37 = v66;
    v36 = v67;
    v38 = v68;
    (*(v67 + 32))(v66, v17, v68);
    v75 = 14939;
    v76 = 0xE200000000000000;
    v56 = AST.Atom.CharacterProperty.isInverted.getter();
    v57 = (v56 & 1) == 0;
    if (v56)
    {
      v58 = 94;
    }

    else
    {
      v58 = 0;
    }

    if (v57)
    {
      v59 = 0xE000000000000000;
    }

    else
    {
      v59 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v58, v59);

    v49 = Unicode.POSIXProperty.rawValue.getter();
    goto LABEL_32;
  }

  if (v19 == *MEMORY[0x1E69E8CA0])
  {
    v75 = v18;
    v76 = 0xE200000000000000;
    v34 = 0x7D796E417BLL;
    v35 = 0xE500000000000000;
  }

  else if (v19 == *MEMORY[0x1E69E8CF0])
  {
    v75 = v18;
    v76 = 0xE200000000000000;
    v34 = 0x656E67697373417BLL;
    v35 = 0xEA00000000007D64;
  }

  else
  {
    v60 = *MEMORY[0x1E69E8CB0];

    if (v23 != v60)
    {
      (*(v15 + 8))(v17, v14);
      return 0;
    }

    v75 = 14939;
    v76 = 0xE200000000000000;
    v61 = AST.Atom.CharacterProperty.isInverted.getter();
    v62 = (v61 & 1) == 0;
    if (v61)
    {
      v63 = 94;
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v64 = 0xE000000000000000;
    }

    else
    {
      v64 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v63, v64);

    v34 = 0x5D3A6969637361;
    v35 = 0xE700000000000000;
  }

LABEL_33:
  MEMORY[0x193ACE8E0](v34, v35);
  return v75;
}

uint64_t one-time initialization function for metachars()
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SSTt0g5(0x7C7D7B29285D5B5CLL, 0xEF2D2E245E3F2A2BLL);
  metachars = result;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SSTt0g5(Swift::Int a1, unint64_t a2)
{
  v4 = String.count.getter();
  v5 = MEMORY[0x193ACEAA0](v4, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E5EE8]);
  v13 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12[2] = a1;
  v12[3] = a2;
  v12[4] = 0;
  v12[5] = v6;
  v7 = String.Iterator.next()();
  if (v7.value._object)
  {
    countAndFlagsBits = v7.value._countAndFlagsBits;
    object = v7.value._object;
    do
    {
      specialized Set._Variant.insert(_:)(v12, countAndFlagsBits, object);

      v10 = String.Iterator.next()();
      countAndFlagsBits = v10.value._countAndFlagsBits;
      object = v10.value._object;
    }

    while (v10.value._object);
    v5 = v13;
  }

  return v5;
}

unint64_t Character.escapingConfusable.getter(unint64_t a1, unint64_t a2)
{
  v4 = Character.isConfusable.getter();

  if (v4)
  {
    v5 = specialized Collection.first.getter(a1, a2);
    if ((v5 & 0x100000000) == 0)
    {
      if ((v5 & 0xFFFFFF80) != 0 || v5 <= 0xFF)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    __break(1u);
LABEL_5:
    v6 = static String._uncheckedFromUTF8(_:)();
    specialized Collection.dropFirst(_:)(1uLL, a1, a2, String.UnicodeScalarView.index(_:offsetBy:limitedBy:), MEMORY[0x1E69E60C0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMR);
    lazy protocol witness table accessor for type [Any.Type] and conformance [A](&lazy protocol witness table cache variable for type LazySequence<FlattenSequence<LazyMapSequence<Substring.UnicodeScalarView, String>>> and conformance LazySequence<A>, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMR, MEMORY[0x1E69E6A58]);
    String.append<A>(contentsOf:)();

    return v6;
  }

  return a1;
}

unint64_t specialized implicit closure #1 in String.escapingConfusableCharacters()@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = Character.escapingConfusable.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL specialized Set.contains(_:)(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = a1 >> 14;
  MEMORY[0x193ACEFC0](v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7) >> 14;
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v13, a1, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized implicit closure #1 in Character.escapingConfusable.getter@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Unicode.Scalar.escapedString.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t MatchingOptions.Representation.apply(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.MatchingOption.Kind();
  v72 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v81 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v84 = &v55 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v83 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - v9;
  v85 = type metadata accessor for AST.MatchingOption();
  v11 = *(v85 - 8);
  v12 = MEMORY[0x1EEE9AC00](v85);
  v80 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV8LocationVSgMd, &_s12_RegexParser6SourceV8LocationVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  AST.MatchingOptionSequence.caretLoc.getter();
  v19 = type metadata accessor for Source.Location();
  v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  outlined destroy of SplitSequence<SubstringSearcher>(v18, &_s12_RegexParser6SourceV8LocationVSgMd, &_s12_RegexParser6SourceV8LocationVSgMR);
  if (v20 != 1)
  {
    *v86 = 81984;
  }

  v71 = a1;
  v21 = AST.MatchingOptionSequence.adding.getter();
  v82 = *(v21 + 16);
  if (v82)
  {
    v22 = 0;
    LODWORD(v79) = *MEMORY[0x1E69E8A10];
    v78 = v11 + 16;
    v75 = *MEMORY[0x1E69E8A60];
    v76 = (v72 + 16);
    v77 = v11 + 8;
    v74 = *MEMORY[0x1E69E8A78];
    v23 = (v72 + 88);
    v73 = *MEMORY[0x1E69E8A18];
    v70 = *MEMORY[0x1E69E89E0];
    v69 = *MEMORY[0x1E69E8A28];
    v68 = *MEMORY[0x1E69E8A70];
    v67 = *MEMORY[0x1E69E89F8];
    v66 = *MEMORY[0x1E69E8A48];
    v65 = *MEMORY[0x1E69E8A00];
    v64 = *MEMORY[0x1E69E8A30];
    v63 = *MEMORY[0x1E69E8A08];
    v62 = *MEMORY[0x1E69E89E8];
    v61 = *MEMORY[0x1E69E8A58];
    v60 = *MEMORY[0x1E69E8A40];
    v59 = *MEMORY[0x1E69E8A68];
    v58 = *MEMORY[0x1E69E8A50];
    v57 = *MEMORY[0x1E69E89F0];
    v56 = *MEMORY[0x1E69E8A38];
    v24 = (v72 + 8);
    v55 = *MEMORY[0x1E69E8A20];
    while (v22 < *(v21 + 16))
    {
      v27 = v21;
      v28 = v85;
      (*(v11 + 16))(v15, v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v85);
      AST.MatchingOption.kind.getter();
      (*(v11 + 8))(v15, v28);
      v29 = v83;
      (*v76)(v83, v10, v2);
      v30 = (*v23)(v29, v2);
      if (v30 == v79)
      {
        v31 = 0;
      }

      else if (v30 == v75)
      {
        v31 = 1;
      }

      else if (v30 == v74)
      {
        v31 = 2;
      }

      else if (v30 == v73)
      {
        v31 = 3;
      }

      else if (v30 == v70)
      {
        v31 = 4;
      }

      else if (v30 == v69)
      {
        v31 = 5;
      }

      else if (v30 == v68)
      {
        v31 = 20;
      }

      else if (v30 == v67)
      {
        v31 = 21;
      }

      else if (v30 == v66)
      {
        v31 = 6;
      }

      else if (v30 == v65)
      {
        v31 = 10;
      }

      else if (v30 == v64)
      {
        v31 = 11;
      }

      else if (v30 == v63)
      {
        v31 = 12;
      }

      else if (v30 == v62)
      {
        v31 = 13;
      }

      else if (v30 == v61)
      {
        v31 = 14;
      }

      else if (v30 == v60)
      {
        v31 = 15;
      }

      else if (v30 == v59)
      {
        v31 = 16;
      }

      else if (v30 == v58)
      {
        v31 = 17;
      }

      else if (v30 == v57)
      {
        v31 = 18;
      }

      else if (v30 == v56)
      {
        v31 = 19;
      }

      else
      {
        if (v30 != v55)
        {
          goto LABEL_132;
        }

        v31 = 9;
      }

      (*v24)(v10, v2);
      v25 = 1 << v31;
      if (((1 << v31) & 0x7FF8FFFF) != 0)
      {
        v32 = *v86;
      }

      else
      {
        v32 = *v86 & 0xFFF8FFFF;
      }

      v33 = v32 & 0xFFFF3FFF;
      if ((v25 & 0x7FFF3FFF) != 0)
      {
        v33 = v32;
      }

      v34 = (v32 & 0xC000) != 0 && (v25 & 0x7FFF3FFF) == 0;
      v35 = (v25 & 0x7FF7FFDF) == 0;
      v36 = v33 & 0xFFF7FFDF;
      if ((v25 & 0x7FF7FFDF) != 0)
      {
        v36 = v33;
      }

      if ((v33 & 0x80020) == 0)
      {
        v35 = 0;
      }

      if ((v36 & v25) == 0)
      {
        v35 = 1;
      }

      v37 = (*v86 & 0x70000) != 0 && ((1 << v31) & 0x7FF8FFFF) == 0;
      if (v37 || v34 || v35)
      {
        if ((v36 & v25) != 0)
        {
          v25 = 0;
        }

        v26 = v36 | v25;
        if (!v35)
        {
          v26 = v33;
        }

        *v86 = v26;
      }

      ++v22;
      v21 = v27;
      if (v82 == v22)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_73:

    v38 = AST.MatchingOptionSequence.removing.getter();
    v83 = *(v38 + 16);
    if (!v83)
    {
    }

    v39 = 0;
    LODWORD(v82) = *MEMORY[0x1E69E8A10];
    v78 = v11 + 8;
    v79 = v11 + 16;
    LODWORD(v77) = *MEMORY[0x1E69E8A60];
    v40 = (v72 + 16);
    v41 = (v72 + 88);
    LODWORD(v76) = *MEMORY[0x1E69E8A78];
    v75 = *MEMORY[0x1E69E8A18];
    v74 = *MEMORY[0x1E69E89E0];
    v73 = *MEMORY[0x1E69E8A28];
    LODWORD(v71) = *MEMORY[0x1E69E8A70];
    v70 = *MEMORY[0x1E69E89F8];
    v69 = *MEMORY[0x1E69E8A48];
    v68 = *MEMORY[0x1E69E8A00];
    v67 = *MEMORY[0x1E69E8A30];
    v66 = *MEMORY[0x1E69E8A08];
    v65 = *MEMORY[0x1E69E89E8];
    v64 = *MEMORY[0x1E69E8A58];
    v63 = *MEMORY[0x1E69E8A40];
    v62 = *MEMORY[0x1E69E8A68];
    v61 = *MEMORY[0x1E69E8A50];
    v60 = *MEMORY[0x1E69E89F0];
    v59 = *MEMORY[0x1E69E8A38];
    v42 = (v72 + 8);
    LODWORD(v72) = *MEMORY[0x1E69E8A20];
    v43 = v84;
    while (v39 < *(v38 + 16))
    {
      v45 = v80;
      v46 = v85;
      (*(v11 + 16))(v80, v38 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v39, v85);
      AST.MatchingOption.kind.getter();
      (*(v11 + 8))(v45, v46);
      v47 = v81;
      (*v40)(v81, v43, v2);
      v48 = (*v41)(v47, v2);
      if (v48 == v82)
      {
        v49 = 0;
      }

      else if (v48 == v77)
      {
        v49 = 1;
      }

      else if (v48 == v76)
      {
        v49 = 2;
      }

      else if (v48 == v75)
      {
        v49 = 3;
      }

      else if (v48 == v74)
      {
        v49 = 4;
      }

      else if (v48 == v73)
      {
        v49 = 5;
      }

      else if (v48 == v71)
      {
        v49 = 20;
      }

      else if (v48 == v70)
      {
        v49 = 21;
      }

      else if (v48 == v69)
      {
        v49 = 6;
      }

      else if (v48 == v68)
      {
        v49 = 10;
      }

      else if (v48 == v67)
      {
        v49 = 11;
      }

      else if (v48 == v66)
      {
        v49 = 12;
      }

      else if (v48 == v65)
      {
        v49 = 13;
      }

      else if (v48 == v64)
      {
        v49 = 14;
      }

      else if (v48 == v63)
      {
        v49 = 15;
      }

      else if (v48 == v62)
      {
        v49 = 16;
      }

      else if (v48 == v61)
      {
        v49 = 17;
      }

      else if (v48 == v60)
      {
        v49 = 18;
      }

      else if (v48 == v59)
      {
        v49 = 19;
      }

      else
      {
        if (v48 != v72)
        {
          goto LABEL_132;
        }

        v49 = 9;
      }

      (*v42)(v84, v2);
      v50 = 1 << v49;
      v51 = *v86 & 0xFFF7FFDF;
      if (((1 << v49) & 0x7FF7FFDF) != 0)
      {
        v51 = *v86;
      }

      v52 = (*v86 & 0x80020) != 0 && ((1 << v49) & 0x7FF7FFDF) == 0;
      v53 = v51 & v50;
      if (v52 || v53)
      {
        if (v53)
        {
          v44 = ~v50;
        }

        else
        {
          v44 = -1;
        }

        *v86 = v51 & v44;
      }

      if (v83 == ++v39)
      {
      }
    }
  }

  __break(1u);
LABEL_132:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance MatchingOptions.Representation@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance MatchingOptions.Representation(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance MatchingOptions.Representation@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance MatchingOptions.Representation@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MatchingOptions.Representation@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t renderAsBuilderDSL(ast:maxTopDownLevels:minBottomUpLevels:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v16 = a1;
  v5 = type metadata accessor for AST();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrettyPrinter();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrettyPrinter.init(maxTopDownLevels:minBottomUpLevels:)();
  outlined init with copy of Any(v16, v17);
  swift_dynamicCast();
  PrettyPrinter.printAsPattern(_:)();
  (*(v6 + 8))(v8, v5);
  countAndFlagsBits = PrettyPrinter.finish()()._countAndFlagsBits;
  (*(v10 + 8))(v12, v9);
  return countAndFlagsBits;
}

uint64_t PrettyPrinter.printAsPattern(_:)()
{
  v0 = type metadata accessor for AST.Node();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  AST.root.getter();
  v4 = convert #1 () in AST.Node.dslTreeNode.getter(v3);
  if (((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0xC)
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v6 = swift_allocBox();
    v7 = *(v5 + 48);
    *v8 = v4;
    (*(v1 + 32))(v8 + v7, v3, v0);
    v4 = v6 | 0x6000000000000000;
  }

  v20 = v4;
  v21 = DSLTree.Node.getNamedCaptures()(v4);
  v9 = *(v21 + 2);
  if (v9)
  {
    v10 = (v21 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;

      _StringGuts.grow(_:)(34);

      v22._countAndFlagsBits = 544499052;
      v22._object = 0xE400000000000000;
      MEMORY[0x193ACE8E0](v11, v12);

      MEMORY[0x193ACE8E0](0xD00000000000001CLL, 0x800000018E5F33B0);
      PrettyPrinter.print(_:)(v22);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  MEMORY[0x1EEE9AC00](v13);
  *(&v19 - 2) = v20;
  PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();

  while (1)
  {
    v14 = *(PrettyPrinter.inlineMatchingOptions.getter() + 16);

    if (!v14)
    {
      break;
    }

    v16 = PrettyPrinter.popMatchingOptions()();
    *(&v19 - 2) = MEMORY[0x1EEE9AC00](v16);
    *(&v19 - 8) = v17 & 1;
    PrettyPrinter.printIndented(_:)();

    v18._countAndFlagsBits = 125;
    v18._object = 0xE100000000000000;
    PrettyPrinter.print(_:)(v18);
  }

  return result;
}

uint64_t PrettyPrinter.printBackoff(_:)(unint64_t a1)
{
  v3 = type metadata accessor for Diagnostics();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV28GlobalMatchingOptionSequenceVSgMd, &_s12_RegexParser3ASTV28GlobalMatchingOptionSequenceVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v38 = type metadata accessor for AST.Node();
  v9 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DSLTree._AST.ASTNode(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4NodeOSgMd, &_s12_RegexParser3ASTV4NodeOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v31 - v18;
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xC)
  {
    v32 = v8;
    v33 = v5;
    v35 = v11;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v34 = v1;
    v21 = v20;
    v22 = swift_projectBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(v22 + *(v21 + 48), v16, type metadata accessor for DSLTree._AST.ASTNode);
    v23 = v36;
    v24 = *(v9 + 32);
    v25 = v13;
    v26 = v38;
    v24(v19, v16, v38);
    (*(v9 + 56))(v19, 0, 1, v26);
    outlined destroy of SplitSequence<SubstringSearcher>(v19, &_s12_RegexParser3ASTV4NodeOSgMd, &_s12_RegexParser3ASTV4NodeOSgMR);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v28 = swift_projectBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(v28 + *(v27 + 48), v16, type metadata accessor for DSLTree._AST.ASTNode);
    v24(v37, v16, v26);
    v29 = type metadata accessor for AST.GlobalMatchingOptionSequence();
    (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
    Diagnostics.init()();
    AST.init(_:globalOptions:diags:)();
    PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)();
    return (*(v23 + 8))(v25, v35);
  }

  else
  {
    (*(v9 + 56))(v19, 1, 1, v38);
    result = outlined destroy of SplitSequence<SubstringSearcher>(v19, &_s12_RegexParser3ASTV4NodeOSgMd, &_s12_RegexParser3ASTV4NodeOSgMR);
    __break(1u);
  }

  return result;
}

char *DSLTree.Node.getNamedCaptures()(unint64_t a1)
{
  v23 = MEMORY[0x1E69E7CC0];
  v1 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v1 > 5)
  {
    if (v1 == 6)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v9 = *(swift_projectBox() + *(v20 + 64));
    }

    else
    {
      if (v1 != 12)
      {
        return v23;
      }

      v9 = *swift_projectBox();
    }

    v21 = DSLTree.Node.getNamedCaptures()(v9);

    specialized Array.append<A>(contentsOf:)(v21);
    return v23;
  }

  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (v2)
      {
        v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = (v6 + 1);
        if (v6 >= v5 >> 1)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      }
    }

    return v23;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v10 = *(v2 + 16);
  if (!v10)
  {
    return v23;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v11 = 32;
  v3 = MEMORY[0x1E69E6158];
  while (1)
  {
    v12 = *(v2 + v11);

    v13 = DSLTree.Node.getNamedCaptures()(v12);

    v6 = *(v13 + 16);
    v14 = *(v7 + 2);
    v15 = v14 + v6;
    if (__OFADD__(v14, v6))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= *(v7 + 3) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v6;
      }

      else
      {
        v17 = v14;
      }

      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v7);
      if (*(v13 + 16))
      {
LABEL_23:
        v5 = *(v7 + 2);
        if (((*(v7 + 3) >> 1) - v5) < v6)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v18 = *(v7 + 2);
          v19 = __OFADD__(v18, v6);
          v5 = v18 + v6;
          if (v19)
          {
            goto LABEL_34;
          }

          *(v7 + 2) = v5;
        }

        goto LABEL_13;
      }
    }

    if (v6)
    {
      goto LABEL_32;
    }

LABEL_13:
    v11 += 8;
    if (!--v10)
    {

      return v7;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v7, 1, v4);
LABEL_6:
  *(v4 + 2) = v7;
  v8 = &v4[16 * v6];
  *(v8 + 4) = v3;
  *(v8 + 5) = v2;
  return v4;
}

void PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(unint64_t a1, int a2)
{
  LODWORD(v179) = a2;
  v157 = type metadata accessor for AST.Atom.CharacterProperty();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for AST.Atom.Kind();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v163 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for DSLTree.Atom(0);
  v8 = MEMORY[0x1EEE9AC00](v166);
  v167 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v169 = &v152 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v153 = &v152 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v152 - v14;
  v15 = type metadata accessor for AST.Quantification.Amount();
  v175 = *(v15 - 8);
  v176 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for AST.Quantification.Kind();
  v172 = *(v177 - 8);
  v17 = MEMORY[0x1EEE9AC00](v177);
  v164 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v173 = &v152 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v171 = &v152 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v170 = &v152 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v159 = &v152 - v25;
  v26 = type metadata accessor for DSLTree._AST.QuantificationKind(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v158 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV14QuantificationV4KindOSgMd, &_s12_RegexParser3ASTV14QuantificationV4KindOSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v168 = &v152 - v29;
  v30 = type metadata accessor for DSLTree.QuantificationKind(0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v152 - v34;
  v36 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v178 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AST.Group.Kind();
  v165 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DSLTree._AST.GroupKind(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = a1;
  v44 = PrettyPrinter.maxTopDownLevels.getter();
  if ((v45 & 1) == 0 && PrettyPrinter.depth.getter() >= v44 || (v46 = PrettyPrinter.minBottomUpLevels.getter(), (v48 & 1) == 0) && (v49 = v46, lazy protocol witness table accessor for type DSLTree._Tree and conformance DSLTree._Tree(), v46 = _TreeNode.height.getter(), v49 >= v46))
  {
    PrettyPrinter.printBackoff(_:)(a1);
    return;
  }

  v180 = v2;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:

      PrettyPrinter.printConcatenationAsPattern(_:isTopLevel:)(v72, v179 & 1);
      goto LABEL_35;
    case 2uLL:
      v73 = 0x65727574706143;
      v75 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v74 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v183 = 0x65727574706143;
      v184 = 0xE700000000000000;
      if (v74)
      {
        v181 = 0x203A736128;
        v182 = 0xE500000000000000;
        MEMORY[0x193ACE8E0](v75);
        MEMORY[0x193ACE8E0](41, 0xE100000000000000);
        MEMORY[0x193ACE8E0](v181, v182);

        v73 = v183;
      }

      MEMORY[0x1EEE9AC00](v73);
      PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();

      return;
    case 3uLL:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v54 = swift_projectBox();
      v55 = *(v54 + *(v53 + 48));
      outlined init with copy of DSLTree._AST.AbsentFunction(v54, v43, type metadata accessor for DSLTree._AST.GroupKind);
      v56 = v165;
      (*(v165 + 32))(v40, v43, v38);
      v57 = (*(v56 + 88))(v40, v38);
      if (v57 == *MEMORY[0x1E69E8E38] || v57 == *MEMORY[0x1E69E8E68] || v57 == *MEMORY[0x1E69E8E30])
      {
        MEMORY[0x1EEE9AC00](v57);

        PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();
        goto LABEL_99;
      }

      PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v55, 0);

      (*(v56 + 8))(v40, v38);
      return;
    case 4uLL:
      v58 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_26;
    case 5uLL:
      v52 = "/* TODO: consumers */";
      v50 = 0xD000000000000017;
      goto LABEL_29;
    case 6uLL:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v77 = swift_projectBox();
      v78 = *(v76 + 48);
      v79 = *(v77 + *(v76 + 64));
      outlined init with copy of DSLTree._AST.AbsentFunction(v77, v178, type metadata accessor for DSLTree._AST.QuantificationAmount);
      outlined init with copy of DSLTree._AST.AbsentFunction(v77 + v78, v35, type metadata accessor for DSLTree.QuantificationKind);

      v179 = AST.Quantification.Amount._patternBase.getter();
      v169 = v80;
      outlined init with take of DSLTree.QuantificationKind(v35, v33, type metadata accessor for DSLTree.QuantificationKind);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        v85 = 1;
        v84 = v177;
        v82 = v172;
        v83 = v168;
      }

      else
      {
        v81 = v158;
        outlined init with take of DSLTree.QuantificationKind(v33, v158, type metadata accessor for DSLTree._AST.QuantificationKind);
        v82 = v172;
        v83 = v168;
        v84 = v177;
        (*(v172 + 32))(v168, v81, v177);
        v85 = 0;
      }

      (*(v82 + 56))(v83, v85, 1, v84);
      v97 = swift_allocObject();
      v98 = (*(v82 + 48))(v83, 1, v84);
      v99 = v180;
      v166 = v79 & 0xFFFFFFFFFFFFFFBLL;
      v167 = v79;
      v172 = v97;
      if (v98 == 1)
      {
        outlined destroy of SplitSequence<SubstringSearcher>(v83, &_s12_RegexParser3ASTV14QuantificationV4KindOSgMd, &_s12_RegexParser3ASTV14QuantificationV4KindOSgMR);
        v100 = 0;
        *(v97 + 16) = 0;
        *(v97 + 24) = 0xE000000000000000;
        v168 = 0xE000000000000000;
        v101 = *MEMORY[0x1E69E8A88];
      }

      else
      {
        v102 = v159;
        (*(v82 + 16))(v159, v83, v84);
        v103 = (*(v82 + 88))(v102, v84);
        v101 = *MEMORY[0x1E69E8A88];
        if (v103 == v101)
        {
          v104 = 0xE600000000000000;
          v100 = 0x72656761652ELL;
        }

        else if (v103 == *MEMORY[0x1E69E8A90])
        {
          v100 = 0x617463756C65722ELL;
          v104 = 0xEA0000000000746ELL;
        }

        else
        {
          if (v103 != *MEMORY[0x1E69E8A80])
          {
            goto LABEL_101;
          }

          v100 = 0x73736573736F702ELL;
          v104 = 0xEB00000000657669;
        }

        (*(v82 + 8))(v83, v84);
        *(v97 + 16) = v100;
        *(v97 + 24) = v104;
        v168 = v104;
      }

      v114 = v170;
      PrettyPrinter.quantificationBehavior.getter();
      v115 = v171;
      (*(v82 + 104))(v171, v101, v84);
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98], MEMORY[0x1E69E8AA0]);
      v116 = v82;
      v117 = dispatch thunk of static Equatable.== infix(_:_:)();
      v118 = *(v116 + 8);
      v118(v115, v84);
      v118(v114, v84);
      if (v117)
      {
        v119 = v99;
        v120 = v168;
        goto LABEL_73;
      }

      v121 = v173;
      v119 = v99;
      PrettyPrinter.quantificationBehavior.getter();
      v122 = v164;
      (*(v116 + 16))(v164, v121, v84);
      v123 = (*(v116 + 88))(v122, v84);
      if (v123 == v101)
      {
        v120 = 0xE600000000000000;
        v100 = 0x72656761652ELL;
LABEL_72:
        v118(v173, v177);

        v124 = v172;
        *(v172 + 16) = v100;
        *(v124 + 24) = v120;
LABEL_73:
        v125 = swift_allocObject();
        v183 = v179;
        v184 = v169;

        MEMORY[0x193ACE8E0](40, 0xE100000000000000);
        MEMORY[0x193ACE8E0](v100, v120);
        MEMORY[0x193ACE8E0](41, 0xE100000000000000);
        v127 = v183;
        v126 = v184;
        v125[1]._countAndFlagsBits = v183;
        v125[1]._object = v126;
        v128 = v166;
        v129 = v119;
        if (v100 == 0x72656761652ELL && v120 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v130 = v169;
          v125[1]._countAndFlagsBits = v179;
          v125[1]._object = v130;
        }

        else
        {

          v179 = v127;
        }

        v132 = v174;
        v131 = v175;
        v133 = v176;
        (*(v175 + 32))(v174, v178, v176);
        v134 = (*(v131 + 88))(v132, v133);
        v135 = v172;
        if (v134 != *MEMORY[0x1E69E8AB0] && v134 != *MEMORY[0x1E69E8AD8] && v134 != *MEMORY[0x1E69E8AE0])
        {
          v134 = (*(v131 + 8))(v132, v133);
          goto LABEL_98;
        }

        v136 = (v167 >> 59) & 0x1E | (v167 >> 2) & 1;
        if (v136 == 7)
        {
          v150 = *(v128 + 16);
          v151 = *(v128 + 24);
        }

        else
        {
          if (v136 != 12)
          {
            if (v136 == 8)
            {
              v137 = swift_projectBox();
              v138 = v154;
              outlined init with copy of DSLTree._AST.AbsentFunction(v137, v154, type metadata accessor for DSLTree.Atom);
              v139 = DSLTree.Atom._patternBase(_:)(v129);
              v141 = v140;
              v143 = v142;
              v134 = outlined destroy of MEProgram(v138, type metadata accessor for DSLTree.Atom);
              if (v141)
              {
                if (v143)
                {
LABEL_87:
                  printAtom #1 (_:) in PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v139, v141, v129, v135, v125);

                  return;
                }

                goto LABEL_97;
              }
            }

LABEL_98:
            MEMORY[0x1EEE9AC00](v134);
            PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();

LABEL_99:

            return;
          }

          v134 = swift_projectBox();
          v144 = (*v134 >> 59) & 0x1E | (*v134 >> 2) & 1;
          if (v144 != 7)
          {
            if (v144 != 8)
            {
              goto LABEL_98;
            }

            v145 = swift_projectBox();
            v146 = v153;
            outlined init with copy of DSLTree._AST.AbsentFunction(v145, v153, type metadata accessor for DSLTree.Atom);
            v139 = DSLTree.Atom._patternBase(_:)(v129);
            v141 = v147;
            v149 = v148;
            v134 = outlined destroy of MEProgram(v146, type metadata accessor for DSLTree.Atom);
            if (!v141)
            {
              goto LABEL_98;
            }

            if (v149)
            {
              goto LABEL_87;
            }

LABEL_97:

            goto LABEL_98;
          }

          v150 = *((*v134 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v151 = *((*v134 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        }

        v183 = v150;
        LOBYTE(v184) = v151;

        if (DSLTree.CustomCharacterClass.isSimplePrint.getter())
        {
          v183 = v150;
          LOBYTE(v184) = v151;
          printSimpleCCC #1 (_:) in PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(&v183, v129, v135, v125);

          return;
        }

        goto LABEL_97;
      }

      if (v123 == *MEMORY[0x1E69E8A90])
      {
        v100 = 0x617463756C65722ELL;
        v120 = 0xEA0000000000746ELL;
        goto LABEL_72;
      }

      if (v123 == *MEMORY[0x1E69E8A80])
      {
        v100 = 0x73736573736F702ELL;
        v120 = 0xEB00000000657669;
        goto LABEL_72;
      }

LABEL_101:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18E5B1798);
    case 7uLL:
      v96 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v183 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v184) = v96;
      v185.members._rawValue = &v183;
      v185.isInverted = 1;
      PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v185, 1, v47);
      return;
    case 8uLL:
      v59 = swift_projectBox();
      v60 = v169;
      outlined init with copy of DSLTree._AST.AbsentFunction(v59, v169, type metadata accessor for DSLTree.Atom);
      v61 = v167;
      outlined init with copy of DSLTree._AST.AbsentFunction(v60, v167, type metadata accessor for DSLTree.Atom);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        outlined destroy of MEProgram(v61, type metadata accessor for DSLTree.Atom);
        v71 = v180;
        goto LABEL_52;
      }

      v62 = v163;
      outlined init with take of DSLTree.QuantificationKind(v61, v163, type metadata accessor for DSLTree._AST.Atom);
      v63 = v160;
      AST.Atom.kind.getter();
      v64 = v161;
      v65 = v162;
      v66 = (*(v161 + 88))(v63, v162);
      if (v66 == *MEMORY[0x1E69E8D80])
      {
        (*(v64 + 96))(v63, v65);
        v67 = v156;
        v68 = v155;
        v69 = v157;
        (*(v156 + 32))(v155, v63, v157);
        v70 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
        (*(v67 + 8))(v68, v69);
        v71 = v180;
        if (v70)
        {
          goto LABEL_60;
        }

        goto LABEL_51;
      }

      v71 = v180;
      if (v66 == *MEMORY[0x1E69E8D30] || v66 == *MEMORY[0x1E69E8D10] || v66 == *MEMORY[0x1E69E8D38])
      {
        (*(v64 + 8))(v63, v65);
        goto LABEL_60;
      }

      v105 = *MEMORY[0x1E69E8D20];
      v106 = v66;
      (*(v64 + 8))(v63, v65);
      if (v106 == v105)
      {
LABEL_60:
        outlined destroy of MEProgram(v60, type metadata accessor for DSLTree.Atom);
        v183 = 12067;
        v184 = 0xE200000000000000;
        v111 = AST.Atom._regexBase.getter();
        v113 = v112;
        outlined destroy of MEProgram(v62, type metadata accessor for DSLTree._AST.Atom);
        MEMORY[0x193ACE8E0](v111, v113);

        MEMORY[0x193ACE8E0](9007, 0xE200000000000000);
        v93 = v183;
        v95 = v184;
        goto LABEL_34;
      }

LABEL_51:
      outlined destroy of MEProgram(v62, type metadata accessor for DSLTree._AST.Atom);
LABEL_52:
      v107 = DSLTree.Atom._patternBase(_:)(v71);
      v94 = v108;
      v110 = v109;
      outlined destroy of MEProgram(v60, type metadata accessor for DSLTree.Atom);
      if (!v94)
      {
        return;
      }

      if (v110)
      {
        v183 = 677736015;
        v184 = 0xE400000000000000;
        MEMORY[0x193ACE8E0](v107, v94);

        MEMORY[0x193ACE8E0](41, 0xE100000000000000);
LABEL_32:
        v93 = v183;
        v94 = v184;
      }

      else
      {
        v93 = v107;
      }

      v95 = v94;
LABEL_34:
      PrettyPrinter.print(_:)(*&v93);
LABEL_35:

      return;
    case 9uLL:
      return;
    case 0xAuLL:
      v87 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v86 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      v88 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(92, 0xE100000000000000, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v87, v86);
      v90 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(34, 0xE100000000000000, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v88, v89);
      v92 = v91;

      v183 = 34;
      v184 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v90, v92);

      MEMORY[0x193ACE8E0](34, 0xE100000000000000);

      goto LABEL_32;
    case 0xBuLL:
      v52 = ".asciiOnlyDigits(";
      v50 = 0xD00000000000001BLL;
      goto LABEL_29;
    case 0xCuLL:
      v58 = *swift_projectBox();
LABEL_26:

      PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v58, v179 & 1);

      return;
    case 0xDuLL:
      v52 = "/* TODO: consumer validators */";
      v50 = 0xD000000000000015;
      goto LABEL_29;
    case 0xEuLL:
      v52 = "er predicates */";
      v50 = 0xD00000000000001FLL;
      goto LABEL_29;
    case 0xFuLL:
      v52 = "/* TODO: absent function */";
      v50 = 0xD000000000000020;
LABEL_29:
      v51 = v52 | 0x8000000000000000;
      goto LABEL_30;
    case 0x10uLL:
      v50 = 0;
      v51 = 0xE000000000000000;
LABEL_30:
      PrettyPrinter.print(_:)(*&v50);
      return;
    default:
      MEMORY[0x1EEE9AC00](v46);

      PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();

      return;
  }
}

uint64_t closure #1 in PrettyPrinter.printInlineMatchingOptions()(uint64_t a1, uint64_t a2, char a3)
{
  v33 = a1;
  v34 = type metadata accessor for AST.MatchingOption.Kind();
  v5 = *(v34 - 8);
  result = MEMORY[0x1EEE9AC00](v34);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(type metadata accessor for AST.MatchingOption() - 8);
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = (v5 + 88);
    v13 = *(v10 + 72);
    v20 = (v5 + 8);
    v19 = 0x800000018E5F3410;
    if (a3)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (a3)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = *MEMORY[0x1E69E8A10];
    v32 = *MEMORY[0x1E69E8A78];
    v31 = *MEMORY[0x1E69E89E0];
    v29 = *MEMORY[0x1E69E8A28];
    v17 = *MEMORY[0x1E69E8A00];
    v26 = *MEMORY[0x1E69E8A30];
    v27 = v17;
    v24 = *MEMORY[0x1E69E8A08];
    v21 = *MEMORY[0x1E69E89E8];
    v22 = 0x800000018E5F3430;
    v23 = 0x800000018E5F3450;
    v25 = 0x800000018E5F3470;
    v28 = 0x800000018E5F33D0;
    v30 = 0x800000018E5F33F0;
    do
    {
      AST.MatchingOption.kind.getter();
      result = (*v12)(v8, v34);
      if (result == v16)
      {
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        _StringGuts.grow(_:)(16);

        v35._countAndFlagsBits = 0x7365726F6E67692ELL;
        v18 = 0xED00002865736143;
      }

      else if (result == v32)
      {
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        _StringGuts.grow(_:)(28);

        v35._countAndFlagsBits = 0xD000000000000019;
        v18 = v30;
      }

      else if (result == v31)
      {
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v35._countAndFlagsBits = 0xD000000000000014;
        v18 = v28;
      }

      else
      {
        if (result == v29)
        {
          goto LABEL_16;
        }

        if (result == v27)
        {
          v35._countAndFlagsBits = 0;
          v35._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v35._countAndFlagsBits = 0xD000000000000011;
          v18 = v25;
        }

        else if (result == v26)
        {
          v35._countAndFlagsBits = 0;
          v35._object = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          v35._countAndFlagsBits = 0xD00000000000001BLL;
          v18 = v23;
        }

        else if (result == v24)
        {
          v35._countAndFlagsBits = 0;
          v35._object = 0xE000000000000000;
          _StringGuts.grow(_:)(24);

          v35._countAndFlagsBits = 0xD000000000000015;
          v18 = v22;
        }

        else
        {
          if (result != v21)
          {
            result = (*v20)(v8, v34);
            goto LABEL_16;
          }

          v35._countAndFlagsBits = 0;
          v35._object = 0xE000000000000000;
          _StringGuts.grow(_:)(28);

          v35._countAndFlagsBits = 0xD000000000000019;
          v18 = v19;
        }
      }

      v35._object = v18;
      MEMORY[0x193ACE8E0](v14, v15);

      MEMORY[0x193ACE8E0](41, 0xE100000000000000);
      PrettyPrinter.print(_:)(v35);

LABEL_16:
      v11 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

Swift::Void __swiftcall PrettyPrinter.printConcatenationAsPattern(_:isTopLevel:)(Swift::OpaquePointer _, Swift::Bool isTopLevel)
{
  v3 = isTopLevel;
  v98 = type metadata accessor for DSLTree.Atom(0);
  v5 = MEMORY[0x1EEE9AC00](v98);
  v96 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v90[-v7];
  v8 = *(_._rawValue + 2);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    v113 = 0;
    v114 = 0xE000000000000000;
    v112 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v91 = v3;
      v92 = v2;
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

LABEL_45:
    v82 = v112;
    v83 = *(v112 + 2);
    if (v3)
    {
      if (!v83)
      {
LABEL_47:

        return;
      }
    }

    else if (v83 != 1)
    {
      MEMORY[0x1EEE9AC00](v89);
      *&v90[-16] = v82;
      PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();

      return;
    }

    v84 = (v112 + 48);
    do
    {
      v85 = *(v84 - 2);
      v86 = *(v84 - 1);
      v87 = *v84;
      if (v87 == 1)
      {

        v88._countAndFlagsBits = v85;
        v88._object = v86;
        PrettyPrinter.print(_:)(v88);
      }

      else
      {

        PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v85, 0);
      }

      outlined consume of PrettyPrinter.NodeToPrint(v85, v86, v87);
      v84 += 24;
      --v83;
    }

    while (v83);
    goto LABEL_47;
  }

  v91 = v3;
  v92 = v2;
  *&v118[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v10 = *&v118[0];
  v11 = (_._rawValue + 32);
  do
  {
    v13 = *v11++;
    v12 = v13;
    if (((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 0xC)
    {
      v12 = *swift_projectBox();
    }

    *&v118[0] = v10;
    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    v16 = v15 + 1;

    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v10 = *&v118[0];
    }

    *(v10 + 16) = v16;
    v17 = v10 + 24 * v15;
    *(v17 + 32) = v12;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    --v8;
  }

  while (v8);
  v113 = 0;
  v114 = 0xE000000000000000;
  v112 = v9;
LABEL_11:
  v18 = 0;
  v99 = -v16;
  v97 = MEMORY[0x1E69E7CC0];
  v19 = v10 + 48;
  v94 = xmmword_18E5ED040;
  v93 = v10 + 48;
  while (2)
  {
    v20 = 0;
    v21 = (v19 + 24 * v18++);
    while (1)
    {
      if ((v18 - 1) >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      v25 = *v21;
      if (*v21)
      {
        goto LABEL_29;
      }

      v26 = (v23 >> 59) & 0x1E | (v23 >> 2) & 1;
      if (v26 == 10)
      {
        v33 = *((v23 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v34 = *((v23 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        outlined copy of PrettyPrinter.NodeToPrint(*(v21 - 2), *(v21 - 1), 0);

        v35 = String.subscript.getter();
        specialized Collection<>._ranges<A>(of:)(92, 0xE100000000000000, v35, v36, v37, v38, &v104);

        v118[0] = v104;
        v118[1] = v105;
        v118[2] = v106;
        v118[3] = v107;
        v39 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v118, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v33, v34);
        v41 = v40;
        v108 = v104;
        v109 = v105;
        v110 = v106;
        v111 = v107;
        outlined destroy of SplitSequence<SubstringSearcher>(&v108, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

        v42 = String.subscript.getter();
        specialized Collection<>._ranges<A>(of:)(34, 0xE100000000000000, v42, v43, v44, v45, &v100);

        v117[0] = v100;
        v117[1] = v101;
        v117[2] = v102;
        v117[3] = v103;
        v46 = v117;
        goto LABEL_27;
      }

      if (v26 == 9)
      {
        break;
      }

      if (v26 != 8)
      {
        goto LABEL_29;
      }

      v27 = swift_projectBox();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_29;
        }

        v29 = v27;
        v30 = v96;
        outlined init with copy of DSLTree._AST.AbsentFunction(v29, v96, type metadata accessor for DSLTree.Atom);
        v31 = *v30;
        *&v108 = 8090972;
        *(&v108 + 1) = 0xE300000000000000;
        LODWORD(v104) = v31;
        outlined copy of PrettyPrinter.NodeToPrint(v23, v24, 0);
        lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v32 = String.init<A>(_:radix:uppercase:)();
        MEMORY[0x193ACE8E0](v32);

        MEMORY[0x193ACE8E0](125, 0xE100000000000000);
        MEMORY[0x193ACE8E0](v108, *(&v108 + 1));
        goto LABEL_28;
      }

      v47 = v95;
      outlined init with copy of DSLTree._AST.AbsentFunction(v27, v95, type metadata accessor for DSLTree.Atom);
      v48 = *v47;
      v49 = v47[1];

      v50 = String.subscript.getter();
      specialized Collection<>._ranges<A>(of:)(92, 0xE100000000000000, v50, v51, v52, v53, &v104);

      v116[0] = v104;
      v116[1] = v105;
      v116[2] = v106;
      v116[3] = v107;
      v39 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v116, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v48, v49);
      v41 = v54;
      v108 = v104;
      v109 = v105;
      v110 = v106;
      v111 = v107;
      outlined destroy of SplitSequence<SubstringSearcher>(&v108, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

      v55 = String.subscript.getter();
      specialized Collection<>._ranges<A>(of:)(34, 0xE100000000000000, v55, v56, v57, v58, &v100);

      v115[0] = v100;
      v115[1] = v101;
      v115[2] = v102;
      v115[3] = v103;
      v46 = v115;
LABEL_27:
      v59 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v46, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v39, v41);
      v61 = v60;
      v104 = v100;
      v105 = v101;
      v106 = v102;
      v107 = v103;
      outlined destroy of SplitSequence<SubstringSearcher>(&v104, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

      MEMORY[0x193ACE8E0](v59, v61);
LABEL_28:

      outlined consume of PrettyPrinter.NodeToPrint(v23, v24, 0);
LABEL_16:
      ++v18;
      v21 += 24;
      v20 = 1;
      if (v99 + v18 == 1)
      {

        v80 = v113;
        v79 = v114;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v94;
        *&v108 = 34;
        *(&v108 + 1) = 0xE100000000000000;
        MEMORY[0x193ACE8E0](v80, v79);
        MEMORY[0x193ACE8E0](34, 0xE100000000000000);
        *(inited + 32) = v108;
        *(inited + 48) = 1;

        v89 = specialized Array.append<A>(contentsOf:)(inited);
        goto LABEL_44;
      }
    }

    v22 = v113 & 0xFFFFFFFFFFFFLL;
    if ((v114 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v114) & 0xF;
    }

    if (v22)
    {
      goto LABEL_16;
    }

LABEL_29:
    if ((v20 & 1) == 0)
    {
      outlined copy of PrettyPrinter.NodeToPrint(v23, v24, v25);
      v19 = v93;
      v72 = v97;
LABEL_36:
      v73 = v72;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v74 = v73;
      }

      else
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR, &type metadata for PrettyPrinter.NodeToPrint);
      }

      v76 = *(v74 + 2);
      v75 = *(v74 + 3);
      v97 = v74;
      if (v76 >= v75 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v97, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR, &type metadata for PrettyPrinter.NodeToPrint);
      }

      v77 = v97;
      *(v97 + 2) = v76 + 1;
      v78 = &v77[24 * v76];
      *(v78 + 4) = v23;
      *(v78 + 5) = v24;
      v78[48] = v25;
      v112 = v77;
      if (!(v99 + v18))
      {

LABEL_44:
        LOBYTE(v3) = v91;
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  v63 = v113;
  v62 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
  v64 = swift_initStackObject();
  *(v64 + 16) = v94;
  *&v108 = 34;
  *(&v108 + 1) = 0xE100000000000000;
  outlined copy of PrettyPrinter.NodeToPrint(v23, v24, v25);
  MEMORY[0x193ACE8E0](v63, v62);
  MEMORY[0x193ACE8E0](34, 0xE100000000000000);
  v65 = *(&v108 + 1);
  *(v64 + 32) = v108;
  *(v64 + 40) = v65;
  *(v64 + 48) = 1;

  v66 = v97;
  v67 = *(v97 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v69 = *(v66 + 3) >> 1, v69 <= v67))
  {
    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v67 + 1, 1, v66, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR, &type metadata for PrettyPrinter.NodeToPrint);
    v69 = *(v66 + 3) >> 1;
  }

  v70 = v66;
  v71 = *(v66 + 2);
  v19 = v93;
  if (v69 > v71)
  {
    swift_arrayInitWithCopy();

    ++*(v70 + 2);
    v113 = 0;
    v114 = 0xE000000000000000;
    v72 = v70;
    goto LABEL_36;
  }

LABEL_57:
  __break(1u);
}

uint64_t AST.Quantification.Amount._patternBase.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AST.Atom.Number();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v55 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  v17 = type metadata accessor for AST.Quantification.Amount();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x1E69E8AC8])
  {
    (*(v18 + 96))(v20, v17);
    (*(v3 + 32))(v16, v20, v2);
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v57, "Repeat(count: ");
    HIBYTE(v57[1]) = -18;
    v22 = AST.Atom.Number.value.getter();
    v23 = v2;
    if (v24)
    {
      v25 = 0x7265626D756E233CLL;
      v26 = 0xEA00000000003E23;
    }

    else
    {
      v56 = v22;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v32;
    }

    (*(v3 + 8))(v16, v23);
LABEL_9:
    MEMORY[0x193ACE8E0](v25, v26);
LABEL_10:

    v33 = 41;
    v34 = 0xE100000000000000;
LABEL_16:
    MEMORY[0x193ACE8E0](v33, v34);
    return v57[0];
  }

  if (v21 == *MEMORY[0x1E69E8AD0])
  {
    (*(v18 + 96))(v20, v17);
    v27 = v2;
    (*(v3 + 32))(v14, v20, v2);
    strcpy(v57, "Repeat(");
    v57[1] = 0xE700000000000000;
    v28 = AST.Atom.Number.value.getter();
    if (v29)
    {
      v30 = 0x7265626D756E233CLL;
      v31 = 0xEA00000000003E23;
    }

    else
    {
      v56 = v28;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v38;
    }

    (*(v3 + 8))(v14, v27);
    MEMORY[0x193ACE8E0](v30, v31);

    v33 = 690892334;
    v34 = 0xE400000000000000;
    goto LABEL_16;
  }

  v35 = v2;
  if (v21 == *MEMORY[0x1E69E8AC0])
  {
    (*(v18 + 96))(v20, v17);
    (*(v3 + 32))(v11, v20, v2);
    v26 = 0xEA00000000003E23;
    strcpy(v57, "Repeat(...");
    BYTE3(v57[1]) = 0;
    HIDWORD(v57[1]) = -369098752;
    v36 = AST.Atom.Number.value.getter();
    if (v37)
    {
      v25 = 0x7265626D756E233CLL;
    }

    else
    {
      v56 = v36;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v54;
    }

    (*(v3 + 8))(v11, v35);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69E8AB8])
  {
    v40 = 0xEA00000000003E23;
    v41 = 0x7265626D756E233CLL;
    (*(v18 + 96))(v20, v17);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
    v43 = *(v3 + 32);
    v43(v8, v20, v2);
    v44 = v55;
    v43(v55, &v20[v42], v35);
    strcpy(v57, "Repeat(");
    v57[1] = 0xE700000000000000;
    v45 = AST.Atom.Number.value.getter();
    v46 = 0x7265626D756E233CLL;
    v47 = 0xEA00000000003E23;
    if ((v48 & 1) == 0)
    {
      v56 = v45;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v49;
    }

    v50 = *(v3 + 8);
    v50(v8, v35);
    MEMORY[0x193ACE8E0](v46, v47);

    MEMORY[0x193ACE8E0](3026478, 0xE300000000000000);
    v51 = AST.Atom.Number.value.getter();
    if ((v52 & 1) == 0)
    {
      v56 = v51;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v53;
    }

    v50(v44, v35);
    MEMORY[0x193ACE8E0](v41, v40);
    goto LABEL_10;
  }

  if (v21 == *MEMORY[0x1E69E8AB0])
  {
    return 0x6F4D724F6F72655ALL;
  }

  if (v21 == *MEMORY[0x1E69E8AD8])
  {
    return 0x726F4D724F656E4FLL;
  }

  if (v21 == *MEMORY[0x1E69E8AE0])
  {
    return 0x6C616E6F6974704FLL;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void printAtom #1 (_:) in PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, Swift::String *a5)
{
  PrettyPrinter.indent()();
  v9 = *(a4 + 16) == 0x72656761652ELL && *(a4 + 24) == 0xE600000000000000;
  if (v9 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v10 & 1) != 0))
  {
    v14 = a5[1];

    v11 = 40;
    v12 = 0xE100000000000000;
  }

  else
  {
    specialized RangeReplaceableCollection<>.removeLast()(v10);

    v14 = a5[1];

    v11 = 8236;
    v12 = 0xE200000000000000;
  }

  MEMORY[0x193ACE8E0](v11, v12);
  PrettyPrinter.output(_:)(v14);

  MEMORY[0x193ACE8E0](41, 0xE100000000000000);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  PrettyPrinter.output(_:)(v13);

  PrettyPrinter.terminateLine()();
}

void printSimpleCCC #1 (_:) in PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  PrettyPrinter.indent()();
  v8 = *(a3 + 16) == 0x72656761652ELL && *(a3 + 24) == 0xE600000000000000;
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v9 & 1) != 0))
  {
    v10 = *(a4 + 24);
    v16._countAndFlagsBits = *(a4 + 16);
    v16._object = v10;

    v11 = 40;
    v12 = 0xE100000000000000;
  }

  else
  {
    specialized RangeReplaceableCollection<>.removeLast()(v9);

    v13 = *(a4 + 24);
    v16._countAndFlagsBits = *(a4 + 16);
    v16._object = v13;

    v11 = 8236;
    v12 = 0xE200000000000000;
  }

  MEMORY[0x193ACE8E0](v11, v12);
  PrettyPrinter.output(_:)(v16);

  v16._countAndFlagsBits = v6;
  LOBYTE(v16._object) = v7;
  v17.members._rawValue = &v16;
  v17.isInverted = 0;
  PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v17, 0, v14);
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  PrettyPrinter.output(_:)(v15);
  PrettyPrinter.terminateLine()();
}

Swift::Void __swiftcall PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(_StringProcessing::DSLTree::CustomCharacterClass _, Swift::Bool wrap, Swift::Bool terminateLine)
{
  v33 = *&_.isInverted;
  rawValue = _.members._rawValue;
  v5 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32[-v10];
  v12 = 0;
  v13 = *rawValue;
  v14 = rawValue[8];
  v15 = *(*rawValue + 16);
  while (1)
  {
    v16 = *(v13 + 16);
    if (v15 == v12)
    {
      break;
    }

    if (v12 >= v16)
    {
      __break(1u);
      return;
    }

    outlined init with copy of DSLTree._AST.AbsentFunction(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12++, v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v17 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
    outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    if (v17)
    {
      v38 = v13;
      LOBYTE(v39) = v14;
      v40.members._rawValue = &v38;
      v40.isInverted = 1;
      PrettyPrinter.printAsRegex(_:asFullRegex:terminateLine:)(v40, wrap, v18);
      return;
    }
  }

  if (v16 == 1)
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    PrettyPrinter.printAsPattern(_:wrap:)(v9, v33 & 1);
    v19 = outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    if (wrap)
    {
      PrettyPrinter.terminateLine()();
    }

    if (v14)
    {
LABEL_25:
      MEMORY[0x1EEE9AC00](v19);
      v32[-16] = wrap;
      PrettyPrinter.printIndented(_:)();
    }
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;

    v21 = specialized _ArrayProtocol.filter(_:)(v20, &v38);

    v23 = v38;
    v22 = v39;
    v24 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v24 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v24 && !*(v21 + 16))
    {

      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v36 = 0xD000000000000015;
      v37 = 0x800000018E5F35A0;
      v34 = 34;
      v35 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v23, v22);
      MEMORY[0x193ACE8E0](34, 0xE100000000000000);
      MEMORY[0x193ACE8E0](v34, v35);

      MEMORY[0x193ACE8E0](41, 0xE100000000000000);
      v29 = v36;
      v28 = v37;
      PrettyPrinter.indent()();
      if (v33)
      {
        v36 = 677736015;
        v37 = 0xE400000000000000;
        MEMORY[0x193ACE8E0](v29, v28);

        MEMORY[0x193ACE8E0](41, 0xE100000000000000);
        v30 = v36;
        v28 = v37;
      }

      else
      {
        v30 = v29;
      }

      v31 = v28;
      PrettyPrinter.output(_:)(*&v30);

      if (wrap)
      {
        PrettyPrinter.terminateLine()();
      }

      if (v14)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v25._countAndFlagsBits = 0x6574636172616843;
      v25._object = 0xEF287373616C4372;
      PrettyPrinter.print(_:)(v25);
      MEMORY[0x1EEE9AC00](v26);
      *&v32[-16] = &v38;
      *&v32[-8] = v21;
      PrettyPrinter.printIndented(_:)();

      PrettyPrinter.indent()();
      v27._countAndFlagsBits = 41;
      v27._object = 0xE100000000000000;
      PrettyPrinter.output(_:)(v27);
      if (wrap)
      {
        PrettyPrinter.terminateLine()();
      }

      if (v14)
      {
        goto LABEL_25;
      }
    }
  }
}

uint64_t DSLTree.Atom._patternBase(_:)(uint64_t a1)
{
  v65 = a1;
  v64 = type metadata accessor for AST.Quantification.Kind();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AST.MatchingOption.Kind();
  v58 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AST.MatchingOption();
  v4 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for AST.Atom.CharacterProperty();
  v57 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AST.Atom.Kind();
  v62 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(v66, v20, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        LOBYTE(v68) = *v20;
        return DSLTree.Atom.CharacterClass._patternBase.getter();
      }

      else if (EnumCaseMultiPayload == 3)
      {
        LOBYTE(v68) = *v20;
        return DSLTree.Atom.Assertion._patternBase.getter();
      }

      else
      {
        outlined destroy of MEProgram(v20, type metadata accessor for DSLTree.Atom);
        return 0xD00000000000001ALL;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      v25 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(92, 0xE100000000000000, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, *v20, *(v20 + 1));
      v27 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(34, 0xE100000000000000, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v25, v26);
      v29 = v28;

      v68 = 34;
      v69 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v27, v29);

      MEMORY[0x193ACE8E0](34, 0xE100000000000000);

      return v68;
    }

    LODWORD(v68) = *v20;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v30 = String.init<A>(_:radix:uppercase:)();
    v68 = 8090972;
    v69 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v30);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    v31 = v68;
    v32 = v69;
    v68 = 34;
    v69 = 0xE100000000000000;
    MEMORY[0x193ACE8E0](v31, v32);

    v33 = 34;
    v34 = 0xE100000000000000;
LABEL_48:
    MEMORY[0x193ACE8E0](v33, v34);
    return v68;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      return 2037276974;
    }

    if (EnumCaseMultiPayload == 9)
    {
      return 0x4E6E6F4E796E612ELL;
    }

    return 3092015;
  }

  if (EnumCaseMultiPayload == 5)
  {
    return 0xD00000000000001FLL;
  }

  if (EnumCaseMultiPayload != 6)
  {
    outlined init with take of DSLTree.QuantificationKind(v20, v17, type metadata accessor for DSLTree._AST.Atom);
    AST.Atom.kind.getter();
    v35 = v62;
    v36 = v62[11](v14, v12);
    if (v36 == *MEMORY[0x1E69E8D80])
    {
      v35[12](v14, v12);
      v37 = v57;
      v38 = v14;
      v39 = v60;
      (*(v57 + 32))(v11, v38, v60);
      v40 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
      (*(v37 + 8))(v11, v39);
      if (v40)
      {
        goto LABEL_47;
      }

LABEL_29:
      v43 = AST.Atom._dslBase.getter();
      outlined destroy of MEProgram(v17, type metadata accessor for DSLTree._AST.Atom);
      return v43;
    }

    if (v36 == *MEMORY[0x1E69E8D30] || v36 == *MEMORY[0x1E69E8D10] || v36 == *MEMORY[0x1E69E8D38])
    {
      v35[1](v14, v12);
    }

    else
    {
      v41 = *MEMORY[0x1E69E8D20];
      v42 = v36;
      v35[1](v14, v12);
      if (v42 != v41)
      {
        goto LABEL_29;
      }
    }

LABEL_47:
    v68 = 12067;
    v69 = 0xE200000000000000;
    v53 = AST.Atom._regexBase.getter();
    v55 = v54;
    outlined destroy of MEProgram(v17, type metadata accessor for DSLTree._AST.Atom);
    MEMORY[0x193ACE8E0](v53, v55);

    v33 = 9007;
    v34 = 0xE200000000000000;
    goto LABEL_48;
  }

  outlined init with take of DSLTree.QuantificationKind(v20, v9, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
  v22 = *(AST.MatchingOptionSequence.removing.getter() + 16);

  v56 = v22;
  if (v22)
  {
    v23 = AST.MatchingOptionSequence.removing.getter();
  }

  else
  {
    v23 = AST.MatchingOptionSequence.adding.getter();
  }

  v44._rawValue = v23;
  v45 = v61;

  result = outlined destroy of MEProgram(v9, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
  v66 = *(v44._rawValue + 2);
  if (v66)
  {
    v46 = 0;
    v62 = (v44._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v60 = v4 + 8;
    v61 = v4 + 16;
    v47 = v58 + 11;
    v48 = *MEMORY[0x1E69E8A28];
    v49 = MEMORY[0x1E69E8A88];
    if (!v56)
    {
      v49 = MEMORY[0x1E69E8A90];
    }

    LODWORD(v57) = *MEMORY[0x1E69E8A70];
    ++v58;
    v50 = (v59 + 104);
    LODWORD(v59) = *v49;
    do
    {
      if (v46 >= *(v44._rawValue + 2))
      {
        __break(1u);
        return result;
      }

      (*(v4 + 16))(v6, v62 + *(v4 + 72) * v46, v45);
      AST.MatchingOption.kind.getter();
      (*(v4 + 8))(v6, v45);
      result = (*v47)(v3, v67);
      if (result == v48)
      {
        (*v50)(v63, v59, v64);
        result = PrettyPrinter.quantificationBehavior.setter();
      }

      else if (result != v57)
      {
        result = (*v58)(v3, v67);
        goto LABEL_36;
      }

      if (*(v44._rawValue + 2) == 1)
      {
        swift_bridgeObjectRelease_n();
        return 0;
      }

LABEL_36:
      ++v46;
    }

    while (v66 != v46);
  }

  v51 = v56 == 0;

  v52._countAndFlagsBits = 0x7B207865676552;
  v52._object = 0xE700000000000000;
  PrettyPrinter.print(_:)(v52);
  PrettyPrinter.pushMatchingOptions(_:isAdded:)(v44, v51);

  return 0;
}

uint64_t DSLTree.CustomCharacterClass.isSimplePrint.getter()
{
  v33[0] = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v33[0]);
  v34 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v35 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v33 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v33 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = v33 - v12;
  v15 = *v0;
  v16 = *(*v0 + 16);
  if (v16 == 1)
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v15 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v33 - v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return (EnumCaseMultiPayload - 8) < 0xFFFFFFFD;
  }

  if (v16)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v33[1] = v2;
    v36 = v15;
    while (1)
    {
      if (v18 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v23 = v13;
      v24 = *(v13 + 72);
      outlined init with copy of DSLTree._AST.AbsentFunction(v15 + v22 + v24 * v18, v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      outlined init with copy of DSLTree._AST.AbsentFunction(v10, v7, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 == 4 || v25 == 3)
      {
        break;
      }

      if (v25)
      {
        v27 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
        v28 = v7;
        goto LABEL_17;
      }

      outlined init with take of DSLTree.QuantificationKind(v7, v34, type metadata accessor for DSLTree.Atom);
      v26 = swift_getEnumCaseMultiPayload();
      if (!v26)
      {
        v20 = type metadata accessor for DSLTree.Atom;
        v21 = v34;
        goto LABEL_6;
      }

      if (v26 != 1)
      {
        v27 = type metadata accessor for DSLTree.Atom;
        v28 = v34;
LABEL_17:
        outlined destroy of MEProgram(v28, v27);
        outlined init with take of DSLTree.QuantificationKind(v10, v35, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
          v19 = v37;
        }

        v31 = *(v19 + 16);
        v30 = *(v19 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v19 = v37;
        }

        *(v19 + 16) = v31 + 1;
        result = outlined init with take of DSLTree.QuantificationKind(v35, v19 + v22 + v31 * v24, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        goto LABEL_8;
      }

LABEL_7:
      result = outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
LABEL_8:
      ++v18;
      v13 = v23;
      v15 = v36;
      if (v16 == v18)
      {
        goto LABEL_24;
      }
    }

    v20 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
    v21 = v7;
LABEL_6:
    outlined destroy of MEProgram(v21, v20);
    goto LABEL_7;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v32 = *(v19 + 16);

  return v32 == 0;
}

uint64_t AST.Atom._regexBase.getter()
{
  v0 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.Atom.CharacterProperty();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom.Kind();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Atom.kind.getter();
  LODWORD(result) = (*(v9 + 88))(v11, v8);
  if (result == *MEMORY[0x1E69E8D58] || result == *MEMORY[0x1E69E8D60] || result == *MEMORY[0x1E69E8D28])
  {
    v15 = *(v9 + 8);
    v9 += 8;
    v15(v11, v8);
    result = AST.Atom.literalStringValue.getter();
    if (v16)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E8D80])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v17 = AST.Atom.CharacterProperty._regexBase.getter();
    if (v18)
    {
      v19 = v17;
      (*(v5 + 8))(v7, v4);
      return v19;
    }

    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    MEMORY[0x193ACE8E0](0xD000000000000013, 0x800000018E5F3180);
    _print_unlocked<A, B>(_:_:)();
    (*(v5 + 8))(v7, v4);
    return v24;
  }

  if (result == *MEMORY[0x1E69E8D70])
  {
    (*(v9 + 96))(v11, v8);
    (*(v1 + 32))(v3, v11, v0);
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x193ACE8E0](92, 0xE100000000000000);
    AST.Atom.EscapedBuiltin.character.getter();
    (*(v1 + 8))(v3, v0);
    Character.write<A>(to:)();
LABEL_24:

    return v24;
  }

  if (result == *MEMORY[0x1E69E8D30])
  {
    (*(v9 + 96))(v11, v8);
    v24 = 0;
    v25 = 0xE000000000000000;
    v20 = 25436;
    v21 = 0xE200000000000000;
LABEL_23:
    MEMORY[0x193ACE8E0](v20, v21);
    Character.write<A>(to:)();
    goto LABEL_24;
  }

  if (result == *MEMORY[0x1E69E8D10])
  {
    (*(v9 + 96))(v11, v8);
    v24 = 0;
    v25 = 0xE000000000000000;
    v20 = 2968924;
    v21 = 0xE300000000000000;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8D38])
  {
    (*(v9 + 96))(v11, v8);
    v24 = 0;
    v25 = 0xE000000000000000;
    v20 = 0x2D435C2D4D5CLL;
    v21 = 0xE600000000000000;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8D20])
  {
    (*(v9 + 96))(v11, v8);
    v22 = *v11;
    v23 = v11[1];
    v24 = 8080988;
    v25 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v22, v23);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    return v24;
  }

  if (result == *MEMORY[0x1E69E8D18])
  {
    (*(v9 + 8))(v11, v8);
    return 0xD00000000000001BLL;
  }

  else if (result == *MEMORY[0x1E69E8CF8])
  {
    (*(v9 + 8))(v11, v8);
    return 0xD000000000000017;
  }

  else if (result == *MEMORY[0x1E69E8D68])
  {
    (*(v9 + 8))(v11, v8);
    return 0xD000000000000014;
  }

  else if (result == *MEMORY[0x1E69E8D40] || result == *MEMORY[0x1E69E8D48])
  {
    (*(v9 + 8))(v11, v8);
    return 0xD000000000000023;
  }

  else if (result == *MEMORY[0x1E69E8D50])
  {
    return 46;
  }

  else if (result == *MEMORY[0x1E69E8D00] || result == *MEMORY[0x1E69E8D08] || result != *MEMORY[0x1E69E8D78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    return 0x2365756C6176233CLL;
  }

  return result;
}

Swift::Void __swiftcall PrettyPrinter.printAsRegex(_:asFullRegex:terminateLine:)(_StringProcessing::DSLTree::CustomCharacterClass _, Swift::Bool asFullRegex, Swift::Bool terminateLine)
{
  isInverted = _.isInverted;
  rawValue = _.members._rawValue;
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *rawValue;
  v11 = rawValue[8];
  PrettyPrinter.indent()();
  if (isInverted)
  {
    v12._countAndFlagsBits = 12067;
    v12._object = 0xE200000000000000;
    PrettyPrinter.output(_:)(v12);
  }

  v13._countAndFlagsBits = 91;
  v13._object = 0xE100000000000000;
  PrettyPrinter.output(_:)(v13);
  if (v11)
  {
    v14._countAndFlagsBits = 94;
    v14._object = 0xE100000000000000;
    PrettyPrinter.output(_:)(v14);
  }

  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    do
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v16, v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      PrettyPrinter.printAsRegex(_:)(v9);
      outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  v18._countAndFlagsBits = 93;
  v18._object = 0xE100000000000000;
  PrettyPrinter.output(_:)(v18);
  if (isInverted)
  {
    v19 = 9007;
    v20 = 0xE200000000000000;
    if (asFullRegex)
    {
      PrettyPrinter.print(_:)(*&v19);
    }

    else
    {
      PrettyPrinter.output(_:)(*&v19);
    }
  }
}

void PrettyPrinter.printAsPattern(_:wrap:)(uint64_t a1, int a2)
{
  v3 = v2;
  v89 = a2;
  v5 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree.Atom(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v88 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v88 - v18;
  v20 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v22, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v32 = v89;
      if (EnumCaseMultiPayload == 6)
      {
        v33 = *(*v22 + 16);
        v34 = *(*v22 + 24);
        v35 = *(*v22 + 32);
        v36 = *(*v22 + 40);
        if (v89)
        {
          v93._countAndFlagsBits = *(*v22 + 16);
          LOBYTE(v93._object) = v34;
          if (DSLTree.CustomCharacterClass.isSimplePrint.getter())
          {
            PrettyPrinter.indent()();
            v37._countAndFlagsBits = 677736015;
            v37._object = 0xE400000000000000;
            PrettyPrinter.output(_:)(v37);
          }
        }
      }

      else
      {
        v33 = *(*v22 + 16);
        v34 = *(*v22 + 24);
        v35 = *(*v22 + 32);
        v36 = *(*v22 + 40);
        if (v89)
        {
          v93._countAndFlagsBits = *(*v22 + 16);
          LOBYTE(v93._object) = v34;
          if (DSLTree.CustomCharacterClass.isSimplePrint.getter())
          {
            PrettyPrinter.indent()();
            v67._countAndFlagsBits = 677736015;
            v67._object = 0xE400000000000000;
            PrettyPrinter.output(_:)(v67);
          }
        }
      }

      v93._countAndFlagsBits = v33;
      LOBYTE(v93._object) = v34;
      v96.members._rawValue = &v93;
      v96.isInverted = 0;
      PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v96, 1, v24);
      MEMORY[0x1EEE9AC00](v68);
      *(&v88 - 2) = v35;
      *(&v88 - 8) = v36;
      PrettyPrinter.printIndented(_:)();
      if ((v32 & 1) == 0)
      {
        goto LABEL_38;
      }

      v93._countAndFlagsBits = v33;
      LOBYTE(v93._object) = v34;
      if ((DSLTree.CustomCharacterClass.isSimplePrint.getter() & 1) == 0)
      {
        goto LABEL_38;
      }

      v56 = 41;
      v57 = 0xE100000000000000;
    }

    else
    {
      v30 = v89;
      if (EnumCaseMultiPayload == 4)
      {
        outlined destroy of MEProgram(v22, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        return;
      }

      v50 = *(*v22 + 16);
      v51 = *(*v22 + 24);
      v52 = *(*v22 + 32);
      v53 = *(*v22 + 40);
      if (v89)
      {
        v93._countAndFlagsBits = *(*v22 + 16);
        LOBYTE(v93._object) = v51;
        if (DSLTree.CustomCharacterClass.isSimplePrint.getter())
        {
          PrettyPrinter.indent()();
          v54._countAndFlagsBits = 677736015;
          v54._object = 0xE400000000000000;
          PrettyPrinter.output(_:)(v54);
        }
      }

      v93._countAndFlagsBits = v50;
      LOBYTE(v93._object) = v51;
      v95.members._rawValue = &v93;
      v95.isInverted = 0;
      PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v95, 1, v24);
      MEMORY[0x1EEE9AC00](v55);
      *(&v88 - 2) = v52;
      *(&v88 - 8) = v53;
      PrettyPrinter.printIndented(_:)();
      if ((v30 & 1) == 0)
      {
        goto LABEL_38;
      }

      v93._countAndFlagsBits = v50;
      LOBYTE(v93._object) = v51;
      if ((DSLTree.CustomCharacterClass.isSimplePrint.getter() & 1) == 0)
      {
        goto LABEL_38;
      }

      v56 = 41;
      v57 = 0xE100000000000000;
    }

    PrettyPrinter.output(_:)(*&v56);
LABEL_38:

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
      outlined init with take of DSLTree.QuantificationKind(v22, v19, type metadata accessor for DSLTree.Atom);
      outlined init with take of DSLTree.QuantificationKind(v22 + v38, v17, type metadata accessor for DSLTree.Atom);
      v39 = DSLTree.Atom._patternBase(_:)(v3);
      v41 = v40;
      outlined destroy of MEProgram(v19, type metadata accessor for DSLTree.Atom);
      if (!v41)
      {
        outlined destroy of MEProgram(v17, type metadata accessor for DSLTree.Atom);
        return;
      }

      v42 = DSLTree.Atom._patternBase(_:)(v3);
      v44 = v43;
      outlined destroy of MEProgram(v17, type metadata accessor for DSLTree.Atom);
      if (v44)
      {
        PrettyPrinter.indent()();
        v45._countAndFlagsBits = 40;
        v45._object = 0xE100000000000000;
        PrettyPrinter.output(_:)(v45);
        v46._countAndFlagsBits = v39;
        v46._object = v41;
        PrettyPrinter.output(_:)(v46);

        v47._countAndFlagsBits = 3026478;
        v47._object = 0xE300000000000000;
        PrettyPrinter.output(_:)(v47);
        v48._countAndFlagsBits = v42;
        v48._object = v44;
        PrettyPrinter.output(_:)(v48);

        v49._countAndFlagsBits = 41;
        v49._object = 0xE100000000000000;
        PrettyPrinter.output(_:)(v49);
        return;
      }

      goto LABEL_54;
    }

    outlined init with take of DSLTree.QuantificationKind(v22, v14, type metadata accessor for DSLTree.Atom);
    PrettyPrinter.indent()();
    outlined init with copy of DSLTree._AST.AbsentFunction(v14, v11, type metadata accessor for DSLTree.Atom);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.Atom);
        v83 = *v11;
        if ((v89 & 1) == 0)
        {
          LOBYTE(v93._countAndFlagsBits) = *v11;
          countAndFlagsBits = DSLTree.Atom.CharacterClass._patternBase.getter();
          goto LABEL_53;
        }

        v93._countAndFlagsBits = 677736015;
        v93._object = 0xE400000000000000;
        LOBYTE(v91) = v83;
        v79 = DSLTree.Atom.CharacterClass._patternBase.getter();
        goto LABEL_50;
      }

      if (v25 == 7)
      {
        outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.Atom);
        outlined init with take of DSLTree.QuantificationKind(v11, v7, type metadata accessor for DSLTree._AST.Atom);
        v69 = AST.Atom._patternBase.getter();
        v71 = v70;
        v73 = v72;
        outlined destroy of MEProgram(v7, type metadata accessor for DSLTree._AST.Atom);
        if ((v73 & 1) == 0 || (v89 & 1) == 0)
        {
          v84._countAndFlagsBits = v69;
          v84._object = v71;
          PrettyPrinter.output(_:)(v84);
          goto LABEL_54;
        }

        v93._countAndFlagsBits = 677736015;
        v93._object = 0xE400000000000000;
        MEMORY[0x193ACE8E0](v69, v71);
        goto LABEL_51;
      }

      goto LABEL_46;
    }

    if (v25)
    {
      if (v25 == 1)
      {
        outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.Atom);
        v26 = *v11;
        if (v89)
        {
          v93._countAndFlagsBits = 0x796E612E28656E4FLL;
          v93._object = 0xEB0000000028664FLL;
          v91 = 8090972;
          v92 = 0xE300000000000000;
          v90 = v26;
          lazy protocol witness table accessor for type UInt32 and conformance UInt32();
          v27 = String.init<A>(_:radix:uppercase:)();
          MEMORY[0x193ACE8E0](v27);

          MEMORY[0x193ACE8E0](125, 0xE100000000000000);
          v28 = v91;
          v29 = v92;
          v91 = 34;
          v92 = 0xE100000000000000;
          MEMORY[0x193ACE8E0](v28, v29);

          MEMORY[0x193ACE8E0](34, 0xE100000000000000);
LABEL_30:
          MEMORY[0x193ACE8E0](v91, v92);

          v65 = 10537;
          v66 = 0xE200000000000000;
LABEL_52:
          MEMORY[0x193ACE8E0](v65, v66);
          countAndFlagsBits = v93._countAndFlagsBits;
          object = v93._object;
LABEL_53:
          PrettyPrinter.output(_:)(*&countAndFlagsBits);
          goto LABEL_54;
        }

        v93._countAndFlagsBits = 0;
        v93._object = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v93._countAndFlagsBits = 0xD000000000000015;
        v93._object = 0x800000018E5F35A0;
        v91 = 8090972;
        v92 = 0xE300000000000000;
        v90 = v26;
        lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v85 = String.init<A>(_:radix:uppercase:)();
        MEMORY[0x193ACE8E0](v85);

        MEMORY[0x193ACE8E0](125, 0xE100000000000000);
        v86 = v91;
        v87 = v92;
        v91 = 34;
        v92 = 0xE100000000000000;
        MEMORY[0x193ACE8E0](v86, v87);

        MEMORY[0x193ACE8E0](34, 0xE100000000000000);
        goto LABEL_49;
      }

LABEL_46:
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      _StringGuts.grow(_:)(17);
      MEMORY[0x193ACE8E0](0x4F444F54202F2F20, 0xEF206D6F7441203ALL);
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.Atom);
      PrettyPrinter.print(_:)(v93);

      outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
      return;
    }

    outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.Atom);
    v59 = *v11;
    v58 = *(v11 + 1);
    if ((v89 & 1) == 0)
    {
LABEL_48:
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v93._countAndFlagsBits = 0xD000000000000015;
      v93._object = 0x800000018E5F35A0;
      v74 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(92, 0xE100000000000000, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v59, v58);
      v76 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(34, 0xE100000000000000, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v74, v75);
      v78 = v77;

      v91 = 34;
      v92 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v76, v78);

      MEMORY[0x193ACE8E0](34, 0xE100000000000000);

LABEL_49:
      v79 = v91;
      v80 = v92;
LABEL_50:
      MEMORY[0x193ACE8E0](v79, v80);
LABEL_51:

      v65 = 41;
      v66 = 0xE100000000000000;
      goto LABEL_52;
    }

LABEL_29:
    v93._countAndFlagsBits = 0x796E612E28656E4FLL;
    v93._object = 0xEB0000000028664FLL;
    v60 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(92, 0xE100000000000000, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v59, v58);
    v62 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(34, 0xE100000000000000, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v60, v61);
    v64 = v63;

    v91 = 34;
    v92 = 0xE100000000000000;
    MEMORY[0x193ACE8E0](v62, v64);

    MEMORY[0x193ACE8E0](34, 0xE100000000000000);

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v59 = *v22;
    v58 = v22[1];
    if ((v89 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  v31 = *(v22 + 8);
  v93._countAndFlagsBits = *v22;
  LOBYTE(v93._object) = v31;
  v94.members._rawValue = &v93;
  v94.isInverted = 1;
  PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v94, 0, v24);
LABEL_54:
}

void closure #2 in PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = (&v39 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v39 - v13);
  PrettyPrinter.indent()();
  v16 = *a2;
  v15 = a2[1];
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v47._countAndFlagsBits = 0x28664F796E612ELL;
    v47._object = 0xE700000000000000;
    v45 = 34;
    v46 = 0xE100000000000000;

    MEMORY[0x193ACE8E0](v16, v15);
    MEMORY[0x193ACE8E0](34, 0xE100000000000000);

    MEMORY[0x193ACE8E0](v45, v46);

    MEMORY[0x193ACE8E0](41, 0xE100000000000000);
    PrettyPrinter.output(_:)(v47);

    if (*(a3 + 16))
    {
      v18._countAndFlagsBits = 44;
      v18._object = 0xE100000000000000;
      PrettyPrinter.output(_:)(v18);
    }

    PrettyPrinter.terminateLine()();
  }

  v19 = 0;
  v20 = v8;
  v21 = (v8 + 56);
  v42 = a3;
  v22 = *(a3 + 16);
  v23 = (v20 + 48);
  v24 = v22 - 1;
  v39 = v22 - 1;
  v25 = v43;
  while (1)
  {
    if (v19 == v22)
    {
      v26 = 1;
      v27 = v22;
      goto LABEL_14;
    }

    if (v19 >= v22)
    {
      break;
    }

    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_19;
    }

    v28 = v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v19;
    v29 = *(v7 + 48);
    v30 = v14;
    v31 = v23;
    v32 = v21;
    v33 = v7;
    v34 = v40;
    *v40 = v19;
    outlined init with copy of DSLTree._AST.AbsentFunction(v28, v34 + v29, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v35 = v34;
    v7 = v33;
    v21 = v32;
    v23 = v31;
    v14 = v30;
    v24 = v39;
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v35, v44, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMR);
    v26 = 0;
LABEL_14:
    v36 = v44;
    (*v21)(v44, v26, 1, v7);
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v36, v14, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMR);
    if ((*v23)(v14, 1, v7) == 1)
    {
      return;
    }

    v37 = *v14;
    outlined init with take of DSLTree.QuantificationKind(v14 + *(v7 + 48), v25, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    PrettyPrinter.printAsPattern(_:wrap:)(v25, 0);
    outlined destroy of MEProgram(v25, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    if (v37 != v24)
    {
      v38._countAndFlagsBits = 44;
      v38._object = 0xE100000000000000;
      PrettyPrinter.output(_:)(v38);
    }

    PrettyPrinter.terminateLine()();
    v19 = v27;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t DSLTree.Atom.CharacterClass._patternBase.getter()
{
  result = 0x74696769642ELL;
  switch(*v0)
  {
    case 1:
      result = 0x692E74696769642ELL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x707365746968772ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 0xA:
      result = 0x64726F772ELL;
      break;
    case 0xB:
      result = 0x6E692E64726F772ELL;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18E5B5E94);
    default:
      return result;
  }

  return result;
}

uint64_t PrettyPrinter.printAsRegex(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DSLTree.Atom(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v49._countAndFlagsBits - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v49 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v49._countAndFlagsBits - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v19, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v27 = *(*v19 + 24);
      v28 = *(*v19 + 32);
      v29 = *(*v19 + 40);
      v49._countAndFlagsBits = *(*v19 + 16);
      LOBYTE(v49._object) = v27;
      if (EnumCaseMultiPayload == 6)
      {
        v51.members._rawValue = &v49;
        v51.isInverted = 0;
        PrettyPrinter.printAsRegex(_:asFullRegex:terminateLine:)(v51, 0, v21);
        v30 = 11565;
      }

      else
      {
        v53.members._rawValue = &v49;
        v53.isInverted = 0;
        PrettyPrinter.printAsRegex(_:asFullRegex:terminateLine:)(v53, 0, v21);
        v30 = 32382;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        return outlined destroy of MEProgram(v19, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v42 = *(*v19 + 24);
      v28 = *(*v19 + 32);
      v29 = *(*v19 + 40);
      v49._countAndFlagsBits = *(*v19 + 16);
      LOBYTE(v49._object) = v42;
      v52.members._rawValue = &v49;
      v52.isInverted = 0;
      PrettyPrinter.printAsRegex(_:asFullRegex:terminateLine:)(v52, 0, v21);
      v30 = 9766;
    }

    v45 = 0xE200000000000000;
    PrettyPrinter.output(_:)(*&v30);
    v49._countAndFlagsBits = v28;
    LOBYTE(v49._object) = v29;
    v54.members._rawValue = &v49;
    v54.isInverted = 0;
    PrettyPrinter.printAsRegex(_:asFullRegex:terminateLine:)(v54, 0, v46);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *(v19 + 8);
      v49._countAndFlagsBits = *v19;
      LOBYTE(v49._object) = v26;
      v50.members._rawValue = &v49;
      v50.isInverted = 1;
      PrettyPrinter.printAsRegex(_:asFullRegex:terminateLine:)(v50, 0, v21);
    }

    v43 = *v19;
    v44 = v19[1];
    v49._countAndFlagsBits = 20828;
    v49._object = 0xE200000000000000;
    MEMORY[0x193ACE8E0](v43, v44);

    MEMORY[0x193ACE8E0](17756, 0xE200000000000000);
    countAndFlagsBits = v49._countAndFlagsBits;
    object = v49._object;
LABEL_17:
    PrettyPrinter.output(_:)(*&countAndFlagsBits);
  }

  if (EnumCaseMultiPayload)
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    outlined init with take of DSLTree.QuantificationKind(v19, v16, type metadata accessor for DSLTree.Atom);
    outlined init with take of DSLTree.QuantificationKind(v19 + v31, v14, type metadata accessor for DSLTree.Atom);
    v32 = DSLTree.Atom._regexBase.getter();
    v34 = v33;
    outlined destroy of MEProgram(v16, type metadata accessor for DSLTree.Atom);
    v35._countAndFlagsBits = v32;
    v35._object = v34;
    PrettyPrinter.output(_:)(v35);

    v36._countAndFlagsBits = 45;
    v36._object = 0xE100000000000000;
    PrettyPrinter.output(_:)(v36);
    v37 = DSLTree.Atom._regexBase.getter();
    v39 = v38;
    v40 = v14;
    v41 = type metadata accessor for DSLTree.Atom;
LABEL_21:
    outlined destroy of MEProgram(v40, v41);
    v48._countAndFlagsBits = v37;
    v48._object = v39;
    PrettyPrinter.output(_:)(v48);
  }

  outlined init with take of DSLTree.QuantificationKind(v19, v11, type metadata accessor for DSLTree.Atom);
  outlined init with copy of DSLTree._AST.AbsentFunction(v11, v8, type metadata accessor for DSLTree.Atom);
  v22 = swift_getEnumCaseMultiPayload();
  if (v22 == 7)
  {
    outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
    outlined init with take of DSLTree.QuantificationKind(v8, v4, type metadata accessor for DSLTree._AST.Atom);
    v37 = AST.Atom._regexBase.getter();
    v39 = v47;
    v41 = type metadata accessor for DSLTree._AST.Atom;
    v40 = v4;
    goto LABEL_21;
  }

  if (!v22)
  {
    outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
    countAndFlagsBits = *v8;
    object = v8[1];
    goto LABEL_17;
  }

  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  MEMORY[0x193ACE8E0](0x4F444F54202F2F20, 0xEF206D6F7441203ALL);
  _print_unlocked<A, B>(_:_:)();
  outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
  PrettyPrinter.print(_:)(v49);

  return outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
}

uint64_t DSLTree.Atom._regexBase.getter()
{
  v39 = type metadata accessor for AST.MatchingOption.Kind();
  v1 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.MatchingOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(v0, v16, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        return *v16;
      }

      LODWORD(v40) = *v16;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v31 = String.init<A>(_:radix:uppercase:)();
      v40 = 8090972;
      v41 = 0xE300000000000000;
      MEMORY[0x193ACE8E0](v31);

      MEMORY[0x193ACE8E0](125, 0xE100000000000000);
      v32 = v40;
      v33 = v41;
      v40 = 34;
      v41 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v32, v33);

      MEMORY[0x193ACE8E0](34, 0xE100000000000000);
      return v40;
    }

    if (EnumCaseMultiPayload == 2)
    {
      return 0xD00000000000001DLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000016;
    }

    else
    {
      outlined destroy of MEProgram(v16, type metadata accessor for DSLTree.Atom);
      return 0xD00000000000001ALL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 0xD00000000000001FLL;
      }

      if (EnumCaseMultiPayload != 6)
      {
        outlined init with take of DSLTree.QuantificationKind(v16, v13, type metadata accessor for DSLTree._AST.Atom);
        v34 = AST.Atom._regexBase.getter();
        outlined destroy of MEProgram(v13, type metadata accessor for DSLTree._AST.Atom);
        return v34;
      }

      outlined init with take of DSLTree.QuantificationKind(v16, v10, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
      v40 = 0;
      v41 = 0xE000000000000000;
      v18 = AST.MatchingOptionSequence.adding.getter();
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
      v19 = *(v18 + 16);
      if (!v19)
      {

        return 0;
      }

      v21 = *(v5 + 16);
      v20 = v5 + 16;
      v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
      v35[1] = v18;
      v23 = v18 + v22;
      v36 = *(v20 + 56);
      v37 = v21;
      v38 = v20;
      v24 = v1;
      v25 = (v20 - 8);
      v26 = (v24 + 88);
      v27 = *MEMORY[0x1E69E8A28];
      v28 = (v24 + 8);
      v21(v7, v18 + v22, v4);
      while (1)
      {
        AST.MatchingOption.kind.getter();
        (*v25)(v7, v4);
        v29 = v39;
        if ((*v26)(v3, v39) == v27)
        {
          MEMORY[0x193ACE8E0](693452584, 0xE400000000000000);
        }

        else
        {
          (*v28)(v3, v29);
        }

        v23 += v36;
        if (!--v19)
        {
          break;
        }

        v37(v7, v23, v4);
      }

      return v40;
    }

    if (EnumCaseMultiPayload == 8)
    {
      return 0x292E3A733F28;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      return 0x292E3A732D3F28;
    }

    else
    {
      return 46;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StringLiteralBuilder()
{
  MEMORY[0x193ACE8E0](*v0, v0[1]);
  MEMORY[0x193ACE8E0](34, 0xE100000000000000);
  return 34;
}

unint64_t DSLTree.Atom.Assertion._patternBase.getter()
{
  result = 3104303;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      return result;
    case 0xA:
      result = 3089455;
      break;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t AST.Atom.CharacterProperty.isUnprintableProperty.getter()
{
  v0 = type metadata accessor for Unicode.POSIXProperty();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Unicode.BinaryProperty();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AST.Atom.CharacterProperty.kind.getter();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x1E69E8C88])
  {
    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    if ((*(v3 + 88))(v5, v2) != *MEMORY[0x1E69E9140])
    {
      (*(v3 + 8))(v5, v2);
      return 1;
    }

    return 0;
  }

  if (v14 == *MEMORY[0x1E69E8CD0])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    if ((*(v7 + 88))(v9, v6) != *MEMORY[0x1E69E8F00])
    {
      (*(v7 + 8))(v9, v6);
      return 1;
    }

    return 0;
  }

  if (v14 == *MEMORY[0x1E69E8CD8] || v14 == *MEMORY[0x1E69E8C90])
  {
    (*(v11 + 8))(v13, v10);
    return 1;
  }

  if (v14 != *MEMORY[0x1E69E8CC8])
  {
    if (v14 == *MEMORY[0x1E69E8CB0])
    {
      return 1;
    }

    (*(v11 + 8))(v13, v10);
    return 0;
  }

  (*(v11 + 96))(v13, v10);
  v18 = v22;
  v17 = v23;
  v19 = v24;
  (*(v23 + 32))(v22, v13, v24);
  v20 = (*(v17 + 88))(v18, v19);
  result = 0;
  if (v20 != *MEMORY[0x1E69E8EA8] && v20 != *MEMORY[0x1E69E8ED0])
  {
    (*(v17 + 8))(v18, v19);
    return 1;
  }

  return result;
}

uint64_t AST.Atom.CharacterProperty._dslBase.getter()
{
  v0 = type metadata accessor for Unicode.POSIXProperty();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v21 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Unicode.BinaryProperty();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AST.Atom.CharacterProperty.kind.getter();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x1E69E8C88])
  {
    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E9140])
    {
      return 0x74696769642ELL;
    }

    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == *MEMORY[0x1E69E8CD0])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E8F00])
    {
      return 0x707365746968772ELL;
    }

    (*(v7 + 8))(v9, v6);
  }

  else if (v14 == *MEMORY[0x1E69E8CC8])
  {
    (*(v11 + 96))(v13, v10);
    v17 = v21;
    v16 = v22;
    v18 = v23;
    (*(v22 + 32))(v21, v13, v23);
    v19 = (*(v16 + 88))(v17, v18);
    if (v19 == *MEMORY[0x1E69E8EA8])
    {
      return 0x64726F772ELL;
    }

    if (v19 == *MEMORY[0x1E69E8ED0])
    {
      return 0x696769447865682ELL;
    }

    (*(v16 + 8))(v17, v18);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

  return 0;
}

uint64_t AST.Atom._dslBase.getter()
{
  v0 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v1 = *(v0 - 8);
  v50 = v0;
  v51 = v1;
  v2 = MEMORY[0x1EEE9AC00](v0);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v47 - v4;
  v5 = type metadata accessor for AST.Atom.CharacterProperty();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom.ScalarSequence();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST.Atom.Scalar();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AST.Atom.Kind();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AST.Atom.kind.getter();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x1E69E8D58])
  {
    (*(v16 + 96))(v18, v15);
    return *v18;
  }

  if (v19 == *MEMORY[0x1E69E8D60])
  {
    (*(v16 + 96))(v18, v15);
    (*(v12 + 32))(v14, v18, v11);
    v21 = AST.Atom.Scalar.value.getter();
    (*(v12 + 8))(v14, v11);
    v57 = 8090972;
    v58 = 0xE300000000000000;
    LODWORD(v56) = v21;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v22 = String.init<A>(_:radix:uppercase:)();
    MEMORY[0x193ACE8E0](v22);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    return v57;
  }

  if (v19 == *MEMORY[0x1E69E8D28])
  {
    (*(v16 + 96))(v18, v15);
    v23 = v54;
    (*(v54 + 32))(v10, v18, v8);
    v24 = AST.Atom.ScalarSequence.scalarValues.getter();
    (*(v23 + 8))(v10, v8);
    v25 = *(v24 + 16);
    if (v25)
    {
      v56 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v26 = v56;
      v27 = 32;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      do
      {
        v28 = *(v24 + v27);
        v57 = 8090972;
        v58 = 0xE300000000000000;
        v55 = v28;
        v29 = String.init<A>(_:radix:uppercase:)();
        MEMORY[0x193ACE8E0](v29);

        MEMORY[0x193ACE8E0](125, 0xE100000000000000);
        v30 = v57;
        v31 = v58;
        v56 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v26 = v56;
        }

        *(v26 + 16) = v33 + 1;
        v34 = v26 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v27 += 4;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    v57 = v26;
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &unk_1F0192090, &cache variable for noncanonical specialized generic type metadata for [String], MEMORY[0x1E69E6310]);
    v43 = BidirectionalCollection<>.joined(separator:)();

    return v43;
  }

  if (v19 == *MEMORY[0x1E69E8D80])
  {
    (*(v16 + 96))(v18, v15);
    v36 = v52;
    v35 = v53;
    (*(v52 + 32))(v7, v18, v53);
    v37 = AST.Atom.CharacterProperty._dslBase.getter();
    (*(v36 + 8))(v7, v35);
    return v37;
  }

  if (v19 == *MEMORY[0x1E69E8D70])
  {
    (*(v16 + 96))(v18, v15);
    v39 = v50;
    v38 = v51;
    v40 = v49;
    (*(v51 + 32))(v49, v18, v50);
    v41 = v48;
    (*(v38 + 16))(v48, v40, v39);
    v42 = (*(v38 + 88))(v41, v39);
    if (v42 == *MEMORY[0x1E69E8B80])
    {
      (*(v38 + 8))(v40, v39);
      return 0x74696769642ELL;
    }

    if (v42 == *MEMORY[0x1E69E8BE0])
    {
      (*(v38 + 8))(v40, v39);
      return 0x692E74696769642ELL;
    }

    if (v42 == *MEMORY[0x1E69E8C00])
    {
      (*(v38 + 8))(v40, v39);
      return 0xD000000000000015;
    }

    if (v42 == *MEMORY[0x1E69E8C08])
    {
      (*(v38 + 8))(v40, v39);
      return 0xD00000000000001ELL;
    }

    if (v42 == *MEMORY[0x1E69E8B58])
    {
      (*(v38 + 8))(v40, v39);
      return 0xD000000000000019;
    }

    if (v42 == *MEMORY[0x1E69E8BD8])
    {
      (*(v38 + 8))(v40, v39);
      return 0xD000000000000010;
    }

    if (v42 == *MEMORY[0x1E69E8B60])
    {
      (*(v38 + 8))(v40, v39);
      return 0x707365746968772ELL;
    }

    if (v42 == *MEMORY[0x1E69E8B98])
    {
      (*(v38 + 8))(v40, v39);
      return 0xD000000000000014;
    }

    if (v42 == *MEMORY[0x1E69E8B78])
    {
      (*(v38 + 8))(v40, v39);
      return 0xD000000000000013;
    }

    if (v42 == *MEMORY[0x1E69E8BB8])
    {
      (*(v51 + 8))(v49, v50);
      return 0xD00000000000001CLL;
    }

    if (v42 == *MEMORY[0x1E69E8BA0])
    {
      (*(v51 + 8))(v49, v50);
      return 0x64726F772ELL;
    }

    if (v42 == *MEMORY[0x1E69E8BF0])
    {
      (*(v51 + 8))(v49, v50);
      return 0x6E692E64726F772ELL;
    }

    if (v42 == *MEMORY[0x1E69E8BD0] || v42 == *MEMORY[0x1E69E8B90])
    {
      goto LABEL_64;
    }

    if (v42 == *MEMORY[0x1E69E8BE8])
    {
      (*(v51 + 8))(v49, v50);
      return 0xD00000000000001CLL;
    }

    if (v42 == *MEMORY[0x1E69E8BC8])
    {
      (*(v51 + 8))(v49, v50);
      return 0xD000000000000015;
    }

    if (v42 == *MEMORY[0x1E69E8C10])
    {
      (*(v51 + 8))(v49, v50);
      return 0xD000000000000020;
    }

    if (v42 == *MEMORY[0x1E69E8B88])
    {
LABEL_64:
      (*(v51 + 8))(v49, v50);
      return 0xD000000000000013;
    }

    if (v42 == *MEMORY[0x1E69E8C18])
    {
      (*(v51 + 8))(v49, v50);
      return 0xD000000000000025;
    }

    if (v42 == *MEMORY[0x1E69E8B68])
    {
      (*(v51 + 8))(v49, v50);
      return 0xD00000000000001ALL;
    }

    if (v42 != *MEMORY[0x1E69E8BB0])
    {
      v57 = 0;
      v58 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      MEMORY[0x193ACE8E0](0x7365203A4F444F54, 0xEE00206465706163);
      v44 = v49;
      v45 = v50;
      _print_unlocked<A, B>(_:_:)();
      v46 = *(v51 + 8);
      v46(v44, v45);
      v43 = v57;
      v46(v48, v45);
      return v43;
    }

    (*(v51 + 8))(v49, v50);
    return 0xD000000000000023;
  }

  if (v19 == *MEMORY[0x1E69E8D20])
  {
    (*(v16 + 8))(v18, v15);
    return 0xD00000000000001CLL;
  }

  if (v19 == *MEMORY[0x1E69E8D18])
  {
    (*(v16 + 8))(v18, v15);
    return 0xD00000000000001BLL;
  }

  if (v19 == *MEMORY[0x1E69E8CF8])
  {
    (*(v16 + 8))(v18, v15);
    return 0xD000000000000017;
  }

  if (v19 == *MEMORY[0x1E69E8D68])
  {
    (*(v16 + 8))(v18, v15);
    return 0xD000000000000014;
  }

  if (v19 == *MEMORY[0x1E69E8D40] || v19 == *MEMORY[0x1E69E8D48])
  {
    (*(v16 + 8))(v18, v15);
    return 0xD000000000000023;
  }

  if (v19 == *MEMORY[0x1E69E8D50])
  {
    return 3092015;
  }

  if (v19 == *MEMORY[0x1E69E8D00] || v19 == *MEMORY[0x1E69E8D08])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  return result;
}

uint64_t DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter()
{
  v0 = type metadata accessor for AST.Atom.CharacterProperty();
  v117 = *(v0 - 8);
  v118 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v116 = &v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for AST.Atom.Kind();
  v123 = *(v2 - 8);
  v124 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v114 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v112 - v5;
  v6 = type metadata accessor for DSLTree._AST.Atom(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v115 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v113 = &v112 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v112 - v11;
  v128 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v12 = *(v128 - 8);
  v13 = MEMORY[0x1EEE9AC00](v128);
  v122 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v112 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v126 = (&v112 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v121 = &v112 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v112 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v125 = (&v112 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v112 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v112 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v112 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v127 = &v112 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v112 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v112 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v112 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v112 - v47;
  outlined init with copy of DSLTree._AST.AbsentFunction(v129, &v112 - v47, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  v129 = v48;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = 0;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      result = outlined init with copy of DSLTree._AST.AbsentFunction(v129, v35, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v72 = 0;
      v73 = *(*v35 + 16);
      v74 = *(*v35 + 32);
      v75 = *(v73 + 16);
      while (v75 != v72)
      {
        if (v72 >= *(v73 + 16))
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          return result;
        }

        outlined init with copy of DSLTree._AST.AbsentFunction(v73 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v72++, v32, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v76 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
        result = outlined destroy of MEProgram(v32, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v76)
        {

          v50 = 1;
          v51 = v129;
          goto LABEL_64;
        }
      }

      v96 = 0;
      v97 = *(v74 + 16);
      v51 = v129;
      while (v97 != v96)
      {
        if (v96 >= *(v74 + 16))
        {
          goto LABEL_78;
        }

        outlined init with copy of DSLTree._AST.AbsentFunction(v74 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v96++, v29, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v98 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
        result = outlined destroy of MEProgram(v29, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v98)
        {
LABEL_51:

          goto LABEL_52;
        }
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v51 = v129;
      v89 = v125;
      result = outlined init with copy of DSLTree._AST.AbsentFunction(v129, v125, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v90 = 0;
      v91 = *v89;
      v92 = *(v91 + 16);
      v93 = *(v91 + 32);
      v94 = *(v92 + 16);
      while (v94 != v90)
      {
        if (v90 >= *(v92 + 16))
        {
          goto LABEL_77;
        }

        outlined init with copy of DSLTree._AST.AbsentFunction(v92 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v90++, v24, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v95 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
        result = outlined destroy of MEProgram(v24, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v95)
        {
          goto LABEL_51;
        }
      }

      v103 = 0;
      v104 = *(v93 + 16);
      v105 = v121;
      while (v104 != v103)
      {
        if (v103 >= *(v93 + 16))
        {
          goto LABEL_80;
        }

        outlined init with copy of DSLTree._AST.AbsentFunction(v93 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v103++, v105, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v106 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
        result = outlined destroy of MEProgram(v105, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v106)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v51 = v129;
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_64;
      }

      v57 = v126;
      result = outlined init with copy of DSLTree._AST.AbsentFunction(v129, v126, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v58 = 0;
      v59 = *v57;
      v60 = *(v59 + 16);
      v61 = *(v59 + 32);
      v62 = *(v60 + 16);
      while (v62 != v58)
      {
        if (v58 >= *(v60 + 16))
        {
          goto LABEL_76;
        }

        outlined init with copy of DSLTree._AST.AbsentFunction(v60 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v58++, v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v63 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
        result = outlined destroy of MEProgram(v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v63)
        {
          goto LABEL_51;
        }
      }

      v99 = 0;
      v100 = *(v61 + 16);
      v101 = v122;
      while (v100 != v99)
      {
        if (v99 >= *(v61 + 16))
        {
          goto LABEL_79;
        }

        outlined init with copy of DSLTree._AST.AbsentFunction(v61 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v99++, v101, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v102 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
        result = outlined destroy of MEProgram(v101, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v102)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_63:
    v50 = 0;
    goto LABEL_64;
  }

  if (!EnumCaseMultiPayload)
  {
    v51 = v129;
    outlined init with copy of DSLTree._AST.AbsentFunction(v129, v46, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    type metadata accessor for DSLTree.Atom(0);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v64 = v119;
      outlined init with take of DSLTree.QuantificationKind(v46, v119, type metadata accessor for DSLTree._AST.Atom);
      v65 = v120;
      AST.Atom.kind.getter();
      outlined destroy of MEProgram(v64, type metadata accessor for DSLTree._AST.Atom);
      v67 = v123;
      v66 = v124;
      v68 = (*(v123 + 88))(v65, v124);
      if (v68 == *MEMORY[0x1E69E8D80])
      {
        (*(v67 + 96))(v65, v66);
        v69 = v116;
        v70 = v117;
        v71 = v118;
        (*(v117 + 32))(v116, v65, v118);
        v50 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
        (*(v70 + 8))(v69, v71);
      }

      else if (v68 == *MEMORY[0x1E69E8D30] || v68 == *MEMORY[0x1E69E8D10] || v68 == *MEMORY[0x1E69E8D38])
      {
        (*(v67 + 8))(v65, v66);
LABEL_52:
        v50 = 1;
      }

      else
      {
        v108 = v68 == *MEMORY[0x1E69E8D20];
        v109 = v65;
        v50 = v108;
        (*(v67 + 8))(v109, v66);
      }

      goto LABEL_64;
    }

    v107 = v46;
LABEL_62:
    outlined destroy of MEProgram(v107, type metadata accessor for DSLTree.Atom);
    goto LABEL_63;
  }

  v51 = v129;
  if (EnumCaseMultiPayload == 1)
  {
    v77 = v127;
    outlined init with copy of DSLTree._AST.AbsentFunction(v129, v127, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    type metadata accessor for DSLTree.Atom(0);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v79 = v113;
        outlined init with take of DSLTree.QuantificationKind(v77, v113, type metadata accessor for DSLTree._AST.Atom);
        v80 = v115;
        outlined init with take of DSLTree.QuantificationKind(v77 + v78, v115, type metadata accessor for DSLTree._AST.Atom);
        v81 = v114;
        AST.Atom.kind.getter();
        outlined destroy of MEProgram(v79, type metadata accessor for DSLTree._AST.Atom);
        v83 = v123;
        v82 = v124;
        v84 = (*(v123 + 88))(v81, v124);
        if (v84 == *MEMORY[0x1E69E8D80])
        {
          (*(v83 + 96))(v81, v82);
          v85 = v116;
          v86 = v117;
          v87 = v118;
          (*(v117 + 32))(v116, v81, v118);
          v88 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
          (*(v86 + 8))(v85, v87);
          if (v88)
          {
            goto LABEL_72;
          }

LABEL_70:
          v50 = AST.Atom.isQuantifiable.getter();
LABEL_73:
          outlined destroy of MEProgram(v80, type metadata accessor for DSLTree._AST.Atom);
          goto LABEL_64;
        }

        if (v84 == *MEMORY[0x1E69E8D30] || v84 == *MEMORY[0x1E69E8D10] || v84 == *MEMORY[0x1E69E8D38])
        {
          (*(v83 + 8))(v81, v82);
        }

        else
        {
          v110 = *MEMORY[0x1E69E8D20];
          v111 = v84;
          (*(v83 + 8))(v81, v82);
          if (v111 != v110)
          {
            goto LABEL_70;
          }
        }

LABEL_72:
        v50 = 1;
        goto LABEL_73;
      }

      outlined destroy of MEProgram(v77, type metadata accessor for DSLTree._AST.Atom);
      v107 = v77 + v78;
    }

    else
    {
      outlined destroy of MEProgram(v77 + v78, type metadata accessor for DSLTree.Atom);
      v107 = v77;
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload == 2)
  {
    result = outlined init with copy of DSLTree._AST.AbsentFunction(v129, v43, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v53 = 0;
    v54 = *v43;
    v55 = *(*v43 + 16);
    while (v55 != v53)
    {
      if (v53 >= *(v54 + 16))
      {
        goto LABEL_75;
      }

      outlined init with copy of DSLTree._AST.AbsentFunction(v54 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v53++, v40, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v56 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter();
      result = outlined destroy of MEProgram(v40, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v56)
      {

        goto LABEL_52;
      }
    }

    goto LABEL_63;
  }

LABEL_64:
  outlined destroy of MEProgram(v51, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  return v50 & 1;
}

uint64_t convert #1 () in AST.Node.dslTreeNode.getter(uint64_t a1)
{
  v276 = a1;
  v222 = type metadata accessor for AST.CustomCharacterClass();
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v219 = &v218 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for AST.Atom.ScalarSequence();
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v220 = &v218 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for AST.Atom.Kind();
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v228 = &v218 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for AST.Atom();
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v225 = &v218 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for AST.Trivia();
  v232 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v231 = &v218 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for AST.Quote();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v235 = &v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMR);
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v242 = &v218 - v7;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMR);
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v218 - v8;
  v252 = type metadata accessor for AST.Quantification();
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v250 = &v218 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for AST.Conditional.Condition();
  v254 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v253 = &v218 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST.Conditional();
  v259 = *(v11 - 8);
  v260 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v258 = &v218 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_SSGMd, &_s12_RegexParser6SourceV7LocatedVy_SSGMR);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v247 = &v218 - v13;
  v14 = type metadata accessor for AST.Group.Kind();
  v262 = *(v14 - 8);
  v263 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v261 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMR);
  v17 = *(v16 - 8);
  v264 = v16;
  v265 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v234 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v257 = &v218 - v20;
  v21 = type metadata accessor for AST.Group();
  v270 = *(v21 - 8);
  v271 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v266 = &v218 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for AST.Concatenation();
  v267 = *(v269 - 1);
  MEMORY[0x1EEE9AC00](v269);
  v24 = &v218 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AST.Alternation();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v218 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AST.Node();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v238 = &v218 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v246 = &v218 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v245 = &v218 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v256 = &v218 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v218 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v218 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = (&v218 - v45);
  v272 = *(v30 + 16);
  v273 = v30 + 16;
  v272(&v218 - v45, v276, v29);
  v47 = (*(v30 + 88))(v46, v29);
  v48 = *MEMORY[0x1E69E8D98];
  v274 = v30;
  v276 = v29;
  if (v47 == v48)
  {
    (*(v30 + 96))(v46, v29);
    v49 = *v46;
    v50 = swift_projectBox();
    (*(v26 + 16))(v28, v50, v25);
    v51 = AST.Alternation.children.getter();
    v52 = v25;
    v53 = v51;
    (*(v26 + 8))(v28, v52);
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = v29;
      v267 = v49;
      v275[0] = MEMORY[0x1E69E7CC0];
      v271 = v54;
      v47 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
      v56 = 0;
      v57 = v275[0];
      v270 = v53 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v269 = (v30 + 32);
      v46 = (v30 + 8);
      v58 = v268;
      while (v56 < *(v53 + 16))
      {
        v59 = v53;
        v272(v44, v270 + *(v30 + 72) * v56, v55);
        v60 = convert #1 () in AST.Node.dslTreeNode.getter(v44);
        if (v58)
        {
          goto LABEL_82;
        }

        v61 = v60;
        if (((v60 >> 59) & 0x1E | (v60 >> 2) & 1) == 0xC)
        {
          v47 = (*v46)(v44, v55);
        }

        else
        {
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
          v63 = swift_allocBox();
          v64 = v55;
          v65 = v63;
          v66 = *(v62 + 48);
          v58 = 0;
          *v67 = v61;
          v47 = (*v269)(v67 + v66, v44, v64);
          v61 = v65 | 0x6000000000000000;
        }

        v275[0] = v57;
        v69 = *(v57 + 16);
        v68 = *(v57 + 24);
        if (v69 >= v68 >> 1)
        {
          v47 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
          v57 = v275[0];
        }

        ++v56;
        *(v57 + 16) = v69 + 1;
        *(v57 + 8 * v69 + 32) = v61;
        v30 = v274;
        v55 = v276;
        v53 = v59;
        if (v271 == v56)
        {
          v268 = v58;

          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_64;
    }

    v57 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v97 = swift_allocObject();

    result = v97;
    *(v97 + 16) = v57;
  }

  else
  {
    if (v47 != *MEMORY[0x1E69E8DA8])
    {
      if (v47 == *MEMORY[0x1E69E8DE0])
      {
        v87 = v276;
        (*(v30 + 96))(v46, v276);
        v88 = *v46;
        v89 = swift_projectBox();
        v90 = v266;
        (*(v270 + 16))(v266, v89, v271);
        v91 = v256;
        AST.Group.child.getter();
        v92 = v268;
        v93 = convert #1 () in AST.Node.dslTreeNode.getter(v91);
        if (!v92)
        {
          v94 = v93;
          v96 = v262;
          v95 = v263;
          v268 = 0;
          v274 = v88;
          if (((v93 >> 59) & 0x1E | (v93 >> 2) & 1) == 0xC)
          {
            v273 = v93;
            (*(v30 + 8))(v91, v87);
          }

          else
          {
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
            v112 = swift_allocBox();
            v113 = *(v111 + 48);
            *v114 = v94;
            (*(v30 + 32))(v114 + v113, v91, v87);
            v273 = v112 | 0x6000000000000000;
          }

          v115 = v265;
          v116 = v257;
          AST.Group.kind.getter();
          v117 = v261;
          v118 = v264;
          MEMORY[0x193ACE600](v264);
          v121 = *(v115 + 8);
          v120 = v115 + 8;
          v119 = v121;
          v121(v116, v118);
          v122 = v95;
          v123 = (*(v96 + 88))(v117, v95);
          if (v123 == *MEMORY[0x1E69E8E10])
          {
            (*(v270 + 8))(v90, v271);
            (*(v96 + 96))(v117, v95);
            v124 = v248;
            v125 = v247;
            v126 = v249;
            (*(v248 + 32))(v247, v117, v249);
            v127 = swift_allocObject();
            MEMORY[0x193ACE600](v275, v126);
            (*(v124 + 8))(v125, v126);

            v128 = v275[1];
            *(v127 + 16) = v275[0];
            *(v127 + 24) = v128;
            *(v127 + 32) = 0;
            *(v127 + 40) = 1;
            *(v127 + 48) = v273;
            result = v127 | 0x1000000000000000;
            *(v127 + 56) = 0u;
            *(v127 + 72) = 0u;
            *(v127 + 88) = 0;
            return result;
          }

          if (v123 == *MEMORY[0x1E69E8E20])
          {
            (*(v270 + 8))(v266, v271);

            type metadata accessor for Unsupported();
            lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
            swift_allocError();
            MEMORY[0x193ACDF10](0xD000000000000017, 0x800000018E5F28D0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/Regex/ASTConversion.swift", 160, 2, 56);
            swift_willThrow();
            (*(v96 + 8))(v117, v95);
          }

          v143 = v273;
          if (v123 == *MEMORY[0x1E69E8E60])
          {
            (*(v270 + 8))(v266, v271);
            v144 = swift_allocObject();

            *(v144 + 16) = 0;
            *(v144 + 24) = 0;
            *(v144 + 32) = 0;
            *(v144 + 40) = 1;
            *(v144 + 48) = v143;
            result = v144 | 0x1000000000000000;
            *(v144 + 56) = 0u;
            *(v144 + 72) = 0u;
            *(v144 + 88) = 0;
            return result;
          }

          v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
          v276 = swift_allocBox();
          v265 = v120;
          v181 = v180;
          v272 = *(v179 + 48);
          v182 = v234;
          v183 = v266;
          AST.Group.kind.getter();
          (*(v270 + 8))(v183, v271);
          v184 = v264;
          MEMORY[0x193ACE600](v264);
          v119(v182, v184);
          *(v272 + v181) = v143;
          v185 = v276 | 0x1000000000000004;
          (*(v96 + 8))(v117, v122);
          goto LABEL_60;
        }
      }

      else
      {
        v57 = v276;
        if (v47 == *MEMORY[0x1E69E8DA0])
        {
          (*(v30 + 96))(v46, v276);
          v99 = swift_projectBox();
          (*(v259 + 16))(v258, v99, v260);
          v100 = v245;
          AST.Conditional.trueBranch.getter();
          v101 = v268;
          v102 = convert #1 () in AST.Node.dslTreeNode.getter(v100);
          if (!v101)
          {
            v103 = v102;
            if (((v102 >> 59) & 0x1E | (v102 >> 2) & 1) == 0xC)
            {
              (*(v30 + 8))(v100, v57);
            }

            else
            {
              v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v138 = swift_allocBox();
              v139 = *(v137 + 48);
              *v140 = v103;
              (*(v30 + 32))(v140 + v139, v100, v57);
              v103 = v138 | 0x6000000000000000;
            }

            v141 = v246;
            AST.Conditional.falseBranch.getter();
            v142 = convert #1 () in AST.Node.dslTreeNode.getter(v141);
            v268 = 0;
            if (((v142 >> 59) & 0x1E | (v142 >> 2) & 1) == 0xC)
            {
              v274[1](v141, v57);
            }

            else
            {
              v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v146 = swift_allocBox();
              v147 = *(v145 + 48);
              *v148 = v142;
              (v274[4])(v148 + v147, v141, v57);
              v142 = v146 | 0x6000000000000000;
            }

            v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
            v150 = swift_allocBox();
            v152 = v151;
            v153 = *(v149 + 48);
            v154 = *(v149 + 64);
            v155 = v253;
            v156 = v258;
            AST.Conditional.condition.getter();
            (*(v259 + 8))(v156, v260);
            AST.Conditional.Condition.kind.getter();
            (*(v254 + 8))(v155, v255);

            *(v152 + v153) = v103;
            *(v152 + v154) = v142;
            return v150 | 0x2000000000000004;
          }
        }

        else
        {
          if (v47 != *MEMORY[0x1E69E8DC0])
          {
            if (v47 == *MEMORY[0x1E69E8DE8])
            {
              (*(v30 + 96))(v46, v276);
              v129 = swift_projectBox();
              v130 = v236;
              v131 = v235;
              v132 = v237;
              (*(v236 + 16))(v235, v129, v237);
              v133 = swift_allocObject();
              v134 = MEMORY[0x193ACE550]();
              v136 = v135;
              (*(v130 + 8))(v131, v132);

              *(v133 + 16) = v134;
              *(v133 + 24) = v136;
              return v133 | 0x5000000000000000;
            }

            if (v47 == *MEMORY[0x1E69E8DF0])
            {
              (*(v30 + 96))(v46, v276);
              v157 = swift_projectBox();
              v158 = v232;
              v159 = v231;
              v160 = v233;
              (*(v232 + 16))(v231, v157, v233);
              v161 = swift_allocObject();
              v162 = MEMORY[0x193ACE570]();
              v164 = v163;
              (*(v158 + 8))(v159, v160);

              *(v161 + 16) = v162;
              *(v161 + 24) = v164;
              return v161 | 0x4000000000000004;
            }

            if (v47 == *MEMORY[0x1E69E8DB0])
            {
              (*(v30 + 8))(v46, v276);
              type metadata accessor for Unsupported();
              lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
              swift_allocError();
              MEMORY[0x193ACDF10](0xD000000000000013, 0x800000018E5F2800, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/Regex/ASTConversion.swift", 160, 2, 79);
              return swift_willThrow();
            }

LABEL_64:
            if (v47 == *MEMORY[0x1E69E8DD0])
            {
              (*(v30 + 96))(v46, v57);
              v186 = *v46;
              v187 = swift_projectBox();
              v188 = v226;
              v189 = v225;
              v190 = v227;
              (*(v226 + 16))(v225, v187, v227);
              v191 = v228;
              AST.Atom.kind.getter();
              v192 = v229;
              v193 = v230;
              if ((*(v229 + 88))(v191, v230) == *MEMORY[0x1E69E8D28])
              {
                (*(v188 + 8))(v189, v190);
                (*(v192 + 96))(v191, v193);
                v194 = v223;
                v195 = v220;
                v196 = v224;
                (*(v223 + 32))(v220, v191, v224);
                v197 = AST.Atom.ScalarSequence.scalarValues.getter();
                (*(v194 + 8))(v195, v196);
                v198 = *(v197 + 16);
                if (v198)
                {
                  v276 = v186;
                  v275[0] = MEMORY[0x1E69E7CC0];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v198, 0);
                  v199 = v275[0];
                  type metadata accessor for DSLTree.Atom(0);
                  v200 = 32;
                  do
                  {
                    v201 = *(v197 + v200);
                    v202 = swift_allocBox();
                    *v203 = v201;
                    swift_storeEnumTagMultiPayload();
                    v275[0] = v199;
                    v205 = *(v199 + 16);
                    v204 = *(v199 + 24);
                    if (v205 >= v204 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v205 + 1, 1);
                      v199 = v275[0];
                    }

                    *(v199 + 16) = v205 + 1;
                    *(v199 + 8 * v205 + 32) = v202 | 0x4000000000000000;
                    v200 += 4;
                    --v198;
                  }

                  while (v198);
                }

                else
                {

                  v199 = MEMORY[0x1E69E7CC0];
                }

                v217 = swift_allocObject();
                *(v217 + 16) = v199;
                return v217 | 4;
              }

              type metadata accessor for DSLTree.Atom(0);
              v211 = swift_allocBox();
              AST.Atom.dslTreeAtom.getter(v212);
              (*(v188 + 8))(v189, v190);
              v185 = v211 | 0x4000000000000000;
              (*(v192 + 8))(v191, v193);
LABEL_60:

              return v185;
            }

LABEL_73:
            if (v47 == *MEMORY[0x1E69E8DC8])
            {
              (*(v30 + 96))(v46, v57);
              v206 = swift_projectBox();
              v207 = v221;
              v208 = v219;
              v209 = v222;
              (*(v221 + 16))(v219, v206, v222);
              v210 = swift_allocObject();
              AST.CustomCharacterClass.dslTreeClass.getter(v210 + 16);
              (*(v207 + 8))(v208, v209);

              return v210 | 0x3000000000000004;
            }

            else if (v47 == *MEMORY[0x1E69E8DB8])
            {
              (*(v30 + 96))(v46, v57);
              v213 = type metadata accessor for AST.AbsentFunction();
              v214 = swift_projectBox();
              type metadata accessor for DSLTree._AST.AbsentFunction(0);
              v215 = swift_allocBox();
              (*(*(v213 - 8) + 16))(v216, v214, v213);

              return v215 | 0x5000000000000004;
            }

            else if (v47 == *MEMORY[0x1E69E8DD8])
            {
              (*(v30 + 8))(v46, v57);
              return 0x8000000000000000;
            }

            else
            {
              result = _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            return result;
          }

          (*(v30 + 96))(v46, v276);
          v105 = *v46;
          v106 = swift_projectBox();
          (*(v251 + 16))(v250, v106, v252);
          v107 = v238;
          AST.Quantification.child.getter();
          v108 = v268;
          v109 = convert #1 () in AST.Node.dslTreeNode.getter(v107);
          if (!v108)
          {
            v110 = v109;
            v268 = 0;
            v274 = v105;
            if (((v109 >> 59) & 0x1E | (v109 >> 2) & 1) == 0xC)
            {
              (*(v30 + 8))(v107, v276);
            }

            else
            {
              v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v166 = swift_allocBox();
              v167 = *(v165 + 48);
              *v168 = v110;
              (*(v30 + 32))(v168 + v167, v107, v276);
              v110 = v166 | 0x6000000000000000;
            }

            v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
            v170 = swift_allocBox();
            v172 = v171;
            v173 = *(v169 + 64);
            v174 = v239;
            v175 = v250;
            AST.Quantification.amount.getter();
            v176 = v241;
            MEMORY[0x193ACE600](v241);
            (*(v240 + 8))(v174, v176);
            v177 = v242;
            AST.Quantification.kind.getter();
            (*(v251 + 8))(v175, v252);
            v178 = v244;
            MEMORY[0x193ACE600](v244);
            (*(v243 + 8))(v177, v178);
            type metadata accessor for DSLTree.QuantificationKind(0);
            swift_storeEnumTagMultiPayload();

            *(v172 + v173) = v110;
            return v170 | 0x3000000000000000;
          }
        }
      }

      while (1)
      {
LABEL_82:
        swift_unexpectedError();
        __break(1u);
      }
    }

    (*(v30 + 96))(v46, v276);
    v70 = *v46;
    v71 = swift_projectBox();
    v72 = v267;
    v73 = v269;
    v267[2](v24, v71, v269);
    v74 = AST.Concatenation.children.getter();
    (v72[1])(v24, v73);
    v75 = *(v74 + 16);
    if (v75)
    {
      v267 = v70;
      v275[0] = MEMORY[0x1E69E7CC0];
      v47 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75, 0);
      v76 = 0;
      v57 = v275[0];
      v77 = v74 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v270 = v30 + 32;
      v271 = v77;
      v269 = (v30 + 8);
      v78 = v268;
      v30 = v74;
      while (v76 < *(v74 + 16))
      {
        v272(v41, v271 + v274[9] * v76, v276);
        v79 = convert #1 () in AST.Node.dslTreeNode.getter(v41);
        if (v78)
        {
          goto LABEL_82;
        }

        v80 = v79;
        if (((v79 >> 59) & 0x1E | (v79 >> 2) & 1) == 0xC)
        {
          v47 = (*v269)(v41, v276);
        }

        else
        {
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
          v82 = swift_allocBox();
          v83 = *(v81 + 48);
          v78 = 0;
          *v84 = v80;
          v47 = (*v270)(v84 + v83, v41, v276);
          v80 = v82 | 0x6000000000000000;
        }

        v275[0] = v57;
        v86 = *(v57 + 16);
        v85 = *(v57 + 24);
        v46 = (v86 + 1);
        if (v86 >= v85 >> 1)
        {
          v47 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
          v57 = v275[0];
        }

        ++v76;
        *(v57 + 16) = v46;
        *(v57 + 8 * v86 + 32) = v80;
        v74 = v30;
        if (v75 == v76)
        {

          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v57 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v104 = swift_allocObject();
    *(v104 + 16) = v57;
    return v104 | 4;
  }

  return result;
}

uint64_t AST.Atom.dslTreeAtom.getter@<X0>(char *a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for AST.Atom.Scalar();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v10 = type metadata accessor for AST.Atom.Kind();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v51 = v1;
  AST.Atom.kind.getter();
  v19 = *(v11 + 88);
  v20 = v19(v18, v10);
  v21 = *MEMORY[0x1E69E8D70];
  v49 = v5;
  if (v20 != v21)
  {
    if (v20 == *MEMORY[0x1E69E8D00])
    {
      v22 = 9;
    }

    else
    {
      if (v20 != *MEMORY[0x1E69E8D08])
      {
        LOBYTE(v53[0]) = 13;
        v48 = v11;
        (*(v11 + 8))(v18, v10);
        goto LABEL_3;
      }

      v22 = 10;
    }

LABEL_10:
    *v52 = v22;
    type metadata accessor for DSLTree.Atom(0);
    return swift_storeEnumTagMultiPayload();
  }

  v48 = v11;
  (*(v11 + 96))(v18, v10);
  (*(v5 + 32))(v9, v18, v4);
  AST.Atom.EscapedBuiltin.dslAssertionKind.getter(v53);
  (*(v5 + 8))(v9, v4);
LABEL_3:
  v22 = v53[0];
  if (LOBYTE(v53[0]) != 13)
  {
    goto LABEL_10;
  }

  AST.Atom.kind.getter();
  if (v19(v16, v10) == v21)
  {
    (*(v48 + 96))(v16, v10);
    v23 = v49;
    (*(v49 + 32))(v9, v16, v4);
    AST.Atom.EscapedBuiltin.dslCharacterClass.getter(v53);
    (*(v23 + 8))(v9, v4);
  }

  else
  {
    LOBYTE(v53[0]) = 14;
    (*(v48 + 8))(v16, v10);
  }

  v25 = v50;
  v22 = v53[0];
  if (LOBYTE(v53[0]) != 14)
  {
    goto LABEL_10;
  }

  AST.Atom.kind.getter();
  v26 = v19(v25, v10);
  if (v26 == *MEMORY[0x1E69E8D58])
  {
    (*(v48 + 96))(v25, v10);
    v27 = *(v25 + 1);
    v28 = v52;
    *v52 = *v25;
    *(v28 + 1) = v27;
    type metadata accessor for DSLTree.Atom(0);
    return swift_storeEnumTagMultiPayload();
  }

  v29 = v48;
  if (v26 == *MEMORY[0x1E69E8D60])
  {
    (*(v48 + 96))(v25, v10);
    v30 = v45;
    v31 = v46;
    v32 = v25;
    v33 = v47;
    (*(v46 + 32))(v45, v32, v47);
    v34 = AST.Atom.Scalar.value.getter();
    (*(v31 + 8))(v30, v33);
    *v52 = v34;
    goto LABEL_28;
  }

  if (v26 == v21)
  {
    (*(v48 + 96))(v25, v10);
    v35 = v49;
    v36 = v44;
    (*(v49 + 32))(v44, v25, v4);
    v37 = AST.Atom.EscapedBuiltin.scalarValue.getter();
    if ((v37 & 0x100000000) == 0)
    {
      v38 = v37;
      (*(v35 + 8))(v36, v4);
      *v52 = v38;
      goto LABEL_28;
    }

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x193ACE8E0](0xD00000000000004BLL, 0x800000018E5F28F0);
    type metadata accessor for AST.Atom();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Atom and conformance AST.Atom, MEMORY[0x1E69E8D88], MEMORY[0x1E69E8D90]);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ACE8E0](v42);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v26 == *MEMORY[0x1E69E8D18])
    {
      (*(v48 + 96))(v25, v10);
      v39 = type metadata accessor for AST.Reference();
      (*(*(v39 - 8) + 32))(v52, v25, v39);
      type metadata accessor for DSLTree.Atom(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v26 == *MEMORY[0x1E69E8D48])
    {
      (*(v48 + 96))(v25, v10);
      v40 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v40 - 8) + 32))(v52, v25, v40);
      type metadata accessor for DSLTree.Atom(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v26 == *MEMORY[0x1E69E8D50])
    {
LABEL_28:
      type metadata accessor for DSLTree.Atom(0);
      return swift_storeEnumTagMultiPayload();
    }

    v41 = type metadata accessor for AST.Atom();
    (*(*(v41 - 8) + 16))(v52, v51, v41);
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    return (*(v29 + 8))(v25, v10);
  }

  return result;
}

uint64_t AST.CustomCharacterClass.dslTreeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = type metadata accessor for AST.CustomCharacterClass.Member();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = AST.CustomCharacterClass.members.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v22[1] = v1;
    v23 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v28;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 64);
    v22[0] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v25 = *(v12 + 56);
    v26 = v13;
    v16 = (v12 - 8);
    v17 = v24;
    do
    {
      v18 = v12;
      v26(v5, v15, v17);
      convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter(v5, v8);
      (*v16)(v5, v17);
      v28 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v17 = v24;
        v11 = v28;
      }

      *(v11 + 16) = v20 + 1;
      outlined init with take of DSLTree.QuantificationKind(v8, v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v20, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v15 += v25;
      --v10;
      v12 = v18;
    }

    while (v10);

    a1 = v23;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  result = AST.CustomCharacterClass.isInverted.getter();
  *a1 = v11;
  *(a1 + 8) = result & 1;
  return result;
}

uint64_t convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a1;
  v108 = a2;
  v91 = type metadata accessor for AST.Trivia();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AST.CustomCharacterClass.SetOp();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v93 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v96 = *(v107 - 8);
  v5 = MEMORY[0x1EEE9AC00](v107);
  v92 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5SetOpOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5SetOpOGMR);
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v88 - v9;
  v10 = type metadata accessor for AST.Quote();
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AST.Atom();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v104 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v88 - v15;
  v17 = type metadata accessor for AST.CustomCharacterClass.Range();
  v103 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AST.CustomCharacterClass();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AST.CustomCharacterClass.Member();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v88 - v29;
  v31 = v110;
  v109 = *(v25 + 16);
  v110 = v25 + 16;
  v109(&v88 - v29, v31, v24);
  v32 = (*(v25 + 88))(v30, v24);
  if (v32 == *MEMORY[0x1E69E8B40])
  {
    (*(v25 + 96))(v30, v24);
    (*(v21 + 32))(v23, v30, v20);
    AST.CustomCharacterClass.dslTreeClass.getter(&v111);
    (*(v21 + 8))(v23, v20);
    v33 = v112;
    v34 = v108;
    *v108 = v111;
    v34[8] = v33;
    return swift_storeEnumTagMultiPayload();
  }

  if (v32 == *MEMORY[0x1E69E8B38])
  {
    (*(v25 + 96))(v30, v24);
    v35 = v103;
    (*(v103 + 32))(v19, v30, v17);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    AST.CustomCharacterClass.Range.lhs.getter();
    v37 = v108;
    AST.Atom.dslTreeAtom.getter(v108);
    v38 = *(v105 + 8);
    v39 = v16;
    v40 = v106;
    v38(v39, v106);
    v41 = v104;
    AST.CustomCharacterClass.Range.rhs.getter();
    (*(v35 + 8))(v19, v17);
    AST.Atom.dslTreeAtom.getter(&v37[v36]);
    v38(v41, v40);
    return swift_storeEnumTagMultiPayload();
  }

  if (v32 == *MEMORY[0x1E69E8B28])
  {
    (*(v25 + 96))(v30, v24);
    v43 = v105;
    v42 = v106;
    (*(v105 + 32))(v16, v30, v106);
    AST.Atom.dslTreeAtom.getter(v108);
    (*(v43 + 8))(v16, v42);
    return swift_storeEnumTagMultiPayload();
  }

  if (v32 == *MEMORY[0x1E69E8B30])
  {
    (*(v25 + 96))(v30, v24);
    v45 = v97;
    v44 = v98;
    v46 = v99;
    v47 = (*(v98 + 32))(v97, v30, v99);
    v48 = MEMORY[0x193ACE550](v47);
    v50 = v49;
    (*(v44 + 8))(v45, v46);
    v51 = v108;
    *v108 = v48;
    *(v51 + 1) = v50;
    return swift_storeEnumTagMultiPayload();
  }

  if (v32 == *MEMORY[0x1E69E8B48])
  {
    (*(v25 + 96))(v30, v24);
    v52 = v90;
    v53 = v89;
    v54 = v91;
    v55 = (*(v90 + 32))(v89, v30, v91);
    v56 = MEMORY[0x193ACE570](v55);
    v58 = v57;
    (*(v52 + 8))(v53, v54);
    v59 = v108;
    *v108 = v56;
    *(v59 + 1) = v58;
    return swift_storeEnumTagMultiPayload();
  }

  if (v32 == *MEMORY[0x1E69E8B20])
  {
    (*(v25 + 96))(v30, v24);
    v60 = *v30;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12_RegexParser3ASTV20CustomCharacterClassV6MemberOG_AA6SourceV7LocatedVy_AE5SetOpOGAHtMd, &_sSay12_RegexParser3ASTV20CustomCharacterClassV6MemberOG_AA6SourceV7LocatedVy_AE5SetOpOGAHtMR);
    v62 = *&v30[*(v61 + 64)];
    (*(v101 + 32))(v100, &v30[*(v61 + 48)], v102);
    v63 = *(v60 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    v104 = v62;
    if (v63)
    {
      v111 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
      v65 = v111;
      v66 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v103 = v60;
      v67 = v60 + v66;
      v68 = *(v25 + 72);
      v105 = v25 + 8;
      v106 = v68;
      v69 = v96;
      v70 = v88;
      do
      {
        v109(v28, v67, v24);
        convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter(v28, v70);
        (*v105)(v28, v24);
        v111 = v65;
        v72 = *(v65 + 16);
        v71 = *(v65 + 24);
        if (v72 >= v71 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
          v69 = v96;
          v65 = v111;
        }

        *(v65 + 16) = v72 + 1;
        outlined init with take of DSLTree.QuantificationKind(v70, v65 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v72, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v67 += v106;
        --v63;
      }

      while (v63);
      v105 = v65;

      v62 = v104;
      v64 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v105 = MEMORY[0x1E69E7CC0];
    }

    v73 = *(v62 + 2);
    v74 = v92;
    if (v73)
    {
      v111 = v64;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
      v75 = v96;
      v76 = v111;
      v77 = &v62[(*(v25 + 80) + 32) & ~*(v25 + 80)];
      v106 = *(v25 + 72);
      v78 = (v25 + 8);
      do
      {
        v109(v28, v77, v24);
        convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter(v28, v74);
        (*v78)(v28, v24);
        v111 = v76;
        v80 = *(v76 + 16);
        v79 = *(v76 + 24);
        if (v80 >= v79 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1);
          v75 = v96;
          v76 = v111;
        }

        *(v76 + 16) = v80 + 1;
        outlined init with take of DSLTree.QuantificationKind(v74, v76 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v80, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v77 += v106;
        --v73;
      }

      while (v73);
    }

    else
    {

      v76 = MEMORY[0x1E69E7CC0];
    }

    v81 = v93;
    v82 = v102;
    v83 = v100;
    MEMORY[0x193ACE600](v102);
    v84 = (*(v94 + 88))(v81, v95);
    v85 = v108;
    if (v84 == *MEMORY[0x1E69E8AF0] || v84 == *MEMORY[0x1E69E8AF8] || v84 == *MEMORY[0x1E69E8B00])
    {
      (*(v101 + 8))(v83, v82);
      v86 = swift_allocObject();
      *(v86 + 16) = v105;
      *(v86 + 24) = 0;
      *(v86 + 32) = v76;
      *(v86 + 40) = 0;
      *v85 = v86;
      return swift_storeEnumTagMultiPayload();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AST.Atom.EscapedBuiltin.dslAssertionKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E8B90])
  {
    *a1 = 11;
  }

  else if (result == *MEMORY[0x1E69E8BE8])
  {
    *a1 = 12;
  }

  else if (result == *MEMORY[0x1E69E8BC8])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x1E69E8C10])
  {
    *a1 = 1;
  }

  else if (result == *MEMORY[0x1E69E8B88])
  {
    *a1 = 2;
  }

  else if (result == *MEMORY[0x1E69E8C18])
  {
    *a1 = 4;
  }

  else if (result == *MEMORY[0x1E69E8BF8])
  {
    *a1 = 3;
  }

  else if (result == *MEMORY[0x1E69E8B68])
  {
    *a1 = 5;
  }

  else if (result == *MEMORY[0x1E69E8BB0])
  {
    *a1 = 6;
  }

  else
  {
    *a1 = 13;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t AST.Atom.EscapedBuiltin.dslCharacterClass.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E8B80])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x1E69E8BE0])
  {
    *a1 = 1;
  }

  else if (result == *MEMORY[0x1E69E8C00])
  {
    *a1 = 2;
  }

  else if (result == *MEMORY[0x1E69E8C08])
  {
    *a1 = 3;
  }

  else if (result == *MEMORY[0x1E69E8B58])
  {
    *a1 = 5;
  }

  else if (result == *MEMORY[0x1E69E8BD8])
  {
    *a1 = 4;
  }

  else if (result == *MEMORY[0x1E69E8B60])
  {
    *a1 = 6;
  }

  else if (result == *MEMORY[0x1E69E8B98])
  {
    *a1 = 7;
  }

  else if (result == *MEMORY[0x1E69E8B78])
  {
    *a1 = 8;
  }

  else if (result == *MEMORY[0x1E69E8BB8])
  {
    *a1 = 9;
  }

  else if (result == *MEMORY[0x1E69E8BA0])
  {
    *a1 = 10;
  }

  else if (result == *MEMORY[0x1E69E8BF0])
  {
    *a1 = 11;
  }

  else if (result == *MEMORY[0x1E69E8BD0])
  {
    *a1 = 12;
  }

  else
  {
    *a1 = 14;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

__n128 AnyRegexOutput.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *AnyRegexOutput.extractValues<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = a2;
  v5 = v2[2];
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_18:
    *&v38[0] = v7;
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [Any] and conformance [A], &unk_1F01904A8, &cache variable for noncanonical specialized generic type metadata for [Any], MEMORY[0x1E69E6310]);
    static TypeConstruction.tuple<A>(of:)();
    v29 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(v4, v29 ^ 1u, 1, v3);
  }

  v8 = *v2;
  v9 = v2[1];
  v41 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v10 = 0;
  v7 = v41;
  v11 = v5 + 32;
  v32 = v9;
  while (1)
  {
    outlined init with copy of AnyRegexOutput.ElementRepresentation(v11 + 88 * v10, &v39);
    v40[10] = v8;
    v40[11] = v9;
    v12 = v39;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(v40, &v35, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    if (*(&v37 + 1) == 1)
    {
      break;
    }

    v38[0] = v35;
    v38[1] = v36;
    v38[2] = v37;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(v38, &v35, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    if (*(&v37 + 1))
    {

      outlined destroy of SplitSequence<SubstringSearcher>(v38, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      result = outlined init with take of Any(&v36, &v33);
    }

    else
    {

      outlined destroy of SplitSequence<SubstringSearcher>(v38, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      v15 = String.subscript.getter();
      v17 = v16;
      v18 = v8;
      v19 = v6;
      v20 = v11;
      v22 = v21;
      v24 = v23;
      v34 = MEMORY[0x1E69E67B0];
      result = swift_allocObject();
      *&v33 = result;
      result[2] = v15;
      result[3] = v17;
      result[4] = v22;
      result[5] = v24;
      v11 = v20;
      v6 = v19;
      v8 = v18;
      v9 = v32;
      if (*(&v37 + 1))
      {
        result = outlined destroy of Any?(&v36, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
      }
    }

    if (v12 < 0)
    {
      goto LABEL_20;
    }

    for (; v12; --v12)
    {
      outlined init with copy of Any(&v33, &v35);
      v25 = *(&v36 + 1);
      v26 = __swift_project_boxed_opaque_existential_0(&v35, *(&v36 + 1));
      specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v26, &v33, v25);
      __swift_destroy_boxed_opaque_existential_0(&v35);
    }

    outlined init with take of Any(&v33, &v35);
LABEL_14:
    outlined destroy of AnyRegexOutput.Element(&v39);
    v41 = v7;
    v28 = *(v7 + 16);
    v27 = *(v7 + 24);
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
      v7 = v41;
    }

    ++v10;
    *(v7 + 16) = v28 + 1;
    outlined init with take of Any(&v35, (v7 + 32 * v28 + 32));
    if (v10 == v6)
    {
      v4 = a2;
      v3 = a1;
      goto LABEL_18;
    }
  }

  result = outlined destroy of SplitSequence<SubstringSearcher>(&v35, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v12 >= 1)
  {
    v14 = static TypeConstruction.optionalType<A>(of:depth:)();
    makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v14, &v35);
    goto LABEL_14;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t AnyRegexOutput.Element.substring.getter()
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(v0 + 8, &v2, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v3[3] == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(&v2, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    return 0;
  }

  else
  {
    outlined destroy of Any?(v3, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
    return String.subscript.getter();
  }
}

uint64_t AnyRegexOutput.Element.type.getter()
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(v0 + 8, v7, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v8[3] == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(v7, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  }

  else
  {
    outlined init with copy of Any?(v8, &v5);
    if (v6)
    {
      outlined init with take of Any(&v5, &v3);
      __swift_project_boxed_opaque_existential_0(&v3, v4);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(&v3);
      outlined destroy of Any?(v8, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
      return DynamicType;
    }

    outlined destroy of Any?(v8, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
  }

  return static TypeConstruction.optionalType<A>(of:depth:)();
}

uint64_t AnyRegexOutput.Element.name.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

Swift::Int __swiftcall AnyRegexOutput.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall AnyRegexOutput.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t AnyRegexOutput.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v2[2];
  if (*(v4 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v5 = v2[1];
  outlined init with copy of AnyRegexOutput.ElementRepresentation(v4 + 88 * result + 32, a2);
  *(a2 + 88) = v6;
  *(a2 + 96) = v5;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6 < result || v6 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3 - result;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_13:
  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_16;
  }

  if (result > v6)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance AnyRegexOutput@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AnyRegexOutput(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyRegexOutput(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x68uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v2[2];
    if (v7 < *(v8 + 16))
    {
      v10 = *v2;
      v9 = v2[1];
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v8 + 88 * v7 + 32, result);
      *(v6 + 11) = v10;
      *(v6 + 12) = v9;

      return protocol witness for Collection.subscript.read in conformance AnyRegexOutput;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance AnyRegexOutput(void *a1)
{
  v1 = *a1;
  outlined destroy of AnyRegexOutput.Element(*a1);

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance AnyRegexOutput@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = v2[2], *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v5;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance AnyRegexOutput(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance AnyRegexOutput@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 16) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance AnyRegexOutput@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance AnyRegexOutput(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 16) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyRegexOutput(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyRegexOutput(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance AnyRegexOutput@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance AnyRegexOutput(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance AnyRegexOutput@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AnyRegexOutput()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t AnyRegexOutput.subscript.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v5 = v3[2];
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *v3;
    v11 = v5 + 32;

    v13 = 0;
    while (v13 < v7)
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v11, v23);
      *(&v25 + 1) = v10;
      v26 = v6;
      *&v20[16] = v24;
      v21 = v25;
      v22 = v6;
      v17 = v23[0];
      v18 = v23[1];
      v19 = v23[2];
      *v20 = v23[3];
      if (v24 && (*&v20[8] == __PAIR128__(a2, a1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v14 = v21;
        *(a3 + 64) = *&v20[16];
        *(a3 + 80) = v14;
        *(a3 + 96) = v22;
        v15 = v18;
        *a3 = v17;
        *(a3 + 16) = v15;
        v16 = *v20;
        *(a3 + 32) = v19;
        *(a3 + 48) = v16;
        return result;
      }

      ++v13;

      result = outlined destroy of AnyRegexOutput.Element(&v17);
      v7 = *(v5 + 16);
      v11 += 88;
      if (v13 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:

    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t Regex.Match<A>.subscript.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v5 = v3[2];
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *v3;
    v11 = v5 + 32;

    v13 = 0;
    while (v13 < v7)
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v11, v23);
      *(&v25 + 1) = v10;
      v26 = v6;
      *&v20[16] = v24;
      v21 = v25;
      v22 = v6;
      v17 = v23[0];
      v18 = v23[1];
      v19 = v23[2];
      *v20 = v23[3];
      if (v24 && (*&v20[8] == __PAIR128__(a2, a1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v14 = v21;
        *(a3 + 64) = *&v20[16];
        *(a3 + 80) = v14;
        *(a3 + 96) = v22;
        v15 = v18;
        *a3 = v17;
        *(a3 + 16) = v15;
        v16 = *v20;
        *(a3 + 32) = v19;
        *(a3 + 48) = v16;
        return result;
      }

      ++v13;

      result = outlined destroy of AnyRegexOutput.Element(&v17);
      v7 = *(v5 + 16);
      v11 += 88;
      if (v13 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:

    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t Regex<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for SyntaxOptions();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  static SyntaxOptions.traditional.getter();
  lazy protocol witness table accessor for type String and conformance String();
  parse<A>(_:_:)();
  (*(v8 + 8))(v10, v7);
  if (v3)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMd, &_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMR);
  swift_allocObject();
  result = specialized Regex.Program.init(ast:)(v13);
  *a3 = result;
  return result;
}

uint64_t Regex.init(ast:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for Regex.Program(0, a3, a4, a5);
  v7 = swift_allocObject();
  result = specialized Regex.Program.init(ast:)(a1);
  *a2 = v7;
  return result;
}

uint64_t Regex.init(_:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for SyntaxOptions();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AST();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a1;
  v26[1] = a2;
  static SyntaxOptions.traditional.getter();
  lazy protocol witness table accessor for type String and conformance String();
  parse<A>(_:_:)();
  if (v4)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v10 + 8))(v12, v9);

    Regex.init(ast:)(v15, &v27, a3, v17, v18);
    v19 = v27;
    v26[0] = v27;
    v22 = type metadata accessor for Regex(0, a3, v20, v21);
    result = Regex._verifyType()(v22);
    if (result)
    {
      *a4 = v19;
    }

    else
    {
      v24 = v23;

      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      swift_allocError();
      *v25 = a3;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t Regex._verifyType()(uint64_t a1)
{
  v3 = type metadata accessor for CaptureList.Capture();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CaptureList();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11 == &type metadata for AnyRegexOutput)
  {
    return 1;
  }

  v12 = *v1;
  v49 = 0;
  v50 = 0xE000000000000000;
  v44 = *(v12 + 24);
  static CaptureList.Builder.build(_:)(&v44, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = CaptureList.captures.getter();
  result = (*(v8 + 8))(v10, v7);
  v43 = *(v13 + 16);
  if (v43)
  {
    v39 = v12;
    v40 = v11;
    v11 = 0;
    v42 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v41 = v4 + 16;
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v4 + 16))(v6, v42 + *(v4 + 72) * v11, v3);
      v18 = CaptureList.Capture.type.getter();
      v19 = CaptureList.Capture.optionalDepth.getter();
      if (v19)
      {
        break;
      }

      v21 = v18;
LABEL_12:
      v23 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v25 = *(v15 + 2);
      v24 = *(v15 + 3);
      if (v25 >= v24 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v15);
      }

      *(v15 + 2) = v25 + 1;
      *&v15[8 * v25 + 32] = v23;
      v26 = CaptureList.Capture.name.getter();
      v28 = v27;
      (*(v4 + 8))(v6, v3);
      if (v28)
      {
        MEMORY[0x193ACE8E0](v26, v28);
      }

      v11 = (v11 + 1);
      v44 = v49;
      v45 = v50;
      result = String.UnicodeScalarView.append(_:)();
      v17 = v44;
      v16 = v45;
      v49 = v44;
      v50 = v45;
      if (v11 == v43)
      {

        v12 = v39;
        v11 = v40;
        goto LABEL_21;
      }
    }

    v20 = v19;
    while (1)
    {
      v21 = static TypeConstruction.optionalType(of:)();
      if (__OFSUB__(v20--, 1))
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
    v16 = 0xE000000000000000;
    v15 = MEMORY[0x1E69E7CC0];
LABEL_21:
    if (*(v15 + 2) == 1)
    {

      v29 = DSLTree.Node.outputDefiningNode.getter(*(v12 + 24));
      v30 = (v29 >> 59) & 0x1E | (v29 >> 2) & 1;
      v31 = v29 & 0xFFFFFFFFFFFFFFBLL;
      if (v30 == 14)
      {
        v32 = *(v31 + 16);
      }

      else
      {
        v32 = MEMORY[0x1E69E67B0];
      }

      return v11 == v32;
    }

    v33 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v33 = v17 & 0xFFFFFFFFFFFFLL;
    }

    v44 = v17;
    v45 = v16;
    v46 = 0;
    v47 = v33;
    v48 = v15;

    v36 = String.Iterator.next()();
    object = v36.value._object;
    countAndFlagsBits = v36.value._countAndFlagsBits;
    if (v36.value._object)
    {
      do
      {
        if (countAndFlagsBits == 32 && object == 0xE100000000000000)
        {
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v37 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v38 = String.Iterator.next()();
        object = v38.value._object;
        countAndFlagsBits = v38.value._countAndFlagsBits;
      }

      while (v38.value._object);
    }
  }

LABEL_37:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypXpGMd, &_sSayypXpGMR);
  lazy protocol witness table accessor for type [Any.Type] and conformance [A](&lazy protocol witness table cache variable for type [Any.Type] and conformance [A], &_sSayypXpGMd, &_sSayypXpGMR, MEMORY[0x1E69E6310]);
  v32 = static TypeConstruction.tupleType<A>(of:labels:)();

  return v11 == v32;
}