uint64_t specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = (a2 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v6 = v5[10];
  v22 = *(v6 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0;
    v9[40] = 1;
    v5[10] = v6;
    v10 = *(a1 + 16);

    if (v10 < 2)
    {
      break;
    }

    v15 = v10 - 1;
    v8 = 32;
    while (v15)
    {
      v16 = *(a1 + v8);
      v18 = *(v6 + 2);
      v17 = *(v6 + 3);

      if (v18 >= v17 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v6);
      }

      *(v6 + 2) = v18 + 1;
      v19 = &v6[16 * v18];
      *(v19 + 4) = 0;
      v19[40] = 1;
      v5[10] = v6;
      MEProgram.Builder.buildSave(_:)(v18, 0x1100000000000000);
      Compiler.ByteCodeGen.emitNode(_:)(v16);
      if (v3)
      {
        swift_unknownObjectRelease();
      }

      MEProgram.Builder.buildSave(_:)(v22, 0x400000000000000);
      v20 = *(*v5 + 16);
      v6 = v5[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      }

      if (v18 >= *(v6 + 2))
      {
        goto LABEL_23;
      }

      v21 = &v6[16 * v18];
      *(v21 + 4) = v20;
      v21[40] = 0;
      v5[10] = v6;
      v8 += 8;
      if (!--v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v6);
  }

LABEL_5:
  swift_unknownObjectRelease();
  v11 = *(a1 + 16);
  if (!v11)
  {
    __break(1u);
LABEL_26:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    goto LABEL_8;
  }

  v12 = *(a1 + 8 * v11 + 24);

  Compiler.ByteCodeGen.emitNode(_:)(v12);

  if (v3)
  {
    return result;
  }

  v8 = *(*v5 + 16);
  v6 = v5[10];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if (v22 >= *(v6 + 2))
  {
    __break(1u);
  }

  else
  {
    v14 = &v6[16 * v22];
    *(v14 + 4) = v8;
    v14[40] = 0;
    v5[10] = v6;
  }

  return result;
}

{
  v3 = v2;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOSgMd, &_s17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v35 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v44 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
  v43 = a2;
  v11 = (a2 + v10);
  v12 = *(a2 + v10 + 80);
  v42 = *(v12 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v36 = v7;
    if (v14 >= v13 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[16 * v14];
    *(v15 + 4) = 0;
    v15[40] = 1;
    v11[10] = v12;
    v37 = specialized Collection.dropLast(_:)(1uLL, v38);
    v41 = v16;
    v18 = v17;
    v20 = v19 >> 1;

    if (v18 == v20)
    {
      break;
    }

    if (v18 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v18;
    }

    v39 = v20;
    v40 = v26;
    while (v40 != v18)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v41 + *(v44 + 72) * v18, v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v28 = *(v12 + 2);
      v27 = *(v12 + 3);
      if (v28 >= v27 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v12);
      }

      *(v12 + 2) = v28 + 1;
      v29 = &v12[16 * v28];
      *(v29 + 4) = 0;
      v29[40] = 1;
      v11[10] = v12;
      MEProgram.Builder.buildSave(_:)(v28, 0x1100000000000000);
      Compiler.ByteCodeGen.emitCCCMember(_:)(v9);
      if (v3)
      {
        outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        return swift_unknownObjectRelease();
      }

      outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v30 = *v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      *(v30 + 2) = v32 + 1;
      *&v30[8 * v32 + 32] = 0x1300000000000000;
      *v11 = v30;
      MEProgram.Builder.buildSave(_:)(v42, 0x400000000000000);
      v7 = *(*v11 + 2);
      v12 = v11[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      }

      if (v28 >= *(v12 + 2))
      {
        goto LABEL_31;
      }

      v33 = &v12[16 * v28];
      *(v33 + 4) = v7;
      ++v18;
      v33[40] = 0;
      v11[10] = v12;
      if (v39 == v18)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42 + 1, 1, v12);
  }

LABEL_5:
  swift_unknownObjectRelease();
  v21 = v36;
  specialized BidirectionalCollection.last.getter(v38, v36);
  result = (*(v44 + 48))(v21, 1, v35);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  Compiler.ByteCodeGen.emitCCCMember(_:)(v21);
  result = outlined destroy of MEProgram(v21, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  if (!v3)
  {
    v23 = *(*v11 + 2);
    v24 = v11[10];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      v24 = result;
    }

    if (v42 < *(v24 + 16))
    {
      v25 = v24 + 16 * v42;
      *(v25 + 32) = v23;
      *(v25 + 40) = 0;
      v11[10] = v24;
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (a3 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v5 = v4[10];
  v6 = *(v5 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    v32 = v6;
    if (v8 >= v7 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = 0;
    v9[40] = 1;
    v4[10] = v5;

    v30 = a1;
    v10 = specialized Collection.dropLast(_:)(1, a1, a2, specialized Collection.count.getter, String.UnicodeScalarView.index(_:offsetBy:limitedBy:), MEMORY[0x1E69E60C0]);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    if (v12 >> 14 == v10 >> 14)
    {
      break;
    }

    v20 = v10;
    while (1)
    {
      _StringGuts.validateScalarIndex(_:in:)(v20, v10, v12, v14, v16);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v21 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v16 & 0x2000000000000000) == 0 && (v14 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v21 = _decodeScalar(_:startingAt:)();
      }

      v22 = v21;
      Substring.UnicodeScalarView.formIndex(after:)();
      a1 = *(v5 + 2);
      v23 = *(v5 + 3);
      if (a1 >= v23 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), a1 + 1, 1, v5);
      }

      *(v5 + 2) = a1 + 1;
      v6 = 16 * a1;
      v24 = &v5[16 * a1];
      *(v24 + 4) = 0;
      v24[40] = 1;
      v4[10] = v5;
      MEProgram.Builder.buildSave(_:)(a1, 0x1100000000000000);
      Compiler.ByteCodeGen.emitMatchScalar(_:)(v22);
      v25 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      *(v25 + 2) = v27 + 1;
      *&v25[8 * v27 + 32] = 0x1300000000000000;
      *v4 = v25;
      MEProgram.Builder.buildSave(_:)(v32, 0x400000000000000);
      v28 = *(*v4 + 2);
      v5 = v4[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      if (a1 >= *(v5 + 2))
      {
        break;
      }

      v29 = &v5[v6];
      *(v29 + 4) = v28;
      v29[40] = 0;
      v4[10] = v5;
      v20 = v10;
      if (v12 >> 14 == v10 >> 14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_29:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v5);
  }

LABEL_5:

  result = specialized BidirectionalCollection.last.getter(v30, a2);
  if ((result & 0x100000000) == 0)
  {
    Compiler.ByteCodeGen.emitMatchScalar(_:)(result);
    v18 = *(*v4 + 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
    }

    if (v32 < *(v5 + 2))
    {
      v19 = &v5[16 * v32];
      *(v19 + 4) = v18;
      v19[40] = 0;
      v4[10] = v5;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.dropLast(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
    return a2;
  }

  return result;
}

uint64_t MEProgram.Builder.buildSave(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = a2;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v2 + 88) = v8;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitNoncapturingGroup(_:_:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v84 = a2;
  v6 = type metadata accessor for AST.MatchingOptionSequence();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Group.Kind();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 2);
  if (!v13)
  {
    __break(1u);
    goto LABEL_117;
  }

  v83 = v3;
  v4 = *&v12[4 * v13 + 28];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = v2;
  v80 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_117:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 + 1, 1, v12);
  }

  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  if (v16 >= v15 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
  }

  *(v12 + 2) = v16 + 1;
  v79 = v12 + 32;
  *&v12[4 * v16 + 32] = v4;
  v17 = v85;
  *v85 = v12;
  LOWORD(result) = AST.Group.Kind.lookaroundKind.getter();
  if (result == 2)
  {
    (*(v9 + 16))(v11, a1, v8);
    LODWORD(result) = (*(v9 + 88))(v11, v8);
    if (result == *MEMORY[0x1E69E8E10] || result == *MEMORY[0x1E69E8E20])
    {
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      if (result == *MEMORY[0x1E69E8E58])
      {
        (*(v9 + 96))(v11, v8);
        v16 = v81;
        v43 = v80;
        (*(v81 + 32))(v82, v11, v80);
        v44 = type metadata accessor for Compiler.ByteCodeGen(0);
        if (*(v17 + *(v44 + 24)))
        {
          goto LABEL_39;
        }

        v45 = v17 + *(v44 + 20);
        v32 = *(type metadata accessor for MEProgram.Builder(0) + 88);
        v46 = *(v45 + v32);
        v22 = *(v46 + 2);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v22)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
          if (v22)
          {
LABEL_37:
            if (v22 <= *(v46 + 2))
            {
              MatchingOptions.Representation.apply(_:)(v82);
              *(v45 + v32) = v46;
LABEL_39:
              if (*(v12 + 2))
              {
                v47 = v82;
                MatchingOptions.Representation.apply(_:)(v82);
                v48 = *(v16 + 8);
                v16 += 8;
                v48(v47, v43);
                *v17 = v12;
                v49 = v83;
                Compiler.ByteCodeGen.emitNode(_:)(v84);
                v32 = v49;
                if (!v49)
                {
                  goto LABEL_112;
                }

                v12 = *v17;
                if (*(*v17 + 16))
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (result)
                  {
                    v20 = *(v12 + 2);
                    if (v20)
                    {
                      goto LABEL_79;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_124:
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
                  v12 = result;
                  v20 = *(result + 16);
                  if (v20)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
                __break(1u);
              }

              __break(1u);
              goto LABEL_124;
            }

LABEL_128:
            __break(1u);
            goto LABEL_129;
          }
        }

        __break(1u);
        goto LABEL_128;
      }

      if (result != *MEMORY[0x1E69E8E60])
      {
        if (result != *MEMORY[0x1E69E8E38])
        {
          goto LABEL_84;
        }

        v12 = (v17 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
        v58 = *(v12 + 10);
        v16 = *(v58 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 + 1, 1, v58);
        }

        v60 = *(v58 + 2);
        v59 = *(v58 + 3);
        v17 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58);
        }

        *(v58 + 2) = v17;
        v61 = &v58[16 * v60];
        *(v61 + 4) = 0;
        v61[40] = 1;
        *(v12 + 10) = v58;
        v62 = *(v58 + 3);
        v63 = v60 + 2;
        if ((v60 + 2) > (v62 >> 1))
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v60 + 2, 1, v58);
        }

        v9 = v84;
        *(v58 + 2) = v63;
        v11 = (16 * v17);
        v64 = &v58[16 * v17];
        *(v64 + 4) = 0;
        v64[40] = 1;
        *(v12 + 10) = v58;
        MEProgram.Builder.buildSave(_:)(v17, 0x1200000000000000);
        MEProgram.Builder.buildSave(_:)(v16, 0x1100000000000000);
        v65 = v83;
        Compiler.ByteCodeGen.emitNode(_:)(v9);
        v32 = v65;
        if (!v65)
        {
          goto LABEL_95;
        }

        v17 = v85;
        goto LABEL_107;
      }
    }

    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988], MEMORY[0x1E69E8990]);
    swift_allocError();
    MEMORY[0x193ACDEF0](0xD000000000000023, 0x800000018E5F2C80, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 486);
    result = swift_willThrow();
    v20 = *(v12 + 2);
    if (v20)
    {
      goto LABEL_79;
    }

    __break(1u);
  }

  v21 = result;
  if ((result & 1) == 0)
  {
LABEL_45:
    v22 = type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
    swift_allocError();
    MEMORY[0x193ACDF10](0xD000000000000014, 0x800000018E5F2CB0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 408);
    swift_willThrow();
    goto LABEL_76;
  }

  v12 = (v17 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v22 = *(v12 + 10);
  v17 = *(v22 + 2);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  if ((v21 & 0x100) == 0)
  {
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_121;
  }

  if ((v23 & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 + 1, 1, v22);
  }

  v51 = *(v22 + 2);
  v50 = *(v22 + 3);
  v16 = v51 + 1;
  if (v51 >= v50 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v22);
  }

  *(v22 + 2) = v16;
  v52 = &v22[16 * v51];
  *(v52 + 4) = 0;
  v52[40] = 1;
  *(v12 + 10) = v22;
  v53 = *(v22 + 3);
  v54 = v51 + 2;
  if ((v51 + 2) > (v53 >> 1))
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v51 + 2, 1, v22);
  }

  v55 = v84;
  *(v22 + 2) = v54;
  v11 = (16 * v16);
  v56 = &v22[16 * v16];
  *(v56 + 4) = 0;
  v56[40] = 1;
  *(v12 + 10) = v22;
  MEProgram.Builder.buildSave(_:)(v16, 0x1100000000000000);
  MEProgram.Builder.buildSave(_:)(v17, 0x1100000000000000);
  v22 = v85;
  v57 = v83;
  Compiler.ByteCodeGen.emitNode(_:)(v55);
  v32 = v57;
  if (!v57)
  {
    MEProgram.Builder.buildSave(_:)(v17, 0x1400000000000000);
    v22 = *v12;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_65;
    }

    goto LABEL_134;
  }

LABEL_53:
  v17 = v85;
  do
  {
LABEL_76:
    v12 = *v17;
    if (*(*v17 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v20 = *(v12 + 2);
        if (v20)
        {
          goto LABEL_79;
        }

        goto LABEL_120;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v12 = result;
    v20 = *(result + 16);
    if (v20)
    {
      goto LABEL_79;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 + 1, 1, v22);
LABEL_17:
    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v16 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v16;
    v26 = &v22[16 * v25];
    *(v26 + 4) = 0;
    v26[40] = 1;
    *(v12 + 10) = v22;
    v27 = *(v22 + 3);
    v28 = v25 + 2;
    if ((v25 + 2) > (v27 >> 1))
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v25 + 2, 1, v22);
    }

    v29 = v84;
    *(v22 + 2) = v28;
    v11 = (16 * v16);
    v30 = &v22[16 * v16];
    *(v30 + 4) = 0;
    v30[40] = 1;
    *(v12 + 10) = v22;
    MEProgram.Builder.buildSave(_:)(v16, 0x1100000000000000);
    MEProgram.Builder.buildSave(_:)(v17, 0x1100000000000000);
    v22 = v85;
    v31 = v83;
    Compiler.ByteCodeGen.emitNode(_:)(v29);
    v32 = v31;
    if (v31)
    {
      goto LABEL_53;
    }

    MEProgram.Builder.buildSave(_:)(v17, 0x1400000000000000);
    v22 = *v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_132:
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v34 = *(v22 + 2);
    v33 = *(v22 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v22 + 2) = v35;
    *&v22[8 * v34 + 32] = 0x1300000000000000;
    *v12 = v22;
    v36 = *(v22 + 3);
    v37 = v34 + 2;
    if ((v34 + 2) > (v36 >> 1))
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v34 + 2, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v22 + 2) = v37;
    *&v22[8 * v35 + 32] = 0x1D00000000000000;
    *v12 = v22;
    v38 = *(v12 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
    }

    if (v17 < *(v38 + 2))
    {
      v9 = (v38 + 32);
      v39 = &v38[16 * v17 + 32];
      *v39 = v37;
      *(v39 + 8) = 0;
      *(v12 + 10) = v38;
      v8 = *(v22 + 2);
      v40 = *(v22 + 3);
      v17 = v8 + 1;
      if (v8 < v40 >> 1)
      {
LABEL_31:
        *(v22 + 2) = v17;
        *&v22[8 * v8 + 32] = 0x1D00000000000000;
        *v12 = v22;
        v41 = *(v38 + 2);
        if (v16 < v41)
        {
          v42 = &v11[v9];
          *&v11[v9] = v17;
          goto LABEL_75;
        }

        __break(1u);
LABEL_138:
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v17, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        goto LABEL_71;
      }

LABEL_136:
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v17, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      goto LABEL_31;
    }

    __break(1u);
LABEL_134:
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_65:
    v9 = *(v22 + 2);
    v66 = *(v22 + 3);
    v8 = v9 + 1;
    if (v9 >= v66 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v9 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v22 + 2) = v8;
    *&v22[8 * v9 + 32] = 0x1D00000000000001;
    *v12 = v22;
    v38 = *(v12 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
    }

    v40 = *(v38 + 2);
    if (v17 >= v40)
    {
      __break(1u);
      goto LABEL_136;
    }

    v9 = (v38 + 32);
    v67 = &v38[16 * v17 + 32];
    *v67 = v8;
    *(v67 + 8) = 0;
    *(v12 + 10) = v38;
    v8 = *(v22 + 2);
    v41 = *(v22 + 3);
    v17 = v8 + 1;
    if (v8 >= v41 >> 1)
    {
      goto LABEL_138;
    }

LABEL_71:
    *(v22 + 2) = v17;
    *&v22[8 * v8 + 32] = 0x1300000000000000;
    *v12 = v22;
    v68 = *(v22 + 3);
    v8 += 2;
    if (v8 > (v68 >> 1))
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v8, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v22 + 2) = v8;
    *&v22[8 * v17 + 32] = 0x1D00000000000000;
    *v12 = v22;
    if (v16 >= *(v38 + 2))
    {
      __break(1u);
      goto LABEL_140;
    }

    v42 = &v11[v9];
    *&v11[v9] = v8;
LABEL_75:
    v42[8] = 0;
    *(v12 + 10) = v38;
    v17 = v85;
  }

  while (v32);
  v22 = *v85;
  if (!*(*v85 + 16))
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v69 = *(v22 + 2);
    if (v69)
    {
      goto LABEL_115;
    }

    goto LABEL_83;
  }

LABEL_141:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
  v22 = result;
  v69 = *(result + 16);
  if (v69)
  {
LABEL_115:
    *(v22 + 2) = v69 - 1;
    *v17 = v22;
    return result;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  if (result != *MEMORY[0x1E69E8E68] && result != *MEMORY[0x1E69E8E30] && result != *MEMORY[0x1E69E8E00] && result != *MEMORY[0x1E69E8E40])
  {
    v70 = v83;
    Compiler.ByteCodeGen.emitNode(_:)(v84);
    v32 = v70;
    if (v70)
    {
      (*(v9 + 8))(v11, v8);
      v12 = *v17;
      if (!*(*v17 + 16))
      {
        goto LABEL_149;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_150;
      }

      v20 = *(v12 + 2);
      if (!v20)
      {
        goto LABEL_92;
      }

      goto LABEL_79;
    }

LABEL_111:
    (*(v9 + 8))(v11, v8);
LABEL_112:
    v22 = *v17;
    if (*(*v17 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v69 = *(v22 + 2);
        if (v69)
        {
          goto LABEL_115;
        }

LABEL_131:
        __break(1u);
        goto LABEL_132;
      }
    }

    else
    {
LABEL_129:
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
    v22 = result;
    v69 = *(result + 16);
    if (v69)
    {
      goto LABEL_115;
    }

    goto LABEL_131;
  }

  while (2)
  {
    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988], MEMORY[0x1E69E8990]);
    v32 = swift_allocError();
    MEMORY[0x193ACDEF0](0x6572203A4F444F54, 0xEC0000006E6F7361, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 483);
    result = swift_willThrow();
    v20 = *(v12 + 2);
    if (v20)
    {
      goto LABEL_79;
    }

    __break(1u);
LABEL_95:
    MEProgram.Builder.buildSave(_:)(v16, 0x1400000000000000);
    v71 = *v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1, v71, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v9 = *(v71 + 2);
    v72 = *(v71 + 3);
    v73 = v9 + 1;
    if (v9 >= v72 >> 1)
    {
      v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v9 + 1, 1, v71, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v71 + 2) = v73;
    *&v71[8 * v9 + 32] = 0x1D00000000000001;
    *v12 = v71;
    v74 = *(v12 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew()(v74);
    }

    v75 = *(v74 + 2);
    if (v16 >= v75)
    {
      __break(1u);
    }

    else
    {
      v9 = (v74 + 32);
      v76 = &v74[16 * v16 + 32];
      *v76 = v73;
      *(v76 + 8) = 0;
      *(v12 + 10) = v74;
      v73 = *(v71 + 2);
      v75 = *(v71 + 3);
      v16 = v73 + 1;
      if (v73 < v75 >> 1)
      {
        goto LABEL_103;
      }
    }

    v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v16, 1, v71, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_103:
    *(v71 + 2) = v16;
    *&v71[8 * v73 + 32] = 0x1300000000000000;
    *v12 = v71;
    v77 = *(v71 + 3);
    v8 = v73 + 2;
    if (v8 > (v77 >> 1))
    {
      v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v8, 1, v71, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v71 + 2) = v8;
    *&v71[8 * v16 + 32] = 0x1D00000000000000;
    *v12 = v71;
    if (v17 >= *(v74 + 2))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      v12 = result;
      v20 = *(result + 16);
      if (v20)
      {
        goto LABEL_79;
      }

LABEL_92:
      __break(1u);
      continue;
    }

    break;
  }

  v78 = &v11[v9];
  *v78 = v8;
  v78[8] = 0;
  *(v12 + 10) = v74;
  v17 = v85;
  if (!v32)
  {
    goto LABEL_112;
  }

LABEL_107:
  v12 = *v17;
  if (*(*v17 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = *(v12 + 2);
      if (v20)
      {
        goto LABEL_79;
      }

      goto LABEL_110;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
  v12 = result;
  v20 = *(result + 16);
  if (!v20)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_79:
  *(v12 + 2) = v20 - 1;
  *v17 = v12;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitQuantification(_:_:_:)(uint64_t a1, char *a2, unint64_t a3)
{
  v95 = a3;
  v5 = type metadata accessor for DSLTree._AST.QuantificationKind(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DSLTree.QuantificationKind(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AST.Quantification.Kind();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v93 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v77[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v77[-v18];
  outlined init with copy of DSLTree._AST.AbsentFunction(a2, v10, type metadata accessor for DSLTree.QuantificationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of DSLTree.QuantificationKind(v10, v7, type metadata accessor for DSLTree._AST.QuantificationKind);
      v21 = v100;
      AST.Quantification.Kind.applying(_:)(*v100, v19);
      outlined destroy of MEProgram(v7, type metadata accessor for DSLTree._AST.QuantificationKind);
    }

    else
    {
      v21 = v100;
      MatchingOptions.defaultQuantificationKind.getter(*v100, v19);
    }
  }

  else
  {
    outlined init with take of DSLTree.QuantificationKind(v10, v7, type metadata accessor for DSLTree._AST.QuantificationKind);
    (*(v12 + 32))(v19, v7, v11);
    v21 = v100;
  }

  v22 = a1;
  v23 = AST.Quantification.Amount.bounds.getter();
  if (v27)
  {
    (*(v12 + 8))(v19, v11);
    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988], MEMORY[0x1E69E8990]);
    swift_allocError();
    MEMORY[0x193ACDEF0](0xD000000000000017, 0x800000018E5F2CD0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 521);
    return swift_willThrow();
  }

  v29 = v23;
  v30 = v24;
  if ((v25 & 1) == 0)
  {
    if (!v24)
    {
      return (*(v12 + 8))(v19, v11);
    }

    v30 = v24 - v23;
    if (v24 < v23)
    {
      return (*(v12 + 8))(v19, v11);
    }

    if (__OFSUB__(v24, v23))
    {
      __break(1u);
      goto LABEL_106;
    }
  }

  v31 = v25;
  if (Compiler.ByteCodeGen.tryEmitFastQuant(_:_:_:_:)(v95, v19, v23, v30, v25 & 1))
  {
    return (*(v12 + 8))(v19, v11);
  }

  v89 = v31;
  v87 = v30;
  v32 = type metadata accessor for Compiler.ByteCodeGen(0);
  v30 = v21 + *(v32 + 20);
  a2 = *(v30 + 80);
  v86 = *(a2 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86 + 1, 1, a2);
  }

  v35 = *(a2 + 2);
  v34 = *(a2 + 3);
  v92 = v35 + 1;
  v88 = v29;
  if (v35 >= v34 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v92, 1, a2);
  }

  *(a2 + 2) = v92;
  v36 = &a2[16 * v35];
  *(v36 + 4) = 0;
  v36[40] = 1;
  *(v30 + 80) = a2;
  v37 = *(a2 + 3);
  v91 = v35 + 2;
  if ((v35 + 2) > (v37 >> 1))
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v91, 1, a2);
  }

  v38 = v92;
  *(a2 + 2) = v91;
  v84 = 16 * v38;
  v39 = &a2[16 * v38];
  *(v39 + 4) = 0;
  v39[40] = 1;
  *(v30 + 80) = a2;
  v40 = *(a2 + 3);
  v90 = v35 + 3;
  if ((v35 + 3) > (v40 >> 1))
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v90, 1, a2);
  }

  v41 = v91;
  *(a2 + 2) = v90;
  v80 = 16 * v41;
  v42 = &a2[16 * v41];
  *(v42 + 4) = 0;
  v42[40] = 1;
  *(v30 + 80) = a2;
  v43 = *(a2 + 3);
  v44 = (v35 + 4);
  if (v44 > (v43 >> 1))
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44, 1, a2);
  }

  v82 = 0;
  *(a2 + 2) = v44;
  v79 = 16 * v90;
  v45 = &a2[16 * v90];
  *(v45 + 4) = 0;
  v45[40] = 1;
  *(v30 + 80) = a2;
  v46 = v88;
  if (v88 < 2)
  {
    goto LABEL_30;
  }

  v47 = *(v30 + 96);
  if (__OFADD__(v47, 1))
  {
    goto LABEL_100;
  }

  *(v30 + 96) = v47 + 1;
  v82 = v47;
  v83 = (v46 | (v47 << 16) | 0x100000000000000);
  v44 = *v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v49 = *(v44 + 2);
    v48 = *(v44 + 3);
    if (v49 >= v48 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v44 + 2) = v49 + 1;
    *&v44[8 * v49 + 32] = v83;
    *v30 = v44;
    v21 = v100;
LABEL_30:
    v81 = 0;
    if ((v89 & 1) == 0 && v87 >= 1)
    {
      v50 = *(v30 + 96);
      if (__OFADD__(v50, 1))
      {
        goto LABEL_101;
      }

      *(v30 + 96) = v50 + 1;
      v81 = v50;
      v83 = (v87 | (v50 << 16) | 0x100000000000000);
      v51 = *v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v51, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      *(v51 + 2) = v53 + 1;
      *&v51[8 * v53 + 32] = v83;
      *v30 = v51;
      v21 = v100;
    }

    v54 = *(v12 + 104);
    v78 = *MEMORY[0x1E69E8A80];
    v54(v17);
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98], MEMORY[0x1E69E8AA8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v55 = *(v12 + 8);
    v100 = (v12 + 8);
    v83 = v55;
    v55(v17, v11);
    if (v98 == v96 && v99 == v97)
    {

      v56 = v88;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v56 = v88;
      if ((v17 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if (*(v30 + 152) == 1)
    {
      v23 = *(a2 + 2);
      v26 = *(a2 + 3);
      v22 = v23 + 1;
      if (v23 >= v26 >> 1)
      {
LABEL_106:
        v76 = v23;
        a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v22, 1, a2);
        v23 = v76;
        v56 = v88;
      }

      *(a2 + 2) = v22;
      v57 = &a2[16 * v23];
      *(v57 + 4) = 0;
      v57[40] = 1;
      *(v30 + 80) = a2;
      *(v30 + 144) = v23;
      *(v30 + 152) = 0;
    }

    else
    {
      v23 = *(v30 + 144);
    }

    MEProgram.Builder.buildSave(_:)(v23, 0x1200000000000000);
LABEL_47:
    a2 = *(*v30 + 16);
    v44 = *(v30 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
    }

    if (v86 >= *(v44 + 2))
    {
      __break(1u);
LABEL_98:
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      goto LABEL_56;
    }

    v58 = &v44[16 * v86];
    *(v58 + 4) = a2;
    v58[40] = 0;
    *(v30 + 80) = v44;
    if (v56 != 1)
    {
      if (v56)
      {
        if (v56 < 2)
        {
          __break(1u);
          goto LABEL_112;
        }

        MEProgram.Builder.buildCondBranch(to:ifZeroElseDecrement:)(v91, v82);
      }

      else
      {
        MEProgram.Builder.buildSave(_:)(v91, 0x400000000000000);
      }
    }

    v44 = *v30;
    v56 = *(*v30 + 16);
    a2 = *(v30 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_98;
    }

LABEL_56:
    if (v92 < *(a2 + 2))
    {
      break;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v59 = &a2[v84];
  *(v59 + 4) = v56;
  v59[40] = 0;
  *(v30 + 80) = a2;
  if ((*(v21 + *(v85 + 28)) & 1) == 0)
  {
    v60 = DSLTree.Node.guaranteesForwardProgress.getter(v95);
    v85 = 0;
    v61 = (v60 ^ 1) & v89;
    v62 = 1;
    if ((v60 & 1) != 0 || (v89 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_62:
    v63 = *(v30 + 112);
    if (__OFADD__(v63, 1))
    {
      __break(1u);
    }

    else
    {
      *(v30 + 112) = v63 + 1;
      v84 = v63 | 0x200000000000000;
      v85 = v63;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_64:
        v65 = *(v44 + 2);
        v64 = *(v44 + 3);
        if (v65 >= v64 >> 1)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v62 = 0;
        *(v44 + 2) = v65 + 1;
        *&v44[8 * v65 + 32] = v84;
        *v30 = v44;
        v61 = v89;
LABEL_67:
        v66 = v94;
        Compiler.ByteCodeGen.emitNode(_:)(v95);
        if (!v66)
        {
          if ((v61 & 1) == 0)
          {
            goto LABEL_74;
          }

          if ((v62 & 1) == 0)
          {
            MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(v90, v85);
            goto LABEL_74;
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        return v83(v19, v11);
      }
    }

    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    goto LABEL_64;
  }

  if (v89)
  {
    goto LABEL_62;
  }

  v67 = v94;
  Compiler.ByteCodeGen.emitNode(_:)(v95);
  if (v67)
  {
    return v83(v19, v11);
  }

LABEL_74:
  if (v88 >= 2)
  {
    MEProgram.Builder.buildSave(_:)(v86, 0x400000000000000);
  }

  v68 = *(*v30 + 16);
  v69 = *(v30 + 80);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = specialized _ArrayBuffer._consumeAndCreateNew()(v69);
  }

  if (v91 >= *(v69 + 2))
  {
    __break(1u);
    goto LABEL_108;
  }

  v70 = &v69[v80];
  *(v70 + 4) = v68;
  v70[40] = 0;
  *(v30 + 80) = v69;
  if ((v89 & 1) == 0)
  {
    if (v87)
    {
      if (v87 < 1)
      {
        goto LABEL_113;
      }

      MEProgram.Builder.buildCondBranch(to:ifZeroElseDecrement:)(v90, v81);
    }

    else
    {
      MEProgram.Builder.buildSave(_:)(v90, 0x400000000000000);
    }
  }

  v71 = v93;
  (*(v12 + 16))(v93, v19, v11);
  v72 = (*(v12 + 88))(v71, v11);
  if (v72 != *MEMORY[0x1E69E8A88])
  {
    if (v72 == *MEMORY[0x1E69E8A90])
    {
      v83(v19, v11);
      MEProgram.Builder.buildSave(_:)(v92, 0x1100000000000000);
      goto LABEL_94;
    }

    if (v72 == v78)
    {
      v83(v19, v11);
      v69 = *v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_90;
      }

      goto LABEL_110;
    }

    goto LABEL_114;
  }

  v83(v19, v11);
  while (1)
  {
    MEProgram.Builder.buildSplit(to:saving:)(v92, v90);
LABEL_94:
    v12 = *(*v30 + 16);
    v69 = *(v30 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_108:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v69);
      v69 = result;
    }

    if (v90 < *(v69 + 2))
    {
      break;
    }

    __break(1u);
LABEL_110:
    v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_90:
    v74 = *(v69 + 2);
    v73 = *(v69 + 3);
    if (v74 >= v73 >> 1)
    {
      v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v69, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v69 + 2) = v74 + 1;
    *&v69[8 * v74 + 32] = 0x1300000000000000;
    *v30 = v69;
  }

  v75 = &v69[v79];
  *(v75 + 4) = v12;
  v75[40] = 0;
  *(v30 + 80) = v69;
  return result;
}

uint64_t AST.Quantification.Kind.applying(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for AST.Quantification.Kind();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    __break(1u);
    return result;
  }

  v23 = a2;
  if ((*(a1 + 4 * v14 + 28) & 0x20) == 0)
  {
    return (*(v7 + 16))(v23, v3, v6);
  }

  v15 = *(v7 + 104);
  v15(&v22 - v12, *MEMORY[0x1E69E8A80], v6);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98], MEMORY[0x1E69E8AA0]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v13, v6);
  if (v16)
  {
    return (*(v7 + 16))(v23, v3, v6);
  }

  v18 = *MEMORY[0x1E69E8A88];
  v22 = v15;
  v15(v10, v18, v6);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98], MEMORY[0x1E69E8AA8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17(v10, v6);
  if (v26 == v24 && v27 == v25)
  {

    v19 = v23;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v23;
    if ((v20 & 1) == 0)
    {
      v21 = v18;
      return v22(v19, v21, v6);
    }
  }

  v21 = *MEMORY[0x1E69E8A90];
  return v22(v19, v21, v6);
}

uint64_t MatchingOptions.defaultQuantificationKind.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 4 * v3 + 28);
    if ((v4 & 0x80000) != 0)
    {
      v8 = *MEMORY[0x1E69E8A80];
      v9 = type metadata accessor for AST.Quantification.Kind();
      v6 = *(*(v9 - 8) + 104);
      v5 = v9;
      v10 = a2;
      v11 = v8;
    }

    else
    {
      v5 = type metadata accessor for AST.Quantification.Kind();
      v6 = *(*(v5 - 8) + 104);
      if ((v4 & 0x20) != 0)
      {
        v7 = MEMORY[0x1E69E8A90];
      }

      else
      {
        v7 = MEMORY[0x1E69E8A88];
      }

      v11 = *v7;
      v10 = a2;
    }

    return v6(v10, v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Compiler.ByteCodeGen.tryEmitFastQuant(_:_:_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v208 = a5;
  v209 = a3;
  v207 = a2;
  v204 = a1;
  v8 = type metadata accessor for AST.Group.Kind();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v201 = &v178[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DSLTree._AST.GroupKind(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v200 = &v178[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Unicode.Scalar.Properties();
  v188 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v187 = &v178[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v198 = type metadata accessor for DSLTree.Atom(0);
  v15 = MEMORY[0x1EEE9AC00](v198);
  v199 = &v178[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v202 = &v178[-v17];
  v18 = type metadata accessor for AST.Quantification.Kind();
  v205 = *(v18 - 8);
  v206 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v193 = &v178[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v194 = &v178[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v190 = &v178[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v178[-v27];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v192 = &v178[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v178[-v32];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v191 = &v178[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v183 = &v178[-v38];
  v39 = MEMORY[0x1EEE9AC00](v37);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v186 = &v178[-v41];
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v178[-v43];
  v45 = MEMORY[0x1EEE9AC00](v42);
  v195 = &v178[-v46];
  v47 = MEMORY[0x1EEE9AC00](v45);
  v52 = &v178[-v51];
  v53 = *v6;
  v54 = (*v6)[2];
  if (!v54)
  {
    __break(1u);
    goto LABEL_133;
  }

  v189 = v50;
  v182 = v49;
  v185 = v13;
  v196 = v9;
  v197 = v8;
  v184 = v48;
  v55 = (v53 + 4);
  v56 = *(v53 + v54 + 7);
  v57 = 0;
  v58 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 28);
  v203 = v6;
  if ((*(v6 + v58) & 1) != 0 || v209 > 255 || !(v208 & 1 | (a4 < 256)))
  {
    return v57 & 1;
  }

  v181 = a4;
  v59 = v205;
  v60 = *(v205 + 104);
  v179 = *MEMORY[0x1E69E8A90];
  v61 = v206;
  v60(v52);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98], MEMORY[0x1E69E8AA0]);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v59 + 8);
  v64 = v61;
  v180 = v59 + 8;
  a4 = v63;
  v63(v52, v64);
  if (v62)
  {
    goto LABEL_6;
  }

  v57 = 0;
  v13 = *&v56 & 0x10000;
  v66 = (v204 >> 59) & 0x1E | (v204 >> 2) & 1;
  if (v66 > 7)
  {
    v86 = v209;
    if (v66 != 8)
    {
      if (v66 != 12)
      {
        return v57 & 1;
      }

      v87 = v181;
      v88 = *swift_projectBox();

      v89 = v208 & 1;
      v90 = v88;
      v91 = v207;
      v92 = v86;
      v93 = v87;
      goto LABEL_23;
    }

    v102 = swift_projectBox();
    v103 = type metadata accessor for DSLTree.Atom;
    v104 = v202;
    outlined init with copy of DSLTree._AST.AbsentFunction(v102, v202, type metadata accessor for DSLTree.Atom);
    v105 = v199;
    outlined init with copy of DSLTree._AST.AbsentFunction(v104, v199, type metadata accessor for DSLTree.Atom);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        outlined destroy of MEProgram(v104, type metadata accessor for DSLTree.Atom);
        v52 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v117 = v205;
        v118 = v206;
        v119 = *(v205 + 16);
        v120 = v191;
        v119(v191, v207, v206);
        v119(v33, v120, v118);
        v121 = *(v117 + 88);
        v105 = v117 + 88;
        v122 = v121(v33, v118);
        v103 = v209;
        v55 = 0;
        v53 = v203;
        if (v122 != *MEMORY[0x1E69E8A88])
        {
          if (v122 == v179)
          {
            v55 = 0x10000;
          }

          else
          {
            if (v122 != *MEMORY[0x1E69E8A80])
            {
              goto LABEL_177;
            }

            v55 = 0x20000;
          }
        }

        (a4)(v120, v206);
        if (v208)
        {
          v150 = 0x40000;
        }

        else
        {
          if (v181 < 0)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          v150 = v181 << 19;
        }

        if ((v103 & 0x8000000000000000) == 0)
        {
          v151 = (v13 << 22) ^ 0x4000000000 | (v103 << 27) | v55 | v150 | 0x1600001000000000 | 1;
          v84 = *(v53 + v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          goto LABEL_123;
        }

        goto LABEL_160;
      }

      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload == 10)
        {
          outlined destroy of MEProgram(v104, type metadata accessor for DSLTree.Atom);
          v107 = v53[2];
          if (v107)
          {
            v55 = *(v55 + 4 * v107 - 4);
            v52 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
            v109 = v205;
            v108 = v206;
            v110 = *(v205 + 16);
            v33 = v190;
            v110(v190, v207, v206);
            v111 = v189;
            v110(v189, v33, v108);
            v112 = (*(v109 + 88))(v111, v108);
            v103 = 0;
            v53 = v203;
            v105 = v209;
            if (v112 != *MEMORY[0x1E69E8A88])
            {
              if (v112 == v179)
              {
                v103 = 0x10000;
              }

              else
              {
                if (v112 != *MEMORY[0x1E69E8A80])
                {
                  goto LABEL_177;
                }

                v103 = 0x20000;
              }
            }

            (a4)(v33, v206);
            if (v208)
            {
              v158 = 0x40000;
            }

            else
            {
              if (v181 < 0)
              {
LABEL_168:
                __break(1u);
LABEL_169:
                v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v33 + 1), 1, v105);
LABEL_78:
                v144 = *(v105 + 16);
                v143 = *(v105 + 24);
                if (v144 >= v143 >> 1)
                {
                  v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v144 + 1, 1, v105);
                }

                *(v105 + 16) = v144 + 1;
                v145 = v105 + 24 * v144;
                *(v145 + 32) = v52 & 1;
                *(v145 + 40) = v55;
                *(v145 + 48) = v103;
                v53[6] = v105;
                v146 = v205;
                v52 = v206;
                v147 = *(v205 + 16);
                v44 = v186;
                v147(v186, v207, v206);
                v148 = v184;
                v147(v184, v44, v52);
                v47 = (*(v146 + 88))(v148, v52);
                if (v47 == *MEMORY[0x1E69E8A88])
                {
                  v149 = 0;
                  v9 = v209;
LABEL_135:
                  (a4)(v44, v206);
                  if (v208)
                  {
                    v172 = 0x40000;
                    goto LABEL_139;
                  }

                  if ((v181 & 0x8000000000000000) == 0)
                  {
                    v172 = v181 << 19;
LABEL_139:
                    if (v9 < 0)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v173 = (v13 << 22) ^ 0x4000000000 | (v9 << 27) | v149 | v172;
                      v9 = &v33[v173];
                      if (!__CFADD__(v33, v173))
                      {
                        v52 = 0x1600000000000000;
                        v149 = *v53;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
LABEL_142:
                          v174 = v9 | v52;
                          v176 = *(v149 + 16);
                          v175 = *(v149 + 24);
                          if (v176 >= v175 >> 1)
                          {
                            v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v175 > 1), v176 + 1, 1, v149, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                          }

                          *(v149 + 16) = v176 + 1;
                          *(v149 + 8 * v176 + 32) = v174;
                          *v53 = v149;
                          v57 = 1;
                          return v57 & 1;
                        }

LABEL_172:
                        v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 16) + 1, 1, v149, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                        goto LABEL_142;
                      }
                    }

                    __break(1u);
                    goto LABEL_172;
                  }

                  __break(1u);
                  goto LABEL_174;
                }

                v9 = v209;
                if (v47 == v179)
                {
                  v149 = 0x10000;
                  goto LABEL_135;
                }

LABEL_133:
                if (v47 != *MEMORY[0x1E69E8A80])
                {
                  goto LABEL_177;
                }

                v149 = 0x20000;
                goto LABEL_135;
              }

              v158 = v181 << 19;
            }

            if ((v105 & 0x8000000000000000) == 0)
            {
              v81 = (v13 << 22) ^ 0x4000000000 | (v105 << 27);
              v159 = (v55 >> 4) & 1 | v103 | v158;
              v160 = 0x1000000000;
              goto LABEL_121;
            }

            goto LABEL_163;
          }

          goto LABEL_159;
        }

        goto LABEL_52;
      }

      outlined destroy of MEProgram(v104, type metadata accessor for DSLTree.Atom);
      v52 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v123 = v205;
      v124 = v206;
      v125 = *(v205 + 16);
      v33 = v192;
      v125(v192, v207, v206);
      v125(v28, v33, v124);
      v126 = *(v123 + 88);
      v105 = v123 + 88;
      v127 = v126(v28, v124);
      v103 = v209;
      v55 = 0;
      v53 = v203;
      if (v127 != *MEMORY[0x1E69E8A88])
      {
        if (v127 == v179)
        {
          v55 = 0x10000;
        }

        else
        {
          if (v127 != *MEMORY[0x1E69E8A80])
          {
            goto LABEL_177;
          }

          v55 = 0x20000;
        }
      }

      (a4)(v33, v206);
      if (v208)
      {
        v152 = 0x40000;
      }

      else
      {
        if (v181 < 0)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v152 = v181 << 19;
      }

      if (v103 < 0)
      {
        goto LABEL_161;
      }

      v103 = (v13 << 22) ^ 0x4000000000 | (v103 << 27);
      v153 = v55 | v152 | 0x1600001000000000;
LABEL_110:
      v84 = *(v53 + v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v151 = v103 | v153;
      goto LABEL_123;
    }

    if (!EnumCaseMultiPayload)
    {
      v128 = v53[2];
      if (v128)
      {
        v129 = *v105;
        v130 = *(v105 + 8);
        if ((*(v55 + 4 * v128 - 4) & 1) == 0)
        {
          goto LABEL_48;
        }

        if ((Character._isSingleScalar.getter() & 1) == 0)
        {
          goto LABEL_75;
        }

        if ((specialized Collection.first.getter(v129, v130) & 0x100000000) != 0)
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        v137 = v187;
        Unicode.Scalar.properties.getter();
        v138 = Unicode.Scalar.Properties.isCased.getter();
        (*(v188 + 8))(v137, v185);
        if ((v138 & 1) == 0)
        {
LABEL_75:
          if (Character._isUppercased.getter() & 1) != 0 && (Character._isLowercased.getter())
          {
LABEL_48:
            outlined destroy of MEProgram(v104, type metadata accessor for DSLTree.Atom);
            if (v129 == 2573 && v130 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              goto LABEL_6;
            }

            v163 = Character.asciiValue.getter();

            if ((v163 & 0x100) != 0)
            {
              goto LABEL_6;
            }

            v52 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
            v165 = v205;
            v164 = v206;
            v166 = *(v205 + 16);
            v167 = v183;
            v166(v183, v207, v206);
            v168 = v182;
            v166(v182, v167, v164);
            v169 = (*(v165 + 88))(v168, v164);
            v170 = 0;
            v53 = v203;
            v171 = v209;
            if (v169 != *MEMORY[0x1E69E8A88])
            {
              if (v169 == v179)
              {
                v170 = 0x10000;
              }

              else
              {
                if (v169 != *MEMORY[0x1E69E8A80])
                {
                  goto LABEL_177;
                }

                v170 = 0x20000;
              }
            }

            (a4)(v183, v206);
            if (v208)
            {
              v177 = 0x40000;
            }

            else
            {
              if (v181 < 0)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              v177 = v181 << 19;
            }

            if ((v171 & 0x8000000000000000) == 0)
            {
              v81 = ((v13 << 22) ^ 0x4000000000) & 0xFFFFFFFFFFFFFF00 | (v171 << 27) | v163;
              v159 = v170 | v177;
              v160 = 0x800000000;
LABEL_121:
              v85 = v159 | v160 & 0xFFFFFFFFFFFFLL | 0x1600000000000000;
              v84 = *(v53 + v52);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_122:
                v151 = v81 | v85;
LABEL_123:
                v162 = *(v84 + 16);
                v161 = *(v84 + 24);
                if (v162 >= v161 >> 1)
                {
                  v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                }

                *(v84 + 16) = v162 + 1;
                *(v84 + 8 * v162 + 32) = v151;
                *(v53 + v52) = v84;
                v57 = 1;
                return v57 & 1;
              }

LABEL_157:
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              goto LABEL_122;
            }

LABEL_174:
            __break(1u);
            goto LABEL_175;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
        v139 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
        v52 = (*(v139 + 80) + 32) & ~*(v139 + 80);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_18E5ED040;
        outlined init with take of DSLTree.QuantificationKind(v104, v140 + v52, type metadata accessor for DSLTree.Atom);
        swift_storeEnumTagMultiPayload();
        v210 = v140;
        v211 = 0;
        LOBYTE(v52) = DSLTree.CustomCharacterClass.asAsciiBitset(_:)(v53);
        v55 = v141;
        v103 = v142;

        if (v52 == 2)
        {
          goto LABEL_6;
        }

        v53 = (v203 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
        v105 = v53[6];
        v33 = *(v105 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_78;
        }

        goto LABEL_169;
      }

      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (EnumCaseMultiPayload != 2)
    {
LABEL_52:
      outlined destroy of MEProgram(v104, type metadata accessor for DSLTree.Atom);
      outlined destroy of MEProgram(v105, type metadata accessor for DSLTree.Atom);
      goto LABEL_6;
    }

    outlined destroy of MEProgram(v104, type metadata accessor for DSLTree.Atom);
    LOBYTE(v210) = *v105;
    v113.stack._rawValue = v53;
    v114 = DSLTree.Atom.CharacterClass.asRuntimeModel(_:)(v113);
    v204 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    v115 = *(v205 + 16);
    v116 = v194;
    v115(v194, v207, v206);
    v103 = v114;
    if (HIBYTE(v114))
    {
      v103 = v114 | 0x200;
      v53 = v203;
      if ((v114 & 0x10000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v53 = v203;
      if ((v114 & 0x10000) != 0)
      {
LABEL_37:
        v55 = 1024;
        goto LABEL_67;
      }
    }

    v55 = 0;
LABEL_67:
    v52 = v193;
    v33 = v206;
    v115(v193, v116, v206);
    v136 = (*(v205 + 88))(v52, v33);
    if (v136 == *MEMORY[0x1E69E8A88])
    {
      v105 = 0;
    }

    else if (v136 == v179)
    {
      v105 = 0x10000;
    }

    else
    {
      if (v136 != *MEMORY[0x1E69E8A80])
      {
        goto LABEL_177;
      }

      v105 = 0x20000;
    }

    (a4)(v116, v206);
    if (v208)
    {
      v154 = 1;
      if (v13)
      {
LABEL_103:
        v155 = 0;
LABEL_107:
        v52 = v204;
        if (v209 < 0)
        {
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v156 = v155 | (v209 << 27) | v105 | (v154 << 18) | 0x2000000000;
        v157 = __CFADD__(v103 + v55, v156);
        v103 += v55 + v156;
        if (v157)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v153 = 0x1600000000000000;
        goto LABEL_110;
      }
    }

    else
    {
      if (v181 < 0)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v154 = 2 * v181;
      if (v13)
      {
        goto LABEL_103;
      }
    }

    v155 = 0x4000000000;
    goto LABEL_107;
  }

  v67 = v209;
  if (v66 == 3)
  {
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
    v95 = swift_projectBox();
    v96 = *(v95 + *(v94 + 48));
    v97 = v200;
    outlined init with copy of DSLTree._AST.AbsentFunction(v95, v200, type metadata accessor for DSLTree._AST.GroupKind);
    v99 = v196;
    v98 = v197;
    v100 = v201;
    (*(v196 + 104))(v201, *MEMORY[0x1E69E8E08], v197);

    v101 = MEMORY[0x193ACE500](v97, v100);
    (*(v99 + 8))(v100, v98);
    outlined destroy of MEProgram(v97, type metadata accessor for DSLTree._AST.GroupKind);
    if ((v101 & 1) == 0)
    {

      goto LABEL_6;
    }

    v89 = v208 & 1;
    v90 = v96;
    v91 = v207;
    v92 = v67;
    v93 = v181;
LABEL_23:
    v57 = Compiler.ByteCodeGen.tryEmitFastQuant(_:_:_:_:)(v90, v91, v92, v93, v89);

    return v57 & 1;
  }

  if (v66 != 7)
  {
    return v57 & 1;
  }

  v68 = *((v204 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v210 = *((v204 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v211 = v68;

  v69 = DSLTree.CustomCharacterClass.asAsciiBitset(_:)(v53);
  v71 = v70;
  v73 = v72;

  if (v69 == 2)
  {
LABEL_6:
    v57 = 0;
    return v57 & 1;
  }

  v202 = v13;
  v74 = (v203 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v75 = v74[6];
  v204 = *(v75 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v204 + 1, 1, v75);
  }

  v77 = *(v75 + 2);
  v76 = *(v75 + 3);
  if (v77 >= v76 >> 1)
  {
    v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v75);
  }

  *(v75 + 2) = v77 + 1;
  v78 = &v75[24 * v77];
  v78[32] = v69 & 1;
  *(v78 + 5) = v71;
  *(v78 + 6) = v73;
  v74[6] = v75;
  v79 = v205;
  v52 = v206;
  v80 = *(v205 + 16);
  v53 = v195;
  v80(v195, v207, v206);
  v80(v44, v53, v52);
  v82 = *(v79 + 88);
  v81 = v79 + 88;
  v83 = v82(v44, v52);
  if (v83 == *MEMORY[0x1E69E8A88])
  {
    v84 = 0;
    v85 = v209;
LABEL_55:
    (a4)(v53, v206);
    if (v208)
    {
      v131 = 0x40000;
      goto LABEL_59;
    }

    if ((v181 & 0x8000000000000000) == 0)
    {
      v131 = v181 << 19;
LABEL_59:
      if (v85 < 0)
      {
        __break(1u);
      }

      else
      {
        v132 = (v202 << 22) ^ 0x4000000000 | (v85 << 27) | v84 | v131;
        v85 = v204 + v132;
        if (!__CFADD__(v204, v132))
        {
          v52 = 0x1600000000000000;
          v84 = *v74;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_62:
            v133 = v85 | v52;
            v135 = *(v84 + 16);
            v134 = *(v84 + 24);
            if (v135 >= v134 >> 1)
            {
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v84 + 16) = v135 + 1;
            *(v84 + 8 * v135 + 32) = v133;
            *v74 = v84;
            v57 = 1;
            return v57 & 1;
          }

LABEL_155:
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_155;
    }

    __break(1u);
    goto LABEL_157;
  }

  v85 = v209;
  if (v83 == v179)
  {
    v84 = 0x10000;
    goto LABEL_55;
  }

  if (v83 == *MEMORY[0x1E69E8A80])
  {
    v84 = 0x20000;
    goto LABEL_55;
  }

LABEL_177:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MEProgram.Builder.buildCondBranch(to:ifZeroElseDecrement:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = a2 | 0x500000000000000;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v2 + 88) = v8;
  return result;
}

uint64_t DSLTree.Node.guaranteesForwardProgress.getter(unint64_t a1)
{
  while (1)
  {
    v1 = a1;
    v2 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
    MEMORY[0x1EEE9AC00](v2 - 8);
    v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = type metadata accessor for DSLTree.Atom(0);
    MEMORY[0x1EEE9AC00](v5);
    v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = type metadata accessor for AST.Group.Kind();
    v9 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = type metadata accessor for DSLTree._AST.GroupKind(0);
    MEMORY[0x1EEE9AC00](v12 - 8);
    v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = 0;
    v16 = (v1 >> 59) & 0x1E | (v1 >> 2) & 1;
    if (v16 > 5)
    {
      if (v16 > 7)
      {
        if (v16 != 8)
        {
          if (v16 == 10)
          {
            v45 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
            if ((v45 & 0x2000000000000000) != 0)
            {
              v46 = HIBYTE(v45) & 0xF;
            }

            else
            {
              v46 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) & 0xFFFFFFFFFFFFLL;
            }

            v15 = v46 != 0;
          }

          else if (v16 == 12)
          {
            v17 = *swift_projectBox();

            v18 = DSLTree.Node.guaranteesForwardProgress.getter(v17);

            return v18 & 1;
          }

          return v15 & 1;
        }

        v37 = swift_projectBox();
        outlined init with copy of DSLTree._AST.AbsentFunction(v37, v7, type metadata accessor for DSLTree.Atom);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 6)
          {
            outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
            v15 = 0;
          }

          else
          {
            outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
LABEL_46:
            v15 = 1;
          }

          return v15 & 1;
        }

        goto LABEL_44;
      }

      if (v16 == 6)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
        v40 = swift_projectBox();
        v41 = *(v40 + *(v39 + 64));
        outlined init with copy of DSLTree._AST.AbsentFunction(v40, v4, type metadata accessor for DSLTree._AST.QuantificationAmount);

        v42 = AST.Quantification.Amount.bounds.getter();
        v44 = v43;
        outlined destroy of MEProgram(v4, type metadata accessor for DSLTree._AST.QuantificationAmount);
        if ((v44 & 1) != 0 || v42 <= 0)
        {

LABEL_44:
          v15 = 0;
          return v15 & 1;
        }

        v15 = DSLTree.Node.guaranteesForwardProgress.getter(v41);
      }

      else
      {
        v30 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v47 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v48 = v30;
        v15 = DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter();
      }

      return v15 & 1;
    }

    if (v16 <= 1)
    {
      break;
    }

    if (v16 != 2)
    {
      if (v16 == 3)
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
        v27 = swift_projectBox();
        v28 = *(v27 + *(v26 + 48));
        outlined init with copy of DSLTree._AST.AbsentFunction(v27, v14, type metadata accessor for DSLTree._AST.GroupKind);
        (*(v9 + 32))(v11, v14, v8);
        v29 = (*(v9 + 88))(v11, v8);
        v15 = 0;
        if (v29 != *MEMORY[0x1E69E8E68] && v29 != *MEMORY[0x1E69E8E30] && v29 != *MEMORY[0x1E69E8E00] && v29 != *MEMORY[0x1E69E8E40])
        {

          v15 = DSLTree.Node.guaranteesForwardProgress.getter(v28);

          (*(v9 + 8))(v11, v8);
        }
      }

      return v15 & 1;
    }

    a1 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
  }

  if (v16)
  {
    if (v16 == 1)
    {
      v20 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v21 = *(v20 + 16);

      v22 = 0;
      while (v21 != v22)
      {
        if (v22 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v23 = v22 + 1;
        v24 = *(v20 + 8 * v22 + 32);

        v25 = DSLTree.Node.guaranteesForwardProgress.getter(v24);

        v22 = v23;
        if (v25)
        {
          goto LABEL_14;
        }
      }

LABEL_28:

      v15 = 0;
    }

    return v15 & 1;
  }

  v31 = *(v1 + 16);
  v32 = *(v31 + 16);

  v33 = 0;
  while (1)
  {
    if (v32 == v33)
    {
LABEL_14:

      goto LABEL_46;
    }

    if (v33 >= *(v31 + 16))
    {
      break;
    }

    v34 = v33 + 1;
    v35 = *(v31 + 8 * v33 + 32);

    v36 = DSLTree.Node.guaranteesForwardProgress.getter(v35);

    v33 = v34;
    if ((v36 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 | 0x600000000000000;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v2 + 88) = v8;
  return result;
}

uint64_t MEProgram.Builder.buildSplit(to:saving:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = 0x1500000000000000;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = 0;
  *(v2 + 88) = v8;
  return result;
}

uint64_t DSLTree.CustomCharacterClass.asAsciiBitset(_:)(uint64_t a1)
{
  v19 = a1;
  v2 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v6 + 16);
  if (v8)
  {
    v20 = 0;
    v9 = 0;
    v10 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v12 = v7;
    v13 = v7;
    while (1)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v10, v5, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v7 = DSLTree.CustomCharacterClass.Member.asAsciiBitset(_:_:)(v19, v12);
      v15 = v14;
      v17 = v16;
      result = outlined destroy of MEProgram(v5, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v7 == 2)
      {
        v20 = v15;
        v9 = v17;
      }

      else if (v13 == 2)
      {
        v7 = v13;
      }

      else
      {
        if ((v7 ^ v13))
        {
          __break(1u);
          return result;
        }

        v20 |= v15;
        v9 |= v17;
        v7 = v13 & 1;
      }

      v10 += v11;
      v13 = v7;
      if (!--v8)
      {
        return v7;
      }
    }
  }

  v20 = 0;
  return v7;
}

_StringProcessing::DSLTree::CustomCharacterClass __swiftcall DSLTree.CustomCharacterClass.init(members:isInverted:)(Swift::OpaquePointer members, Swift::Bool isInverted)
{
  *v2 = members;
  *(v2 + 8) = isInverted;
  result.members = members;
  result.isInverted = isInverted;
  return result;
}

void *Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v43 = v1;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOG_ALs5NeverOTg5(partial apply for closure #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:), v42, a1);
  v10 = result;
  v45 = &outlined read-only object #0 of Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:);
  v44 = MEMORY[0x1E69E7CC0];
  v11 = result[2];
  if (v11)
  {
    v37 = v3;
    v12 = 0;
    v39 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = result + v39;
    v38 = v11 - 1;
    v14 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v40 = v14;
    v15 = 0;
    for (i = v12; i < v10[2]; ++i)
    {
      v17 = *(v4 + 72);
      v12 = i + 1;
      outlined init with copy of DSLTree._AST.AbsentFunction(&v13[v17 * i], v8, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (!tryAccumulate(_:) in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v8))
      {
        if (v15)
        {
          v18 = finish() in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v45);

          v19 = v18;
          v20 = *(v18 + 16);
          v21 = v40;
          v22 = v40[2];
          v35 = v20;
          v23 = __OFADD__(v22, v20);
          v24 = v22 + v20;
          if (v23)
          {
            goto LABEL_32;
          }

          v36 = v19;
          v34 = v24;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v34 > v21[3] >> 1)
          {
            if (v22 <= v34)
            {
              v25 = v34;
            }

            else
            {
              v25 = v22;
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v25, 1, v21, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            v21 = result;
          }

          v26 = v35;
          if (*(v36 + 16))
          {
            if ((v21[3] >> 1) - v21[2] < v35)
            {
              goto LABEL_34;
            }

            swift_arrayInitWithCopy();

            if (v26)
            {
              v27 = v21[2];
              v23 = __OFADD__(v27, v26);
              v28 = v27 + v26;
              if (v23)
              {
                goto LABEL_35;
              }

              v21[2] = v28;
            }
          }

          else
          {

            if (v26)
            {
              goto LABEL_33;
            }
          }

          v45 = &outlined read-only object #0 of Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:);
        }

        else
        {
          v21 = v40;
        }

        outlined init with take of DSLTree.QuantificationKind(v8, v41, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        v30 = v21[2];
        v29 = v21[3];
        v31 = v21;
        if (v30 >= v29 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v21, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        v31[2] = v30 + 1;
        v32 = v31;
        result = outlined init with take of DSLTree.QuantificationKind(v41, v31 + v39 + v30 * v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v14 = v32;
        v44 = v32;
        if (v38 == i)
        {

          return v32;
        }

        goto LABEL_3;
      }

      result = outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v15 = 1;
      if (v11 == v12)
      {

        v33 = finish() in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v45);

        specialized Array.append<A>(contentsOf:)(v33);
        return v44;
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
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t closure #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v8, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  result = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
  if (result > 2)
  {
    if (result > 5 || (result - 3) >= 2)
    {
      v11 = *(*v8 + 16);
      v12 = *(*v8 + 24);
      v13 = *(*v8 + 32);
      v14 = *(*v8 + 40);
      v15 = swift_allocObject();
      v22 = v11;
      v23 = v12;
      Compiler.ByteCodeGen.coalescingCustomCharacterClass(_:)(&v22, v15 + 16);
      v22 = v13;
      v23 = v14;
      Compiler.ByteCodeGen.coalescingCustomCharacterClass(_:)(&v22, v15 + 32);
      *a3 = v15;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    outlined destroy of MEProgram(v8, v10);
    return outlined init with copy of DSLTree._AST.AbsentFunction(a1, a3, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  }

  if (result == 1)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_");
    outlined destroy of MEProgram(v8 + *(v16 + 48), type metadata accessor for DSLTree.Atom);
    v10 = type metadata accessor for DSLTree.Atom;
    goto LABEL_8;
  }

  v17 = *(*a2 + 16);
  if (v17)
  {
    v18 = *v8;
    v19 = *(v8 + 8);
    if ((*(*a2 + 4 * v17 + 28) & 0x10000) != 0)
    {
      v20 = Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(*v8);
    }

    else
    {

      v20 = v18;
    }

    v21 = Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(v20);

    *a3 = v21;
    *(a3 + 8) = v19;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *Compiler.ByteCodeGen.coalescingCustomCharacterClass(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 16);
  if (v4)
  {
    v5 = *result;
    v6 = *(result + 8);
    if ((*(*v2 + 4 * v4 + 28) & 0x10000) != 0)
    {
      v5 = Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(*result);
    }

    else
    {
    }

    v7 = Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(v5);

    *a2 = v7;
    *(a2 + 8) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOG_ALs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    outlined init with take of DSLTree.QuantificationKind(v9, v11 + v18 + v15 * v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySJG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_d46Processing8CompilerC11ByteCodeGenV37flatteningghi51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7f8V0hiJ0V6J14OGANFAMSJXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v27 = v1;
  v35 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v35;
  v8 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v28 = a1 + 64;
  v29 = v6;
  v30 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v33 = v11;
    v34 = v14;
    v15 = (*(a1 + 48) + 16 * v10);
    v16 = a1;
    v17 = v15[1];
    *v5 = *v15;
    v5[1] = v17;
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v35 = v7;
    v19 = *(v7 + 16);
    v18 = *(v7 + 24);

    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v19 + 1;
    result = outlined init with take of DSLTree.QuantificationKind(v5, v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v12 = 1 << *(v16 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    a1 = v16;
    v8 = v30;
    v20 = *(v30 + 8 * v13);
    if ((v20 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v10 & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (v28 + 8 * v13);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v10, v34, 0);
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v10, v34, 0);
    }

LABEL_4:
    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v29)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys7UnicodeO6ScalarVG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_f46Processing8CompilerC11ByteCodeGenV37flatteningijk51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7h8V0hiJ0V6l9OGANFAMs7d2O6E7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v24[1] = v1;
  v33 = MEMORY[0x1E69E7CC0];
  v27 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v33;
  v32 = v27 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = v26;
  v11 = v27;
  v12 = 0;
  v25 = v27 + 64;
  v28 = v6;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v11 + 32))
  {
    v14 = v9 >> 6;
    if ((*(v32 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    v31 = *(v11 + 36);
    *v10 = *(*(v11 + 48) + 4 * v9);
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v33 = v7;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v7 = v33;
    }

    *(v7 + 16) = v16 + 1;
    result = outlined init with take of DSLTree.QuantificationKind(v10, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v16, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v13 = 1 << *(v11 + 32);
    if (v9 >= v13)
    {
      goto LABEL_23;
    }

    v17 = *(v32 + 8 * v14);
    if ((v17 & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    if (v31 != *(v11 + 36))
    {
      goto LABEL_25;
    }

    v18 = v17 & (-2 << (v9 & 0x3F));
    if (v18)
    {
      v13 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v14 << 6;
      v20 = v14 + 1;
      v21 = (v25 + 8 * v14);
      while (v20 < (v13 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v9, v31, 0);
          v11 = v27;
          v13 = __clz(__rbit64(v22)) + v19;
          goto LABEL_19;
        }
      }

      result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v9, v31, 0);
      v11 = v27;
LABEL_19:
      v10 = v26;
    }

    ++v12;
    v9 = v13;
    if (v12 == v28)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t finish() in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(void *a1)
{
  v4 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v71 - v8);
  result = MEMORY[0x1EEE9AC00](v7);
  v79 = (&v71 - v12);
  v13 = a1[2];
  v14 = v13 - 1;
  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
    v52 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18E5ED040;
    v53 = (v17 + v52);
    v54 = a1[5];
    *v53 = a1[4];
    v53[1] = v54;
    swift_storeEnumTagMultiPayload();

    return v17;
  }

  v75 = a1 + 2;
  v78 = v4;
  v72 = v11;
  if (!v13)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v73 = v13;

  v15 = 0;
  v74 = a1;
  v16 = a1 + 7;
  v17 = MEMORY[0x1E69E7CC0];
  v76 = v14;
  v77 = v9;
  v80 = v5;
  do
  {
    if (v14 == v15)
    {
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
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      goto LABEL_37;
    }

    v82 = v17;
    v2 = *(v16 - 3);
    v17 = *(v16 - 2);
    v18 = *v16;
    v81 = *(v16 - 1);

    if (v15)
    {
      v19 = specialized Collection.dropFirst(_:)(1uLL, v2, v17, MEMORY[0x1E69E60F0], MEMORY[0x1E69E61F0]);
      v1 = v20;
      if (__OFSUB__(Substring.distance(from:to:)(), 1))
      {
        goto LABEL_43;
      }

      v21 = Substring.index(_:offsetBy:limitedBy:)();
      if (v22)
      {
        v23 = v1;
      }

      else
      {
        v23 = v21;
      }

      if (v23 >> 14 < v19 >> 14)
      {
        goto LABEL_44;
      }

      v24 = Substring.subscript.getter();
      v26 = v25;
      v28 = v27;
      v30 = v29;
    }

    else
    {
      v24 = specialized Collection.dropLast(_:)(1, v2, v17, MEMORY[0x1E69E60E8], MEMORY[0x1E69E60F0], MEMORY[0x1E69E61F0]);
      v26 = v31;
      v28 = v32;
      v30 = v33;
    }

    if ((v24 ^ v26) >= 0x4000)
    {
      v35 = MEMORY[0x193ACE800](v24, v26, v28, v30);
      v1 = v78;
      v36 = v79;
      *v79 = v35;
      v36[1] = v37;
      swift_storeEnumTagMultiPayload();
      v34 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v39 = v34[2];
      v38 = v34[3];
      if (v39 >= v38 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v34, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v34[2] = v39 + 1;
      outlined init with take of DSLTree.QuantificationKind(v79, v34 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v39, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if ((v17 & 0x2000000000000000) != 0)
      {
LABEL_15:
        if ((v17 & 0xF00000000000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v1 = v78;
      v34 = v82;
      if ((v17 & 0x2000000000000000) != 0)
      {
        goto LABEL_15;
      }
    }

    if ((v2 & 0xFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_46;
    }

LABEL_23:
    String.index(before:)();
    v40 = String.subscript.getter();
    v41 = v77;
    *v77 = v40;
    *(v41 + 8) = v42;
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();

    v43 = HIBYTE(v18) & 0xF;
    v17 = v81;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v43 = v81 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {
      goto LABEL_42;
    }

    v44 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48));
    v45 = String.subscript.getter();
    v46 = v34;
    v48 = v47;

    *v44 = v45;
    v44[1] = v48;
    v17 = v46;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    }

    v49 = v80;
    v51 = *(v17 + 16);
    v50 = *(v17 + 24);
    if (v51 >= v50 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    }

    ++v15;
    *(v17 + 16) = v51 + 1;
    v1 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v2 = *(v49 + 72);
    outlined init with take of DSLTree.QuantificationKind(v41, v17 + v1 + v2 * v51, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v16 += 2;
    v14 = v76;
  }

  while (v76 != v15);
  v55 = v17;
  result = swift_unknownObjectRelease();
  if (!v73)
  {
    goto LABEL_48;
  }

  v56 = &v75[2 * v73];
  v57 = *v56;
  v58 = v56[1];

  v59 = specialized Collection.dropFirst(_:)(1uLL, v57, v58, MEMORY[0x1E69E60F0], MEMORY[0x1E69E61F0]);
  v61 = v60;
  v63 = v62;
  v65 = v64;

  if ((v59 ^ v61) < 0x4000)
  {

    return v55;
  }

  v66 = MEMORY[0x193ACE800](v59, v61, v63, v65);
  v68 = v67;

  v16 = v72;
  *v72 = v66;
  v16[1] = v68;
  swift_storeEnumTagMultiPayload();
  v17 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  v70 = *(v17 + 16);
  v69 = *(v17 + 24);
  if (v70 >= v69 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  }

  *(v17 + 16) = v70 + 1;
  outlined init with take of DSLTree.QuantificationKind(v16, v17 + v1 + v2 * v70, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  return v17;
}

BOOL tryAccumulate(_:) in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DSLTree.Atom(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v15, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
        outlined init with take of DSLTree.QuantificationKind(v15, v10, type metadata accessor for DSLTree.Atom);
        outlined init with take of DSLTree.QuantificationKind(&v15[v17], v7, type metadata accessor for DSLTree.Atom);
        v13 = DSLTree.Atom.literalCharacterValue.getter();
        a1 = v18;
        outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
        if (a1)
        {
          v15 = DSLTree.Atom.literalCharacterValue.getter();
          v12 = v19;
          outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
          if (v12)
          {
            v7 = *v2;
            v10 = *(*v2 + 2);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_42;
            }

LABEL_41:
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            if (v10)
            {
LABEL_8:
              v20 = (v7 + 16);
              if (v10 <= *(v7 + 2))
              {
                MEMORY[0x193ACE8D0](v13, a1);

                a1 = *(v7 + 2);
                v20 = *(v7 + 3);
                v10 = (a1 + 1);
                if (a1 < v20 >> 1)
                {
LABEL_10:
                  *(v7 + 2) = v10;
                  v21 = &v7[16 * a1];
                  *(v21 + 4) = v15;
                  *(v21 + 5) = v12;
                  *v2 = v7;
                  return 1;
                }

LABEL_44:
                v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v10, 1, v7);
                goto LABEL_10;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          return 0;
        }

        v29 = type metadata accessor for DSLTree.Atom;
        v30 = v7;
        goto LABEL_30;
      }

LABEL_18:
      v29 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v30 = v15;
LABEL_30:
      outlined destroy of MEProgram(v30, v29);
      return 0;
    }

    outlined init with take of DSLTree.QuantificationKind(v15, v12, type metadata accessor for DSLTree.Atom);
    a1 = DSLTree.Atom.literalCharacterValue.getter();
    v7 = v31;
    outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.Atom);
    if (!v7)
    {
      return 0;
    }

    v15 = *v2;
    v10 = *(*v2 + 2);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v10)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

LABEL_38:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    if (v10)
    {
LABEL_22:
      if (v10 <= *(v15 + 2))
      {
        MEMORY[0x193ACE8D0](a1, v7);
LABEL_28:

        *v2 = v15;
        return 1;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v12 = *v15;
    v7 = *(v15 + 1);
    v15 = *v2;
    v10 = *(*v2 + 2);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (!v10)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_26:
      if (v10 <= *(v15 + 2))
      {
        MEMORY[0x193ACE8E0](v12, v7);
        goto LABEL_28;
      }

      goto LABEL_37;
    }

LABEL_35:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    if (!v10)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_18;
  }

  outlined destroy of MEProgram(v15, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  v23 = *(*v2 + 2);
  if (!v23)
  {
    __break(1u);
    goto LABEL_35;
  }

  v24 = &(*v2)[16 * v23 + 16];
  v26 = *v24;
  v25 = *(v24 + 1);
  v27 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v28 = v27;
  }

  return v28 != 0;
}

void *Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(uint64_t a1)
{
  v36 = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v36);
  v3 = (&v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  v11 = MEMORY[0x1E69E7CD0];
  v42 = MEMORY[0x1E69E7CD0];
  v43 = MEMORY[0x1E69E7CD0];
  v41 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  if (!v12)
  {
    v31 = MEMORY[0x1E69E7CD0];
    goto LABEL_30;
  }

  v13 = 0;
  v37 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v37;
  v15 = *(v8 + 72);
  v16 = MEMORY[0x1E69E7CC0];
  v38 = v4;
  do
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v14 + v15 * v13, v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    outlined init with copy of DSLTree._AST.AbsentFunction(v10, v7, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v23 = v7[1];
      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = *v7 & 0xFFFFFFFFFFFFLL;
      }

      v40[0] = *v7;
      v40[1] = v23;
      v40[2] = 0;
      v40[3] = v24;
      v25 = String.Iterator.next()();
      if (v25.value._object)
      {
        countAndFlagsBits = v25.value._countAndFlagsBits;
        object = v25.value._object;
        do
        {
          specialized Set._Variant.insert(_:)(v39, countAndFlagsBits, object);

          v28 = String.Iterator.next()();
          countAndFlagsBits = v28.value._countAndFlagsBits;
          object = v28.value._object;
        }

        while (v28.value._object);
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v30 = v16[2];
      v29 = v16[3];
      if (v30 >= v29 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v16[2] = v30 + 1;
      outlined init with take of DSLTree.QuantificationKind(v10, v16 + v37 + v30 * v15, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v41 = v16;
      v21 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v22 = v7;
LABEL_26:
      outlined destroy of MEProgram(v22, v21);
      goto LABEL_5;
    }

    outlined init with take of DSLTree.QuantificationKind(v7, v3, type metadata accessor for DSLTree.Atom);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 != 1)
    {
      if (!v18)
      {
        outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        specialized Set._Variant.insert(_:)(v40, *v3, v3[1]);
LABEL_4:

        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v20 = v16[2];
      v19 = v16[3];
      if (v20 >= v19 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v16[2] = v20 + 1;
      outlined init with take of DSLTree.QuantificationKind(v10, v16 + v37 + v20 * v15, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v41 = v16;
      v21 = type metadata accessor for DSLTree.Atom;
      v22 = v3;
      goto LABEL_26;
    }

    outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    specialized Set._Variant.insert(_:)(v40, *v3);
LABEL_5:
    ++v13;
  }

  while (v13 != v12);
  v11 = v42;
  v31 = v43;
LABEL_30:
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySJG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_d46Processing8CompilerC11ByteCodeGenV37flatteningghi51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7f8V0hiJ0V6J14OGANFAMSJXEfU_Tf1cn_n(v31);

  specialized Array.append<A>(contentsOf:)(v32);
  v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys7UnicodeO6ScalarVG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_f46Processing8CompilerC11ByteCodeGenV37flatteningijk51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7h8V0hiJ0V6l9OGANFAMs7d2O6E7VXEfU0_Tf1cn_n(v11);

  specialized Array.append<A>(contentsOf:)(v33);
  return v41;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  if (!*(v6 + 16))
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
  result = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
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
    return result;
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
  return result;
}

{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR, &type metadata for PrettyPrinter.NodeToPrint);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Compiler.ByteCodeGen.emitCCCMember(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DSLTree.Atom(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v133 - v9;
  v11 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        return outlined destroy of MEProgram(v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v51 = *v13;
      v52 = *(*v13 + 16);
      v23 = *(*v13 + 24);
      v13 = *(*v13 + 32);
      v5 = *(v51 + 40);
      v53 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v151 = v3;
      v22 = v3 + v53;
      v3 = *(v3 + v53 + 112);
      if (!__OFADD__(v3, 1))
      {
        LODWORD(v148) = v23;
        LODWORD(v146) = v5;
        *(v22 + 112) = v3 + 1;
        v54 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v57 = *(v54 + 2);
        v56 = *(v54 + 3);
        if (v57 >= v56 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v54 + 2) = v57 + 1;
        *&v54[8 * v57 + 32] = v3 | 0x200000000000000;
        *v22 = v54;
        v149 = v52;
        v150 = v148;
        Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v149);
        if (!v2)
        {
          v58 = *v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v58 + 2) + 1, 1, v58, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          v60 = *(v58 + 2);
          v59 = *(v58 + 3);
          if (v60 >= v59 >> 1)
          {
            v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v58 + 2) = v60 + 1;
          *&v58[8 * v60 + 32] = v3 | 0x300000000000000;
          *v22 = v58;
          v149 = v147;
          v150 = v146;
          Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v149);
        }
      }

LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v21 = *v13;
      v22 = *(*v13 + 16);
      LODWORD(v148) = *(*v13 + 24);
      v23 = *(v21 + 32);
      v24 = *(v21 + 40);
      v25 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v151 = v3;
      v13 = (v3 + v25);
      v10 = *(v3 + v25 + 112);
      if (!__OFADD__(v10, 1))
      {
        v3 = v22;
        *(v13 + 14) = v10 + 1;
        v5 = *(v13 + 10);
        v147 = *(v5 + 16);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        LODWORD(v145) = v24;
        v22 = v2;
        if (v26)
        {
LABEL_14:
          v28 = *(v5 + 16);
          v27 = *(v5 + 24);
          v146 = v23;
          if (v28 >= v27 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v5);
          }

          *(v5 + 16) = v28 + 1;
          v29 = v5 + 16 * v28;
          *(v29 + 32) = 0;
          *(v29 + 40) = 1;
          *(v13 + 10) = v5;
          v30 = *v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          v31 = v22;
          v33 = *(v30 + 2);
          v32 = *(v30 + 3);
          if (v33 >= v32 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v30, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v30 + 2) = v33 + 1;
          *&v30[8 * v33 + 32] = v10 | 0x200000000000000;
          *v13 = v30;
          v149 = v3;
          v150 = v148;
          v11 = v151;
          Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v149);
          if (v31)
          {
          }

          v3 = v147;
          MEProgram.Builder.buildSave(_:)(v147, 0x1100000000000000);
          v34 = *v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          v36 = *(v34 + 2);
          v35 = *(v34 + 3);
          if (v36 >= v35 >> 1)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v34 + 2) = v36 + 1;
          *&v34[8 * v36 + 32] = v10 | 0x300000000000000;
          *v13 = v34;
          v149 = v146;
          v150 = v145;
          Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v149);
          v5 = *v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_128;
          }

          while (1)
          {
            v38 = *(v5 + 16);
            v37 = *(v5 + 24);
            v39 = v38 + 1;
            if (v38 >= v37 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v5 + 16) = v39;
            *(v5 + 8 * v38 + 32) = 0x1300000000000000;
            *v13 = v5;
            v40 = *(v5 + 24);
            v41 = v38 + 2;
            if ((v38 + 2) > (v40 >> 1))
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v38 + 2, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v5 + 16) = v41;
            *(v5 + 8 * v39 + 32) = 0x1D00000000000000;
            *v13 = v5;
            v42 = *(v13 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
            }

            if (v3 < *(v42 + 2))
            {
              v43 = &v42[16 * v3];
              *(v43 + 4) = v41;
              v43[40] = 0;

              *(v13 + 10) = v42;
              return result;
            }

            __break(1u);
LABEL_130:
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_93:
            v99 = v138;
            v101 = *(v42 + 2);
            v100 = *(v42 + 3);
            v102 = v101 + 1;
            if (v101 >= v100 >> 1)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v42 + 2) = v102;
            *&v42[8 * v101 + 32] = 0x1300000000000000;
            *v13 = v42;
            v103 = *(v13 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
            }

            v104 = v139;
            v105 = *(v103 + 16);
            if (v144 >= v105)
            {
              __break(1u);
            }

            else
            {
              v106 = v103 + v137;
              *(v106 + 32) = v102;
              *(v106 + 40) = 0;
              *(v13 + 10) = v103;
              v11 = v99 | 0x200000000000000;
              v103 = *(v42 + 2);
              v105 = *(v42 + 3);
              v102 = v103 + 1;
              if (v103 < v105 >> 1)
              {
                goto LABEL_99;
              }
            }

            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v102, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            v104 = v139;
LABEL_99:
            *(v42 + 2) = v102;
            *&v42[8 * v103 + 32] = v11;
            *v13 = v42;
            v11 = v143 | 0x300000000000000;
            v107 = *(v42 + 3);
            v108 = v103 + 2;
            if (v108 > (v107 >> 1))
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              v104 = v139;
            }

            *(v42 + 2) = v108;
            *&v42[8 * v102 + 32] = v11;
            *v13 = v42;
            MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(v104, v99);
            MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(v41, v148);
            MEProgram.Builder.buildSave(_:)(v142, 0x400000000000000);
            v109 = *v13;
            v110 = *(*v13 + 16);
            v111 = *(v13 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v111);
            }

            if (v41 >= *(v111 + 2))
            {
              __break(1u);
            }

            else
            {
              v112 = &v111[v136];
              *(v112 + 4) = v110;
              v112[40] = 0;
              *(v13 + 10) = v111;
              v108 = v99 | 0x300000000000000;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_105;
              }
            }

            v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 2) + 1, 1, v109, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_105:
            v113 = v142;
            v115 = *(v109 + 2);
            v114 = *(v109 + 3);
            if (v115 >= v114 >> 1)
            {
              v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v109, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              v113 = v142;
            }

            *(v109 + 2) = v115 + 1;
            *&v109[8 * v115 + 32] = v108;
            *v13 = v109;
            MEProgram.Builder.buildSave(_:)(v113, 0x400000000000000);
            v116 = *v13;
            v117 = *(*v13 + 16);
            v5 = *(v13 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
            }

            if (v139 >= *(v5 + 16))
            {
              __break(1u);
            }

            else
            {
              v41 = v5 + 32;
              v118 = v5 + 32 + v135;
              *v118 = v117;
              *(v118 + 8) = 0;
              *(v13 + 10) = v5;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_111;
              }
            }

            v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_111:
            v120 = *(v116 + 2);
            v119 = *(v116 + 3);
            v121 = v120 + 1;
            if (v120 >= v119 >> 1)
            {
              v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v116, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v116 + 2) = v121;
            *&v116[8 * v120 + 32] = 0x1D00000000000000;
            *v13 = v116;
            v17 = *(v5 + 16);
            v122 = v142;
            if (v142 < v17)
            {
              v123 = v41 + v134;
              *v123 = v121;
              *(v123 + 8) = 0;

              *(v13 + 10) = v5;
              return result;
            }

            __break(1u);
LABEL_138:
            v129 = v17 >> 12;
            v130 = (v122 | (v17 >> 6) & 0x3F) << 8;
            v131 = WORD1(v17);
            v97 = (((v130 | (v17 >> 12) & 0x3F) << 8) | (v17 >> 18)) - 2122219023;
            v132 = v129 + v130 + 8487393;
            if (!v131)
            {
              v97 = v132;
            }

LABEL_84:
            v149 = (v97 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v97) >> 3))));
            v19 = static String._uncheckedFromUTF8(_:)();
            v17 = *v3;
            v18 = *(*v3 + 16);
            if (v18)
            {
              v20 = v98;
              goto LABEL_86;
            }

            __break(1u);
LABEL_128:
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }
        }

LABEL_118:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v147 + 1), 1, v5);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_116;
    }

    v23 = *v13;
    v10 = *(*v13 + 16);
    LODWORD(v147) = *(*v13 + 24);
    v22 = *(v23 + 32);
    v5 = *(v23 + 40);
    v13 = (v3 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
    v61 = *(v13 + 14);
    v148 = v61;
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    *(v13 + 14) = v62;
    v63 = v61 + 2;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
    }

    else
    {
      v146 = v10;
      v141 = v5;
      *(v13 + 14) = v63;
      if (!__OFADD__(v63, 1))
      {
        *(v13 + 14) = v61 + 3;
        v5 = *(v13 + 10);
        v10 = *(v5 + 16);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v140 = v22;
        if (v64)
        {
          goto LABEL_55;
        }

        goto LABEL_121;
      }
    }

    __break(1u);
LABEL_121:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 1, v5);
LABEL_55:
    v66 = *(v5 + 16);
    v65 = *(v5 + 24);
    v67 = v66 + 1;
    v144 = v66 + 1;
    v145 = v23;
    v143 = v62;
    if (v66 >= v65 >> 1)
    {
      v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v144, 1, v5);
      v67 = v144;
      v5 = v124;
    }

    *(v5 + 16) = v67;
    v68 = v5 + 16 * v66;
    *(v68 + 32) = 0;
    *(v68 + 40) = 1;
    *(v13 + 10) = v5;
    v69 = *(v5 + 24);
    v41 = v66 + 2;
    if ((v66 + 2) > (v69 >> 1))
    {
      v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v66 + 2, 1, v5);
      v67 = v144;
      v5 = v125;
    }

    *(v5 + 16) = v41;
    v137 = 16 * v67;
    v70 = v5 + 16 * v67;
    *(v70 + 32) = 0;
    *(v70 + 40) = 1;
    *(v13 + 10) = v5;
    v71 = *(v5 + 24);
    v72 = v66 + 3;
    v139 = v66 + 3;
    if ((v66 + 3) > (v71 >> 1))
    {
      v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v66 + 3, 1, v5);
      v72 = v139;
      v5 = v126;
    }

    *(v5 + 16) = v72;
    v136 = 16 * v41;
    v73 = v5 + 16 * v41;
    *(v73 + 32) = 0;
    *(v73 + 40) = 1;
    *(v13 + 10) = v5;
    v74 = *(v5 + 24);
    v75 = v66 + 4;
    v142 = v66 + 4;
    if ((v66 + 4) > (v74 >> 1))
    {
      v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75, 1, v5);
      v72 = v139;
      v75 = v142;
      v5 = v127;
    }

    v138 = v63;
    *(v5 + 16) = v75;
    v135 = 16 * v72;
    v76 = v5 + 16 * v72;
    *(v76 + 32) = 0;
    *(v76 + 40) = 1;
    *(v13 + 10) = v5;
    v77 = *(v5 + 24);
    v78 = v66 + 5;
    v79 = v3;
    if (v78 > (v77 >> 1))
    {
      v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78, 1, v5);
      v75 = v142;
      v5 = v128;
    }

    *(v5 + 16) = v78;
    v134 = 16 * v75;
    v80 = v5 + 16 * v75;
    *(v80 + 32) = 0;
    *(v80 + 40) = 1;
    *(v13 + 10) = v5;
    v81 = v148 | 0x200000000000000;
    v82 = *v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v82 + 2) + 1, 1, v82, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v84 = *(v82 + 2);
    v83 = *(v82 + 3);
    if (v84 >= v83 >> 1)
    {
      v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v82, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v82 + 2) = v84 + 1;
    *&v82[8 * v84 + 32] = v81;
    *v13 = v82;
    MEProgram.Builder.buildSave(_:)(v10, 0x1100000000000000);
    v149 = v146;
    v150 = v147;
    v85 = v79;
    Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v149);
    if (v2)
    {
    }

    v86 = *v13;
    v87 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v89 = *(v86 + 2);
    v88 = *(v86 + 3);
    v90 = v89 + 1;
    v151 = v85;
    if (v89 >= v88 >> 1)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v86, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v86 + 2) = v90;
    *&v86[8 * v89 + 32] = 0x1300000000000000;
    *v13 = v86;
    v91 = *(v13 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
    }

    v92 = v144;
    v93 = *(v91 + 2);
    if (v10 >= v93)
    {
      __break(1u);
    }

    else
    {
      v94 = &v91[16 * v10];
      *(v94 + 4) = v90;
      v94[40] = 0;
      *(v13 + 10) = v91;
      v90 = v143 | 0x200000000000000;
      v87 = *(v86 + 2);
      v93 = *(v86 + 3);
      v10 = v87 + 1;
      if (v87 < v93 >> 1)
      {
        goto LABEL_78;
      }
    }

    v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v10, 1, v86, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v92 = v144;
LABEL_78:
    *(v86 + 2) = v10;
    *&v86[8 * v87 + 32] = v90;
    *v13 = v86;
    v95 = v148 | 0x300000000000000;
    v96 = *(v86 + 3);
    v11 = v87 + 2;
    if ((v87 + 2) > (v96 >> 1))
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v87 + 2, 1, v86, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v92 = v144;
    }

    *(v86 + 2) = v11;
    *&v86[8 * v10 + 32] = v95;
    *v13 = v86;
    MEProgram.Builder.buildSave(_:)(v92, 0x1100000000000000);
    v149 = v140;
    v150 = v141;
    Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v149);
    v42 = *v13;
    v3 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_93;
    }

    goto LABEL_130;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
      v46 = DSLTree.CustomCharacterClass.Member.generateConsumer(_:)(*v3);
      if (!v2)
      {
        v48 = v47;
        v49 = v46;
        type metadata accessor for Compiler.ByteCodeGen(0);
        MEProgram.Builder.buildConsume(by:)(v49, v48);
      }

      outlined destroy of MEProgram(&v13[v45], type metadata accessor for DSLTree.Atom);
      v50 = v13;
    }

    else
    {
      outlined init with take of DSLTree.QuantificationKind(v13, v10, type metadata accessor for DSLTree.Atom);
      outlined init with copy of DSLTree._AST.AbsentFunction(v10, v8, type metadata accessor for DSLTree.Atom);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 == 1)
      {
        outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
        LODWORD(v17) = *v8;
        if (*v8 <= 0x7Fu)
        {
          v97 = v17 + 1;
          goto LABEL_84;
        }

        goto LABEL_125;
      }

      if (!v16)
      {
        outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
        v17 = *v3;
        v18 = *(*v3 + 16);
        if (v18)
        {
          v19 = *v8;
          v20 = *(v8 + 1);
LABEL_86:
          if ((*(v17 + 4 * v18 + 28) & 0x10000) != 0)
          {
            Compiler.ByteCodeGen.emitCharacter(_:)(v19, v20);
          }

          else
          {
            specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(v19, v20, v3);
          }
        }

        __break(1u);
LABEL_125:
        v122 = (v17 & 0x3F) << 8;
        if (v17 >= 0x800)
        {
          goto LABEL_138;
        }

        v97 = (v17 >> 6) + v122 + 33217;
        goto LABEL_84;
      }

      Compiler.ByteCodeGen.emitAtom(_:)(v10);
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
      v50 = v8;
    }

    return outlined destroy of MEProgram(v50, type metadata accessor for DSLTree.Atom);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v44 = v13[8];
    v149 = *v13;
    v150 = v44;
    Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v149);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(uint64_t a1)
{
  v5 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v139 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v139 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v151 = &v139 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v149 = &v139 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v150 = &v139 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v154 = &v139 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v177 = (&v139 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v176 = (&v139 - v36);
  v37 = *v1;
  v38 = *(*v1 + 16);
  if (!v38)
  {
    goto LABEL_148;
  }

  v164 = v15;
  v165 = v29;
  v144 = v34;
  v141 = v33;
  v39 = *a1;
  v40 = *(a1 + 8);
  a1 = v37 + 32;
  v41 = *(v37 + 32 + 4 * v38 - 2);
  v146 = v1;
  v168 = v30;
  v169 = v31;
  v172 = v32;
  v42 = v35;
  if (v41)
  {
    v39 = Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v39);
  }

  else
  {
  }

  v43 = Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(v39);

  v143 = v43;
  v180 = v43;
  v142 = v40;
  v181 = v40;
  v1 = &v180;
  v44 = DSLTree.CustomCharacterClass.asAsciiBitset(_:)(v37);
  if (v44 != 2)
  {
    v47 = v44;
    v48 = v45;
    v1 = v46;
    v49 = type metadata accessor for Compiler.ByteCodeGen(0);
    if ((*(v146 + *(v49 + 28)) & 1) == 0)
    {
      v50 = v49;

      v51 = *(v37 + 16);
      if (v51)
      {
        v52 = *(a1 + 4 * v51 - 4);
        v37 = v146 + *(v50 + 20);
        v53 = *(v37 + 48);
        v12 = *(v53 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((v52 & 0x10000) != 0)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 + 1, 1, v53);
          }

          v135 = *(v53 + 2);
          v134 = *(v53 + 3);
          if (v135 >= v134 >> 1)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1, v53);
          }

          *(v53 + 2) = v135 + 1;
          v136 = &v53[24 * v135];
          v136[32] = v47 & 1;
          *(v136 + 5) = v48;
          *(v136 + 6) = v1;
          *(v37 + 48) = v53;
          v1 = 0xB00000000000000;
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 + 1, 1, v53);
          }

          v56 = *(v53 + 2);
          v55 = *(v53 + 3);
          if (v56 >= v55 >> 1)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v53);
          }

          *(v53 + 2) = v56 + 1;
          v57 = &v53[24 * v56];
          v57[32] = v47 & 1;
          *(v57 + 5) = v48;
          *(v57 + 6) = v1;
          *(v37 + 48) = v53;
          v1 = 0xB00000000000001;
        }

        a1 = *v37;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_130;
        }

        goto LABEL_152;
      }

LABEL_151:
      __break(1u);
LABEL_152:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      a1 = result;
LABEL_130:
      v138 = *(a1 + 16);
      v137 = *(a1 + 24);
      if (v138 >= v137 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, a1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        a1 = result;
      }

      *(a1 + 16) = v138 + 1;
      *(a1 + 8 * v138 + 32) = v1 | (v12 << 16);
      *v37 = a1;
      return result;
    }
  }

  v58 = type metadata accessor for Compiler.ByteCodeGen(0);
  v59 = *(v146 + *(v58 + 28));
  v140 = v58;
  if (v59)
  {
  }

  else
  {
    v178 = v143;
    v179 = v142;
    v1 = &v178;
    DSLTree.CustomCharacterClass.coalescingASCIIMembers(_:)(v37);
    v60 = v180;
    v142 = v181;
  }

  v2 = v164;
  a1 = v165;
  v61 = v42;
  v62 = *(v60 + 16);
  v147 = v6;
  v173 = v62;
  if (v62)
  {
    v63 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v145 = v42;
    v171 = v60;
    while (1)
    {
      if (v63 >= *(v60 + 16))
      {
        goto LABEL_141;
      }

      v182 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v64 = *(v6 + 72);
      v175 = v63;
      v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v65 = v176;
      outlined init with copy of DSLTree._AST.AbsentFunction(v60 + v182 + v64 * v63, v176, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      outlined init with copy of DSLTree._AST.AbsentFunction(v65, v177, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
        v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
        outlined destroy of MEProgram(v176, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        outlined destroy of MEProgram(v177, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v85 = v177;
LABEL_63:
        outlined destroy of MEProgram(v85, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        goto LABEL_65;
      }

      v1 = *v177;
      v159 = *(*v177 + 16);
      if (!v159)
      {
LABEL_61:
        outlined destroy of MEProgram(v176, type metadata accessor for DSLTree.CustomCharacterClass.Member);

        goto LABEL_20;
      }

      v67 = 0;
      v166 = v1;
      v167 = v1 + v182;
      while (1)
      {
        if (v67 >= *(v1 + 16))
        {
          goto LABEL_142;
        }

        v174 = v67;
        v68 = v154;
        outlined init with copy of DSLTree._AST.AbsentFunction(v167 + v67 * v64, v154, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v69 = v68;
        v1 = v172;
        outlined init with take of DSLTree.QuantificationKind(v69, v172, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v70 = swift_getEnumCaseMultiPayload();
        if (v70 == 4)
        {
          outlined destroy of MEProgram(v1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          goto LABEL_60;
        }

        if (v70 != 2)
        {

          v85 = v172;
          goto LABEL_63;
        }

        v71 = *v172;
        v155 = *(*v172 + 16);
        if (v155)
        {
          break;
        }

LABEL_58:

LABEL_60:
        v67 = v174 + 1;
        v1 = v166;
        if (v174 + 1 == v159)
        {
          goto LABEL_61;
        }
      }

      v72 = 0;
      v161 = v71 + v182;
      v160 = v71;
      while (1)
      {
        if (v72 >= *(v71 + 16))
        {
          goto LABEL_144;
        }

        v170 = v72;
        v73 = v150;
        outlined init with copy of DSLTree._AST.AbsentFunction(v161 + v72 * v64, v150, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v74 = v73;
        v1 = v169;
        outlined init with take of DSLTree.QuantificationKind(v74, v169, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v75 = swift_getEnumCaseMultiPayload();
        if (v75 == 4)
        {
          outlined destroy of MEProgram(v1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          goto LABEL_57;
        }

        if (v75 != 2)
        {

          v85 = v169;
          goto LABEL_63;
        }

        v76 = *v169;
        v152 = *(*v169 + 16);
        if (v152)
        {
          break;
        }

LABEL_55:

        v61 = v145;
LABEL_57:
        v72 = v170 + 1;
        v71 = v160;
        if (v170 + 1 == v155)
        {
          goto LABEL_58;
        }
      }

      v77 = 0;
      v158 = v76 + v182;
      v157 = v76;
      while (1)
      {
        if (v77 >= *(v76 + 16))
        {
          goto LABEL_145;
        }

        v78 = v149;
        outlined init with copy of DSLTree._AST.AbsentFunction(v158 + v77 * v64, v149, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v79 = v78;
        v1 = v168;
        outlined init with take of DSLTree.QuantificationKind(v79, v168, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v80 = swift_getEnumCaseMultiPayload();
        if (v80 != 4)
        {
          break;
        }

        outlined destroy of MEProgram(v1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
LABEL_54:
        ++v77;
        v76 = v157;
        if (v77 == v152)
        {
          goto LABEL_55;
        }
      }

      if (v80 == 2)
      {
        v81 = *v168;
        v156 = *(*v168 + 16);
        if (v156)
        {
          v6 = 0;
          v163 = v81 + v182;
          v153 = v3;
          v162 = v81;
          do
          {
            if (v6 >= *(v81 + 16))
            {
              goto LABEL_143;
            }

            v1 = v151;
            outlined init with copy of DSLTree._AST.AbsentFunction(v163 + v6 * v64, v151, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            outlined init with take of DSLTree.QuantificationKind(v1, v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            v82 = swift_getEnumCaseMultiPayload();
            if (v82 == 4)
            {
              outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            }

            else
            {
              if (v82 != 2)
              {

                outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
                v6 = v147;
                goto LABEL_64;
              }

              v3 = *v2;
              v83 = *v2 + v182;
              v2 = -*(*v2 + 16);
              a1 = -1;
              while (v2 + a1 != -1)
              {
                if (++a1 >= *(v3 + 16))
                {
                  __break(1u);
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
                  goto LABEL_146;
                }

                v84 = v83 + v64;
                outlined init with copy of DSLTree._AST.AbsentFunction(v83, v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
                v1 = DSLTree.CustomCharacterClass.Member.isOnlyTrivia.getter();
                outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
                v83 = v84;
                if ((v1 & 1) == 0)
                {

                  v6 = v147;
                  v3 = v153;
                  goto LABEL_64;
                }
              }

              v3 = v153;
              v2 = v164;
              a1 = v165;
            }

            ++v6;
            v81 = v162;
          }

          while (v6 != v156);
        }

        v6 = v147;
        goto LABEL_54;
      }

      outlined destroy of MEProgram(v168, type metadata accessor for DSLTree.CustomCharacterClass.Member);
LABEL_64:
      v61 = v145;
LABEL_65:
      outlined init with take of DSLTree.QuantificationKind(v176, v61, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v3;
      if ((v86 & 1) == 0)
      {
        v1 = &v180;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
        v3 = v180;
      }

      v88 = *(v3 + 16);
      v87 = *(v3 + 24);
      if (v88 >= v87 >> 1)
      {
        v1 = &v180;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
        v3 = v180;
      }

      *(v3 + 16) = v88 + 1;
      outlined init with take of DSLTree.QuantificationKind(v61, v3 + v182 + v88 * v64, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v2 = v164;
      a1 = v165;
LABEL_20:
      v63 = v175 + 1;
      v60 = v171;
      if (v175 + 1 == v173)
      {
        goto LABEL_75;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_75:

  if (v142)
  {
    a1 = v146 + *(v140 + 20);
    v1 = *(a1 + 80);
    v2 = *(v1 + 16);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v175 = v2;
    if ((v89 & 1) == 0)
    {
      goto LABEL_149;
    }

    while (1)
    {
      v91 = *(v1 + 16);
      v90 = *(v1 + 24);
      if (v91 >= v90 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v1);
      }

      *(v1 + 16) = v91 + 1;
      v92 = v1 + 16 * v91;
      *(v92 + 32) = 0;
      *(v92 + 40) = 1;
      *(a1 + 80) = v1;
      v174 = specialized Collection.dropLast(_:)(1uLL, v3);
      v182 = v93;
      v37 = v94;
      v96 = v95 >> 1;

      if (v37 == v96)
      {
        break;
      }

      if (v37 <= v96)
      {
        v116 = v96;
      }

      else
      {
        v116 = v37;
      }

      v177 = v116;
      v2 = v144;
      v153 = v3;
      v176 = v96;
      while (v177 != v37)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v182 + *(v6 + 72) * v37, v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v118 = *(v1 + 16);
        v117 = *(v1 + 24);
        if (v118 >= v117 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v1);
        }

        *(v1 + 16) = v118 + 1;
        v119 = v1 + 16 * v118;
        *(v119 + 32) = 0;
        *(v119 + 40) = 1;
        *(a1 + 80) = v1;
        v120 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v120 + 2) + 1, 1, v120, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v122 = *(v120 + 2);
        v121 = *(v120 + 3);
        if (v122 >= v121 >> 1)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1, v120, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v120 + 2) = v122 + 1;
        *&v120[8 * v122 + 32] = 0x1100000000000000;
        *a1 = v120;
        v123 = *(a1 + 88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 2) + 1, 1, v123);
        }

        v125 = *(v123 + 2);
        v124 = *(v123 + 3);
        if (v125 >= v124 >> 1)
        {
          v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1, v123);
        }

        *(v123 + 2) = v125 + 1;
        v126 = &v123[32 * v125];
        *(v126 + 4) = v122;
        *(v126 + 5) = v118;
        *(v126 + 6) = 0;
        v126[56] = 1;
        *(a1 + 88) = v123;
        v2 = v144;
        v127 = v148;
        Compiler.ByteCodeGen.emitCCCMember(_:)(v144);
        v148 = v127;
        if (v127)
        {
          outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          swift_unknownObjectRelease();
        }

        outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v128 = *a1;
        v129 = swift_isUniquelyReferenced_nonNull_native();
        v3 = v153;
        if ((v129 & 1) == 0)
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 2) + 1, 1, v128, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v131 = *(v128 + 2);
        v130 = *(v128 + 3);
        v12 = v131 + 1;
        if (v131 >= v130 >> 1)
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1, v128, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v128 + 2) = v12;
        *&v128[8 * v131 + 32] = 0x1300000000000000;
        *a1 = v128;
        v132 = *(v128 + 3);
        v6 = v131 + 2;
        if (v6 > (v132 >> 1))
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v6, 1, v128, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v128 + 2) = v6;
        *&v128[8 * v12 + 32] = 0x1D00000000000000;
        *a1 = v128;
        v1 = *(a1 + 80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
        }

        if (v118 >= *(v1 + 16))
        {
          goto LABEL_147;
        }

        v133 = v1 + 16 * v118;
        *(v133 + 32) = v6;
        ++v37;
        *(v133 + 40) = 0;
        *(a1 + 80) = v1;
        v6 = v147;
        if (v176 == v37)
        {
          goto LABEL_80;
        }
      }

LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 + 1, 1, v1);
    }

LABEL_80:
    swift_unknownObjectRelease();
    MEProgram.Builder.buildSave(_:)(v175, 0x1100000000000000);
    v1 = *(v3 + 16);
    if (!v1)
    {

      __break(1u);
      return result;
    }

    if (v1 > *(v3 + 16))
    {
      __break(1u);
      goto LABEL_151;
    }

    v97 = v141;
    outlined init with copy of DSLTree._AST.AbsentFunction(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v1 - 1), v141, type metadata accessor for DSLTree.CustomCharacterClass.Member);

    v98 = v148;
    Compiler.ByteCodeGen.emitCCCMember(_:)(v97);
    result = outlined destroy of MEProgram(v97, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    if (v98)
    {
      return result;
    }

    v100 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v102 = *(v100 + 2);
    v101 = *(v100 + 3);
    v103 = v102 + 1;
    if (v102 >= v101 >> 1)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v100, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v100 + 2) = v103;
    *&v100[8 * v102 + 32] = 0x1300000000000000;
    *a1 = v100;
    v104 = *(v100 + 3);
    v105 = v102 + 2;
    if ((v102 + 2) > (v104 >> 1))
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v102 + 2, 1, v100, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v106 = v175;
    *(v100 + 2) = v105;
    *&v100[8 * v103 + 32] = 0x1D00000000000000;
    *a1 = v100;
    v107 = *(a1 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v107);
      v107 = result;
    }

    v108 = v146;
    v109 = *(v107 + 16);
    if (v106 >= v109)
    {
      __break(1u);
    }

    else
    {
      v110 = v107 + 16 * v106;
      *(v110 + 32) = v105;
      *(v110 + 40) = 0;
      *(a1 + 80) = v107;
      v109 = *v108;
      v111 = *(*v108 + 16);
      if (v111)
      {
        v112 = *(v109 + 4 * v111 + 28);
        v107 = *(v100 + 2);
        v109 = *(v100 + 3);
        v106 = v107 + 1;
        if ((v112 & 0x10000) != 0)
        {
          if (v109 >> 1 <= v107)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v107 + 1, 1, v100, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            v100 = result;
          }

          *(v100 + 2) = v106;
          v113 = &v100[8 * v107];
          v114 = 0x700000000010000;
          goto LABEL_139;
        }

        if (v109 >> 1 > v107)
        {
LABEL_95:
          *(v100 + 2) = v106;
          v113 = &v100[8 * v107];
          v114 = 0x700000000010001;
LABEL_139:
          *(v113 + 4) = v114;
          *a1 = v100;
          return result;
        }

LABEL_155:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v106, 1, v100, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v100 = result;
        goto LABEL_95;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

  v115 = v148;
  specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(v3, v146);
  v148 = v115;
}

uint64_t (*DSLTree.CustomCharacterClass.Member.generateConsumer(_:)(uint64_t a1))()
{
  v2 = v1;
  v4 = type metadata accessor for DSLTree.Atom(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(v2, v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  LODWORD(v13) = swift_getEnumCaseMultiPayload();
  if (v13 <= 2)
  {
    if (v13 != 1)
    {
LABEL_31:
      outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      goto LABEL_32;
    }

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    outlined init with take of DSLTree.QuantificationKind(v12, v9, type metadata accessor for DSLTree.Atom);
    outlined init with take of DSLTree.QuantificationKind(v12 + v14, v7, type metadata accessor for DSLTree.Atom);
    v15 = DSLTree.Atom.literalCharacterValue.getter();
    if (!v16)
    {
      outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
      v40 = 0;
      v41 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
      MEMORY[0x193ACE8E0](0x676E6172206E6920, 0xE900000000000065);
      v30 = v40;
      v31 = v41;
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
      swift_allocError();
      v25 = v30;
      v26 = v31;
      v27 = 189;
      goto LABEL_20;
    }

    v17 = v15;
    v18 = v16;
    v19 = DSLTree.Atom.literalCharacterValue.getter();
    if (!v20)
    {
      outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);

      v40 = 0;
      v41 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
      MEMORY[0x193ACE8E0](0x676E6172206E6920, 0xE900000000000065);
      v33 = v40;
      v34 = v41;
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
      swift_allocError();
      v25 = v33;
      v26 = v34;
      v27 = 192;
      goto LABEL_20;
    }

    v12 = v19;
    v21 = v20;
    if ((Character.hasExactlyOneScalar.getter() & 1) == 0)
    {
      goto LABEL_17;
    }

    v13 = specialized Collection.first.getter(v17, v18);
    if ((v13 & 0x100000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v42 = v13;
    if (Unicode.Scalar.isNFC.getter(v13))
    {

      if (Character.hasExactlyOneScalar.getter())
      {
        v13 = specialized Collection.first.getter(v12, v21);
        if ((v13 & 0x100000000) != 0)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v22 = v13;
        if (Unicode.Scalar.isNFC.getter(v13))
        {

          if (v22 < v42)
          {
            v40 = 0;
            v41 = 0xE000000000000000;
            _StringGuts.grow(_:)(19);
            MEMORY[0x193ACE8E0](0x2064696C61766E49, 0xEE002065676E6172);
            _print_unlocked<A, B>(_:_:)();
            outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
            MEMORY[0x193ACE8E0](45, 0xE100000000000000);
            _print_unlocked<A, B>(_:_:)();
            outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
            v23 = v40;
            v24 = v41;
            type metadata accessor for Unsupported();
            lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
            swift_allocError();
            v25 = v23;
            v26 = v24;
            v27 = 203;
LABEL_20:
            MEMORY[0x193ACDF10](v25, v26, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, v27);
            return swift_willThrow();
          }

          v12 = type metadata accessor for DSLTree.Atom;
          outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
          LODWORD(v13) = outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
          v35 = *(a1 + 16);
          if (v35)
          {
            v36 = *(a1 + 4 * v35 + 28);
            v37 = v36 & 1;
            if ((v36 & 0x10000) != 0)
            {
              v39 = swift_allocObject();
              *(v39 + 16) = 1;
              *(v39 + 20) = v42;
              *(v39 + 24) = v22;
              *(v39 + 28) = v37;
              return closure #1 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:)partial apply;
            }

            else
            {
              v38 = swift_allocObject();
              *(v38 + 16) = 0;
              *(v38 + 20) = v42;
              *(v38 + 24) = v22;
              *(v38 + 28) = v37;
              return partial apply for closure #1 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:);
            }
          }

          __break(1u);
          goto LABEL_28;
        }
      }

      outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
      outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      swift_allocError();
      *v32 = v12;
      *(v32 + 8) = v21;
    }

    else
    {
LABEL_17:

      outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
      outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      swift_allocError();
      *v32 = v17;
      *(v32 + 8) = v18;
    }

    *(v32 + 16) = 1;
    return swift_willThrow();
  }

  if (v13 == 4)
  {
    outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return closure #2 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:);
  }

LABEL_30:
  if (v13 != 3)
  {
    goto LABEL_31;
  }

LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_StringProcessing::DSLTree::CustomCharacterClass __swiftcall DSLTree.CustomCharacterClass.coalescingASCIIMembers(_:)(_StringProcessing::MatchingOptions a1)
{
  v32 = v1;
  v29 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v31 = *(v2 + 8);
  v8 = *(v7 + 16);
  v30 = v7;
  v28 = v4;
  if (v8)
  {
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = v7 + v9;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = *(v4 + 72);
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v10, v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (DSLTree.CustomCharacterClass.Member.asAsciiBitset(_:_:)(a1.stack._rawValue, 0) == 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        v24 = v13[2];
        v23 = v13[3];
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v13, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          v13 = v22;
        }

        else
        {
          v22 = v13;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        v24 = v11[2];
        v26 = v11[3];
        v25 = v24 + 1;
        if (v24 >= v26 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v24 + 1, 1, v11, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          v11 = v22;
        }

        else
        {
          v22 = v11;
        }
      }

      v22[2] = v25;
      outlined init with take of DSLTree.QuantificationKind(v6, v22 + v9 + v24 * v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v10 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v11[2] && v13[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
    v14 = *(v28 + 72);
    v15 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18E5ED050;
    v17 = v16 + v15;
    *v17 = v11;
    *(v17 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    v18 = v17 + v14;
    *v18 = v13;
    *(v18 + 8) = 0;
    v19 = swift_storeEnumTagMultiPayload();
  }

  else
  {

    v16 = v30;
  }

  v21 = v32;
  *v32 = v16;
  *(v21 + 8) = v31;
  result.members._rawValue = v19;
  result.isInverted = v20;
  return result;
}

uint64_t DSLTree.CustomCharacterClass.Member.isOnlyTrivia.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v14 - v7);
  outlined init with copy of DSLTree._AST.AbsentFunction(v1, &v14 - v7, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return 1;
  }

  else if (result == 2)
  {
    v10 = 0;
    v11 = *v8;
    v12 = *(v11 + 16);
    while (1)
    {
      if (v12 == v10)
      {

        return 1;
      }

      if (v10 >= *(v11 + 16))
      {
        break;
      }

      outlined init with copy of DSLTree._AST.AbsentFunction(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10++, v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v13 = DSLTree.CustomCharacterClass.Member.isOnlyTrivia.getter();
      result = outlined destroy of MEProgram(v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if ((v13 & 1) == 0)
      {

        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return 0;
  }

  return result;
}

uint64_t Compiler.ByteCodeGen.emitConcatenation(_:)(uint64_t a1)
{
  v64 = type metadata accessor for DSLTree.Atom(0);
  result = MEMORY[0x1EEE9AC00](v64);
  v65 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      v8 = flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(v7);

      v9 = *(v8 + 2);
      v10 = *(v5 + 16);
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v11 <= *(v5 + 24) >> 1)
      {
        if (!*(v8 + 2))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v12 = v10 + v9;
        }

        else
        {
          v12 = v10;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v5);
        v5 = result;
        if (!*(v8 + 2))
        {
LABEL_3:

          if (v9)
          {
            goto LABEL_67;
          }

          goto LABEL_4;
        }
      }

      if ((*(v5 + 24) >> 1) - *(v5 + 16) < v9)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v13 = *(v5 + 16);
        v14 = __OFADD__(v13, v9);
        v15 = v13 + v9;
        if (v14)
        {
          goto LABEL_70;
        }

        *(v5 + 16) = v15;
      }

LABEL_4:
      --v4;
    }

    while (v4);
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  v69 = MEMORY[0x1E69E7CC0];
  v16 = *(v5 + 16);
  if (!v16)
  {
LABEL_58:

LABEL_59:
    v54 = v69;
    v55 = *(v69 + 16);
    v56 = v63;
    if (!v55)
    {
    }

    v57 = 0;
    while (v57 < *(v54 + 16))
    {
      v58 = *(v54 + 8 * v57 + 32);

      Compiler.ByteCodeGen.emitNode(_:)(v58);

      if (!v56 && v55 != ++v57)
      {
        continue;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v60 = v16 - 1;
  v61 = xmmword_18E5ED040;
  while (2)
  {
    v62 = v18;
    v19 = 0;
    v20 = v17;
    while (1)
    {
      if (v20 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_66;
      }

      v23 = *(v5 + 32 + 8 * v20);
      v24 = (v23 >> 59) & 0x1E | (v23 >> 2) & 1;
      if (v24 == 10)
      {
        v21 = *((v23 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v22 = *((v23 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        MEMORY[0x193ACE8E0](v21, v22);
        goto LABEL_22;
      }

      if (v24 != 9)
      {
        break;
      }

      v33 = v67 & 0xFFFFFFFFFFFFLL;
      if ((v68 & 0x2000000000000000) != 0)
      {
        v33 = HIBYTE(v68) & 0xF;
      }

      if (!v33)
      {
LABEL_43:

        if (v19)
        {
          goto LABEL_44;
        }

LABEL_50:
        v44 = v62;
        goto LABEL_51;
      }

LABEL_23:
      ++v20;
      v19 = 1;
      if (v16 == v20)
      {

        v50 = v67;
        v51 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v61;
        v53 = swift_allocObject();
        *(v53 + 16) = v50;
        *(v53 + 24) = v51;
        *(inited + 32) = v53 | 0x5000000000000000;
        result = specialized Array.append<A>(contentsOf:)(inited);
        goto LABEL_59;
      }
    }

    if (v24 != 8)
    {
      goto LABEL_43;
    }

    v25 = swift_projectBox();
    v26 = v65;
    outlined init with copy of DSLTree._AST.AbsentFunction(v25, v65, type metadata accessor for DSLTree.Atom);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v34 = *v26;
      v32 = v26[1];

      v30 = v34;
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v65;
      if (*v65 >= 0x80u)
      {
        v35 = (*v65 & 0x3F) << 8;
        if (v28 >= 0x800)
        {
          v36 = v28 >> 12;
          v37 = (v35 | (v28 >> 6) & 0x3F) << 8;
          v38 = HIWORD(v28);
          v29 = (((v37 | (v28 >> 12) & 0x3F) << 8) | (v28 >> 18)) - 2122219023;
          v39 = v36 + v37 + 8487393;
          if (!v38)
          {
            v29 = v39;
          }
        }

        else
        {
          v29 = (v28 >> 6) + v35 + 33217;
        }
      }

      else
      {
        v29 = v28 + 1;
      }

      v66 = (v29 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v29) >> 3))));

      v30 = static String._uncheckedFromUTF8(_:)();
      v32 = v31;
LABEL_38:
      MEMORY[0x193ACE8D0](v30, v32);
LABEL_22:

      goto LABEL_23;
    }

    outlined destroy of MEProgram(v65, type metadata accessor for DSLTree.Atom);
    if ((v19 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_44:
    v40 = v67;
    v41 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v42 = swift_initStackObject();
    *(v42 + 16) = v61;
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v41;
    v59 = v42;
    *(v42 + 32) = v43 | 0x5000000000000000;
    v44 = v62;
    v45 = *(v62 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v46 = *(v44 + 24) >> 1, v46 <= v45))
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v45 + 1, 1, v44);
      v44 = result;
      v46 = *(result + 24) >> 1;
    }

    if (v46 > *(v44 + 16))
    {
      swift_arrayInitWithCopy();

      ++*(v44 + 16);
      v67 = 0;
      v68 = 0xE000000000000000;
LABEL_51:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1, v44);
        v44 = result;
      }

      v48 = *(v44 + 16);
      v47 = *(v44 + 24);
      v49 = v44;
      if (v48 >= v47 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v44);
        v49 = result;
      }

      v17 = v20 + 1;
      v18 = v49;
      *(v49 + 16) = v48 + 1;
      *(v49 + 8 * v48 + 32) = v23;
      v69 = v49;
      if (v60 == v20)
      {

        goto LABEL_58;
      }

      continue;
    }

    break;
  }

LABEL_71:
  __break(1u);
  return result;
}

char *flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(unint64_t a1)
{
  v1 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v1 == 12)
  {
    v16 = swift_projectBox();
    goto LABEL_24;
  }

  if (v1 == 4)
  {
    v16 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 16);
LABEL_24:
    v17 = *v16;

    v18 = flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(v17);

    return v18;
  }

  if (v1 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_18E5ED040;
    *(v6 + 4) = a1;

    return v6;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v3 = *(v2 + 16);

  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_27:

    return v6;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v5 < *(v2 + 16))
  {
    v7 = *(v2 + 32 + 8 * v5);

    v8 = flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(v7);

    v9 = *(v8 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_18:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v9)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v6 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_33;
          }

          *(v6 + 2) = v15;
        }

        goto LABEL_7;
      }
    }

    if (v9)
    {
      goto LABEL_31;
    }

LABEL_7:
    if (v3 == ++v5)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t DSLTree.Atom.literalCharacterValue.getter()
{
  v1 = type metadata accessor for DSLTree.Atom(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(v0, v3, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *v3;
    if (*v3 > 0x7Fu)
    {
      v8 = (*v3 & 0x3F) << 8;
      if (v6 >= 0x800)
      {
        v9 = v6 >> 12;
        v10 = (v8 | (v6 >> 6) & 0x3F) << 8;
        v11 = HIWORD(v6);
        v7 = (((v10 | (v6 >> 12) & 0x3F) << 8) | (v6 >> 18)) - 2122219023;
        v12 = v9 + v10 + 8487393;
        if (!v11)
        {
          v7 = v12;
        }
      }

      else
      {
        v7 = (v6 >> 6) + v8 + 33217;
      }
    }

    else
    {
      v7 = v6 + 1;
    }

    v13[1] = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v7) >> 3))));
    return static String._uncheckedFromUTF8(_:)();
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of MEProgram(v3, type metadata accessor for DSLTree.Atom);
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t CaptureTransform.callAsFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (*(v4 + 32) > 1u)
  {
    if (*(v4 + 32) != 2)
    {
      return v5(a1, a2, a3, a4);
    }
  }

  else if (*(v4 + 32))
  {
    return v5(a1, a2, a3, a4);
  }

  v12[3] = MEMORY[0x1E69E67B0];
  v11 = swift_allocObject();
  v12[0] = v11;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  (v5)(v12);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

void *constructExistentialOutputComponent(from:component:optionalCount:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(a1, &v18, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (*(&v20 + 1) == 1)
  {
    result = outlined destroy of SplitSequence<SubstringSearcher>(&v18, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    if (a2 >= 1)
    {
      v6 = static TypeConstruction.optionalType<A>(of:depth:)();
      return makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v6, a3);
    }

    __break(1u);
    goto LABEL_13;
  }

  v21[0] = v18;
  v21[1] = v19;
  v21[2] = v20;
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(v21, &v18, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
  if (*(&v20 + 1))
  {
    outlined destroy of SplitSequence<SubstringSearcher>(v21, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    result = outlined init with take of Any(&v19, &v16);
  }

  else
  {
    outlined destroy of SplitSequence<SubstringSearcher>(v21, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    v7 = String.subscript.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v17 = MEMORY[0x1E69E67B0];
    result = swift_allocObject();
    *&v16 = result;
    result[2] = v7;
    result[3] = v9;
    result[4] = v11;
    result[5] = v13;
    if (*(&v20 + 1))
    {
      result = outlined destroy of Any?(&v19, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
    }
  }

  if (a2 < 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  for (; a2; --a2)
  {
    outlined init with copy of Any(&v16, &v18);
    v14 = *(&v19 + 1);
    v15 = __swift_project_boxed_opaque_existential_0(&v18, *(&v19 + 1));
    specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v15, &v16, v14);
    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  return outlined init with take of Any(&v16, a3);
}

double CaptureTransform.callAsFunction(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v5(v12, a1);
      if (!v3)
      {
        outlined init with take of Any(v12, a2);
      }
    }

    else
    {
      outlined init with copy of Any(a1, &v10);
      swift_dynamicCast();
      (v5)(v12, v9[0], v9[1], v9[2], v9[3]);

      if (!v3)
      {
        result = *v12;
        v8 = v12[1];
        *a2 = v12[0];
        a2[1] = v8;
      }
    }
  }

  else
  {
    if (*(v2 + 32))
    {
      outlined init with copy of Any(a1, v9);
      swift_dynamicCast();
      (v5)(&v10);

      if (v3)
      {
        return result;
      }
    }

    else
    {
      v5(&v10, a1);
      if (v3)
      {
        return result;
      }
    }

    if (v11)
    {
      outlined init with take of Any(&v10, v12);
      outlined init with take of Any(v12, a2);
    }

    else
    {
      outlined destroy of Any?(&v10, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
      result = 0.0;
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  return result;
}

uint64_t DSLTree.CustomCharacterClass.containsDot.getter()
{
  v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  v14 = *v0;
  v15 = *(*v0 + 16);
  if (!v15)
  {
    return 0;
  }

  v16 = 0;
  v17 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v21 = &v21 - v12;
  while (v16 < *(v14 + 16))
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v17 + *(v2 + 72) * v16, v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    outlined init with take of DSLTree.QuantificationKind(v13, v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v19 = v22;
      outlined init with copy of DSLTree._AST.AbsentFunction(v10, v22, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v20 = *(v19 + 8);
      v23 = *v19;
      v24 = v20;
      LOBYTE(v19) = DSLTree.CustomCharacterClass.containsDot.getter();
      v13 = v21;

      result = outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v19)
      {
        return 1;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v10, v7, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        type metadata accessor for DSLTree.Atom(0);
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          return 1;
        }

        outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.Atom);
      }

      result = outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    }

    if (v15 == ++v16)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter()
{
  v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of DSLTree._AST.AbsentFunction(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v5, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 4)
      {
        break;
      }

      ++v8;
      result = outlined destroy of MEProgram(v5, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    switch(EnumCaseMultiPayload)
    {
      case 5:
        goto LABEL_10;
      case 6:
        v16 = *(*v5 + 24);
        v19 = *(*v5 + 16);
        v20 = v16;
LABEL_14:
        v10 = DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter();

        return v10 & 1;
      case 7:
LABEL_10:
        v11 = *v5;
        v12 = *(*v5 + 16);
        v13 = *(*v5 + 24);
        v14 = *(*v5 + 32);
        v15 = *(v11 + 40);
        v19 = v12;
        v20 = v13;
        if ((DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter() & 1) == 0)
        {

          v10 = 0;
          return v10 & 1;
        }

        v17 = v14;
        v18 = v15;
        goto LABEL_14;
    }

    outlined destroy of MEProgram(v5, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v10 = 1;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v5 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v5 = _decodeScalar(_:startingAt:)();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 32);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

_OWORD *specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = type metadata accessor for Optional();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  v7 = *(a3 - 8);
  (*(v7 + 16))(boxed_opaque_existential_0, a1, a3);
  (*(v7 + 56))(boxed_opaque_existential_0, 0, 1, a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return outlined init with take of Any(&v9, a2);
}

uint64_t makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for Optional();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v5 = *(*(a1 - 8) + 56);

  return v5(boxed_opaque_existential_0, 1, 1, a1);
}

uint64_t AnyRegexOutput.Element.range.getter()
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(v0 + 8, &v3, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v4[3] == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(&v3, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    return 0;
  }

  else
  {
    v1 = v3;
    outlined destroy of Any?(v4, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
  }

  return v1;
}

void *specialized Sequence<>.existentialOutput(from:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);

  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = a3 + 32;
    do
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v9, &v42);
      *(&v47 + 1) = a1;
      v55 = a2;
      v49 = v42;
      v50 = v43;
      v51 = v44;
      v52 = v45;
      v53 = v46;
      v54 = v47;
      if (BYTE1(v47) == 1)
      {
        v45 = v52;
        v46 = v53;
        v47 = v54;
        v48 = v55;
        v42 = v49;
        v43 = v50;
        v44 = v51;

        *&v38 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v38;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v8 = v38;
        }

        *(v8 + 16) = v11 + 1;
        v12 = v8 + 104 * v11;
        v13 = v42;
        v14 = v44;
        *(v12 + 48) = v43;
        *(v12 + 64) = v14;
        *(v12 + 32) = v13;
        v15 = v45;
        v16 = v46;
        v17 = v47;
        *(v12 + 128) = v48;
        *(v12 + 96) = v16;
        *(v12 + 112) = v17;
        *(v12 + 80) = v15;
      }

      else
      {

        outlined destroy of AnyRegexOutput.Element(&v49);
      }

      v9 += 88;
      --v7;
    }

    while (v7);
  }

  v18 = *(v8 + 16);
  if (!v18)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_29:
    if (*(v20 + 16) == 1)
    {
      outlined init with copy of Any(v20 + 32, a4);
    }

    else
    {
      *&v49 = v20;
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [Any] and conformance [A], &unk_1F01904A8, &cache variable for noncanonical specialized generic type metadata for [Any], MEMORY[0x1E69E6310]);
      return static TypeConstruction.tuple<A>(of:)();
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
  v19 = 0;
  v20 = v41;
  while (1)
  {
    outlined init with copy of AnyRegexOutput.Element(v8 + 32 + 104 * v19, &v49);
    v21 = v49;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(&v49 + 8, &v38, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    if (*(&v40 + 1) == 1)
    {
      break;
    }

    v42 = v38;
    v43 = v39;
    v44 = v40;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(&v42, &v38, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    if (*(&v40 + 1))
    {
      outlined destroy of SplitSequence<SubstringSearcher>(&v42, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      result = outlined init with take of Any(&v39, &v36);
    }

    else
    {
      outlined destroy of SplitSequence<SubstringSearcher>(&v42, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      v24 = String.subscript.getter();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v37 = MEMORY[0x1E69E67B0];
      result = swift_allocObject();
      *&v36 = result;
      result[2] = v24;
      result[3] = v26;
      result[4] = v28;
      result[5] = v30;
      if (*(&v40 + 1))
      {
        result = outlined destroy of Any?(&v39, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
      }
    }

    if (v21 < 0)
    {
      goto LABEL_33;
    }

    for (; v21; --v21)
    {
      outlined init with copy of Any(&v36, &v38);
      v31 = *(&v39 + 1);
      v32 = __swift_project_boxed_opaque_existential_0(&v38, *(&v39 + 1));
      specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v32, &v36, v31);
      __swift_destroy_boxed_opaque_existential_0(&v38);
    }

    outlined init with take of Any(&v36, &v38);
LABEL_24:
    outlined destroy of AnyRegexOutput.Element(&v49);
    v41 = v20;
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v20 = v41;
    }

    ++v19;
    *(v20 + 16) = v34 + 1;
    outlined init with take of Any(&v38, (v20 + 32 * v34 + 32));
    if (v19 == v18)
    {

      goto LABEL_29;
    }
  }

  result = outlined destroy of SplitSequence<SubstringSearcher>(&v38, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v21 >= 1)
  {
    v23 = static TypeConstruction.optionalType<A>(of:depth:)();
    makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v23, &v38);
    goto LABEL_24;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t Compiler.emit()@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for CaptureList();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v4;
  v5 = type metadata accessor for Compiler.ByteCodeGen(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v1[4];
  v27 = v1[3];
  v32 = v1[2];

  static CaptureList.Builder.build(_:)(&v32, v4);
  v10 = v8 + v6[7];
  v11 = MEMORY[0x1E69E7CC0];
  *v10 = MEMORY[0x1E69E7CC0];
  *(v10 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_17_StringProcessing8TypedIntVyAC16_ElementRegisterOGTt0g5Tf4g_n(v11);
  *(v10 + 3) = v11;
  *(v10 + 4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSays5UInt8VG_17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGTt0g5Tf4g_n(v11);
  *(v10 + 5) = v11;
  *(v10 + 6) = v11;
  *(v10 + 7) = v11;
  *(v10 + 8) = v11;
  *(v10 + 9) = v11;
  *(v10 + 10) = v11;
  *(v10 + 11) = v11;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  v10[128] = 1;
  *(v10 + 17) = 0;
  *(v10 + 18) = 0;
  v10[152] = 1;
  v12 = type metadata accessor for MEProgram.Builder(0);
  v13 = v12[21];
  CaptureList.init(arrayLiteral:)();
  *&v10[v12[22]] = &outlined read-only object #0 of Compiler.emit();
  v25 = v12[23];
  v10[v25] = 0;
  v14 = v12[24];
  *&v10[v14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17_StringProcessing11ReferenceIDV_SayAC8TypedIntVyAC19_InstructionAddressOGGTt0g5Tf4g_n(v11);
  v15 = v12[25];
  *&v10[v15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17_StringProcessing11ReferenceIDV_SiTt0g5Tf4g_n(v11);
  *(v8 + v6[8]) = 0;
  v16 = v28;
  *v8 = v27;
  *(v8 + v6[9]) = v9;
  (*(v29 + 40))(&v10[v13], v16, v30);
  v10[8] = (v9 & 2) != 0;
  v10[9] = (v9 & 4) != 0;
  v17 = v1[2];
  if (((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 0xE)
  {
    *(v10 + 15) = 0;
    v10[128] = 0;
  }

  v18 = v31;
  Compiler.ByteCodeGen.emitNode(_:)(v17);
  if (!v18)
  {
    v32 = &outlined read-only object #1 of Compiler.emit();
    v19 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(&v32, v17);

    v10[v25] = v19 & 1;
    v20 = *v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v20 + 2) = v22 + 1;
    *&v20[8 * v22 + 32] = 0x1C00000000000000;
    *v10 = v20;
    MEProgram.Builder.assemble()(v26);
  }

  outlined destroy of MEProgram(v8, type metadata accessor for Compiler.ByteCodeGen);
}

uint64_t Compiler.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyHashableType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyHashableType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v2);
  return Hasher._finalize()();
}

unint64_t RegexCompilationError.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x193ACE8E0](0xD00000000000001ELL, 0x800000018E5F2750);
    v5 = _typeName(_:qualified:)();
    MEMORY[0x193ACE8E0](v5);

    MEMORY[0x193ACE8E0](0xD000000000000014, 0x800000018E5F2770);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x193ACE8E0](v6);

    v3 = 10046;
    v4 = 0xE200000000000000;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(50);
    MEMORY[0x193ACE8E0](39, 0xE100000000000000);
    Character.write<A>(to:)();
    v3 = 0xD00000000000002FLL;
    v4 = 0x800000018E5F2720;
LABEL_5:
    MEMORY[0x193ACE8E0](v3, v4);
    return 0;
  }

  return 0xD000000000000034;
}

Swift::Int RegexCompilationError.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (!a3)
  {
    MEMORY[0x193ACEF90](1);
    MEMORY[0x193ACEF90](a1);
    v6 = a2;
LABEL_6:
    MEMORY[0x193ACEF90](v6);
    return Hasher._finalize()();
  }

  if (a3 != 1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  MEMORY[0x193ACEF90](2);
  MEMORY[0x193ACE6E0](v8, a1, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RegexCompilationError()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x193ACEF90](2);

      JUMPOUT(0x193ACE6E0);
    }

    v3 = 0;
  }

  else
  {
    MEMORY[0x193ACEF90](1);
    MEMORY[0x193ACEF90](v2);
    v3 = v1;
  }

  return MEMORY[0x193ACEF90](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RegexCompilationError(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (!v4)
  {
    MEMORY[0x193ACEF90](1);
    MEMORY[0x193ACEF90](v3);
    v5 = v2;
LABEL_6:
    MEMORY[0x193ACEF90](v5);
    return Hasher._finalize()();
  }

  if (v4 != 1)
  {
    v5 = 0;
    goto LABEL_6;
  }

  MEMORY[0x193ACEF90](2);
  MEMORY[0x193ACE6E0](v7, v3, v2);
  return Hasher._finalize()();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance _CompileOptions(void *a1, uint64_t *a2)
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

void *protocol witness for SetAlgebra.remove(_:) in conformance _CompileOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance _CompileOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t AST.Atom.singleScalarASCIIValue.getter()
{
  v0 = type metadata accessor for AST.Atom.Kind();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = AST.Atom.singleScalar.getter();
  if ((v4 & 0x1FFFFFF80) != 0)
  {
    AST.Atom.kind.getter();
    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E8D58])
    {
      (*(v1 + 96))(v3, v0);
      v5 = *v3 == 2573 && v3[1] == 0xE200000000000000;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v8 = Character.asciiValue.getter();

        LOBYTE(v4) = v8;
        v6 = (v8 >> 8) & 1;
        return v4 | (v6 << 8);
      }
    }

    else
    {
      (*(v1 + 8))(v3, v0);
    }

    LOBYTE(v4) = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v4 | (v6 << 8);
}

uint64_t DSLTree.Atom.singleScalarASCIIValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DSLTree._AST.Atom(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DSLTree.Atom(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23[-v15];
  outlined init with copy of DSLTree._AST.AbsentFunction(v1, &v23[-v15], type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v16, v8, type metadata accessor for DSLTree.Atom);
    outlined init with take of DSLTree.QuantificationKind(v8, v4, type metadata accessor for DSLTree._AST.Atom);
    v21 = AST.Atom.singleScalarASCIIValue.getter();
    LOBYTE(v19) = v21;
    v20 = (v21 >> 8) & 1;
    outlined destroy of MEProgram(v4, type metadata accessor for DSLTree._AST.Atom);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v16, v11, type metadata accessor for DSLTree.Atom);
    v20 = *v11 > 0x7Fu;
    if (*v11 <= 0x7Fu)
    {
      LOBYTE(v19) = *v11;
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v16, v14, type metadata accessor for DSLTree.Atom);
      v18 = *v14 == 2573 && v14[1] == 0xE200000000000000;
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v19 = Character.asciiValue.getter();

        v20 = (v19 >> 8) & 1;
        goto LABEL_15;
      }
    }

    LOBYTE(v19) = 0;
    v20 = 1;
  }

LABEL_15:
  outlined destroy of MEProgram(v16, type metadata accessor for DSLTree.Atom);
  return v19 | (v20 << 8);
}

BOOL String.isEqualByUAX44LM2(to:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = HIBYTE(a2) & 0xF;
  if (!v4)
  {
    v7 = 0;
    v11 = 15;
LABEL_39:
    v36 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v36 = v6;
    }

    v37 = v11 >> 14 == 4 * v36;
    return v7 == v5 && v37;
  }

  v7 = 0;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  v9 = 4 * v8;
  v10 = 15;
  v11 = 15;
  v44 = a1;
  v45 = a2;
  v43 = HIBYTE(a2) & 0xF;
  while (2)
  {
    v12 = v11;
    v13 = v11 >> 14;
    while (1)
    {
      if (v13 >= v9)
      {
        goto LABEL_38;
      }

      String.subscript.getter();
      v15 = Character.isWhitespace.getter();

      if (v15)
      {
        goto LABEL_9;
      }

      if (String.subscript.getter() != 45 || v16 != 0xE100000000000000)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_9;
        }

        if (String.subscript.getter() != 95 || v18 != 0xE100000000000000)
        {
          break;
        }
      }

LABEL_9:
      v14 = String.index(after:)();
      v10 = v14;
      if (v14 >> 14 >= v5)
      {
        v7 = v14 >> 14;
LABEL_38:
        a1 = v44;
        a2 = v45;
        v6 = v43;
        v11 = v12;
        goto LABEL_39;
      }
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_9;
    }

    String.subscript.getter();
    v20 = Character.isWhitespace.getter();

    if (v20)
    {
      goto LABEL_23;
    }

    if (String.subscript.getter() == 45 && v21 == 0xE100000000000000)
    {
LABEL_21:

      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_23;
    }

    if (String.subscript.getter() == 95 && v24 == 0xE100000000000000)
    {
      goto LABEL_21;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
LABEL_23:
      v23 = String.index(after:)();
      a2 = v45;
      v11 = v23;
      a1 = v44;
      v7 = v10 >> 14;
      v6 = v43;
      if (v10 >> 14 < v5)
      {
        continue;
      }

      goto LABEL_39;
    }

    break;
  }

  v26 = String.subscript.getter();
  v28 = v27;
  if (v26 == String.subscript.getter() && v28 == v29)
  {
LABEL_30:

    goto LABEL_35;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_35;
  }

  v30 = String.subscript.getter();
  v41 = MEMORY[0x193ACE660](v30);
  v32 = v31;

  v33 = String.subscript.getter();
  v39 = MEMORY[0x193ACE660](v33);
  v35 = v34;

  if (v41 == v39 && v32 == v35)
  {
    goto LABEL_30;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
LABEL_35:
    v10 = String.index(after:)();
    goto LABEL_23;
  }

  return 0;
}

BOOL closure #1 in consumeName(_:opts:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = Unicode.Scalar.Properties.name.getter();
  if (v6)
  {
    v7 = String.isEqualByUAX44LM2(to:)(a2, a3, v5, v6);

    if (v7)
    {
      return 1;
    }
  }

  v9 = Unicode.Scalar.Properties.nameAlias.getter();
  if (!v10)
  {
    return 0;
  }

  v11 = String.isEqualByUAX44LM2(to:)(a2, a3, v9, v10);

  return v11;
}

unint64_t AST.Atom.singleScalar.getter()
{
  v0 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for AST.Atom.Scalar();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AST.Atom.Kind();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AST.Atom.kind.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x1E69E8D60])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v13 = AST.Atom.Scalar.value.getter();
    (*(v5 + 8))(v7, v4);
    LOBYTE(v4) = 0;
  }

  else if (v12 == *MEMORY[0x1E69E8D70])
  {
    (*(v9 + 96))(v11, v8);
    (*(v1 + 32))(v3, v11, v0);
    v14 = AST.Atom.EscapedBuiltin.scalarValue.getter();
    v13 = v14;
    v4 = HIDWORD(v14) & 1;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v13 = 0;
    LOBYTE(v4) = 1;
  }

  return v13 | (v4 << 32);
}

uint64_t (*AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t (*result)()))()
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = result;
    if ((*(result + v3 + 7) & 0x10000) != 0)
    {
      v5 = consumeCharacterWithLeadingScalar(_:);
    }

    else
    {
      v5 = consumeScalar(_:);
    }

    result = closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(v1, v5, result);
    if (!v2)
    {
      v7 = v6;
      v8 = result;
      if (AST.Atom.CharacterProperty.isInverted.getter())
      {
        v9 = swift_allocObject();
        v9[2] = v8;
        v9[3] = v7;
        v9[4] = v4;

        return partial apply for closure #1 in invert #1 (_:) in AST.Atom.CharacterProperty.generateConsumer(_:);
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DSLTree.CustomCharacterClass.Member.asAsciiBitset(_:_:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DSLTree.Atom(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v41 - v13;
  v15 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(v3, v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
      outlined init with take of DSLTree.QuantificationKind(v17, v12, type metadata accessor for DSLTree.Atom);
      outlined init with take of DSLTree.QuantificationKind(v17 + v22, v9, type metadata accessor for DSLTree.Atom);
      v23 = DSLTree.Atom.singleScalarASCIIValue.getter();
      outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.Atom);
      if ((v23 & 0x100) == 0)
      {
        v24 = DSLTree.Atom.singleScalarASCIIValue.getter();
        result = outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
        if ((v24 & 0x100) == 0)
        {
          v25 = *(a1 + 16);
          if (!v25)
          {
            goto LABEL_48;
          }

          v21 = specialized DSLTree.CustomCharacterClass.AsciiBitset.init(low:high:isInverted:isCaseInsensitive:)(v23, v24, a2 & 1, *(a1 + 4 * v25 + 28) & 1);
          return v21 & 1;
        }

        return 2;
      }

      v33 = type metadata accessor for DSLTree.Atom;
      v34 = v9;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        outlined init with take of DSLTree.QuantificationKind(v17, v14, type metadata accessor for DSLTree.Atom);
        v19 = DSLTree.Atom.singleScalarASCIIValue.getter();
        result = outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.Atom);
        if ((v19 & 0x100) == 0)
        {
          if (!*(a1 + 16))
          {
            goto LABEL_47;
          }

          v21 = specialized DSLTree.CustomCharacterClass.AsciiBitset.init(_:_:_:)(v19, a2 & 1);
          return v21 & 1;
        }

        return 2;
      }

      v33 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v34 = v17;
    }

    outlined destroy of MEProgram(v34, v33);
    return 2;
  }

  v26 = v17[1];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *v17 & 0xFFFFFFFFFFFFLL;
  }

  v41[0] = *v17;
  v41[1] = v26;
  v41[2] = 0;
  v41[3] = v27;
  v28 = String.Iterator.next()();
  if (!v28.value._object)
  {
LABEL_19:

    return a2 & 1;
  }

  countAndFlagsBits = v28.value._countAndFlagsBits;
  object = v28.value._object;
  v31 = 0;
  v32 = 0;
  while (1)
  {
    if (countAndFlagsBits == 2573 && object == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_43:

      return 2;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      if (!*(a1 + 16))
      {
        break;
      }

      LOBYTE(v35) = 10;
LABEL_22:
      v36 = 0;
      v37 = 1 << v35;
      goto LABEL_23;
    }

    if ((Character._isSingleScalar.getter() & 1) == 0)
    {
      goto LABEL_43;
    }

    result = specialized Collection.first.getter(countAndFlagsBits, object);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_49;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
      goto LABEL_43;
    }

    result = specialized Collection.first.getter(countAndFlagsBits, object);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

    v35 = result;

    if ((v35 & 0xFFFFFF00) != 0)
    {
      goto LABEL_46;
    }

    v39 = *(a1 + 16);
    if (!v39)
    {
      break;
    }

    if (v35 <= 0x3Fu)
    {
      goto LABEL_22;
    }

    if (v35 >= 64)
    {
      v40 = *(a1 + 28 + 4 * v39);
      v36 = 1 << v35;
      if (v40)
      {
        if (v35 <= 0x5Au)
        {
          v37 = 0;
          v36 |= 1 << (v35 & 0x3F ^ 0x20u);
          goto LABEL_23;
        }

        if (v35 - 123 >= 0xFFFFFFE6)
        {
          v37 = 0;
          v36 |= 1 << (v35 & 0x1F);
          goto LABEL_23;
        }
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = 0;
LABEL_23:
    v32 |= v37;
    v31 |= v36;
    v38 = String.Iterator.next()();
    countAndFlagsBits = v38.value._countAndFlagsBits;
    object = v38.value._object;
    if (!v38.value._object)
    {
      goto LABEL_19;
    }
  }

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
  return result;
}

uint64_t Unicode.Scalar.isNFC.getter(unsigned int a1)
{
  v2 = type metadata accessor for Unicode._NFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Unicode._NFC.Iterator();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 & 0x3F) << 8;
  v11 = (a1 >> 6) + v10 + 33217;
  v12 = (v10 | (a1 >> 6) & 0x3F) << 8;
  v13 = (((v12 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
  v14 = (a1 >> 12) + v12 + 8487393;
  if (HIWORD(a1))
  {
    v14 = v13;
  }

  if (a1 >= 0x800)
  {
    v11 = v14;
  }

  if (a1 <= 0x7F)
  {
    v11 = a1 + 1;
  }

  v20[1] = (v11 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v11) >> 3))));
  v15 = static String._uncheckedFromUTF8(_:)();
  MEMORY[0x193ACE860](v15);
  Unicode._NFC.makeIterator()();
  (*(v3 + 8))(v5, v2);
  v16 = Unicode._NFC.Iterator.next()();
  if ((v16 & 0x100000000) != 0)
  {

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  else
  {
    v17 = v16;
    v18 = Unicode._NFC.Iterator.next()();

    (*(v7 + 8))(v9, v6);
    return BYTE4(v18) & (v17 == a1);
  }
}

unint64_t closure #1 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:)(unint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned int a5, unsigned int a6, int a7)
{
  v48 = a7;
  v52 = a5;
  v53 = a6;
  v50 = type metadata accessor for Unicode.Scalar.Properties();
  v47 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Unicode._NFC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = type metadata accessor for Unicode._NFC.Iterator();
  v16 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v18 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = ~a4;
  v46 = a4;
  v20 = String.index(after:isScalarSemantics:)(a3, (a4 & 1) == 0, a1, a2);
  if (v19)
  {
    _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v26 = v52;
    v25 = v53;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v54 = a1;
      v55 = a2 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    v23 = _decodeScalar(_:startingAt:)();
    goto LABEL_12;
  }

  v21 = String.subscript.getter();
  MEMORY[0x193ACE860](v21);
  Unicode._NFC.makeIterator()();
  (*(v13 + 8))(v15, v12);
  v22 = Unicode._NFC.Iterator.next()();
  if ((v22 & 0x100000000) != 0)
  {

    (*(v16 + 8))(v18, v51);
    return 0;
  }

  v23 = v22;
  v24 = Unicode._NFC.Iterator.next()();

  (*(v16 + 8))(v18, v51);
  if ((v24 & 0x100000000) == 0)
  {
    return 0;
  }

  while (1)
  {
    v26 = v52;
    v25 = v53;
LABEL_12:
    if (v25 >= v26)
    {
      break;
    }

    __break(1u);
LABEL_34:
    v23 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  if (v23 < v26 || v23 > v25)
  {
    if ((v48 & 1) == 0)
    {
      return 0;
    }

    v27 = v49;
    Unicode.Scalar.properties.getter();
    v28 = Unicode.Scalar.Properties.changesWhenLowercased.getter();
    v29 = *(v47 + 8);
    v29(v27, v50);
    if ((v28 & 1) == 0 || ((v30 = v49, Unicode.Scalar.properties.getter(), v31 = Unicode.Scalar.Properties.lowercaseMapping.getter(), v33 = v32, v29(v30, v50), (v46 & 1) == 0) ? (v34 = String.singleScalar.getter(v31, v33)) : (v34 = String.singleNFCScalar.getter(v31, v33)), (v35 = v34, , (v35 & 0x100000000) != 0) || v35 < v26 || v35 > v25))
    {
      v36 = v49;
      Unicode.Scalar.properties.getter();
      v37 = Unicode.Scalar.Properties.changesWhenUppercased.getter();
      v29(v36, v50);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      v38 = v49;
      Unicode.Scalar.properties.getter();
      v39 = Unicode.Scalar.Properties.uppercaseMapping.getter();
      v41 = v40;
      v29(v38, v50);
      v42 = (v46 & 1) != 0 ? String.singleNFCScalar.getter(v39, v41) : String.singleScalar.getter(v39, v41);
      v43 = v42;

      if ((v43 & 0x100000000) != 0 || v43 < v26 || v43 > v25)
      {
        return 0;
      }
    }
  }

  return v20;
}

unint64_t String.index(after:isScalarSemantics:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = _StringGuts.validateScalarIndex(_:)(a1, a3, a4);
    if ((a4 & 0x1000000000000000) != 0)
    {

      return String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v7 = v6 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v14[0] = a3;
        v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v14 + v7);
      }

      else
      {
        if ((a3 & 0x1000000000000000) != 0)
        {
          v8 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v13 = v6 >> 16;
          v8 = _StringObject.sharedUTF8.getter();
          v7 = v13;
        }

        v9 = *(v8 + v7);
      }

      v11 = v9;
      v12 = __clz(v9 ^ 0xFF) - 24;
      if (v11 >= 0)
      {
        LOBYTE(v12) = 1;
      }

      return ((v7 + v12) << 16) | 5;
    }
  }

  else
  {

    return String.index(after:)();
  }
}

uint64_t String.singleNFCScalar.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Unicode._NFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Unicode._NFC.Iterator();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || String.index(after:)() >> 14 != 4 * v12)
  {
    goto LABEL_11;
  }

  result = specialized Collection.first.getter(a1, a2);
  if (v14)
  {
    MEMORY[0x193ACE860](result);
    Unicode._NFC.makeIterator()();
    (*(v5 + 8))(v7, v4);
    v15 = Unicode._NFC.Iterator.next()();
    if ((v15 & 0x100000000) != 0)
    {

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v16 = v15;
      v17 = Unicode._NFC.Iterator.next()();

      (*(v9 + 8))(v11, v8);
      if ((v17 & 0x100000000) != 0)
      {
        v18 = 0;
LABEL_12:
        v19[12] = v18;
        return v16 | (v18 << 32);
      }
    }

LABEL_11:
    v16 = 0;
    v18 = 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t String.singleScalar.getter(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    goto LABEL_16;
  }

  v5 = 4 * v2;
  v6 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    if (v5 == String.UnicodeScalarView._foreignIndex(after:)() >> 14)
    {
      goto LABEL_13;
    }

LABEL_16:
    LODWORD(result) = 0;
    v13 = 1;
    goto LABEL_17;
  }

  v7 = v6 >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14[0] = a1;
    v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = *(v14 + v7);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v8 = _StringObject.sharedUTF8.getter();
    }

    v9 = *(v8 + v7);
  }

  v10 = v9;
  v11 = __clz(v9 ^ 0xFF) - 24;
  if (v10 >= 0)
  {
    LOBYTE(v11) = 1;
  }

  if (v5 != ((4 * (v7 + v11)) & 0x3FFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

LABEL_13:
  result = specialized Collection.first.getter(a1, a2);
  if ((result & 0x100000000) == 0)
  {
    v13 = 0;
LABEL_17:
    LOBYTE(v14[0]) = v13;
    return result | (v13 << 32);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in scriptScalarPredicate(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for Unicode.Script();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Script.init(_:)(v5, v1);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unicode.Script and conformance Unicode.Script, MEMORY[0x1E69E9220], MEMORY[0x1E69E9230]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v8[1] == v8[0])
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t Unicode.Script.init(_:)@<X0>(uint64_t a1@<X8>, unsigned int a2@<W0>)
{
  Script = _swift_string_processing_getScript(a2);
  _StringGuts.grow(_:)(27);

  v6[0] = 0xD000000000000019;
  v6[1] = 0x800000018E5F3390;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ACE8E0](v4);

  LOBYTE(v6[0]) = Script;
  result = type metadata accessor for Unicode.Script();
  if (*(*(result - 8) + 64) == 1)
  {
    return (*(*(result - 8) + 16))(a1, v6, result);
  }

  __break(1u);
  return result;
}

void *closure #1 in scriptExtensionScalarPredicate(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  v3 = type metadata accessor for Unicode.Script();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Unicode.Script.extensions(for:)(a1);
  v8 = result;
  v9 = 0;
  v10 = result[2];
  while (1)
  {
    v11 = v9;
    if (v10 == v9)
    {
LABEL_5:

      return (v10 != v11);
    }

    if (v9 >= v8[2])
    {
      break;
    }

    (*(v4 + 16))(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9++, v3);
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unicode.Script and conformance Unicode.Script, MEMORY[0x1E69E9220], MEMORY[0x1E69E9228]);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    result = (*(v4 + 8))(v6, v3);
    if (v12)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void *static Unicode.Script.extensions(for:)(uint64_t a1)
{
  v1 = a1;
  v19 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for Unicode.Script();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  ScriptExtensions = _swift_string_processing_getScriptExtensions(v1, &v18);
  if (ScriptExtensions)
  {
    v7 = v18;
    if (v18)
    {
      if (v4 != 1)
      {
        __break(1u);
      }

      v8 = ScriptExtensions;
      v16 = *(v3 + 16);
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = *v8++;
        v17 = v10;
        v16(v5, &v17, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMR, MEMORY[0x1E69E9220]);
        }

        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMR, MEMORY[0x1E69E9220]);
        }

        v9[2] = v12 + 1;
        (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, v2);
        --v7;
      }

      while (v7);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMR);
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_18E5ED040;
    Unicode.Script.init(_:)(v9 + v13, v1);
  }

  return v9;
}

uint64_t closure #1 in categoryScalarPredicate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Unicode.GeneralCategory();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Unicode.Scalar.Properties();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v8 + 8))(v10, v7);
  v11 = MEMORY[0x193ACF080](a2, v6);
  (*(v4 + 8))(v6, v3);
  return v11 & 1;
}

BOOL closure #1 in categoriesScalarPredicate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Unicode.GeneralCategory();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Unicode.Scalar.Properties();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v8 + 8))(v10, v7);
  v11 = 0;
  v12 = *(a2 + 16);
  do
  {
    v13 = v11;
    if (v12 == v11)
    {
      break;
    }

    ++v11;
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  (*(v4 + 8))(v6, v3);
  return v12 != v13;
}

uint64_t specialized closure #1 in propertyScalarPredicate(_:)(uint64_t a1)
{
  v1 = type metadata accessor for Unicode.Scalar.Properties();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  if (Unicode.Scalar.Properties.isHexDigit.getter())
  {
    v5 = Unicode.Scalar.Properties.isASCIIHexDigit.getter();
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79B0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79D8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79F8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AF0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A08]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A88]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A90]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AC8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A98]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AA0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AA8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AE0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79B8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AD8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7998]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A58]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A10]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AF8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A60]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7980]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AD0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A00]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A28]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79C0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79E0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7B00]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A68]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A80]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79E8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AB8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79A0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AE8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AC0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A18]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A70]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A20]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7B08]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79C8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A48]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AB0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A50]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79A8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A78]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79D0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79F0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7990]);
}

{
  v1 = type metadata accessor for Unicode.Scalar.Properties();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  v5 = closure #3 in Unicode.POSIXProperty.generateConsumer(_:)();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  if (Unicode.Scalar.Properties.isAlphabetic.getter())
  {
    v8 = 1;
  }

  else
  {
    Unicode.Scalar.Properties.numericType.getter();
    v9 = type metadata accessor for Unicode.NumericType();
    v8 = 1;
    v10 = (*(*(v9 - 8) + 48))(v3, 1, v9);
    outlined destroy of SplitSequence<SubstringSearcher>(v3, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
    if (v10 == 1 && (Unicode.Scalar.Properties.isJoinControl.getter() & 1) == 0)
    {
      v8 = Unicode.Scalar.Properties.isDash.getter();
    }
  }

  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

BOOL specialized closure #1 in propertyScalarPredicate(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  if (Unicode.Scalar.Properties.isAlphabetic.getter())
  {
    v8 = 1;
  }

  else
  {
    Unicode.Scalar.Properties.numericType.getter();
    v9 = type metadata accessor for Unicode.NumericType();
    v8 = (*(*(v9 - 8) + 48))(v3, 1, v9) != 1;
    outlined destroy of SplitSequence<SubstringSearcher>(v3, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  }

  (*(v5 + 8))(v7, v4);
  return v8;
}

{
  v1 = type metadata accessor for Unicode.GeneralCategory();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E78E0], v1);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  (*(v9 + 8))(v11, v8);
  return (v12 & 1) == 0;
}

uint64_t specialized closure #1 in propertyScalarPredicate(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for Unicode.Scalar.Properties();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Unicode.Scalar.properties.getter();
  LOBYTE(a2) = a2(v7);
  (*(v4 + 8))(v6, v3);
  return a2 & 1;
}

uint64_t closure #1 in propertyScalarPredicate(_:)(uint64_t a1, uint64_t (*a2)(char *))
{
  v3 = type metadata accessor for Unicode.Scalar.Properties();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  LOBYTE(a2) = a2(v6);
  (*(v4 + 8))(v6, v3);
  return a2 & 1;
}

unint64_t (*consumeScalar(_:)(uint64_t a1, uint64_t a2))(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return partial apply for closure #1 in consumeScalar(_:);
}

unint64_t specialized closure #1 in consumeScalar(_:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() <= 0x7F)
    {
      _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
      return String.UnicodeScalarView._foreignIndex(after:)();
    }

    return 0;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    if (_decodeScalar(_:startingAt:)() <= 0x7F)
    {
      v6 = _StringGuts.validateScalarIndex(_:)(a3, a1, a2) >> 16;
      if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter();
      }

      v8 = *(v7 + v6);
      goto LABEL_12;
    }

    return 0;
  }

  v12 = a1;
  v13 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (_decodeScalar(_:startingAt:)() > 0x7F)
  {
    return 0;
  }

  v6 = _StringGuts.validateScalarIndex(_:)(a3, a1, a2) >> 16;
  v12 = a1;
  v13 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = *(&v12 + v6);
LABEL_12:
  v10 = v8;
  v11 = __clz(v8 ^ 0xFF) - 24;
  if (v10 >= 0)
  {
    LOBYTE(v11) = 1;
  }

  return ((v6 + v11) << 16) | 5;
}

uint64_t (*consumeCharacterWithLeadingScalar(_:)(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return partial apply for closure #1 in consumeCharacterWithLeadingScalar(_:);
}

uint64_t specialized closure #1 in consumeCharacterWithSingleScalar(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.subscript.getter();
  v3 = Character.hasExactlyOneScalar.getter();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = String.subscript.getter();
  v6 = specialized Collection.first.getter(v4, v5);

  if ((v6 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((v6 & 0xFFFFFF80) != 0)
    {
      return 0;
    }

    return String.index(after:)();
  }

  return result;
}

unint64_t closure #1 in invert #1 (_:) in AST.Atom.CharacterProperty.generateConsumer(_:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t, unint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  result = a5(a1, a2, a3, a4);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(a7 + 16);
  if (v13)
  {
    return String.index(after:isScalarSemantics:)(a3, (*(a7 + 4 * v13 + 28) & 0x10000) == 0, a1, a2);
  }

  __break(1u);
  return result;
}

char *closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t (*a2)(uint64_t (*)(), uint64_t), uint64_t (*(*a3)(uint64_t a1, uint64_t a2))())
{
  v162 = a3;
  v155 = a2;
  v130 = type metadata accessor for AST.Atom.CharacterProperty.JavaSpecial();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for AST.Atom.CharacterProperty.PCRESpecialCategory();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Unicode.POSIXProperty();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Unicode.Block();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = v8;
  v141 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Unicode.NumericType();
  v148 = *(v9 - 8);
  v149 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v10;
  v11 = type metadata accessor for Unicode.Script();
  v152 = *(v11 - 8);
  v153 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v150 = v12;
  v151 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Unicode.BinaryProperty();
  v157 = *(v13 - 8);
  v158 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v15 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v17 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v145 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v128 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v154 = &v128 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v128 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v128 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v128 - v33;
  v140 = a1;
  AST.Atom.CharacterProperty.kind.getter();
  result = (*(v19 + 88))(v34, v18);
  if (result == *MEMORY[0x1E69E8C88])
  {
    (*(v19 + 16))(v32, v34, v18);
    (*(v19 + 96))(v32, v18);
    (*(v15 + 32))(v17, v32, v161);
    v36 = v160;
    v37 = Unicode.ExtendedGeneralCategory.generateConsumer(_:)(v162);
    if (!v36)
    {
      v24 = v37;
    }

    (*(v15 + 8))(v17, v161);
    goto LABEL_23;
  }

  v38 = v162;
  v159 = v34;
  v161 = v19;
  if (result == *MEMORY[0x1E69E8CD0])
  {
    v24 = v161;
    (*(v161 + 16))(v29, v159, v18);
    (*(v24 + 12))(v29, v18);
    v39 = v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMd, &_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMR) + 48)];
    v40 = v156;
    v41 = v157;
    v42 = v158;
    (*(v157 + 32))(v156, v29, v158);
    v43 = v160;
    v44 = Unicode.BinaryProperty.generateConsumer(_:)(v38);
    if (v43)
    {
      (*(v41 + 8))(v40, v42);
      v19 = v161;
      v34 = v159;
    }

    else
    {
      v24 = v44;
      v62 = v45;
      (*(v41 + 8))(v40, v42);
      if ((v39 & 1) == 0)
      {
        v63 = swift_allocObject();
        v63[2] = v24;
        v63[3] = v62;
        v63[4] = v38;

        v24 = closure #1 in invert #1 (_:) in AST.Atom.CharacterProperty.generateConsumer(_:)partial apply;
      }

      v19 = v161;
      v34 = v159;
    }

    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CD8])
  {
    v19 = v161;
    v46 = v154;
    v47 = v159;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v46, v18);
    v48 = v151;
    v50 = v152 + 32;
    v49 = *(v152 + 32);
    v51 = v153;
    v49(v151, v46, v153);
    v52 = (*(v50 + 48) + 16) & ~*(v50 + 48);
    v53 = swift_allocObject();
    v49((v53 + v52), v48, v51);
    v34 = v47;
    v54 = partial apply for closure #1 in scriptScalarPredicate(_:);
LABEL_12:
    v24 = v155(v54, v53);

LABEL_23:
    (*(v19 + 8))(v34, v18);
    return v24;
  }

  v19 = v161;
  v34 = v159;
  if (result == *MEMORY[0x1E69E8C90])
  {
    v55 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v55, v18);
    v56 = v34;
    v57 = v151;
    v59 = v152 + 32;
    v58 = *(v152 + 32);
    v60 = v153;
    v58(v151, v55, v153);
    v61 = (*(v59 + 48) + 16) & ~*(v59 + 48);
    v53 = swift_allocObject();
    v58((v53 + v61), v57, v60);
    v34 = v56;
    v54 = partial apply for closure #1 in scriptExtensionScalarPredicate(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8CC0])
  {
    (*(v161 + 16))(v24, v159, v18);
    result = (*(v19 + 96))(v24, v18);
    v64 = *(v38 + 2);
    if (v64)
    {
      v66 = *v24;
      v65 = *(v24 + 1);
      if ((*(v38 + v64 + 7) & 0x10000) != 0)
      {
        v67 = consumeCharacterWithLeadingScalar(_:);
      }

      else
      {
        v67 = consumeScalar(_:);
      }

      v68 = swift_allocObject();
      *(v68 + 16) = v66;
      *(v68 + 24) = v65;
      v69 = swift_allocObject();
      *(v69 + 16) = closure #1 in consumeName(_:opts:)partial apply;
      *(v69 + 24) = v68;
      v70 = v67(closure #1 in propertyScalarPredicate(_:)partial apply, v69);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (result == *MEMORY[0x1E69E8C70])
  {
    v71 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v71, v18);
    v72 = v34;
    v73 = v149;
    v75 = v148 + 32;
    v74 = *(v148 + 32);
    v76 = v146;
    v74(v146, v71, v149);
    v77 = (*(v75 + 48) + 16) & ~*(v75 + 48);
    v53 = swift_allocObject();
    v74((v53 + v77), v76, v73);
    v34 = v72;
    v54 = partial apply for closure #5 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8C80])
  {
    v78 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v78, v18);
    v79 = *v78;
    v53 = swift_allocObject();
    *(v53 + 16) = v79;
    v54 = partial apply for closure #4 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8CE8])
  {
    v80 = v145;
    (*(v161 + 16))(v145, v159, v18);
    (*(v19 + 96))(v80, v18);
    v81 = &v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyV4KindO03MapG0O_SStMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyV4KindO03MapG0O_SStMR) + 48)];
    v83 = *v81;
    v82 = *(v81 + 1);
    v84 = type metadata accessor for AST.Atom.CharacterProperty.Kind.MapKind();
    v85 = *(v84 - 8);
    v86 = (*(v85 + 88))(v80, v84);
    if (v86 == *MEMORY[0x1E69E8C50])
    {
      v87 = swift_allocObject();
      *(v87 + 16) = v83;
      *(v87 + 24) = v82;
      v88 = partial apply for closure #7 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    }

    else if (v86 == *MEMORY[0x1E69E8C60])
    {
      v87 = swift_allocObject();
      *(v87 + 16) = v83;
      *(v87 + 24) = v82;
      v88 = partial apply for closure #8 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    }

    else
    {
      if (v86 != *MEMORY[0x1E69E8C58])
      {

        (*(v85 + 8))(v80, v84);
        goto LABEL_44;
      }

      v87 = swift_allocObject();
      *(v87 + 16) = v83;
      *(v87 + 24) = v82;
      v88 = partial apply for closure #9 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    }

    v70 = v155(v88, v87);
LABEL_22:
    v24 = v70;

    v34 = v159;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CA8])
  {
    v89 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v89, v18);
    v90 = v34;
    v92 = v143 + 32;
    v91 = *(v143 + 32);
    v93 = v141;
    v94 = v144;
    v91(v141, v89, v144);
    v95 = (*(v92 + 48) + 16) & ~*(v92 + 48);
    v53 = swift_allocObject();
    v91((v53 + v95), v93, v94);
    v34 = v90;
    v54 = partial apply for closure #6 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8C98])
  {
    v96 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v96, v18);
    v97 = *v96;
    v98 = *(v96 + 1);
    v53 = swift_allocObject();
    *(v53 + 16) = v97;
    *(v53 + 24) = v98;
    v54 = partial apply for closure #3 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8CB8])
  {
    v99 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v99, v18);
    v100 = v138;
    v101 = v137;
    v102 = v99;
    v103 = v139;
    (*(v138 + 32))(v137, v102, v139);
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    MEMORY[0x193ACE8E0](0xD000000000000011, 0x800000018E5F3350);
    _print_unlocked<A, B>(_:_:)();
    (*(v100 + 8))(v101, v103);
    v24 = v163;
    v104 = v164;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
    swift_allocError();
    v105 = v24;
    v106 = v104;
    v107 = 424;
LABEL_42:
    MEMORY[0x193ACDF10](v105, v106, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, v107);
    swift_willThrow();
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CC8])
  {
    v110 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v110, v18);
    v111 = v135;
    v112 = v134;
    v113 = v136;
    (*(v135 + 32))(v134, v110, v136);
    v24 = Unicode.POSIXProperty.generateConsumer(_:)(v38);
    v114 = v112;
    v34 = v159;
    (*(v111 + 8))(v114, v113);
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8C78])
  {
    v115 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v115, v18);
    v116 = v132;
    v117 = v131;
    v118 = v115;
    v119 = v133;
    (*(v132 + 32))(v131, v118, v133);
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    MEMORY[0x193ACE8E0](0xD000000000000018, 0x800000018E5F3330);
    _print_unlocked<A, B>(_:_:)();
    (*(v116 + 8))(v117, v119);
    v24 = v163;
    v120 = v164;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
    swift_allocError();
    v105 = v24;
    v106 = v120;
    v107 = 430;
    goto LABEL_42;
  }

  if (result == *MEMORY[0x1E69E8C68])
  {
    v121 = v154;
    (*(v161 + 16))(v154, v159, v18);
    (*(v19 + 96))(v121, v18);
    v122 = v129;
    v123 = v128;
    v124 = v121;
    v125 = v130;
    (*(v129 + 32))(v128, v124, v130);
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    MEMORY[0x193ACE8E0](0xD000000000000018, 0x800000018E5F3310);
    _print_unlocked<A, B>(_:_:)();
    (*(v122 + 8))(v123, v125);
    v24 = v163;
    v126 = v164;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998], MEMORY[0x1E69E89A0]);
    swift_allocError();
    v105 = v24;
    v106 = v126;
    v107 = 433;
    goto LABEL_42;
  }

  if (result == *MEMORY[0x1E69E8CE0])
  {
    v24 = type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988], MEMORY[0x1E69E8990]);
    swift_allocError();
    MEMORY[0x193ACDEF0](0xD000000000000017, 0x800000018E5F32F0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, 436);
    swift_willThrow();
    v19 = v161;
    v34 = v159;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CA0])
  {
    v24 = closure #1 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
LABEL_63:
    v19 = v161;
    v34 = v159;
    goto LABEL_23;
  }

LABEL_56:
  if (result == *MEMORY[0x1E69E8CF0])
  {
    v24 = v155(closure #2 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:), 0);
    goto LABEL_63;
  }

  v19 = v161;
  if (result != *MEMORY[0x1E69E8CB0])
  {
LABEL_44:
    v163 = 0;
    v164 = 0xE000000000000000;
    MEMORY[0x193ACE8E0](0x206E776F6E6B6E55, 0xED000020646E696BLL);
    v108 = v154;
    AST.Atom.CharacterProperty.kind.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v19 + 8))(v108, v18);
    v24 = v163;
    v109 = v164;
    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988], MEMORY[0x1E69E8990]);
    swift_allocError();
    MEMORY[0x193ACDEF0](v24, v109, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, 440);
    swift_willThrow();
    v34 = v159;
    goto LABEL_23;
  }

  v127 = *(v38 + 2);
  if (v127)
  {
    if ((*(v38 + v127 + 7) & 0x10000) != 0)
    {
      v24 = specialized closure #1 in consumeCharacterWithSingleScalar(_:);
    }

    else
    {
      v24 = specialized closure #1 in consumeScalar(_:);
    }

    goto LABEL_63;
  }

  __break(1u);
  return result;
}